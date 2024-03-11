#include "theme.h"

Theme::Theme(QObject *parent)
    : QObject{parent}
{

}

QColor Theme::backgroundColor() const
{
    return m_backgroundColor;
}

void Theme::setBackgroundColor(const QColor &newBackgroundColor)
{
    if (m_backgroundColor == newBackgroundColor)
        return;
    m_backgroundColor = newBackgroundColor;
    emit backgroundColorChanged();
}

QColor Theme::widgetBackgroundColor() const
{
    return m_widgetBackgroundColor;
}

void Theme::setWidgetBackgroundColor(const QColor &newWidgetBackgroundColor)
{
    if (m_widgetBackgroundColor == newWidgetBackgroundColor)
        return;
    m_widgetBackgroundColor = newWidgetBackgroundColor;
    emit widgetBackgroundColorChanged();
}

QColor Theme::btnColor() const
{
    return m_btnColor;
}

void Theme::setBtnColor(const QColor &newBtnColor)
{
    if (m_btnColor == newBtnColor)
        return;
    m_btnColor = newBtnColor;
    emit btnColorChanged();
}

QColor Theme::btnOnColor() const
{
    return m_btnOnColor;
}

void Theme::setBtnOnColor(const QColor &newBtnOnColor)
{
    if (m_btnOnColor == newBtnOnColor)
        return;
    m_btnOnColor = newBtnOnColor;
    emit btnOnColorChanged();
}

QColor Theme::btnOffColor() const
{
    return m_btnOffColor;
}

void Theme::setBtnOffColor(const QColor &newBtnOffColor)
{
    if (m_btnOffColor == newBtnOffColor)
        return;
    m_btnOffColor = newBtnOffColor;
    emit btnOffColorChanged();
}
