   M S B A M L   `   `   `  ����F  BListOfGroup, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:ListOfGroupListOfGroup  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089I2clr-namespace:System.Collections;assembly=mscorlibSystem.Collections 5   	       ListOfGroup.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:ListOfGroup     5   	   Bcol2clr-namespace:System.Collections;assembly=mscorlib     5   	     � Title$%  Список студентов��5	   	   $��626.087��6"   $��389.13��63   .��5
      � $��0,0,2,0q�6   .+�5   
   �� -   5        $��cbList��5      $	��Top=�6!   $��10,75,217,0q�69   $��Century Gothic)�6N   $��16(�6j   6x   �� 5   
   $#��Выберите группу��6   $��16(�6*   $��Center=�68   $��Center=�6T   $��10,11,217,541q�6r   $��43��6�   $	��152��6�   �� 5   
   $��Список группы��6   $��16(�6(   $��Center=�67   $��Center=�6R   $��221,10,11,550q�6o   $��35��6�   $	��147��6�   �� 5   
   -   5         ��Name$ spisok��5      $	��Top=�6"   $��187,50,10,0q�6:   $��Century Gothic)�6O   $��16(�6k   $	��113��6y   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGridStudents��5      $��10,190,11,0q�6.   $	��Top=�6C   $��16(�6[   $	��142��6i   6v   �� 5   
   $��	0,369,0,0q�6   .@�5      �� ��5      �� 5      $��15(�6    !Удалить студента6@   ��5      � 5      .+�5      �� $��Фамилия��6    $
��Left=�62   $	��Top=�6M   $��26��6e   $��60��6q   $��	10,40,0,0q�6|   �� 5      $��Имя��6    $
��Left=�6.   $	��Top=�6J   $��26��6b   $��60��6n   $��
124,40,0,0q�6y   �� 5      -   5         ��Name$ DelNameTextBox��5   "   $��124,71,139,70q�6:   �� 5      -   5        $ DelSecondNameTextBox��5   "   $��10,71,263,70q�6@   �� 5      -   5         ��Name$ 	btnDelete��5   !   $��Удалить��65   $��246,0,10,77q�6H   $��41��6^   $��Bottom=�6j   6�   5      5      �� 5      ��5       �� 5!      $��15(�6    Изменить данные6?   ��5#      � 5$      .+�5%      �� $��Фамилия��6    $
��Left=�62   $	��Top=�6M   $��26��6e   $��60��6q   $��10,0,0,0q�6|   �� 5&      $��Имя��6    $
��Left=�6.   $	��Top=�6J   $��26��6b   $��60��6n   $��	124,0,0,0q�6y   �� 5'      $��Группа��6    $
��Left=�61   $	��Top=�6M   $��26��6e   $��60��6q   $��
124,45,0,0q�6|   �� 5(      $��Возраст��6    $
��Left=�62   $	��Top=�6N   $��26��6f   $��60��6r   $��	10,45,0,0q�6}   �� 5)      -   5        $ ChangeAgeTextBox��5)   "   $��10,76,263,70q�6<   �� 5*      -   5        $ ChangeGroupTextBox��5*   "   $��124,76,138,70q�6>   �� 5+      -	   5        $ ChangeNameTextBox��5+   "   $��122,23,141,119q�6=   �� 5,      -
   5        $ ChangeSecondNameTextBox��5,   "   $��10,24,263,119q�6C   �� 5-      -   5        $ btnSave��5-   !   $��Сохранить��62   $��
250,0,0,70q�6G   $��79��6[   $��Bottom=�6g   6�   �� 5.      $V��P*Для изменения выберите студента из таблицы��6    $
��Left=�6V   $	��Top=�6r   $��26��6�   $	��279��6�   $��
48,134,0,0q�6�   5/      51      �� 52      ��53      �� 54      $��15(�6    #!Добавить студента6A   ��56      � 57      .+�58      �� $��Фамилия��6    $
��Left=�62   $	��Top=�6M   $��26��6e   $��60��6q   $��10,0,0,0q�6|   �� 59      $��Имя��6    $
��Left=�6.   $	��Top=�6J   $��26��6b   $��60��6n   $��	124,0,0,0q�6y   �� 5:      $��Группа��6    $
��Left=�61   $	��Top=�6M   $��26��6e   $��60��6q   $��
124,45,0,0q�6|   �� 5;      $��Возраст��6    $
��Left=�62   $	��Top=�6N   $��26��6f   $��60��6r   $��	10,45,0,0q�6}   �� 5<      -   5        $ 
AgeTextBox��5<   "   $��10,76,263,66q�66   6L   �� 5=      -   5        $ GroupTextBox��5=   "   $��124,76,138,66q�68   �� 5>      -   5        $ NameTextBox��5>   "   $��122,23,141,120q�67   �� 5?      -   5        $ SecondNameTextBox��5?   "   $��10,24,263,120q�6=   �� 5@      -   5        $��Добавить��5@   !   $��
250,0,0,70q�65   $��79��6^   $��Bottom=�6j   5A      5C      5D      5E      5F      