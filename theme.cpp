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
