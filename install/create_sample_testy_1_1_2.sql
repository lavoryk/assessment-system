-- phpMyAdmin SQL Dump
-- version 2.6.0-pl3
-- http://www.phpmyadmin.net
-- 
-- Хост: localhost
-- Час створення: Жов 21 2006 р., 14:56
-- Версія сервера: 4.0.27
-- Версія PHP: 4.3.11
-- 
-- БД: `testy_1_1_2_demo`
-- 

-- --------------------------------------------------------

-- 
-- Структура таблиці `answers`
-- 
START TRANSACTION;

CREATE TABLE `answers` (
  `ID_AN` int(10) unsigned NOT NULL auto_increment,
  `ID_QU` int(10) unsigned NOT NULL default '0',
  `A_True` tinyint(3) unsigned NOT NULL default '0',
  `A_Body` text NOT NULL,
  PRIMARY KEY  (`ID_AN`),
  KEY `ID_QU` (`ID_QU`)
) TYPE=InnoDB AUTO_INCREMENT=9994 ;

-- 
-- Дамп даних таблиці `answers`
-- 

INSERT INTO `answers` VALUES (95, 28, 1, 'Перемістити курсор до лівого краю абзацу так, щоб він прийняв вид стрілки, спрямованої вправо, а потім двічі клацнути кнопкою миші.');
INSERT INTO `answers` VALUES (96, 28, 0, 'Будь-яким з перерахованих');
INSERT INTO `answers` VALUES (97, 29, 0, 'для переходу в кінець документу використовується комбінація клавіш Shift+End');
INSERT INTO `answers` VALUES (98, 30, 1, 'За допомогою комбінації клавіш Ctrl+Ins');
INSERT INTO `answers` VALUES (99, 30, 0, 'Будь-яким з перерахованих');
INSERT INTO `answers` VALUES (100, 31, 1, 'За допомогою комбінації клавіш Shift+Ins');
INSERT INTO `answers` VALUES (101, 31, 0, 'Будь-яким з перерахованих');
INSERT INTO `answers` VALUES (102, 32, 1, 'За допомогою комбінації клавіш Shift+Del');
INSERT INTO `answers` VALUES (103, 32, 0, 'Будь-яким з перерахованих');
INSERT INTO `answers` VALUES (106, 33, 1, 'За допомогою комбінації клавіш Ctrl+F5');
INSERT INTO `answers` VALUES (107, 33, 0, 'За допомогою комбінації клавіш Ctrl+A');
INSERT INTO `answers` VALUES (161, 50, 0, 'не більше 63 стовпців та 32767 рядків');
INSERT INTO `answers` VALUES (162, 50, 1, 'не більше 32 стовпців та 3276 рядків');
INSERT INTO `answers` VALUES (163, 50, 1, 'не більше 63 стовпців');
INSERT INTO `answers` VALUES (164, 50, 1, 'не більше 63 рядків');
INSERT INTO `answers` VALUES (165, 50, 1, 'обмежується апаратними можливостями комп''ютера');
INSERT INTO `answers` VALUES (166, 51, 0, 'Будь-які з перерахованих');
INSERT INTO `answers` VALUES (167, 51, 1, 'Вибрати в меню "Таблица" команду "Добавить таблицу" і в діалоговому вікні, що з''явиться, вказати необхідні параметри таблиці, що створюється.');
INSERT INTO `answers` VALUES (168, 51, 1, 'Натиснути кнопку "Добавить таблицу"  стандартної панелі інструментів і утримуючи натисненою ліву кнопку "Миші" вибрати розмірність таблиці.');
INSERT INTO `answers` VALUES (169, 51, 1, 'Натиснути кнопку "Нарисовать таблицу"  панелі інструментів "Таблицы и границы" і користуючись видозміненим курсором "Миші" намалювати макет потрібної');
INSERT INTO `answers` VALUES (170, 52, 0, 'мінімальна: 0,25 пт\r\nмаксимальна: 6 пт');
INSERT INTO `answers` VALUES (171, 52, 1, 'мінімальна: 0,01 см\r\nмаксимальна: 0,5 см');
INSERT INTO `answers` VALUES (172, 52, 1, 'мінімальна: 0,5 пт\r\nмаксимальна: 5 пт');
INSERT INTO `answers` VALUES (173, 52, 1, 'мінімальна: 0,05 см\r\nмаксимальна: 0,45 см');
INSERT INTO `answers` VALUES (174, 52, 1, 'мінімальна: 1 пт\r\nмаксимальна: 5 пт');
INSERT INTO `answers` VALUES (175, 53, 1, 'Shift+Tab');
INSERT INTO `answers` VALUES (176, 53, 1, 'Tab');
INSERT INTO `answers` VALUES (177, 53, 1, 'Ctrl+Shift+Enter');
INSERT INTO `answers` VALUES (178, 53, 0, 'Ctrl+Enter');
INSERT INTO `answers` VALUES (179, 54, 0, '... виконати всі перераховані операції');
INSERT INTO `answers` VALUES (180, 54, 1, '... перетворити існуючу таблицю в текст');
INSERT INTO `answers` VALUES (181, 54, 1, '... перетворити існуючий текст в таблицю');
INSERT INTO `answers` VALUES (182, 55, 0, 'всі перерараховані');
INSERT INTO `answers` VALUES (183, 55, 1, 'змінювати вміст панелей інструментів');
INSERT INTO `answers` VALUES (184, 55, 1, 'виводити чи приховувати пункти головного меню редактора');
INSERT INTO `answers` VALUES (185, 55, 1, 'змінювати вміст пунктів головного меню редактора');
INSERT INTO `answers` VALUES (186, 55, 1, 'виводити чи приховувати панелі інтсрументів на екран редактора');
INSERT INTO `answers` VALUES (187, 56, 1, 'виводить на екран перелік розділів довідки');
INSERT INTO `answers` VALUES (188, 56, 1, 'виводить на екран "Помощник"');
INSERT INTO `answers` VALUES (189, 56, 1, 'відкриває вікно "Справочная система: Microsoft Word"');
INSERT INTO `answers` VALUES (190, 56, 0, 'дозволя вивести контекстну довідку по вибраному елементу');
INSERT INTO `answers` VALUES (191, 56, 1, 'впорядковує панелі інструментів відносно розмірів вікна редактора');
INSERT INTO `answers` VALUES (192, 57, 0, 'Контекстна довідка призначена для вставки в документ довідкової інформації відносно поточного контексту');
INSERT INTO `answers` VALUES (193, 57, 1, 'Рядок стану відображає зібрану інформацію про активний документ.');
INSERT INTO `answers` VALUES (194, 57, 1, 'Панелі інструментів призначені для зручного та швидкого виконання команд головного меню редактора.');
INSERT INTO `answers` VALUES (195, 57, 1, 'Піктограма системного меню редактора використовується для керування вікном редактора.');
INSERT INTO `answers` VALUES (196, 57, 1, 'Робоча область призначена для відображення відкритих вікон документів.');
INSERT INTO `answers` VALUES (197, 58, 1, 'Alt+End');
INSERT INTO `answers` VALUES (198, 58, 1, 'Ctrl+End');
INSERT INTO `answers` VALUES (199, 58, 1, 'Shift+F4');
INSERT INTO `answers` VALUES (200, 58, 1, 'Alt+F4');
INSERT INTO `answers` VALUES (201, 58, 0, 'Ctrl+F4');
INSERT INTO `answers` VALUES (202, 59, 0, 'Шаблон. Файл або файли, що містять структуру та інструменти для створення таких елементів документів як стиль та макет сторінки.');
INSERT INTO `answers` VALUES (203, 59, 1, 'Документ. Файл з логічно впорядкованою текстовою інформацією, що запускає редактор Microsof Word.');
INSERT INTO `answers` VALUES (204, 59, 1, 'Майстер. Вбудований засіб редактора, що призначений для автоматичного настроювання робочого середовища користувача.');
INSERT INTO `answers` VALUES (205, 60, 1, 'У випадку розгорнення вікна документа кнопки управління вікном документа відсутні.');
INSERT INTO `answers` VALUES (206, 60, 1, 'В рядку меню, під кнопкою системного меню програми.');
INSERT INTO `answers` VALUES (207, 60, 0, 'В рядку меню, під кнопками управління вікном програми.');
INSERT INTO `answers` VALUES (208, 61, 0, 'Навести курсор миші на назву пункту і клацнути лівою кнопкою миші');
INSERT INTO `answers` VALUES (209, 61, 1, 'Встановити курсор миші в рядок меню і натиснути клавішу Enter');
INSERT INTO `answers` VALUES (210, 61, 1, 'Ввести ім''я пункту меню з клавіатури');
INSERT INTO `answers` VALUES (211, 61, 1, 'Натиснути комбінацію клавіш Alt+Esc');
INSERT INTO `answers` VALUES (212, 62, 0, '"Стандартная" та "Форматирование"');
INSERT INTO `answers` VALUES (213, 62, 1, '"Стандартная" та "Рисование"');
INSERT INTO `answers` VALUES (214, 62, 1, '"Форматирование", "Рисование" і "Стандартная"');
INSERT INTO `answers` VALUES (215, 62, 1, 'Всі панелв виводяться користувачем');
INSERT INTO `answers` VALUES (216, 63, 1, 'Багато');
INSERT INTO `answers` VALUES (217, 63, 1, 'Три');
INSERT INTO `answers` VALUES (218, 63, 1, 'Два');
INSERT INTO `answers` VALUES (219, 63, 0, 'Тільки одне');
INSERT INTO `answers` VALUES (220, 64, 0, 'Всередині вікна редактора може існувати декілька вікон документів');
INSERT INTO `answers` VALUES (221, 64, 1, 'Word може працювати в декількох вікнах одночасно');
INSERT INTO `answers` VALUES (222, 64, 1, 'Кожне вікно документу запускає окремо програму Word');
INSERT INTO `answers` VALUES (223, 65, 0, 'Для виведення інформації про поточне знаходження курсору та виведення довідкової інформації по роботі з редактором');
INSERT INTO `answers` VALUES (224, 65, 1, 'Для виведення назви документу');
INSERT INTO `answers` VALUES (225, 65, 1, 'Для відкриття нового документу');
INSERT INTO `answers` VALUES (226, 65, 1, 'Для збереження документу');
INSERT INTO `answers` VALUES (227, 66, 1, 'Окно');
INSERT INTO `answers` VALUES (228, 66, 1, 'Файл');
INSERT INTO `answers` VALUES (229, 66, 1, 'Формат');
INSERT INTO `answers` VALUES (230, 66, 1, 'Правка');
INSERT INTO `answers` VALUES (231, 66, 0, 'Вид');
INSERT INTO `answers` VALUES (232, 67, 0, '... з пункту меню "Файл" вибрати команду "Сохранить как..."');
INSERT INTO `answers` VALUES (233, 67, 1, '... з пункту меню "Сохранить" вибрати команду "Документ..."');
INSERT INTO `answers` VALUES (234, 67, 1, '... з пункту меню "Правка" вибрати команду "Сохранить как..."');
INSERT INTO `answers` VALUES (235, 67, 1, '...натиснути Ctrl+Z...');
INSERT INTO `answers` VALUES (236, 68, 0, 'Форматирование');
INSERT INTO `answers` VALUES (237, 68, 1, 'Правка');
INSERT INTO `answers` VALUES (238, 68, 1, 'Файл');
INSERT INTO `answers` VALUES (239, 68, 1, 'Сервис');
INSERT INTO `answers` VALUES (240, 68, 1, 'Таблица');
INSERT INTO `answers` VALUES (241, 69, 0, 'Shift+F1');
INSERT INTO `answers` VALUES (242, 69, 1, 'Ctrl+F1');
INSERT INTO `answers` VALUES (243, 69, 1, 'Alt+F1');
INSERT INTO `answers` VALUES (244, 69, 1, 'Shift+Alt+Ctrl');
INSERT INTO `answers` VALUES (245, 69, 1, 'Alt+Ctrl+1');
INSERT INTO `answers` VALUES (246, 70, 0, 'Для встановлення полів сторінки використовують пункт меню "Формат"');
INSERT INTO `answers` VALUES (247, 70, 1, 'Для встановлення полів сторінки використовують пункт меню "Файл"');
INSERT INTO `answers` VALUES (248, 70, 1, 'Для встановлення полів сторінки використовують горизонтальну та вертикальну лінійки');
INSERT INTO `answers` VALUES (249, 71, 0, 'Для встановлення відступів та отступів абзаців використовують команду "Абзац" пункту меню "Файл"');
INSERT INTO `answers` VALUES (250, 71, 1, 'Для встановлення відступів та отступів абзаців використовують команду "Абзац" пункту меню "Формат"');
INSERT INTO `answers` VALUES (251, 71, 1, 'Для встановлення відступів та отступів абзаців використовують горизонтальну лінійку');
INSERT INTO `answers` VALUES (252, 71, 1, 'Для встановлення відступів та отступів абзаців використовують команду "Абзац" з контекстного меню в області тексту');
INSERT INTO `answers` VALUES (253, 72, 0, 'Залежить від бажання користувача');
INSERT INTO `answers` VALUES (254, 72, 1, '1');
INSERT INTO `answers` VALUES (255, 72, 1, '3');
INSERT INTO `answers` VALUES (256, 72, 1, '5');
INSERT INTO `answers` VALUES (257, 72, 1, '2');
INSERT INTO `answers` VALUES (258, 73, 0, 'За допомогою меню "Файл"');
INSERT INTO `answers` VALUES (259, 73, 1, 'Клацнути лівою кнопкою миші в будь-якому місці вікна');
INSERT INTO `answers` VALUES (260, 73, 1, 'За допомогою пункту меню "Окно"');
INSERT INTO `answers` VALUES (261, 73, 1, 'Комбінацією клавіш Ctrl+F6');
INSERT INTO `answers` VALUES (262, 74, 0, 'Тільки в кінці абзацу');
INSERT INTO `answers` VALUES (263, 74, 1, 'В кінці кожного рядка');
INSERT INTO `answers` VALUES (264, 74, 1, 'В кінці кожного речення');
INSERT INTO `answers` VALUES (265, 75, 0, 'Вирізати текст');
INSERT INTO `answers` VALUES (266, 75, 1, 'Підкреслити виділений текст одинарною лінією');
INSERT INTO `answers` VALUES (267, 75, 1, 'Змінити тип (гарнітуру) шрифту');
INSERT INTO `answers` VALUES (268, 75, 1, 'Змінити розмір шрифту');
INSERT INTO `answers` VALUES (269, 75, 1, 'Встановити колір символів');
INSERT INTO `answers` VALUES (270, 76, 0, 'Зробити першу букву в рядку “Буквицей”');
INSERT INTO `answers` VALUES (271, 76, 1, 'Змінити інтервал між символами');
INSERT INTO `answers` VALUES (272, 76, 1, 'Змістити виділений фрагмент тексту вниз або вверх відносно рядка');
INSERT INTO `answers` VALUES (273, 76, 1, 'Зробити зображення символів курсивом');
INSERT INTO `answers` VALUES (274, 77, 0, 'Обрамлення');
INSERT INTO `answers` VALUES (275, 77, 1, 'Шрифт');
INSERT INTO `answers` VALUES (276, 77, 1, 'Розмір шрифту');
INSERT INTO `answers` VALUES (277, 77, 1, 'Ущільненість');
INSERT INTO `answers` VALUES (278, 78, 0, 'Вставити  роздільник сторінок');
INSERT INTO `answers` VALUES (279, 78, 1, 'Клацнути мишею по новій сторінці');
INSERT INTO `answers` VALUES (280, 78, 1, 'Натиснути клавішу Enter');
INSERT INTO `answers` VALUES (281, 78, 1, 'Натиснути клавішу PageDown');
INSERT INTO `answers` VALUES (282, 79, 1, '.prg\r\n');
INSERT INTO `answers` VALUES (283, 79, 1, '.dbf\r\n');
INSERT INTO `answers` VALUES (284, 79, 1, '.txt');
INSERT INTO `answers` VALUES (285, 79, 0, '.doc');
INSERT INTO `answers` VALUES (286, 80, 0, 'Команди "Создать" меню "Файл"');
INSERT INTO `answers` VALUES (287, 80, 1, 'Команди "Открыть" меню "Файл"');
INSERT INTO `answers` VALUES (288, 80, 1, 'відповідної команди контекстного меню');
INSERT INTO `answers` VALUES (289, 80, 1, 'Усі відповіді правильні\r\n');
INSERT INTO `answers` VALUES (290, 81, 0, 'Так');
INSERT INTO `answers` VALUES (291, 81, 1, 'Ні\r\n');
INSERT INTO `answers` VALUES (292, 82, 0, 'клацнути по ньому один раз лівою кнопкою миші');
INSERT INTO `answers` VALUES (293, 82, 1, 'клацнути по ньому один раз правою кнопкою миші');
INSERT INTO `answers` VALUES (294, 82, 1, 'клацнути по ньому двічі лівою кнопкою миші');
INSERT INTO `answers` VALUES (295, 82, 1, 'клацнути по ньому двічі правою кнопкою миші');
INSERT INTO `answers` VALUES (296, 83, 0, 'Ctrl+J');
INSERT INTO `answers` VALUES (297, 83, 1, 'Shift+L');
INSERT INTO `answers` VALUES (298, 83, 1, 'Ctrl+R');
INSERT INTO `answers` VALUES (299, 83, 1, 'Ctrl+Insert');
INSERT INTO `answers` VALUES (300, 84, 0, '...редактор формул');
INSERT INTO `answers` VALUES (301, 84, 1, '...редактор діаграм');
INSERT INTO `answers` VALUES (302, 84, 1, '...програма для створення ділової графіки');
INSERT INTO `answers` VALUES (303, 84, 1, '...підпрограма, яка дозволяє створювати нові графічні об''єкти');
INSERT INTO `answers` VALUES (304, 85, 1, 'В меню "Вид" вибрати команду "непечатаемые символы"');
INSERT INTO `answers` VALUES (305, 85, 0, 'Натиснути кнопку "непечатаемые символы"на панелі інструментів');
INSERT INTO `answers` VALUES (306, 86, 0, '...можна за допомогою команди "Из файла" пукту меню "Вставка"');
INSERT INTO `answers` VALUES (307, 86, 1, '...можна за допомогою команди "Добавить рисунок" пункту меню "Вставка"');
INSERT INTO `answers` VALUES (308, 86, 1, '...можна за допомогою команди "Из файла" пукту меню "Файл"');
INSERT INTO `answers` VALUES (309, 86, 1, 'неможливо');
INSERT INTO `answers` VALUES (310, 87, 0, '4');
INSERT INTO `answers` VALUES (311, 87, 1, '3');
INSERT INTO `answers` VALUES (312, 87, 1, '5');
INSERT INTO `answers` VALUES (313, 87, 1, '2');
INSERT INTO `answers` VALUES (314, 88, 1, 'Для зміни міжсимвольних інтервалів в абзаці');
INSERT INTO `answers` VALUES (315, 88, 1, 'Для зміни інтервалів між символами абзацу');
INSERT INTO `answers` VALUES (316, 88, 0, 'Для зміни інтервалів між абзацами');
INSERT INTO `answers` VALUES (317, 89, 0, '...потрібно виділити його та перетягнути мишею, утримуючи її ліву кнопку');
INSERT INTO `answers` VALUES (318, 89, 1, '...потрібно виділити його та перетягнути мишею, утримуючи її ліву кнопку і клавішу Ctrl');
INSERT INTO `answers` VALUES (319, 89, 1, '...потрібно виділити його та перетягнути мишею, утримуючи її ліву кнопку і клавішу Shift');
INSERT INTO `answers` VALUES (320, 89, 1, 'Жодна з перерахованих дій неправильна');
INSERT INTO `answers` VALUES (321, 90, 0, 'буде встановлено примусовий роздільник сторінки перед виділеним абзацем.');
INSERT INTO `answers` VALUES (322, 90, 1, 'Кожен абзац буде відокремлено від попереднього жирною лінією');
INSERT INTO `answers` VALUES (323, 90, 1, 'Кожен новий абзац буде розташовано на новій парній сторінці');
INSERT INTO `answers` VALUES (324, 90, 1, 'Немає правильної відповіді');
INSERT INTO `answers` VALUES (325, 91, 0, 'двічі клацнути мишею');
INSERT INTO `answers` VALUES (326, 91, 1, 'виділити і натиснути ентер');
INSERT INTO `answers` VALUES (327, 92, 0, 'набір атрибутів (параметрів шрифту, абзацу) форматування тексту, що збережений під одним іменем.');
INSERT INTO `answers` VALUES (328, 92, 1, 'спосіб розміщення тексту відносто сторіки документу,  комірки таблиціб тощо.');
INSERT INTO `answers` VALUES (329, 92, 1, 'набір атрибутів для  форматування лише параметрів абзацу, що збережений під одним іменем.');
INSERT INTO `answers` VALUES (330, 92, 1, 'набір атрибутів для  форматування лише параметрів тесту, що збережений під одним іменем.');
INSERT INTO `answers` VALUES (331, 93, 0, 'стилі форматування символів або стилі форматування абзаців.');
INSERT INTO `answers` VALUES (332, 93, 1, 'стилі форматування символів.');
INSERT INTO `answers` VALUES (333, 93, 1, 'стилі форматування абзаців.');
INSERT INTO `answers` VALUES (334, 94, 0, 'необхідно виділити цей текст і вибрати ім''я стилю в списку стилів на панелі інструментів.');
INSERT INTO `answers` VALUES (335, 94, 1, 'необхідно встановити, курсор в будь-якому місці всередині тексту і вибрати стиль з того ж списку.');
INSERT INTO `answers` VALUES (336, 94, 1, 'Вірні два варіанти.');
INSERT INTO `answers` VALUES (337, 95, 0, 'Вірні два варіанти.');
INSERT INTO `answers` VALUES (338, 95, 1, 'необхідно виділити цей текст і вибрати ім''я стилю в списку стилів на панелі інструментів.');
INSERT INTO `answers` VALUES (339, 95, 1, 'необхідно встановити, курсор в будь-якому місці всередині тексту і вибрати стиль з того ж списку.');
INSERT INTO `answers` VALUES (340, 96, 1, 'стиль абзацу та стиль символу.');
INSERT INTO `answers` VALUES (341, 96, 1, 'стиль символу.');
INSERT INTO `answers` VALUES (342, 96, 0, 'стиль абзацу.');
INSERT INTO `answers` VALUES (343, 97, 1, 'стиль абзацу та стиль символу.');
INSERT INTO `answers` VALUES (344, 97, 1, 'стиль абзацу.');
INSERT INTO `answers` VALUES (345, 97, 0, 'стиль символу.');
INSERT INTO `answers` VALUES (346, 98, 1, 'системою управління базами даних.');
INSERT INTO `answers` VALUES (347, 98, 1, 'табличним редактором.');
INSERT INTO `answers` VALUES (348, 98, 0, 'текстовим редактором.');
INSERT INTO `answers` VALUES (349, 106, 1, 'Дозволяють збільшувати, зменшувати відступи від краю екрану робочої, в залежності від того де розміщені панелі інструментів.');
INSERT INTO `answers` VALUES (350, 100, 0, 'його виділити.');
INSERT INTO `answers` VALUES (351, 100, 1, 'перемістити курсор на його початок.');
INSERT INTO `answers` VALUES (352, 100, 1, 'перемістити курсор на його кінець.');
INSERT INTO `answers` VALUES (353, 100, 1, 'перемістити курсор на його початок, а потім на кінець тексту.');
INSERT INTO `answers` VALUES (354, 101, 0, 'помістити курсор на абзац, або виділити абзац (абзаци) .');
INSERT INTO `answers` VALUES (355, 101, 1, 'розмістити абзац в центрі робочої області редактора.');
INSERT INTO `answers` VALUES (356, 101, 1, 'розмістити абзац в внизу робочої області редактора.');
INSERT INTO `answers` VALUES (357, 101, 1, 'розмістити абзац вище середини робочої області редактора.');
INSERT INTO `answers` VALUES (358, 85, 1, 'В меню "Вставка" вибрати команду "Символ..."');
INSERT INTO `answers` VALUES (359, 102, 0, 'Ctrl+A.');
INSERT INTO `answers` VALUES (360, 102, 1, 'Ctrl+B.');
INSERT INTO `answers` VALUES (361, 102, 1, 'Ctrl+O.');
INSERT INTO `answers` VALUES (362, 102, 1, 'Ctrl+F2.');
INSERT INTO `answers` VALUES (363, 102, 1, 'Ctrl+All.');
INSERT INTO `answers` VALUES (364, 103, 1, 'встановити курсор миші посередині фрагменту, натиснути ліву кнопку і, не відпускаючи її, перемістити курсор вниз фрагменту.');
INSERT INTO `answers` VALUES (365, 103, 1, 'встановити курсор миші посередині фрагменту, далі встановити курсор миші на кінець фрагменту.');
INSERT INTO `answers` VALUES (366, 103, 1, 'встановити курсор миші на початок фрагменту, далі встановити курсор миші на кінець фрагменту.');
INSERT INTO `answers` VALUES (367, 103, 0, 'встановити курсор миші на початок фрагменту, натиснути ліву кнопку і, не відпускаючи її, перемістити курсор до кінця фрагменту.');
INSERT INTO `answers` VALUES (368, 104, 1, 'Можна, якщо встановити <b>Сервис|Пареметры</b>, вкладка <b>Правка</b>, параметр <b>Использовать клавиатуру для выделения фрагмента текста</b>.');
INSERT INTO `answers` VALUES (369, 104, 1, 'Ні, не можна. Виділення фрагмету можливе лише за допомогою миші.');
INSERT INTO `answers` VALUES (370, 104, 1, 'Можна, лише при наявності розширеної клавіатури. Наприклад у комп''ютерах типу notebook, ця можливість відсутня.');
INSERT INTO `answers` VALUES (371, 104, 0, 'Так, це можли за допомогою клавіши Shift у комбінації з клавішами управління курсором, або End, або Home, або PgUp, або PgDown.');
INSERT INTO `answers` VALUES (372, 60, 1, 'В рядку стану.');
INSERT INTO `answers` VALUES (373, 60, 1, 'В рядку заголовку вікна програми.');
INSERT INTO `answers` VALUES (374, 105, 1, 'перейти в кінець рядка.');
INSERT INTO `answers` VALUES (375, 105, 1, 'перейти в меню програми.');
INSERT INTO `answers` VALUES (376, 105, 0, 'переключатись між режимами вставки і заміщення.');
INSERT INTO `answers` VALUES (377, 105, 1, 'перейти на почат текстового документу.');
INSERT INTO `answers` VALUES (378, 106, 0, 'На панелях інструметів виводяться кнопки, які дублюють комадни меню, і полегшують роботу з документом.');
INSERT INTO `answers` VALUES (379, 106, 1, 'Всі перелічені відповіді.');
INSERT INTO `answers` VALUES (380, 106, 1, 'На панелях інструментів виводяться кнопки, навівши на які ввиводиться натяк (Hint). Це дозволяє швидко оволодіти текстовим редактором.');
INSERT INTO `answers` VALUES (381, 98, 1, 'Всі перелічені відповіді.');
INSERT INTO `answers` VALUES (382, 107, 1, 'Ctrl+J');
INSERT INTO `answers` VALUES (383, 107, 1, 'Ctrl+R');
INSERT INTO `answers` VALUES (384, 107, 1, 'Ctrl+L');
INSERT INTO `answers` VALUES (385, 107, 0, 'Ctrl+E');
INSERT INTO `answers` VALUES (386, 108, 1, 'Тільки у випадку коли розмір сторінки перевищує A4.');
INSERT INTO `answers` VALUES (387, 108, 1, 'Ні це неможливо.');
INSERT INTO `answers` VALUES (388, 108, 0, 'Так, це можливо.');
INSERT INTO `answers` VALUES (389, 109, 0, 'Всі перелічені відповіді.');
INSERT INTO `answers` VALUES (390, 109, 1, 'натиснути комбінацію клавіш Ctrl+Enter.');
INSERT INTO `answers` VALUES (391, 109, 1, 'команда <b>Вставка|Разрыв</b>.');
INSERT INTO `answers` VALUES (392, 28, 1, 'Тричі клацнути лівою клавішою миші по будь-якому місцю абзацу.');
INSERT INTO `answers` VALUES (393, 28, 1, 'Перемістити текстовий курсор на початок абзацу і натиснути комбінацію клавіш <b>Shift+Ctrl+&#8595;</b>');
INSERT INTO `answers` VALUES (394, 110, 0, 'Ctrl+Home');
INSERT INTO `answers` VALUES (395, 110, 1, 'Home');
INSERT INTO `answers` VALUES (396, 110, 1, 'Shift+Home');
INSERT INTO `answers` VALUES (397, 110, 1, 'Alt+Home');
INSERT INTO `answers` VALUES (398, 110, 1, 'Ctrl+Alt+Home');
INSERT INTO `answers` VALUES (399, 29, 1, 'для переходу на початок документу використовується комбінація клавіш Ctrl+Home');
INSERT INTO `answers` VALUES (400, 29, 1, 'для переходу в кінець документу використовується комбінація клавіш Ctrl+End');
INSERT INTO `answers` VALUES (401, 29, 1, 'для переходу на початок рядку використовується клавіша Home');
INSERT INTO `answers` VALUES (402, 29, 1, 'для переходу на кінець рядку використовується клавіша End');
INSERT INTO `answers` VALUES (403, 30, 1, 'За допомогою комбінації клавіш Ctrl+C');
INSERT INTO `answers` VALUES (404, 30, 1, 'За допомогою команди <b>"Копировать"</b> меню <b>"Правка"</b>');
INSERT INTO `answers` VALUES (405, 31, 1, 'За допомогою комбінації клавіш Ctrl+V');
INSERT INTO `answers` VALUES (406, 31, 1, 'За допомогою команди <b>"Вставить"</b> меню <b>"Правка"</b>');
INSERT INTO `answers` VALUES (407, 32, 1, 'За допомогою комбінації клавіш Ctrl+X');
INSERT INTO `answers` VALUES (408, 32, 1, 'За допомогою команди <b>"Вырезать"</b> меню <b>"Правка"</b>');
INSERT INTO `answers` VALUES (409, 32, 1, 'За допомогою команди <b>"Вырезать"</b> контекстного меню');
INSERT INTO `answers` VALUES (410, 33, 1, 'За допомогою комбінації клавіш Ctrl+S');
INSERT INTO `answers` VALUES (411, 33, 1, 'За допомогою комбінації клавіш Ctrl+F12');
INSERT INTO `answers` VALUES (412, 33, 1, 'За допомогою комбінації клавіш Ctrl+F');
INSERT INTO `answers` VALUES (413, 111, 0, 'Будь-яким спосбом з перерахованих');
INSERT INTO `answers` VALUES (414, 111, 1, 'Настинути клавішу ESC');
INSERT INTO `answers` VALUES (415, 111, 1, 'Клацнути лівою кнопкою миші за межами формули по будь-якому місцю документа.');
INSERT INTO `answers` VALUES (416, 112, 0, 'WordArt');
INSERT INTO `answers` VALUES (417, 112, 1, 'ClipArt');
INSERT INTO `answers` VALUES (418, 112, 1, 'FontArt');
INSERT INTO `answers` VALUES (419, 112, 1, 'MS Graph');
INSERT INTO `answers` VALUES (420, 112, 1, 'MS Texture');
INSERT INTO `answers` VALUES (421, 113, 0, 'Для створення колонок тексту призначена команда "Вид | Колонки"');
INSERT INTO `answers` VALUES (422, 113, 1, 'Для створення колонок тексту призначена команда "Формат | Колонки"');
INSERT INTO `answers` VALUES (423, 113, 1, 'Для створення колонок тексту призначена кнопка "Колонки"на панелі інструментів "Форматирование"');
INSERT INTO `answers` VALUES (424, 114, 0, 'створення та додання формул в документ');
INSERT INTO `answers` VALUES (425, 114, 1, 'обчислення формул і вивід результату в документі');
INSERT INTO `answers` VALUES (426, 114, 1, 'здійснення обчислень в таблицях і вивід результату');
INSERT INTO `answers` VALUES (427, 114, 1, 'перетворення виразів MS Excel у формули MS Word');
INSERT INTO `answers` VALUES (428, 154, 0, 'Необхідно виділити комірки які мають бути об''єднані в одну. Вибрати команду <b>Таблица|Объединить ячейки</b>.');
INSERT INTO `answers` VALUES (429, 149, 0, 'правильно');
INSERT INTO `answers` VALUES (430, 116, 0, 'Tab');
INSERT INTO `answers` VALUES (431, 116, 1, 'Shift + Tab');
INSERT INTO `answers` VALUES (432, 116, 1, 'Ctrl + Tab');
INSERT INTO `answers` VALUES (433, 116, 1, 'Home');
INSERT INTO `answers` VALUES (434, 116, 1, 'Shift + Insert');
INSERT INTO `answers` VALUES (435, 117, 0, 'Так');
INSERT INTO `answers` VALUES (436, 117, 1, 'Ні');
INSERT INTO `answers` VALUES (437, 117, 1, 'Він змінюється автоматично при побудові списку');
INSERT INTO `answers` VALUES (438, 118, 0, '"Сервис"');
INSERT INTO `answers` VALUES (439, 118, 1, '"Вид"');
INSERT INTO `answers` VALUES (440, 118, 1, '"Формат"');
INSERT INTO `answers` VALUES (441, 118, 1, '"Вставка"');
INSERT INTO `answers` VALUES (442, 118, 1, '"Правка"');
INSERT INTO `answers` VALUES (443, 119, 0, 'будь-якого кольору та типу');
INSERT INTO `answers` VALUES (444, 119, 1, 'будь-якого типу, але одного кольору');
INSERT INTO `answers` VALUES (445, 119, 1, 'будь-якого кольору, але одного типу');
INSERT INTO `answers` VALUES (446, 120, 1, 'Будь-яку кількість блоків тексту');
INSERT INTO `answers` VALUES (447, 120, 0, 'Лише один блок тексту чи об''єкт');
INSERT INTO `answers` VALUES (448, 121, 0, 'будь-яким способом з перерахованих');
INSERT INTO `answers` VALUES (449, 121, 1, 'на довільний кут');
INSERT INTO `answers` VALUES (450, 121, 1, 'на 180 відносно вертикалі');
INSERT INTO `answers` VALUES (451, 121, 1, 'на 180 відносно горизонталі');
INSERT INTO `answers` VALUES (452, 121, 1, 'на 90 за/проти годинникової стрілки');
INSERT INTO `answers` VALUES (453, 122, 0, 'Ні');
INSERT INTO `answers` VALUES (454, 122, 1, 'Так, утримуючи при виділенні клавішу Ctrl');
INSERT INTO `answers` VALUES (455, 122, 1, 'Так, утримуючи привиділенні клавішу Shift');
INSERT INTO `answers` VALUES (456, 122, 1, 'Так, за допомогою кнопок на панелі інструментів "Таблицы и границы"');
INSERT INTO `answers` VALUES (457, 123, 0, '— Word автоматично намалює вибрану фігуру розміром 1 дюйм на 1 дюйм (1 дюйм=2,54 см) і відкриє діалогове вікно <b>Формат объекта</b>.');
INSERT INTO `answers` VALUES (458, 123, 1, '— Word автоматично намалює вибрану фігуру розміром 1 дюйм на 1 дюйм (1 дюйм=2,54 см) і встановить обтікання текстом "сквозное".');
INSERT INTO `answers` VALUES (459, 123, 1, '— Word автоматично відкриє діалогове вікно <b>Формат объекта</b> для вибору розміру майбутнього об''єкту.');
INSERT INTO `answers` VALUES (460, 123, 1, '— Word автоматично перейде в режим відображення розмітки сторінки і відкриє діалогове вікно <b>Сетка</b>.');
INSERT INTO `answers` VALUES (461, 124, 0, '«Автозамена»');
INSERT INTO `answers` VALUES (462, 124, 1, '«Автоформат при вводе»');
INSERT INTO `answers` VALUES (463, 124, 1, '«Автотекст»');
INSERT INTO `answers` VALUES (464, 124, 1, '«Автоформат»');
INSERT INTO `answers` VALUES (465, 125, 0, '"Автотекст"');
INSERT INTO `answers` VALUES (466, 125, 1, '"Буфер обміну"');
INSERT INTO `answers` VALUES (467, 125, 1, '"Автозамена"');
INSERT INTO `answers` VALUES (468, 125, 1, '"Шаблон"');
INSERT INTO `answers` VALUES (469, 125, 1, '"Мастер вставки"');
INSERT INTO `answers` VALUES (470, 126, 0, 'Ні');
INSERT INTO `answers` VALUES (471, 126, 1, 'Так, за допомогою кнопок на панелі інструментів');
INSERT INTO `answers` VALUES (472, 126, 1, 'Так, повернувши текст мишею');
INSERT INTO `answers` VALUES (473, 127, 0, 'виконати всі перераховані дії');
INSERT INTO `answers` VALUES (474, 127, 1, 'змінити його контур, заливку');
INSERT INTO `answers` VALUES (475, 127, 1, 'розмістити його в будь-якому місці сторінки, абзацу, стовбця чи поля');
INSERT INTO `answers` VALUES (476, 127, 1, 'зробити так, щоб текст обтікав його найрізноманітнішими способами');
INSERT INTO `answers` VALUES (477, 128, 1, 'Ні');
INSERT INTO `answers` VALUES (478, 128, 0, 'Так');
INSERT INTO `answers` VALUES (479, 120, 1, 'Три блоки тексту');
INSERT INTO `answers` VALUES (480, 120, 1, 'Два блоки тексту');
INSERT INTO `answers` VALUES (481, 129, 0, 'вибрати команду <b>Правка|Найти...</b>');
INSERT INTO `answers` VALUES (482, 129, 1, 'вибрати команду <b>Правка|Заменить...</b>');
INSERT INTO `answers` VALUES (483, 129, 1, 'вибрати команду <b>Формат|Найти...</b>');
INSERT INTO `answers` VALUES (484, 129, 1, 'вибрати команду <b>Правка|Заменить...</b>');
INSERT INTO `answers` VALUES (485, 129, 1, 'використати комбінацію клавіш <b>CTRL+S</b>');
INSERT INTO `answers` VALUES (486, 130, 1, 'натиснути комбінацію клавіш CTL+R');
INSERT INTO `answers` VALUES (487, 130, 1, 'вибрати команду <b>Правка|Найти...</b>');
INSERT INTO `answers` VALUES (488, 131, 1, '5');
INSERT INTO `answers` VALUES (489, 131, 0, '9');
INSERT INTO `answers` VALUES (490, 130, 0, 'вибрати команду <b>Правка|Заменит...</b>');
INSERT INTO `answers` VALUES (491, 132, 1, 'CTRL+H - заміна одного фрагменту тексту на інший.');
INSERT INTO `answers` VALUES (492, 132, 1, 'CTRL+S - записати активний документ.');
INSERT INTO `answers` VALUES (493, 132, 1, 'Всі перераховані відповіді.');
INSERT INTO `answers` VALUES (494, 132, 1, 'CTRL+F - пошук фрагменту тексту.');
INSERT INTO `answers` VALUES (495, 132, 0, 'CTRL+J - перехід до об''єкту  документа.');
INSERT INTO `answers` VALUES (496, 133, 0, 'виділити текст, який необхідно зберегти у вигляді елемента списку автотексту. Вибрати команду <b>Вставка|Автотекст</b>, а потім–команду Создать');
INSERT INTO `answers` VALUES (497, 133, 1, 'вибрати команду <b>Вставка|Автотекст</b>, а потім–команду Создать. Виділити текст, який необхідно зберегти у вигляді елемента списку автотексту');
INSERT INTO `answers` VALUES (498, 133, 1, 'Вибрати команду <b>Вставка|Автотекст</b>, а потім–команду Создать.');
INSERT INTO `answers` VALUES (499, 133, 1, 'виділити текст, який необхідно зберегти у вигляді елемента списку автотексту. Натиснути комбінацію клавіш CTRL+F4.');
INSERT INTO `answers` VALUES (500, 134, 1, 'створення як однорівненвого, так і багаторівневого  маркерованого списку.');
INSERT INTO `answers` VALUES (501, 134, 1, 'створення як однорівненвого, так і багаторівневого нумерованого списку.');
INSERT INTO `answers` VALUES (502, 134, 1, 'створення нумерованого, маркерованого списку.');
INSERT INTO `answers` VALUES (503, 135, 0, 'натиснути кнопку <b>Увеличить отступ</b> панелі інструментів <b>Форматирование</b>.');
INSERT INTO `answers` VALUES (504, 135, 1, 'натиснути кнопку <b>Уменшить отступ</b> панелі інструментів <b>Форматирование</b>.');
INSERT INTO `answers` VALUES (505, 135, 1, 'вибрати команду <b>Увеличить отступ</b> меню <b>Формат</b>.');
INSERT INTO `answers` VALUES (506, 135, 1, 'вибрати команду <b>Уменьшить отступ</b> меню <b>Формат</b>.');
INSERT INTO `answers` VALUES (507, 136, 0, 'натиснути кнопку <b>Уменшить отступ</b> панелі інструментів <b>Форматирование</b>.');
INSERT INTO `answers` VALUES (508, 136, 1, 'натиснути кнопку <b>Увеличить отступ</b> панелі інструментів <b>Форматирование</b>.');
INSERT INTO `answers` VALUES (509, 136, 1, 'вибрати команду <b>Уменьшить отступ</b> меню <b>Формат</b>.');
INSERT INTO `answers` VALUES (510, 136, 1, 'вибрати команду <b>Увеличить отступ</b> меню <b>Формат</b>.');
INSERT INTO `answers` VALUES (511, 137, 0, 'Ctrl + End');
INSERT INTO `answers` VALUES (512, 137, 1, 'Ctrl + Home');
INSERT INTO `answers` VALUES (513, 137, 1, 'Ctrl + Shift + End');
INSERT INTO `answers` VALUES (514, 137, 1, 'Ctrl + Shift + Home');
INSERT INTO `answers` VALUES (515, 128, 1, 'Залежить від ситуації');
INSERT INTO `answers` VALUES (516, 138, 0, 'Ctrl + A');
INSERT INTO `answers` VALUES (517, 138, 1, 'Ctrl + C');
INSERT INTO `answers` VALUES (518, 138, 1, 'Ctrl + V');
INSERT INTO `answers` VALUES (519, 138, 1, 'Ctrl + X');
INSERT INTO `answers` VALUES (520, 134, 0, 'створення як однорівненвого, так і багаторівневого нумерованого, маркерованого списків.');
INSERT INTO `answers` VALUES (521, 139, 0, 'Активізувати потрібну комірку, вибрати команду <b>Таблица|Удалить ячейки...</b>');
INSERT INTO `answers` VALUES (522, 139, 1, 'Виділити стовпчик в якій знаходиться комірка, вибрати команду <b>Таблица|Удалить ячейки...</b>');
INSERT INTO `answers` VALUES (523, 139, 1, 'Виділити рядок в якій знаходиться комірка, вибрати команду <b>Таблица|Удалить ячейки...</b>');
INSERT INTO `answers` VALUES (524, 139, 1, 'Активізувати потрібну комірку, натиснути клавішу <b>Delete</b>');
INSERT INTO `answers` VALUES (525, 140, 0, 'Виділити стовпчик, вибрати команду <b>Таблица|Удалить Столбцы...</b>');
INSERT INTO `answers` VALUES (526, 140, 1, 'Виділити стовпчик, вибрати команду <b>Таблица|Удалить ячейки...</b>');
INSERT INTO `answers` VALUES (527, 140, 1, 'Виділити стовпчик, натиснути клавішу <b>Delete</b>');
INSERT INTO `answers` VALUES (528, 140, 1, 'Кожну комірку стовпчика видаляти за допомогою клавіши <b>Delete</b>');
INSERT INTO `answers` VALUES (529, 141, 0, 'звичайний режим');
INSERT INTO `answers` VALUES (530, 141, 1, 'режим структури');
INSERT INTO `answers` VALUES (531, 141, 1, 'режим розмітки сторінки');
INSERT INTO `answers` VALUES (532, 141, 1, 'веб-документа');
INSERT INTO `answers` VALUES (533, 142, 0, 'Виділити рядок, вибрати команду <b>Таблица|Удалить Строки...</b>');
INSERT INTO `answers` VALUES (534, 142, 1, 'Виділити рядок, натиснути клавішу <b>Delete</b>');
INSERT INTO `answers` VALUES (535, 142, 1, 'Кожну комірку рядка видаляти за допомогою клавіши <b>Delete</b>');
INSERT INTO `answers` VALUES (536, 142, 1, 'Всі перераховані відповіді вірні.');
INSERT INTO `answers` VALUES (537, 143, 0, 'SHIFT+HOME');
INSERT INTO `answers` VALUES (538, 143, 1, 'CTRL+END');
INSERT INTO `answers` VALUES (539, 143, 1, 'PAGE DOWN');
INSERT INTO `answers` VALUES (540, 143, 1, 'PAGE DN');
INSERT INTO `answers` VALUES (541, 144, 0, 'CTRL+F6');
INSERT INTO `answers` VALUES (542, 144, 1, 'SHIFT+F5');
INSERT INTO `answers` VALUES (543, 144, 1, 'SHIFT+F12');
INSERT INTO `answers` VALUES (544, 144, 1, 'CTRL+G');
INSERT INTO `answers` VALUES (545, 145, 1, 'встановити курсор миші на слові  в абзаці і тричі клацнути лівою кнопкою миші');
INSERT INTO `answers` VALUES (546, 145, 1, 'встановити курсор миші зліва від абзацу і двічі клацнути лівою кнопкою миші');
INSERT INTO `answers` VALUES (547, 145, 0, 'поставити курсор поряд з абзацом і натиснути праву кнопку миші');
INSERT INTO `answers` VALUES (548, 146, 1, 'коли на робочому полі немає виділених об’єктів');
INSERT INTO `answers` VALUES (549, 146, 1, 'якщо повний буфер обміну');
INSERT INTO `answers` VALUES (550, 146, 0, 'якщо пустий буфер обміну');
INSERT INTO `answers` VALUES (551, 147, 0, 'CTRL+F');
INSERT INTO `answers` VALUES (552, 147, 1, 'CTRL+C');
INSERT INTO `answers` VALUES (553, 147, 1, 'CTRL+INSERT');
INSERT INTO `answers` VALUES (554, 148, 0, 'для автоматичної заміни певного коду на визначену йому фразу');
INSERT INTO `answers` VALUES (555, 148, 1, 'для автоматичної заміни цифр на їх словесний еквівалент');
INSERT INTO `answers` VALUES (556, 149, 1, 'неправильно');
INSERT INTO `answers` VALUES (557, 150, 1, 'ні');
INSERT INTO `answers` VALUES (558, 150, 0, 'так');
INSERT INTO `answers` VALUES (559, 151, 0, 'вибрати номер, відмінний від першого і натиснути ТАВ, або SHIFT+TAB');
INSERT INTO `answers` VALUES (560, 151, 1, 'вибрати номер, відмінний від першого і натиснути F5, або SHIFT+F5');
INSERT INTO `answers` VALUES (561, 151, 1, 'неможливо перетворити нумерований список на багаторівневий');
INSERT INTO `answers` VALUES (562, 152, 1, 'Необхідно виділити стовпчик, в якому буде вставлено новий рядок, вибрати команду <b>Таблица|Добавить строки</b>');
INSERT INTO `answers` VALUES (563, 152, 1, 'Необхідно активізувати комірку рядка, перед яким буде вставлено новий рядок, натиснути комбінацію клавіш <b>Shif+Ins</b>');
INSERT INTO `answers` VALUES (564, 152, 0, 'Необхідно активізувати комірку рядка, перед яким буде вставлено новий рядок, вибрати команду <b>Таблица|Добавить строки</b>');
INSERT INTO `answers` VALUES (565, 152, 1, 'Жодна відповідь не вірна');
INSERT INTO `answers` VALUES (566, 152, 1, 'Всі відповіді вірні');
INSERT INTO `answers` VALUES (567, 153, 0, 'Необхідно виділити стовпчик перед яким повинен буде вставлено новий стовпчик, вибрати команду <b>Таблица|Добавить строки</b>');
INSERT INTO `answers` VALUES (568, 153, 1, 'Необхідно виділити стовпчик перед яким повинен буде вставлено новий стовпчик, натиснути комбінацію клавіш <b>Shift+Ins</b>');
INSERT INTO `answers` VALUES (569, 153, 1, 'Необхідно виділити рядок, в якому буде вставлено новий стовпчик, вибрати команду <b>Таблица|Добавить строки</b>');
INSERT INTO `answers` VALUES (570, 153, 1, 'Жодна відповідь не вірна');
INSERT INTO `answers` VALUES (571, 153, 1, 'Всі відповіді вірні');
INSERT INTO `answers` VALUES (572, 154, 1, 'Необхідно вибрати команду <b>Таблица|Объединить ячейки</b>. Виділити комірки які мають бути об''єднані в одну.');
INSERT INTO `answers` VALUES (573, 154, 1, 'Необхідно виділити комірки які мають бути об''єднані в одну. Вибрати команду <b>Правка|Объединить ячейки</b>.');
INSERT INTO `answers` VALUES (574, 154, 1, 'Необхідно вибрати команду <b>Правка|Объединить ячейки</b>.  Виділити комірки які мають бути об''єднані в одну.');
INSERT INTO `answers` VALUES (575, 155, 0, 'Зверху і знизу кожної сторінки документу.');
INSERT INTO `answers` VALUES (576, 155, 1, 'Зверху кожної сторінки документу.');
INSERT INTO `answers` VALUES (577, 155, 1, 'Знизу кожної сторінки документу.');
INSERT INTO `answers` VALUES (578, 155, 1, 'Зверху і знизу першої сторінки документу.');
INSERT INTO `answers` VALUES (579, 155, 1, 'Зверху першої сторінки документу.');
INSERT INTO `answers` VALUES (580, 156, 1, 'Для зручного створення змісту. Це дозволяє швидко переміщатись по документі, що переглядається на екрані. Наприклад, номер сторінки, загальна кількістість сторінок.');
INSERT INTO `answers` VALUES (581, 156, 1, 'Для встановлення параметрів форматуванн символу, абзацу. При чому кожен колонтитул має своє унікальне ім''я. Наприклад, номер сторінки, дата створення, загальна кількість сторінок.');
INSERT INTO `answers` VALUES (582, 156, 0, 'Колонтитули призначені для розміщення різного роду довідкової інформації, що стосується документу. Наприклад, номер сторінки, загальна кількість сторінок.');
INSERT INTO `answers` VALUES (583, 157, 0, '<b>Вид|Колонтитулы</b>');
INSERT INTO `answers` VALUES (584, 157, 1, '<b>Окно|Колонтитулы</b>');
INSERT INTO `answers` VALUES (585, 157, 1, '<b>Файл|Колонтитулы</b>');
INSERT INTO `answers` VALUES (586, 157, 1, '<b>Колонтитулы|Показать</b>');
INSERT INTO `answers` VALUES (587, 158, 0, 'Так');
INSERT INTO `answers` VALUES (588, 158, 1, 'Ні');
INSERT INTO `answers` VALUES (589, 158, 1, 'Так, якщо встановити параметр <b>Вставка номера страниц</b> в діалоговому вікні, що викликається командою <b>Сервис|Параметры</b>');
INSERT INTO `answers` VALUES (590, 159, 0, 'В діалоговому вікні, що викликається командою <b>Формат|Стиль...</b>');
INSERT INTO `answers` VALUES (591, 159, 1, 'В діалоговому вікні, що викликається командою <b>Формат|Изменить стиль...</b>');
INSERT INTO `answers` VALUES (592, 159, 1, 'В діалоговому вікні, що викликається командою <b>Сервис|Изменить стиль...</b>');
INSERT INTO `answers` VALUES (593, 160, 0, 'В діалоговому вікні, що викликається командою <b>Формат|Стиль...</b>');
INSERT INTO `answers` VALUES (594, 160, 1, 'В діалоговому вікні, що викликається командою <b>Формат|Создать стиль...</b>');
INSERT INTO `answers` VALUES (595, 160, 1, 'В діалоговому вікні, що викликається командою <b>Сервис|Создать стиль...</b>');
INSERT INTO `answers` VALUES (596, 161, 0, 'В діалоговому вікні, що викликається командою <b>Формат|Стиль...</b>');
INSERT INTO `answers` VALUES (597, 161, 1, 'В діалоговому вікні, що викликається командою <b>Формат|Копировать стиль...</b>');
INSERT INTO `answers` VALUES (598, 161, 1, 'В діалоговому вікні, що викликається командою <b>Сервис|Копировать стиль...</b>');
INSERT INTO `answers` VALUES (599, 162, 1, 'застосувати до заголовків документу, які мають бути винесені в зміст, шрифт великого розмфру (Наприклад, 16-28).');
INSERT INTO `answers` VALUES (600, 162, 1, 'застосувати до заголовків документу, які мають бути винесені в зміст, вбудовані стилі ("Обычный 1 — 9").');
INSERT INTO `answers` VALUES (601, 162, 0, 'застосувати до заголовків документу, які мають бути винесені в зміст, вбудовані стилі ("Заголовок 1 — 9").');
INSERT INTO `answers` VALUES (602, 162, 1, 'вірівняти заголовки документу, які мають бути винесені в зміст, по центру.');
INSERT INTO `answers` VALUES (603, 162, 1, 'Всі відповіді вірні.');
INSERT INTO `answers` VALUES (604, 163, 0, 'неохідно помістити курсор в будь-яке місце змісту, який необхідно поновити. Натиснути клавішу "F9".');
INSERT INTO `answers` VALUES (605, 163, 1, 'неохідно помістити курсор в будь-яке місце заголовку документа, який включений у зміст. Натиснути клавішу "F9".');
INSERT INTO `answers` VALUES (606, 163, 1, 'неохідно виділити весь текст, крім змісту. Натиснути клавішу "F9".');
INSERT INTO `answers` VALUES (607, 130, 1, 'Всі перераховані відповіді.');
INSERT INTO `answers` VALUES (608, 131, 1, '15');
INSERT INTO `answers` VALUES (609, 164, 0, 'Всі відповіді вірні');
INSERT INTO `answers` VALUES (610, 164, 1, 'Вибрати в меню Вид команду Панели инструментов і зі списку вибрати панель "Таблицы и границы"');
INSERT INTO `answers` VALUES (611, 164, 1, 'З контексного меню в області рядка меню чи панелей інструментів вибрати зі списку "Таблицы и ганицы"');
INSERT INTO `answers` VALUES (612, 164, 1, 'Натиснути кнопку "Таблицы и границы" на панелі інструментів Стандартная');
INSERT INTO `answers` VALUES (613, 165, 0, 'Так');
INSERT INTO `answers` VALUES (614, 165, 1, 'Ні');
INSERT INTO `answers` VALUES (615, 166, 1, 'Так, вибравши в меню Таблица команду Удалить ячейки');
INSERT INTO `answers` VALUES (616, 166, 1, 'Ні, в MS Word це неможливо');
INSERT INTO `answers` VALUES (617, 166, 0, 'Так, за допомогою елемента "Ластик" на панелі інструментів "Таблицы и границы"');
INSERT INTO `answers` VALUES (618, 167, 0, 'Tab');
INSERT INTO `answers` VALUES (619, 167, 1, 'Insert');
INSERT INTO `answers` VALUES (620, 167, 1, 'Enter');
INSERT INTO `answers` VALUES (621, 167, 1, 'Shift');
INSERT INTO `answers` VALUES (622, 167, 1, 'Будь-яка з перерахованих');
INSERT INTO `answers` VALUES (623, 168, 0, 'так');
INSERT INTO `answers` VALUES (624, 168, 1, 'так, при у мові, що текст розділений знаками табуляції');
INSERT INTO `answers` VALUES (625, 168, 1, 'так, при у мові, що текст розділений знаками кінця абзацу');
INSERT INTO `answers` VALUES (626, 168, 1, 'ні');
INSERT INTO `answers` VALUES (627, 168, 1, 'ні, можна тільки таблицю перетворити в текст');
INSERT INTO `answers` VALUES (628, 169, 0, 'Зробити її активною і вибрати команду <b>Таблица | Удалить...</b>');
INSERT INTO `answers` VALUES (629, 169, 1, 'Виділити її і натиснути клавішу Delete');
INSERT INTO `answers` VALUES (630, 169, 1, 'Виділити її і натиснути комбінацію клавіш Ctrl+Delete');
INSERT INTO `answers` VALUES (631, 169, 1, 'Зробити її активною і вибрати команду <b>Правдка | Вырезать...</b>');
INSERT INTO `answers` VALUES (632, 53, 1, 'Alt+Home');
INSERT INTO `answers` VALUES (633, 170, 0, '- деяка інформація організована у вигляді рядків та стовпців');
INSERT INTO `answers` VALUES (634, 170, 1, '- деяка інформація організована тільки за допомогою табличного процесора');
INSERT INTO `answers` VALUES (635, 170, 1, '- деяка інформація розділена горизонтальними та вертикальними лініями.');
INSERT INTO `answers` VALUES (636, 171, 0, '<b>Таблицы и границы</b>');
INSERT INTO `answers` VALUES (637, 171, 1, '<b>Границы и заливка</b>');
INSERT INTO `answers` VALUES (638, 171, 1, '<b>Форматирование</b>');
INSERT INTO `answers` VALUES (639, 171, 1, '<b>Форматирование таблиц</b>');
INSERT INTO `answers` VALUES (640, 171, 1, '<b>Рисование</b>');
INSERT INTO `answers` VALUES (641, 172, 0, '3 стовпцями');
INSERT INTO `answers` VALUES (642, 172, 1, '2 стовпцями');
INSERT INTO `answers` VALUES (643, 172, 1, '4 стовпцями');
INSERT INTO `answers` VALUES (644, 172, 1, '1 стовпцем');
INSERT INTO `answers` VALUES (645, 172, 1, 'довільною кількістю');
INSERT INTO `answers` VALUES (646, 173, 0, '<b>Формат объекта</b>');
INSERT INTO `answers` VALUES (647, 173, 1, '<b>Форматирование</b>');
INSERT INTO `answers` VALUES (648, 173, 1, '<b>Настройка изображения</b>');
INSERT INTO `answers` VALUES (649, 173, 1, '<b>Рисование</b>');
INSERT INTO `answers` VALUES (650, 173, 1, 'Такого вікна не існує. Настроювання здійснюється тільки за допомогою панелей інструментів');
INSERT INTO `answers` VALUES (651, 174, 0, 'сукупність пікселів (точок різних кольорів)');
INSERT INTO `answers` VALUES (652, 174, 1, 'сукупність елементарних геометричних фігур (лінія, коло, дуга, прямокутник)');
INSERT INTO `answers` VALUES (653, 174, 1, 'сукупність пікселів та елементарних геометричних фігур');
INSERT INTO `answers` VALUES (654, 175, 0, 'сукупністю елементарних геометричних фігур (лінія, коло, дуга, прямокутник)');
INSERT INTO `answers` VALUES (655, 175, 1, 'сукупність пікселів (точок різних кольорів)');
INSERT INTO `answers` VALUES (656, 175, 1, 'сукупність пікселів та елементарних геометричних фігур');
INSERT INTO `answers` VALUES (657, 176, 0, 'об''єднання виділених графічних об''єктів в єдине ціле');
INSERT INTO `answers` VALUES (658, 176, 1, 'об''єднання виділених текстових блоків в єдине ціле');
INSERT INTO `answers` VALUES (659, 176, 1, 'оптимального встановлення видимих розмірів групи об''єктів');
INSERT INTO `answers` VALUES (660, 176, 1, 'розташування графічних об''єктів, що розташовані на різних графічних шарах, на один шар');
INSERT INTO `answers` VALUES (661, 177, 0, 'розбиває групу об''єднаних графічних об''єктів на окремі елементи');
INSERT INTO `answers` VALUES (662, 177, 1, 'розбиває групу об''єднаних текстових блоків на окремі');
INSERT INTO `answers` VALUES (663, 177, 1, 'оптимального встановлення видимих розмірів групи об''єктів');
INSERT INTO `answers` VALUES (664, 177, 1, 'розташування графічних об''єктів, що розташовані на одному графічному шарі, на різні шари');
INSERT INTO `answers` VALUES (665, 178, 0, 'Так, якщо в контестному меню цього об''єкту вибрати команду <b>Добавить текст</b>');
INSERT INTO `answers` VALUES (666, 178, 1, 'Так, якщо перед тим двічі клацнути мишкою по об''єкту');
INSERT INTO `answers` VALUES (667, 178, 1, 'Ні, для цього потрібно використовувати команду  <b>Надпись</b> панелі інструментів <b>Рисование</b>');
INSERT INTO `answers` VALUES (668, 178, 1, 'Ні, оскільки текст може бути введений тільки як графічний шар.');
INSERT INTO `answers` VALUES (669, 179, 0, 'стандартної комбінації клавіш не існує, хоча її можна задати самостійно.');
INSERT INTO `answers` VALUES (670, 179, 1, 'Ctrl+Shift+E');
INSERT INTO `answers` VALUES (671, 179, 1, 'Ctrl+E');
INSERT INTO `answers` VALUES (672, 179, 1, 'Оскільки редактор формул являється надбудовую, то запустити його за допомогою комбінації клавіш неможливо.');
INSERT INTO `answers` VALUES (673, 179, 1, 'Shift+E');
INSERT INTO `answers` VALUES (674, 180, 0, '... для виділення декількох об''єктів одночасно');
INSERT INTO `answers` VALUES (675, 180, 1, '... для вибору одного об''єкту');
INSERT INTO `answers` VALUES (676, 180, 1, '... для зміни вигляду стрілки');
INSERT INTO `answers` VALUES (677, 180, 1, '... для вибору типу лінії');
INSERT INTO `answers` VALUES (678, 181, 0, 'Так');
INSERT INTO `answers` VALUES (679, 181, 1, 'Ні');
INSERT INTO `answers` VALUES (680, 182, 0, '...з меню Вставка вибрати пункт Рисунок - Из файла');
INSERT INTO `answers` VALUES (681, 182, 1, '...з меню Вставка вибрати пункт Об''єкт');
INSERT INTO `answers` VALUES (682, 182, 1, '......з меню Вставка вибрати пункт Рисунок - Картинки');
INSERT INTO `answers` VALUES (683, 183, 0, 'Так');
INSERT INTO `answers` VALUES (684, 183, 1, 'Ні');
INSERT INTO `answers` VALUES (685, 184, 0, 'Так');
INSERT INTO `answers` VALUES (686, 184, 1, 'Ні');
INSERT INTO `answers` VALUES (687, 185, 1, 'Натиснути клавішу Esc на клавіатурі');
INSERT INTO `answers` VALUES (688, 185, 0, 'Натиснути кнопку "Закрыть" на панелі інструментів "Колонтитулы"');
INSERT INTO `answers` VALUES (689, 185, 1, 'Клацнути мишею поза полем колонтитула');
INSERT INTO `answers` VALUES (690, 186, 0, 'Так');
INSERT INTO `answers` VALUES (691, 186, 1, 'Ні');
INSERT INTO `answers` VALUES (692, 187, 0, 'Так');
INSERT INTO `answers` VALUES (693, 187, 1, 'Ні');
INSERT INTO `answers` VALUES (694, 148, 1, 'для виправлення помилок, що найчастіше зустрічаються');
INSERT INTO `answers` VALUES (695, 189, 0, 'таблиці');
INSERT INTO `answers` VALUES (696, 189, 1, 'нумерованих стовпчиків');
INSERT INTO `answers` VALUES (697, 189, 1, 'нумерованих рядків');
INSERT INTO `answers` VALUES (698, 189, 1, 'форматованого тексту');
INSERT INTO `answers` VALUES (699, 190, 0, 'комірка');
INSERT INTO `answers` VALUES (700, 190, 1, 'стовпчик');
INSERT INTO `answers` VALUES (701, 190, 1, 'робочий лист');
INSERT INTO `answers` VALUES (702, 190, 1, 'книга Excel');
INSERT INTO `answers` VALUES (703, 190, 1, 'рядок');
INSERT INTO `answers` VALUES (704, 191, 1, 'Таблиця');
INSERT INTO `answers` VALUES (705, 191, 1, 'База Даних');
INSERT INTO `answers` VALUES (706, 191, 0, 'Книга');
INSERT INTO `answers` VALUES (707, 192, 0, 'Стовпців - 256, рядків – 65536.');
INSERT INTO `answers` VALUES (708, 192, 1, 'Стовпців - 128, рядків – 32768.');
INSERT INTO `answers` VALUES (709, 192, 1, 'Стовпців - 64, рядків – 16384.');
INSERT INTO `answers` VALUES (710, 193, 0, 'Ctrl+F6');
INSERT INTO `answers` VALUES (711, 193, 1, 'Alt+F4');
INSERT INTO `answers` VALUES (712, 193, 1, 'Alt+F3');
INSERT INTO `answers` VALUES (713, 193, 1, 'Shif+F1');
INSERT INTO `answers` VALUES (714, 194, 0, 'Ctrl+Shif+F6');
INSERT INTO `answers` VALUES (715, 194, 1, 'Ctrl+Alt+Del');
INSERT INTO `answers` VALUES (716, 194, 1, 'Ctrl+Alt+Esc');
INSERT INTO `answers` VALUES (717, 194, 1, 'Ctrl+Shift+F1');
INSERT INTO `answers` VALUES (718, 195, 0, 'переходу на наступний лист книги');
INSERT INTO `answers` VALUES (719, 195, 1, 'переходу до наступного Excel');
INSERT INTO `answers` VALUES (720, 195, 1, 'переходу до наступної книги');
INSERT INTO `answers` VALUES (721, 195, 1, 'переходу в кінець робочого листа книги');
INSERT INTO `answers` VALUES (722, 196, 0, 'переходу на попередній лист книги');
INSERT INTO `answers` VALUES (723, 196, 1, 'переходу до попереднього Excel');
INSERT INTO `answers` VALUES (724, 196, 1, 'переходу до попередньої книги');
INSERT INTO `answers` VALUES (725, 196, 1, 'переходу на початок робочого листа книги');
INSERT INTO `answers` VALUES (726, 197, 1, 'використати команду Выделить лист меню Правка');
INSERT INTO `answers` VALUES (727, 197, 1, 'навести курсор на ярлик листа');
INSERT INTO `answers` VALUES (728, 197, 0, 'клацнути по ярлику листа');
INSERT INTO `answers` VALUES (729, 198, 0, 'клацнути по ярлику першого листа, далі, утримуючи клавішу SHIFT, клацнути по ярлику останнього листа');
INSERT INTO `answers` VALUES (730, 198, 1, 'клацнути по черзі на ярликах листів які необхідно виділити');
INSERT INTO `answers` VALUES (731, 198, 1, 'використати команду <b>Выделить</b> меню <b>Правка</b>');
INSERT INTO `answers` VALUES (732, 198, 1, 'утримуючи натисненою ліву кнопку миші протягнути по ярличках листів які необхідно виділити.');
INSERT INTO `answers` VALUES (733, 198, 1, 'Всі варіанти вірні');
INSERT INTO `answers` VALUES (734, 199, 0, 'необхідно клацнути по ярлику першого листа, далі, утримуючи клавішу CTRL, клацнути по ярликах всіх інших листів');
INSERT INTO `answers` VALUES (735, 199, 1, 'клацнути по черзі на ярликах листів які необхідно виділити');
INSERT INTO `answers` VALUES (736, 199, 1, 'використати команду Выделить листы меню Правка');
INSERT INTO `answers` VALUES (737, 199, 1, 'утримуючи натисненою ліву кнопку миші протягнути по ярличках листів які необхідно виділити');
INSERT INTO `answers` VALUES (738, 199, 1, 'Всі варіанти вірні');
INSERT INTO `answers` VALUES (739, 200, 0, 'встановити курсор на ярлик довільного листа і викликати контекстне меню, в якому вибрати команду “Выделить все листы”');
INSERT INTO `answers` VALUES (740, 200, 1, 'використати команду Выделить все листы меню Правка');
INSERT INTO `answers` VALUES (741, 200, 1, 'використати команду Выделить все меню Правка');
INSERT INTO `answers` VALUES (742, 200, 1, 'клацнути по черзі на ярликах листів які необхідно виділити');
INSERT INTO `answers` VALUES (743, 200, 1, 'Всі варіанти вірні');
INSERT INTO `answers` VALUES (744, 201, 0, 'Так');
INSERT INTO `answers` VALUES (745, 201, 1, 'Ні');
INSERT INTO `answers` VALUES (746, 201, 1, 'Так, якщо встановити параметр <b>Переименовать листы</b>, вкладки <b>Правка</b>, команди <b>Параметры</b>, меню <b>Сервис</b>');
INSERT INTO `answers` VALUES (747, 201, 1, 'Всі варіанти вірні');
INSERT INTO `answers` VALUES (748, 202, 0, 'вибрати команду “Лист” в меню “Вставка”.');
INSERT INTO `answers` VALUES (749, 202, 1, 'вибрати команду “Лист” в меню “Сервис”.');
INSERT INTO `answers` VALUES (750, 202, 1, 'вибрати команду “Лист” в меню “Файл”.');
INSERT INTO `answers` VALUES (751, 202, 1, 'вибрати команду “Лист” в меню “Правка”.');
INSERT INTO `answers` VALUES (752, 202, 1, 'Всі варіанти вірні.');
INSERT INTO `answers` VALUES (753, 203, 1, 'утримуючи натиснутою клавішу ALT, виділити потрібну кількість листів, далі виконати команду “Лист” з меню “Вставка”.');
INSERT INTO `answers` VALUES (754, 203, 1, 'утримуючи натиснутою клавішу CTRL, виділити потрібну кількість листів, далі виконати команду “Лист” з меню “Вставка”.');
INSERT INTO `answers` VALUES (755, 203, 0, 'утримуючи натиснутою клавішу SHIFT, виділити потрібну кількість листів, далі виконати команду “Лист” з меню “Вставка”.');
INSERT INTO `answers` VALUES (756, 204, 1, 'Параметр <b>Листов в новой книге</b>, вкладки <b>Редактировать</b>, команди <b>Настройка</b>, меню <b>Сервис</b>.');
INSERT INTO `answers` VALUES (757, 204, 1, 'Параметр <b>Листов в новой книге</b>, вкладки <b>Редактировать</b>, команди <b>Параметры</b>, меню <b>Сервис</b>.');
INSERT INTO `answers` VALUES (758, 205, 0, 'Всі варіанти вірні.');
INSERT INTO `answers` VALUES (759, 205, 1, 'Так, потрібно виділити листи, потім за допомогою миші перемістити уздовж ряду ярликів листів в потрібну позицію.');
INSERT INTO `answers` VALUES (760, 205, 1, 'Так, за допомогою команди Переместить/скопировать лист… меню Правка.');
INSERT INTO `answers` VALUES (761, 206, 0, 'По-перше, виділити листи, які мають бути видалені. По-друге, вибрати команду “Удалить лист” в меню “Правка”.');
INSERT INTO `answers` VALUES (762, 206, 1, 'По-перше, виділити листи, які мають бути видалені. По-друге, натиснути клавішу Delete.');
INSERT INTO `answers` VALUES (763, 206, 1, 'Всі варіанти вірні.');
INSERT INTO `answers` VALUES (764, 207, 0, 'Ні, це неможливо.');
INSERT INTO `answers` VALUES (765, 207, 1, 'Так, якщо встановити параметр <b>Отменять действия над листами</b>, вкладки <b>Правка</b>, команди <b>Параметры</b>, меню <b>Сервис</b>.');
INSERT INTO `answers` VALUES (766, 207, 1, 'Так, це в більшій мірі залежить від кількості даних на робочому листі.');
INSERT INTO `answers` VALUES (767, 208, 0, 'Всі варіанти вірні.');
INSERT INTO `answers` VALUES (768, 208, 1, 'По-перше, необхідно активізувати лист, який має бути перейменований. По-друге, подвійним кліком клацнути на ярлику. По-третє, ввести нове ім''я поверх старого.');
INSERT INTO `answers` VALUES (769, 208, 1, 'По-перше, необхідно активізувати лист, який має бути перейменований. По-друге, в контекстному меню ярлика вибрати команду "Переименовать". По-третє, ввести нове ім''я поверх старого.');
INSERT INTO `answers` VALUES (770, 209, 1, 'виділити листи (лист), натиснути і утримувати клавішу SHIFT, перемістити листи (лист) в потрібне положення, відпустити клавішу SHIFT і тільки після цього кнопку миші.');
INSERT INTO `answers` VALUES (771, 209, 1, 'виділити листи (лист), натиснути і утримувати клавішу SHIFT, перемістити листи (лист) в потрібне положення, відпустити кнопку миші і тільки після цього клавішу SHIFT.');
INSERT INTO `answers` VALUES (772, 209, 1, 'виділити листи (лист), натиснути і утримувати клавішу CTRL, перемістити листи (лист) в потрібне положення, відпустити клавішу CTRL і тільки після цього кнопку миші.');
INSERT INTO `answers` VALUES (773, 209, 0, 'виділити листи (лист), натиснути і утримувати клавішу CTRL, перемістити листи (лист) в потрібне положення, відпустити кнопку миші і тільки після цього клавішу CTRL.');
INSERT INTO `answers` VALUES (774, 210, 1, 'зі знаку -');
INSERT INTO `answers` VALUES (775, 210, 1, 'зі знаку +');
INSERT INTO `answers` VALUES (776, 210, 1, 'зі знаку "');
INSERT INTO `answers` VALUES (777, 210, 0, 'зі знаку =');
INSERT INTO `answers` VALUES (778, 211, 0, 'Вставка /Функція');
INSERT INTO `answers` VALUES (779, 211, 1, 'Вставка/Формула');
INSERT INTO `answers` VALUES (780, 211, 1, 'Правка/Функция');
INSERT INTO `answers` VALUES (781, 211, 1, 'Сервис/Функция');
INSERT INTO `answers` VALUES (782, 211, 1, 'Данные/Функция');
INSERT INTO `answers` VALUES (783, 212, 0, 'сім');
INSERT INTO `answers` VALUES (784, 212, 1, 'дев''ять');
INSERT INTO `answers` VALUES (785, 212, 1, 'десять');
INSERT INTO `answers` VALUES (786, 212, 1, 'п''ятнадцять');
INSERT INTO `answers` VALUES (787, 212, 1, 'три');
INSERT INTO `answers` VALUES (788, 213, 1, 'Такої комірки немає.');
INSERT INTO `answers` VALUES (789, 213, 1, 'Комірка, над якою безпосередньо розташований курсор миші і доступна для виканання над нею дій. \r\n');
INSERT INTO `answers` VALUES (790, 213, 1, 'Будь-яка комірка робочого листа.');
INSERT INTO `answers` VALUES (791, 213, 1, 'Будь-який ярлик листів робочої книги.');
INSERT INTO `answers` VALUES (792, 213, 0, 'Комірка, яка безпосередньо доступна для зміни її вмісту. \r\n');
INSERT INTO `answers` VALUES (793, 214, 1, 'Активізувати необхідну комірку і в рядку формул змінити її вміст.');
INSERT INTO `answers` VALUES (794, 214, 1, 'Активізувати необхідну комірку, подвійним натисненням лівої кнопки миші перейти в режим редагування і ввести нове значення.');
INSERT INTO `answers` VALUES (795, 214, 0, 'Усі відповідні правильні.');
INSERT INTO `answers` VALUES (796, 215, 1, 'Для відображення та редагування лише формули активної комірки.');
INSERT INTO `answers` VALUES (797, 215, 0, 'Для відображення та редагування вмісту активної комірки.');
INSERT INTO `answers` VALUES (798, 216, 1, 'Команда <b>Формат...</b> меню <b>Ячейки</b>');
INSERT INTO `answers` VALUES (799, 216, 1, 'Команда <b>Автоформат...</b> меню <b>Формат</b>');
INSERT INTO `answers` VALUES (800, 217, 1, 'Ні');
INSERT INTO `answers` VALUES (801, 218, 1, 'Ні');
INSERT INTO `answers` VALUES (802, 219, 0, 'Всі відповіді вірні');
INSERT INTO `answers` VALUES (803, 219, 1, 'Активізувати комірку та натиснути клавішу <b>Delete</b>');
INSERT INTO `answers` VALUES (804, 219, 1, 'Активізувати комірку, натисути клавішу <b>F2</b> та видалити вміст.');
INSERT INTO `answers` VALUES (805, 220, 0, 'Автоматизація табличних обчислень, представлення даних у графічному вигляді, статистична обробка і аналіз даних, оптимізаціині та імітаційні розрахунки.');
INSERT INTO `answers` VALUES (806, 220, 1, 'Створення і редагування текстових документів.');
INSERT INTO `answers` VALUES (807, 220, 1, 'Створення і редагування баз даних');
INSERT INTO `answers` VALUES (808, 220, 1, 'Створення презентацій');
INSERT INTO `answers` VALUES (809, 277, 1, 'Формула містить помилку');
INSERT INTO `answers` VALUES (810, 277, 1, 'А1 больше A2');
INSERT INTO `answers` VALUES (811, 277, 1, '10');
INSERT INTO `answers` VALUES (812, 277, 0, 'ИСТИНА');
INSERT INTO `answers` VALUES (813, 222, 1, 'Ні');
INSERT INTO `answers` VALUES (814, 222, 0, 'Так');
INSERT INTO `answers` VALUES (815, 223, 1, 'натиснути Alt+Shift+Enter');
INSERT INTO `answers` VALUES (816, 223, 1, 'натиснути Ctrl+Enter');
INSERT INTO `answers` VALUES (817, 223, 0, 'натиснути Alt+Enter');
INSERT INTO `answers` VALUES (818, 217, 1, 'Так, якщо текст розміщений небільше ніж в один рядок');
INSERT INTO `answers` VALUES (819, 224, 1, 'Shift+Enter');
INSERT INTO `answers` VALUES (820, 224, 1, 'Ctrl+Enter');
INSERT INTO `answers` VALUES (821, 224, 1, 'Ctrl+2');
INSERT INTO `answers` VALUES (822, 225, 1, 'для побудови діаграм');
INSERT INTO `answers` VALUES (823, 225, 1, 'всі відповіді вірні');
INSERT INTO `answers` VALUES (824, 225, 0, 'для побудови послідовностей');
INSERT INTO `answers` VALUES (825, 226, 0, 'перших дві комірки');
INSERT INTO `answers` VALUES (826, 226, 1, 'перша комірка');
INSERT INTO `answers` VALUES (827, 226, 1, 'перша та третя комірки');
INSERT INTO `answers` VALUES (828, 226, 1, 'немає правильної відповіді');
INSERT INTO `answers` VALUES (829, 227, 1, 'Ні');
INSERT INTO `answers` VALUES (830, 227, 0, 'Так');
INSERT INTO `answers` VALUES (831, 228, 1, 'Ні');
INSERT INTO `answers` VALUES (832, 228, 0, 'Так');
INSERT INTO `answers` VALUES (833, 219, 1, 'Активізувати комірку та у рядку формул витерти вміст.');
INSERT INTO `answers` VALUES (834, 229, 1, 'з низу від активної комірки');
INSERT INTO `answers` VALUES (835, 229, 0, 'з верху від активної комірки');
INSERT INTO `answers` VALUES (836, 230, 0, 'ліворуч від активної комірки');
INSERT INTO `answers` VALUES (837, 231, 0, 'праворуч або вниз');
INSERT INTO `answers` VALUES (838, 231, 1, 'ліворуч або вниз');
INSERT INTO `answers` VALUES (839, 231, 1, 'ливоруч або праворуч');
INSERT INTO `answers` VALUES (840, 231, 1, 'немає правельної відповіді');
INSERT INTO `answers` VALUES (841, 232, 1, 'Так, при умові якщо текст містить не меньше 10 символів');
INSERT INTO `answers` VALUES (842, 233, 0, 'Так');
INSERT INTO `answers` VALUES (843, 233, 1, 'Ні');
INSERT INTO `answers` VALUES (844, 234, 0, 'Так');
INSERT INTO `answers` VALUES (845, 234, 1, 'Ні');
INSERT INTO `answers` VALUES (846, 230, 1, 'праворуч від активної комірки');
INSERT INTO `answers` VALUES (847, 217, 0, 'Так.');
INSERT INTO `answers` VALUES (848, 218, 0, 'Так');
INSERT INTO `answers` VALUES (849, 241, 1, 'Excel не дасть ввести данні');
INSERT INTO `answers` VALUES (850, 237, 0, 'до семи');
INSERT INTO `answers` VALUES (851, 237, 1, 'до п''яти');
INSERT INTO `answers` VALUES (852, 237, 1, 'до десяти');
INSERT INTO `answers` VALUES (853, 237, 1, 'не допускає взагалі');
INSERT INTO `answers` VALUES (854, 237, 1, 'безмежна кількість');
INSERT INTO `answers` VALUES (855, 238, 0, 'Так');
INSERT INTO `answers` VALUES (856, 238, 1, 'Ні');
INSERT INTO `answers` VALUES (857, 239, 0, 'від 1 до 30');
INSERT INTO `answers` VALUES (858, 239, 1, 'від 1 до 10');
INSERT INTO `answers` VALUES (859, 239, 1, 'від 2 до 30');
INSERT INTO `answers` VALUES (860, 239, 1, 'від 1 до 20');
INSERT INTO `answers` VALUES (861, 239, 1, 'від 1 до 15');
INSERT INTO `answers` VALUES (862, 240, 0, 'тільки числа враховуються в масиві чи посиланні. Пусті комірки, логічні значення, тексти і значення помилок в масиві чи посиланні ігноруються');
INSERT INTO `answers` VALUES (863, 240, 1, 'враховуються тільки текстові та логічні значення');
INSERT INTO `answers` VALUES (864, 240, 1, 'враховуються тількі числові значення');
INSERT INTO `answers` VALUES (865, 241, 1, 'формула не буде виконуватися');
INSERT INTO `answers` VALUES (866, 241, 0, 'формула буде сприйматися як текстові данні');
INSERT INTO `answers` VALUES (867, 242, 0, 'Логічних функції');
INSERT INTO `answers` VALUES (868, 242, 1, 'Математичних функцій');
INSERT INTO `answers` VALUES (869, 242, 1, 'Статистичних функцій\r\n');
INSERT INTO `answers` VALUES (870, 242, 1, 'не належить ні до одної з категорій');
INSERT INTO `answers` VALUES (871, 243, 0, 'Статистичні функції');
INSERT INTO `answers` VALUES (872, 243, 1, 'Математичні функції');
INSERT INTO `answers` VALUES (873, 243, 1, 'Логічні функції');
INSERT INTO `answers` VALUES (874, 243, 1, 'Фінансові функції');
INSERT INTO `answers` VALUES (875, 243, 1, 'Текстові функції');
INSERT INTO `answers` VALUES (876, 244, 0, 'аргументами');
INSERT INTO `answers` VALUES (877, 244, 1, 'константами');
INSERT INTO `answers` VALUES (878, 244, 1, 'формулами');
INSERT INTO `answers` VALUES (879, 244, 1, 'даними');
INSERT INTO `answers` VALUES (880, 245, 0, 'Так');
INSERT INTO `answers` VALUES (881, 245, 1, 'Ні');
INSERT INTO `answers` VALUES (882, 246, 0, 'в круглих дужках за назвою функції і відокремлюються один від одного крапкою з комою');
INSERT INTO `answers` VALUES (883, 246, 1, 'в квадратних дужках і відокремлюються один від одного комою');
INSERT INTO `answers` VALUES (884, 246, 1, 'в круглих дужках за назвою функції і відокремлюються один від одного комою');
INSERT INTO `answers` VALUES (885, 246, 1, 'в круглих дужках перед назвою функції');
INSERT INTO `answers` VALUES (886, 247, 0, 'Так');
INSERT INTO `answers` VALUES (887, 247, 1, 'Ні');
INSERT INTO `answers` VALUES (888, 248, 0, 'Функції які є аргументом іншої функції');
INSERT INTO `answers` VALUES (889, 248, 1, 'Функції, які сумують інші функції');
INSERT INTO `answers` VALUES (890, 248, 1, 'Функції, які посилаються на формули');
INSERT INTO `answers` VALUES (891, 248, 1, 'Функції, які складаються з двох функцій');
INSERT INTO `answers` VALUES (892, 249, 0, 'зберігає ті функції, які використовувалися останніми');
INSERT INTO `answers` VALUES (893, 249, 1, 'зберігає ті функції, які часто використовуються');
INSERT INTO `answers` VALUES (894, 249, 1, 'зберігає найголовніщі функції зі всіх категорій');
INSERT INTO `answers` VALUES (895, 250, 0, 'СУММ');
INSERT INTO `answers` VALUES (896, 250, 1, 'СУММЕСЛИ');
INSERT INTO `answers` VALUES (897, 250, 1, 'СЧЁТЕСЛИ');
INSERT INTO `answers` VALUES (898, 250, 1, 'КОРЕНЬ');
INSERT INTO `answers` VALUES (899, 251, 0, 'логічний вираз повинен мати хоча б один оператор порівняння');
INSERT INTO `answers` VALUES (900, 251, 1, 'логічний вираз повинен мати хоча б один оператор додавання');
INSERT INTO `answers` VALUES (901, 251, 1, 'логічний вираз повинен мати хоча б один оператор" >"');
INSERT INTO `answers` VALUES (902, 251, 1, 'логічний вираз повинен мати хоча б один оператор "<"');
INSERT INTO `answers` VALUES (903, 251, 1, 'логічний вираз повинен мати хоча б один оператор ">="');
INSERT INTO `answers` VALUES (904, 252, 0, 'Так');
INSERT INTO `answers` VALUES (905, 252, 1, 'Ні');
INSERT INTO `answers` VALUES (906, 253, 0, 'ігнорує пусті, текстові та логічні комірки');
INSERT INTO `answers` VALUES (907, 253, 1, 'ігнорує тільки пусті комірки');
INSERT INTO `answers` VALUES (908, 253, 1, 'ігнорує лише текстові та логічні комірки');
INSERT INTO `answers` VALUES (909, 253, 1, 'враховує любі значення в комірках');
INSERT INTO `answers` VALUES (910, 254, 0, 'Так');
INSERT INTO `answers` VALUES (911, 254, 1, 'Ні');
INSERT INTO `answers` VALUES (912, 254, 1, 'Так, якщо всі інші аргументи теж імена комірок');
INSERT INTO `answers` VALUES (913, 254, 1, 'Так, якщо використовується тільки математичні функції');
INSERT INTO `answers` VALUES (914, 241, 1, 'буде виведено повідомлення про помилку');
INSERT INTO `answers` VALUES (915, 255, 0, '...однозначно визначає комірку або діапазон комірок робочого листа.');
INSERT INTO `answers` VALUES (916, 255, 1, '...вказує на комірку, що містить формулу.');
INSERT INTO `answers` VALUES (917, 255, 1, '...вказує для табличного процесора залежність комірки від інших.');
INSERT INTO `answers` VALUES (918, 256, 0, '=СУММ(Лист1!A1:Лист3!A1)');
INSERT INTO `answers` VALUES (919, 256, 1, '=СУММ(Лист1:Лист3!A1)');
INSERT INTO `answers` VALUES (920, 256, 1, '=СУММ(Лист1!A1; Лист2!A1;Лист3!A1)');
INSERT INTO `answers` VALUES (921, 256, 1, 'у даному переліку немає жодного вірного посилання');
INSERT INTO `answers` VALUES (922, 257, 1, '#ССЫЛКА!');
INSERT INTO `answers` VALUES (923, 257, 1, 'сума діапазонів комірок B3:M3 i В2:В8');
INSERT INTO `answers` VALUES (924, 257, 0, 'значення комірки В3');
INSERT INTO `answers` VALUES (925, 258, 1, '=23+(18-16)***3+4*6');
INSERT INTO `answers` VALUES (926, 322, 1, 'Дана формула являється вірною і результатом повинен бути масив 3;3:3;3');
INSERT INTO `answers` VALUES (927, 260, 0, '=Лист1!A3');
INSERT INTO `answers` VALUES (928, 260, 1, '=Лист1$A3');
INSERT INTO `answers` VALUES (929, 260, 1, '=Лист1#A3');
INSERT INTO `answers` VALUES (930, 260, 1, '=Лист1|A3');
INSERT INTO `answers` VALUES (931, 260, 1, '=Лист1А3');
INSERT INTO `answers` VALUES (932, 261, 0, 'на комірки А1 робочих листів Лист1, Лист2 та Лист3');
INSERT INTO `answers` VALUES (933, 261, 1, 'дане посилання є помилковим');
INSERT INTO `answers` VALUES (934, 261, 1, 'на комірки А1 робочих листів Лист1 та Лист3');
INSERT INTO `answers` VALUES (935, 262, 1, 'дана формула являється помилковою, оскільки вираз <b>А1>А2</b> може бути використаний тільки як аргумент логічних функцій');
INSERT INTO `answers` VALUES (936, 262, 0, 'ЛОЖЬ');
INSERT INTO `answers` VALUES (937, 262, 1, '1');
INSERT INTO `answers` VALUES (938, 262, 1, '2');
INSERT INTO `answers` VALUES (939, 262, 1, '#ЗНАЧ!');
INSERT INTO `answers` VALUES (940, 258, 1, '=23+18-16^3+4*6');
INSERT INTO `answers` VALUES (941, 258, 0, '=23+(18-16)^3+4*6');
INSERT INTO `answers` VALUES (942, 263, 0, '...для виконання будь-яких дій і обчислень');
INSERT INTO `answers` VALUES (943, 263, 1, '...для написання макросів');
INSERT INTO `answers` VALUES (944, 263, 1, '...для підтримки сумісності з старими версіями MS Excel');
INSERT INTO `answers` VALUES (945, 263, 1, '...тільки для виконання обчислень в Lotus 1-2-3');
INSERT INTO `answers` VALUES (946, 264, 0, '...визначають положення комірки щодо положення комірки формули.');
INSERT INTO `answers` VALUES (947, 264, 1, '...визначають положення комірки відносно активного робочого листа.');
INSERT INTO `answers` VALUES (948, 264, 1, '...визначають положення комірки відносно залежної комірки.');
INSERT INTO `answers` VALUES (949, 210, 1, 'з символу ''');
INSERT INTO `answers` VALUES (950, 265, 0, '$A$1');
INSERT INTO `answers` VALUES (951, 265, 1, 'A$1');
INSERT INTO `answers` VALUES (952, 265, 1, '$A1');
INSERT INTO `answers` VALUES (953, 265, 1, 'A1');
INSERT INTO `answers` VALUES (954, 265, 1, 'Лист1!А1');
INSERT INTO `answers` VALUES (955, 266, 1, 'дана формула являється хибною');
INSERT INTO `answers` VALUES (956, 266, 1, '<b>=E3-F4</b>');
INSERT INTO `answers` VALUES (957, 266, 1, '<b>=C6-D5</b>');
INSERT INTO `answers` VALUES (958, 266, 0, '<b>=C5-D6</b>');
INSERT INTO `answers` VALUES (959, 267, 0, 'підносить значення комірки А4 до степеня значення комірки А3; отриманий результат множить на різницю значень комірок В3 та В4; до отриманого результату додає значення комірки А2');
INSERT INTO `answers` VALUES (960, 267, 1, 'знаходить різницю значень комірок В3 та В4; результат додає до значення комірки А2; множить результат на на значенння комірки А4 в степені значення А3');
INSERT INTO `answers` VALUES (961, 267, 1, 'до значення комірки А2 додає різницю значень комірок В3 та В4 і множить результат на на значенння комірки А4 в степені значення А3');
INSERT INTO `answers` VALUES (962, 268, 1, 'знаходить корінь кубічний значення комірки А3');
INSERT INTO `answers` VALUES (963, 268, 0, 'підносить значення комірки А1 до 1 степеня і отриманий результат ділить на 3');
INSERT INTO `answers` VALUES (964, 269, 1, '#ЗНАЧ!');
INSERT INTO `answers` VALUES (965, 269, 1, '#ССЫЛКА!');
INSERT INTO `answers` VALUES (966, 269, 1, 'суму діапазонів комірок А1:А12 та А7:F7');
INSERT INTO `answers` VALUES (967, 257, 1, '#ЗНАЧ!');
INSERT INTO `answers` VALUES (968, 270, 0, '& (амперсанд)');
INSERT INTO `answers` VALUES (969, 270, 1, '+ (знак плюс)');
INSERT INTO `answers` VALUES (970, 270, 1, '? (знак питання)');
INSERT INTO `answers` VALUES (971, 270, 1, '! (знак оклику)');
INSERT INTO `answers` VALUES (972, 271, 0, 'такого оператора не існує');
INSERT INTO `answers` VALUES (973, 271, 1, '+-');
INSERT INTO `answers` VALUES (974, 271, 1, '-+');
INSERT INTO `answers` VALUES (975, 272, 0, 'представлення від''ємних чисел');
INSERT INTO `answers` VALUES (976, 272, 1, 'здійснення операції віднімання');
INSERT INTO `answers` VALUES (977, 272, 1, 'для цілочисельних обчислень');
INSERT INTO `answers` VALUES (978, 273, 0, '";"');
INSERT INTO `answers` VALUES (979, 273, 1, '":"');
INSERT INTO `answers` VALUES (980, 273, 1, '" " (пропуск)');
INSERT INTO `answers` VALUES (981, 273, 1, '","');
INSERT INTO `answers` VALUES (982, 274, 0, 'ім''я');
INSERT INTO `answers` VALUES (983, 274, 1, 'діапазон');
INSERT INTO `answers` VALUES (984, 274, 1, 'посилання');
INSERT INTO `answers` VALUES (985, 275, 1, 'Вказівка');
INSERT INTO `answers` VALUES (986, 275, 1, 'Команда');
INSERT INTO `answers` VALUES (987, 275, 1, 'Функція');
INSERT INTO `answers` VALUES (988, 275, 0, 'Оператор');
INSERT INTO `answers` VALUES (989, 276, 0, 'тривимірні посилання');
INSERT INTO `answers` VALUES (990, 276, 1, 'посилання листів');
INSERT INTO `answers` VALUES (991, 276, 1, 'посилання робочих листів');
INSERT INTO `answers` VALUES (992, 276, 1, 'матричні посилання');
INSERT INTO `answers` VALUES (993, 166, 1, 'Так, вибравши в меню Таблица команду Скрыть сетку');
INSERT INTO `answers` VALUES (994, 214, 1, 'Активізувати необхідну комірку, натиснути клавішу <b>F2</b> і  змінити її вміст.');
INSERT INTO `answers` VALUES (995, 215, 1, 'Тільки для відображення лише формули активної комірки.');
INSERT INTO `answers` VALUES (996, 215, 1, 'Тільки для відображення вмісту активної комірки.');
INSERT INTO `answers` VALUES (997, 215, 1, 'Тільки для редагування лише формули активної комірки.');
INSERT INTO `answers` VALUES (998, 216, 1, 'Команда <b>Ячейки...</b> меню <b>Вставка </b>');
INSERT INTO `answers` VALUES (999, 216, 0, 'Команда <b>Ячейки...</b> меню <b>Формат </b>');
INSERT INTO `answers` VALUES (1000, 223, 1, 'натиснути Shift+Enter');
INSERT INTO `answers` VALUES (1001, 223, 1, 'натиснути Ctrl+Shift+Enter');
INSERT INTO `answers` VALUES (1002, 224, 0, 'Ctrl+1');
INSERT INTO `answers` VALUES (1003, 229, 1, 'з верху таблиці');
INSERT INTO `answers` VALUES (1004, 230, 1, 'займе першу позицію на листку');
INSERT INTO `answers` VALUES (1005, 218, 1, 'Так, якщо текст розміщений небільше ніж в один рядок');
INSERT INTO `answers` VALUES (1006, 222, 1, 'Так, якщо текст розміщений небільше ніж в один рядок');
INSERT INTO `answers` VALUES (1007, 225, 1, 'для побудови таблиць');
INSERT INTO `answers` VALUES (1008, 227, 1, 'Так, якщо комірка містить лише текст');
INSERT INTO `answers` VALUES (1009, 227, 1, 'Так, якщо комірка містить лише формулу');
INSERT INTO `answers` VALUES (1010, 228, 1, 'Так, якщо комірка містить лише текст');
INSERT INTO `answers` VALUES (1011, 228, 1, 'Так, якщо комірка містить лише формулу');
INSERT INTO `answers` VALUES (1012, 232, 1, 'Так, при умові якщо текст містить не більше 10 символів');
INSERT INTO `answers` VALUES (1013, 232, 0, 'Так');
INSERT INTO `answers` VALUES (1014, 232, 1, 'Ні');
INSERT INTO `answers` VALUES (1015, 232, 1, 'Немає правельної відповіді');
INSERT INTO `answers` VALUES (1016, 233, 1, 'Так, при умові якщо весь текст розміщується тільки в один рядок');
INSERT INTO `answers` VALUES (1017, 233, 1, 'Немає правельної відповіді');
INSERT INTO `answers` VALUES (1018, 204, 1, 'Це зробити неможливо, лише за допомогою вставки або копіювання листів можна збільшити кількість листів у книзі.');
INSERT INTO `answers` VALUES (1019, 204, 0, 'Параметр <b>Листов в новой книге</b>, вкладки <b>Общие</b>, команди <b>Параметры</b>, меню <b>Сервис</b>.');
INSERT INTO `answers` VALUES (1020, 277, 1, 'A1>A2');
INSERT INTO `answers` VALUES (1021, 278, 0, 'ИСТИНА');
INSERT INTO `answers` VALUES (1022, 278, 1, 'ЛОЖЬ');
INSERT INTO `answers` VALUES (1023, 278, 1, '1');
INSERT INTO `answers` VALUES (1024, 278, 1, '#Н/Д');
INSERT INTO `answers` VALUES (1025, 279, 1, 'те саме число');
INSERT INTO `answers` VALUES (1026, 279, 1, 'ИСТИНА');
INSERT INTO `answers` VALUES (1027, 279, 0, 'ЛОЖЬ');
INSERT INTO `answers` VALUES (1028, 279, 1, '#Н/Д');
INSERT INTO `answers` VALUES (1029, 280, 0, 'встановити курсор над лівою верхньою коміркою діапазону, натиснути ліву кнопку миші і, невідпускаючи її, перемістити курсор миші на праву нижню комірку діапазону.');
INSERT INTO `answers` VALUES (1030, 280, 1, 'встановити курсор над лівою верхньою коміркою діапазону, натиснути ліву кнопку миші і, невідпускаючи її, перемістити курсор миші на ліву нижню комірку діапазону.');
INSERT INTO `answers` VALUES (1031, 280, 1, 'встановити курсор над правою верхньою коміркою діапазону, натиснути ліву кнопку миші і, невідпускаючи її, перемістити курсор миші на праву нижню комірку діапазону.');
INSERT INTO `answers` VALUES (1032, 280, 1, 'встановити курсор над лівою верхньою коміркою діапазону, натиснути ліву кнопку миші і, невідпускаючи її, перемістити курсор миші на праву верхню комірку діапазону.');
INSERT INTO `answers` VALUES (1033, 280, 1, 'встановити курсор над лівою нижньою коміркою діапазону, натиснути ліву кнопку миші і, невідпускаючи її, перемістити курсор миші на праву нижню комірку діапазону.');
INSERT INTO `answers` VALUES (1034, 281, 1, '1');
INSERT INTO `answers` VALUES (1035, 281, 1, '#Н/Д');
INSERT INTO `answers` VALUES (1036, 281, 1, 'ИСТИНА');
INSERT INTO `answers` VALUES (1037, 281, 0, 'ЛОЖЬ');
INSERT INTO `answers` VALUES (1038, 282, 1, '=Н/Д');
INSERT INTO `answers` VALUES (1039, 282, 1, '1');
INSERT INTO `answers` VALUES (1040, 282, 1, 'ЛОЖЬ');
INSERT INTO `answers` VALUES (1041, 282, 0, 'ИСТИНА');
INSERT INTO `answers` VALUES (1042, 283, 0, 'За допомогою клавіш управління курсором, утримуючи натисненою при цьому клавішу <b>Shift</b>.');
INSERT INTO `answers` VALUES (1043, 283, 1, 'За допомогою клавіш управління курсором, утримуючи натисненою при цьому клавішу <b>Alt</b>.');
INSERT INTO `answers` VALUES (1044, 283, 1, 'За допомогою клавіш управління курсором, утримуючи натисненою при цьому клавішу <b>Ctrl</b>.');
INSERT INTO `answers` VALUES (1045, 283, 1, 'Виділення прямокутного діапазону комірок можна здійснити лише за допомогою мишки.');
INSERT INTO `answers` VALUES (1046, 284, 0, 'ЛОЖЬ');
INSERT INTO `answers` VALUES (1047, 284, 1, 'ИСТИНА');
INSERT INTO `answers` VALUES (1048, 284, 1, '1');
INSERT INTO `answers` VALUES (1049, 284, 1, 'ДА');
INSERT INTO `answers` VALUES (1050, 285, 0, 'активізувати одну з комірок, що має бути виділена, натиснути і утримувати натисненою <b>Ctrl</b>, виділити задопомогою мишки всі інші комірки.');
INSERT INTO `answers` VALUES (1051, 285, 1, 'активізувати одну з комірок, що має бути виділена, натиснути і утримувати натисненою <b>Alt</b>, виділити задопомогою мишки всі інші комірки.');
INSERT INTO `answers` VALUES (1052, 285, 1, 'активізувати одну з комірок, що має бути виділена, натиснути і утримувати натисненою <b>Shift</b>, виділити задопомогою мишки всі інші комірки.');
INSERT INTO `answers` VALUES (1053, 285, 1, 'активізувати одну з комірок, що має бути виділена, натиснути і утримувати натисненою <b>Enter</b>, виділити задопомогою мишки всі інші комірки.');
INSERT INTO `answers` VALUES (1054, 286, 1, 'Підсумок');
INSERT INTO `answers` VALUES (1055, 286, 1, '390');
INSERT INTO `answers` VALUES (1056, 286, 1, '345');
INSERT INTO `answers` VALUES (1057, 286, 1, '45');
INSERT INTO `answers` VALUES (1058, 286, 0, '2');
INSERT INTO `answers` VALUES (1059, 287, 0, '3');
INSERT INTO `answers` VALUES (1060, 287, 1, '2');
INSERT INTO `answers` VALUES (1061, 287, 1, '45');
INSERT INTO `answers` VALUES (1062, 287, 1, '390');
INSERT INTO `answers` VALUES (1063, 287, 1, 'ИСТИНА');
INSERT INTO `answers` VALUES (1064, 288, 1, '15');
INSERT INTO `answers` VALUES (1065, 288, 1, '=Н/Д');
INSERT INTO `answers` VALUES (1066, 288, 1, 'Бали');
INSERT INTO `answers` VALUES (1067, 288, 1, '27');
INSERT INTO `answers` VALUES (1068, 288, 0, '9');
INSERT INTO `answers` VALUES (1069, 289, 0, '9');
INSERT INTO `answers` VALUES (1070, 289, 1, 'Бали');
INSERT INTO `answers` VALUES (1071, 289, 1, '15');
INSERT INTO `answers` VALUES (1072, 289, 1, '10');
INSERT INTO `answers` VALUES (1073, 289, 1, '20');
INSERT INTO `answers` VALUES (1074, 290, 1, '=МОБР(А1:С3)');
INSERT INTO `answers` VALUES (1075, 290, 1, '=МОБР(2;3;4:1;4;2:5;0;2)');
INSERT INTO `answers` VALUES (1076, 290, 1, '=МОБР(А1:A3;B1:B3;C1:C3)');
INSERT INTO `answers` VALUES (1077, 290, 0, '=МОБР(2;1;5:3;4;0:4;2;2)');
INSERT INTO `answers` VALUES (1078, 291, 0, 'Ctrl+Shift+Enter');
INSERT INTO `answers` VALUES (1079, 291, 1, 'Enter');
INSERT INTO `answers` VALUES (1080, 291, 1, 'Shift+Enter');
INSERT INTO `answers` VALUES (1081, 291, 1, 'Ctrl+Alt+Enter');
INSERT INTO `answers` VALUES (1082, 291, 1, 'Shift+Alt+Enter');
INSERT INTO `answers` VALUES (1083, 292, 1, '#ЧИСЛО!');
INSERT INTO `answers` VALUES (1084, 292, 1, '1');
INSERT INTO `answers` VALUES (1085, 292, 0, '#ЗНАЧ!');
INSERT INTO `answers` VALUES (1086, 293, 0, 'за допомогою клавіши Enter');
INSERT INTO `answers` VALUES (1087, 293, 1, 'за допомогою комбінації клавіш Ctrl+Shift+Enter');
INSERT INTO `answers` VALUES (1088, 293, 1, 'за допомогою комбінації клавіш Shift+Enter');
INSERT INTO `answers` VALUES (1089, 293, 1, 'за допомогою комбінації клавіш Ctrl+Alt+Enter');
INSERT INTO `answers` VALUES (1090, 293, 1, 'за допомогою комбінації клавіш Shift+Alt+Enter');
INSERT INTO `answers` VALUES (1091, 294, 0, '#ЗНАЧ!');
INSERT INTO `answers` VALUES (1092, 294, 1, '#ССЫЛКА!');
INSERT INTO `answers` VALUES (1093, 294, 1, '#ОШИБКА!');
INSERT INTO `answers` VALUES (1094, 294, 1, '1');
INSERT INTO `answers` VALUES (1095, 295, 0, 'число');
INSERT INTO `answers` VALUES (1096, 295, 1, '#ЗНАЧ!');
INSERT INTO `answers` VALUES (1097, 295, 1, '#ССЫЛКА!');
INSERT INTO `answers` VALUES (1098, 295, 1, '#МАССИВ!');
INSERT INTO `answers` VALUES (1099, 295, 1, '#ОШИБКА!');
INSERT INTO `answers` VALUES (1100, 296, 0, 'записуються у фігурних дужках {} і вводяться натисненням Ctrl+Shift+Enter.');
INSERT INTO `answers` VALUES (1101, 296, 1, 'записуються у квадратних дужках [] і вводяться натисненням Ctrl+Alt+Enter.');
INSERT INTO `answers` VALUES (1102, 296, 1, 'записуються у круглих дужках () і вводяться натисненням Alt+Shift+Enter.');
INSERT INTO `answers` VALUES (1103, 296, 1, 'записуються у квадратних дужках [] і вводяться натисненням Ctrl+Shift+Enter.');
INSERT INTO `answers` VALUES (1104, 297, 1, 'Так, однак для цього потрібно виділити діапазон комірок розмірністю 1 (стовпчик) на 3 (рядки).');
INSERT INTO `answers` VALUES (1105, 297, 0, 'Ні, тому що кількість стовпчиків матриці А не дорівнює кількості рядків матриці В.');
INSERT INTO `answers` VALUES (1106, 298, 0, 'Такої функції не існує');
INSERT INTO `answers` VALUES (1107, 298, 1, 'МСУММ');
INSERT INTO `answers` VALUES (1108, 298, 1, 'МУМНОЖ');
INSERT INTO `answers` VALUES (1109, 298, 1, 'ТРАНСП');
INSERT INTO `answers` VALUES (1110, 298, 1, 'МОПРЕД');
INSERT INTO `answers` VALUES (1111, 297, 1, 'Так, однак для цього потрібно виділити діапазон комірок розмірністю 3 (стовпчики) на 3 (рядки).');
INSERT INTO `answers` VALUES (1112, 299, 0, 'Тому, що кількість стовпців аргументу масив1 не дорівнює кількості рядків аргументу масив2.');
INSERT INTO `answers` VALUES (1113, 299, 1, 'Тому, що масив1 містить пусті комірки (А3 та В3)');
INSERT INTO `answers` VALUES (1114, 299, 1, 'Тому, що масив1 і масив2 повинні бути задані як інтервали.');
INSERT INTO `answers` VALUES (1115, 299, 1, 'Тому, що невірно вказаний діапазон результату він повинен бути розмірності 3 рядки на 2 стовпчики.');
INSERT INTO `answers` VALUES (1116, 300, 0, 'графічне представлення даних');
INSERT INTO `answers` VALUES (1117, 300, 1, 'представлення даних у вигляді таблиці');
INSERT INTO `answers` VALUES (1118, 301, 0, '14 стандартних та 21 нестандартний тип діаграм');
INSERT INTO `answers` VALUES (1119, 301, 1, '21 стандартну та 14 нестандартних типів діаграм');
INSERT INTO `answers` VALUES (1120, 301, 1, '9 стандартних та 10 нестандартний тип діаграм');
INSERT INTO `answers` VALUES (1121, 301, 1, '14 стандартних типів діаграм');
INSERT INTO `answers` VALUES (1122, 302, 0, 'вісь категорій');
INSERT INTO `answers` VALUES (1123, 302, 1, 'вісь значень');
INSERT INTO `answers` VALUES (1124, 302, 1, 'вісь ординат');
INSERT INTO `answers` VALUES (1125, 303, 0, 'по стовпцях');
INSERT INTO `answers` VALUES (1126, 303, 1, 'по рядках');
INSERT INTO `answers` VALUES (1127, 303, 1, 'Виведе повідомлення про помилку');
INSERT INTO `answers` VALUES (1128, 304, 0, 'Excel розташує ряди даних по рядках.');
INSERT INTO `answers` VALUES (1129, 304, 1, 'Excel розташує ряди даних по стовпцях.');
INSERT INTO `answers` VALUES (1130, 304, 1, 'Excel виведе повідомлення про помилку.');
INSERT INTO `answers` VALUES (1131, 305, 0, 'виділити її та перетягнути за допомогою миші.');
INSERT INTO `answers` VALUES (1132, 305, 1, 'виділити її та з контекстного меню вибрати команду ПЕРЕМЕСТИТЬ');
INSERT INTO `answers` VALUES (1133, 305, 1, 'виділити її та з пункту меню ДИАГРАММА вибрати команду РАЗМЕЩЕНИЕ...');
INSERT INTO `answers` VALUES (1134, 305, 1, 'виділити її та виконати команду ПЕРЕМЕСТИТЬ з пункту меню ФОРМАТ');
INSERT INTO `answers` VALUES (1135, 306, 0, 'Диаграмма');
INSERT INTO `answers` VALUES (1136, 306, 1, 'Форматирование диаграммы');
INSERT INTO `answers` VALUES (1137, 306, 1, 'Элементы диаграммы');
INSERT INTO `answers` VALUES (1138, 306, 1, 'Формат');
INSERT INTO `answers` VALUES (1139, 307, 0, 'на заданому проміжку');
INSERT INTO `answers` VALUES (1140, 307, 1, 'на всій області визначення');
INSERT INTO `answers` VALUES (1141, 307, 1, 'не будує взагалі');
INSERT INTO `answers` VALUES (1142, 307, 1, 'в діапазоні від 0 до 100');
INSERT INTO `answers` VALUES (1143, 308, 0, 'лінії сітки');
INSERT INTO `answers` VALUES (1144, 308, 1, 'осі');
INSERT INTO `answers` VALUES (1145, 308, 1, 'мітки стовпців');
INSERT INTO `answers` VALUES (1146, 308, 1, 'таблиця даних');
INSERT INTO `answers` VALUES (1147, 309, 0, '<b>Объемный вид...</b> пункту меню <b>Диаграмма</b>');
INSERT INTO `answers` VALUES (1148, 309, 1, '<b>Объемный вид...</b> пункту меню <b>Формат</b>');
INSERT INTO `answers` VALUES (1149, 309, 1, '<b>Объемная диаграмма ...</b> пункту меню <b>Диаграмма</b>');
INSERT INTO `answers` VALUES (1150, 309, 1, '<b>Объем...</b> пункту меню <b>Диаграмма</b>');
INSERT INTO `answers` VALUES (1151, 310, 0, 'Точечная');
INSERT INTO `answers` VALUES (1152, 310, 1, 'График');
INSERT INTO `answers` VALUES (1153, 310, 1, 'Линейчатая');
INSERT INTO `answers` VALUES (1154, 310, 1, 'График функции');
INSERT INTO `answers` VALUES (1155, 311, 0, 'A1:B12');
INSERT INTO `answers` VALUES (1156, 311, 1, 'A1;B12');
INSERT INTO `answers` VALUES (1157, 311, 1, 'A1:A12');
INSERT INTO `answers` VALUES (1158, 311, 1, 'B1:B12');
INSERT INTO `answers` VALUES (1159, 311, 1, 'B1;B12');
INSERT INTO `answers` VALUES (1160, 312, 0, 'так.');
INSERT INTO `answers` VALUES (1161, 312, 1, 'ні.');
INSERT INTO `answers` VALUES (1162, 312, 1, 'так, якщо та книга відкрита.');
INSERT INTO `answers` VALUES (1163, 269, 0, 'комірки А7');
INSERT INTO `answers` VALUES (1164, 313, 0, 'рядок або стовпець значень таблиці');
INSERT INTO `answers` VALUES (1165, 313, 1, 'виділені рядки по яких будувалася діаграма');
INSERT INTO `answers` VALUES (1166, 313, 1, 'виділені стовпці по яких будувалася діаграма');
INSERT INTO `answers` VALUES (1167, 313, 1, 'діапазон комірок, по якому будувалася діаграма');
INSERT INTO `answers` VALUES (1168, 314, 0, 'від типу діаграми');
INSERT INTO `answers` VALUES (1169, 314, 1, 'від типу даних');
INSERT INTO `answers` VALUES (1170, 314, 1, 'від ряду даних');
INSERT INTO `answers` VALUES (1171, 314, 1, 'від текстових елементів');
INSERT INTO `answers` VALUES (1172, 315, 0, 'підписи по осі Х');
INSERT INTO `answers` VALUES (1173, 315, 1, 'підписи по осі Y');
INSERT INTO `answers` VALUES (1174, 315, 1, 'підписи по осі Z');
INSERT INTO `answers` VALUES (1175, 316, 0, '...умовні позначення рядів даних');
INSERT INTO `answers` VALUES (1176, 316, 1, '...умовні значення маркерів');
INSERT INTO `answers` VALUES (1177, 316, 1, '...умовні позначення категорій');
INSERT INTO `answers` VALUES (1178, 316, 1, '...значення рядів даних');
INSERT INTO `answers` VALUES (1179, 317, 0, '...два ряди даних');
INSERT INTO `answers` VALUES (1180, 317, 1, '...чотири ряди даних');
INSERT INTO `answers` VALUES (1181, 317, 1, '...один ряди даних');
INSERT INTO `answers` VALUES (1182, 317, 1, '...три ряди даних');
INSERT INTO `answers` VALUES (1183, 318, 0, '...рядкам.');
INSERT INTO `answers` VALUES (1184, 318, 1, '...стовпцям.');
INSERT INTO `answers` VALUES (1185, 319, 0, 'другому кроці майстра діаграм');
INSERT INTO `answers` VALUES (1186, 319, 1, 'першому кроці майстра діаграм');
INSERT INTO `answers` VALUES (1187, 319, 1, 'третьому кроці майстра діаграм');
INSERT INTO `answers` VALUES (1188, 319, 1, 'четвертому кроці майстра діаграм');
INSERT INTO `answers` VALUES (1189, 320, 0, 'так');
INSERT INTO `answers` VALUES (1190, 320, 1, 'ні');
INSERT INTO `answers` VALUES (1191, 188, 1, 'форматування текстових даних, що організовані в таблицю');
INSERT INTO `answers` VALUES (1192, 188, 0, 'обробка числових даних, що організовані в таблицю');
INSERT INTO `answers` VALUES (1193, 268, 1, 'підносить значення комірки А1 до 3 степеня');
INSERT INTO `answers` VALUES (1194, 197, 1, 'Всі варіанти вірні');
INSERT INTO `answers` VALUES (1195, 321, 0, '...сукупність комірок із значеннями');
INSERT INTO `answers` VALUES (1196, 321, 1, '...уся таблиця даних');
INSERT INTO `answers` VALUES (1197, 321, 1, '...елементи діаграми, які формують значення таблиці');
INSERT INTO `answers` VALUES (1198, 323, 0, 'розмірністю 2х2');
INSERT INTO `answers` VALUES (1199, 323, 1, 'розмірністю 2х3');
INSERT INTO `answers` VALUES (1200, 322, 0, 'Такої вбудованої функції в MS Excel не існує');
INSERT INTO `answers` VALUES (1201, 322, 1, 'Тому, що дану формулу потрібно вводити як формулу масиву, тобто повинна мати вигляд {=МСУММ(A1:B2;C1:D2)}');
INSERT INTO `answers` VALUES (1202, 322, 1, 'Тому, що дана формула введена як формула масиву, а функція МСУММ повинна вводитись як звичайна функція.');
INSERT INTO `answers` VALUES (1203, 323, 1, 'розмірністю 3х2');
INSERT INTO `answers` VALUES (1204, 323, 1, 'розмірністю 3х3');
INSERT INTO `answers` VALUES (1205, 323, 1, 'Дані масиви мають різну розмірність, тому перемножатисть неможуть. Результатом виконання множення матриць буде #ЗНАЧ!');
INSERT INTO `answers` VALUES (1206, 324, 1, '=СУММ(A1:A2*B1:B2)');
INSERT INTO `answers` VALUES (1207, 324, 1, '{=МУМНОЖ(А1:В1;А2:В2)}');
INSERT INTO `answers` VALUES (1208, 324, 0, '{=СУММ(A1:A2*B1:B2)}');
INSERT INTO `answers` VALUES (1209, 324, 1, '=МУМНОЖ(А1:В1;А2:В2)');
INSERT INTO `answers` VALUES (1210, 325, 1, 'суму різниць значень по стовпчикам');
INSERT INTO `answers` VALUES (1211, 325, 1, 'дана формула помилкова і результатом її виконання буде #ЗНАЧ!');
INSERT INTO `answers` VALUES (1212, 325, 0, 'суму різниць значень по рядкам');
INSERT INTO `answers` VALUES (1213, 325, 1, 'суму по ствопцю А, потім - Б. І знаходить різницю отриманих значень');
INSERT INTO `answers` VALUES (1214, 326, 0, 'Дані масиви мають різну розмірність, тому перемножатисть неможуть. Результатом виконання множення матриць буде #ЗНАЧ!');
INSERT INTO `answers` VALUES (1215, 326, 1, 'розмірністю 3х3');
INSERT INTO `answers` VALUES (1216, 326, 1, 'розмірністю 3х2');
INSERT INTO `answers` VALUES (1217, 326, 1, 'розмірністю 2х3');
INSERT INTO `answers` VALUES (1218, 326, 1, 'розмірністю 2х2');
INSERT INTO `answers` VALUES (1219, 327, 0, 'Так, однак для цього потрібно виділити діапазон комірок розмірністю 1 (стовпчик) на 3 (рядки).');
INSERT INTO `answers` VALUES (1220, 327, 1, 'Ні, тому що кількість рядків матриці А не дорівнює кількості стовпців матриці В.');
INSERT INTO `answers` VALUES (1221, 327, 1, 'Так, однак для цього потрібно виділити діапазон комірок розмірністю 3 (стовпчики) на 3 (рядки).');
INSERT INTO `answers` VALUES (1222, 328, 0, '1');
INSERT INTO `answers` VALUES (1223, 328, 1, '#ЗНАЧ!');
INSERT INTO `answers` VALUES (1224, 328, 1, '#ЧИСЛО!');
INSERT INTO `answers` VALUES (1225, 328, 1, '#ССЫЛКА!');
INSERT INTO `answers` VALUES (1226, 329, 0, 'стільки рядків і стовпців, скільки стовпців і рядків має матриця, що транспонується');
INSERT INTO `answers` VALUES (1227, 329, 1, 'стільки рядків і стовпців, скільки рядків і стовпців має матриця, що транспонується');
INSERT INTO `answers` VALUES (1228, 329, 1, 'функція ТРАНСП повертає одне значення');
INSERT INTO `answers` VALUES (1229, 329, 1, 'функція ТРАСП вводиться "поверх" вихідної матриці, тоиу і розмірності їх співпадають');
INSERT INTO `answers` VALUES (1230, 330, 1, '#ОПРЕД!');
INSERT INTO `answers` VALUES (1231, 330, 1, '1');
INSERT INTO `answers` VALUES (1232, 330, 0, '#ЧИСЛО!');
INSERT INTO `answers` VALUES (1233, 330, 1, '#ЗНАЧ!');
INSERT INTO `answers` VALUES (1234, 331, 1, '1');
INSERT INTO `answers` VALUES (1235, 331, 1, '#ЗНАЧ!');
INSERT INTO `answers` VALUES (1236, 331, 1, '#ОПРЕД!');
INSERT INTO `answers` VALUES (1237, 331, 0, ' 0');
INSERT INTO `answers` VALUES (1238, 331, 1, '#ЧИСЛО!');
INSERT INTO `answers` VALUES (1239, 203, 1, 'Всі варіанти вірні.');
INSERT INTO `answers` VALUES (1240, 188, 1, 'набір тексту');
INSERT INTO `answers` VALUES (1247, 333, 0, '4');
INSERT INTO `answers` VALUES (1248, 333, 0, 'four');
INSERT INTO `answers` VALUES (1249, 333, 0, '1+3');
INSERT INTO `answers` VALUES (1250, 333, 1, '5');
INSERT INTO `answers` VALUES (1251, 333, 1, 'five');
INSERT INTO `answers` VALUES (1252, 334, 0, '6 ');
INSERT INTO `answers` VALUES (1253, 334, 0, 'six');
INSERT INTO `answers` VALUES (1254, 334, 1, '7');
INSERT INTO `answers` VALUES (1255, 334, 1, 'sixteen');
INSERT INTO `answers` VALUES (1256, 334, 1, 'five ');
INSERT INTO `answers` VALUES (1257, 335, 0, '8 ');
INSERT INTO `answers` VALUES (1258, 335, 1, '7+2 ');
INSERT INTO `answers` VALUES (1259, 335, 0, '7+1 ');
INSERT INTO `answers` VALUES (1260, 335, 1, 'seven');
INSERT INTO `answers` VALUES (1261, 336, 0, '10');
INSERT INTO `answers` VALUES (1262, 336, 1, '11 ');
INSERT INTO `answers` VALUES (1263, 336, 1, '12');
INSERT INTO `answers` VALUES (1264, 336, 1, '13 ');
INSERT INTO `answers` VALUES (1265, 336, 1, '14 ');
INSERT INTO `answers` VALUES (1266, 337, 0, '12');
INSERT INTO `answers` VALUES (1267, 337, 1, '11 ');
INSERT INTO `answers` VALUES (1268, 337, 1, '13 ');
INSERT INTO `answers` VALUES (1269, 337, 1, '14 ');
INSERT INTO `answers` VALUES (1270, 338, 0, '14');
INSERT INTO `answers` VALUES (1271, 338, 1, '16 ');
INSERT INTO `answers` VALUES (1272, 338, 1, '18 ');
INSERT INTO `answers` VALUES (1273, 338, 1, '12 ');
INSERT INTO `answers` VALUES (1274, 338, 1, '10');
INSERT INTO `answers` VALUES (1279, 340, 0, '20');
INSERT INTO `answers` VALUES (1280, 340, 1, '10');
INSERT INTO `answers` VALUES (1281, 340, 1, '30 ');
INSERT INTO `answers` VALUES (1282, 341, 0, '0');
INSERT INTO `answers` VALUES (1283, 341, 1, '1');
INSERT INTO `answers` VALUES (1284, 342, 1, 'one');
INSERT INTO `answers` VALUES (1285, 342, 0, 'two');
INSERT INTO `answers` VALUES (1286, 342, 0, '2');
INSERT INTO `answers` VALUES (1292, 344, 0, '20');
INSERT INTO `answers` VALUES (1293, 344, 0, 'twenty');
INSERT INTO `answers` VALUES (1294, 344, 1, 'twelv');
INSERT INTO `answers` VALUES (1295, 344, 0, '5+5+10');
INSERT INTO `answers` VALUES (1296, 344, 1, '12');
INSERT INTO `answers` VALUES (1297, 343, 0, '0');
INSERT INTO `answers` VALUES (1298, 343, 0, 'zero');
INSERT INTO `answers` VALUES (1299, 343, 0, '11 - ( 5 + 6 )');
INSERT INTO `answers` VALUES (1300, 343, 0, '0 / 12');
INSERT INTO `answers` VALUES (1301, 343, 1, '11 - 10');
INSERT INTO `answers` VALUES (1302, 345, 0, '2');
INSERT INTO `answers` VALUES (1303, 345, 1, '1');
INSERT INTO `answers` VALUES (1351, 345, 1, '3');
INSERT INTO `answers` VALUES (1356, 346, 0, 'ten');
INSERT INTO `answers` VALUES (1357, 346, 0, '10');
INSERT INTO `answers` VALUES (1358, 346, 1, 'tan');
INSERT INTO `answers` VALUES (5921, 347, 0, '18');
INSERT INTO `answers` VALUES (5922, 347, 0, 'eighteen');
INSERT INTO `answers` VALUES (5923, 347, 1, 'seventeen');
INSERT INTO `answers` VALUES (5936, 1348, 0, '82');
INSERT INTO `answers` VALUES (5937, 1348, 0, '80+2');
INSERT INTO `answers` VALUES (5938, 1348, 0, '41+41');
INSERT INTO `answers` VALUES (5939, 1348, 0, '42+40');
INSERT INTO `answers` VALUES (5940, 1348, 1, '8+20');
INSERT INTO `answers` VALUES (5941, 1349, 0, '118');
INSERT INTO `answers` VALUES (5942, 1349, 0, '100 + 18');
INSERT INTO `answers` VALUES (5943, 1349, 1, '100 + 16');
INSERT INTO `answers` VALUES (5944, 1349, 1, '116');
INSERT INTO `answers` VALUES (5945, 1349, 1, '108 + 100');
INSERT INTO `answers` VALUES (5946, 1350, 0, '130');
INSERT INTO `answers` VALUES (5947, 1350, 0, '120 + 10');
INSERT INTO `answers` VALUES (5948, 1350, 1, '120 + 100');
INSERT INTO `answers` VALUES (5961, 1345, 0, '22');
INSERT INTO `answers` VALUES (5962, 1345, 1, '24');
INSERT INTO `answers` VALUES (5963, 1345, 1, '26');
INSERT INTO `answers` VALUES (5964, 1345, 1, '28');
INSERT INTO `answers` VALUES (5965, 1345, 1, '12');
INSERT INTO `answers` VALUES (5990, 1346, 0, '54');
INSERT INTO `answers` VALUES (5991, 1346, 1, '52');
INSERT INTO `answers` VALUES (5992, 1346, 1, '44');
INSERT INTO `answers` VALUES (5993, 1346, 1, '42');
INSERT INTO `answers` VALUES (5997, 1347, 0, '68');
INSERT INTO `answers` VALUES (5998, 1347, 1, '78');
INSERT INTO `answers` VALUES (5999, 1347, 1, '58');
INSERT INTO `answers` VALUES (6000, 1351, 0, '246');
INSERT INTO `answers` VALUES (6001, 1351, 1, '642');
INSERT INTO `answers` VALUES (6002, 1351, 1, '222');
INSERT INTO `answers` VALUES (6003, 1351, 1, '123');
INSERT INTO `answers` VALUES (6004, 1351, 1, '235');
INSERT INTO `answers` VALUES (6005, 1352, 0, '442');
INSERT INTO `answers` VALUES (6006, 1352, 1, '444');
INSERT INTO `answers` VALUES (6007, 1352, 1, '454');
INSERT INTO `answers` VALUES (6008, 1353, 0, '1268');
INSERT INTO `answers` VALUES (6009, 1353, 1, '1286');
INSERT INTO `answers` VALUES (6010, 1353, 0, '1200 + 68');
INSERT INTO `answers` VALUES (6011, 1353, 0, '2 * 635 - 2');
INSERT INTO `answers` VALUES (6012, 1353, 1, '1200 + 86');
INSERT INTO `answers` VALUES (6013, 1354, 0, '1100');
INSERT INTO `answers` VALUES (6014, 1354, 0, 'one thousand hundred');
INSERT INTO `answers` VALUES (6015, 1354, 1, '1200');
INSERT INTO `answers` VALUES (6016, 339, 0, '18');
INSERT INTO `answers` VALUES (6017, 339, 1, '14');
INSERT INTO `answers` VALUES (6018, 339, 1, '16');
INSERT INTO `answers` VALUES (6019, 339, 1, '20');
INSERT INTO `answers` VALUES (6224, 1390, 0, '134');
INSERT INTO `answers` VALUES (6225, 1390, 1, '144');
INSERT INTO `answers` VALUES (6226, 1390, 1, '154');
INSERT INTO `answers` VALUES (6227, 1390, 1, '124');
INSERT INTO `answers` VALUES (9200, 1995, 0, '166');
INSERT INTO `answers` VALUES (9201, 1995, 1, '153');
INSERT INTO `answers` VALUES (9202, 1995, 1, '160 +26');
INSERT INTO `answers` VALUES (9203, 1995, 1, '163');
INSERT INTO `answers` VALUES (9204, 1995, 1, '16+100');
INSERT INTO `answers` VALUES (9205, 335, 1, 'eighteen');
INSERT INTO `answers` VALUES (9815, 2116, 0, '3');
INSERT INTO `answers` VALUES (9816, 2116, 1, '4');
INSERT INTO `answers` VALUES (9817, 2116, 1, '1');
INSERT INTO `answers` VALUES (9818, 2116, 1, '0');
INSERT INTO `answers` VALUES (9819, 2117, 0, '6');
INSERT INTO `answers` VALUES (9820, 2117, 0, '5+1');
INSERT INTO `answers` VALUES (9821, 2117, 1, '5');
INSERT INTO `answers` VALUES (9822, 2117, 1, '4 + 1');
INSERT INTO `answers` VALUES (9823, 2117, 1, '3+2');
INSERT INTO `answers` VALUES (9824, 2118, 0, '9');
INSERT INTO `answers` VALUES (9825, 2118, 1, '10');
INSERT INTO `answers` VALUES (9826, 2118, 1, '7');
INSERT INTO `answers` VALUES (9827, 2118, 1, '6');
INSERT INTO `answers` VALUES (9828, 2118, 1, '11');
INSERT INTO `answers` VALUES (9829, 2119, 0, '12');
INSERT INTO `answers` VALUES (9830, 2119, 1, '9 + 4');
INSERT INTO `answers` VALUES (9831, 2119, 0, '9 + 3');
INSERT INTO `answers` VALUES (9832, 2119, 1, '5 + 8');
INSERT INTO `answers` VALUES (9833, 2120, 0, '15');
INSERT INTO `answers` VALUES (9834, 2120, 1, '25');
INSERT INTO `answers` VALUES (9835, 2120, 1, '11');
INSERT INTO `answers` VALUES (9836, 2120, 1, '8');
INSERT INTO `answers` VALUES (9837, 2120, 1, '9');
INSERT INTO `answers` VALUES (9838, 2121, 0, '18');
INSERT INTO `answers` VALUES (9839, 2121, 0, 'eighteen');
INSERT INTO `answers` VALUES (9840, 2121, 1, 'eighty');
INSERT INTO `answers` VALUES (9841, 2121, 1, '80');
INSERT INTO `answers` VALUES (9842, 2122, 0, '21');
INSERT INTO `answers` VALUES (9843, 2122, 1, 'twenty two');
INSERT INTO `answers` VALUES (9844, 2122, 1, '23');
INSERT INTO `answers` VALUES (9845, 2122, 1, '10');
INSERT INTO `answers` VALUES (9846, 2123, 0, '24');
INSERT INTO `answers` VALUES (9847, 2123, 1, '20 + 3');
INSERT INTO `answers` VALUES (9848, 2123, 0, 'twenty four');
INSERT INTO `answers` VALUES (9849, 2123, 1, 'twenty three');
INSERT INTO `answers` VALUES (9850, 2123, 0, '19 + 5');
INSERT INTO `answers` VALUES (9851, 2124, 0, '27');
INSERT INTO `answers` VALUES (9852, 2124, 1, '12');
INSERT INTO `answers` VALUES (9853, 2124, 1, '32');
INSERT INTO `answers` VALUES (9854, 2124, 1, 'twenty six');
INSERT INTO `answers` VALUES (9855, 2125, 0, 'thirty');
INSERT INTO `answers` VALUES (9856, 2125, 1, '31');
INSERT INTO `answers` VALUES (9857, 2125, 1, '14');
INSERT INTO `answers` VALUES (9858, 2125, 1, 'thirteen');
INSERT INTO `answers` VALUES (9859, 2126, 0, '63');
INSERT INTO `answers` VALUES (9860, 2126, 1, '65');
INSERT INTO `answers` VALUES (9861, 2126, 0, 'sixty three');
INSERT INTO `answers` VALUES (9862, 2126, 1, 'sixty five');
INSERT INTO `answers` VALUES (9863, 2127, 0, '57');
INSERT INTO `answers` VALUES (9864, 2127, 1, '47');
INSERT INTO `answers` VALUES (9865, 2127, 1, '37');
INSERT INTO `answers` VALUES (9866, 2127, 1, '21');
INSERT INTO `answers` VALUES (9867, 2128, 0, '231');
INSERT INTO `answers` VALUES (9868, 2128, 1, '221');
INSERT INTO `answers` VALUES (9869, 2128, 0, '200 + 29 +2');
INSERT INTO `answers` VALUES (9870, 2128, 1, '200 + 19 +2');
INSERT INTO `answers` VALUES (9871, 2129, 0, '16/2');
INSERT INTO `answers` VALUES (9872, 2129, 1, '18/2');
INSERT INTO `answers` VALUES (9873, 2129, 1, '20/4');
INSERT INTO `answers` VALUES (9874, 2129, 1, '24/4');
INSERT INTO `answers` VALUES (9875, 2129, 1, '32/3');
INSERT INTO `answers` VALUES (9876, 2130, 0, '68');
INSERT INTO `answers` VALUES (9877, 2130, 1, '58');
INSERT INTO `answers` VALUES (9878, 2130, 1, '48');
INSERT INTO `answers` VALUES (9879, 2130, 1, 'sixty seven');
INSERT INTO `answers` VALUES (9880, 2131, 0, '177');
INSERT INTO `answers` VALUES (9881, 2131, 1, '167');
INSERT INTO `answers` VALUES (9882, 2131, 0, 'one hundred seventy seven');
INSERT INTO `answers` VALUES (9883, 2131, 1, 'one hundred sixty seven');
INSERT INTO `answers` VALUES (9884, 2132, 0, '261');
INSERT INTO `answers` VALUES (9885, 2132, 1, '251');
INSERT INTO `answers` VALUES (9886, 2132, 1, '241');
INSERT INTO `answers` VALUES (9887, 2132, 1, '231');
INSERT INTO `answers` VALUES (9888, 2132, 1, '271');
INSERT INTO `answers` VALUES (9889, 2133, 0, '2349');
INSERT INTO `answers` VALUES (9890, 2133, 1, '2459');
INSERT INTO `answers` VALUES (9891, 2133, 0, '2222 + 127;');
INSERT INTO `answers` VALUES (9892, 2133, 1, '2332 + 127;');
INSERT INTO `answers` VALUES (9893, 2134, 0, '2367');
INSERT INTO `answers` VALUES (9894, 2134, 1, '2357');
INSERT INTO `answers` VALUES (9895, 2134, 1, '2467');
INSERT INTO `answers` VALUES (9896, 2134, 1, '2457');
INSERT INTO `answers` VALUES (9897, 2135, 0, '6*2');
INSERT INTO `answers` VALUES (9898, 2135, 0, '6+6');
INSERT INTO `answers` VALUES (9899, 2135, 1, '24/4');
INSERT INTO `answers` VALUES (9900, 2135, 1, '28/3');
INSERT INTO `answers` VALUES (9901, 2136, 0, '8/8*8');
INSERT INTO `answers` VALUES (9902, 2136, 0, '16/4*2');
INSERT INTO `answers` VALUES (9903, 2136, 0, '24/2-4');
INSERT INTO `answers` VALUES (9904, 2136, 1, '24/4');
INSERT INTO `answers` VALUES (9905, 2136, 1, '27/3');
INSERT INTO `answers` VALUES (9906, 2137, 0, '32');
INSERT INTO `answers` VALUES (9907, 2137, 0, '2^5');
INSERT INTO `answers` VALUES (9908, 2137, 0, '2^6/2');
INSERT INTO `answers` VALUES (9909, 2138, 0, '1680');
INSERT INTO `answers` VALUES (9910, 2137, 1, '2^2*4');
INSERT INTO `answers` VALUES (9911, 2138, 1, '1780');
INSERT INTO `answers` VALUES (9912, 2138, 0, '1699-19');
INSERT INTO `answers` VALUES (9913, 2138, 1, '1799-19');
INSERT INTO `answers` VALUES (9914, 2139, 0, '16');
INSERT INTO `answers` VALUES (9915, 2139, 1, '17');
INSERT INTO `answers` VALUES (9916, 2139, 1, '18');
INSERT INTO `answers` VALUES (9917, 2139, 1, '8');
INSERT INTO `answers` VALUES (9918, 2139, 1, '9');
INSERT INTO `answers` VALUES (9919, 2140, 0, 'twenty');
INSERT INTO `answers` VALUES (9920, 2140, 1, 'twenty five');
INSERT INTO `answers` VALUES (9921, 2140, 0, '20');
INSERT INTO `answers` VALUES (9922, 2140, 1, '25');
INSERT INTO `answers` VALUES (9923, 2140, 0, '40/2');
INSERT INTO `answers` VALUES (9924, 2141, 0, '24');
INSERT INTO `answers` VALUES (9925, 2141, 1, '20');
INSERT INTO `answers` VALUES (9926, 2141, 1, '22');
INSERT INTO `answers` VALUES (9927, 2141, 1, '26');
INSERT INTO `answers` VALUES (9928, 2141, 1, '25');
INSERT INTO `answers` VALUES (9929, 2142, 0, '28');
INSERT INTO `answers` VALUES (9930, 2142, 0, 'twenty eight');
INSERT INTO `answers` VALUES (9931, 2142, 1, 'twenty eighteen');
INSERT INTO `answers` VALUES (9932, 2142, 1, '218');
INSERT INTO `answers` VALUES (9933, 2142, 1, '20+18');
INSERT INTO `answers` VALUES (9934, 2143, 0, '36');
INSERT INTO `answers` VALUES (9935, 2143, 1, '46');
INSERT INTO `answers` VALUES (9936, 2143, 1, '26');
INSERT INTO `answers` VALUES (9937, 2143, 1, '34');
INSERT INTO `answers` VALUES (9938, 2144, 0, '4');
INSERT INTO `answers` VALUES (9939, 2144, 1, '1');
INSERT INTO `answers` VALUES (9940, 2144, 1, '0');
INSERT INTO `answers` VALUES (9941, 2144, 1, '8');
INSERT INTO `answers` VALUES (9942, 2144, 1, 'one');
INSERT INTO `answers` VALUES (9943, 2145, 0, '3500');
INSERT INTO `answers` VALUES (9944, 2145, 1, '3400');
INSERT INTO `answers` VALUES (9945, 2145, 1, '3560');
INSERT INTO `answers` VALUES (9946, 2145, 1, '3330');
INSERT INTO `answers` VALUES (9947, 2145, 1, '3600');
INSERT INTO `answers` VALUES (9948, 2146, 0, '636');
INSERT INTO `answers` VALUES (9949, 2146, 0, 'six hundred thirty six');
INSERT INTO `answers` VALUES (9950, 2146, 1, '736');
INSERT INTO `answers` VALUES (9951, 2146, 1, 'seven hundred thirty six');
INSERT INTO `answers` VALUES (9952, 2147, 0, '3012');
INSERT INTO `answers` VALUES (9953, 2147, 1, '3112');
INSERT INTO `answers` VALUES (9954, 2147, 1, '3212');
INSERT INTO `answers` VALUES (9955, 2147, 1, '3312');
INSERT INTO `answers` VALUES (9956, 2147, 1, '3412');
INSERT INTO `answers` VALUES (9957, 2148, 0, '2556');
INSERT INTO `answers` VALUES (9958, 2148, 1, '2456');
INSERT INTO `answers` VALUES (9959, 2148, 1, '2656');
INSERT INTO `answers` VALUES (9960, 2148, 1, '2756');
INSERT INTO `answers` VALUES (9961, 2148, 1, '2856');
INSERT INTO `answers` VALUES (9962, 2149, 0, '3408');
INSERT INTO `answers` VALUES (9963, 2149, 0, '10224/3');
INSERT INTO `answers` VALUES (9964, 2149, 1, '3508');
INSERT INTO `answers` VALUES (9965, 2149, 1, '10524');
INSERT INTO `answers` VALUES (9966, 2150, 0, '224');
INSERT INTO `answers` VALUES (9967, 2150, 1, '256');
INSERT INTO `answers` VALUES (9968, 2150, 0, '199 + 25');
INSERT INTO `answers` VALUES (9969, 2150, 1, '199 + 57');
INSERT INTO `answers` VALUES (9970, 2151, 0, '248');
INSERT INTO `answers` VALUES (9971, 2151, 1, '245');
INSERT INTO `answers` VALUES (9972, 2151, 1, '246');
INSERT INTO `answers` VALUES (9973, 2151, 1, '247');
INSERT INTO `answers` VALUES (9974, 2151, 1, '249');
INSERT INTO `answers` VALUES (9975, 2152, 0, '156');
INSERT INTO `answers` VALUES (9976, 2152, 1, '176');
INSERT INTO `answers` VALUES (9977, 2152, 0, '12 * 13');
INSERT INTO `answers` VALUES (9978, 2152, 0, '3 * 52');
INSERT INTO `answers` VALUES (9979, 2152, 1, '8 * 22');
INSERT INTO `answers` VALUES (9980, 2153, 0, '312');
INSERT INTO `answers` VALUES (9981, 2153, 1, '322');
INSERT INTO `answers` VALUES (9982, 2153, 1, '332');
INSERT INTO `answers` VALUES (9983, 2153, 1, '342');
INSERT INTO `answers` VALUES (9984, 2154, 0, '52');
INSERT INTO `answers` VALUES (9985, 2154, 1, '42');
INSERT INTO `answers` VALUES (9986, 2154, 0, 'fifty two');
INSERT INTO `answers` VALUES (9987, 2154, 1, 'forty two');
INSERT INTO `answers` VALUES (9988, 2155, 0, '312');
INSERT INTO `answers` VALUES (9989, 2155, 1, '310');
INSERT INTO `answers` VALUES (9990, 2155, 1, '311');
INSERT INTO `answers` VALUES (9991, 2155, 1, '313');
INSERT INTO `answers` VALUES (9992, 2155, 1, '314');
INSERT INTO `answers` VALUES (9993, 2155, 1, '315');

-- --------------------------------------------------------

-- 
-- Структура таблиці `group_priv`
-- 

CREATE TABLE `group_priv` (
  `ID_TE` smallint(5) unsigned NOT NULL default '0',
  `ID_GR` mediumint(8) unsigned NOT NULL default '0',
  `CanAdmin` enum('N','Y') NOT NULL default 'N',
  `CanChange` enum('N','Y') NOT NULL default 'N',
  PRIMARY KEY  (`ID_TE`,`ID_GR`),
  KEY `ID_GR` (`ID_GR`)
) TYPE=InnoDB;

-- 
-- Дамп даних таблиці `group_priv`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблиці `groups`
-- 

CREATE TABLE `groups` (
  `ID_GR` mediumint(8) unsigned NOT NULL auto_increment,
  `GrName` char(20) NOT NULL default '',
  PRIMARY KEY  (`ID_GR`),
  UNIQUE KEY `GrName` (`GrName`)
) TYPE=InnoDB AUTO_INCREMENT=27 ;

-- 
-- Дамп даних таблиці `groups`
-- 

INSERT INTO `groups` VALUES (25, 'Guests2002');
INSERT INTO `groups` VALUES (26, 'Guests2007');

-- --------------------------------------------------------

-- 
-- Структура таблиці `level_question`
-- 

CREATE TABLE `level_question` (
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  `ID_Level` tinyint(3) unsigned NOT NULL default '0',
  `Point` tinyint(3) unsigned NOT NULL default '0',
  `Number` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID_TEST`,`ID_Level`)
) TYPE=InnoDB;

-- 
-- Дамп даних таблиці `level_question`
-- 

INSERT INTO `level_question` VALUES (4, 1, 1, 10);
INSERT INTO `level_question` VALUES (7, 1, 1, 10);
INSERT INTO `level_question` VALUES (9, 1, 1, 10);
INSERT INTO `level_question` VALUES (16, 1, 1, 10);
INSERT INTO `level_question` VALUES (16, 2, 2, 6);
INSERT INTO `level_question` VALUES (16, 3, 5, 4);
INSERT INTO `level_question` VALUES (19, 1, 1, 50);
INSERT INTO `level_question` VALUES (20, 1, 1, 10);
INSERT INTO `level_question` VALUES (21, 1, 1, 10);
INSERT INTO `level_question` VALUES (22, 1, 1, 10);
INSERT INTO `level_question` VALUES (24, 1, 1, 10);
INSERT INTO `level_question` VALUES (25, 1, 1, 10);
INSERT INTO `level_question` VALUES (26, 1, 1, 10);
INSERT INTO `level_question` VALUES (27, 1, 1, 20);
INSERT INTO `level_question` VALUES (27, 2, 2, 4);
INSERT INTO `level_question` VALUES (28, 1, 1, 10);
INSERT INTO `level_question` VALUES (29, 1, 1, 10);
INSERT INTO `level_question` VALUES (30, 1, 1, 5);
INSERT INTO `level_question` VALUES (30, 2, 2, 5);
INSERT INTO `level_question` VALUES (31, 1, 1, 5);
INSERT INTO `level_question` VALUES (31, 2, 3, 3);
INSERT INTO `level_question` VALUES (31, 3, 5, 2);
INSERT INTO `level_question` VALUES (135, 1, 1, 5);
INSERT INTO `level_question` VALUES (135, 2, 2, 3);
INSERT INTO `level_question` VALUES (135, 3, 3, 2);
INSERT INTO `level_question` VALUES (136, 1, 1, 5);
INSERT INTO `level_question` VALUES (136, 2, 2, 3);
INSERT INTO `level_question` VALUES (136, 3, 5, 2);

-- --------------------------------------------------------

-- 
-- Структура таблиці `questions`
-- 

CREATE TABLE `questions` (
  `ID_QU` int(10) unsigned NOT NULL auto_increment,
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  `Q_Type` tinyint(3) unsigned NOT NULL default '1',
  `ID_Level` tinyint(3) unsigned NOT NULL default '0',
  `qty_false` int(10) unsigned NOT NULL default '0',
  `qty_true` int(10) unsigned NOT NULL default '0',
  `Q_Body` text NOT NULL,
  PRIMARY KEY  (`ID_QU`),
  KEY `ID_TEST_ID_LEVEL` (`ID_TEST`,`ID_Level`)
) TYPE=InnoDB AUTO_INCREMENT=2156 ;

-- 
-- Дамп даних таблиці `questions`
-- 

INSERT INTO `questions` VALUES (28, 4, 1, 1, 0, 0, 'Вкажіть спосіб за допомогою якого можна виділити абзац.');
INSERT INTO `questions` VALUES (29, 4, 1, 1, 0, 0, 'Вкажіть невірну відповідь:');
INSERT INTO `questions` VALUES (30, 4, 1, 1, 0, 0, 'Копіювання фрагменту тексту в буфер обміну здійснюється наступним чином:');
INSERT INTO `questions` VALUES (31, 4, 1, 1, 0, 0, 'Вставка фрагменту тексту з буферу обміну здійснюється наступним чином:');
INSERT INTO `questions` VALUES (32, 4, 1, 1, 0, 0, 'Переміщення фрагменту тексту в буфер обміну здійснюється наступним чином:');
INSERT INTO `questions` VALUES (33, 4, 1, 1, 0, 0, 'Як виділити весь документ');
INSERT INTO `questions` VALUES (50, 20, 1, 1, 0, 0, 'Виберіть вірну відповідь на питання. Редактор Word 97 при створенні таблиці має обмеження на створення таблиці з наступними параметрами:');
INSERT INTO `questions` VALUES (51, 20, 1, 1, 0, 0, 'Для створення нової таблиці потрібно виконати наступні дії:');
INSERT INTO `questions` VALUES (52, 20, 1, 1, 0, 0, 'Мінімальна та максимальна товщина границі відповідно дорівнює:');
INSERT INTO `questions` VALUES (53, 20, 1, 1, 0, 0, 'Виберіть клавішу (комбінацію клавіш), що не використовується при роботі з таблицями');
INSERT INTO `questions` VALUES (54, 20, 1, 1, 0, 0, 'Редактор Word 97 дозволяє...');
INSERT INTO `questions` VALUES (55, 21, 1, 1, 0, 0, 'В редакторі Word 97 користувач має можливість виконувати наступні дії по зміні робочого оточення:');
INSERT INTO `questions` VALUES (56, 21, 1, 1, 0, 0, 'Комбінація клавіш Shift+F1 виконує наступну дію');
INSERT INTO `questions` VALUES (57, 21, 1, 1, 0, 0, 'Виберіть невірне визначення:');
INSERT INTO `questions` VALUES (58, 21, 1, 1, 0, 0, 'Вкажіть комбінацію клавіш для закриття вікна документу.');
INSERT INTO `questions` VALUES (59, 21, 1, 1, 0, 0, 'Виберіть вірне визначення');
INSERT INTO `questions` VALUES (60, 21, 1, 1, 0, 0, 'Де розташовані кнопки управління вікном документа, якщо вікно документа розгорнуте на весь екран редактора?');
INSERT INTO `questions` VALUES (61, 21, 1, 1, 0, 0, 'Як вибрати потрібний пункт меню?');
INSERT INTO `questions` VALUES (62, 21, 1, 1, 0, 0, 'Які панелі інструментів виводить MS Word при першому завантаженні за замовчуванням?');
INSERT INTO `questions` VALUES (63, 21, 1, 1, 0, 0, 'Скільки вікон документів може бути активними одночасно?');
INSERT INTO `questions` VALUES (64, 21, 1, 1, 0, 0, 'Що Ви розумієте під фразою "Word - багатовіконний редактор"');
INSERT INTO `questions` VALUES (65, 21, 1, 1, 0, 0, 'Для чого призначений рядок стану?');
INSERT INTO `questions` VALUES (66, 21, 1, 1, 0, 0, 'Для виведення панелі інструментів на екран використовують пункт меню');
INSERT INTO `questions` VALUES (67, 21, 1, 1, 0, 0, 'Щоб зберегти документ під новою назвою потрібно...');
INSERT INTO `questions` VALUES (68, 21, 1, 1, 0, 0, 'Виберіть назву того пункту, якого немає в рядку меню');
INSERT INTO `questions` VALUES (69, 21, 1, 1, 0, 0, 'Виклик контекстної підказки здійснється комбінацією клавіш');
INSERT INTO `questions` VALUES (70, 9, 1, 1, 0, 0, 'Вибрати неправильне визначення');
INSERT INTO `questions` VALUES (71, 9, 1, 1, 0, 0, 'Вибрати неправильну відповідь');
INSERT INTO `questions` VALUES (72, 21, 1, 1, 0, 0, 'Скільки панелей інструментів може бути присутні на екрані програми Word?');
INSERT INTO `questions` VALUES (73, 21, 1, 1, 0, 0, 'Як не можна переключатися між вікнами відкритих документів в Word');
INSERT INTO `questions` VALUES (74, 9, 1, 1, 0, 0, 'Коли необхідно натиснути на клавішу Enter при введенні тексту?');
INSERT INTO `questions` VALUES (75, 9, 1, 1, 0, 0, 'Які з нижче приведених змін не можна виконати використовуючи панель інструментів "Форматирование"?');
INSERT INTO `questions` VALUES (76, 9, 1, 1, 0, 0, 'Які з нижче приведених змін неможливо здійснити за допомогою діалогового вікна "Шрифт"?');
INSERT INTO `questions` VALUES (77, 9, 1, 1, 0, 0, 'Знайдіть з нижче перерахованих атрибутів форматування той, який відноситься до абзацу.\r\n	\r\n');
INSERT INTO `questions` VALUES (78, 9, 1, 1, 0, 0, 'Як перейти на нову сторінку документу?');
INSERT INTO `questions` VALUES (79, 21, 1, 1, 0, 0, 'Яке розширення надає автоматично текстовий процесор WORD своїм документам?\r\n');
INSERT INTO `questions` VALUES (80, 21, 1, 1, 0, 0, 'Створити новий документ можна за допомогою:\r\n');
INSERT INTO `questions` VALUES (81, 9, 1, 1, 0, 0, 'Чи можна змінити масштаб відображення символів');
INSERT INTO `questions` VALUES (82, 22, 1, 1, 0, 0, 'Як виділити графічний об''єкт');
INSERT INTO `questions` VALUES (83, 9, 1, 1, 0, 0, 'Яка комбінація клавіш використовується для вирівнювання абзацу по ширині?');
INSERT INTO `questions` VALUES (84, 22, 1, 1, 0, 0, 'Microsoft Equation - це...');
INSERT INTO `questions` VALUES (85, 9, 1, 1, 0, 0, 'Яким чином можна вивести "непечатаемые символы"на екран');
INSERT INTO `questions` VALUES (86, 22, 1, 1, 0, 0, 'Добавити в текст документу графічне зображення ...');
INSERT INTO `questions` VALUES (87, 22, 1, 1, 0, 0, 'Скільки графічних шарів має сторінка в редакторі Word');
INSERT INTO `questions` VALUES (88, 9, 1, 1, 0, 0, 'Поле "Интервал" вікна діалогу "Абзац" призначене');
INSERT INTO `questions` VALUES (89, 22, 1, 1, 0, 0, 'Для переміщення графічного об''єкту...');
INSERT INTO `questions` VALUES (90, 9, 1, 1, 0, 0, 'Якщо в діалоговому вікні "Абзац" буде встановлено прапорець "С новой страницы" то...');
INSERT INTO `questions` VALUES (91, 22, 1, 1, 0, 0, 'Редагувати формулу');
INSERT INTO `questions` VALUES (92, 7, 1, 1, 0, 0, 'Стилі - це ...');
INSERT INTO `questions` VALUES (93, 7, 1, 1, 0, 0, 'Стилі Word бувать наступного типу(ів)...');
INSERT INTO `questions` VALUES (94, 7, 1, 1, 0, 0, 'Для того, щоб застосувати стиль символу до тексту ...');
INSERT INTO `questions` VALUES (95, 7, 1, 1, 0, 0, 'Для застосування стилю абзацу ...');
INSERT INTO `questions` VALUES (96, 7, 1, 1, 0, 0, 'В списку всіх стилів на панелі інструментів "<b>Форматирование</b>" символом <b>¶</b> позначається ...');
INSERT INTO `questions` VALUES (97, 7, 1, 1, 0, 0, 'В списку всіх стилів на панелі інструментів "<b>Форматирование</b>" символом <b><u>a</u></b> позначається ...');
INSERT INTO `questions` VALUES (98, 21, 1, 1, 0, 0, 'Microsoft Word є ...');
INSERT INTO `questions` VALUES (100, 9, 1, 1, 0, 0, 'Перед тим як встановити відповідні параметри форматування тексту необхідно ...');
INSERT INTO `questions` VALUES (101, 9, 1, 1, 0, 0, 'Перед тим як встановити відповідні параметри форматування абзацу необхідно ...');
INSERT INTO `questions` VALUES (102, 9, 1, 1, 0, 0, 'Для виділення всього тесту документу використовують комбінацію клавіш ...');
INSERT INTO `questions` VALUES (103, 9, 1, 1, 0, 0, 'Для того, щоб виділити фрагмент тексту в документі необхідно');
INSERT INTO `questions` VALUES (104, 9, 1, 1, 0, 0, 'Чи можна виділити франмент тексту за допомогою клавіатури?');
INSERT INTO `questions` VALUES (105, 9, 1, 1, 0, 0, 'Клавіша клавіатури Insert в MicroSoft Word дозволяє ...');
INSERT INTO `questions` VALUES (106, 21, 1, 1, 0, 0, 'Для чого призначені панелі інструментів в WORD?');
INSERT INTO `questions` VALUES (107, 9, 1, 1, 0, 0, 'Яка комбінація клавіш використовується для вирівнювання абзацу по центру?');
INSERT INTO `questions` VALUES (108, 9, 1, 1, 0, 0, 'Чи можна задати наступні параметри форматування символу:розмір 200, колір зелений, фон чорний?');
INSERT INTO `questions` VALUES (109, 9, 1, 1, 0, 0, 'Для того, щоб вставити розрив сторінки (перехід на нову сторінку) потрібно ...');
INSERT INTO `questions` VALUES (110, 4, 1, 1, 0, 0, 'Вкажіть клавішу (комбінацію клавіш), що призначена для переходу на початок документу.');
INSERT INTO `questions` VALUES (111, 22, 1, 1, 0, 0, 'Для виходу з редактора формул потрібно');
INSERT INTO `questions` VALUES (112, 22, 1, 1, 0, 0, 'Для створення художньо-оформленого тексту використовують');
INSERT INTO `questions` VALUES (113, 4, 1, 1, 0, 0, 'Вкажіть невірну відповідь');
INSERT INTO `questions` VALUES (114, 22, 1, 1, 0, 0, 'Головне призначення редактора формул');
INSERT INTO `questions` VALUES (116, 4, 1, 1, 0, 0, 'Для зменшення рівня в багаторівневих списках використовують комбінацію клавіш');
INSERT INTO `questions` VALUES (117, 4, 1, 1, 0, 0, 'Чи можна змінити вигляд маркеру в маркерованому списку');
INSERT INTO `questions` VALUES (118, 4, 1, 1, 0, 0, 'Команда "Автозамена..." знаходиться в пункті меню');
INSERT INTO `questions` VALUES (119, 22, 1, 1, 0, 0, 'При створені художньо-оформленого тексту за допомогою WordArt дозволяється встановлювати заливку тексту');
INSERT INTO `questions` VALUES (120, 4, 1, 1, 0, 0, 'Одночасно в документі (MS Word97) можна виділити:');
INSERT INTO `questions` VALUES (121, 22, 1, 1, 0, 0, 'Для обертання графічних об''єктів редактор Word містить інструменти, що дозволяють здіснювати поворот');
INSERT INTO `questions` VALUES (122, 20, 1, 1, 0, 0, 'Чи можна виділити одночасно два несуміжних рядка в таблиці');
INSERT INTO `questions` VALUES (123, 22, 1, 1, 0, 0, 'Якщо після вибору інструменту малювання (коло, прямокутник і т.п.) двічі клацнути ''мишею'' в документі');
INSERT INTO `questions` VALUES (124, 4, 1, 1, 0, 0, 'Для автоматичного виявлення і виправлення помилок, орфографічних помилок і неправильного використання великих і малих літер можна використовувати засіб');
INSERT INTO `questions` VALUES (125, 4, 1, 1, 0, 0, 'Для збереження і швидкої вставки тексту, малюнків і інших часто використовуваних елементів використовується засіб');
INSERT INTO `questions` VALUES (126, 20, 1, 1, 0, 0, 'Чи можна розташувати текст в комірках таблиці під кутом 45 градусів?');
INSERT INTO `questions` VALUES (127, 22, 1, 1, 0, 0, 'В процесі роботи з графічним об’єктом (будь-то малюнок чи художній текст) ви можете:');
INSERT INTO `questions` VALUES (128, 20, 1, 1, 0, 0, 'Чи може комірка таблиці містити малюнок?');
INSERT INTO `questions` VALUES (129, 4, 1, 1, 0, 0, 'Для пошуку фрагменту тесту в MS Word необхіно ...');
INSERT INTO `questions` VALUES (130, 4, 1, 1, 0, 0, 'Для заміни одного фрагменту тексту на інший в документі необхіно ...');
INSERT INTO `questions` VALUES (131, 4, 1, 1, 0, 0, 'Максимальна кількість рівнів ієрархії багаторівневого списку');
INSERT INTO `questions` VALUES (132, 4, 1, 1, 0, 0, 'Виберіть невірну відповідь.');
INSERT INTO `questions` VALUES (133, 4, 1, 1, 0, 0, 'Для створення нового елементу автотекста необхідно ...');
INSERT INTO `questions` VALUES (134, 4, 1, 1, 0, 0, 'Команда <b>Формат | Список</b> призначена для ...');
INSERT INTO `questions` VALUES (135, 4, 1, 1, 0, 0, 'Для того, щоб перемістити елемент списку на більш низький рівень нумерації, необхідно помістити курсор на потрібний елемент і');
INSERT INTO `questions` VALUES (136, 4, 1, 1, 0, 0, 'Для того, щоб перемістити елемент списку на більш високий рівень нумерації, необхідно помістити курсор на потрібний елемент і');
INSERT INTO `questions` VALUES (137, 4, 1, 1, 0, 0, 'Вкажіть клавішу (комбінацію клавіш), що призначена для переходу на кінець документу.');
INSERT INTO `questions` VALUES (138, 4, 1, 1, 0, 0, 'Весь текс у документі можна виділити за довологою комбінації клавіш');
INSERT INTO `questions` VALUES (139, 20, 1, 1, 0, 0, 'Як вірно видалити лише комірку таблиці?');
INSERT INTO `questions` VALUES (140, 20, 1, 1, 0, 0, 'Як вірно видалити повністю стовпчик таблиці?');
INSERT INTO `questions` VALUES (141, 4, 1, 1, 0, 0, 'Найбільшу швидкість роботи з документом дає режим:');
INSERT INTO `questions` VALUES (142, 20, 1, 1, 0, 0, 'Як вірно видалити повністю рядок таблиці?');
INSERT INTO `questions` VALUES (143, 4, 1, 1, 0, 0, 'Яка з клавіатурних комбінацій не здійснює переміщення по документу:');
INSERT INTO `questions` VALUES (144, 4, 1, 1, 0, 0, 'Перейти з одного вікна в інше можна за допомогою:');
INSERT INTO `questions` VALUES (145, 4, 1, 1, 0, 0, 'Яким з перерахованих способів не можна виділити абзац повністю:');
INSERT INTO `questions` VALUES (146, 4, 1, 1, 0, 0, 'В якому випадку кнопка <b>Вставить</b> панелі інструментів та пункт меню <b>Правка | Вставить</b> буває недоступним');
INSERT INTO `questions` VALUES (147, 4, 1, 1, 0, 0, 'Яка з клавіатурних комбінацій не відноситься до копіювання фрагменту тексту');
INSERT INTO `questions` VALUES (148, 4, 1, 1, 0, 0, 'Для чого не використовується засіб <b>Автозаміна</b>');
INSERT INTO `questions` VALUES (149, 4, 1, 1, 0, 0, 'Засіб <b>Автотекст</b> крім швидкої вставки фрагментів тексту дає можливість використовувати і малюнки');
INSERT INTO `questions` VALUES (150, 4, 1, 1, 0, 0, 'Нумерований список можна перетворити на маркерований:');
INSERT INTO `questions` VALUES (151, 4, 1, 1, 0, 0, 'За допомогою яких клавіатурних комбінацій можна перетворити нумерований список на багаторівневий');
INSERT INTO `questions` VALUES (152, 20, 1, 1, 0, 0, 'Як вірно вставляти рядок в таблицю?');
INSERT INTO `questions` VALUES (153, 20, 1, 1, 0, 0, 'Як вірно вставити стовпчик в таблицю?');
INSERT INTO `questions` VALUES (154, 20, 1, 1, 0, 0, 'Як вірно об''єдна декілька комірок таблиці в одну?');
INSERT INTO `questions` VALUES (155, 7, 1, 1, 0, 0, 'Де розміщені колонтитули в документі?');
INSERT INTO `questions` VALUES (156, 7, 1, 1, 0, 0, 'Для чого призначені колонтитули?');
INSERT INTO `questions` VALUES (157, 7, 1, 1, 0, 0, 'Для зміни колонтитулів необхідно вибрати команду ...');
INSERT INTO `questions` VALUES (158, 7, 1, 1, 0, 0, 'Чи дозволя Word вставити номер сторінки?');
INSERT INTO `questions` VALUES (159, 7, 1, 1, 0, 0, 'Як можна змінити параметри форматування стилю?');
INSERT INTO `questions` VALUES (160, 7, 1, 1, 0, 0, 'Як можна створити новий стиль?');
INSERT INTO `questions` VALUES (161, 7, 1, 1, 0, 0, 'Як можна скопіювати параметри форматування одного стилю в новий?');
INSERT INTO `questions` VALUES (162, 7, 1, 1, 0, 0, 'Перед тим як створювати зміст документу необхідно ...');
INSERT INTO `questions` VALUES (163, 7, 1, 1, 0, 0, 'Для поновлення змісту докумету ...');
INSERT INTO `questions` VALUES (164, 20, 1, 1, 0, 0, 'Як вивести на екран панель інструментів "Таблицы и границы"');
INSERT INTO `questions` VALUES (165, 20, 1, 1, 0, 0, 'Чи можна відсортувати данні в таблиці від Я до А');
INSERT INTO `questions` VALUES (166, 20, 1, 1, 0, 0, 'Чи можна стерти лінії таблиці в Word');
INSERT INTO `questions` VALUES (167, 20, 1, 1, 0, 0, 'Яка клавіша використовується для додання нового рядка в таблицю?');
INSERT INTO `questions` VALUES (168, 20, 1, 1, 0, 0, 'Чи можна будь-який набраний текст перетворити в таблицю');
INSERT INTO `questions` VALUES (169, 20, 1, 1, 0, 0, 'Щоб видалити комірку таблиці потрібно');
INSERT INTO `questions` VALUES (170, 20, 1, 1, 0, 0, 'Таблиця це...');
INSERT INTO `questions` VALUES (171, 20, 1, 1, 0, 0, 'Для роботи з таблицями в Word використовується панель інструментів');
INSERT INTO `questions` VALUES (172, 20, 1, 1, 0, 0, 'Сортування даних в таблиці дозволяється здійснювати одночасно за');
INSERT INTO `questions` VALUES (173, 22, 1, 1, 0, 0, 'Для встановлення параметрів графічних об''єктів призначене діалогове вікно');
INSERT INTO `questions` VALUES (174, 22, 1, 1, 0, 0, 'Растрове графічне зображення є');
INSERT INTO `questions` VALUES (175, 22, 1, 1, 0, 0, 'Векторне графічне зображення є');
INSERT INTO `questions` VALUES (176, 22, 1, 1, 0, 0, 'Команда <b>Группировка</b> панелі інструментів <b>Рисование</b> призначена для');
INSERT INTO `questions` VALUES (177, 22, 1, 1, 0, 0, 'Команда <b>Разгруппировать</b> панелі інструментів <b>Рисование</b> призначена для');
INSERT INTO `questions` VALUES (178, 22, 1, 1, 0, 0, 'Чи можна в графічний об''єкт, що був створений за допомогою команди <b>Прямоугольник</b> панелі інструментів <b>Рисование</b> додати текст?');
INSERT INTO `questions` VALUES (179, 22, 1, 1, 0, 0, 'Для запуску редактора формул можна скористатись комбінацією клавіш..');
INSERT INTO `questions` VALUES (180, 22, 1, 1, 0, 0, 'Кнопка "вибор объектов" на панелі інструментів "Рисование" призначена');
INSERT INTO `questions` VALUES (181, 22, 1, 1, 0, 0, 'Чи можна до об''єкту WordArt застосувати об''єми');
INSERT INTO `questions` VALUES (182, 22, 1, 1, 0, 0, 'Для вставки в документ власної фотографії ...');
INSERT INTO `questions` VALUES (183, 7, 1, 1, 0, 0, 'Чи можна ввести в поле колонтитулів довільний текст?');
INSERT INTO `questions` VALUES (184, 7, 1, 1, 0, 0, 'Чи можна ввести в поле колонтитулів малюнок?');
INSERT INTO `questions` VALUES (185, 7, 1, 1, 0, 0, 'Як вийти з режиму введення (редагування) колонтитулів?');
INSERT INTO `questions` VALUES (186, 7, 1, 1, 0, 0, 'Чи можна в зміст документу вивести лише заголовки двох рівнів, якщо у Вас в документі 4 рівні заголовків');
INSERT INTO `questions` VALUES (187, 7, 1, 1, 0, 0, 'Чи можна розташувати номер сторінки нагорі листка по центру?');
INSERT INTO `questions` VALUES (188, 24, 1, 1, 0, 0, 'Основне призначення Excel це ...');
INSERT INTO `questions` VALUES (189, 24, 1, 1, 0, 0, 'Дані в Excel зберігаються у вигляді ...');
INSERT INTO `questions` VALUES (190, 24, 1, 1, 0, 0, 'Елементарною одиницею в Excel є ...');
INSERT INTO `questions` VALUES (191, 24, 1, 1, 0, 0, 'Документи Excel називають ...');
INSERT INTO `questions` VALUES (192, 24, 1, 1, 0, 0, 'Яка максимальна кількість стовпців і рядків в Excel 97?');
INSERT INTO `questions` VALUES (193, 24, 1, 1, 0, 0, 'Для переходу до наступної книги Excel натискають');
INSERT INTO `questions` VALUES (194, 24, 1, 1, 0, 0, 'Для переходу до попередньої книги Excel натискають');
INSERT INTO `questions` VALUES (195, 24, 1, 1, 0, 0, 'Натиснення комбінації клавіш Ctrl+PgDn в Excel призведе до ...');
INSERT INTO `questions` VALUES (196, 24, 1, 1, 0, 0, 'Натиснення комбінації клавіш Ctrl+PgUp в Excel призведе до ...');
INSERT INTO `questions` VALUES (197, 24, 1, 1, 0, 0, 'Для того, щоб виділити в Excel окремий лист необхідно …');
INSERT INTO `questions` VALUES (198, 24, 1, 1, 0, 0, 'Для того, щоб виділити в Excel два і більше суміжних листи необхідно …');
INSERT INTO `questions` VALUES (199, 24, 1, 1, 0, 0, 'Для того, щоб виділити в Excel два і більше несуміжних листи необхідно …');
INSERT INTO `questions` VALUES (200, 24, 1, 1, 0, 0, 'Для того, щоб виділити в Excel всі листи необхідно …');
INSERT INTO `questions` VALUES (201, 24, 1, 1, 0, 0, 'Чи можна перейменувати ім’я листа?');
INSERT INTO `questions` VALUES (202, 24, 1, 1, 0, 0, 'Для того, щоб добавити один лист в Excel, необхідно ...');
INSERT INTO `questions` VALUES (203, 24, 1, 1, 0, 0, 'Щоб вставити декілька листів в Excel, необхідно ...');
INSERT INTO `questions` VALUES (204, 24, 1, 1, 0, 0, 'Як в Excel задати кількість листів, що включаються в нову книгу при її створенні?');
INSERT INTO `questions` VALUES (205, 24, 1, 1, 0, 0, 'Чи можна переміщати виділені листи в межах поточної книги Excel?');
INSERT INTO `questions` VALUES (206, 24, 1, 1, 0, 0, 'Як видалити лист в Excel?');
INSERT INTO `questions` VALUES (207, 24, 1, 1, 0, 0, 'Чи можна відмінити видалення, переміщення, копіювання листів в Excel?');
INSERT INTO `questions` VALUES (208, 24, 1, 1, 0, 0, 'Для того, щоб перейменувати ім’я листа в Excel потрібно ...');
INSERT INTO `questions` VALUES (209, 24, 1, 1, 0, 0, 'Щоб скопіювати лист Excel в межах однієї книги за допомогою миші потрібно ...');
INSERT INTO `questions` VALUES (210, 28, 1, 1, 0, 0, 'З якого символу починається введення функції в рядку формул');
INSERT INTO `questions` VALUES (211, 28, 1, 1, 0, 0, 'За допомогою якої команди здійснюється запуск Майстра функцій');
INSERT INTO `questions` VALUES (212, 28, 1, 1, 0, 0, 'Скільки рівнів вкладення допускає функція ЕСЛИ');
INSERT INTO `questions` VALUES (213, 25, 1, 1, 0, 0, 'Що таке активна комірка?');
INSERT INTO `questions` VALUES (214, 25, 1, 1, 0, 0, 'Як змінити вміст комірки в Excel?');
INSERT INTO `questions` VALUES (215, 25, 1, 1, 0, 0, 'Для чого призначений рядок формул у вікні MS Excel ?');
INSERT INTO `questions` VALUES (216, 25, 1, 1, 0, 0, 'За допомогою якої команди в Excel можна здійснити форматування даних комірки ?');
INSERT INTO `questions` VALUES (217, 25, 1, 1, 0, 0, 'Чи можна в Excel вирівняти текст у комірці по горизонталі?');
INSERT INTO `questions` VALUES (218, 25, 1, 1, 0, 0, 'Чи можна в Excel вирівняти текст у комірці по вертикалі?');
INSERT INTO `questions` VALUES (219, 25, 1, 1, 0, 0, 'Як очистити вміст однієї комірки в Excel?');
INSERT INTO `questions` VALUES (220, 24, 1, 1, 0, 0, 'Яке призначення табличного редактора Microsoft Excel?');
INSERT INTO `questions` VALUES (222, 25, 1, 1, 0, 0, 'Чи може в Excel вміст комірки бути нахилений під кутом до горизонту?');
INSERT INTO `questions` VALUES (223, 25, 1, 1, 0, 0, 'В табличному редакторі Excel, щоб для комірки встановити параметр  <b>переносить по словам </b> потрібно');
INSERT INTO `questions` VALUES (224, 25, 1, 1, 0, 0, 'Для виклику діалогового вікна <b>Формат ячеек</b> в Excel потрібно натиснути');
INSERT INTO `questions` VALUES (225, 25, 1, 1, 0, 0, '<b>Маркер заповнення</b> в Excel використовується');
INSERT INTO `questions` VALUES (226, 25, 1, 1, 0, 0, 'При автоматичному заповненні крок послідовності формують');
INSERT INTO `questions` VALUES (227, 25, 1, 1, 0, 0, 'Чи можна затати колір границь?');
INSERT INTO `questions` VALUES (228, 25, 1, 1, 0, 0, 'Чи можна задати розмір границі?');
INSERT INTO `questions` VALUES (229, 25, 1, 1, 0, 0, 'Якщо добавити новий рядок, то він розміститься');
INSERT INTO `questions` VALUES (230, 25, 1, 1, 0, 0, 'Якщо добавити новий стовчик, то він розміcтиться');
INSERT INTO `questions` VALUES (231, 25, 1, 1, 0, 0, 'При вставці комірок зсув відбувається');
INSERT INTO `questions` VALUES (232, 25, 1, 1, 0, 0, 'Чи можна в Excel змінювати ширину стовпчика?');
INSERT INTO `questions` VALUES (233, 25, 1, 1, 0, 0, 'Чи можна в Ecxel змінювати висоту рядка?');
INSERT INTO `questions` VALUES (234, 25, 1, 1, 0, 0, 'Чи можна в Excel текст в одній комірці оформити  різними кольорами?');
INSERT INTO `questions` VALUES (237, 28, 1, 1, 0, 0, 'Скільки рівнів вкладеності вформулах допускає MS Excel');
INSERT INTO `questions` VALUES (238, 28, 1, 1, 0, 0, 'Чи можуть бути відсутні аргументи при обчисленні значення функції');
INSERT INTO `questions` VALUES (239, 28, 1, 1, 0, 0, 'Якою може бути кількість аргументів, для яких необхідно визначити суму в функції СУММ');
INSERT INTO `questions` VALUES (240, 28, 1, 1, 0, 0, 'Якщо аргументом функції СУММ є массив чи посилання, то...');
INSERT INTO `questions` VALUES (241, 28, 1, 1, 0, 0, 'Що відбудеться, якщо при введенні формули пропустити знак "="');
INSERT INTO `questions` VALUES (242, 28, 1, 1, 0, 0, 'В якій категорії знаходиться функція И');
INSERT INTO `questions` VALUES (243, 28, 1, 1, 0, 0, 'В який із категорій знаходиться функція СЧЁТЕСЛИ');
INSERT INTO `questions` VALUES (244, 28, 1, 1, 0, 0, 'Значення які використовуються для обчислень в функціях називаються');
INSERT INTO `questions` VALUES (245, 28, 1, 1, 0, 0, 'Чи однакові правила синтаксису для всіх функцій');
INSERT INTO `questions` VALUES (246, 28, 1, 1, 0, 0, 'Як записуються аргументи функції?');
INSERT INTO `questions` VALUES (247, 28, 1, 1, 0, 0, 'Чи можуть бути аргументи функції формулами');
INSERT INTO `questions` VALUES (248, 28, 1, 1, 0, 0, 'Які функції називаються вкладеними');
INSERT INTO `questions` VALUES (249, 28, 1, 1, 0, 0, ' Які функції містить категорія “10 недавно использовавшихся”');
INSERT INTO `questions` VALUES (250, 28, 1, 1, 0, 0, 'Для вставки якої функції в MS Excel є спеціальна кнопка на панелі інструментів');
INSERT INTO `questions` VALUES (251, 28, 1, 1, 0, 0, 'Чим визначається логічний вираз');
INSERT INTO `questions` VALUES (252, 28, 1, 1, 0, 0, 'Чи можна в функції ЕСЛИ використовувати текстові аргументи');
INSERT INTO `questions` VALUES (253, 28, 1, 1, 0, 0, 'Функція СРЗНАЧ...');
INSERT INTO `questions` VALUES (254, 28, 1, 1, 0, 0, 'Чи можна застосовувати в якості аргументів функції імена комірок');
INSERT INTO `questions` VALUES (255, 26, 1, 1, 0, 0, 'Посилання...');
INSERT INTO `questions` VALUES (256, 26, 1, 1, 0, 0, 'Вкажіть на формулу у якій використано помилкове посилання');
INSERT INTO `questions` VALUES (257, 26, 1, 1, 0, 0, 'Результатом формули =СУММ(B3:M3 В2:В8), буде:');
INSERT INTO `questions` VALUES (258, 26, 1, 1, 0, 0, 'Для обчислення виразу 23+(18-16)<sup>3</sup>+4•6 використовується формула:');
INSERT INTO `questions` VALUES (260, 26, 1, 1, 0, 0, 'Виберіть з наведеного переліку вірне посилання');
INSERT INTO `questions` VALUES (261, 26, 1, 1, 0, 0, 'Посилання Лист1:Лист3!A1 вказує');
INSERT INTO `questions` VALUES (262, 26, 1, 1, 0, 0, 'Комірка <b>А1</b> містить значення <b>1</b>, комірка <b>А2</b> – значення <b>2</b>. В комірку <b>А3</b> ввели формулу: <b>=А1>А2</b>. Результатом виконання даної формули буде:');
INSERT INTO `questions` VALUES (263, 26, 1, 1, 0, 0, 'Стиль посилань R1C1 може використовуватись...');
INSERT INTO `questions` VALUES (264, 26, 1, 1, 0, 0, 'Відносні посилання...');
INSERT INTO `questions` VALUES (265, 26, 1, 1, 0, 0, 'Виберіть вірне абсолютне посилання на комірку');
INSERT INTO `questions` VALUES (266, 26, 1, 1, 0, 0, 'формула <b>=R5C3-R6C4</b> аналогічна формулі');
INSERT INTO `questions` VALUES (267, 26, 1, 1, 0, 0, 'формула <b>=A2+(B3-B4)*A4^A3<b>');
INSERT INTO `questions` VALUES (268, 26, 1, 1, 0, 0, 'формула <b>=А3^1/3</b>');
INSERT INTO `questions` VALUES (269, 26, 1, 1, 0, 0, 'Діапазону комірок А1:А12 присвоєно ім''я <b>Місяці</b>, діапазону комірок А7:F7 присвоєно ім''я <b>Продаж</b>. Формула <b>=(Місяці Продаж)</b> поверне значення');
INSERT INTO `questions` VALUES (270, 26, 1, 1, 0, 0, 'для об''єднання послідовностей символів в одну послідовність використовується оператор');
INSERT INTO `questions` VALUES (271, 26, 1, 1, 0, 0, 'для представлення оператора ± в Excel використовується оператор');
INSERT INTO `questions` VALUES (272, 26, 1, 1, 0, 0, 'оператор "унарний мінус" використовується для');
INSERT INTO `questions` VALUES (273, 26, 1, 1, 0, 0, 'для поєднання кількох посилань в одне використовується оператор');
INSERT INTO `questions` VALUES (274, 26, 1, 1, 0, 0, 'Слово або рядок, що представляють комірку, діапазон комірок, формулу або константу називається');
INSERT INTO `questions` VALUES (275, 26, 1, 1, 0, 0, 'Знак, що задає тип обчислення в формулі називається');
INSERT INTO `questions` VALUES (276, 26, 1, 1, 0, 0, 'для створення посилання на діапазон комірок на декількох суміжних робочих листах використовуються');
INSERT INTO `questions` VALUES (277, 28, 1, 1, 0, 0, 'Якщо комірка А1=10, а А2=2 то формула <b>=ЕСЛИ(А1>A2)</b> поверне');
INSERT INTO `questions` VALUES (278, 28, 1, 1, 0, 0, 'Якщо в комірці D7 знаходиться <b>0</b>,то формула <b>=НЕ(D7)</b> повертає...');
INSERT INTO `questions` VALUES (279, 28, 1, 1, 0, 0, 'Якщо в комірці A7 знаходиться <b>будьяке додатнє чи від''ємне число</b>, то формула <b>=НЕ(D7)</b> повертає...');
INSERT INTO `questions` VALUES (280, 25, 1, 1, 0, 0, 'Для того, щоб в Excel виділити прямокутний діапазон суміжних комірок, наприклад В2:Е5 потрібно...');
INSERT INTO `questions` VALUES (281, 28, 1, 1, 0, 0, 'Якщо в комірці А1 значення ИСТИНА,  в комірці А2 - ЛОЖЬ, а в комірці А3 - ИСТИНА, то результатом виконання формули <b>=И(А1:А3)</b> буде');
INSERT INTO `questions` VALUES (282, 28, 1, 1, 0, 0, 'Якщо в комірці А1 значення ИСТИНА, в комірці А2 - ИСТИНА, і в комірці А3 - ИСТИНА, то результатом виконання формули <b>=И(А1:А3) </b>буде');
INSERT INTO `questions` VALUES (283, 25, 1, 1, 0, 0, 'За допомогою яких клавіш клавіатури можна виділити прямокутний діапазон комірок в Excel?');
INSERT INTO `questions` VALUES (284, 28, 1, 1, 0, 0, 'Якщо в комірці D8 знаходиться число більше 5, то формула <b>=НЕ(D8>5)</b> поветає значення');
INSERT INTO `questions` VALUES (285, 25, 1, 1, 0, 0, 'Для того, щоб в Excel виділити  діапазон не суміжних комірок  потрібно...');
INSERT INTO `questions` VALUES (286, 28, 1, 1, 0, 0, 'Якщо в комірці А1 знаходиться число 45, в комірці А2 число 345, в комірці А3 знаходиться текст "Підсумок", то формула <b>=СЧЁТ(А1:А3)</b> повертає значення');
INSERT INTO `questions` VALUES (287, 28, 1, 1, 0, 0, 'Якщо в комірці А1 знаходиться число 45, в комірці А2 число 345, в комірці А3 знаходиться текст "Підсумок", то формула <b>=СЧЁТ(А1:А3;2) </b>повертає значення');
INSERT INTO `questions` VALUES (288, 28, 1, 1, 0, 0, 'Якщо комірки A1:A3 мають ім''я Бали і містять числа 10, 7, 10,  то формула <b>=СРЗНАЧ(A1:A3) </b> повертає значення');
INSERT INTO `questions` VALUES (289, 28, 1, 1, 0, 0, 'Якщо комірки A1:A3 мають ім''я Бали і містять числа 10, 7, 10,  то формула <b>=СРЗНАЧ(Бали) </b> повертає значення');
INSERT INTO `questions` VALUES (290, 30, 1, 1, 0, 0, 'в діапазоні комірок А1:С3 зберігається масив:<table width="20%" border="1"><tr bgcolor="#CCCCCC"><b><td> </td><td>A</td><td>B</td>\r\n<td>C</td></b></tr><tr><td bgcolor="#CCCCCC">1</td><td>2</td><td>3</td><td>4</td></tr><tr><td bgcolor="#CCCCCC">2</td>\r\n<td>1</td><td>4</td><td>2</td></tr><tr><td bgcolor="#CCCCCC">3</td><td>5</td><td>0</td><td>2</td></tr></table>визначте в якому із запропонованих варіантів масив заданий невірно:');
INSERT INTO `questions` VALUES (291, 30, 1, 1, 0, 0, 'При введені формули масиву, що повертає одне значення, для  закінчення вводу формули потрібно натиснути');
INSERT INTO `questions` VALUES (292, 30, 1, 2, 0, 0, 'За допомогою функції МОПРЕД обраховують визначник матриці:<table width="20%" border="1"><tr><td>1</td><td>1</td><td>1</td></tr><tr><td>1</td> <td>1</td><td>1</td></tr><tr><td>1</td><td>1</td><td>1</td></tr><tr><td>1</td><td>1</td><td>1</td></tr></table>результатом буде:');
INSERT INTO `questions` VALUES (293, 30, 1, 1, 0, 0, 'При використанні у формулі функції МОПРЕД завершувати введення формули потрібно');
INSERT INTO `questions` VALUES (294, 30, 1, 1, 0, 0, 'При використанні в якості аргументів масиву з неоднаковою кількістю рядків і стовпців функція МОПРЕД поверне');
INSERT INTO `questions` VALUES (295, 30, 1, 1, 0, 0, 'Якщо формулу, що містить  функцію МОПРЕД, ввести <b>не</b> як формулу масиву, то результатом буде:');
INSERT INTO `questions` VALUES (296, 30, 1, 1, 0, 0, 'Формули масиву ');
INSERT INTO `questions` VALUES (297, 30, 1, 2, 0, 0, 'Чи можна знайти добуток матриць А на В:<table width="13%" border="1"><tr><td width="21%" bordercolor="#000000"><div align="center"><b>A</b></div></td><td width="8%"><div align="center"><b></b></div></td><td colspan="3" bordercolor="#000000"><div align="center"><b>B</b></div></td></tr><tr> <td width="21%" bordercolor="#000000">2</td><td width="8%"> </td><td width="18%" bordercolor="#000000">1</td><td width="22%" bordercolor="#000000">2</td><td width="31%" bordercolor="#000000">3</td></tr><tr><td width="21%" bordercolor="#000000">3</td><td width="8%"> </td><td width="18%" bordercolor="#000000">4</td><td width="22%" bordercolor="#000000">5</td><td width="31%" bordercolor="#000000">6</td></tr><tr><td width="21%" bordercolor="#000000">4</td><td width="8%"> </td><td width="18%" bordercolor="#000000">7</td><td width="22%" bordercolor="#000000">8</td><td width="31%" bordercolor="#000000">9</td></tr></table>');
INSERT INTO `questions` VALUES (298, 30, 1, 1, 0, 0, 'Яка функція використовується для сумування матриць?');
INSERT INTO `questions` VALUES (299, 30, 1, 2, 0, 0, 'В діапазон комірок F1:H2 введена формула =МУМНОЖ(A1:B2;C1:D3), після чого було натиснено Ctrl+Shift+Enter. Однак результатом була помилка:<table width="38%" border="1" bordercolor="#000000"><tr bgcolor="#CCCCCC"><td width="3%" bgcolor="#CCCCCC"> </td><td width="5%"><div align="center"><b>A </b></div></td><td width="4%"><div align="center"><b>B</b></div></td><td width="4%"><div align="center"><b>C</b></div></td><td width="4%"><div align="center"><b>D</b></div></td><td width="4%"><div align="center"><b>E</b></div></td><td width="18%"><div align="center"><b>F</b></div></td><td width="18%"><div align="center"><b>G</b></div></td><td width="40%"><div align="center"><b>H</b></div></td></tr><tr><td width="3%" bgcolor="#CCCCCC"><div align="right"><b>1</b></div></td><td width="5%"><div align="right">1</div></td><td width="4%"><div align="right">2</div></td><td width="4%"><div align="right">1</div></td><td width="4%"><div align="right">2</div></td><td width="4%"> </td><td width="18%"><div align="right">#ЗНАЧ!</div></td><td width="18%"><div align="right">#ЗНАЧ!</div></td><td width="40%"><div align="right">#ЗНАЧ!</div></td></tr><tr><td width="3%" bgcolor="#CCCCCC"><div align="right"><b>2</b></div></td><td width="5%"><div align="right">4</div></td><td width="4%"><div align="right">5</div></td><td width="4%"><div align="right">2</div></td><td width="4%"><div align="right">2</div></td><td width="4%"> </td><td width="18%"><div align="right">#ЗНАЧ!</div></td><td width="18%"><div align="right">#ЗНАЧ!</div></td><td width="40%"><div align="right">#ЗНАЧ!</div></td></tr><tr><td width="3%" bgcolor="#CCCCCC"><div align="right"><b>3</b></div></td><td width="5%"> </td><td width="4%"> </td><td width="4%"><div align="right">3</div></td><td width="4%"><div align="right">2</div></td><td> </td><td width="18%"> </td><td width="18%"> </td><td width="40%"> </td></tr></table>Чому виникла помилка?');
INSERT INTO `questions` VALUES (300, 29, 1, 1, 0, 0, 'Діаграма це...');
INSERT INTO `questions` VALUES (301, 29, 1, 1, 0, 0, 'Excel використовує ...');
INSERT INTO `questions` VALUES (302, 29, 1, 1, 0, 0, 'Вісь Х називають...');
INSERT INTO `questions` VALUES (303, 29, 1, 1, 0, 0, 'Якщо діапазон, виділений для побудови діаграми містить рядків більше ніж стовпців, то Excel розташує ряди даних по');
INSERT INTO `questions` VALUES (304, 29, 1, 1, 0, 0, 'Якщо діапазон, виділений для побудови діаграми містить рядків менше ніж стовпців, то ...');
INSERT INTO `questions` VALUES (305, 29, 1, 1, 0, 0, 'Щоб перемістити діаграму потрібно...');
INSERT INTO `questions` VALUES (306, 29, 1, 1, 0, 0, 'Відформатувати діаграму можна за допомогою панелі інструментів');
INSERT INTO `questions` VALUES (307, 29, 1, 1, 0, 0, 'Excel будує графік довільної функції');
INSERT INTO `questions` VALUES (308, 29, 1, 1, 0, 0, 'Серед запропонованого списку виберіть той елемент діаграми, який допомагає визначити точне значення маркерів');
INSERT INTO `questions` VALUES (309, 29, 1, 1, 0, 0, 'Настроїти зовнішній вигляд об''ємної діаграми можна за допомогою комади');
INSERT INTO `questions` VALUES (310, 29, 1, 1, 0, 0, 'Для побудови графіка функції викоористовують тип діаграми');
INSERT INTO `questions` VALUES (311, 29, 1, 1, 0, 0, 'Для побудови графіка квадратичної функції, що задана таблицею:<br>\r\n<IMG SRC="/Labs/Excel/Laba5/zavd.jpg"><br>\r\nпотрібно виділити діапазон:\r\n');
INSERT INTO `questions` VALUES (312, 29, 1, 1, 0, 0, 'Чи можна в Excel будувати діаграму по даних, які знаходяться в іншій книзі');
INSERT INTO `questions` VALUES (313, 29, 1, 1, 0, 0, 'Ряд даних це...');
INSERT INTO `questions` VALUES (314, 29, 1, 1, 0, 0, 'Від чого залежить вигляд маркера на діаграмі?');
INSERT INTO `questions` VALUES (315, 29, 1, 1, 0, 0, 'Мітки стовпців на діаграмі це...');
INSERT INTO `questions` VALUES (316, 29, 1, 1, 0, 0, 'Легенда містить...');
INSERT INTO `questions` VALUES (317, 29, 1, 1, 0, 0, 'Діаграма з теоретичних відомостей має...');
INSERT INTO `questions` VALUES (318, 29, 1, 1, 0, 0, 'В діаграмі з теоретичних відомостей ряди даних розміщені по ...');
INSERT INTO `questions` VALUES (319, 29, 1, 1, 0, 0, 'Джерело даних для діаграми вказується на ...');
INSERT INTO `questions` VALUES (320, 29, 1, 1, 0, 0, 'Чи можна розташувати підписи на діаграмі під кутом?');
INSERT INTO `questions` VALUES (321, 29, 1, 1, 0, 0, 'Діапазон даних діаграми це...');
INSERT INTO `questions` VALUES (322, 30, 1, 2, 0, 0, 'В діапазоні комірок <b>А1:В2</b> введено матрицю <b>A</b>, в діапазоні комірок <b>С1:D2</b> введено матрицю <b>B</b>. Для обчислення суми матриць, в діапазон комірок <b>E1:F2</b> ввели наступнну формулу: <b>=МСУММ(A1:B2;C1:D2)</b>. Результатом була наступна помилка:<table width="21%" border="1" bordercolor="#000000">\r\n  <tr bgcolor="#CCCCCC"> \r\n    <td width="8%"> \r\n      <div align="center"></div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="center">A</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="center">B</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="center">C</div>\r\n    </td>\r\n    <td width="9%"> \r\n      <div align="center">D</div>\r\n    </td>\r\n    <td width="10%"> \r\n      <div align="center">E</div>\r\n    </td>\r\n    <td width="49%"> \r\n      <div align="center">F</div>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor="#CCCCCC" width="8%"> \r\n      <div align="center">1</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="right">1</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="right">1</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="right">2</div>\r\n    </td>\r\n    <td width="9%"> \r\n      <div align="right">2</div>\r\n    </td>\r\n    <td width="10%"> \r\n      <div align="right">#ИМЯ?</div>\r\n    </td>\r\n    <td width="49%"> \r\n      <div align="right">#ИМЯ?</div>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor="#CCCCCC" width="8%"> \r\n      <div align="center">2</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="right">1</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="right">1</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="right">2</div>\r\n    </td>\r\n    <td width="9%"> \r\n      <div align="right">2</div>\r\n    </td>\r\n    <td width="10%"> \r\n      <div align="right">#ИМЯ?</div>\r\n    </td>\r\n    <td width="49%"> \r\n      <div align="right">#ИМЯ?</div>\r\n    </td>\r\n  </tr>\r\n</table>\r\nЧому виникла помилка?');
INSERT INTO `questions` VALUES (323, 30, 1, 2, 0, 0, 'Перемножається дві матриці: А (діапазон А1:С2) та В (діапазон D1:E3): <table width="14%" border="1" bordercolor="#000000" height="109"><tr bgcolor="#CCCCCC"><td> </td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td></tr><tr><td bgcolor="#CCCCCC">1</td><td>1</td><td>2</td><td>3</td><td>3</td><td>2</td></tr><tr><td bgcolor="#CCCCCC">2</td><td>2</td><td>2</td><td>2</td><td>5</td><td>4</td></tr><tr><td bgcolor="#CCCCCC">3</td><td> </td><td> </td><td> </td><td>3</td><td>3</td></tr>\r\n</table>Якої розмірності потрібно виділити діапазон комірок для отримання результату множення?');
INSERT INTO `questions` VALUES (324, 30, 1, 2, 0, 0, 'В наступній таблиці потрібно обрахувати суму добутків за рядками.\r\n<table width="14%" border="1" bordercolor="#000000" height="109">\r\n<tr bgcolor="#CCCCCC"><td> </td><td>A</td><td>B</td></tr><tr><td bgcolor="#CCCCCC">1</td><td>1</td><td>2</td></tr><tr><td bgcolor="#CCCCCC">2</td><td>2</td><td>2</td></tr>\r\n</table>\r\nДля цього потрібно використати формулу:');
INSERT INTO `questions` VALUES (325, 30, 1, 2, 0, 0, 'Задана таблиця:\r\n<table width="15%" border="1" height="135" cellspacing="1" bordercolor="#000099"><tr bgcolor="#CCCCCC"><td> </td><td>A</td><td>B</td></tr><tr><td bgcolor="#CCCCCC">1</td><td>2</td><td>1</td></tr><tr><td bgcolor="#CCCCCC">2</td><td>2</td><td>2</td></tr><tr><td bgcolor="#CCCCCC">3</td><td>3</td><td>3</td></tr><tr><td bgcolor="#CCCCCC">4</td><td>3</td><td>4</td></tr><tr><td bgcolor="#CCCCCC">5</td><td>-1</td><td> </td></tr></table> В комірці А5 введена формула {=СУММ(A1:A4-B1:B4)}. Дана формула обчислює:');
INSERT INTO `questions` VALUES (326, 30, 1, 2, 0, 0, 'Перемножається дві матриці: А (діапазон А1:С3) та В (діапазон D1:E4):<table width="18%" border="1" height="159" cellspacing="1" bordercolor="#000099"><tr bgcolor="#CCCCCC"><td width="25%">&nbsp;</td><td width="26%">A</td><td width="26%">B</td><td width="23%">C</td><td width="23%">D</td>\r\n<td width="26%">E</td></tr><tr><td bgcolor="#CCCCCC" width="25%">1</td><td width="26%">1</td><td width="26%">2</td><td width="23%">1</td><td width="23%">2</td><td width="26%">1</td></tr><tr><td bgcolor="#CCCCCC" width="25%">2</td><td width="26%">2</td><td width="26%">3</td><td width="23%">2</td><td width="23%">2</td><td width="26%">2</td></tr><tr><td bgcolor="#CCCCCC" width="25%">3</td><td width="26%">3</td><td width="26%">4</td><td width="23%">3</td><td width="23%">3</td><td width="26%">3</td></tr><tr><td bgcolor="#CCCCCC" width="25%">4</td><td width="26%">&nbsp;</td><td width="26%">&nbsp;</td><td width="23%">&nbsp;</td><td width="23%">3</td><td width="26%">4</td></tr></table>\r\nЯкої розмірності потрібно виділити діапазон комірок для отримання результату множення?');
INSERT INTO `questions` VALUES (327, 30, 1, 2, 0, 0, 'Чи можна знайти добуток матриць А (A1:C3) на В (E1:E3): <table width="18%" border="1" height="159" cellspacing="1" bordercolor="#000099"><tr bgcolor="#CCCCCC"><td width="25%">&nbsp;</td><td width="26%">A</td><td width="26%">B</td><td width="23%">C</td><td width="23%">D</td><td width="26%">E</td></tr><tr><td bgcolor="#CCCCCC" width="25%">1</td><td width="26%">1</td><td width="26%">2</td><td width="23%">1</td><td width="23%">&nbsp;</td><td width="26%">1</td></tr><tr><td bgcolor="#CCCCCC" width="25%">2</td><td width="26%">2</td><td width="26%">3</td><td width="23%">2</td><td width="23%">&nbsp;</td><td width="26%">2</td></tr><tr><td bgcolor="#CCCCCC" width="25%">3</td><td width="26%">3</td><td width="26%">4</td><td width="23%">3</td><td width="23%">&nbsp;</td><td width="26%">3</td></tr></table>');
INSERT INTO `questions` VALUES (328, 30, 1, 2, 0, 0, 'За допомогою функції МОПРЕД знаходять визначник матриці А1:С3: <table width="18%" border="1" height="159" cellspacing="1" bordercolor="#000099">\r\n  <tr bgcolor="#CCCCCC"> \r\n    <td width="25%">&nbsp;</td>\r\n    <td width="26%">A</td>\r\n    <td width="26%">B</td>\r\n    <td width="23%">C</td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor="#CCCCCC" width="25%">1</td>\r\n    <td width="26%">1</td>\r\n    <td width="26%">1</td>\r\n    <td width="23%">1</td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor="#CCCCCC" width="25%">2</td>\r\n    <td width="26%">1</td>\r\n    <td width="26%">1</td>\r\n    <td width="23%">1</td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor="#CCCCCC" width="25%">3</td>\r\n    <td width="26%">1</td>\r\n    <td width="26%">1</td>\r\n    <td width="23%">1</td>\r\n  </tr>\r\n</table>\r\nрезультатом буде:');
INSERT INTO `questions` VALUES (329, 30, 1, 1, 0, 0, 'Функція ТРАНСП повинна бути введена в діапазон комірок який має');
INSERT INTO `questions` VALUES (330, 30, 1, 1, 0, 0, 'Яке значення поверне функція МОБР, якщо визначник вихідної матриці дорівнює 0');
INSERT INTO `questions` VALUES (331, 30, 1, 1, 0, 0, 'Яке значення поверне функція МОПРЕД, якщо визначник вихідної матриці дорівнює 0');
INSERT INTO `questions` VALUES (333, 31, 2, 1, 0, 0, '2 * 2 =');
INSERT INTO `questions` VALUES (334, 31, 2, 1, 1, 0, '2 * 3 =');
INSERT INTO `questions` VALUES (335, 31, 2, 1, 1, 0, '2 * 4 =');
INSERT INTO `questions` VALUES (336, 31, 1, 1, 0, 0, '2 * 5 =');
INSERT INTO `questions` VALUES (337, 31, 1, 1, 0, 0, '2 * 6 =');
INSERT INTO `questions` VALUES (338, 31, 1, 1, 2, 1, '2 * 7 =');
INSERT INTO `questions` VALUES (339, 31, 1, 1, 3, 0, '2 * 9 =');
INSERT INTO `questions` VALUES (340, 31, 1, 1, 0, 0, '2 * 10 =');
INSERT INTO `questions` VALUES (341, 31, 1, 1, 3, 0, '2 * 0 =');
INSERT INTO `questions` VALUES (342, 31, 2, 1, 0, 0, '2 * 1 =');
INSERT INTO `questions` VALUES (343, 31, 2, 1, 0, 0, '2 * 0 =');
INSERT INTO `questions` VALUES (344, 31, 2, 1, 2, 0, '2 * 10 =');
INSERT INTO `questions` VALUES (345, 31, 1, 1, 0, 0, '2 * 1 =');
INSERT INTO `questions` VALUES (346, 31, 2, 1, 2, 1, '2 * 5 =');
INSERT INTO `questions` VALUES (347, 31, 2, 1, 2, 0, '2 * 9 =');
INSERT INTO `questions` VALUES (1345, 31, 1, 2, 3, 0, '2 * 11=');
INSERT INTO `questions` VALUES (1346, 31, 1, 2, 0, 0, '2 * 27 =');
INSERT INTO `questions` VALUES (1347, 31, 1, 2, 2, 0, '2 * 34 =');
INSERT INTO `questions` VALUES (1348, 31, 2, 2, 1, 1, '2 * 41 =');
INSERT INTO `questions` VALUES (1349, 31, 2, 2, 1, 1, '2 * 59 =');
INSERT INTO `questions` VALUES (1350, 31, 2, 2, 2, 0, '2 * 65 =');
INSERT INTO `questions` VALUES (1351, 31, 1, 3, 0, 0, '2 * 123 =');
INSERT INTO `questions` VALUES (1352, 31, 1, 3, 1, 0, '2 * 221 =');
INSERT INTO `questions` VALUES (1353, 31, 2, 3, 0, 0, '2 * 634 =');
INSERT INTO `questions` VALUES (1354, 31, 2, 3, 3, 0, '2 * 550 =');
INSERT INTO `questions` VALUES (1390, 31, 1, 2, 0, 1, '2 * 67 =');
INSERT INTO `questions` VALUES (1995, 31, 1, 2, 0, 0, '2 * 83 =');
INSERT INTO `questions` VALUES (2116, 135, 1, 1, 0, 0, '3 * 1 =');
INSERT INTO `questions` VALUES (2117, 135, 2, 1, 2, 0, '3 * 2 =');
INSERT INTO `questions` VALUES (2118, 135, 1, 1, 0, 0, '3 * 3 =');
INSERT INTO `questions` VALUES (2119, 135, 2, 1, 0, 0, '3 * 4 =');
INSERT INTO `questions` VALUES (2120, 135, 1, 1, 0, 0, '3 * 5 =');
INSERT INTO `questions` VALUES (2121, 135, 2, 1, 0, 1, '3 * 6 =');
INSERT INTO `questions` VALUES (2122, 135, 1, 1, 2, 1, '3 * 7 =');
INSERT INTO `questions` VALUES (2123, 135, 2, 1, 0, 1, '3 * 8 =');
INSERT INTO `questions` VALUES (2124, 135, 1, 1, 0, 0, '3 * 9 =');
INSERT INTO `questions` VALUES (2125, 135, 1, 1, 0, 0, '3 * 10 =');
INSERT INTO `questions` VALUES (2126, 135, 2, 2, 2, 0, '3 * 21');
INSERT INTO `questions` VALUES (2127, 135, 1, 2, 0, 0, '3 * 19 =');
INSERT INTO `questions` VALUES (2128, 135, 2, 2, 0, 0, '3 * 77 =');
INSERT INTO `questions` VALUES (2129, 136, 1, 1, 0, 0, '4*2=');
INSERT INTO `questions` VALUES (2130, 135, 1, 2, 0, 0, '2 * 34 =');
INSERT INTO `questions` VALUES (2131, 135, 2, 2, 2, 1, '3 * 59');
INSERT INTO `questions` VALUES (2132, 135, 1, 2, 0, 0, '3 * 87 =');
INSERT INTO `questions` VALUES (2133, 135, 2, 3, 2, 0, '3 * 783 =');
INSERT INTO `questions` VALUES (2134, 135, 1, 3, 0, 0, '3 * 789 =');
INSERT INTO `questions` VALUES (2135, 136, 2, 1, 0, 0, '4*3=');
INSERT INTO `questions` VALUES (2136, 136, 2, 1, 0, 0, '4*2');
INSERT INTO `questions` VALUES (2137, 136, 2, 1, 2, 1, '4*8=');
INSERT INTO `questions` VALUES (2138, 135, 2, 3, 0, 0, '3 * 560 =');
INSERT INTO `questions` VALUES (2139, 136, 1, 1, 0, 1, '4 * 4 =');
INSERT INTO `questions` VALUES (2140, 136, 2, 1, 0, 1, '4 * 5 =');
INSERT INTO `questions` VALUES (2141, 136, 1, 1, 0, 0, '4 * 6 =');
INSERT INTO `questions` VALUES (2142, 136, 2, 1, 0, 1, '4 * 7 =');
INSERT INTO `questions` VALUES (2143, 136, 1, 1, 2, 0, '4 * 9 =');
INSERT INTO `questions` VALUES (2144, 136, 1, 1, 2, 0, '4 * 1 =');
INSERT INTO `questions` VALUES (2145, 136, 1, 3, 2, 0, '4 * 875 =');
INSERT INTO `questions` VALUES (2146, 136, 2, 3, 2, 1, '4 * 159 =');
INSERT INTO `questions` VALUES (2147, 136, 1, 3, 0, 1, '4 * 753 =');
INSERT INTO `questions` VALUES (2148, 135, 1, 3, 0, 1, '3 * 852 =');
INSERT INTO `questions` VALUES (2149, 136, 2, 3, 0, 1, '4 * 852 =');
INSERT INTO `questions` VALUES (2150, 136, 2, 2, 0, 0, '4 * 56 =');
INSERT INTO `questions` VALUES (2151, 136, 1, 2, 0, 0, '4 * 62 =');
INSERT INTO `questions` VALUES (2152, 136, 2, 2, 0, 1, '4 * 39 =');
INSERT INTO `questions` VALUES (2153, 136, 1, 2, 0, 0, '4 * 78 =');
INSERT INTO `questions` VALUES (2154, 136, 2, 2, 0, 0, '4 * 13 =');
INSERT INTO `questions` VALUES (2155, 136, 1, 2, 2, 1, '4 * 78 =');

-- --------------------------------------------------------

-- 
-- Структура таблиці `results`
-- 

CREATE TABLE `results` (
  `ID_RE` int(10) unsigned NOT NULL auto_increment,
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  `ID_ST` int(10) unsigned NOT NULL default '0',
  `Result` tinyint(3) unsigned NOT NULL default '0',
  `FDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `can_resit` enum('N','Y') NOT NULL default 'N',
  PRIMARY KEY  (`ID_RE`),
  KEY `ID_TEST` (`ID_TEST`),
  KEY `ID_ST` (`ID_ST`)
) TYPE=InnoDB AUTO_INCREMENT=5 ;

-- 
-- Дамп даних таблиці `results`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблиці `results_log`
-- 

CREATE TABLE `results_log` (
  `ID_RE_LOG` int(10) unsigned NOT NULL auto_increment,
  `ID_RE` int(10) unsigned NOT NULL default '0',
  `ID_QU` int(10) unsigned NOT NULL default '0',
  `IsRight` enum('N','Y') NOT NULL default 'N',
  PRIMARY KEY  (`ID_RE_LOG`),
  UNIQUE KEY `ID_RE` (`ID_RE`,`ID_QU`),
  KEY `ID_QU` (`ID_QU`)
) TYPE=InnoDB AUTO_INCREMENT=71 ;

-- 
-- Дамп даних таблиці `results_log`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблиці `results_log_answers`
-- 

CREATE TABLE `results_log_answers` (
  `ID_RE_LOG` int(10) unsigned NOT NULL default '0',
  `ID_AN` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID_RE_LOG`,`ID_AN`),
  KEY `ID_AN` (`ID_AN`)
) TYPE=InnoDB;

-- 
-- Дамп даних таблиці `results_log_answers`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблиці `students`
-- 

CREATE TABLE `students` (
  `ID_ST` int(10) unsigned NOT NULL auto_increment,
  `ID_GR` mediumint(8) unsigned NOT NULL default '0',
  `STName` varchar(32) NOT NULL default '',
  `STPass` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`ID_ST`),
  UNIQUE KEY `STName` (`STName`),
  KEY `ID_GR` (`ID_GR`)
) TYPE=InnoDB AUTO_INCREMENT=978 ;

-- 
-- Дамп даних таблиці `students`
-- 

INSERT INTO `students` VALUES (906, 25, 'guest', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `students` VALUES (977, 25, 'lavoryk', '2c42e5cf1cdbafea04ed267018ef1511');

-- --------------------------------------------------------

-- 
-- Структура таблиці `teachers`
-- 

CREATE TABLE `teachers` (
  `ID_TE` smallint(5) unsigned NOT NULL auto_increment,
  `TEName` char(32) NOT NULL default '',
  `GroupCreator` enum('N','Y') NOT NULL default 'N',
  `TestCreator` enum('N','Y') NOT NULL default 'N',
  `GroupAdmin` enum('N','Y') NOT NULL default 'N',
  `TestAdmin` enum('N','Y') NOT NULL default 'N',
  `SysAdmin` enum('N','Y') NOT NULL default 'N',
  `ResultReader` enum('N','Y') NOT NULL default 'N',
  `USPass` char(32) NOT NULL default '',
  PRIMARY KEY  (`ID_TE`),
  UNIQUE KEY `TEName` (`TEName`)
) TYPE=InnoDB AUTO_INCREMENT=2 ;

-- 
-- Дамп даних таблиці `teachers`
-- 

INSERT INTO `teachers` VALUES (1, 'adm', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'd41d8cd98f00b204e9800998ecf8427e');

-- --------------------------------------------------------

-- 
-- Структура таблиці `test_priv`
-- 

CREATE TABLE `test_priv` (
  `ID_TE` smallint(5) unsigned NOT NULL default '0',
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  `CanAdmin` enum('N','Y') NOT NULL default 'N',
  `CanChange` enum('N','Y') NOT NULL default 'N',
  PRIMARY KEY  (`ID_TE`,`ID_TEST`),
  KEY `ID_TEST` (`ID_TEST`)
) TYPE=InnoDB;

-- 
-- Дамп даних таблиці `test_priv`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблиці `tests`
-- 

CREATE TABLE `tests` (
  `ID_TEST` mediumint(8) unsigned NOT NULL auto_increment,
  `TestName` varchar(150) NOT NULL default '',
  `IsBlock` enum('N','Y') NOT NULL default 'N',
  `TestTime` smallint(5) unsigned NOT NULL default '0',
  `DisableShowPrevTask` enum('N','Y') NOT NULL default 'N',
  `IsTimeForOneQuestion` enum('N','Y') NOT NULL default 'N',
  `ShowTask` enum('N','Y') NOT NULL default 'N',
  `TaskURL` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`ID_TEST`),
  UNIQUE KEY `TestName` (`TestName`)
) TYPE=InnoDB AUTO_INCREMENT=137 ;

-- 
-- Дамп даних таблиці `tests`
-- 

INSERT INTO `tests` VALUES (4, 'Лабораторна робота Word 3', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Word/Laba3/prakt3.htm');
INSERT INTO `tests` VALUES (7, 'Лабораторна робота Word 6', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Word/Laba6/prakt6.htm');
INSERT INTO `tests` VALUES (9, 'Лабораторна робота Word 2', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Word/Laba2/prakt2.htm');
INSERT INTO `tests` VALUES (16, 'multiplication table', 'Y', 20, 'N', 'N', 'N', '');
INSERT INTO `tests` VALUES (19, 'Microsoft Word', 'Y', 30, 'N', 'N', 'N', '');
INSERT INTO `tests` VALUES (20, 'Лабораторна робота Word 4', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Word/Laba4/prakt4.htm');
INSERT INTO `tests` VALUES (21, 'Лабораторна робота Word 1', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Word/Laba1/prakt1.htm');
INSERT INTO `tests` VALUES (22, 'Лабораторна робота Word 5', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Word/Laba5/prakt5.htm');
INSERT INTO `tests` VALUES (24, 'Лабораторна робота Excel 1', 'N', 50, 'N', 'N', 'Y', 'http://xp/Labs/Excel/Laba1/prakt1.htm');
INSERT INTO `tests` VALUES (25, 'Лабораторна робота Excel 2', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Excel/Laba2/prakt2.htm');
INSERT INTO `tests` VALUES (26, 'Лабораторна робота Excel 3', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Excel/Laba3/prakt3.htm');
INSERT INTO `tests` VALUES (27, 'Microsoft Excel', 'Y', 30, 'N', 'N', 'N', '');
INSERT INTO `tests` VALUES (28, 'Лабораторна робота Excel 4', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Excel/Laba4/prakt4.htm');
INSERT INTO `tests` VALUES (29, 'Лабораторна робота Excel 5', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Excel/Laba5/prakt5.htm');
INSERT INTO `tests` VALUES (30, 'Лабораторна робота Excel 6', 'N', 10, 'N', 'N', 'Y', 'http://win2000/Labs/Excel/Laba6/prakt6.htm');
INSERT INTO `tests` VALUES (31, 'multiplication table(2*x=y)', 'N', 10, 'N', 'N', 'N', '');
INSERT INTO `tests` VALUES (135, 'multiplication table(3*x=y)', 'N', 10, 'N', 'N', 'N', '');
INSERT INTO `tests` VALUES (136, 'multiplication table(4*x=y)', 'N', 10, 'N', 'N', 'N', '');

-- --------------------------------------------------------

-- 
-- Структура таблиці `tests_blocks`
-- 

CREATE TABLE `tests_blocks` (
  `ID_TEST_BLOCK` mediumint(8) unsigned NOT NULL default '0',
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID_TEST_BLOCK`,`ID_TEST`),
  KEY `ID_TEST` (`ID_TEST`)
) TYPE=InnoDB;

-- 
-- Дамп даних таблиці `tests_blocks`
-- 

INSERT INTO `tests_blocks` VALUES (19, 4);
INSERT INTO `tests_blocks` VALUES (19, 7);
INSERT INTO `tests_blocks` VALUES (19, 9);
INSERT INTO `tests_blocks` VALUES (19, 20);
INSERT INTO `tests_blocks` VALUES (19, 21);
INSERT INTO `tests_blocks` VALUES (19, 22);
INSERT INTO `tests_blocks` VALUES (27, 24);
INSERT INTO `tests_blocks` VALUES (27, 25);
INSERT INTO `tests_blocks` VALUES (27, 26);
INSERT INTO `tests_blocks` VALUES (27, 28);
INSERT INTO `tests_blocks` VALUES (27, 29);
INSERT INTO `tests_blocks` VALUES (27, 30);
INSERT INTO `tests_blocks` VALUES (16, 31);
INSERT INTO `tests_blocks` VALUES (16, 135);
INSERT INTO `tests_blocks` VALUES (16, 136);

-- --------------------------------------------------------

-- 
-- Структура таблиці `time_table`
-- 

CREATE TABLE `time_table` (
  `ID_GR` mediumint(8) unsigned NOT NULL default '0',
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  `WriteLog` enum('N','Y') NOT NULL default 'N',
  `S_Date` date NOT NULL default '0000-00-00',
  `F_Date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`ID_GR`,`ID_TEST`),
  KEY `ID_TEST` (`ID_TEST`)
) TYPE=InnoDB;

-- 
-- Дамп даних таблиці `time_table`
-- 

INSERT INTO `time_table` VALUES (25, 16, 'Y', '2005-08-22', '2007-08-22');
INSERT INTO `time_table` VALUES (25, 19, 'Y', '2005-08-22', '2007-08-22');
INSERT INTO `time_table` VALUES (25, 24, 'N', '0000-00-00', '0000-00-00');
INSERT INTO `time_table` VALUES (25, 27, 'Y', '2005-08-22', '2007-08-22');
INSERT INTO `time_table` VALUES (25, 31, 'Y', '2005-04-21', '2007-04-21');
INSERT INTO `time_table` VALUES (25, 135, 'Y', '2005-08-22', '2007-08-22');
INSERT INTO `time_table` VALUES (25, 136, 'Y', '2005-08-22', '2007-08-22');
INSERT INTO `time_table` VALUES (26, 16, 'N', '2006-10-21', '2006-10-21');

-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `answers`
-- 
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`ID_QU`) REFERENCES `questions` (`ID_QU`);

-- 
-- Constraints for table `group_priv`
-- 
ALTER TABLE `group_priv`
  ADD CONSTRAINT `group_priv_ibfk_1` FOREIGN KEY (`ID_TE`) REFERENCES `teachers` (`ID_TE`),
  ADD CONSTRAINT `group_priv_ibfk_2` FOREIGN KEY (`ID_GR`) REFERENCES `groups` (`ID_GR`);

-- 
-- Constraints for table `level_question`
-- 
ALTER TABLE `level_question`
  ADD CONSTRAINT `level_question_ibfk_1` FOREIGN KEY (`ID_TEST`) REFERENCES `tests` (`ID_TEST`);

-- 
-- Constraints for table `questions`
-- 
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`ID_TEST`, `ID_Level`) REFERENCES `level_question` (`ID_TEST`, `ID_Level`);

-- 
-- Constraints for table `results`
-- 
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`ID_TEST`) REFERENCES `tests` (`ID_TEST`),
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`ID_ST`) REFERENCES `students` (`ID_ST`);

-- 
-- Constraints for table `results_log`
-- 
ALTER TABLE `results_log`
  ADD CONSTRAINT `results_log_ibfk_1` FOREIGN KEY (`ID_RE`) REFERENCES `results` (`ID_RE`),
  ADD CONSTRAINT `results_log_ibfk_2` FOREIGN KEY (`ID_QU`) REFERENCES `questions` (`ID_QU`);

-- 
-- Constraints for table `results_log_answers`
-- 
ALTER TABLE `results_log_answers`
  ADD CONSTRAINT `results_log_answers_ibfk_1` FOREIGN KEY (`ID_RE_LOG`) REFERENCES `results_log` (`ID_RE_LOG`),
  ADD CONSTRAINT `results_log_answers_ibfk_2` FOREIGN KEY (`ID_AN`) REFERENCES `answers` (`ID_AN`);

-- 
-- Constraints for table `students`
-- 
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`ID_GR`) REFERENCES `groups` (`ID_GR`);

-- 
-- Constraints for table `test_priv`
-- 
ALTER TABLE `test_priv`
  ADD CONSTRAINT `test_priv_ibfk_2` FOREIGN KEY (`ID_TE`) REFERENCES `teachers` (`ID_TE`),
  ADD CONSTRAINT `test_priv_ibfk_3` FOREIGN KEY (`ID_TEST`) REFERENCES `tests` (`ID_TEST`);

-- 
-- Constraints for table `tests_blocks`
-- 
ALTER TABLE `tests_blocks`
  ADD CONSTRAINT `tests_blocks_ibfk_1` FOREIGN KEY (`ID_TEST_BLOCK`) REFERENCES `tests` (`ID_TEST`),
  ADD CONSTRAINT `tests_blocks_ibfk_2` FOREIGN KEY (`ID_TEST`) REFERENCES `tests` (`ID_TEST`);

-- 
-- Constraints for table `time_table`
-- 
ALTER TABLE `time_table`
  ADD CONSTRAINT `time_table_ibfk_1` FOREIGN KEY (`ID_GR`) REFERENCES `groups` (`ID_GR`),
  ADD CONSTRAINT `time_table_ibfk_2` FOREIGN KEY (`ID_TEST`) REFERENCES `tests` (`ID_TEST`);

COMMIT;