/********************************************************************************
** Form generated from reading UI file 'RobotPlugin.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ROBOTPLUGIN_H
#define UI_ROBOTPLUGIN_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDockWidget>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_SamplePlugin
{
public:
    QWidget *dockWidgetContents;
    QVBoxLayout *verticalLayout_2;
    QVBoxLayout *verticalLayout;
    QGridLayout *gridLayout;
    QDoubleSpinBox *_spin2;
    QDoubleSpinBox *_spin1;
    QDoubleSpinBox *_spin3;
    QPushButton *btn_home;
    QPushButton *btn_setQ;
    QPushButton *btn_getQ;
    QPushButton *btn_quit;
    QPushButton *btn_start;
    QDoubleSpinBox *_spin4;
    QDoubleSpinBox *_spin5;
    QDoubleSpinBox *_spin6;

    void setupUi(QDockWidget *SamplePlugin)
    {
        if (SamplePlugin->objectName().isEmpty())
            SamplePlugin->setObjectName(QStringLiteral("SamplePlugin"));
        SamplePlugin->resize(557, 501);
        dockWidgetContents = new QWidget();
        dockWidgetContents->setObjectName(QStringLiteral("dockWidgetContents"));
        verticalLayout_2 = new QVBoxLayout(dockWidgetContents);
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        gridLayout = new QGridLayout();
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        _spin2 = new QDoubleSpinBox(dockWidgetContents);
        _spin2->setObjectName(QStringLiteral("_spin2"));
        _spin2->setMinimum(-5);
        _spin2->setMaximum(5);
        _spin2->setSingleStep(0.001);

        gridLayout->addWidget(_spin2, 3, 1, 1, 1);

        _spin1 = new QDoubleSpinBox(dockWidgetContents);
        _spin1->setObjectName(QStringLiteral("_spin1"));
        _spin1->setMinimum(-5);
        _spin1->setMaximum(5);
        _spin1->setSingleStep(0.001);

        gridLayout->addWidget(_spin1, 3, 0, 1, 1);

        _spin3 = new QDoubleSpinBox(dockWidgetContents);
        _spin3->setObjectName(QStringLiteral("_spin3"));
        _spin3->setMinimum(-5);
        _spin3->setMaximum(5);
        _spin3->setSingleStep(0.001);
        _spin3->setValue(0);

        gridLayout->addWidget(_spin3, 3, 2, 1, 1);

        btn_home = new QPushButton(dockWidgetContents);
        btn_home->setObjectName(QStringLiteral("btn_home"));

        gridLayout->addWidget(btn_home, 1, 0, 1, 7);

        btn_setQ = new QPushButton(dockWidgetContents);
        btn_setQ->setObjectName(QStringLiteral("btn_setQ"));

        gridLayout->addWidget(btn_setQ, 3, 6, 1, 1);

        btn_getQ = new QPushButton(dockWidgetContents);
        btn_getQ->setObjectName(QStringLiteral("btn_getQ"));

        gridLayout->addWidget(btn_getQ, 2, 0, 1, 7);

        btn_quit = new QPushButton(dockWidgetContents);
        btn_quit->setObjectName(QStringLiteral("btn_quit"));

        gridLayout->addWidget(btn_quit, 4, 0, 1, 7);

        btn_start = new QPushButton(dockWidgetContents);
        btn_start->setObjectName(QStringLiteral("btn_start"));

        gridLayout->addWidget(btn_start, 0, 0, 1, 7);

        _spin4 = new QDoubleSpinBox(dockWidgetContents);
        _spin4->setObjectName(QStringLiteral("_spin4"));
        _spin4->setMinimum(-3.14);
        _spin4->setMaximum(3.14);
        _spin4->setSingleStep(0.001);

        gridLayout->addWidget(_spin4, 3, 3, 1, 1);

        _spin5 = new QDoubleSpinBox(dockWidgetContents);
        _spin5->setObjectName(QStringLiteral("_spin5"));
        _spin5->setMinimum(-3.14);
        _spin5->setMaximum(3.14);
        _spin5->setSingleStep(0.001);

        gridLayout->addWidget(_spin5, 3, 4, 1, 1);

        _spin6 = new QDoubleSpinBox(dockWidgetContents);
        _spin6->setObjectName(QStringLiteral("_spin6"));
        _spin6->setMinimum(-3.14);
        _spin6->setMaximum(3.14);
        _spin6->setSingleStep(0.001);

        gridLayout->addWidget(_spin6, 3, 5, 1, 1);


        verticalLayout->addLayout(gridLayout);


        verticalLayout_2->addLayout(verticalLayout);

        SamplePlugin->setWidget(dockWidgetContents);

        retranslateUi(SamplePlugin);

        QMetaObject::connectSlotsByName(SamplePlugin);
    } // setupUi

    void retranslateUi(QDockWidget *SamplePlugin)
    {
        SamplePlugin->setWindowTitle(QApplication::translate("SamplePlugin", "DockWidget", 0));
        btn_home->setText(QApplication::translate("SamplePlugin", "Move Home", 0));
        btn_setQ->setText(QApplication::translate("SamplePlugin", "Set Q", 0));
        btn_getQ->setText(QApplication::translate("SamplePlugin", "Get Q", 0));
        btn_quit->setText(QApplication::translate("SamplePlugin", "Quit", 0));
        btn_start->setText(QApplication::translate("SamplePlugin", "Start", 0));
    } // retranslateUi

};

namespace Ui {
    class SamplePlugin: public Ui_SamplePlugin {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ROBOTPLUGIN_H
