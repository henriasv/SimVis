#include "defaultlight.h"

QString DefaultLight::fragmentShaderDefines()
{
    QString defines = "\n#define DEFAULTLIGHT \n";
    if(m_ambient) {
        defines.append("#define DEFAULTLIGHTAMBIENT \n");
    }
    if(m_diffuse) {
        defines.append("#define DEFAULTLIGHTDIFFUSE \n");
    }
    if(m_specular) {
        defines.append("#define DEFAULTLIGHTSPECULAR \n");
    }
    return defines;
}

QString DefaultLight::vertexShaderDefines()
{
    QString defines = "\n #define DEFAULTLIGHT \n";
    return defines;
}

QString DefaultLight::fragmentShaderLibrary()
{
    QString shaderLibrary;
    shaderLibrary.append(contentFromFile(":/org.compphys.SimVis/shadereffects/shaders/light.glsl"));
    return shaderLibrary;
}

QString DefaultLight::vertexShaderLibrary()
{
    QString shaderLibrary;
    shaderLibrary.append(contentFromFile(":/org.compphys.SimVis/shadereffects/shaders/light.glsl"));
    return shaderLibrary;
}

void DefaultLight::copyState(ShaderEffect *source) {
    DefaultLight *defaultLight = qobject_cast<DefaultLight*>(source);
    m_ambientColor = defaultLight->ambientColor();
    m_diffuseColor = defaultLight->diffuseColor();
    m_specularColor = defaultLight->specularColor();
    m_shininess = defaultLight->shininess();
    m_attenuation = defaultLight->attenuation();
    m_diffuseIntensity = defaultLight->diffuseIntensity();
    m_specularIntensity = defaultLight->specularIntensity();
    m_ambientIntensity = defaultLight->ambientIntensity();
    m_position = defaultLight->position();
    m_ambient = defaultLight->ambient();
    m_diffuse = defaultLight->diffuse();
    m_specular = defaultLight->specular();
    m_gamma = defaultLight->gamma();

    m_enabled = source->enabled();
    m_shadersDirty = source->shadersDirty();
}

DefaultLight *DefaultLight::clone()
{
    DefaultLight *clone = new DefaultLight();
    clone->copyState(this);

    return clone;
}

void DefaultLight::setUniformValues(QOpenGLShaderProgram &shaderProgram)
{
    if(m_lightId == -1) {
        qDebug() << "An error occured. A light had light id -1 which indicates that Anders is a bad programmer.";
    }

    shaderProgram.setUniformValue(shaderProgram.uniformLocation(QString("cp_lights[%1].ambientColor").arg(m_lightId)), m_ambientColor);
    shaderProgram.setUniformValue(shaderProgram.uniformLocation(QString("cp_lights[%1].diffuseColor").arg(m_lightId)), m_diffuseColor);
    shaderProgram.setUniformValue(shaderProgram.uniformLocation(QString("cp_lights[%1].specularColor").arg(m_lightId)), m_specularColor);
    shaderProgram.setUniformValue(shaderProgram.uniformLocation(QString("cp_lights[%1].shininess").arg(m_lightId)), m_shininess);
    shaderProgram.setUniformValue(shaderProgram.uniformLocation(QString("cp_lights[%1].attenuationColor").arg(m_lightId)), m_attenuation);
    shaderProgram.setUniformValue(shaderProgram.uniformLocation(QString("cp_lights[%1].gamma").arg(m_lightId)), m_gamma);
    shaderProgram.setUniformValue(shaderProgram.uniformLocation(QString("cp_lights[%1].diffuseIntensity").arg(m_lightId)), m_diffuseIntensity);
    shaderProgram.setUniformValue(shaderProgram.uniformLocation(QString("cp_lights[%1].specularIntensity").arg(m_lightId)), m_specularIntensity);
    shaderProgram.setUniformValue(shaderProgram.uniformLocation(QString("cp_lights[%1].ambientIntensity").arg(m_lightId)), m_ambientIntensity);
    shaderProgram.setUniformValue(shaderProgram.uniformLocation(QString("cp_lights[%1].position").arg(m_lightId)), m_position);

    m_lightId = -1;
}

QColor DefaultLight::ambientColor() const
{
    return m_ambientColor;
}

QColor DefaultLight::diffuseColor() const
{
    return m_diffuseColor;
}

QColor DefaultLight::specularColor() const
{
    return m_specularColor;
}

float DefaultLight::diffuseIntensity() const
{
    return m_diffuseIntensity;
}

float DefaultLight::ambientIntensity() const
{
    return m_ambientIntensity;
}

float DefaultLight::specularIntensity() const
{
    return m_specularIntensity;
}

float DefaultLight::shininess() const
{
    return m_shininess;
}

float DefaultLight::attenuation() const
{
    return m_attenuation;
}

QVector3D DefaultLight::position() const
{
    return m_position;
}

bool DefaultLight::ambient() const
{
    return m_ambient;
}

bool DefaultLight::diffuse() const
{
    return m_diffuse;
}

bool DefaultLight::specular() const
{
    return m_specular;
}

float DefaultLight::gamma() const
{
    return m_gamma;
}

void DefaultLight::setLightId(int id)
{
    m_lightId = id;
}

void DefaultLight::setAmbientColor(QColor arg)
{
    if (m_ambientColor == arg)
        return;

    m_ambientColor = arg;
    emit ambientColorChanged(arg);
}

void DefaultLight::setDiffuseColor(QColor arg)
{
    if (m_diffuseColor == arg)
        return;

    m_diffuseColor = arg;
    emit diffuseColorChanged(arg);
}

void DefaultLight::setSpecularColor(QColor arg)
{
    if (m_specularColor == arg)
        return;

    m_specularColor = arg;
    emit specularColorChanged(arg);
}

void DefaultLight::setDiffuseIntensity(float arg)
{
    if (m_diffuseIntensity == arg)
        return;

    m_diffuseIntensity = arg;
    emit diffuseIntensityChanged(arg);
}

void DefaultLight::setAmbientIntensity(float arg)
{
    if (m_ambientIntensity == arg)
        return;

    m_ambientIntensity = arg;
    emit ambientIntensityChanged(arg);
}

void DefaultLight::setSpecularIntensity(float arg)
{
    if (m_specularIntensity == arg)
        return;

    m_specularIntensity = arg;
    emit specularIntensityChanged(arg);
}

void DefaultLight::setShininess(float arg)
{
    if (m_shininess == arg)
        return;

    m_shininess = arg;
    emit shininessChanged(arg);
}

void DefaultLight::setAttenuation(float arg)
{
    if (m_attenuation == arg)
        return;

    m_attenuation = arg;
    emit attenuationChanged(arg);
}

void DefaultLight::setPosition(QVector3D arg)
{
    if (m_position == arg)
        return;

    m_position = arg;
    emit positionChanged(arg);
}

void DefaultLight::setAmbient(bool arg)
{
    if (m_ambient == arg)
        return;

    m_ambient = arg;
    m_shadersDirty = true;
    emit ambientChanged(arg);
}

void DefaultLight::setDiffuse(bool arg)
{
    if (m_diffuse == arg)
        return;

    m_diffuse = arg;
    m_shadersDirty = true;
    emit diffuseChanged(arg);
}

void DefaultLight::setSpecular(bool arg)
{
    if (m_specular == arg)
        return;

    m_specular = arg;
    m_shadersDirty = true;
    emit specularChanged(arg);
}

void DefaultLight::setGamma(float arg)
{
    if (m_gamma == arg)
        return;

    m_gamma = arg;
    emit gammaChanged(arg);
}

