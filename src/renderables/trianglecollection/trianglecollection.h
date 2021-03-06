#ifndef TRIANGLECOLLECTION_H
#define TRIANGLECOLLECTION_H
#include <QVector>
#include "../../core/renderable.h"
namespace SimVis {
    struct TriangleCollectionVBOData {
        QVector3D vertex;
        QVector3D normal;
        QVector3D color;
    };

    struct Triangle {
        unsigned int vertexIndices[3];
        Triangle(unsigned int index1, unsigned int index2, unsigned int index3) {
            vertexIndices[0] = index1;
            vertexIndices[1] = index2;
            vertexIndices[2] = index3;
        }

        Triangle() {

        }
    };
}

class TriangleCollection : public Renderable
{
    Q_OBJECT
public:
    TriangleCollection();
    bool dirty = true;
    QVector<SimVis::TriangleCollectionVBOData> data;
    virtual RenderableRenderer *createRenderer();
};


class TriangleCollectionRenderer : public RenderableRenderer {
    Q_OBJECT
    // RenderableRenderer interface
public:
    TriangleCollectionRenderer() { m_numberOfVBOs = 3; }
private:
    bool m_isInitialized = false;
    int numberOfTriangles = 0;
    virtual void beforeLinkProgram();
    virtual void synchronize(Renderable *renderable);
    virtual void render();
    void uploadVBO(TriangleCollection *triangleCollection);
};

#endif // TRIANGLECOLLECTION_H
