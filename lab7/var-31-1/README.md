# Lab 7 var-31-1

Все консольные приложения Ruby следует реализовывать в виде трех
отдельных файлов:
1. основная программа;
2. программа для взаимодействия с пользователем через консоль;
3. программа для автоматического тестирования на основе MiniTest::Unit
или RSpec. Везде, где это возможно, данные для проверки должны
формироваться автоматически по правилам, указанным в задании.

При реализации программ везде, где это возможно, следует избегать
использования циклов for, do, while. Вместо них используйте методы из
примеси Enumerable.

Вариант лабораторной работы №7 вариант 31-1:

1) Организовать программным способом символьный файл F. Записать в файл H с сохранением порядка следования те символы файла F, которым в этом файле предшествует буква "а".
Автоматический тест программы обязательно должен проверять работу с файлами.

2) Разработать и реализовать иерархию классов для описанных объектов предметной области, используя механизмы наследования. Проверить ее на тестовом примере, с демонстрацией всех возможностей разработанных классов на конкретных данных.

  Объект - доска. Параметры: два целых числа: длина и ширина. Методы: инициализирующий, определения площади и возвращающие значения.

  Объект - ящик. Параметры: длина, ширина и высота. Методы: инициализирующий, определения объема и вывода параметров.

  В тестирующей программе обеспечить автоматическую проверку того, что созданные объекты действительно соответствют заданной иерархии классов
