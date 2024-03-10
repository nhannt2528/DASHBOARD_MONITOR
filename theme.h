#ifndef THEME_H
#define THEME_H

#include <QObject>
#include <QColor>
class Theme : public QObject
{
    Q_OBJECT
public:
    explicit Theme(QObject *parent = nullptr);
    QColor backgroundColor() const;
    void setBackgroundColor(const QColor &newBackgroundColor);

    QColor widgetBackgroundColor() const;
    void setWidgetBackgroundColor(const QColor &newWidgetBackgroundColor);

private:
     QColor m_backgroundColor;
    QColor m_widgetBackgroundColor;

    Q_PROPERTY(QColor backgroundColor READ backgroundColor WRITE setBackgroundColor NOTIFY backgroundColorChanged FINAL)

    Q_PROPERTY(QColor widgetBackgroundColor READ widgetBackgroundColor WRITE setWidgetBackgroundColor NOTIFY widgetBackgroundColorChanged FINAL)

signals:

    void backgroundColorChanged();

    void widgetBackgroundColorChanged();
};

#endif // THEME_H
