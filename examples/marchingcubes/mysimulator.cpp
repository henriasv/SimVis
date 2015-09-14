#include "mysimulator.h"
#include <SimVis/MarchingCubes>
#include <cmath>
MyWorker::MyWorker() {

}

MySimulator::Geometry MySimulator::geometry() const
{
    return m_geometry;
}

void MySimulator::setGeometry(MySimulator::Geometry arg)
{
    m_willSetScalarField = true;
    if (m_geometry == arg)
        return;

    m_geometry = arg;
    emit geometryChanged(arg);
}

SimulatorWorker *MySimulator::createWorker() {
    return new MyWorker();
}

void MyWorker::synchronizeSimulator(Simulator *simulator) {
    MySimulator* mySimulator = qobject_cast<MySimulator*>(simulator);
    m_geometry = mySimulator->geometry();
    m_willSetScalarField = mySimulator->m_willSetScalarField;
    mySimulator->m_willSetScalarField = false;
}

void MyWorker::work() {

}

void MyWorker::synchronizeRenderer(Renderable *renderable)
{
    MarchingCubes* marchingCubes = qobject_cast<MarchingCubes*>(renderable);
    if(marchingCubes) {
        if(m_willSetScalarField) {
            marchingCubes->setHasContinuousScalarField(true);
            if(m_geometry == MySimulator::SPHERE) {
                marchingCubes->setScalarFieldEvaluator([](const QVector3D point) {
                    return point.length();
                });
            } else if(m_geometry == MySimulator::SINUS) {
                marchingCubes->setScalarFieldEvaluator([](const QVector3D point) {
                    float n = 4.0;
                    return sin(n*M_PI*0.5*point.x()) + sin(n*M_PI*0.5*point.y()) + sin(n*M_PI*0.5*point.z());
                });
            } else if(m_geometry == MySimulator::CUBE) {
                marchingCubes->setScalarFieldEvaluator([](const QVector3D point) {
                    return std::max(fabs(point.x()), std::max(fabs(point.y()), fabs(point.z())));
                });
            } else if(m_geometry == MySimulator::PERLIN) {
                m_perlin.setSeed(time(NULL));
                marchingCubes->setScalarFieldEvaluator([&](const QVector3D point) {
                    return m_perlin.noise(point.x(), point.y(), point.z());
                });
            }

            marchingCubes->setColorEvaluator([](const QVector3D point) {
                float min = -M_PI;
                float max = M_PI;
                QVector3D color = point;
                color[0] -= min;
                color[1] -= min;
                color[2] -= min;

                color[0] /= max - min;
                color[1] /= max - min;
                color[2] /= max - min;
                return color;
            });

            //marchingCubes->setColorEvaluator(0);

            m_willSetScalarField = false;
        }
    }
}
