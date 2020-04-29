# Qt

## QPushButtom

* `clicked()` = **сигнал**
* `connect()` - метод, при помощи которого подключается слот
*  функция, котороя будет выполнена после сигнала = **слот**

~~~python
class mywindow(QtWidgets.QMainWindow):
    def __init__(self):
        super(mywindow, self).__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        # подключение клик-сигнал к слоту btnClicked
        self.ui.pushButton.clicked.connect(self.btnClicked)
  
    def btnClicked(self):
        self.ui.label.setText("Вы нажали на кнопку!")
        # Если не использовать, то часть текста исчезнет.
        self.ui.label.adjustSize()
~~~
![signal-slot_mode](/Users/severnoetechenie/Desktop/experience/signal-slot.png)

## QLabel

### Изменение шрифта setFont()

~~~python
self.ui.label.setFort(QtGui.QFont('Arial', 30))
~~~

### Изменить геометрию ярлыку setGeometry()

~~~python
self.ui.label.setGeometry(QtCore.QRect(10,10,200,200))
~~~

### Добавить текст setText()
~~~python
self.ui.label.setText("text")
~~~
---
## QLineEdit

### Добавить текст setText()
~~~python
self.ui.lineEdit.setText("text")
~~~

### Указать максимальную длину setMaxLength()
~~~python
self.ui.lineEdit.setMaxLength(10)
~~~

### Изменить стиль setStyleSheet()
* Изменение цвета текста

~~~python
self.ui.lineEdit.setStyleSheet( 'color: rgb( 28, 43, 255);' )
~~~

* Изменение цвета фона

~~~python
self.ui.lineEdit.setStyleSheet( 'background-color: rgb( 28, 43, 255);' )
~~~
* Размер и тип шрифта
* Цвет верхней / нижней / левой / правой границы
* Цвет выделения
* Цвет выделения заднего фона


### Только чтение без изменения содержимого
~~~python
self.ui.lineEdit.setReadOnly( True )
~~~

### Режим пароля
* Введенные данные отображаются как звездочки

~~~python
self.ui.lineEdit.setEchoMode( QtWidgets )
~~~







