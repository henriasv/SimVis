#include "points2d.h"

Points2D::Points2D()
{

}

Points2D::~Points2D()
{

}

void Points2D::setPositions(std::vector<QVector2D> &positions)
{
    m_vertices = positions;
}

std::vector<QVector2D> &Points2D::positions()
{
    return m_vertices;
}

RenderableRenderer *Points2D::createRenderer()
{
    return new Points2DRenderer();
}

Points2DRenderer::Points2DRenderer()
{
    m_numberOfVBOs = 1;
}

void Points2DRenderer::synchronize(Renderable *renderable)
{
    Points2D* points = static_cast<Points2D*>(renderable);
    if(!m_isInitialized) {
        generateVBOs();
        createShaderProgram();
        m_isInitialized = true;
    }

    uploadVBO(points);
    m_vertexCount = points->m_vertices.size();
    m_pointSize = points->m_pointSize;
    m_color = QVector4D(points->m_color.redF(), points->m_color.greenF(), points->m_color.blueF(), points->m_color.alphaF());
}

void Points2DRenderer::render()
{
    if(m_vertexCount == 0) return;
    m_program->bind();

    // Tell OpenGL which VBOs to use
    m_funcs->glBindBuffer(GL_ARRAY_BUFFER, m_vboIds[0]);

    // Tell OpenGL programmable pipeline how to locate vertex position data
    int vertexLocation = m_program->attributeLocation("a_position");
    m_program->setUniformValue("color", m_color);
    m_program->enableAttributeArray(vertexLocation);
    m_funcs->glVertexAttribPointer(vertexLocation, 2, GL_FLOAT, GL_FALSE, sizeof(QVector2D), 0);

    // Draw cube geometry using indices from VBO 1
    glPointSize(m_pointSize);
    m_funcs->glDrawArrays(GL_POINTS, 0, m_vertexCount);

    m_program->disableAttributeArray(vertexLocation);
    m_program->release();
}

void Points2DRenderer::uploadVBO(Points2D *points)
{
    // Transfer vertex data to VBO 0
    m_vertexCount = points->m_vertices.size();
    m_funcs->glBindBuffer(GL_ARRAY_BUFFER, m_vboIds[0]);
    m_funcs->glBufferData(GL_ARRAY_BUFFER, m_vertexCount * sizeof(QVector2D), &points->m_vertices.front(), GL_STATIC_DRAW);
}

void Points2DRenderer::createShaderProgram()
{
    if (!m_program) {
        m_program = new QOpenGLShaderProgram();

        m_program->addShaderFromSourceCode(QOpenGLShader::Vertex,
                                           "attribute highp vec4 a_position;\n"
                                           "void main() {\n"
                                           "    gl_Position = a_position;\n"
                                           "}");

        m_program->addShaderFromSourceCode(QOpenGLShader::Fragment,
                                           "uniform vec4 color;"
                                           "void main() {\n"
                                           "    gl_FragColor = color;\n"
                                           "}");

        m_program->link();
    }
}
