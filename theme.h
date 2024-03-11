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

    QColor btnColor() const;
    void setBtnColor(const QColor &newBtnColor);

    QColor btnOnColor() const;
    void setBtnOnColor(const QColor &newBtnOnColor);

    QColor btnOffColor() const;
    void setBtnOffColor(const QColor &newBtnOffColor);

private:
     QColor m_backgroundColor;
    QColor m_widgetBackgroundColor;
     QColor m_btnColor;
    QColor m_btnOnColor;
     QColor m_btnOffColor;
    Q_PROPERTY(QColor backgroundColor READ backgroundColor WRITE setBackgroundColor NOTIFY backgroundColorChanged FINAL)

    Q_PROPERTY(QColor widgetBackgroundColor READ widgetBackgroundColor WRITE setWidgetBackgroundColor NOTIFY widgetBackgroundColorChanged FINAL)

    Q_PROPERTY(QColor btnColor READ btnColor WRITE setBtnColor NOTIFY btnColorChanged FINAL)

    Q_PROPERTY(QColor btnOnColor READ btnOnColor WRITE setBtnOnColor NOTIFY btnOnColorChanged FINAL)

    Q_PROPERTY(QColor btnOffColor READ btnOffColor WRITE setBtnOffColor NOTIFY btnOffColorChanged FINAL)

signals:

    void backgroundColorChanged();

    void widgetBackgroundColorChanged();
    void btnColorChanged();
    void btnOnColorChanged();
    void btnOffColorChanged();
};

#endif // THEME_H
