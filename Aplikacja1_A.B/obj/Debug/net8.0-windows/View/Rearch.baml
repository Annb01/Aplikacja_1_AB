   M S B A M L   `   `   `  ����I  EAplikacja1_A.B, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Aplikacja1_A.B.ViewAplikacja1_A.B.View  5   	   U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5	   	        Aplikacja1_A.B.View.Rearch   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:Aplikacja1_A.B.View     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   @lvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf   5	   	   -   5          � WindowStyle$
  None=�5
   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   	   $	��550��5   	   $	��700��5   	   .��5      �  � ColumnDefinitions 5   
   �� 5      $��70 �6   �� 5      $��* �6   �� 5      $��25 �6   �� 5      $��25 �6   �� 5      $��5 �6    � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $	��103 �6   �� 5      .+�5!   
   ��  �� CornerRadius$ 10 10 10 10��6   $��0��5"      $��6��5#      ���#141414$��0��5%      $��3��5&      �� 5(   
   $��0��6   ._�5)      �� $��BrainyBrowse��6   
�������$��10(�5+      $��
Montserrat)�5,      $��Center=�5-      $��10,0,0,0q�5.      5/      �� 51   
   $��2��6   $��0��52      ._�53      �� -   5         ��Name$ 	minimsign��53      
�������$��-��55      
���   �$��16(�57      $��
Montserrat)�58       � Cursor$
 Hand��59      ��5<      �� 5=      	 �� 
TargetType"	 ��6&   .R�5>      �� $��18��6!   $��18��5?   !   $ 9��5@   !   #��z��5A   !   ._�5B      �� $��Center=�6/   $��Center=�5C   /   5D      5E      5H      5J      �� 5L   
   $��3��6   $��0��5M      ._�5N      �� -   5        $ 	closesign��5N      
�������$��x��5P      
���   �$��16(�5R      $��
Montserrat)�5S      $
 Hand��5T      ��5W      �� 5X      "	 ��6&   .R�5Y      �� $��18��6!   $��18��5Z   !   $ 9��5[   !   #��z��5\   !   ._�5]      �� $��Center=�6/   $��Center=�5^   /   5_      5`      5c      5e      �� 5h   
   $ 10��6   
�������$��10q�5j      $��1��5k      $��2��5l      ._�5m      � .+�5n      �� $	��Top=�6   .+�5o      ��    
menuButton#��[  6   $��5 10 5 5q�5p      ���#141414.��5r      .  (MahApps.Metro.IconPacks.PackIconMaterial  
   Kind$
 BookSearchOutline=�60     menuButtonIcon#��[ 5s   0   5t      �� 5u      
�������$��	13 5 13 5q�5v       $	��0.2��5w       �� 5x      -   5        #��[  5y      $��5 5 5 5q�5z      .��5{        $
 HumanFemale=�60   #��[ 5|   0   5}      5�      �� 5�      
�������$��13 5 13 -400q�5�      $	��0.2��5�      �� 5�      -   5        #��[  5�      $��
0 0 0 -450q�5�      .��5�        $
 Logout=�6,   #��[ 5�   ,   5�      5�      5�      �� 5�   
    �� Orientation$ Vertical=�6   $��1��5�      $��1��5�      $��0,20,0,0q�5�      $��4��5�      .+�5�      �� -   5         ��Name$ 	searchBox��5�      $��Medium"�5�      $��Trebuchet MS)�5�      
������� �� 
CaretBrush
 �����
�������$��0,0,0,1q�5�      $��28��5�      $	��516��5�      $��Center=�5�      $��0,5,0,0q�5�      $��20,0,0,0q�5�      .��6)   ��5�      �� 5�       �� ImageSource$d ^C:\Users\bubul\Documents\School\4_semestr\PIV\Aplikacja_1_AB\Aplikacja1_A.B\Images\search3.png��6!    j� Stretch$
 None=�5�   !    j� 
AlignmentX$
 Left=�5�   !   .��5�   &   5�      �� 5�      -   5        $��SEARCH��5�      
���   �$��16(�5�      $��
Montserrat)�5�      $
 Hand��5�      $��0,10,0,0q�5�      ��5�      �� 5�       �� 
TargetType" ��6   .�5�      ��  �� Property � �� �� Value
 �����5�   !    �� Triggers 5�      P� 5�       P� Property �@J�IsMouseOver P� Value$
 True��5�   &   . �5�   "   ��  � �� �#b9b7c55�   )   5�      5�      ��5�      �� 5�      "	 ��6&   .R�5�      �� $	��150��6!   $��30��5�   !   $ 15��5�   !   #��z��5�   !   ._�5�      �� $��Center=�6/   $��Center=�5�   /   5�      5�      5�      5�      �� 5�   
   $��2��6   $��1��5�      $��3��5�      $
��Auto=�5�      $��Hidden=�5�      .��5�      �� -   5         ��Name$ 
resultText��5�      $
��Wrap=�5�      $	��620��5�        ResultTextStyle#��[ 5�      5�      5�      5�      