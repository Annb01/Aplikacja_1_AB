   M S B A M L   `   `   `  ����I  EAplikacja1_A.B, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Aplikacja1_A.B.ViewAplikacja1_A.B.View  5   	   O,clr-namespace:Aplikacja1_A.B.CustomeControlsAplikacja1_A.B.CustomeControls  5   	   C&clr-namespace:Aplikacja1_A.B.ViewModelAplikacja1_A.B.ViewModel  5   	   %    Aplikacja1_A.B.View.Rejestracja   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:Aplikacja1_A.B.View     5   	   Hcustomecontrols,clr-namespace:Aplikacja1_A.B.CustomeControls     5   	   <	viewModel&clr-namespace:Aplikacja1_A.B.ViewModel     5   	   -   5          � Title$  Rejestracja��5
   	   $	��520��6   $	��300��6*    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   
    � WindowStartupLocation$ CenterScreen=�5   
   
������  � AllowsTransparency$
 True��5   
    � DataContext 5      -   'Aplikacja1_A.B.ViewModel.LoginViewModel  5   
    � 	Resources 5         BooleanToVisibility��%   &	        �� 5   
   6'   5      y�5      �� 5   
    �� Path$ IsViewVisible�6    �� Mode$ TwoWay=�6'   	 �� 	Converter#	 [  65   .��5      � 
 � ColumnDefinitions
 5   
   �� 5       $��* �6   �� 5!      $��25 �6   �� 5"      $��25 �6    � RowDefinitions 5$   
   �� 5%      $��30 �6   �� 5&      $��* �6   .+�5+   
   ��  �� CornerRadius$ 10,10,10,10��6   $��0��5,      $��3��5-      ���#141414$��0��5/      $��2��50      �� 52   
   $��0��6   ._�53      �� $��SIGN UP��6   
�������$��10(�55      $��
Montserrat)�56      $��Center=�57      $��10,0,0,0q�58      59      �� 5;   
   $��0��6   $��2��5<   	   $��3��5=      ._�5>      �� $	��250��6    �� Orientation$ Vertical=�5?      $��0,10,0,0q�5@      .+�5B      �� $e��_C:\Users\bubul\Documents\School\4_semestr\PIV\Aplikacja_1_AB\Aplikacja1_A.B\Images\Zasób 2.png��6   $��50��5C      �� 5D      $��BrainyBrowse��6   
�������$��20(�5F      $�� Trebuchet MS)�5G      $��Center=�5H      $��Center=�5I      $��0,10,0,0q�5J      �� 5L      $��
First name��6   
�������$��12(�5N      $��Trebuchet MS)�5O      $��Center=�5P      $��	15,10,0,0q�5Q      �� 5S      -   5         ��Name$
 Name��5S      $��13(�5U   
   $��Medium"�5V   
   $��Trebuchet MS)�5W   
   
������� �� 
CaretBrush
 �����
�������$��0,0,0,1q�5[   
   $��28��5\   
   $	��216��5]   
   $��Center=�5^   
   $��0,5,0,0q�5_   
   $��20,0,0,0q�5`   
   ��5T   
   �� *Name+ �� UpdateSourceTrigger$ PropertyChanged=�.��5`      ��5a      �� 5b       �� ImageSource$c ]C:\Users\bubul\Documents\School\4_semestr\PIV\Aplikacja_1_AB\Aplikacja1_A.B\Images\osoba2.png��6%    j� Stretch$
 None=�5c       j� 
AlignmentX$
 Left=�5d      .��5e   *   5g      �� 5i      $��	Last name��6   
�������$��12(�5k      $��Trebuchet MS)�5l      $��Center=�5m      $��	15,15,0,0q�5n      �� 5p      -   5        $ LasName��5p      $��13(�5r      $��Medium"�5s      $��Trebuchet MS)�5t      
�������
 �����
�������$��0,0,0,1q�5x      $��28��5y      $	��216��5z      $��Center=�5{      $��0,5,0,0q�5|      $��20,0,0,0q�5}      ��5q      �� *
LastName+$ PropertyChanged=�.��5}   (   ��5~      �� 5      $c ]C:\Users\bubul\Documents\School\4_semestr\PIV\Aplikacja_1_AB\Aplikacja1_A.B\Images\osoba2.png��6%   $
 None=�5�      $
 Left=�5�      .��5�   *   5�      �� 5�      $��	User name��6   
�������$��12(�5�      $��Trebuchet MS)�5�      $��Center=�5�      $��	15,15,0,0q�5�      �� 5�      -   5        $
 user��5�      $��13(�5�      $��Medium"�5�      $��Trebuchet MS)�5�      
�������
 �����
�������$��0,0,0,1q�5�      $��28��5�      $	��216��5�      $��Center=�5�      $��0,5,0,0q�5�      $��20,0,0,0q�5�      ��5�      �� *
Username+$ PropertyChanged=�.��5�   (   ��5�      �� 5�      $c ]C:\Users\bubul\Documents\School\4_semestr\PIV\Aplikacja_1_AB\Aplikacja1_A.B\Images\osoba2.png��6%   $
 None=�5�      $
 Left=�5�      .��5�   *   5�      �� 5�      $��Password��6   
�������$��12(�5�      $��Trebuchet MS)�5�      $��Center=�5�      $��	15,15,0,0q�5�      8   2Aplikacja1_A.B.CustomeControls.BindablePasswordBox  5�      $��28��5�   '   $��	15,5,18,0q�5�   '      Password 5�   6   �� *
Password+$ TwoWay=�$ PropertyChanged=�5�      �� 5�      $��Email��6   
�������$��12(�5�      $��Trebuchet MS)�5�      $��Center=�5�      $��	15,15,0,0q�5�      �� 5�      -   5        $ email��5�      $��13(�5�      $��Medium"�5�      $��Trebuchet MS)�5�      
�������
 �����
�������$��0,0,0,1q�5�      $��28��5�      $	��216��5�      $��Center=�5�      $��0,5,0,0q�5�      $��20,0,0,0q�5�      ��5�      �� *Email+$ PropertyChanged=�.��5�      ��5�      �� 5�      $c ]C:\Users\bubul\Documents\School\4_semestr\PIV\Aplikacja_1_AB\Aplikacja1_A.B\Images\osoba2.png��6%   $
 None=�5�      $
 Left=�5�      .��5�   *   5�      �� 5�      
���  ��$��12(�5�      $��Trebuchet MS)�5�      $��Center=�5�      $
��Wrap=�5�      $��	15,5,18,0q�5�      ��5�      �� *ErrorMessage+5�      �� 5�      -   5         ��Name$ registryButton��5�      $��SIGN UP��5�   	   
���   �$��16(�5�   	   $��
Montserrat)�5�   	    � Cursor$
 Hand��5�   	   $��0,10,0,0q�5�   	   ��5�   	   �� *SignUpCommand+��5�      �� 5�       �� 
TargetType" ��6   .�5�      ��  �� Property � �� �� Value
 �����67    �� Triggers 5�      P� 5�       P� Property �@J�IsMouseOver P� Value$
 True��6=   . �5�   "   ��  � �� �#b9b7c56?   5�      5�      ��5�      �� 5�       �� 
TargetType" ��6&   .R�5�      �� $	��150��6!   $��30��5�   !   $ 15��5�   !   #��z��5�   !   ._�5�      �� $��Center=�6/   $��Center=�5�   '   5�      5�      5�      5�      5�      �� 5�   
   $��1��6   $��0��5�   	   ._�5�      �� -   5        $ 	minimsign��5�      
�������$��-��5�      
���   �$��16(�5�      $��
Montserrat)�5      $
 Hand��5     ��5     �� 5     " ��6&   .R�5     �� $��18��6!   $��18��5     $ 9��5     #��z��5	     ._�5
     �� $��Center=�6/   $��Center=�5  '   5     5     5     5     �� 5  
   $��3��6   $��0��5     ._�5     �� -   5        $ 	closesign��5     
�������$��x��5     
���   �$��16(�5     $��
Montserrat)�5     $
 Hand��5     ��5     �� 5      " ��6&   .R�5!     �� $��18��6!   $��18��5"  	   $ 9��5#  	   #��z��5$  	   ._�5%     �� $��Center=�6/   $��Center=�5&     5'     5(     5+     5-     5.     5/     