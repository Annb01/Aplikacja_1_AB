   M S B A M L   `   `   `  ����U  QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf  5   	   I EAplikacja1_A.B, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Aplikacja1_A.B.ViewAplikacja1_A.B.View 5   	   "   Aplikacja1_A.B.View.MainView   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   @lvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf   5   	   Fmc;http://schemas.openxmlformats.org/markup-compatibility/2006   5   	   /local!clr-namespace:Aplikacja1_A.B.View   5   	   -   5          � WindowStyle$
  None=�5
   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   	   $	��550��5   	   $	��700��5   	   .��5      �  � ColumnDefinitions 5   
   �� 5      $��70 �6   �� 5      $��* �6   �� 5      $��25 �6   �� 5      $��25 �6   �� 5      $��5 �6    � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��* �6   .+�5    
   ��  �� CornerRadius$ 10 10 10 10��6   $��0��5!      $��5��5"      ���#141414$��0��5$      $��2��5%      �� 5'   
   $��0��6   ._�5(      �� $��BrainyBrowse��6   
�������$��10(�5*      $��
Montserrat)�5+      $��Center=�5,      $��10,0,0,0q�5-      5.      �� 50   
   $��2��6   $��0��51      ._�52      �� -   5         ��Name$ 	minimsign��52      
�������$��-��54      
���   �$��16(�56      $��
Montserrat)�57       � Cursor$
 Hand��58      ��5;      �� 5<      	 �� 
TargetType"	 ��6&   .R�5=      �� $��18��6!   $��18��5>   !   $ 9��5?   !   #��z��5@   !   ._�5A      �� $��Center=�6/   $��Center=�5B   /   5C      5D      5G      5I      �� 5K   
   $��3��6   $��0��5L      ._�5M      �� -   5        $ 	closesign��5M      
�������$��x��5O      
���   �$��16(�5Q      $��
Montserrat)�5R      $
 Hand��5S      ��5V      �� 5W      "	 ��6&   .R�5X      �� $��18��6!   $��18��5Y   !   $ 9��5Z   !   #��z��5[   !   ._�5\      �� $��Center=�6/   $��Center=�5]   /   5^      5_      5b      5d      �� 5g   
   $ 10��6   
�������$��10q�5i      $��1��5j      ._�5k      � .+�5l      �� $	��Top=�6   .+�5m      ��    
menuButton#��[  6   $��5 10 5 5q�5n      ���#141414.��5p      .  (MahApps.Metro.IconPacks.PackIconMaterial  
   Kind$
 BookSearchOutline=�60     menuButtonIcon#��[ 5q   0   5r      �� 5s      
�������$��	13 5 13 5q�5t       $	��0.2��5u       �� 5v      -   5        #��[  5v   3   $��5 5 5 5q�5w      .��5x        $
 HumanFemale=�60   #��[ 5y   0   5z      5}      �� 5~      
�������$��13 5 13 -400q�5      $	��0.2��5�      �� 5�      -   5        #��[  5�   .   $��
0 0 0 -450q�5�      .��5�        $
 Logout=�6,   #��[ 5�   ,   5�      5�      5�      �� 5�   
   $	��630��6    �� Orientation$ Vertical=�5�      $��1��5�      $��1��5�      $��	0,120,0,0q�5�      $��3��5�      .+�5�      �� $e��_C:\Users\bubul\Documents\School\4_semestr\PIV\Aplikacja_1_AB\Aplikacja1_A.B\Images\Zasób 2.png��6   $��50��5�      �� 5�      $��BrainyBrowse��6   
�������$��20(�5�      $�� Trebuchet MS)�5�      $��Center=�5�      $��Center=�5�      $��	0,10,0,30q�5�      �� 5�      -   5         ��Name$ 	searchBox��5�      $��Medium"�5�      $��Trebuchet MS)�5�      
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
 True��5�   &   . �5�   "   ��  � �� �#b9b7c55�   )   5�      5�      ��5�      �� 5�      "	 ��6&   .R�5�      �� $	��150��6!   $��30��5�   !   $ 15��5�   !   #��z��5�   !   ._�5�      �� $��Center=�6/   $��Center=�5�   /   5�      5�      5�      �� 5�      -   5         ��Name$ 
resultText��5�      $
��Wrap=�5�      $��10,20q�5�      5�      5�      5�      