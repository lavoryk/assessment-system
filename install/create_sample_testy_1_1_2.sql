-- phpMyAdmin SQL Dump
-- version 2.6.0-pl3
-- http://www.phpmyadmin.net
-- 
-- ����: localhost
-- ��� ���������: ��� 21 2006 �., 14:56
-- ����� �������: 4.0.27
-- ����� PHP: 4.3.11
-- 
-- ��: `testy_1_1_2_demo`
-- 

-- --------------------------------------------------------

-- 
-- ��������� ������� `answers`
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
-- ���� ����� ������� `answers`
-- 

INSERT INTO `answers` VALUES (95, 28, 1, '���������� ������ �� ����� ���� ������ ���, ��� �� ������� ��� ������, ���������� ������, � ���� ���� �������� ������� ����.');
INSERT INTO `answers` VALUES (96, 28, 0, '����-���� � �������������');
INSERT INTO `answers` VALUES (97, 29, 0, '��� �������� � ����� ��������� ��������������� ��������� ����� Shift+End');
INSERT INTO `answers` VALUES (98, 30, 1, '�� ��������� ��������� ����� Ctrl+Ins');
INSERT INTO `answers` VALUES (99, 30, 0, '����-���� � �������������');
INSERT INTO `answers` VALUES (100, 31, 1, '�� ��������� ��������� ����� Shift+Ins');
INSERT INTO `answers` VALUES (101, 31, 0, '����-���� � �������������');
INSERT INTO `answers` VALUES (102, 32, 1, '�� ��������� ��������� ����� Shift+Del');
INSERT INTO `answers` VALUES (103, 32, 0, '����-���� � �������������');
INSERT INTO `answers` VALUES (106, 33, 1, '�� ��������� ��������� ����� Ctrl+F5');
INSERT INTO `answers` VALUES (107, 33, 0, '�� ��������� ��������� ����� Ctrl+A');
INSERT INTO `answers` VALUES (161, 50, 0, '�� ����� 63 �������� �� 32767 �����');
INSERT INTO `answers` VALUES (162, 50, 1, '�� ����� 32 �������� �� 3276 �����');
INSERT INTO `answers` VALUES (163, 50, 1, '�� ����� 63 ��������');
INSERT INTO `answers` VALUES (164, 50, 1, '�� ����� 63 �����');
INSERT INTO `answers` VALUES (165, 50, 1, '���������� ���������� ������������ ����''�����');
INSERT INTO `answers` VALUES (166, 51, 0, '����-�� � �������������');
INSERT INTO `answers` VALUES (167, 51, 1, '������� � ���� "�������" ������� "�������� �������" � � ���������� ���, �� �''�������, ������� �������� ��������� �������, �� �����������.');
INSERT INTO `answers` VALUES (168, 51, 1, '��������� ������ "�������� �������"  ���������� ����� ����������� � ��������� ���������� ��� ������ "����" ������� ��������� �������.');
INSERT INTO `answers` VALUES (169, 51, 1, '��������� ������ "���������� �������"  ����� ����������� "������� � �������" � ������������ ����������� �������� "����" ���������� ����� �������');
INSERT INTO `answers` VALUES (170, 52, 0, '��������: 0,25 ��\r\n�����������: 6 ��');
INSERT INTO `answers` VALUES (171, 52, 1, '��������: 0,01 ��\r\n�����������: 0,5 ��');
INSERT INTO `answers` VALUES (172, 52, 1, '��������: 0,5 ��\r\n�����������: 5 ��');
INSERT INTO `answers` VALUES (173, 52, 1, '��������: 0,05 ��\r\n�����������: 0,45 ��');
INSERT INTO `answers` VALUES (174, 52, 1, '��������: 1 ��\r\n�����������: 5 ��');
INSERT INTO `answers` VALUES (175, 53, 1, 'Shift+Tab');
INSERT INTO `answers` VALUES (176, 53, 1, 'Tab');
INSERT INTO `answers` VALUES (177, 53, 1, 'Ctrl+Shift+Enter');
INSERT INTO `answers` VALUES (178, 53, 0, 'Ctrl+Enter');
INSERT INTO `answers` VALUES (179, 54, 0, '... �������� �� ����������� ��������');
INSERT INTO `answers` VALUES (180, 54, 1, '... ����������� ������� ������� � �����');
INSERT INTO `answers` VALUES (181, 54, 1, '... ����������� �������� ����� � �������');
INSERT INTO `answers` VALUES (182, 55, 0, '�� �������������');
INSERT INTO `answers` VALUES (183, 55, 1, '�������� ���� ������� �����������');
INSERT INTO `answers` VALUES (184, 55, 1, '�������� �� ����������� ������ ��������� ���� ���������');
INSERT INTO `answers` VALUES (185, 55, 1, '�������� ���� ������ ��������� ���� ���������');
INSERT INTO `answers` VALUES (186, 55, 1, '�������� �� ����������� ����� ����������� �� ����� ���������');
INSERT INTO `answers` VALUES (187, 56, 1, '�������� �� ����� ������ ������ ������');
INSERT INTO `answers` VALUES (188, 56, 1, '�������� �� ����� "��������"');
INSERT INTO `answers` VALUES (189, 56, 1, '������� ���� "���������� �������: Microsoft Word"');
INSERT INTO `answers` VALUES (190, 56, 0, '������� ������� ���������� ������ �� ��������� ��������');
INSERT INTO `answers` VALUES (191, 56, 1, '���������� ����� ����������� ������� ������ ���� ���������');
INSERT INTO `answers` VALUES (192, 57, 0, '���������� ������ ���������� ��� ������� � �������� �������� ���������� ������� ��������� ���������');
INSERT INTO `answers` VALUES (193, 57, 1, '����� ����� �������� ������ ���������� ��� �������� ��������.');
INSERT INTO `answers` VALUES (194, 57, 1, '����� ����������� ��������� ��� �������� �� �������� ��������� ������ ��������� ���� ���������.');
INSERT INTO `answers` VALUES (195, 57, 1, 'ϳ�������� ���������� ���� ��������� ��������������� ��� ��������� ����� ���������.');
INSERT INTO `answers` VALUES (196, 57, 1, '������ ������� ���������� ��� ����������� �������� ���� ���������.');
INSERT INTO `answers` VALUES (197, 58, 1, 'Alt+End');
INSERT INTO `answers` VALUES (198, 58, 1, 'Ctrl+End');
INSERT INTO `answers` VALUES (199, 58, 1, 'Shift+F4');
INSERT INTO `answers` VALUES (200, 58, 1, 'Alt+F4');
INSERT INTO `answers` VALUES (201, 58, 0, 'Ctrl+F4');
INSERT INTO `answers` VALUES (202, 59, 0, '������. ���� ��� �����, �� ������ ��������� �� ����������� ��� ��������� ����� �������� ��������� �� ����� �� ����� �������.');
INSERT INTO `answers` VALUES (203, 59, 1, '��������. ���� � ������ ������������� ��������� �����������, �� ������� �������� Microsof Word.');
INSERT INTO `answers` VALUES (204, 59, 1, '�������. ���������� ���� ���������, �� ����������� ��� ������������� ������������ �������� ���������� �����������.');
INSERT INTO `answers` VALUES (205, 60, 1, '� ������� ����������� ���� ��������� ������ ��������� ����� ��������� ������.');
INSERT INTO `answers` VALUES (206, 60, 1, '� ����� ����, �� ������� ���������� ���� ��������.');
INSERT INTO `answers` VALUES (207, 60, 0, '� ����� ����, �� �������� ��������� ����� ��������.');
INSERT INTO `answers` VALUES (208, 61, 0, '������� ������ ���� �� ����� ������ � �������� ���� ������� ����');
INSERT INTO `answers` VALUES (209, 61, 1, '���������� ������ ���� � ����� ���� � ��������� ������ Enter');
INSERT INTO `answers` VALUES (210, 61, 1, '������ ��''� ������ ���� � ���������');
INSERT INTO `answers` VALUES (211, 61, 1, '��������� ��������� ����� Alt+Esc');
INSERT INTO `answers` VALUES (212, 62, 0, '"�����������" �� "��������������"');
INSERT INTO `answers` VALUES (213, 62, 1, '"�����������" �� "���������"');
INSERT INTO `answers` VALUES (214, 62, 1, '"��������������", "���������" � "�����������"');
INSERT INTO `answers` VALUES (215, 62, 1, '�� ������ ���������� ������������');
INSERT INTO `answers` VALUES (216, 63, 1, '������');
INSERT INTO `answers` VALUES (217, 63, 1, '���');
INSERT INTO `answers` VALUES (218, 63, 1, '���');
INSERT INTO `answers` VALUES (219, 63, 0, 'ҳ���� ����');
INSERT INTO `answers` VALUES (220, 64, 0, '�������� ���� ��������� ���� �������� ������� ���� ���������');
INSERT INTO `answers` VALUES (221, 64, 1, 'Word ���� ��������� � �������� ����� ���������');
INSERT INTO `answers` VALUES (222, 64, 1, '����� ���� ��������� ������� ������ �������� Word');
INSERT INTO `answers` VALUES (223, 65, 0, '��� ��������� ���������� ��� ������� ����������� ������� �� ��������� �������� ���������� �� ����� � ����������');
INSERT INTO `answers` VALUES (224, 65, 1, '��� ��������� ����� ���������');
INSERT INTO `answers` VALUES (225, 65, 1, '��� �������� ������ ���������');
INSERT INTO `answers` VALUES (226, 65, 1, '��� ���������� ���������');
INSERT INTO `answers` VALUES (227, 66, 1, '����');
INSERT INTO `answers` VALUES (228, 66, 1, '����');
INSERT INTO `answers` VALUES (229, 66, 1, '������');
INSERT INTO `answers` VALUES (230, 66, 1, '������');
INSERT INTO `answers` VALUES (231, 66, 0, '���');
INSERT INTO `answers` VALUES (232, 67, 0, '... � ������ ���� "����" ������� ������� "��������� ���..."');
INSERT INTO `answers` VALUES (233, 67, 1, '... � ������ ���� "���������" ������� ������� "��������..."');
INSERT INTO `answers` VALUES (234, 67, 1, '... � ������ ���� "������" ������� ������� "��������� ���..."');
INSERT INTO `answers` VALUES (235, 67, 1, '...��������� Ctrl+Z...');
INSERT INTO `answers` VALUES (236, 68, 0, '��������������');
INSERT INTO `answers` VALUES (237, 68, 1, '������');
INSERT INTO `answers` VALUES (238, 68, 1, '����');
INSERT INTO `answers` VALUES (239, 68, 1, '������');
INSERT INTO `answers` VALUES (240, 68, 1, '�������');
INSERT INTO `answers` VALUES (241, 69, 0, 'Shift+F1');
INSERT INTO `answers` VALUES (242, 69, 1, 'Ctrl+F1');
INSERT INTO `answers` VALUES (243, 69, 1, 'Alt+F1');
INSERT INTO `answers` VALUES (244, 69, 1, 'Shift+Alt+Ctrl');
INSERT INTO `answers` VALUES (245, 69, 1, 'Alt+Ctrl+1');
INSERT INTO `answers` VALUES (246, 70, 0, '��� ������������ ���� ������� �������������� ����� ���� "������"');
INSERT INTO `answers` VALUES (247, 70, 1, '��� ������������ ���� ������� �������������� ����� ���� "����"');
INSERT INTO `answers` VALUES (248, 70, 1, '��� ������������ ���� ������� �������������� ������������� �� ����������� �����');
INSERT INTO `answers` VALUES (249, 71, 0, '��� ������������ ������� �� ������� ������� �������������� ������� "�����" ������ ���� "����"');
INSERT INTO `answers` VALUES (250, 71, 1, '��� ������������ ������� �� ������� ������� �������������� ������� "�����" ������ ���� "������"');
INSERT INTO `answers` VALUES (251, 71, 1, '��� ������������ ������� �� ������� ������� �������������� ������������� �����');
INSERT INTO `answers` VALUES (252, 71, 1, '��� ������������ ������� �� ������� ������� �������������� ������� "�����" � ������������ ���� � ������ ������');
INSERT INTO `answers` VALUES (253, 72, 0, '�������� �� ������� �����������');
INSERT INTO `answers` VALUES (254, 72, 1, '1');
INSERT INTO `answers` VALUES (255, 72, 1, '3');
INSERT INTO `answers` VALUES (256, 72, 1, '5');
INSERT INTO `answers` VALUES (257, 72, 1, '2');
INSERT INTO `answers` VALUES (258, 73, 0, '�� ��������� ���� "����"');
INSERT INTO `answers` VALUES (259, 73, 1, '�������� ���� ������� ���� � ����-����� ���� ����');
INSERT INTO `answers` VALUES (260, 73, 1, '�� ��������� ������ ���� "����"');
INSERT INTO `answers` VALUES (261, 73, 1, '���������� ����� Ctrl+F6');
INSERT INTO `answers` VALUES (262, 74, 0, 'ҳ���� � ���� ������');
INSERT INTO `answers` VALUES (263, 74, 1, '� ���� ������� �����');
INSERT INTO `answers` VALUES (264, 74, 1, '� ���� ������� �������');
INSERT INTO `answers` VALUES (265, 75, 0, '������� �����');
INSERT INTO `answers` VALUES (266, 75, 1, 'ϳ��������� �������� ����� ��������� ���');
INSERT INTO `answers` VALUES (267, 75, 1, '������ ��� (��������) ������');
INSERT INTO `answers` VALUES (268, 75, 1, '������ ����� ������');
INSERT INTO `answers` VALUES (269, 75, 1, '���������� ���� �������');
INSERT INTO `answers` VALUES (270, 76, 0, '������� ����� ����� � ����� ���������');
INSERT INTO `answers` VALUES (271, 76, 1, '������ �������� �� ���������');
INSERT INTO `answers` VALUES (272, 76, 1, '������� �������� �������� ������ ���� ��� ����� ������� �����');
INSERT INTO `answers` VALUES (273, 76, 1, '������� ���������� ������� ��������');
INSERT INTO `answers` VALUES (274, 77, 0, '����������');
INSERT INTO `answers` VALUES (275, 77, 1, '�����');
INSERT INTO `answers` VALUES (276, 77, 1, '����� ������');
INSERT INTO `answers` VALUES (277, 77, 1, '�����������');
INSERT INTO `answers` VALUES (278, 78, 0, '��������  ��������� �������');
INSERT INTO `answers` VALUES (279, 78, 1, '�������� ����� �� ���� �������');
INSERT INTO `answers` VALUES (280, 78, 1, '��������� ������ Enter');
INSERT INTO `answers` VALUES (281, 78, 1, '��������� ������ PageDown');
INSERT INTO `answers` VALUES (282, 79, 1, '.prg\r\n');
INSERT INTO `answers` VALUES (283, 79, 1, '.dbf\r\n');
INSERT INTO `answers` VALUES (284, 79, 1, '.txt');
INSERT INTO `answers` VALUES (285, 79, 0, '.doc');
INSERT INTO `answers` VALUES (286, 80, 0, '������� "�������" ���� "����"');
INSERT INTO `answers` VALUES (287, 80, 1, '������� "�������" ���� "����"');
INSERT INTO `answers` VALUES (288, 80, 1, '�������� ������� ������������ ����');
INSERT INTO `answers` VALUES (289, 80, 1, '�� ������ ��������\r\n');
INSERT INTO `answers` VALUES (290, 81, 0, '���');
INSERT INTO `answers` VALUES (291, 81, 1, 'ͳ\r\n');
INSERT INTO `answers` VALUES (292, 82, 0, '�������� �� ����� ���� ��� ���� ������� ����');
INSERT INTO `answers` VALUES (293, 82, 1, '�������� �� ����� ���� ��� ������ ������� ����');
INSERT INTO `answers` VALUES (294, 82, 1, '�������� �� ����� ���� ���� ������� ����');
INSERT INTO `answers` VALUES (295, 82, 1, '�������� �� ����� ���� ������ ������� ����');
INSERT INTO `answers` VALUES (296, 83, 0, 'Ctrl+J');
INSERT INTO `answers` VALUES (297, 83, 1, 'Shift+L');
INSERT INTO `answers` VALUES (298, 83, 1, 'Ctrl+R');
INSERT INTO `answers` VALUES (299, 83, 1, 'Ctrl+Insert');
INSERT INTO `answers` VALUES (300, 84, 0, '...�������� ������');
INSERT INTO `answers` VALUES (301, 84, 1, '...�������� ������');
INSERT INTO `answers` VALUES (302, 84, 1, '...�������� ��� ��������� ����� �������');
INSERT INTO `answers` VALUES (303, 84, 1, '...����������, ��� �������� ���������� ��� ������� ��''����');
INSERT INTO `answers` VALUES (304, 85, 1, '� ���� "���" ������� ������� "������������ �������"');
INSERT INTO `answers` VALUES (305, 85, 0, '��������� ������ "������������ �������"�� ����� �����������');
INSERT INTO `answers` VALUES (306, 86, 0, '...����� �� ��������� ������� "�� �����" ����� ���� "�������"');
INSERT INTO `answers` VALUES (307, 86, 1, '...����� �� ��������� ������� "�������� �������" ������ ���� "�������"');
INSERT INTO `answers` VALUES (308, 86, 1, '...����� �� ��������� ������� "�� �����" ����� ���� "����"');
INSERT INTO `answers` VALUES (309, 86, 1, '���������');
INSERT INTO `answers` VALUES (310, 87, 0, '4');
INSERT INTO `answers` VALUES (311, 87, 1, '3');
INSERT INTO `answers` VALUES (312, 87, 1, '5');
INSERT INTO `answers` VALUES (313, 87, 1, '2');
INSERT INTO `answers` VALUES (314, 88, 1, '��� ���� ������������ ��������� � ������');
INSERT INTO `answers` VALUES (315, 88, 1, '��� ���� ��������� �� ��������� ������');
INSERT INTO `answers` VALUES (316, 88, 0, '��� ���� ��������� �� ��������');
INSERT INTO `answers` VALUES (317, 89, 0, '...������� ������� ���� �� ����������� �����, ��������� �� ��� ������');
INSERT INTO `answers` VALUES (318, 89, 1, '...������� ������� ���� �� ����������� �����, ��������� �� ��� ������ � ������ Ctrl');
INSERT INTO `answers` VALUES (319, 89, 1, '...������� ������� ���� �� ����������� �����, ��������� �� ��� ������ � ������ Shift');
INSERT INTO `answers` VALUES (320, 89, 1, '����� � ������������� �� �����������');
INSERT INTO `answers` VALUES (321, 90, 0, '���� ����������� ���������� ��������� ������� ����� �������� �������.');
INSERT INTO `answers` VALUES (322, 90, 1, '����� ����� ���� ����������� �� ������������ ������ ���');
INSERT INTO `answers` VALUES (323, 90, 1, '����� ����� ����� ���� ����������� �� ���� ����� �������');
INSERT INTO `answers` VALUES (324, 90, 1, '���� ��������� ������');
INSERT INTO `answers` VALUES (325, 91, 0, '���� �������� �����');
INSERT INTO `answers` VALUES (326, 91, 1, '������� � ��������� �����');
INSERT INTO `answers` VALUES (327, 92, 0, '���� �������� (��������� ������, ������) ������������ ������, �� ���������� �� ����� ������.');
INSERT INTO `answers` VALUES (328, 92, 1, '����� ��������� ������ ������� ������ ���������,  ������ �������� ����.');
INSERT INTO `answers` VALUES (329, 92, 1, '���� �������� ���  ������������ ���� ��������� ������, �� ���������� �� ����� ������.');
INSERT INTO `answers` VALUES (330, 92, 1, '���� �������� ���  ������������ ���� ��������� �����, �� ���������� �� ����� ������.');
INSERT INTO `answers` VALUES (331, 93, 0, '���� ������������ ������� ��� ���� ������������ �������.');
INSERT INTO `answers` VALUES (332, 93, 1, '���� ������������ �������.');
INSERT INTO `answers` VALUES (333, 93, 1, '���� ������������ �������.');
INSERT INTO `answers` VALUES (334, 94, 0, '��������� ������� ��� ����� � ������� ��''� ����� � ������ ����� �� ����� �����������.');
INSERT INTO `answers` VALUES (335, 94, 1, '��������� ����������, ������ � ����-����� ���� �������� ������ � ������� ����� � ���� � ������.');
INSERT INTO `answers` VALUES (336, 94, 1, '³�� ��� �������.');
INSERT INTO `answers` VALUES (337, 95, 0, '³�� ��� �������.');
INSERT INTO `answers` VALUES (338, 95, 1, '��������� ������� ��� ����� � ������� ��''� ����� � ������ ����� �� ����� �����������.');
INSERT INTO `answers` VALUES (339, 95, 1, '��������� ����������, ������ � ����-����� ���� �������� ������ � ������� ����� � ���� � ������.');
INSERT INTO `answers` VALUES (340, 96, 1, '����� ������ �� ����� �������.');
INSERT INTO `answers` VALUES (341, 96, 1, '����� �������.');
INSERT INTO `answers` VALUES (342, 96, 0, '����� ������.');
INSERT INTO `answers` VALUES (343, 97, 1, '����� ������ �� ����� �������.');
INSERT INTO `answers` VALUES (344, 97, 1, '����� ������.');
INSERT INTO `answers` VALUES (345, 97, 0, '����� �������.');
INSERT INTO `answers` VALUES (346, 98, 1, '�������� ��������� ������ �����.');
INSERT INTO `answers` VALUES (347, 98, 1, '��������� ����������.');
INSERT INTO `answers` VALUES (348, 98, 0, '��������� ����������.');
INSERT INTO `answers` VALUES (349, 106, 1, '���������� ����������, ���������� ������� �� ���� ������ ������, � ��������� �� ���� �� ������� ����� �����������.');
INSERT INTO `answers` VALUES (350, 100, 0, '���� �������.');
INSERT INTO `answers` VALUES (351, 100, 1, '���������� ������ �� ���� �������.');
INSERT INTO `answers` VALUES (352, 100, 1, '���������� ������ �� ���� �����.');
INSERT INTO `answers` VALUES (353, 100, 1, '���������� ������ �� ���� �������, � ���� �� ����� ������.');
INSERT INTO `answers` VALUES (354, 101, 0, '�������� ������ �� �����, ��� ������� ����� (������) .');
INSERT INTO `answers` VALUES (355, 101, 1, '��������� ����� � ����� ������ ������ ���������.');
INSERT INTO `answers` VALUES (356, 101, 1, '��������� ����� � ����� ������ ������ ���������.');
INSERT INTO `answers` VALUES (357, 101, 1, '��������� ����� ���� �������� ������ ������ ���������.');
INSERT INTO `answers` VALUES (358, 85, 1, '� ���� "�������" ������� ������� "������..."');
INSERT INTO `answers` VALUES (359, 102, 0, 'Ctrl+A.');
INSERT INTO `answers` VALUES (360, 102, 1, 'Ctrl+B.');
INSERT INTO `answers` VALUES (361, 102, 1, 'Ctrl+O.');
INSERT INTO `answers` VALUES (362, 102, 1, 'Ctrl+F2.');
INSERT INTO `answers` VALUES (363, 102, 1, 'Ctrl+All.');
INSERT INTO `answers` VALUES (364, 103, 1, '���������� ������ ���� ��������� ���������, ��������� ��� ������ �, �� ���������� ��, ���������� ������ ���� ���������.');
INSERT INTO `answers` VALUES (365, 103, 1, '���������� ������ ���� ��������� ���������, ��� ���������� ������ ���� �� ����� ���������.');
INSERT INTO `answers` VALUES (366, 103, 1, '���������� ������ ���� �� ������� ���������, ��� ���������� ������ ���� �� ����� ���������.');
INSERT INTO `answers` VALUES (367, 103, 0, '���������� ������ ���� �� ������� ���������, ��������� ��� ������ �, �� ���������� ��, ���������� ������ �� ���� ���������.');
INSERT INTO `answers` VALUES (368, 104, 1, '�����, ���� ���������� <b>������|���������</b>, ������� <b>������</b>, �������� <b>������������ ���������� ��� ��������� ��������� ������</b>.');
INSERT INTO `answers` VALUES (369, 104, 1, 'ͳ, �� �����. �������� �������� ������� ���� �� ��������� ����.');
INSERT INTO `answers` VALUES (370, 104, 1, '�����, ���� ��� �������� ��������� ���������. ��������� � ����''������ ���� notebook, �� ��������� �������.');
INSERT INTO `answers` VALUES (371, 104, 0, '���, �� ����� �� ��������� ������ Shift � ��������� � �������� ��������� ��������, ��� End, ��� Home, ��� PgUp, ��� PgDown.');
INSERT INTO `answers` VALUES (372, 60, 1, '� ����� �����.');
INSERT INTO `answers` VALUES (373, 60, 1, '� ����� ��������� ���� ��������.');
INSERT INTO `answers` VALUES (374, 105, 1, '������� � ����� �����.');
INSERT INTO `answers` VALUES (375, 105, 1, '������� � ���� ��������.');
INSERT INTO `answers` VALUES (376, 105, 0, '������������� �� �������� ������� � ��������.');
INSERT INTO `answers` VALUES (377, 105, 1, '������� �� ����� ���������� ���������.');
INSERT INTO `answers` VALUES (378, 106, 0, '�� ������� ���������� ���������� ������, �� �������� ������� ����, � ���������� ������ � ����������.');
INSERT INTO `answers` VALUES (379, 106, 1, '�� �������� ������.');
INSERT INTO `answers` VALUES (380, 106, 1, '�� ������� ����������� ���������� ������, ������ �� �� ����������� ����� (Hint). �� �������� ������ �������� ��������� ����������.');
INSERT INTO `answers` VALUES (381, 98, 1, '�� �������� ������.');
INSERT INTO `answers` VALUES (382, 107, 1, 'Ctrl+J');
INSERT INTO `answers` VALUES (383, 107, 1, 'Ctrl+R');
INSERT INTO `answers` VALUES (384, 107, 1, 'Ctrl+L');
INSERT INTO `answers` VALUES (385, 107, 0, 'Ctrl+E');
INSERT INTO `answers` VALUES (386, 108, 1, 'ҳ���� � ������� ���� ����� ������� �������� A4.');
INSERT INTO `answers` VALUES (387, 108, 1, 'ͳ �� ���������.');
INSERT INTO `answers` VALUES (388, 108, 0, '���, �� �������.');
INSERT INTO `answers` VALUES (389, 109, 0, '�� �������� ������.');
INSERT INTO `answers` VALUES (390, 109, 1, '��������� ��������� ����� Ctrl+Enter.');
INSERT INTO `answers` VALUES (391, 109, 1, '������� <b>�������|������</b>.');
INSERT INTO `answers` VALUES (392, 28, 1, '����� �������� ���� ������� ���� �� ����-����� ���� ������.');
INSERT INTO `answers` VALUES (393, 28, 1, '���������� ��������� ������ �� ������� ������ � ��������� ��������� ����� <b>Shift+Ctrl+&#8595;</b>');
INSERT INTO `answers` VALUES (394, 110, 0, 'Ctrl+Home');
INSERT INTO `answers` VALUES (395, 110, 1, 'Home');
INSERT INTO `answers` VALUES (396, 110, 1, 'Shift+Home');
INSERT INTO `answers` VALUES (397, 110, 1, 'Alt+Home');
INSERT INTO `answers` VALUES (398, 110, 1, 'Ctrl+Alt+Home');
INSERT INTO `answers` VALUES (399, 29, 1, '��� �������� �� ������� ��������� ��������������� ��������� ����� Ctrl+Home');
INSERT INTO `answers` VALUES (400, 29, 1, '��� �������� � ����� ��������� ��������������� ��������� ����� Ctrl+End');
INSERT INTO `answers` VALUES (401, 29, 1, '��� �������� �� ������� ����� ��������������� ������ Home');
INSERT INTO `answers` VALUES (402, 29, 1, '��� �������� �� ����� ����� ��������������� ������ End');
INSERT INTO `answers` VALUES (403, 30, 1, '�� ��������� ��������� ����� Ctrl+C');
INSERT INTO `answers` VALUES (404, 30, 1, '�� ��������� ������� <b>"����������"</b> ���� <b>"������"</b>');
INSERT INTO `answers` VALUES (405, 31, 1, '�� ��������� ��������� ����� Ctrl+V');
INSERT INTO `answers` VALUES (406, 31, 1, '�� ��������� ������� <b>"��������"</b> ���� <b>"������"</b>');
INSERT INTO `answers` VALUES (407, 32, 1, '�� ��������� ��������� ����� Ctrl+X');
INSERT INTO `answers` VALUES (408, 32, 1, '�� ��������� ������� <b>"��������"</b> ���� <b>"������"</b>');
INSERT INTO `answers` VALUES (409, 32, 1, '�� ��������� ������� <b>"��������"</b> ������������ ����');
INSERT INTO `answers` VALUES (410, 33, 1, '�� ��������� ��������� ����� Ctrl+S');
INSERT INTO `answers` VALUES (411, 33, 1, '�� ��������� ��������� ����� Ctrl+F12');
INSERT INTO `answers` VALUES (412, 33, 1, '�� ��������� ��������� ����� Ctrl+F');
INSERT INTO `answers` VALUES (413, 111, 0, '����-���� ������� � �������������');
INSERT INTO `answers` VALUES (414, 111, 1, '��������� ������ ESC');
INSERT INTO `answers` VALUES (415, 111, 1, '�������� ���� ������� ���� �� ������ ������� �� ����-����� ���� ���������.');
INSERT INTO `answers` VALUES (416, 112, 0, 'WordArt');
INSERT INTO `answers` VALUES (417, 112, 1, 'ClipArt');
INSERT INTO `answers` VALUES (418, 112, 1, 'FontArt');
INSERT INTO `answers` VALUES (419, 112, 1, 'MS Graph');
INSERT INTO `answers` VALUES (420, 112, 1, 'MS Texture');
INSERT INTO `answers` VALUES (421, 113, 0, '��� ��������� ������� ������ ���������� ������� "��� | �������"');
INSERT INTO `answers` VALUES (422, 113, 1, '��� ��������� ������� ������ ���������� ������� "������ | �������"');
INSERT INTO `answers` VALUES (423, 113, 1, '��� ��������� ������� ������ ���������� ������ "�������"�� ����� ����������� "��������������"');
INSERT INTO `answers` VALUES (424, 114, 0, '��������� �� ������� ������ � ��������');
INSERT INTO `answers` VALUES (425, 114, 1, '���������� ������ � ���� ���������� � ��������');
INSERT INTO `answers` VALUES (426, 114, 1, '��������� ��������� � �������� � ���� ����������');
INSERT INTO `answers` VALUES (427, 114, 1, '������������ ������ MS Excel � ������� MS Word');
INSERT INTO `answers` VALUES (428, 154, 0, '��������� ������� ������ �� ����� ���� ��''����� � ����. ������� ������� <b>�������|���������� ������</b>.');
INSERT INTO `answers` VALUES (429, 149, 0, '���������');
INSERT INTO `answers` VALUES (430, 116, 0, 'Tab');
INSERT INTO `answers` VALUES (431, 116, 1, 'Shift + Tab');
INSERT INTO `answers` VALUES (432, 116, 1, 'Ctrl + Tab');
INSERT INTO `answers` VALUES (433, 116, 1, 'Home');
INSERT INTO `answers` VALUES (434, 116, 1, 'Shift + Insert');
INSERT INTO `answers` VALUES (435, 117, 0, '���');
INSERT INTO `answers` VALUES (436, 117, 1, 'ͳ');
INSERT INTO `answers` VALUES (437, 117, 1, '³� ��������� ����������� ��� ������� ������');
INSERT INTO `answers` VALUES (438, 118, 0, '"������"');
INSERT INTO `answers` VALUES (439, 118, 1, '"���"');
INSERT INTO `answers` VALUES (440, 118, 1, '"������"');
INSERT INTO `answers` VALUES (441, 118, 1, '"�������"');
INSERT INTO `answers` VALUES (442, 118, 1, '"������"');
INSERT INTO `answers` VALUES (443, 119, 0, '����-����� ������� �� ����');
INSERT INTO `answers` VALUES (444, 119, 1, '����-����� ����, ��� ������ �������');
INSERT INTO `answers` VALUES (445, 119, 1, '����-����� �������, ��� ������ ����');
INSERT INTO `answers` VALUES (446, 120, 1, '����-��� ������� ����� ������');
INSERT INTO `answers` VALUES (447, 120, 0, '���� ���� ���� ������ �� ��''���');
INSERT INTO `answers` VALUES (448, 121, 0, '����-���� �������� � �������������');
INSERT INTO `answers` VALUES (449, 121, 1, '�� �������� ���');
INSERT INTO `answers` VALUES (450, 121, 1, '�� 180 ������� ��������');
INSERT INTO `answers` VALUES (451, 121, 1, '�� 180 ������� ����������');
INSERT INTO `answers` VALUES (452, 121, 1, '�� 90 ��/����� ����������� ������');
INSERT INTO `answers` VALUES (453, 122, 0, 'ͳ');
INSERT INTO `answers` VALUES (454, 122, 1, '���, ��������� ��� ������� ������ Ctrl');
INSERT INTO `answers` VALUES (455, 122, 1, '���, ��������� ���������� ������ Shift');
INSERT INTO `answers` VALUES (456, 122, 1, '���, �� ��������� ������ �� ����� ����������� "������� � �������"');
INSERT INTO `answers` VALUES (457, 123, 0, '� Word ����������� ������� ������� ������ ������� 1 ���� �� 1 ���� (1 ����=2,54 ��) � ����� �������� ���� <b>������ �������</b>.');
INSERT INTO `answers` VALUES (458, 123, 1, '� Word ����������� ������� ������� ������ ������� 1 ���� �� 1 ���� (1 ����=2,54 ��) � ���������� �������� ������� "��������".');
INSERT INTO `answers` VALUES (459, 123, 1, '� Word ����������� ����� �������� ���� <b>������ �������</b> ��� ������ ������ ����������� ��''����.');
INSERT INTO `answers` VALUES (460, 123, 1, '� Word ����������� ������� � ����� ����������� ������� ������� � ����� �������� ���� <b>�����</b>.');
INSERT INTO `answers` VALUES (461, 124, 0, '�����������');
INSERT INTO `answers` VALUES (462, 124, 1, '����������� ��� �����');
INSERT INTO `answers` VALUES (463, 124, 1, '����������');
INSERT INTO `answers` VALUES (464, 124, 1, '�����������');
INSERT INTO `answers` VALUES (465, 125, 0, '"���������"');
INSERT INTO `answers` VALUES (466, 125, 1, '"����� �����"');
INSERT INTO `answers` VALUES (467, 125, 1, '"����������"');
INSERT INTO `answers` VALUES (468, 125, 1, '"������"');
INSERT INTO `answers` VALUES (469, 125, 1, '"������ �������"');
INSERT INTO `answers` VALUES (470, 126, 0, 'ͳ');
INSERT INTO `answers` VALUES (471, 126, 1, '���, �� ��������� ������ �� ����� �����������');
INSERT INTO `answers` VALUES (472, 126, 1, '���, ���������� ����� �����');
INSERT INTO `answers` VALUES (473, 127, 0, '�������� �� ����������� 䳿');
INSERT INTO `answers` VALUES (474, 127, 1, '������ ���� ������, �������');
INSERT INTO `answers` VALUES (475, 127, 1, '��������� ���� � ����-����� ���� �������, ������, ������� �� ����');
INSERT INTO `answers` VALUES (476, 127, 1, '������� ���, ��� ����� ������ ���� ���������������� ���������');
INSERT INTO `answers` VALUES (477, 128, 1, 'ͳ');
INSERT INTO `answers` VALUES (478, 128, 0, '���');
INSERT INTO `answers` VALUES (479, 120, 1, '��� ����� ������');
INSERT INTO `answers` VALUES (480, 120, 1, '��� ����� ������');
INSERT INTO `answers` VALUES (481, 129, 0, '������� ������� <b>������|�����...</b>');
INSERT INTO `answers` VALUES (482, 129, 1, '������� ������� <b>������|��������...</b>');
INSERT INTO `answers` VALUES (483, 129, 1, '������� ������� <b>������|�����...</b>');
INSERT INTO `answers` VALUES (484, 129, 1, '������� ������� <b>������|��������...</b>');
INSERT INTO `answers` VALUES (485, 129, 1, '����������� ��������� ����� <b>CTRL+S</b>');
INSERT INTO `answers` VALUES (486, 130, 1, '��������� ��������� ����� CTL+R');
INSERT INTO `answers` VALUES (487, 130, 1, '������� ������� <b>������|�����...</b>');
INSERT INTO `answers` VALUES (488, 131, 1, '5');
INSERT INTO `answers` VALUES (489, 131, 0, '9');
INSERT INTO `answers` VALUES (490, 130, 0, '������� ������� <b>������|�������...</b>');
INSERT INTO `answers` VALUES (491, 132, 1, 'CTRL+H - ����� ������ ��������� ������ �� �����.');
INSERT INTO `answers` VALUES (492, 132, 1, 'CTRL+S - �������� �������� ��������.');
INSERT INTO `answers` VALUES (493, 132, 1, '�� ����������� ������.');
INSERT INTO `answers` VALUES (494, 132, 1, 'CTRL+F - ����� ��������� ������.');
INSERT INTO `answers` VALUES (495, 132, 0, 'CTRL+J - ������� �� ��''����  ���������.');
INSERT INTO `answers` VALUES (496, 133, 0, '������� �����, ���� ��������� �������� � ������ �������� ������ ����������. ������� ������� <b>�������|���������</b>, � ����������� �������');
INSERT INTO `answers` VALUES (497, 133, 1, '������� ������� <b>�������|���������</b>, � ����������� �������. ������� �����, ���� ��������� �������� � ������ �������� ������ ����������');
INSERT INTO `answers` VALUES (498, 133, 1, '������� ������� <b>�������|���������</b>, � ����������� �������.');
INSERT INTO `answers` VALUES (499, 133, 1, '������� �����, ���� ��������� �������� � ������ �������� ������ ����������. ��������� ��������� ����� CTRL+F4.');
INSERT INTO `answers` VALUES (500, 134, 1, '��������� �� �������������, ��� � ��������������  ������������� ������.');
INSERT INTO `answers` VALUES (501, 134, 1, '��������� �� �������������, ��� � �������������� ������������ ������.');
INSERT INTO `answers` VALUES (502, 134, 1, '��������� ������������, ������������� ������.');
INSERT INTO `answers` VALUES (503, 135, 0, '��������� ������ <b>��������� ������</b> ����� ����������� <b>��������������</b>.');
INSERT INTO `answers` VALUES (504, 135, 1, '��������� ������ <b>�������� ������</b> ����� ����������� <b>��������������</b>.');
INSERT INTO `answers` VALUES (505, 135, 1, '������� ������� <b>��������� ������</b> ���� <b>������</b>.');
INSERT INTO `answers` VALUES (506, 135, 1, '������� ������� <b>��������� ������</b> ���� <b>������</b>.');
INSERT INTO `answers` VALUES (507, 136, 0, '��������� ������ <b>�������� ������</b> ����� ����������� <b>��������������</b>.');
INSERT INTO `answers` VALUES (508, 136, 1, '��������� ������ <b>��������� ������</b> ����� ����������� <b>��������������</b>.');
INSERT INTO `answers` VALUES (509, 136, 1, '������� ������� <b>��������� ������</b> ���� <b>������</b>.');
INSERT INTO `answers` VALUES (510, 136, 1, '������� ������� <b>��������� ������</b> ���� <b>������</b>.');
INSERT INTO `answers` VALUES (511, 137, 0, 'Ctrl + End');
INSERT INTO `answers` VALUES (512, 137, 1, 'Ctrl + Home');
INSERT INTO `answers` VALUES (513, 137, 1, 'Ctrl + Shift + End');
INSERT INTO `answers` VALUES (514, 137, 1, 'Ctrl + Shift + Home');
INSERT INTO `answers` VALUES (515, 128, 1, '�������� �� ��������');
INSERT INTO `answers` VALUES (516, 138, 0, 'Ctrl + A');
INSERT INTO `answers` VALUES (517, 138, 1, 'Ctrl + C');
INSERT INTO `answers` VALUES (518, 138, 1, 'Ctrl + V');
INSERT INTO `answers` VALUES (519, 138, 1, 'Ctrl + X');
INSERT INTO `answers` VALUES (520, 134, 0, '��������� �� �������������, ��� � �������������� ������������, ������������� ������.');
INSERT INTO `answers` VALUES (521, 139, 0, '����������� ������� ������, ������� ������� <b>�������|������� ������...</b>');
INSERT INTO `answers` VALUES (522, 139, 1, '������� �������� � ��� ����������� ������, ������� ������� <b>�������|������� ������...</b>');
INSERT INTO `answers` VALUES (523, 139, 1, '������� ����� � ��� ����������� ������, ������� ������� <b>�������|������� ������...</b>');
INSERT INTO `answers` VALUES (524, 139, 1, '����������� ������� ������, ��������� ������ <b>Delete</b>');
INSERT INTO `answers` VALUES (525, 140, 0, '������� ��������, ������� ������� <b>�������|������� �������...</b>');
INSERT INTO `answers` VALUES (526, 140, 1, '������� ��������, ������� ������� <b>�������|������� ������...</b>');
INSERT INTO `answers` VALUES (527, 140, 1, '������� ��������, ��������� ������ <b>Delete</b>');
INSERT INTO `answers` VALUES (528, 140, 1, '����� ������ ��������� �������� �� ��������� ������ <b>Delete</b>');
INSERT INTO `answers` VALUES (529, 141, 0, '��������� �����');
INSERT INTO `answers` VALUES (530, 141, 1, '����� ���������');
INSERT INTO `answers` VALUES (531, 141, 1, '����� ������� �������');
INSERT INTO `answers` VALUES (532, 141, 1, '���-���������');
INSERT INTO `answers` VALUES (533, 142, 0, '������� �����, ������� ������� <b>�������|������� ������...</b>');
INSERT INTO `answers` VALUES (534, 142, 1, '������� �����, ��������� ������ <b>Delete</b>');
INSERT INTO `answers` VALUES (535, 142, 1, '����� ������ ����� �������� �� ��������� ������ <b>Delete</b>');
INSERT INTO `answers` VALUES (536, 142, 1, '�� ����������� ������ ���.');
INSERT INTO `answers` VALUES (537, 143, 0, 'SHIFT+HOME');
INSERT INTO `answers` VALUES (538, 143, 1, 'CTRL+END');
INSERT INTO `answers` VALUES (539, 143, 1, 'PAGE DOWN');
INSERT INTO `answers` VALUES (540, 143, 1, 'PAGE DN');
INSERT INTO `answers` VALUES (541, 144, 0, 'CTRL+F6');
INSERT INTO `answers` VALUES (542, 144, 1, 'SHIFT+F5');
INSERT INTO `answers` VALUES (543, 144, 1, 'SHIFT+F12');
INSERT INTO `answers` VALUES (544, 144, 1, 'CTRL+G');
INSERT INTO `answers` VALUES (545, 145, 1, '���������� ������ ���� �� ����  � ������ � ����� �������� ���� ������� ����');
INSERT INTO `answers` VALUES (546, 145, 1, '���������� ������ ���� ���� �� ������ � ���� �������� ���� ������� ����');
INSERT INTO `answers` VALUES (547, 145, 0, '��������� ������ ����� � ������� � ��������� ����� ������ ����');
INSERT INTO `answers` VALUES (548, 146, 1, '���� �� �������� ��� ���� �������� �ᒺ���');
INSERT INTO `answers` VALUES (549, 146, 1, '���� ������ ����� �����');
INSERT INTO `answers` VALUES (550, 146, 0, '���� ������ ����� �����');
INSERT INTO `answers` VALUES (551, 147, 0, 'CTRL+F');
INSERT INTO `answers` VALUES (552, 147, 1, 'CTRL+C');
INSERT INTO `answers` VALUES (553, 147, 1, 'CTRL+INSERT');
INSERT INTO `answers` VALUES (554, 148, 0, '��� ����������� ����� ������� ���� �� ��������� ���� �����');
INSERT INTO `answers` VALUES (555, 148, 1, '��� ����������� ����� ���� �� �� ��������� ���������');
INSERT INTO `answers` VALUES (556, 149, 1, '�����������');
INSERT INTO `answers` VALUES (557, 150, 1, '�');
INSERT INTO `answers` VALUES (558, 150, 0, '���');
INSERT INTO `answers` VALUES (559, 151, 0, '������� �����, ������� �� ������� � ��������� ���, ��� SHIFT+TAB');
INSERT INTO `answers` VALUES (560, 151, 1, '������� �����, ������� �� ������� � ��������� F5, ��� SHIFT+F5');
INSERT INTO `answers` VALUES (561, 151, 1, '��������� ����������� ����������� ������ �� �������������');
INSERT INTO `answers` VALUES (562, 152, 1, '��������� ������� ��������, � ����� ���� ��������� ����� �����, ������� ������� <b>�������|�������� ������</b>');
INSERT INTO `answers` VALUES (563, 152, 1, '��������� ����������� ������ �����, ����� ���� ���� ��������� ����� �����, ��������� ��������� ����� <b>Shif+Ins</b>');
INSERT INTO `answers` VALUES (564, 152, 0, '��������� ����������� ������ �����, ����� ���� ���� ��������� ����� �����, ������� ������� <b>�������|�������� ������</b>');
INSERT INTO `answers` VALUES (565, 152, 1, '����� ������� �� ����');
INSERT INTO `answers` VALUES (566, 152, 1, '�� ������ ���');
INSERT INTO `answers` VALUES (567, 153, 0, '��������� ������� �������� ����� ���� ������� ���� ��������� ����� ��������, ������� ������� <b>�������|�������� ������</b>');
INSERT INTO `answers` VALUES (568, 153, 1, '��������� ������� �������� ����� ���� ������� ���� ��������� ����� ��������, ��������� ��������� ����� <b>Shift+Ins</b>');
INSERT INTO `answers` VALUES (569, 153, 1, '��������� ������� �����, � ����� ���� ��������� ����� ��������, ������� ������� <b>�������|�������� ������</b>');
INSERT INTO `answers` VALUES (570, 153, 1, '����� ������� �� ����');
INSERT INTO `answers` VALUES (571, 153, 1, '�� ������ ���');
INSERT INTO `answers` VALUES (572, 154, 1, '��������� ������� ������� <b>�������|���������� ������</b>. ������� ������ �� ����� ���� ��''����� � ����.');
INSERT INTO `answers` VALUES (573, 154, 1, '��������� ������� ������ �� ����� ���� ��''����� � ����. ������� ������� <b>������|���������� ������</b>.');
INSERT INTO `answers` VALUES (574, 154, 1, '��������� ������� ������� <b>������|���������� ������</b>.  ������� ������ �� ����� ���� ��''����� � ����.');
INSERT INTO `answers` VALUES (575, 155, 0, '������ � ����� ����� ������� ���������.');
INSERT INTO `answers` VALUES (576, 155, 1, '������ ����� ������� ���������.');
INSERT INTO `answers` VALUES (577, 155, 1, '����� ����� ������� ���������.');
INSERT INTO `answers` VALUES (578, 155, 1, '������ � ����� ����� ������� ���������.');
INSERT INTO `answers` VALUES (579, 155, 1, '������ ����� ������� ���������.');
INSERT INTO `answers` VALUES (580, 156, 1, '��� �������� ��������� �����. �� �������� ������ ����������� �� ��������, �� ������������� �� �����. ���������, ����� �������, �������� ��������� �������.');
INSERT INTO `answers` VALUES (581, 156, 1, '��� ������������ ��������� ����������� �������, ������. ��� ���� ����� ���������� �� ��� �������� ��''�. ���������, ����� �������, ���� ���������, �������� ������� �������.');
INSERT INTO `answers` VALUES (582, 156, 0, '����������� ��������� ��� ��������� ������ ���� �������� ����������, �� ��������� ���������. ���������, ����� �������, �������� ������� �������.');
INSERT INTO `answers` VALUES (583, 157, 0, '<b>���|�����������</b>');
INSERT INTO `answers` VALUES (584, 157, 1, '<b>����|�����������</b>');
INSERT INTO `answers` VALUES (585, 157, 1, '<b>����|�����������</b>');
INSERT INTO `answers` VALUES (586, 157, 1, '<b>�����������|��������</b>');
INSERT INTO `answers` VALUES (587, 158, 0, '���');
INSERT INTO `answers` VALUES (588, 158, 1, 'ͳ');
INSERT INTO `answers` VALUES (589, 158, 1, '���, ���� ���������� �������� <b>������� ������ �������</b> � ���������� ���, �� ����������� �������� <b>������|���������</b>');
INSERT INTO `answers` VALUES (590, 159, 0, '� ���������� ���, �� ����������� �������� <b>������|�����...</b>');
INSERT INTO `answers` VALUES (591, 159, 1, '� ���������� ���, �� ����������� �������� <b>������|�������� �����...</b>');
INSERT INTO `answers` VALUES (592, 159, 1, '� ���������� ���, �� ����������� �������� <b>������|�������� �����...</b>');
INSERT INTO `answers` VALUES (593, 160, 0, '� ���������� ���, �� ����������� �������� <b>������|�����...</b>');
INSERT INTO `answers` VALUES (594, 160, 1, '� ���������� ���, �� ����������� �������� <b>������|������� �����...</b>');
INSERT INTO `answers` VALUES (595, 160, 1, '� ���������� ���, �� ����������� �������� <b>������|������� �����...</b>');
INSERT INTO `answers` VALUES (596, 161, 0, '� ���������� ���, �� ����������� �������� <b>������|�����...</b>');
INSERT INTO `answers` VALUES (597, 161, 1, '� ���������� ���, �� ����������� �������� <b>������|���������� �����...</b>');
INSERT INTO `answers` VALUES (598, 161, 1, '� ���������� ���, �� ����������� �������� <b>������|���������� �����...</b>');
INSERT INTO `answers` VALUES (599, 162, 1, '����������� �� ��������� ���������, �� ����� ���� ������� � ����, ����� �������� ������� (���������, 16-28).');
INSERT INTO `answers` VALUES (600, 162, 1, '����������� �� ��������� ���������, �� ����� ���� ������� � ����, �������� ���� ("������� 1 � 9").');
INSERT INTO `answers` VALUES (601, 162, 0, '����������� �� ��������� ���������, �� ����� ���� ������� � ����, �������� ���� ("��������� 1 � 9").');
INSERT INTO `answers` VALUES (602, 162, 1, '������� ��������� ���������, �� ����� ���� ������� � ����, �� ������.');
INSERT INTO `answers` VALUES (603, 162, 1, '�� ������ ���.');
INSERT INTO `answers` VALUES (604, 163, 0, '�������� �������� ������ � ����-��� ���� �����, ���� ��������� ��������. ��������� ������ "F9".');
INSERT INTO `answers` VALUES (605, 163, 1, '�������� �������� ������ � ����-��� ���� ��������� ���������, ���� ��������� � ����. ��������� ������ "F9".');
INSERT INTO `answers` VALUES (606, 163, 1, '�������� ������� ���� �����, ��� �����. ��������� ������ "F9".');
INSERT INTO `answers` VALUES (607, 130, 1, '�� ����������� ������.');
INSERT INTO `answers` VALUES (608, 131, 1, '15');
INSERT INTO `answers` VALUES (609, 164, 0, '�� ������ ���');
INSERT INTO `answers` VALUES (610, 164, 1, '������� � ���� ��� ������� ������ ������������ � � ������ ������� ������ "������� � �������"');
INSERT INTO `answers` VALUES (611, 164, 1, '� ����������� ���� � ������ ����� ���� �� ������� ����������� ������� � ������ "������� � ������"');
INSERT INTO `answers` VALUES (612, 164, 1, '��������� ������ "������� � �������" �� ����� ����������� �����������');
INSERT INTO `answers` VALUES (613, 165, 0, '���');
INSERT INTO `answers` VALUES (614, 165, 1, 'ͳ');
INSERT INTO `answers` VALUES (615, 166, 1, '���, �������� � ���� ������� ������� ������� ������');
INSERT INTO `answers` VALUES (616, 166, 1, 'ͳ, � MS Word �� ���������');
INSERT INTO `answers` VALUES (617, 166, 0, '���, �� ��������� �������� "������" �� ����� ����������� "������� � �������"');
INSERT INTO `answers` VALUES (618, 167, 0, 'Tab');
INSERT INTO `answers` VALUES (619, 167, 1, 'Insert');
INSERT INTO `answers` VALUES (620, 167, 1, 'Enter');
INSERT INTO `answers` VALUES (621, 167, 1, 'Shift');
INSERT INTO `answers` VALUES (622, 167, 1, '����-��� � �������������');
INSERT INTO `answers` VALUES (623, 168, 0, '���');
INSERT INTO `answers` VALUES (624, 168, 1, '���, ��� � ���, �� ����� ��������� ������� ���������');
INSERT INTO `answers` VALUES (625, 168, 1, '���, ��� � ���, �� ����� ��������� ������� ���� ������');
INSERT INTO `answers` VALUES (626, 168, 1, '�');
INSERT INTO `answers` VALUES (627, 168, 1, '�, ����� ����� ������� ����������� � �����');
INSERT INTO `answers` VALUES (628, 169, 0, '������� �� �������� � ������� ������� <b>������� | �������...</b>');
INSERT INTO `answers` VALUES (629, 169, 1, '������� �� � ��������� ������ Delete');
INSERT INTO `answers` VALUES (630, 169, 1, '������� �� � ��������� ��������� ����� Ctrl+Delete');
INSERT INTO `answers` VALUES (631, 169, 1, '������� �� �������� � ������� ������� <b>������� | ��������...</b>');
INSERT INTO `answers` VALUES (632, 53, 1, 'Alt+Home');
INSERT INTO `answers` VALUES (633, 170, 0, '- ����� ���������� ����������� � ������ ����� �� ��������');
INSERT INTO `answers` VALUES (634, 170, 1, '- ����� ���������� ����������� ����� �� ��������� ���������� ���������');
INSERT INTO `answers` VALUES (635, 170, 1, '- ����� ���������� �������� ��������������� �� ������������� �����.');
INSERT INTO `answers` VALUES (636, 171, 0, '<b>������� � �������</b>');
INSERT INTO `answers` VALUES (637, 171, 1, '<b>������� � �������</b>');
INSERT INTO `answers` VALUES (638, 171, 1, '<b>��������������</b>');
INSERT INTO `answers` VALUES (639, 171, 1, '<b>�������������� ������</b>');
INSERT INTO `answers` VALUES (640, 171, 1, '<b>���������</b>');
INSERT INTO `answers` VALUES (641, 172, 0, '3 ���������');
INSERT INTO `answers` VALUES (642, 172, 1, '2 ���������');
INSERT INTO `answers` VALUES (643, 172, 1, '4 ���������');
INSERT INTO `answers` VALUES (644, 172, 1, '1 ��������');
INSERT INTO `answers` VALUES (645, 172, 1, '�������� �������');
INSERT INTO `answers` VALUES (646, 173, 0, '<b>������ �������</b>');
INSERT INTO `answers` VALUES (647, 173, 1, '<b>��������������</b>');
INSERT INTO `answers` VALUES (648, 173, 1, '<b>��������� �����������</b>');
INSERT INTO `answers` VALUES (649, 173, 1, '<b>���������</b>');
INSERT INTO `answers` VALUES (650, 173, 1, '������ ���� �� ����. ������������ ����������� ����� �� ��������� ������� �����������');
INSERT INTO `answers` VALUES (651, 174, 0, '��������� ������ (����� ����� �������)');
INSERT INTO `answers` VALUES (652, 174, 1, '��������� ������������ ������������ ����� (���, ����, ����, �����������)');
INSERT INTO `answers` VALUES (653, 174, 1, '��������� ������ �� ������������ ������������ �����');
INSERT INTO `answers` VALUES (654, 175, 0, '��������� ������������ ������������ ����� (���, ����, ����, �����������)');
INSERT INTO `answers` VALUES (655, 175, 1, '��������� ������ (����� ����� �������)');
INSERT INTO `answers` VALUES (656, 175, 1, '��������� ������ �� ������������ ������������ �����');
INSERT INTO `answers` VALUES (657, 176, 0, '��''������� �������� ��������� ��''���� � ����� ����');
INSERT INTO `answers` VALUES (658, 176, 1, '��''������� �������� ��������� ����� � ����� ����');
INSERT INTO `answers` VALUES (659, 176, 1, '������������ ������������ ������� ������ ����� ��''����');
INSERT INTO `answers` VALUES (660, 176, 1, '������������ ��������� ��''����, �� ���������� �� ����� ��������� �����, �� ���� ���');
INSERT INTO `answers` VALUES (661, 177, 0, '������� ����� ��''������� ��������� ��''���� �� ����� ��������');
INSERT INTO `answers` VALUES (662, 177, 1, '������� ����� ��''������� ��������� ����� �� �����');
INSERT INTO `answers` VALUES (663, 177, 1, '������������ ������������ ������� ������ ����� ��''����');
INSERT INTO `answers` VALUES (664, 177, 1, '������������ ��������� ��''����, �� ���������� �� ������ ���������� ���, �� ��� ����');
INSERT INTO `answers` VALUES (665, 178, 0, '���, ���� � ����������� ���� ����� ��''���� ������� ������� <b>�������� �����</b>');
INSERT INTO `answers` VALUES (666, 178, 1, '���, ���� ����� ��� ���� �������� ������ �� ��''����');
INSERT INTO `answers` VALUES (667, 178, 1, 'ͳ, ��� ����� ������� ��������������� �������  <b>�������</b> ����� ����������� <b>���������</b>');
INSERT INTO `answers` VALUES (668, 178, 1, 'ͳ, ������� ����� ���� ���� �������� ����� �� ��������� ���.');
INSERT INTO `answers` VALUES (669, 179, 0, '���������� ��������� ����� �� ����, ���� �� ����� ������ ���������.');
INSERT INTO `answers` VALUES (670, 179, 1, 'Ctrl+Shift+E');
INSERT INTO `answers` VALUES (671, 179, 1, 'Ctrl+E');
INSERT INTO `answers` VALUES (672, 179, 1, '������� �������� ������ ��������� ����������, �� ��������� ���� �� ��������� ��������� ����� ���������.');
INSERT INTO `answers` VALUES (673, 179, 1, 'Shift+E');
INSERT INTO `answers` VALUES (674, 180, 0, '... ��� �������� �������� ��''���� ���������');
INSERT INTO `answers` VALUES (675, 180, 1, '... ��� ������ ������ ��''����');
INSERT INTO `answers` VALUES (676, 180, 1, '... ��� ���� ������� ������');
INSERT INTO `answers` VALUES (677, 180, 1, '... ��� ������ ���� ��');
INSERT INTO `answers` VALUES (678, 181, 0, '���');
INSERT INTO `answers` VALUES (679, 181, 1, 'ͳ');
INSERT INTO `answers` VALUES (680, 182, 0, '...� ���� ������� ������� ����� ������� - �� �����');
INSERT INTO `answers` VALUES (681, 182, 1, '...� ���� ������� ������� ����� ��''���');
INSERT INTO `answers` VALUES (682, 182, 1, '......� ���� ������� ������� ����� ������� - ��������');
INSERT INTO `answers` VALUES (683, 183, 0, '���');
INSERT INTO `answers` VALUES (684, 183, 1, 'ͳ');
INSERT INTO `answers` VALUES (685, 184, 0, '���');
INSERT INTO `answers` VALUES (686, 184, 1, 'ͳ');
INSERT INTO `answers` VALUES (687, 185, 1, '��������� ������ Esc �� ��������');
INSERT INTO `answers` VALUES (688, 185, 0, '��������� ������ "�������" �� ����� ����������� "�����������"');
INSERT INTO `answers` VALUES (689, 185, 1, '�������� ����� ���� ����� �����������');
INSERT INTO `answers` VALUES (690, 186, 0, '���');
INSERT INTO `answers` VALUES (691, 186, 1, 'ͳ');
INSERT INTO `answers` VALUES (692, 187, 0, '���');
INSERT INTO `answers` VALUES (693, 187, 1, 'ͳ');
INSERT INTO `answers` VALUES (694, 148, 1, '��� ����������� �������, �� ��������� ������������');
INSERT INTO `answers` VALUES (695, 189, 0, '�������');
INSERT INTO `answers` VALUES (696, 189, 1, '����������� ���������');
INSERT INTO `answers` VALUES (697, 189, 1, '����������� �����');
INSERT INTO `answers` VALUES (698, 189, 1, '������������� ������');
INSERT INTO `answers` VALUES (699, 190, 0, '������');
INSERT INTO `answers` VALUES (700, 190, 1, '��������');
INSERT INTO `answers` VALUES (701, 190, 1, '������� ����');
INSERT INTO `answers` VALUES (702, 190, 1, '����� Excel');
INSERT INTO `answers` VALUES (703, 190, 1, '�����');
INSERT INTO `answers` VALUES (704, 191, 1, '�������');
INSERT INTO `answers` VALUES (705, 191, 1, '���� �����');
INSERT INTO `answers` VALUES (706, 191, 0, '�����');
INSERT INTO `answers` VALUES (707, 192, 0, '�������� - 256, ����� � 65536.');
INSERT INTO `answers` VALUES (708, 192, 1, '�������� - 128, ����� � 32768.');
INSERT INTO `answers` VALUES (709, 192, 1, '�������� - 64, ����� � 16384.');
INSERT INTO `answers` VALUES (710, 193, 0, 'Ctrl+F6');
INSERT INTO `answers` VALUES (711, 193, 1, 'Alt+F4');
INSERT INTO `answers` VALUES (712, 193, 1, 'Alt+F3');
INSERT INTO `answers` VALUES (713, 193, 1, 'Shif+F1');
INSERT INTO `answers` VALUES (714, 194, 0, 'Ctrl+Shif+F6');
INSERT INTO `answers` VALUES (715, 194, 1, 'Ctrl+Alt+Del');
INSERT INTO `answers` VALUES (716, 194, 1, 'Ctrl+Alt+Esc');
INSERT INTO `answers` VALUES (717, 194, 1, 'Ctrl+Shift+F1');
INSERT INTO `answers` VALUES (718, 195, 0, '�������� �� ��������� ���� �����');
INSERT INTO `answers` VALUES (719, 195, 1, '�������� �� ���������� Excel');
INSERT INTO `answers` VALUES (720, 195, 1, '�������� �� �������� �����');
INSERT INTO `answers` VALUES (721, 195, 1, '�������� � ����� �������� ����� �����');
INSERT INTO `answers` VALUES (722, 196, 0, '�������� �� ��������� ���� �����');
INSERT INTO `answers` VALUES (723, 196, 1, '�������� �� ������������ Excel');
INSERT INTO `answers` VALUES (724, 196, 1, '�������� �� ���������� �����');
INSERT INTO `answers` VALUES (725, 196, 1, '�������� �� ������� �������� ����� �����');
INSERT INTO `answers` VALUES (726, 197, 1, '����������� ������� �������� ���� ���� ������');
INSERT INTO `answers` VALUES (727, 197, 1, '������� ������ �� ����� �����');
INSERT INTO `answers` VALUES (728, 197, 0, '�������� �� ������ �����');
INSERT INTO `answers` VALUES (729, 198, 0, '�������� �� ������ ������� �����, ���, ��������� ������ SHIFT, �������� �� ������ ���������� �����');
INSERT INTO `answers` VALUES (730, 198, 1, '�������� �� ���� �� ������� ����� �� ��������� �������');
INSERT INTO `answers` VALUES (731, 198, 1, '����������� ������� <b>��������</b> ���� <b>������</b>');
INSERT INTO `answers` VALUES (732, 198, 1, '��������� ���������� ��� ������ ���� ���������� �� �������� ����� �� ��������� �������.');
INSERT INTO `answers` VALUES (733, 198, 1, '�� ������� ���');
INSERT INTO `answers` VALUES (734, 199, 0, '��������� �������� �� ������ ������� �����, ���, ��������� ������ CTRL, �������� �� ������� ��� ����� �����');
INSERT INTO `answers` VALUES (735, 199, 1, '�������� �� ���� �� ������� ����� �� ��������� �������');
INSERT INTO `answers` VALUES (736, 199, 1, '����������� ������� �������� ����� ���� ������');
INSERT INTO `answers` VALUES (737, 199, 1, '��������� ���������� ��� ������ ���� ���������� �� �������� ����� �� ��������� �������');
INSERT INTO `answers` VALUES (738, 199, 1, '�� ������� ���');
INSERT INTO `answers` VALUES (739, 200, 0, '���������� ������ �� ����� ��������� ����� � ��������� ���������� ����, � ����� ������� ������� ��������� ��� ������');
INSERT INTO `answers` VALUES (740, 200, 1, '����������� ������� �������� ��� ����� ���� ������');
INSERT INTO `answers` VALUES (741, 200, 1, '����������� ������� �������� ��� ���� ������');
INSERT INTO `answers` VALUES (742, 200, 1, '�������� �� ���� �� ������� ����� �� ��������� �������');
INSERT INTO `answers` VALUES (743, 200, 1, '�� ������� ���');
INSERT INTO `answers` VALUES (744, 201, 0, '���');
INSERT INTO `answers` VALUES (745, 201, 1, 'ͳ');
INSERT INTO `answers` VALUES (746, 201, 1, '���, ���� ���������� �������� <b>������������� �����</b>, ������� <b>������</b>, ������� <b>���������</b>, ���� <b>������</b>');
INSERT INTO `answers` VALUES (747, 201, 1, '�� ������� ���');
INSERT INTO `answers` VALUES (748, 202, 0, '������� ������� ����� � ���� ���������.');
INSERT INTO `answers` VALUES (749, 202, 1, '������� ������� ����� � ���� �������.');
INSERT INTO `answers` VALUES (750, 202, 1, '������� ������� ����� � ���� �����.');
INSERT INTO `answers` VALUES (751, 202, 1, '������� ������� ����� � ���� ��������.');
INSERT INTO `answers` VALUES (752, 202, 1, '�� ������� ���.');
INSERT INTO `answers` VALUES (753, 203, 1, '��������� ���������� ������ ALT, ������� ������� ������� �����, ��� �������� ������� ����� � ���� ���������.');
INSERT INTO `answers` VALUES (754, 203, 1, '��������� ���������� ������ CTRL, ������� ������� ������� �����, ��� �������� ������� ����� � ���� ���������.');
INSERT INTO `answers` VALUES (755, 203, 0, '��������� ���������� ������ SHIFT, ������� ������� ������� �����, ��� �������� ������� ����� � ���� ���������.');
INSERT INTO `answers` VALUES (756, 204, 1, '�������� <b>������ � ����� �����</b>, ������� <b>�������������</b>, ������� <b>���������</b>, ���� <b>������</b>.');
INSERT INTO `answers` VALUES (757, 204, 1, '�������� <b>������ � ����� �����</b>, ������� <b>�������������</b>, ������� <b>���������</b>, ���� <b>������</b>.');
INSERT INTO `answers` VALUES (758, 205, 0, '�� ������� ���.');
INSERT INTO `answers` VALUES (759, 205, 1, '���, ������� ������� �����, ���� �� ��������� ���� ���������� ������ ���� ������ ����� � ������� �������.');
INSERT INTO `answers` VALUES (760, 205, 1, '���, �� ��������� ������� �����������/����������� ���� ���� ������.');
INSERT INTO `answers` VALUES (761, 206, 0, '��-�����, ������� �����, �� ����� ���� �������. ��-�����, ������� ������� �������� ���� � ���� ��������.');
INSERT INTO `answers` VALUES (762, 206, 1, '��-�����, ������� �����, �� ����� ���� �������. ��-�����, ��������� ������ Delete.');
INSERT INTO `answers` VALUES (763, 206, 1, '�� ������� ���.');
INSERT INTO `answers` VALUES (764, 207, 0, 'ͳ, �� ���������.');
INSERT INTO `answers` VALUES (765, 207, 1, '���, ���� ���������� �������� <b>�������� �������� ��� �������</b>, ������� <b>������</b>, ������� <b>���������</b>, ���� <b>������</b>.');
INSERT INTO `answers` VALUES (766, 207, 1, '���, �� � ������ �� �������� �� ������� ����� �� �������� ����.');
INSERT INTO `answers` VALUES (767, 208, 0, '�� ������� ���.');
INSERT INTO `answers` VALUES (768, 208, 1, '��-�����, ��������� ����������� ����, ���� �� ���� ��������������. ��-�����, �������� ����� �������� �� ������. ��-����, ������ ���� ��''� ������ �������.');
INSERT INTO `answers` VALUES (769, 208, 1, '��-�����, ��������� ����������� ����, ���� �� ���� ��������������. ��-�����, � ������������ ���� ������ ������� ������� "�������������". ��-����, ������ ���� ��''� ������ �������.');
INSERT INTO `answers` VALUES (770, 209, 1, '������� ����� (����), ��������� � ���������� ������ SHIFT, ���������� ����� (����) � ������� ���������, ��������� ������ SHIFT � ����� ���� ����� ������ ����.');
INSERT INTO `answers` VALUES (771, 209, 1, '������� ����� (����), ��������� � ���������� ������ SHIFT, ���������� ����� (����) � ������� ���������, ��������� ������ ���� � ����� ���� ����� ������ SHIFT.');
INSERT INTO `answers` VALUES (772, 209, 1, '������� ����� (����), ��������� � ���������� ������ CTRL, ���������� ����� (����) � ������� ���������, ��������� ������ CTRL � ����� ���� ����� ������ ����.');
INSERT INTO `answers` VALUES (773, 209, 0, '������� ����� (����), ��������� � ���������� ������ CTRL, ���������� ����� (����) � ������� ���������, ��������� ������ ���� � ����� ���� ����� ������ CTRL.');
INSERT INTO `answers` VALUES (774, 210, 1, '� ����� -');
INSERT INTO `answers` VALUES (775, 210, 1, '� ����� +');
INSERT INTO `answers` VALUES (776, 210, 1, '� ����� "');
INSERT INTO `answers` VALUES (777, 210, 0, '� ����� =');
INSERT INTO `answers` VALUES (778, 211, 0, '������� /�������');
INSERT INTO `answers` VALUES (779, 211, 1, '�������/�������');
INSERT INTO `answers` VALUES (780, 211, 1, '������/�������');
INSERT INTO `answers` VALUES (781, 211, 1, '������/�������');
INSERT INTO `answers` VALUES (782, 211, 1, '������/�������');
INSERT INTO `answers` VALUES (783, 212, 0, '��');
INSERT INTO `answers` VALUES (784, 212, 1, '���''���');
INSERT INTO `answers` VALUES (785, 212, 1, '������');
INSERT INTO `answers` VALUES (786, 212, 1, '�''���������');
INSERT INTO `answers` VALUES (787, 212, 1, '���');
INSERT INTO `answers` VALUES (788, 213, 1, '���� ������ ����.');
INSERT INTO `answers` VALUES (789, 213, 1, '������, ��� ���� ������������� ������������ ������ ���� � �������� ��� ��������� ��� ��� ��. \r\n');
INSERT INTO `answers` VALUES (790, 213, 1, '����-��� ������ �������� �����.');
INSERT INTO `answers` VALUES (791, 213, 1, '����-���� ����� ����� ������ �����.');
INSERT INTO `answers` VALUES (792, 213, 0, '������, ��� ������������� �������� ��� ���� �� �����. \r\n');
INSERT INTO `answers` VALUES (793, 214, 1, '����������� ��������� ������ � � ����� ������ ������ �� ����.');
INSERT INTO `answers` VALUES (794, 214, 1, '����������� ��������� ������, �������� ����������� ��� ������ ���� ������� � ����� ����������� � ������ ���� ��������.');
INSERT INTO `answers` VALUES (795, 214, 0, '�� ������� ��������.');
INSERT INTO `answers` VALUES (796, 215, 1, '��� ����������� �� ����������� ���� ������� ������� ������.');
INSERT INTO `answers` VALUES (797, 215, 0, '��� ����������� �� ����������� ����� ������� ������.');
INSERT INTO `answers` VALUES (798, 216, 1, '������� <b>������...</b> ���� <b>������</b>');
INSERT INTO `answers` VALUES (799, 216, 1, '������� <b>����������...</b> ���� <b>������</b>');
INSERT INTO `answers` VALUES (800, 217, 1, 'ͳ');
INSERT INTO `answers` VALUES (801, 218, 1, 'ͳ');
INSERT INTO `answers` VALUES (802, 219, 0, '�� ������ ���');
INSERT INTO `answers` VALUES (803, 219, 1, '����������� ������ �� ��������� ������ <b>Delete</b>');
INSERT INTO `answers` VALUES (804, 219, 1, '����������� ������, �������� ������ <b>F2</b> �� �������� ����.');
INSERT INTO `answers` VALUES (805, 220, 0, '������������� ��������� ���������, ������������� ����� � ���������� ������, ����������� ������� � ����� �����, ����������� �� �������� ����������.');
INSERT INTO `answers` VALUES (806, 220, 1, '��������� � ����������� ��������� ���������.');
INSERT INTO `answers` VALUES (807, 220, 1, '��������� � ����������� ��� �����');
INSERT INTO `answers` VALUES (808, 220, 1, '��������� �����������');
INSERT INTO `answers` VALUES (809, 277, 1, '������� ������ �������');
INSERT INTO `answers` VALUES (810, 277, 1, '�1 ������ A2');
INSERT INTO `answers` VALUES (811, 277, 1, '10');
INSERT INTO `answers` VALUES (812, 277, 0, '������');
INSERT INTO `answers` VALUES (813, 222, 1, 'ͳ');
INSERT INTO `answers` VALUES (814, 222, 0, '���');
INSERT INTO `answers` VALUES (815, 223, 1, '��������� Alt+Shift+Enter');
INSERT INTO `answers` VALUES (816, 223, 1, '��������� Ctrl+Enter');
INSERT INTO `answers` VALUES (817, 223, 0, '��������� Alt+Enter');
INSERT INTO `answers` VALUES (818, 217, 1, '���, ���� ����� ��������� ������� �� � ���� �����');
INSERT INTO `answers` VALUES (819, 224, 1, 'Shift+Enter');
INSERT INTO `answers` VALUES (820, 224, 1, 'Ctrl+Enter');
INSERT INTO `answers` VALUES (821, 224, 1, 'Ctrl+2');
INSERT INTO `answers` VALUES (822, 225, 1, '��� �������� ������');
INSERT INTO `answers` VALUES (823, 225, 1, '�� ������ ���');
INSERT INTO `answers` VALUES (824, 225, 0, '��� �������� �������������');
INSERT INTO `answers` VALUES (825, 226, 0, '������ �� ������');
INSERT INTO `answers` VALUES (826, 226, 1, '����� ������');
INSERT INTO `answers` VALUES (827, 226, 1, '����� �� ����� ������');
INSERT INTO `answers` VALUES (828, 226, 1, '���� ��������� ������');
INSERT INTO `answers` VALUES (829, 227, 1, 'ͳ');
INSERT INTO `answers` VALUES (830, 227, 0, '���');
INSERT INTO `answers` VALUES (831, 228, 1, 'ͳ');
INSERT INTO `answers` VALUES (832, 228, 0, '���');
INSERT INTO `answers` VALUES (833, 219, 1, '����������� ������ �� � ����� ������ ������� ����.');
INSERT INTO `answers` VALUES (834, 229, 1, '� ���� �� ������� ������');
INSERT INTO `answers` VALUES (835, 229, 0, '� ����� �� ������� ������');
INSERT INTO `answers` VALUES (836, 230, 0, '������ �� ������� ������');
INSERT INTO `answers` VALUES (837, 231, 0, '�������� ��� ����');
INSERT INTO `answers` VALUES (838, 231, 1, '������ ��� ����');
INSERT INTO `answers` VALUES (839, 231, 1, '������� ��� ��������');
INSERT INTO `answers` VALUES (840, 231, 1, '���� ��������� ������');
INSERT INTO `answers` VALUES (841, 232, 1, '���, ��� ���� ���� ����� ������ �� ������ 10 �������');
INSERT INTO `answers` VALUES (842, 233, 0, '���');
INSERT INTO `answers` VALUES (843, 233, 1, 'ͳ');
INSERT INTO `answers` VALUES (844, 234, 0, '���');
INSERT INTO `answers` VALUES (845, 234, 1, 'ͳ');
INSERT INTO `answers` VALUES (846, 230, 1, '�������� �� ������� ������');
INSERT INTO `answers` VALUES (847, 217, 0, '���.');
INSERT INTO `answers` VALUES (848, 218, 0, '���');
INSERT INTO `answers` VALUES (849, 241, 1, 'Excel �� ����� ������ ����');
INSERT INTO `answers` VALUES (850, 237, 0, '�� ����');
INSERT INTO `answers` VALUES (851, 237, 1, '�� �''���');
INSERT INTO `answers` VALUES (852, 237, 1, '�� ������');
INSERT INTO `answers` VALUES (853, 237, 1, '�� ������� ������');
INSERT INTO `answers` VALUES (854, 237, 1, '�������� �������');
INSERT INTO `answers` VALUES (855, 238, 0, '���');
INSERT INTO `answers` VALUES (856, 238, 1, 'ͳ');
INSERT INTO `answers` VALUES (857, 239, 0, '�� 1 �� 30');
INSERT INTO `answers` VALUES (858, 239, 1, '�� 1 �� 10');
INSERT INTO `answers` VALUES (859, 239, 1, '�� 2 �� 30');
INSERT INTO `answers` VALUES (860, 239, 1, '�� 1 �� 20');
INSERT INTO `answers` VALUES (861, 239, 1, '�� 1 �� 15');
INSERT INTO `answers` VALUES (862, 240, 0, '����� ����� ������������ � ����� �� ��������. ���� ������, ����� ��������, ������ � �������� ������� � ����� �� �������� �����������');
INSERT INTO `answers` VALUES (863, 240, 1, '������������ ����� ������� �� ����� ��������');
INSERT INTO `answers` VALUES (864, 240, 1, '������������ ���� ������ ��������');
INSERT INTO `answers` VALUES (865, 241, 1, '������� �� ���� ������������');
INSERT INTO `answers` VALUES (866, 241, 0, '������� ���� ����������� �� ������� ����');
INSERT INTO `answers` VALUES (867, 242, 0, '������� �������');
INSERT INTO `answers` VALUES (868, 242, 1, '������������ �������');
INSERT INTO `answers` VALUES (869, 242, 1, '������������ �������\r\n');
INSERT INTO `answers` VALUES (870, 242, 1, '�� �������� � �� ���� � ��������');
INSERT INTO `answers` VALUES (871, 243, 0, '���������� �������');
INSERT INTO `answers` VALUES (872, 243, 1, '���������� �������');
INSERT INTO `answers` VALUES (873, 243, 1, '����� �������');
INSERT INTO `answers` VALUES (874, 243, 1, 'Գ������ �������');
INSERT INTO `answers` VALUES (875, 243, 1, '������� �������');
INSERT INTO `answers` VALUES (876, 244, 0, '�����������');
INSERT INTO `answers` VALUES (877, 244, 1, '�����������');
INSERT INTO `answers` VALUES (878, 244, 1, '���������');
INSERT INTO `answers` VALUES (879, 244, 1, '������');
INSERT INTO `answers` VALUES (880, 245, 0, '���');
INSERT INTO `answers` VALUES (881, 245, 1, 'ͳ');
INSERT INTO `answers` VALUES (882, 246, 0, '� ������� ������ �� ������ ������� � �������������� ���� �� ������ ������� � �����');
INSERT INTO `answers` VALUES (883, 246, 1, '� ���������� ������ � �������������� ���� �� ������ �����');
INSERT INTO `answers` VALUES (884, 246, 1, '� ������� ������ �� ������ ������� � �������������� ���� �� ������ �����');
INSERT INTO `answers` VALUES (885, 246, 1, '� ������� ������ ����� ������ �������');
INSERT INTO `answers` VALUES (886, 247, 0, '���');
INSERT INTO `answers` VALUES (887, 247, 1, 'ͳ');
INSERT INTO `answers` VALUES (888, 248, 0, '������� �� � ���������� ���� �������');
INSERT INTO `answers` VALUES (889, 248, 1, '�������, �� ������� ���� �������');
INSERT INTO `answers` VALUES (890, 248, 1, '�������, �� ����������� �� �������');
INSERT INTO `answers` VALUES (891, 248, 1, '�������, �� ����������� � ���� �������');
INSERT INTO `answers` VALUES (892, 249, 0, '������ � �������, �� ����������������� ��������');
INSERT INTO `answers` VALUES (893, 249, 1, '������ � �������, �� ����� ����������������');
INSERT INTO `answers` VALUES (894, 249, 1, '������ ����������� ������� � ��� ��������');
INSERT INTO `answers` VALUES (895, 250, 0, '����');
INSERT INTO `answers` VALUES (896, 250, 1, '��������');
INSERT INTO `answers` VALUES (897, 250, 1, '�ר�����');
INSERT INTO `answers` VALUES (898, 250, 1, '������');
INSERT INTO `answers` VALUES (899, 251, 0, '������� ����� ������� ���� ���� � ���� �������� ���������');
INSERT INTO `answers` VALUES (900, 251, 1, '������� ����� ������� ���� ���� � ���� �������� ���������');
INSERT INTO `answers` VALUES (901, 251, 1, '������� ����� ������� ���� ���� � ���� ��������" >"');
INSERT INTO `answers` VALUES (902, 251, 1, '������� ����� ������� ���� ���� � ���� �������� "<"');
INSERT INTO `answers` VALUES (903, 251, 1, '������� ����� ������� ���� ���� � ���� �������� ">="');
INSERT INTO `answers` VALUES (904, 252, 0, '���');
INSERT INTO `answers` VALUES (905, 252, 1, 'ͳ');
INSERT INTO `answers` VALUES (906, 253, 0, '������ ����, ������� �� ����� ������');
INSERT INTO `answers` VALUES (907, 253, 1, '������ ����� ���� ������');
INSERT INTO `answers` VALUES (908, 253, 1, '������ ���� ������� �� ����� ������');
INSERT INTO `answers` VALUES (909, 253, 1, '������� ��� �������� � �������');
INSERT INTO `answers` VALUES (910, 254, 0, '���');
INSERT INTO `answers` VALUES (911, 254, 1, 'ͳ');
INSERT INTO `answers` VALUES (912, 254, 1, '���, ���� �� ���� ��������� ��� ����� ������');
INSERT INTO `answers` VALUES (913, 254, 1, '���, ���� ��������������� ����� ���������� �������');
INSERT INTO `answers` VALUES (914, 241, 1, '���� �������� ����������� ��� �������');
INSERT INTO `answers` VALUES (915, 255, 0, '...���������� ������� ������ ��� ������� ������ �������� �����.');
INSERT INTO `answers` VALUES (916, 255, 1, '...����� �� ������, �� ������ �������.');
INSERT INTO `answers` VALUES (917, 255, 1, '...����� ��� ���������� ��������� ��������� ������ �� �����.');
INSERT INTO `answers` VALUES (918, 256, 0, '=����(����1!A1:����3!A1)');
INSERT INTO `answers` VALUES (919, 256, 1, '=����(����1:����3!A1)');
INSERT INTO `answers` VALUES (920, 256, 1, '=����(����1!A1; ����2!A1;����3!A1)');
INSERT INTO `answers` VALUES (921, 256, 1, '� ������ ������� ���� ������� ������ ���������');
INSERT INTO `answers` VALUES (922, 257, 1, '#������!');
INSERT INTO `answers` VALUES (923, 257, 1, '���� �������� ������ B3:M3 i �2:�8');
INSERT INTO `answers` VALUES (924, 257, 0, '�������� ������ �3');
INSERT INTO `answers` VALUES (925, 258, 1, '=23+(18-16)***3+4*6');
INSERT INTO `answers` VALUES (926, 322, 1, '���� ������� ��������� ����� � ����������� ������� ���� ����� 3;3:3;3');
INSERT INTO `answers` VALUES (927, 260, 0, '=����1!A3');
INSERT INTO `answers` VALUES (928, 260, 1, '=����1$A3');
INSERT INTO `answers` VALUES (929, 260, 1, '=����1#A3');
INSERT INTO `answers` VALUES (930, 260, 1, '=����1|A3');
INSERT INTO `answers` VALUES (931, 260, 1, '=����1�3');
INSERT INTO `answers` VALUES (932, 261, 0, '�� ������ �1 ������� ����� ����1, ����2 �� ����3');
INSERT INTO `answers` VALUES (933, 261, 1, '���� ��������� � ����������');
INSERT INTO `answers` VALUES (934, 261, 1, '�� ������ �1 ������� ����� ����1 �� ����3');
INSERT INTO `answers` VALUES (935, 262, 1, '���� ������� ��������� ����������, ������� ����� <b>�1>�2</b> ���� ���� ������������ ����� �� �������� ������� �������');
INSERT INTO `answers` VALUES (936, 262, 0, '����');
INSERT INTO `answers` VALUES (937, 262, 1, '1');
INSERT INTO `answers` VALUES (938, 262, 1, '2');
INSERT INTO `answers` VALUES (939, 262, 1, '#����!');
INSERT INTO `answers` VALUES (940, 258, 1, '=23+18-16^3+4*6');
INSERT INTO `answers` VALUES (941, 258, 0, '=23+(18-16)^3+4*6');
INSERT INTO `answers` VALUES (942, 263, 0, '...��� ��������� ����-���� �� � ���������');
INSERT INTO `answers` VALUES (943, 263, 1, '...��� ��������� �������');
INSERT INTO `answers` VALUES (944, 263, 1, '...��� �������� �������� � ������� ������� MS Excel');
INSERT INTO `answers` VALUES (945, 263, 1, '...����� ��� ��������� ��������� � Lotus 1-2-3');
INSERT INTO `answers` VALUES (946, 264, 0, '...���������� ��������� ������ ���� ��������� ������ �������.');
INSERT INTO `answers` VALUES (947, 264, 1, '...���������� ��������� ������ ������� ��������� �������� �����.');
INSERT INTO `answers` VALUES (948, 264, 1, '...���������� ��������� ������ ������� ������� ������.');
INSERT INTO `answers` VALUES (949, 210, 1, '� ������� ''');
INSERT INTO `answers` VALUES (950, 265, 0, '$A$1');
INSERT INTO `answers` VALUES (951, 265, 1, 'A$1');
INSERT INTO `answers` VALUES (952, 265, 1, '$A1');
INSERT INTO `answers` VALUES (953, 265, 1, 'A1');
INSERT INTO `answers` VALUES (954, 265, 1, '����1!�1');
INSERT INTO `answers` VALUES (955, 266, 1, '���� ������� ��������� ������');
INSERT INTO `answers` VALUES (956, 266, 1, '<b>=E3-F4</b>');
INSERT INTO `answers` VALUES (957, 266, 1, '<b>=C6-D5</b>');
INSERT INTO `answers` VALUES (958, 266, 0, '<b>=C5-D6</b>');
INSERT INTO `answers` VALUES (959, 267, 0, '�������� �������� ������ �4 �� ������� �������� ������ �3; ��������� ��������� ������� �� ������ ������� ������ �3 �� �4; �� ���������� ���������� ���� �������� ������ �2');
INSERT INTO `answers` VALUES (960, 267, 1, '��������� ������ ������� ������ �3 �� �4; ��������� ���� �� �������� ������ �2; ������� ��������� �� �� ��������� ������ �4 � ������ �������� �3');
INSERT INTO `answers` VALUES (961, 267, 1, '�� �������� ������ �2 ���� ������ ������� ������ �3 �� �4 � ������� ��������� �� �� ��������� ������ �4 � ������ �������� �3');
INSERT INTO `answers` VALUES (962, 268, 1, '��������� ����� ������� �������� ������ �3');
INSERT INTO `answers` VALUES (963, 268, 0, '�������� �������� ������ �1 �� 1 ������� � ��������� ��������� ����� �� 3');
INSERT INTO `answers` VALUES (964, 269, 1, '#����!');
INSERT INTO `answers` VALUES (965, 269, 1, '#������!');
INSERT INTO `answers` VALUES (966, 269, 1, '���� �������� ������ �1:�12 �� �7:F7');
INSERT INTO `answers` VALUES (967, 257, 1, '#����!');
INSERT INTO `answers` VALUES (968, 270, 0, '& (���������)');
INSERT INTO `answers` VALUES (969, 270, 1, '+ (���� ����)');
INSERT INTO `answers` VALUES (970, 270, 1, '? (���� �������)');
INSERT INTO `answers` VALUES (971, 270, 1, '! (���� ������)');
INSERT INTO `answers` VALUES (972, 271, 0, '������ ��������� �� ����');
INSERT INTO `answers` VALUES (973, 271, 1, '+-');
INSERT INTO `answers` VALUES (974, 271, 1, '-+');
INSERT INTO `answers` VALUES (975, 272, 0, '������������� ��''����� �����');
INSERT INTO `answers` VALUES (976, 272, 1, '��������� �������� ��������');
INSERT INTO `answers` VALUES (977, 272, 1, '��� ������������� ���������');
INSERT INTO `answers` VALUES (978, 273, 0, '";"');
INSERT INTO `answers` VALUES (979, 273, 1, '":"');
INSERT INTO `answers` VALUES (980, 273, 1, '" " (�������)');
INSERT INTO `answers` VALUES (981, 273, 1, '","');
INSERT INTO `answers` VALUES (982, 274, 0, '��''�');
INSERT INTO `answers` VALUES (983, 274, 1, '�������');
INSERT INTO `answers` VALUES (984, 274, 1, '���������');
INSERT INTO `answers` VALUES (985, 275, 1, '�������');
INSERT INTO `answers` VALUES (986, 275, 1, '�������');
INSERT INTO `answers` VALUES (987, 275, 1, '�������');
INSERT INTO `answers` VALUES (988, 275, 0, '��������');
INSERT INTO `answers` VALUES (989, 276, 0, '�������� ���������');
INSERT INTO `answers` VALUES (990, 276, 1, '��������� �����');
INSERT INTO `answers` VALUES (991, 276, 1, '��������� ������� �����');
INSERT INTO `answers` VALUES (992, 276, 1, '������� ���������');
INSERT INTO `answers` VALUES (993, 166, 1, '���, �������� � ���� ������� ������� ������ �����');
INSERT INTO `answers` VALUES (994, 214, 1, '����������� ��������� ������, ��������� ������ <b>F2</b> �  ������ �� ����.');
INSERT INTO `answers` VALUES (995, 215, 1, 'ҳ���� ��� ����������� ���� ������� ������� ������.');
INSERT INTO `answers` VALUES (996, 215, 1, 'ҳ���� ��� ����������� ����� ������� ������.');
INSERT INTO `answers` VALUES (997, 215, 1, 'ҳ���� ��� ����������� ���� ������� ������� ������.');
INSERT INTO `answers` VALUES (998, 216, 1, '������� <b>������...</b> ���� <b>������� </b>');
INSERT INTO `answers` VALUES (999, 216, 0, '������� <b>������...</b> ���� <b>������ </b>');
INSERT INTO `answers` VALUES (1000, 223, 1, '��������� Shift+Enter');
INSERT INTO `answers` VALUES (1001, 223, 1, '��������� Ctrl+Shift+Enter');
INSERT INTO `answers` VALUES (1002, 224, 0, 'Ctrl+1');
INSERT INTO `answers` VALUES (1003, 229, 1, '� ����� �������');
INSERT INTO `answers` VALUES (1004, 230, 1, '����� ����� ������� �� ������');
INSERT INTO `answers` VALUES (1005, 218, 1, '���, ���� ����� ��������� ������� �� � ���� �����');
INSERT INTO `answers` VALUES (1006, 222, 1, '���, ���� ����� ��������� ������� �� � ���� �����');
INSERT INTO `answers` VALUES (1007, 225, 1, '��� �������� �������');
INSERT INTO `answers` VALUES (1008, 227, 1, '���, ���� ������ ������ ���� �����');
INSERT INTO `answers` VALUES (1009, 227, 1, '���, ���� ������ ������ ���� �������');
INSERT INTO `answers` VALUES (1010, 228, 1, '���, ���� ������ ������ ���� �����');
INSERT INTO `answers` VALUES (1011, 228, 1, '���, ���� ������ ������ ���� �������');
INSERT INTO `answers` VALUES (1012, 232, 1, '���, ��� ���� ���� ����� ������ �� ����� 10 �������');
INSERT INTO `answers` VALUES (1013, 232, 0, '���');
INSERT INTO `answers` VALUES (1014, 232, 1, 'ͳ');
INSERT INTO `answers` VALUES (1015, 232, 1, '���� ��������� ������');
INSERT INTO `answers` VALUES (1016, 233, 1, '���, ��� ���� ���� ���� ����� ���������� ����� � ���� �����');
INSERT INTO `answers` VALUES (1017, 233, 1, '���� ��������� ������');
INSERT INTO `answers` VALUES (1018, 204, 1, '�� ������� ���������, ���� �� ��������� ������� ��� ��������� ����� ����� �������� ������� ����� � ����.');
INSERT INTO `answers` VALUES (1019, 204, 0, '�������� <b>������ � ����� �����</b>, ������� <b>�����</b>, ������� <b>���������</b>, ���� <b>������</b>.');
INSERT INTO `answers` VALUES (1020, 277, 1, 'A1>A2');
INSERT INTO `answers` VALUES (1021, 278, 0, '������');
INSERT INTO `answers` VALUES (1022, 278, 1, '����');
INSERT INTO `answers` VALUES (1023, 278, 1, '1');
INSERT INTO `answers` VALUES (1024, 278, 1, '#�/�');
INSERT INTO `answers` VALUES (1025, 279, 1, '�� ���� �����');
INSERT INTO `answers` VALUES (1026, 279, 1, '������');
INSERT INTO `answers` VALUES (1027, 279, 0, '����');
INSERT INTO `answers` VALUES (1028, 279, 1, '#�/�');
INSERT INTO `answers` VALUES (1029, 280, 0, '���������� ������ ��� ���� �������� ������� ��������, ��������� ��� ������ ���� �, ������������ ��, ���������� ������ ���� �� ����� ����� ������ ��������.');
INSERT INTO `answers` VALUES (1030, 280, 1, '���������� ������ ��� ���� �������� ������� ��������, ��������� ��� ������ ���� �, ������������ ��, ���������� ������ ���� �� ��� ����� ������ ��������.');
INSERT INTO `answers` VALUES (1031, 280, 1, '���������� ������ ��� ������ �������� ������� ��������, ��������� ��� ������ ���� �, ������������ ��, ���������� ������ ���� �� ����� ����� ������ ��������.');
INSERT INTO `answers` VALUES (1032, 280, 1, '���������� ������ ��� ���� �������� ������� ��������, ��������� ��� ������ ���� �, ������������ ��, ���������� ������ ���� �� ����� ������ ������ ��������.');
INSERT INTO `answers` VALUES (1033, 280, 1, '���������� ������ ��� ���� ������� ������� ��������, ��������� ��� ������ ���� �, ������������ ��, ���������� ������ ���� �� ����� ����� ������ ��������.');
INSERT INTO `answers` VALUES (1034, 281, 1, '1');
INSERT INTO `answers` VALUES (1035, 281, 1, '#�/�');
INSERT INTO `answers` VALUES (1036, 281, 1, '������');
INSERT INTO `answers` VALUES (1037, 281, 0, '����');
INSERT INTO `answers` VALUES (1038, 282, 1, '=�/�');
INSERT INTO `answers` VALUES (1039, 282, 1, '1');
INSERT INTO `answers` VALUES (1040, 282, 1, '����');
INSERT INTO `answers` VALUES (1041, 282, 0, '������');
INSERT INTO `answers` VALUES (1042, 283, 0, '�� ��������� ����� ��������� ��������, ��������� ���������� ��� ����� ������ <b>Shift</b>.');
INSERT INTO `answers` VALUES (1043, 283, 1, '�� ��������� ����� ��������� ��������, ��������� ���������� ��� ����� ������ <b>Alt</b>.');
INSERT INTO `answers` VALUES (1044, 283, 1, '�� ��������� ����� ��������� ��������, ��������� ���������� ��� ����� ������ <b>Ctrl</b>.');
INSERT INTO `answers` VALUES (1045, 283, 1, '�������� ������������ �������� ������ ����� �������� ���� �� ��������� �����.');
INSERT INTO `answers` VALUES (1046, 284, 0, '����');
INSERT INTO `answers` VALUES (1047, 284, 1, '������');
INSERT INTO `answers` VALUES (1048, 284, 1, '1');
INSERT INTO `answers` VALUES (1049, 284, 1, '��');
INSERT INTO `answers` VALUES (1050, 285, 0, '����������� ���� � ������, �� �� ���� �������, ��������� � ���������� ���������� <b>Ctrl</b>, ������� ����������� ����� �� ���� ������.');
INSERT INTO `answers` VALUES (1051, 285, 1, '����������� ���� � ������, �� �� ���� �������, ��������� � ���������� ���������� <b>Alt</b>, ������� ����������� ����� �� ���� ������.');
INSERT INTO `answers` VALUES (1052, 285, 1, '����������� ���� � ������, �� �� ���� �������, ��������� � ���������� ���������� <b>Shift</b>, ������� ����������� ����� �� ���� ������.');
INSERT INTO `answers` VALUES (1053, 285, 1, '����������� ���� � ������, �� �� ���� �������, ��������� � ���������� ���������� <b>Enter</b>, ������� ����������� ����� �� ���� ������.');
INSERT INTO `answers` VALUES (1054, 286, 1, 'ϳ������');
INSERT INTO `answers` VALUES (1055, 286, 1, '390');
INSERT INTO `answers` VALUES (1056, 286, 1, '345');
INSERT INTO `answers` VALUES (1057, 286, 1, '45');
INSERT INTO `answers` VALUES (1058, 286, 0, '2');
INSERT INTO `answers` VALUES (1059, 287, 0, '3');
INSERT INTO `answers` VALUES (1060, 287, 1, '2');
INSERT INTO `answers` VALUES (1061, 287, 1, '45');
INSERT INTO `answers` VALUES (1062, 287, 1, '390');
INSERT INTO `answers` VALUES (1063, 287, 1, '������');
INSERT INTO `answers` VALUES (1064, 288, 1, '15');
INSERT INTO `answers` VALUES (1065, 288, 1, '=�/�');
INSERT INTO `answers` VALUES (1066, 288, 1, '����');
INSERT INTO `answers` VALUES (1067, 288, 1, '27');
INSERT INTO `answers` VALUES (1068, 288, 0, '9');
INSERT INTO `answers` VALUES (1069, 289, 0, '9');
INSERT INTO `answers` VALUES (1070, 289, 1, '����');
INSERT INTO `answers` VALUES (1071, 289, 1, '15');
INSERT INTO `answers` VALUES (1072, 289, 1, '10');
INSERT INTO `answers` VALUES (1073, 289, 1, '20');
INSERT INTO `answers` VALUES (1074, 290, 1, '=����(�1:�3)');
INSERT INTO `answers` VALUES (1075, 290, 1, '=����(2;3;4:1;4;2:5;0;2)');
INSERT INTO `answers` VALUES (1076, 290, 1, '=����(�1:A3;B1:B3;C1:C3)');
INSERT INTO `answers` VALUES (1077, 290, 0, '=����(2;1;5:3;4;0:4;2;2)');
INSERT INTO `answers` VALUES (1078, 291, 0, 'Ctrl+Shift+Enter');
INSERT INTO `answers` VALUES (1079, 291, 1, 'Enter');
INSERT INTO `answers` VALUES (1080, 291, 1, 'Shift+Enter');
INSERT INTO `answers` VALUES (1081, 291, 1, 'Ctrl+Alt+Enter');
INSERT INTO `answers` VALUES (1082, 291, 1, 'Shift+Alt+Enter');
INSERT INTO `answers` VALUES (1083, 292, 1, '#�����!');
INSERT INTO `answers` VALUES (1084, 292, 1, '1');
INSERT INTO `answers` VALUES (1085, 292, 0, '#����!');
INSERT INTO `answers` VALUES (1086, 293, 0, '�� ��������� ������ Enter');
INSERT INTO `answers` VALUES (1087, 293, 1, '�� ��������� ��������� ����� Ctrl+Shift+Enter');
INSERT INTO `answers` VALUES (1088, 293, 1, '�� ��������� ��������� ����� Shift+Enter');
INSERT INTO `answers` VALUES (1089, 293, 1, '�� ��������� ��������� ����� Ctrl+Alt+Enter');
INSERT INTO `answers` VALUES (1090, 293, 1, '�� ��������� ��������� ����� Shift+Alt+Enter');
INSERT INTO `answers` VALUES (1091, 294, 0, '#����!');
INSERT INTO `answers` VALUES (1092, 294, 1, '#������!');
INSERT INTO `answers` VALUES (1093, 294, 1, '#������!');
INSERT INTO `answers` VALUES (1094, 294, 1, '1');
INSERT INTO `answers` VALUES (1095, 295, 0, '�����');
INSERT INTO `answers` VALUES (1096, 295, 1, '#����!');
INSERT INTO `answers` VALUES (1097, 295, 1, '#������!');
INSERT INTO `answers` VALUES (1098, 295, 1, '#������!');
INSERT INTO `answers` VALUES (1099, 295, 1, '#������!');
INSERT INTO `answers` VALUES (1100, 296, 0, '����������� � �������� ������ {} � ��������� ����������� Ctrl+Shift+Enter.');
INSERT INTO `answers` VALUES (1101, 296, 1, '����������� � ���������� ������ [] � ��������� ����������� Ctrl+Alt+Enter.');
INSERT INTO `answers` VALUES (1102, 296, 1, '����������� � ������� ������ () � ��������� ����������� Alt+Shift+Enter.');
INSERT INTO `answers` VALUES (1103, 296, 1, '����������� � ���������� ������ [] � ��������� ����������� Ctrl+Shift+Enter.');
INSERT INTO `answers` VALUES (1104, 297, 1, '���, ����� ��� ����� ������� ������� ������� ������ ��������� 1 (��������) �� 3 (�����).');
INSERT INTO `answers` VALUES (1105, 297, 0, 'ͳ, ���� �� ������� ��������� ������� � �� ������� ������� ����� ������� �.');
INSERT INTO `answers` VALUES (1106, 298, 0, '���� ������� �� ����');
INSERT INTO `answers` VALUES (1107, 298, 1, '�����');
INSERT INTO `answers` VALUES (1108, 298, 1, '������');
INSERT INTO `answers` VALUES (1109, 298, 1, '������');
INSERT INTO `answers` VALUES (1110, 298, 1, '������');
INSERT INTO `answers` VALUES (1111, 297, 1, '���, ����� ��� ����� ������� ������� ������� ������ ��������� 3 (���������) �� 3 (�����).');
INSERT INTO `answers` VALUES (1112, 299, 0, '����, �� ������� �������� ��������� �����1 �� ������� ������� ����� ��������� �����2.');
INSERT INTO `answers` VALUES (1113, 299, 1, '����, �� �����1 ������ ���� ������ (�3 �� �3)');
INSERT INTO `answers` VALUES (1114, 299, 1, '����, �� �����1 � �����2 ������ ���� ����� �� ���������.');
INSERT INTO `answers` VALUES (1115, 299, 1, '����, �� ������ �������� ������� ���������� �� ������� ���� ��������� 3 ����� �� 2 ���������.');
INSERT INTO `answers` VALUES (1116, 300, 0, '�������� ������������� �����');
INSERT INTO `answers` VALUES (1117, 300, 1, '������������� ����� � ������ �������');
INSERT INTO `answers` VALUES (1118, 301, 0, '14 ����������� �� 21 ������������� ��� ������');
INSERT INTO `answers` VALUES (1119, 301, 1, '21 ���������� �� 14 ������������� ���� ������');
INSERT INTO `answers` VALUES (1120, 301, 1, '9 ����������� �� 10 ������������� ��� ������');
INSERT INTO `answers` VALUES (1121, 301, 1, '14 ����������� ���� ������');
INSERT INTO `answers` VALUES (1122, 302, 0, '��� ��������');
INSERT INTO `answers` VALUES (1123, 302, 1, '��� �������');
INSERT INTO `answers` VALUES (1124, 302, 1, '��� �������');
INSERT INTO `answers` VALUES (1125, 303, 0, '�� ��������');
INSERT INTO `answers` VALUES (1126, 303, 1, '�� ������');
INSERT INTO `answers` VALUES (1127, 303, 1, '������ ����������� ��� �������');
INSERT INTO `answers` VALUES (1128, 304, 0, 'Excel ������� ���� ����� �� ������.');
INSERT INTO `answers` VALUES (1129, 304, 1, 'Excel ������� ���� ����� �� ��������.');
INSERT INTO `answers` VALUES (1130, 304, 1, 'Excel ������ ����������� ��� �������.');
INSERT INTO `answers` VALUES (1131, 305, 0, '������� �� �� ����������� �� ��������� ����.');
INSERT INTO `answers` VALUES (1132, 305, 1, '������� �� �� � ������������ ���� ������� ������� �����������');
INSERT INTO `answers` VALUES (1133, 305, 1, '������� �� �� � ������ ���� ��������� ������� ������� ����������...');
INSERT INTO `answers` VALUES (1134, 305, 1, '������� �� �� �������� ������� ����������� � ������ ���� ������');
INSERT INTO `answers` VALUES (1135, 306, 0, '���������');
INSERT INTO `answers` VALUES (1136, 306, 1, '�������������� ���������');
INSERT INTO `answers` VALUES (1137, 306, 1, '�������� ���������');
INSERT INTO `answers` VALUES (1138, 306, 1, '������');
INSERT INTO `answers` VALUES (1139, 307, 0, '�� �������� �������');
INSERT INTO `answers` VALUES (1140, 307, 1, '�� ��� ������ ����������');
INSERT INTO `answers` VALUES (1141, 307, 1, '�� ���� ������');
INSERT INTO `answers` VALUES (1142, 307, 1, '� ������� �� 0 �� 100');
INSERT INTO `answers` VALUES (1143, 308, 0, '�� ����');
INSERT INTO `answers` VALUES (1144, 308, 1, '��');
INSERT INTO `answers` VALUES (1145, 308, 1, '���� ��������');
INSERT INTO `answers` VALUES (1146, 308, 1, '������� �����');
INSERT INTO `answers` VALUES (1147, 309, 0, '<b>�������� ���...</b> ������ ���� <b>���������</b>');
INSERT INTO `answers` VALUES (1148, 309, 1, '<b>�������� ���...</b> ������ ���� <b>������</b>');
INSERT INTO `answers` VALUES (1149, 309, 1, '<b>�������� ��������� ...</b> ������ ���� <b>���������</b>');
INSERT INTO `answers` VALUES (1150, 309, 1, '<b>�����...</b> ������ ���� <b>���������</b>');
INSERT INTO `answers` VALUES (1151, 310, 0, '��������');
INSERT INTO `answers` VALUES (1152, 310, 1, '������');
INSERT INTO `answers` VALUES (1153, 310, 1, '����������');
INSERT INTO `answers` VALUES (1154, 310, 1, '������ �������');
INSERT INTO `answers` VALUES (1155, 311, 0, 'A1:B12');
INSERT INTO `answers` VALUES (1156, 311, 1, 'A1;B12');
INSERT INTO `answers` VALUES (1157, 311, 1, 'A1:A12');
INSERT INTO `answers` VALUES (1158, 311, 1, 'B1:B12');
INSERT INTO `answers` VALUES (1159, 311, 1, 'B1;B12');
INSERT INTO `answers` VALUES (1160, 312, 0, '���.');
INSERT INTO `answers` VALUES (1161, 312, 1, '�.');
INSERT INTO `answers` VALUES (1162, 312, 1, '���, ���� �� ����� �������.');
INSERT INTO `answers` VALUES (1163, 269, 0, '������ �7');
INSERT INTO `answers` VALUES (1164, 313, 0, '����� ��� �������� ������� �������');
INSERT INTO `answers` VALUES (1165, 313, 1, '������ ����� �� ���� ���������� �������');
INSERT INTO `answers` VALUES (1166, 313, 1, '������ ������� �� ���� ���������� �������');
INSERT INTO `answers` VALUES (1167, 313, 1, '������� ������, �� ����� ���������� �������');
INSERT INTO `answers` VALUES (1168, 314, 0, '�� ���� �������');
INSERT INTO `answers` VALUES (1169, 314, 1, '�� ���� �����');
INSERT INTO `answers` VALUES (1170, 314, 1, '�� ���� �����');
INSERT INTO `answers` VALUES (1171, 314, 1, '�� ��������� ��������');
INSERT INTO `answers` VALUES (1172, 315, 0, '������ �� �� �');
INSERT INTO `answers` VALUES (1173, 315, 1, '������ �� �� Y');
INSERT INTO `answers` VALUES (1174, 315, 1, '������ �� �� Z');
INSERT INTO `answers` VALUES (1175, 316, 0, '...����� ���������� ���� �����');
INSERT INTO `answers` VALUES (1176, 316, 1, '...����� �������� �������');
INSERT INTO `answers` VALUES (1177, 316, 1, '...����� ���������� ��������');
INSERT INTO `answers` VALUES (1178, 316, 1, '...�������� ���� �����');
INSERT INTO `answers` VALUES (1179, 317, 0, '...��� ���� �����');
INSERT INTO `answers` VALUES (1180, 317, 1, '...������ ���� �����');
INSERT INTO `answers` VALUES (1181, 317, 1, '...���� ���� �����');
INSERT INTO `answers` VALUES (1182, 317, 1, '...��� ���� �����');
INSERT INTO `answers` VALUES (1183, 318, 0, '...������.');
INSERT INTO `answers` VALUES (1184, 318, 1, '...��������.');
INSERT INTO `answers` VALUES (1185, 319, 0, '������� ����� ������� ������');
INSERT INTO `answers` VALUES (1186, 319, 1, '������� ����� ������� ������');
INSERT INTO `answers` VALUES (1187, 319, 1, '�������� ����� ������� ������');
INSERT INTO `answers` VALUES (1188, 319, 1, '���������� ����� ������� ������');
INSERT INTO `answers` VALUES (1189, 320, 0, '���');
INSERT INTO `answers` VALUES (1190, 320, 1, '�');
INSERT INTO `answers` VALUES (1191, 188, 1, '������������ ��������� �����, �� ���������� � �������');
INSERT INTO `answers` VALUES (1192, 188, 0, '������� �������� �����, �� ���������� � �������');
INSERT INTO `answers` VALUES (1193, 268, 1, '�������� �������� ������ �1 �� 3 �������');
INSERT INTO `answers` VALUES (1194, 197, 1, '�� ������� ���');
INSERT INTO `answers` VALUES (1195, 321, 0, '...��������� ������ �� ����������');
INSERT INTO `answers` VALUES (1196, 321, 1, '...��� ������� �����');
INSERT INTO `answers` VALUES (1197, 321, 1, '...�������� �������, �� �������� �������� �������');
INSERT INTO `answers` VALUES (1198, 323, 0, '��������� 2�2');
INSERT INTO `answers` VALUES (1199, 323, 1, '��������� 2�3');
INSERT INTO `answers` VALUES (1200, 322, 0, '���� ��������� ������� � MS Excel �� ����');
INSERT INTO `answers` VALUES (1201, 322, 1, '����, �� ���� ������� ������� ������� �� ������� ������, ����� ������� ���� ������ {=�����(A1:B2;C1:D2)}');
INSERT INTO `answers` VALUES (1202, 322, 1, '����, �� ���� ������� ������� �� ������� ������, � ������� ����� ������� ��������� �� �������� �������.');
INSERT INTO `answers` VALUES (1203, 323, 1, '��������� 3�2');
INSERT INTO `answers` VALUES (1204, 323, 1, '��������� 3�3');
INSERT INTO `answers` VALUES (1205, 323, 1, '��� ������ ����� ���� ���������, ���� �������������� ��������. ����������� ��������� �������� ������� ���� #����!');
INSERT INTO `answers` VALUES (1206, 324, 1, '=����(A1:A2*B1:B2)');
INSERT INTO `answers` VALUES (1207, 324, 1, '{=������(�1:�1;�2:�2)}');
INSERT INTO `answers` VALUES (1208, 324, 0, '{=����(A1:A2*B1:B2)}');
INSERT INTO `answers` VALUES (1209, 324, 1, '=������(�1:�1;�2:�2)');
INSERT INTO `answers` VALUES (1210, 325, 1, '���� ������ ������� �� ����������');
INSERT INTO `answers` VALUES (1211, 325, 1, '���� ������� ��������� � ����������� �� ��������� ���� #����!');
INSERT INTO `answers` VALUES (1212, 325, 0, '���� ������ ������� �� ������');
INSERT INTO `answers` VALUES (1213, 325, 1, '���� �� ������� �, ���� - �. � ��������� ������ ��������� �������');
INSERT INTO `answers` VALUES (1214, 326, 0, '��� ������ ����� ���� ���������, ���� �������������� ��������. ����������� ��������� �������� ������� ���� #����!');
INSERT INTO `answers` VALUES (1215, 326, 1, '��������� 3�3');
INSERT INTO `answers` VALUES (1216, 326, 1, '��������� 3�2');
INSERT INTO `answers` VALUES (1217, 326, 1, '��������� 2�3');
INSERT INTO `answers` VALUES (1218, 326, 1, '��������� 2�2');
INSERT INTO `answers` VALUES (1219, 327, 0, '���, ����� ��� ����� ������� ������� ������� ������ ��������� 1 (��������) �� 3 (�����).');
INSERT INTO `answers` VALUES (1220, 327, 1, 'ͳ, ���� �� ������� ����� ������� � �� ������� ������� �������� ������� �.');
INSERT INTO `answers` VALUES (1221, 327, 1, '���, ����� ��� ����� ������� ������� ������� ������ ��������� 3 (���������) �� 3 (�����).');
INSERT INTO `answers` VALUES (1222, 328, 0, '1');
INSERT INTO `answers` VALUES (1223, 328, 1, '#����!');
INSERT INTO `answers` VALUES (1224, 328, 1, '#�����!');
INSERT INTO `answers` VALUES (1225, 328, 1, '#������!');
INSERT INTO `answers` VALUES (1226, 329, 0, '������ ����� � ��������, ������ �������� � ����� �� �������, �� �������������');
INSERT INTO `answers` VALUES (1227, 329, 1, '������ ����� � ��������, ������ ����� � �������� �� �������, �� �������������');
INSERT INTO `answers` VALUES (1228, 329, 1, '������� ������ ������� ���� ��������');
INSERT INTO `answers` VALUES (1229, 329, 1, '������� ����� ��������� "������" ������� �������, ���� � ��������� �� ����������');
INSERT INTO `answers` VALUES (1230, 330, 1, '#�����!');
INSERT INTO `answers` VALUES (1231, 330, 1, '1');
INSERT INTO `answers` VALUES (1232, 330, 0, '#�����!');
INSERT INTO `answers` VALUES (1233, 330, 1, '#����!');
INSERT INTO `answers` VALUES (1234, 331, 1, '1');
INSERT INTO `answers` VALUES (1235, 331, 1, '#����!');
INSERT INTO `answers` VALUES (1236, 331, 1, '#�����!');
INSERT INTO `answers` VALUES (1237, 331, 0, ' 0');
INSERT INTO `answers` VALUES (1238, 331, 1, '#�����!');
INSERT INTO `answers` VALUES (1239, 203, 1, '�� ������� ���.');
INSERT INTO `answers` VALUES (1240, 188, 1, '���� ������');
INSERT INTO `answers` VALUES (1247, 333, 0, '4');
INSERT INTO `answers` VALUES (1248, 333, 0, 'four');
INSERT INTO `answers` VALUES (1249, 333, 0, '1+3');
INSERT INTO `answers` VALUES (1250, 333, 1, '5');
INSERT INTO `answers` VALUES (1251, 333, 1, 'five');
INSERT INTO `answers` VALUES (1252, 334, 0, '6�');
INSERT INTO `answers` VALUES (1253, 334, 0, 'six');
INSERT INTO `answers` VALUES (1254, 334, 1, '7');
INSERT INTO `answers` VALUES (1255, 334, 1, 'sixteen');
INSERT INTO `answers` VALUES (1256, 334, 1, 'five�');
INSERT INTO `answers` VALUES (1257, 335, 0, '8�');
INSERT INTO `answers` VALUES (1258, 335, 1, '7+2�');
INSERT INTO `answers` VALUES (1259, 335, 0, '7+1�');
INSERT INTO `answers` VALUES (1260, 335, 1, 'seven');
INSERT INTO `answers` VALUES (1261, 336, 0, '10');
INSERT INTO `answers` VALUES (1262, 336, 1, '11�');
INSERT INTO `answers` VALUES (1263, 336, 1, '12');
INSERT INTO `answers` VALUES (1264, 336, 1, '13�');
INSERT INTO `answers` VALUES (1265, 336, 1, '14�');
INSERT INTO `answers` VALUES (1266, 337, 0, '12');
INSERT INTO `answers` VALUES (1267, 337, 1, '11�');
INSERT INTO `answers` VALUES (1268, 337, 1, '13�');
INSERT INTO `answers` VALUES (1269, 337, 1, '14�');
INSERT INTO `answers` VALUES (1270, 338, 0, '14');
INSERT INTO `answers` VALUES (1271, 338, 1, '16�');
INSERT INTO `answers` VALUES (1272, 338, 1, '18�');
INSERT INTO `answers` VALUES (1273, 338, 1, '12�');
INSERT INTO `answers` VALUES (1274, 338, 1, '10');
INSERT INTO `answers` VALUES (1279, 340, 0, '20');
INSERT INTO `answers` VALUES (1280, 340, 1, '10');
INSERT INTO `answers` VALUES (1281, 340, 1, '30�');
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
-- ��������� ������� `group_priv`
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
-- ���� ����� ������� `group_priv`
-- 


-- --------------------------------------------------------

-- 
-- ��������� ������� `groups`
-- 

CREATE TABLE `groups` (
  `ID_GR` mediumint(8) unsigned NOT NULL auto_increment,
  `GrName` char(20) NOT NULL default '',
  PRIMARY KEY  (`ID_GR`),
  UNIQUE KEY `GrName` (`GrName`)
) TYPE=InnoDB AUTO_INCREMENT=27 ;

-- 
-- ���� ����� ������� `groups`
-- 

INSERT INTO `groups` VALUES (25, 'Guests2002');
INSERT INTO `groups` VALUES (26, 'Guests2007');

-- --------------------------------------------------------

-- 
-- ��������� ������� `level_question`
-- 

CREATE TABLE `level_question` (
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  `ID_Level` tinyint(3) unsigned NOT NULL default '0',
  `Point` tinyint(3) unsigned NOT NULL default '0',
  `Number` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID_TEST`,`ID_Level`)
) TYPE=InnoDB;

-- 
-- ���� ����� ������� `level_question`
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
-- ��������� ������� `questions`
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
-- ���� ����� ������� `questions`
-- 

INSERT INTO `questions` VALUES (28, 4, 1, 1, 0, 0, '������ ����� �� ��������� ����� ����� ������� �����.');
INSERT INTO `questions` VALUES (29, 4, 1, 1, 0, 0, '������ ������ �������:');
INSERT INTO `questions` VALUES (30, 4, 1, 1, 0, 0, '��������� ��������� ������ � ����� ����� ����������� ��������� �����:');
INSERT INTO `questions` VALUES (31, 4, 1, 1, 0, 0, '������� ��������� ������ � ������ ����� ����������� ��������� �����:');
INSERT INTO `questions` VALUES (32, 4, 1, 1, 0, 0, '���������� ��������� ������ � ����� ����� ����������� ��������� �����:');
INSERT INTO `questions` VALUES (33, 4, 1, 1, 0, 0, '�� ������� ���� ��������');
INSERT INTO `questions` VALUES (50, 20, 1, 1, 0, 0, '������� ���� ������� �� �������. �������� Word 97 ��� �������� ������� �� ��������� �� ��������� ������� � ���������� �����������:');
INSERT INTO `questions` VALUES (51, 20, 1, 1, 0, 0, '��� ��������� ���� ������� ������� �������� ������� 䳿:');
INSERT INTO `questions` VALUES (52, 20, 1, 1, 0, 0, '̳������� �� ����������� ������� ������� �������� �������:');
INSERT INTO `questions` VALUES (53, 20, 1, 1, 0, 0, '������� ������ (��������� �����), �� �� ��������������� ��� ����� � ���������');
INSERT INTO `questions` VALUES (54, 20, 1, 1, 0, 0, '�������� Word 97 ��������...');
INSERT INTO `questions` VALUES (55, 21, 1, 1, 0, 0, '� �������� Word 97 ���������� �� ��������� ���������� ������� 䳿 �� ��� �������� ��������:');
INSERT INTO `questions` VALUES (56, 21, 1, 1, 0, 0, '��������� ����� Shift+F1 ������ �������� ��');
INSERT INTO `questions` VALUES (57, 21, 1, 1, 0, 0, '������� ������ ����������:');
INSERT INTO `questions` VALUES (58, 21, 1, 1, 0, 0, '������ ��������� ����� ��� �������� ���� ���������.');
INSERT INTO `questions` VALUES (59, 21, 1, 1, 0, 0, '������� ���� ����������');
INSERT INTO `questions` VALUES (60, 21, 1, 1, 0, 0, '�� ���������� ������ ��������� ����� ���������, ���� ���� ��������� ���������� �� ���� ����� ���������?');
INSERT INTO `questions` VALUES (61, 21, 1, 1, 0, 0, '�� ������� �������� ����� ����?');
INSERT INTO `questions` VALUES (62, 21, 1, 1, 0, 0, '�� ����� ����������� �������� MS Word ��� ������� ����������� �� �������������?');
INSERT INTO `questions` VALUES (63, 21, 1, 1, 0, 0, '������ ���� ��������� ���� ���� ��������� ���������?');
INSERT INTO `questions` VALUES (64, 21, 1, 1, 0, 0, '�� �� ����쳺�� �� ������ "Word - ������������� ��������"');
INSERT INTO `questions` VALUES (65, 21, 1, 1, 0, 0, '��� ���� ����������� ����� �����?');
INSERT INTO `questions` VALUES (66, 21, 1, 1, 0, 0, '��� ��������� ����� ����������� �� ����� �������������� ����� ����');
INSERT INTO `questions` VALUES (67, 21, 1, 1, 0, 0, '��� �������� �������� �� ����� ������ �������...');
INSERT INTO `questions` VALUES (68, 21, 1, 1, 0, 0, '������� ����� ���� ������, ����� ���� � ����� ����');
INSERT INTO `questions` VALUES (69, 21, 1, 1, 0, 0, '������ ���������� ������� ��������� ���������� �����');
INSERT INTO `questions` VALUES (70, 9, 1, 1, 0, 0, '������� ����������� ����������');
INSERT INTO `questions` VALUES (71, 9, 1, 1, 0, 0, '������� ����������� �������');
INSERT INTO `questions` VALUES (72, 21, 1, 1, 0, 0, '������ ������� ����������� ���� ���� ������� �� ����� �������� Word?');
INSERT INTO `questions` VALUES (73, 21, 1, 1, 0, 0, '�� �� ����� ������������� �� ������ �������� ��������� � Word');
INSERT INTO `questions` VALUES (74, 9, 1, 1, 0, 0, '���� ��������� ��������� �� ������ Enter ��� ������� ������?');
INSERT INTO `questions` VALUES (75, 9, 1, 1, 0, 0, '�� � ����� ���������� ��� �� ����� �������� �������������� ������ ����������� "��������������"?');
INSERT INTO `questions` VALUES (76, 9, 1, 1, 0, 0, '�� � ����� ���������� ��� ��������� �������� �� ��������� ���������� ���� "�����"?');
INSERT INTO `questions` VALUES (77, 9, 1, 1, 0, 0, '������� � ����� ������������� �������� ������������ ���, ���� ���������� �� ������.\r\n	\r\n');
INSERT INTO `questions` VALUES (78, 9, 1, 1, 0, 0, '�� ������� �� ���� ������� ���������?');
INSERT INTO `questions` VALUES (79, 21, 1, 1, 0, 0, '��� ���������� ���� ����������� ��������� �������� WORD ���� ����������?\r\n');
INSERT INTO `questions` VALUES (80, 21, 1, 1, 0, 0, '�������� ����� �������� ����� �� ���������:\r\n');
INSERT INTO `questions` VALUES (81, 9, 1, 1, 0, 0, '�� ����� ������ ������� ����������� �������');
INSERT INTO `questions` VALUES (82, 22, 1, 1, 0, 0, '�� ������� ��������� ��''���');
INSERT INTO `questions` VALUES (83, 9, 1, 1, 0, 0, '��� ��������� ����� ��������������� ��� ����������� ������ �� �����?');
INSERT INTO `questions` VALUES (84, 22, 1, 1, 0, 0, 'Microsoft Equation - ��...');
INSERT INTO `questions` VALUES (85, 9, 1, 1, 0, 0, '���� ����� ����� ������� "������������ �������"�� �����');
INSERT INTO `questions` VALUES (86, 22, 1, 1, 0, 0, '�������� � ����� ��������� �������� ���������� ...');
INSERT INTO `questions` VALUES (87, 22, 1, 1, 0, 0, '������ ��������� ���� �� ������� � �������� Word');
INSERT INTO `questions` VALUES (88, 9, 1, 1, 0, 0, '���� "��������" ���� ������ "�����" ����������');
INSERT INTO `questions` VALUES (89, 22, 1, 1, 0, 0, '��� ���������� ���������� ��''����...');
INSERT INTO `questions` VALUES (90, 9, 1, 1, 0, 0, '���� � ���������� ��� "�����" ���� ����������� ��������� "� ����� ��������" ��...');
INSERT INTO `questions` VALUES (91, 22, 1, 1, 0, 0, '���������� �������');
INSERT INTO `questions` VALUES (92, 7, 1, 1, 0, 0, '���� - �� ...');
INSERT INTO `questions` VALUES (93, 7, 1, 1, 0, 0, '���� Word ������ ���������� ����(��)...');
INSERT INTO `questions` VALUES (94, 7, 1, 1, 0, 0, '��� ����, ��� ����������� ����� ������� �� ������ ...');
INSERT INTO `questions` VALUES (95, 7, 1, 1, 0, 0, '��� ������������ ����� ������ ...');
INSERT INTO `questions` VALUES (96, 7, 1, 1, 0, 0, '� ������ ��� ����� �� ����� ����������� "<b>��������������</b>" �������� <b>�</b> ����������� ...');
INSERT INTO `questions` VALUES (97, 7, 1, 1, 0, 0, '� ������ ��� ����� �� ����� ����������� "<b>��������������</b>" �������� <b><u>a</u></b> ����������� ...');
INSERT INTO `questions` VALUES (98, 21, 1, 1, 0, 0, 'Microsoft Word � ...');
INSERT INTO `questions` VALUES (100, 9, 1, 1, 0, 0, '����� ��� �� ���������� ������� ��������� ������������ ������ ��������� ...');
INSERT INTO `questions` VALUES (101, 9, 1, 1, 0, 0, '����� ��� �� ���������� ������� ��������� ������������ ������ ��������� ...');
INSERT INTO `questions` VALUES (102, 9, 1, 1, 0, 0, '��� �������� ������ ����� ��������� �������������� ��������� ����� ...');
INSERT INTO `questions` VALUES (103, 9, 1, 1, 0, 0, '��� ����, ��� ������� �������� ������ � �������� ���������');
INSERT INTO `questions` VALUES (104, 9, 1, 1, 0, 0, '�� ����� ������� �������� ������ �� ��������� ���������?');
INSERT INTO `questions` VALUES (105, 9, 1, 1, 0, 0, '������ ��������� Insert � MicroSoft Word �������� ...');
INSERT INTO `questions` VALUES (106, 21, 1, 1, 0, 0, '��� ���� ��������� ����� ����������� � WORD?');
INSERT INTO `questions` VALUES (107, 9, 1, 1, 0, 0, '��� ��������� ����� ��������������� ��� ����������� ������ �� ������?');
INSERT INTO `questions` VALUES (108, 9, 1, 1, 0, 0, '�� ����� ������ ������� ��������� ������������ �������:����� 200, ���� �������, ��� ������?');
INSERT INTO `questions` VALUES (109, 9, 1, 1, 0, 0, '��� ����, ��� �������� ������ ������� (������� �� ���� �������) ������� ...');
INSERT INTO `questions` VALUES (110, 4, 1, 1, 0, 0, '������ ������ (��������� �����), �� ���������� ��� �������� �� ������� ���������.');
INSERT INTO `questions` VALUES (111, 22, 1, 1, 0, 0, '��� ������ � ��������� ������ �������');
INSERT INTO `questions` VALUES (112, 22, 1, 1, 0, 0, '��� ��������� ��������-����������� ������ ��������������');
INSERT INTO `questions` VALUES (113, 4, 1, 1, 0, 0, '������ ������ �������');
INSERT INTO `questions` VALUES (114, 22, 1, 1, 0, 0, '������� ����������� ��������� ������');
INSERT INTO `questions` VALUES (116, 4, 1, 1, 0, 0, '��� ��������� ���� � ������������� ������� �������������� ��������� �����');
INSERT INTO `questions` VALUES (117, 4, 1, 1, 0, 0, '�� ����� ������ ������ ������� � ������������� ������');
INSERT INTO `questions` VALUES (118, 4, 1, 1, 0, 0, '������� "����������..." ����������� � ����� ����');
INSERT INTO `questions` VALUES (119, 22, 1, 1, 0, 0, '��� ������� ��������-����������� ������ �� ��������� WordArt ������������ ������������� ������� ������');
INSERT INTO `questions` VALUES (120, 4, 1, 1, 0, 0, '��������� � �������� (MS Word97) ����� �������:');
INSERT INTO `questions` VALUES (121, 22, 1, 1, 0, 0, '��� ��������� ��������� ��''���� �������� Word ������ �����������, �� ���������� ��������� �������');
INSERT INTO `questions` VALUES (122, 20, 1, 1, 0, 0, '�� ����� ������� ��������� ��� ��������� ����� � �������');
INSERT INTO `questions` VALUES (123, 22, 1, 1, 0, 0, '���� ���� ������ ����������� ��������� (����, ����������� � �.�.) ���� �������� ''�����'' � ��������');
INSERT INTO `questions` VALUES (124, 4, 1, 1, 0, 0, '��� ������������� ��������� � ����������� �������, ������������� ������� � ������������� ������������ ������� � ����� ���� ����� ��������������� ����');
INSERT INTO `questions` VALUES (125, 4, 1, 1, 0, 0, '��� ���������� � ������ ������� ������, ������� � ����� ����� ���������������� �������� ��������������� ����');
INSERT INTO `questions` VALUES (126, 20, 1, 1, 0, 0, '�� ����� ����������� ����� � ������� ������� �� ����� 45 �������?');
INSERT INTO `questions` VALUES (127, 22, 1, 1, 0, 0, '� ������ ������ � ��������� �ᒺ���� (����-�� ������� �� ������� �����) �� ������:');
INSERT INTO `questions` VALUES (128, 20, 1, 1, 0, 0, '�� ���� ������ ������� ������ �������?');
INSERT INTO `questions` VALUES (129, 4, 1, 1, 0, 0, '��� ������ ��������� ����� � MS Word �������� ...');
INSERT INTO `questions` VALUES (130, 4, 1, 1, 0, 0, '��� ����� ������ ��������� ������ �� ����� � �������� �������� ...');
INSERT INTO `questions` VALUES (131, 4, 1, 1, 0, 0, '����������� ������� ���� �������� �������������� ������');
INSERT INTO `questions` VALUES (132, 4, 1, 1, 0, 0, '������� ������ �������.');
INSERT INTO `questions` VALUES (133, 4, 1, 1, 0, 0, '��� ��������� ������ �������� ���������� ��������� ...');
INSERT INTO `questions` VALUES (134, 4, 1, 1, 0, 0, '������� <b>������ | ������</b> ���������� ��� ...');
INSERT INTO `questions` VALUES (135, 4, 1, 1, 0, 0, '��� ����, ��� ���������� ������� ������ �� ���� ������� ����� ���������, ��������� �������� ������ �� �������� ������� �');
INSERT INTO `questions` VALUES (136, 4, 1, 1, 0, 0, '��� ����, ��� ���������� ������� ������ �� ���� ������� ����� ���������, ��������� �������� ������ �� �������� ������� �');
INSERT INTO `questions` VALUES (137, 4, 1, 1, 0, 0, '������ ������ (��������� �����), �� ���������� ��� �������� �� ����� ���������.');
INSERT INTO `questions` VALUES (138, 4, 1, 1, 0, 0, '���� ���� � �������� ����� ������� �� ��������� ��������� �����');
INSERT INTO `questions` VALUES (139, 20, 1, 1, 0, 0, '�� ���� �������� ���� ������ �������?');
INSERT INTO `questions` VALUES (140, 20, 1, 1, 0, 0, '�� ���� �������� ������� �������� �������?');
INSERT INTO `questions` VALUES (141, 4, 1, 1, 0, 0, '�������� �������� ������ � ���������� �� �����:');
INSERT INTO `questions` VALUES (142, 20, 1, 1, 0, 0, '�� ���� �������� ������� ����� �������?');
INSERT INTO `questions` VALUES (143, 4, 1, 1, 0, 0, '��� � ����������� ��������� �� ������� ���������� �� ���������:');
INSERT INTO `questions` VALUES (144, 4, 1, 1, 0, 0, '������� � ������ ���� � ���� ����� �� ���������:');
INSERT INTO `questions` VALUES (145, 4, 1, 1, 0, 0, '���� � ������������� ������� �� ����� ������� ����� �������:');
INSERT INTO `questions` VALUES (146, 4, 1, 1, 0, 0, '� ����� ������� ������ <b>��������</b> ����� ����������� �� ����� ���� <b>������ | ��������</b> ���� �����������');
INSERT INTO `questions` VALUES (147, 4, 1, 1, 0, 0, '��� � ����������� ��������� �� ���������� �� ��������� ��������� ������');
INSERT INTO `questions` VALUES (148, 4, 1, 1, 0, 0, '��� ���� �� ��������������� ���� <b>���������</b>');
INSERT INTO `questions` VALUES (149, 4, 1, 1, 0, 0, '���� <b>���������</b> ��� ������ ������� ��������� ������ �� ��������� ��������������� � �������');
INSERT INTO `questions` VALUES (150, 4, 1, 1, 0, 0, '����������� ������ ����� ����������� �� ������������:');
INSERT INTO `questions` VALUES (151, 4, 1, 1, 0, 0, '�� ��������� ���� ����������� ��������� ����� ����������� ����������� ������ �� �������������');
INSERT INTO `questions` VALUES (152, 20, 1, 1, 0, 0, '�� ���� ��������� ����� � �������?');
INSERT INTO `questions` VALUES (153, 20, 1, 1, 0, 0, '�� ���� �������� �������� � �������?');
INSERT INTO `questions` VALUES (154, 20, 1, 1, 0, 0, '�� ���� ��''���� ������� ������ ������� � ����?');
INSERT INTO `questions` VALUES (155, 7, 1, 1, 0, 0, '�� ������� ����������� � ��������?');
INSERT INTO `questions` VALUES (156, 7, 1, 1, 0, 0, '��� ���� ��������� �����������?');
INSERT INTO `questions` VALUES (157, 7, 1, 1, 0, 0, '��� ���� ����������� ��������� ������� ������� ...');
INSERT INTO `questions` VALUES (158, 7, 1, 1, 0, 0, '�� ������� Word �������� ����� �������?');
INSERT INTO `questions` VALUES (159, 7, 1, 1, 0, 0, '�� ����� ������ ��������� ������������ �����?');
INSERT INTO `questions` VALUES (160, 7, 1, 1, 0, 0, '�� ����� �������� ����� �����?');
INSERT INTO `questions` VALUES (161, 7, 1, 1, 0, 0, '�� ����� ��������� ��������� ������������ ������ ����� � �����?');
INSERT INTO `questions` VALUES (162, 7, 1, 1, 0, 0, '����� ��� �� ���������� ���� ��������� ��������� ...');
INSERT INTO `questions` VALUES (163, 7, 1, 1, 0, 0, '��� ���������� ����� �������� ...');
INSERT INTO `questions` VALUES (164, 20, 1, 1, 0, 0, '�� ������� �� ����� ������ ����������� "������� � �������"');
INSERT INTO `questions` VALUES (165, 20, 1, 1, 0, 0, '�� ����� ����������� ���� � ������� �� � �� �');
INSERT INTO `questions` VALUES (166, 20, 1, 1, 0, 0, '�� ����� ������ �� ������� � Word');
INSERT INTO `questions` VALUES (167, 20, 1, 1, 0, 0, '��� ������ ��������������� ��� ������� ������ ����� � �������?');
INSERT INTO `questions` VALUES (168, 20, 1, 1, 0, 0, '�� ����� ����-���� �������� ����� ����������� � �������');
INSERT INTO `questions` VALUES (169, 20, 1, 1, 0, 0, '��� �������� ������ ������� �������');
INSERT INTO `questions` VALUES (170, 20, 1, 1, 0, 0, '������� ��...');
INSERT INTO `questions` VALUES (171, 20, 1, 1, 0, 0, '��� ������ � ��������� � Word ��������������� ������ �����������');
INSERT INTO `questions` VALUES (172, 20, 1, 1, 0, 0, '���������� ����� � ������� ������������ ���������� ��������� ��');
INSERT INTO `questions` VALUES (173, 22, 1, 1, 0, 0, '��� ������������ ��������� ��������� ��''���� ���������� �������� ����');
INSERT INTO `questions` VALUES (174, 22, 1, 1, 0, 0, '�������� �������� ���������� �');
INSERT INTO `questions` VALUES (175, 22, 1, 1, 0, 0, '�������� �������� ���������� �');
INSERT INTO `questions` VALUES (176, 22, 1, 1, 0, 0, '������� <b>�����������</b> ����� ����������� <b>���������</b> ���������� ���');
INSERT INTO `questions` VALUES (177, 22, 1, 1, 0, 0, '������� <b>���������������</b> ����� ����������� <b>���������</b> ���������� ���');
INSERT INTO `questions` VALUES (178, 22, 1, 1, 0, 0, '�� ����� � ��������� ��''���, �� ��� ��������� �� ��������� ������� <b>�������������</b> ����� ����������� <b>���������</b> ������ �����?');
INSERT INTO `questions` VALUES (179, 22, 1, 1, 0, 0, '��� ������� ��������� ������ ����� ������������ ���������� �����..');
INSERT INTO `questions` VALUES (180, 22, 1, 1, 0, 0, '������ "����� ��������" �� ����� ����������� "���������" ����������');
INSERT INTO `questions` VALUES (181, 22, 1, 1, 0, 0, '�� ����� �� ��''���� WordArt ����������� ��''���');
INSERT INTO `questions` VALUES (182, 22, 1, 1, 0, 0, '��� ������� � �������� ������ ���������� ...');
INSERT INTO `questions` VALUES (183, 7, 1, 1, 0, 0, '�� ����� ������ � ���� ����������� �������� �����?');
INSERT INTO `questions` VALUES (184, 7, 1, 1, 0, 0, '�� ����� ������ � ���� ����������� �������?');
INSERT INTO `questions` VALUES (185, 7, 1, 1, 0, 0, '�� ����� � ������ �������� (�����������) �����������?');
INSERT INTO `questions` VALUES (186, 7, 1, 1, 0, 0, '�� ����� � ���� ��������� ������� ���� ��������� ���� ����, ���� � ��� � �������� 4 ��� ���������');
INSERT INTO `questions` VALUES (187, 7, 1, 1, 0, 0, '�� ����� ����������� ����� ������� ����� ������ �� ������?');
INSERT INTO `questions` VALUES (188, 24, 1, 1, 0, 0, '������� ����������� Excel �� ...');
INSERT INTO `questions` VALUES (189, 24, 1, 1, 0, 0, '��� � Excel ����������� � ������ ...');
INSERT INTO `questions` VALUES (190, 24, 1, 1, 0, 0, '������������ �������� � Excel � ...');
INSERT INTO `questions` VALUES (191, 24, 1, 1, 0, 0, '��������� Excel ��������� ...');
INSERT INTO `questions` VALUES (192, 24, 1, 1, 0, 0, '��� ����������� ������� �������� � ����� � Excel 97?');
INSERT INTO `questions` VALUES (193, 24, 1, 1, 0, 0, '��� �������� �� �������� ����� Excel ����������');
INSERT INTO `questions` VALUES (194, 24, 1, 1, 0, 0, '��� �������� �� ���������� ����� Excel ����������');
INSERT INTO `questions` VALUES (195, 24, 1, 1, 0, 0, '���������� ��������� ����� Ctrl+PgDn � Excel �������� �� ...');
INSERT INTO `questions` VALUES (196, 24, 1, 1, 0, 0, '���������� ��������� ����� Ctrl+PgUp � Excel �������� �� ...');
INSERT INTO `questions` VALUES (197, 24, 1, 1, 0, 0, '��� ����, ��� ������� � Excel ������� ���� ��������� �');
INSERT INTO `questions` VALUES (198, 24, 1, 1, 0, 0, '��� ����, ��� ������� � Excel ��� � ����� ������� ����� ��������� �');
INSERT INTO `questions` VALUES (199, 24, 1, 1, 0, 0, '��� ����, ��� ������� � Excel ��� � ����� ��������� ����� ��������� �');
INSERT INTO `questions` VALUES (200, 24, 1, 1, 0, 0, '��� ����, ��� ������� � Excel �� ����� ��������� �');
INSERT INTO `questions` VALUES (201, 24, 1, 1, 0, 0, '�� ����� ������������� ��� �����?');
INSERT INTO `questions` VALUES (202, 24, 1, 1, 0, 0, '��� ����, ��� �������� ���� ���� � Excel, ��������� ...');
INSERT INTO `questions` VALUES (203, 24, 1, 1, 0, 0, '��� �������� ������� ����� � Excel, ��������� ...');
INSERT INTO `questions` VALUES (204, 24, 1, 1, 0, 0, '�� � Excel ������ ������� �����, �� ����������� � ���� ����� ��� �� ��������?');
INSERT INTO `questions` VALUES (205, 24, 1, 1, 0, 0, '�� ����� ��������� ������ ����� � ����� ������� ����� Excel?');
INSERT INTO `questions` VALUES (206, 24, 1, 1, 0, 0, '�� �������� ���� � Excel?');
INSERT INTO `questions` VALUES (207, 24, 1, 1, 0, 0, '�� ����� ������� ���������, ����������, ��������� ����� � Excel?');
INSERT INTO `questions` VALUES (208, 24, 1, 1, 0, 0, '��� ����, ��� ������������� ��� ����� � Excel ������� ...');
INSERT INTO `questions` VALUES (209, 24, 1, 1, 0, 0, '��� ��������� ���� Excel � ����� ���� ����� �� ��������� ���� ������� ...');
INSERT INTO `questions` VALUES (210, 28, 1, 1, 0, 0, '� ����� ������� ���������� �������� ������� � ����� ������');
INSERT INTO `questions` VALUES (211, 28, 1, 1, 0, 0, '�� ��������� ��� ������� ����������� ������ ������� �������');
INSERT INTO `questions` VALUES (212, 28, 1, 1, 0, 0, '������ ���� ��������� ������� ������� ����');
INSERT INTO `questions` VALUES (213, 25, 1, 1, 0, 0, '�� ���� ������� ������?');
INSERT INTO `questions` VALUES (214, 25, 1, 1, 0, 0, '�� ������ ���� ������ � Excel?');
INSERT INTO `questions` VALUES (215, 25, 1, 1, 0, 0, '��� ���� ����������� ����� ������ � ��� MS Excel ?');
INSERT INTO `questions` VALUES (216, 25, 1, 1, 0, 0, '�� ��������� ��� ������� � Excel ����� �������� ������������ ����� ������ ?');
INSERT INTO `questions` VALUES (217, 25, 1, 1, 0, 0, '�� ����� � Excel �������� ����� � ������ �� ����������?');
INSERT INTO `questions` VALUES (218, 25, 1, 1, 0, 0, '�� ����� � Excel �������� ����� � ������ �� ��������?');
INSERT INTO `questions` VALUES (219, 25, 1, 1, 0, 0, '�� �������� ���� ���� ������ � Excel?');
INSERT INTO `questions` VALUES (220, 24, 1, 1, 0, 0, '��� ����������� ���������� ��������� Microsoft Excel?');
INSERT INTO `questions` VALUES (222, 25, 1, 1, 0, 0, '�� ���� � Excel ���� ������ ���� ��������� �� ����� �� ���������?');
INSERT INTO `questions` VALUES (223, 25, 1, 1, 0, 0, '� ���������� �������� Excel, ��� ��� ������ ���������� ��������  <b>���������� �� ������ </b> �������');
INSERT INTO `questions` VALUES (224, 25, 1, 1, 0, 0, '��� ������� ���������� ���� <b>������ �����</b> � Excel ������� ���������');
INSERT INTO `questions` VALUES (225, 25, 1, 1, 0, 0, '<b>������ ����������</b> � Excel ���������������');
INSERT INTO `questions` VALUES (226, 25, 1, 1, 0, 0, '��� ������������� ��������� ���� ����������� ��������');
INSERT INTO `questions` VALUES (227, 25, 1, 1, 0, 0, '�� ����� ������ ���� �������?');
INSERT INTO `questions` VALUES (228, 25, 1, 1, 0, 0, '�� ����� ������ ����� �������?');
INSERT INTO `questions` VALUES (229, 25, 1, 1, 0, 0, '���� �������� ����� �����, �� �� �����������');
INSERT INTO `questions` VALUES (230, 25, 1, 1, 0, 0, '���� �������� ����� �������, �� �� ����c������');
INSERT INTO `questions` VALUES (231, 25, 1, 1, 0, 0, '��� ������� ������ ���� ����������');
INSERT INTO `questions` VALUES (232, 25, 1, 1, 0, 0, '�� ����� � Excel �������� ������ ���������?');
INSERT INTO `questions` VALUES (233, 25, 1, 1, 0, 0, '�� ����� � Ecxel �������� ������ �����?');
INSERT INTO `questions` VALUES (234, 25, 1, 1, 0, 0, '�� ����� � Excel ����� � ���� ������ ��������  ������ ���������?');
INSERT INTO `questions` VALUES (237, 28, 1, 1, 0, 0, '������ ���� ���������� ��������� ������� MS Excel');
INSERT INTO `questions` VALUES (238, 28, 1, 1, 0, 0, '�� ������ ���� ������ ��������� ��� ��������� �������� �������');
INSERT INTO `questions` VALUES (239, 28, 1, 1, 0, 0, '���� ���� ���� ������� ���������, ��� ���� ��������� ��������� ���� � ������� ����');
INSERT INTO `questions` VALUES (240, 28, 1, 1, 0, 0, '���� ���������� ������� ���� � ������ �� ���������, ��...');
INSERT INTO `questions` VALUES (241, 28, 1, 1, 0, 0, '�� ����������, ���� ��� ������� ������� ���������� ���� "="');
INSERT INTO `questions` VALUES (242, 28, 1, 1, 0, 0, '� ��� ������� ����������� ������� �');
INSERT INTO `questions` VALUES (243, 28, 1, 1, 0, 0, '� ���� �� �������� ����������� ������� �ר�����');
INSERT INTO `questions` VALUES (244, 28, 1, 1, 0, 0, '�������� �� ���������������� ��� ��������� � �������� �����������');
INSERT INTO `questions` VALUES (245, 28, 1, 1, 0, 0, '�� ������� ������� ���������� ��� ��� �������');
INSERT INTO `questions` VALUES (246, 28, 1, 1, 0, 0, '�� ����������� ��������� �������?');
INSERT INTO `questions` VALUES (247, 28, 1, 1, 0, 0, '�� ������ ���� ��������� ������� ���������');
INSERT INTO `questions` VALUES (248, 28, 1, 1, 0, 0, '�� ������� ����������� ����������');
INSERT INTO `questions` VALUES (249, 28, 1, 1, 0, 0, ' �� ������� ������ �������� �10 ������� �����������������');
INSERT INTO `questions` VALUES (250, 28, 1, 1, 0, 0, '��� ������� ��� ������� � MS Excel � ���������� ������ �� ����� �����������');
INSERT INTO `questions` VALUES (251, 28, 1, 1, 0, 0, '��� ����������� ������� �����');
INSERT INTO `questions` VALUES (252, 28, 1, 1, 0, 0, '�� ����� � ������� ���� ��������������� ������� ���������');
INSERT INTO `questions` VALUES (253, 28, 1, 1, 0, 0, '������� ������...');
INSERT INTO `questions` VALUES (254, 28, 1, 1, 0, 0, '�� ����� ������������� � ����� ��������� ������� ����� ������');
INSERT INTO `questions` VALUES (255, 26, 1, 1, 0, 0, '���������...');
INSERT INTO `questions` VALUES (256, 26, 1, 1, 0, 0, '������ �� ������� � ��� ����������� ��������� ���������');
INSERT INTO `questions` VALUES (257, 26, 1, 1, 0, 0, '����������� ������� =����(B3:M3 �2:�8), ����:');
INSERT INTO `questions` VALUES (258, 26, 1, 1, 0, 0, '��� ���������� ������ 23+(18-16)<sup>3</sup>+4�6 ��������������� �������:');
INSERT INTO `questions` VALUES (260, 26, 1, 1, 0, 0, '������� � ���������� ������� ���� ���������');
INSERT INTO `questions` VALUES (261, 26, 1, 1, 0, 0, '��������� ����1:����3!A1 �����');
INSERT INTO `questions` VALUES (262, 26, 1, 1, 0, 0, '������ <b>�1</b> ������ �������� <b>1</b>, ������ <b>�2</b> � �������� <b>2</b>. � ������ <b>�3</b> ����� �������: <b>=�1>�2</b>. ����������� ��������� ���� ������� ����:');
INSERT INTO `questions` VALUES (263, 26, 1, 1, 0, 0, '����� �������� R1C1 ���� �����������������...');
INSERT INTO `questions` VALUES (264, 26, 1, 1, 0, 0, '³����� ���������...');
INSERT INTO `questions` VALUES (265, 26, 1, 1, 0, 0, '������� ���� ��������� ��������� �� ������');
INSERT INTO `questions` VALUES (266, 26, 1, 1, 0, 0, '������� <b>=R5C3-R6C4</b> ��������� ������');
INSERT INTO `questions` VALUES (267, 26, 1, 1, 0, 0, '������� <b>=A2+(B3-B4)*A4^A3<b>');
INSERT INTO `questions` VALUES (268, 26, 1, 1, 0, 0, '������� <b>=�3^1/3</b>');
INSERT INTO `questions` VALUES (269, 26, 1, 1, 0, 0, 'ĳ������� ������ �1:�12 �������� ��''� <b>̳����</b>, �������� ������ �7:F7 �������� ��''� <b>������</b>. ������� <b>=(̳���� ������)</b> ������� ��������');
INSERT INTO `questions` VALUES (270, 26, 1, 1, 0, 0, '��� ��''������� ������������� ������� � ���� ����������� ��������������� ��������');
INSERT INTO `questions` VALUES (271, 26, 1, 1, 0, 0, '��� ������������� ��������� � � Excel ��������������� ��������');
INSERT INTO `questions` VALUES (272, 26, 1, 1, 0, 0, '�������� "������� ����" ��������������� ���');
INSERT INTO `questions` VALUES (273, 26, 1, 1, 0, 0, '��� �������� ������ �������� � ���� ��������������� ��������');
INSERT INTO `questions` VALUES (274, 26, 1, 1, 0, 0, '����� ��� �����, �� ������������� ������, ������� ������, ������� ��� ��������� ����������');
INSERT INTO `questions` VALUES (275, 26, 1, 1, 0, 0, '����, �� ���� ��� ���������� � ������ ����������');
INSERT INTO `questions` VALUES (276, 26, 1, 1, 0, 0, '��� ��������� ��������� �� ������� ������ �� �������� ������� ������� ������ ����������������');
INSERT INTO `questions` VALUES (277, 28, 1, 1, 0, 0, '���� ������ �1=10, � �2=2 �� ������� <b>=����(�1>A2)</b> �������');
INSERT INTO `questions` VALUES (278, 28, 1, 1, 0, 0, '���� � ������ D7 ����������� <b>0</b>,�� ������� <b>=��(D7)</b> �������...');
INSERT INTO `questions` VALUES (279, 28, 1, 1, 0, 0, '���� � ������ A7 ����������� <b>������� ������ �� ��''���� �����</b>, �� ������� <b>=��(D7)</b> �������...');
INSERT INTO `questions` VALUES (280, 25, 1, 1, 0, 0, '��� ����, ��� � Excel ������� ����������� ������� ������� ������, ��������� �2:�5 �������...');
INSERT INTO `questions` VALUES (281, 28, 1, 1, 0, 0, '���� � ������ �1 �������� ������,  � ������ �2 - ����, � � ������ �3 - ������, �� ����������� ��������� ������� <b>=�(�1:�3)</b> ����');
INSERT INTO `questions` VALUES (282, 28, 1, 1, 0, 0, '���� � ������ �1 �������� ������, � ������ �2 - ������, � � ������ �3 - ������, �� ����������� ��������� ������� <b>=�(�1:�3) </b>����');
INSERT INTO `questions` VALUES (283, 25, 1, 1, 0, 0, '�� ��������� ���� ����� ��������� ����� ������� ����������� ������� ������ � Excel?');
INSERT INTO `questions` VALUES (284, 28, 1, 1, 0, 0, '���� � ������ D8 ����������� ����� ����� 5, �� ������� <b>=��(D8>5)</b> ������ ��������');
INSERT INTO `questions` VALUES (285, 25, 1, 1, 0, 0, '��� ����, ��� � Excel �������  ������� �� ������� ������  �������...');
INSERT INTO `questions` VALUES (286, 28, 1, 1, 0, 0, '���� � ������ �1 ����������� ����� 45, � ������ �2 ����� 345, � ������ �3 ����������� ����� "ϳ������", �� ������� <b>=�ר�(�1:�3)</b> ������� ��������');
INSERT INTO `questions` VALUES (287, 28, 1, 1, 0, 0, '���� � ������ �1 ����������� ����� 45, � ������ �2 ����� 345, � ������ �3 ����������� ����� "ϳ������", �� ������� <b>=�ר�(�1:�3;2) </b>������� ��������');
INSERT INTO `questions` VALUES (288, 28, 1, 1, 0, 0, '���� ������ A1:A3 ����� ��''� ���� � ������ ����� 10, 7, 10,  �� ������� <b>=������(A1:A3) </b> ������� ��������');
INSERT INTO `questions` VALUES (289, 28, 1, 1, 0, 0, '���� ������ A1:A3 ����� ��''� ���� � ������ ����� 10, 7, 10,  �� ������� <b>=������(����) </b> ������� ��������');
INSERT INTO `questions` VALUES (290, 30, 1, 1, 0, 0, '� ������� ������ �1:�3 ���������� �����:<table width="20%" border="1"><tr bgcolor="#CCCCCC"><b><td>�</td><td>A</td><td>B</td>\r\n<td>C</td></b></tr><tr><td bgcolor="#CCCCCC">1</td><td>2</td><td>3</td><td>4</td></tr><tr><td bgcolor="#CCCCCC">2</td>\r\n<td>1</td><td>4</td><td>2</td></tr><tr><td bgcolor="#CCCCCC">3</td><td>5</td><td>0</td><td>2</td></tr></table>�������� � ����� �� �������������� ������� ����� ������� ������:');
INSERT INTO `questions` VALUES (291, 30, 1, 1, 0, 0, '��� ������ ������� ������, �� ������� ���� ��������, ���  ��������� ����� ������� ������� ���������');
INSERT INTO `questions` VALUES (292, 30, 1, 2, 0, 0, '�� ��������� ������� ������ ����������� ��������� �������:<table width="20%" border="1"><tr><td>1</td><td>1</td><td>1</td></tr><tr><td>1</td> <td>1</td><td>1</td></tr><tr><td>1</td><td>1</td><td>1</td></tr><tr><td>1</td><td>1</td><td>1</td></tr></table>����������� ����:');
INSERT INTO `questions` VALUES (293, 30, 1, 1, 0, 0, '��� ����������� � ������ ������� ������ ����������� �������� ������� �������');
INSERT INTO `questions` VALUES (294, 30, 1, 1, 0, 0, '��� ����������� � ����� ��������� ������ � ����������� ������� ����� � �������� ������� ������ �������');
INSERT INTO `questions` VALUES (295, 30, 1, 1, 0, 0, '���� �������, �� ������  ������� ������, ������ <b>��</b> �� ������� ������, �� ����������� ����:');
INSERT INTO `questions` VALUES (296, 30, 1, 1, 0, 0, '������� ������ ');
INSERT INTO `questions` VALUES (297, 30, 1, 2, 0, 0, '�� ����� ������ ������� ������� � �� �:<table width="13%" border="1"><tr><td width="21%" bordercolor="#000000"><div align="center"><b>A</b></div></td><td width="8%"><div align="center"><b></b></div></td><td colspan="3" bordercolor="#000000"><div align="center"><b>B</b></div></td></tr><tr> <td width="21%" bordercolor="#000000">2</td><td width="8%">�</td><td width="18%" bordercolor="#000000">1</td><td width="22%" bordercolor="#000000">2</td><td width="31%" bordercolor="#000000">3</td></tr><tr><td width="21%" bordercolor="#000000">3</td><td width="8%">�</td><td width="18%" bordercolor="#000000">4</td><td width="22%" bordercolor="#000000">5</td><td width="31%" bordercolor="#000000">6</td></tr><tr><td width="21%" bordercolor="#000000">4</td><td width="8%">�</td><td width="18%" bordercolor="#000000">7</td><td width="22%" bordercolor="#000000">8</td><td width="31%" bordercolor="#000000">9</td></tr></table>');
INSERT INTO `questions` VALUES (298, 30, 1, 1, 0, 0, '��� ������� ��������������� ��� ��������� �������?');
INSERT INTO `questions` VALUES (299, 30, 1, 2, 0, 0, '� ������� ������ F1:H2 ������� ������� =������(A1:B2;C1:D3), ���� ���� ���� ��������� Ctrl+Shift+Enter. ����� ����������� ���� �������:<table width="38%" border="1" bordercolor="#000000"><tr bgcolor="#CCCCCC"><td width="3%" bgcolor="#CCCCCC">�</td><td width="5%"><div align="center"><b>A </b></div></td><td width="4%"><div align="center"><b>B</b></div></td><td width="4%"><div align="center"><b>C</b></div></td><td width="4%"><div align="center"><b>D</b></div></td><td width="4%"><div align="center"><b>E</b></div></td><td width="18%"><div align="center"><b>F</b></div></td><td width="18%"><div align="center"><b>G</b></div></td><td width="40%"><div align="center"><b>H</b></div></td></tr><tr><td width="3%" bgcolor="#CCCCCC"><div align="right"><b>1</b></div></td><td width="5%"><div align="right">1</div></td><td width="4%"><div align="right">2</div></td><td width="4%"><div align="right">1</div></td><td width="4%"><div align="right">2</div></td><td width="4%">�</td><td width="18%"><div align="right">#����!</div></td><td width="18%"><div align="right">#����!</div></td><td width="40%"><div align="right">#����!</div></td></tr><tr><td width="3%" bgcolor="#CCCCCC"><div align="right"><b>2</b></div></td><td width="5%"><div align="right">4</div></td><td width="4%"><div align="right">5</div></td><td width="4%"><div align="right">2</div></td><td width="4%"><div align="right">2</div></td><td width="4%">�</td><td width="18%"><div align="right">#����!</div></td><td width="18%"><div align="right">#����!</div></td><td width="40%"><div align="right">#����!</div></td></tr><tr><td width="3%" bgcolor="#CCCCCC"><div align="right"><b>3</b></div></td><td width="5%">�</td><td width="4%">�</td><td width="4%"><div align="right">3</div></td><td width="4%"><div align="right">2</div></td><td>�</td><td width="18%">�</td><td width="18%">�</td><td width="40%">�</td></tr></table>���� ������� �������?');
INSERT INTO `questions` VALUES (300, 29, 1, 1, 0, 0, 'ĳ������ ��...');
INSERT INTO `questions` VALUES (301, 29, 1, 1, 0, 0, 'Excel ����������� ...');
INSERT INTO `questions` VALUES (302, 29, 1, 1, 0, 0, '³�� � ���������...');
INSERT INTO `questions` VALUES (303, 29, 1, 1, 0, 0, '���� �������, �������� ��� �������� ������� ������ ����� ����� �� ��������, �� Excel ������� ���� ����� ��');
INSERT INTO `questions` VALUES (304, 29, 1, 1, 0, 0, '���� �������, �������� ��� �������� ������� ������ ����� ����� �� ��������, �� ...');
INSERT INTO `questions` VALUES (305, 29, 1, 1, 0, 0, '��� ���������� ������� �������...');
INSERT INTO `questions` VALUES (306, 29, 1, 1, 0, 0, '³������������ ������� ����� �� ��������� ����� �����������');
INSERT INTO `questions` VALUES (307, 29, 1, 1, 0, 0, 'Excel ���� ������ ������� �������');
INSERT INTO `questions` VALUES (308, 29, 1, 1, 0, 0, '����� ��������������� ������ ������� ��� ������� �������, ���� �������� ��������� ����� �������� �������');
INSERT INTO `questions` VALUES (309, 29, 1, 1, 0, 0, '�������� ������� ������ ��''���� ������� ����� �� ��������� ������');
INSERT INTO `questions` VALUES (310, 29, 1, 1, 0, 0, '��� �������� ������� ������� ��������������� ��� �������');
INSERT INTO `questions` VALUES (311, 29, 1, 1, 0, 0, '��� �������� ������� ����������� �������, �� ������ ��������:<br>\r\n<IMG SRC="/Labs/Excel/Laba5/zavd.jpg"><br>\r\n������� ������� �������:\r\n');
INSERT INTO `questions` VALUES (312, 29, 1, 1, 0, 0, '�� ����� � Excel �������� ������� �� �����, �� ����������� � ����� ����');
INSERT INTO `questions` VALUES (313, 29, 1, 1, 0, 0, '��� ����� ��...');
INSERT INTO `questions` VALUES (314, 29, 1, 1, 0, 0, '³� ���� �������� ������ ������� �� ������?');
INSERT INTO `questions` VALUES (315, 29, 1, 1, 0, 0, '̳��� �������� �� ������ ��...');
INSERT INTO `questions` VALUES (316, 29, 1, 1, 0, 0, '������� ������...');
INSERT INTO `questions` VALUES (317, 29, 1, 1, 0, 0, 'ĳ������ � ����������� ��������� ��...');
INSERT INTO `questions` VALUES (318, 29, 1, 1, 0, 0, '� ������ � ����������� ��������� ���� ����� ������� �� ...');
INSERT INTO `questions` VALUES (319, 29, 1, 1, 0, 0, '������� ����� ��� ������� ��������� �� ...');
INSERT INTO `questions` VALUES (320, 29, 1, 1, 0, 0, '�� ����� ����������� ������ �� ������ �� �����?');
INSERT INTO `questions` VALUES (321, 29, 1, 1, 0, 0, 'ĳ������ ����� ������� ��...');
INSERT INTO `questions` VALUES (322, 30, 1, 2, 0, 0, '� ������� ������ <b>�1:�2</b> ������� ������� <b>A</b>, � ������� ������ <b>�1:D2</b> ������� ������� <b>B</b>. ��� ���������� ���� �������, � ������� ������ <b>E1:F2</b> ����� ��������� �������: <b>=�����(A1:B2;C1:D2)</b>. ����������� ���� �������� �������:<table width="21%" border="1" bordercolor="#000000">\r\n  <tr bgcolor="#CCCCCC"> \r\n    <td width="8%"> \r\n      <div align="center"></div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="center">A</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="center">B</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="center">C</div>\r\n    </td>\r\n    <td width="9%"> \r\n      <div align="center">D</div>\r\n    </td>\r\n    <td width="10%"> \r\n      <div align="center">E</div>\r\n    </td>\r\n    <td width="49%"> \r\n      <div align="center">F</div>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor="#CCCCCC" width="8%"> \r\n      <div align="center">1</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="right">1</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="right">1</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="right">2</div>\r\n    </td>\r\n    <td width="9%"> \r\n      <div align="right">2</div>\r\n    </td>\r\n    <td width="10%"> \r\n      <div align="right">#���?</div>\r\n    </td>\r\n    <td width="49%"> \r\n      <div align="right">#���?</div>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor="#CCCCCC" width="8%"> \r\n      <div align="center">2</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="right">1</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="right">1</div>\r\n    </td>\r\n    <td width="8%"> \r\n      <div align="right">2</div>\r\n    </td>\r\n    <td width="9%"> \r\n      <div align="right">2</div>\r\n    </td>\r\n    <td width="10%"> \r\n      <div align="right">#���?</div>\r\n    </td>\r\n    <td width="49%"> \r\n      <div align="right">#���?</div>\r\n    </td>\r\n  </tr>\r\n</table>\r\n���� ������� �������?');
INSERT INTO `questions` VALUES (323, 30, 1, 2, 0, 0, '������������� �� �������: � (������� �1:�2) �� � (������� D1:E3): <table width="14%" border="1" bordercolor="#000000" height="109"><tr bgcolor="#CCCCCC"><td>�</td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td></tr><tr><td bgcolor="#CCCCCC">1</td><td>1</td><td>2</td><td>3</td><td>3</td><td>2</td></tr><tr><td bgcolor="#CCCCCC">2</td><td>2</td><td>2</td><td>2</td><td>5</td><td>4</td></tr><tr><td bgcolor="#CCCCCC">3</td><td>�</td><td>�</td><td>�</td><td>3</td><td>3</td></tr>\r\n</table>��� ��������� ������� ������� ������� ������ ��� ��������� ���������� ��������?');
INSERT INTO `questions` VALUES (324, 30, 1, 2, 0, 0, '� �������� ������� ������� ���������� ���� ������� �� �������.\r\n<table width="14%" border="1" bordercolor="#000000" height="109">\r\n<tr bgcolor="#CCCCCC"><td>�</td><td>A</td><td>B</td></tr><tr><td bgcolor="#CCCCCC">1</td><td>1</td><td>2</td></tr><tr><td bgcolor="#CCCCCC">2</td><td>2</td><td>2</td></tr>\r\n</table>\r\n��� ����� ������� ����������� �������:');
INSERT INTO `questions` VALUES (325, 30, 1, 2, 0, 0, '������ �������:\r\n<table width="15%" border="1" height="135" cellspacing="1" bordercolor="#000099"><tr bgcolor="#CCCCCC"><td>�</td><td>A</td><td>B</td></tr><tr><td bgcolor="#CCCCCC">1</td><td>2</td><td>1</td></tr><tr><td bgcolor="#CCCCCC">2</td><td>2</td><td>2</td></tr><tr><td bgcolor="#CCCCCC">3</td><td>3</td><td>3</td></tr><tr><td bgcolor="#CCCCCC">4</td><td>3</td><td>4</td></tr><tr><td bgcolor="#CCCCCC">5</td><td>-1</td><td>�</td></tr></table> � ������ �5 ������� ������� {=����(A1:A4-B1:B4)}. ���� ������� ��������:');
INSERT INTO `questions` VALUES (326, 30, 1, 2, 0, 0, '������������� �� �������: � (������� �1:�3) �� � (������� D1:E4):<table width="18%" border="1" height="159" cellspacing="1" bordercolor="#000099"><tr bgcolor="#CCCCCC"><td width="25%">&nbsp;</td><td width="26%">A</td><td width="26%">B</td><td width="23%">C</td><td width="23%">D</td>\r\n<td width="26%">E</td></tr><tr><td bgcolor="#CCCCCC" width="25%">1</td><td width="26%">1</td><td width="26%">2</td><td width="23%">1</td><td width="23%">2</td><td width="26%">1</td></tr><tr><td bgcolor="#CCCCCC" width="25%">2</td><td width="26%">2</td><td width="26%">3</td><td width="23%">2</td><td width="23%">2</td><td width="26%">2</td></tr><tr><td bgcolor="#CCCCCC" width="25%">3</td><td width="26%">3</td><td width="26%">4</td><td width="23%">3</td><td width="23%">3</td><td width="26%">3</td></tr><tr><td bgcolor="#CCCCCC" width="25%">4</td><td width="26%">&nbsp;</td><td width="26%">&nbsp;</td><td width="23%">&nbsp;</td><td width="23%">3</td><td width="26%">4</td></tr></table>\r\n��� ��������� ������� ������� ������� ������ ��� ��������� ���������� ��������?');
INSERT INTO `questions` VALUES (327, 30, 1, 2, 0, 0, '�� ����� ������ ������� ������� � (A1:C3) �� � (E1:E3): <table width="18%" border="1" height="159" cellspacing="1" bordercolor="#000099"><tr bgcolor="#CCCCCC"><td width="25%">&nbsp;</td><td width="26%">A</td><td width="26%">B</td><td width="23%">C</td><td width="23%">D</td><td width="26%">E</td></tr><tr><td bgcolor="#CCCCCC" width="25%">1</td><td width="26%">1</td><td width="26%">2</td><td width="23%">1</td><td width="23%">&nbsp;</td><td width="26%">1</td></tr><tr><td bgcolor="#CCCCCC" width="25%">2</td><td width="26%">2</td><td width="26%">3</td><td width="23%">2</td><td width="23%">&nbsp;</td><td width="26%">2</td></tr><tr><td bgcolor="#CCCCCC" width="25%">3</td><td width="26%">3</td><td width="26%">4</td><td width="23%">3</td><td width="23%">&nbsp;</td><td width="26%">3</td></tr></table>');
INSERT INTO `questions` VALUES (328, 30, 1, 2, 0, 0, '�� ��������� ������� ������ ��������� ��������� ������� �1:�3: <table width="18%" border="1" height="159" cellspacing="1" bordercolor="#000099">\r\n  <tr bgcolor="#CCCCCC"> \r\n    <td width="25%">&nbsp;</td>\r\n    <td width="26%">A</td>\r\n    <td width="26%">B</td>\r\n    <td width="23%">C</td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor="#CCCCCC" width="25%">1</td>\r\n    <td width="26%">1</td>\r\n    <td width="26%">1</td>\r\n    <td width="23%">1</td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor="#CCCCCC" width="25%">2</td>\r\n    <td width="26%">1</td>\r\n    <td width="26%">1</td>\r\n    <td width="23%">1</td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor="#CCCCCC" width="25%">3</td>\r\n    <td width="26%">1</td>\r\n    <td width="26%">1</td>\r\n    <td width="23%">1</td>\r\n  </tr>\r\n</table>\r\n����������� ����:');
INSERT INTO `questions` VALUES (329, 30, 1, 1, 0, 0, '������� ������ ������� ���� ������� � ������� ������ ���� ��');
INSERT INTO `questions` VALUES (330, 30, 1, 1, 0, 0, '��� �������� ������� ������� ����, ���� ��������� ������� ������� ������� 0');
INSERT INTO `questions` VALUES (331, 30, 1, 1, 0, 0, '��� �������� ������� ������� ������, ���� ��������� ������� ������� ������� 0');
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
-- ��������� ������� `results`
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
-- ���� ����� ������� `results`
-- 


-- --------------------------------------------------------

-- 
-- ��������� ������� `results_log`
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
-- ���� ����� ������� `results_log`
-- 


-- --------------------------------------------------------

-- 
-- ��������� ������� `results_log_answers`
-- 

CREATE TABLE `results_log_answers` (
  `ID_RE_LOG` int(10) unsigned NOT NULL default '0',
  `ID_AN` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID_RE_LOG`,`ID_AN`),
  KEY `ID_AN` (`ID_AN`)
) TYPE=InnoDB;

-- 
-- ���� ����� ������� `results_log_answers`
-- 


-- --------------------------------------------------------

-- 
-- ��������� ������� `students`
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
-- ���� ����� ������� `students`
-- 

INSERT INTO `students` VALUES (906, 25, 'guest', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `students` VALUES (977, 25, 'lavoryk', '2c42e5cf1cdbafea04ed267018ef1511');

-- --------------------------------------------------------

-- 
-- ��������� ������� `teachers`
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
-- ���� ����� ������� `teachers`
-- 

INSERT INTO `teachers` VALUES (1, 'adm', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'd41d8cd98f00b204e9800998ecf8427e');

-- --------------------------------------------------------

-- 
-- ��������� ������� `test_priv`
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
-- ���� ����� ������� `test_priv`
-- 


-- --------------------------------------------------------

-- 
-- ��������� ������� `tests`
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
-- ���� ����� ������� `tests`
-- 

INSERT INTO `tests` VALUES (4, '����������� ������ Word 3', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Word/Laba3/prakt3.htm');
INSERT INTO `tests` VALUES (7, '����������� ������ Word 6', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Word/Laba6/prakt6.htm');
INSERT INTO `tests` VALUES (9, '����������� ������ Word 2', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Word/Laba2/prakt2.htm');
INSERT INTO `tests` VALUES (16, 'multiplication table', 'Y', 20, 'N', 'N', 'N', '');
INSERT INTO `tests` VALUES (19, 'Microsoft Word', 'Y', 30, 'N', 'N', 'N', '');
INSERT INTO `tests` VALUES (20, '����������� ������ Word 4', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Word/Laba4/prakt4.htm');
INSERT INTO `tests` VALUES (21, '����������� ������ Word 1', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Word/Laba1/prakt1.htm');
INSERT INTO `tests` VALUES (22, '����������� ������ Word 5', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Word/Laba5/prakt5.htm');
INSERT INTO `tests` VALUES (24, '����������� ������ Excel 1', 'N', 50, 'N', 'N', 'Y', 'http://xp/Labs/Excel/Laba1/prakt1.htm');
INSERT INTO `tests` VALUES (25, '����������� ������ Excel 2', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Excel/Laba2/prakt2.htm');
INSERT INTO `tests` VALUES (26, '����������� ������ Excel 3', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Excel/Laba3/prakt3.htm');
INSERT INTO `tests` VALUES (27, 'Microsoft Excel', 'Y', 30, 'N', 'N', 'N', '');
INSERT INTO `tests` VALUES (28, '����������� ������ Excel 4', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Excel/Laba4/prakt4.htm');
INSERT INTO `tests` VALUES (29, '����������� ������ Excel 5', 'N', 5, 'N', 'N', 'Y', 'http://win2000/Labs/Excel/Laba5/prakt5.htm');
INSERT INTO `tests` VALUES (30, '����������� ������ Excel 6', 'N', 10, 'N', 'N', 'Y', 'http://win2000/Labs/Excel/Laba6/prakt6.htm');
INSERT INTO `tests` VALUES (31, 'multiplication table(2*x=y)', 'N', 10, 'N', 'N', 'N', '');
INSERT INTO `tests` VALUES (135, 'multiplication table(3*x=y)', 'N', 10, 'N', 'N', 'N', '');
INSERT INTO `tests` VALUES (136, 'multiplication table(4*x=y)', 'N', 10, 'N', 'N', 'N', '');

-- --------------------------------------------------------

-- 
-- ��������� ������� `tests_blocks`
-- 

CREATE TABLE `tests_blocks` (
  `ID_TEST_BLOCK` mediumint(8) unsigned NOT NULL default '0',
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID_TEST_BLOCK`,`ID_TEST`),
  KEY `ID_TEST` (`ID_TEST`)
) TYPE=InnoDB;

-- 
-- ���� ����� ������� `tests_blocks`
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
-- ��������� ������� `time_table`
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
-- ���� ����� ������� `time_table`
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