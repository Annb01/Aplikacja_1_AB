   M S B A M L   `   `   `  ����I  EAplikacja1_A.B, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Aplikacja1_A.B.ViewAplikacja1_A.B.View  5   	   C&clr-namespace:Aplikacja1_A.B.ViewModelAplikacja1_A.B.ViewModel  5   	   O,clr-namespace:Aplikacja1_A.B.CustomeControlsAplikacja1_A.B.CustomeControls  5   	   #    Aplikacja1_A.B.View.LoginView   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:Aplikacja1_A.B.View     5   	   <	viewModel&clr-namespace:Aplikacja1_A.B.ViewModel     5   	   Hcustomecontrols,clr-namespace:Aplikacja1_A.B.CustomeControls     5   	   -   5          � Title$  	LoginView��5
   	   $	��550��6   $	��700��6(    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   	    � DataContext 5      -   'Aplikacja1_A.B.ViewModel.LoginViewModel  5   
    � 	Resources 5         BooleanToVisibility��%   &	        �� 5   
   6'   5      y�5      �� 5   
    �� Path$ IsViewVisible�6    �� Mode$ TwoWay=�6'   	 �� 	Converter#	 [  65   .��5      � 
 � ColumnDefinitions
 5   
   �� 5       $	��300 �6   �� 5!      $	��346 �6   �� 5"      $��25 �6   �� 5#      $��25 �6   �� 5$      $��* �6    � RowDefinitions 5&   
   �� 5'      $��30 �6   �� 5(      $��30 �6   �� 5)      $	��460 �6   �� 5*      $��* �6   .+�5-   
   ��  �� CornerRadius$ 	10,0,0,10��6   $��0��5.      ���#141414$��1��50      $��3��51      �� 54   
   $ 	0,10,10,0��6   $��1��55      $��0��56      $��3��57      $��4��58      ��5:      �� 5;       �� ImageSource$c ]C:\Users\bubul\Documents\School\4_semestr\PIV\Aplikacja_1_AB\Aplikacja1_A.B\Images\tło 2.png��6   5>      �� 5@   
   $��0��6   $��1��5A      ._�5B      �� $��LOG IN��6   
�������$��10(�5D      $��
Montserrat)�5E      $��Center=�5F      $��10,0,0,0q�5G      5I      �� 5K   
   $��2��6   $��0��5L      ._�5M      �� -   5         ��Name$ minim��5M      ���#141414$��-��5O      
�������$��16(�5Q      $��
Montserrat)�5R       � Cursor$
 Hand��5S      ��5V      �� 5W       �� 
TargetType" ��6&   .R�5X      �� $��18��6!   $��18��5Y   !   $ 9��5Z   !   #��z��5[   !   ._�5\      �� $��Center=�6/   $��Center=�5]   /   5^      5_      5b      5d      �� 5f   
   $��3��6   $��0��5g   	   ._�5h      �� -   5        $ close��5h      ���#141414$��x��5j      
�������$��16(�5l      $��
Montserrat)�5m      $
 Hand��5n      ��5q      �� 5r      " ��6&   .R�5s      �� $��18��6!   $��18��5t      $ 9��5u      #��z��5v      ._�5w      �� $��Center=�6/   $��Center=�5x      5y      5z      5}      5      �� 5�   
   $��0��6   $��2��5�      ._�5�      �� $	��250��6    �� Orientation$ Vertical=�5�      $��0,35,0,0q�5�      .+�5�      �� $e��_C:\Users\bubul\Documents\School\4_semestr\PIV\Aplikacja_1_AB\Aplikacja1_A.B\Images\Zasób 2.png��6   $��50��5�      �� 5�      $��BrainyBrowse��6   
�������$��20(�5�      $�� Trebuchet MS)�5�      $��Center=�5�      $��Center=�5�      $��0,10,0,0q�5�      �� 5�      $��Welcome to BrainyBrowse��6   
�������$��15(�5�      $�� Trebuchet MS)�5�      $��Center=�5�      $��Center=�5�      $��0,30,0,0q�5�      �� 5�      $��	User name��6   
�������$��12(�5�      $��Trebuchet MS)�5�      $��Center=�5�      $��	15,30,0,0q�5�      �� 5�      -   5         ��Name$
 name��5�      $��13(�5�      $��Medium"�5�      $��Trebuchet MS)�5�      
������� �� 
CaretBrush
 �����
�������$��0,0,0,1q�5�      $��28��5�      $	��216��5�      $��Center=�5�      $��0,5,0,0q�5�      $��20,0,0,0q�5�       �� 	MaxLength$ 50��5�      ��5�      �� *
Username+ �� UpdateSourceTrigger$ PropertyChanged=�.��5�   )   ��5�      �� 5�      $c ]C:\Users\bubul\Documents\School\4_semestr\PIV\Aplikacja_1_AB\Aplikacja1_A.B\Images\osoba2.png��6%    j� Stretch$
 None=�5�   %    j� 
AlignmentX$
 Left=�5�   %   .��5�   *   5�      �� 5�      $��Password��6   
�������$��12(�5�      $��Trebuchet MS)�5�      $��Center=�5�      $��	15,15,0,0q�5�      8   2Aplikacja1_A.B.CustomeControls.BindablePasswordBox  5�      $��28��5�   6   $��	15,5,18,0q�5�   6      Password 5�   6   �� *
Password+$ TwoWay=�$ PropertyChanged=�5�      �� 5�      
���  ��$��12(�5�      $��Trebuchet MS)�5�      $��Center=�5�      $
��Wrap=�5�      $��	15,5,18,0q�5�      ��5�      �� *ErrorMessage+5�      �� 5�      -   5        $ login_click��5�      $��LOG IN��5�      
���   �$��16(�5�      $��
Montserrat)�5�      $
 Hand��5�      $��0,15,0,0q�5�      ��5�      �� *LoginCommand+��5�      �� 5�       �� 
TargetType" ��6    .�5�      ��  �� Property � �� �� Value
 �����6;    �� Triggers 5�      P� 5�   "    P� Property �@J�IsMouseOver P� Value$
 True��6A   . �5�   &   ��  � �� �#b9b7c56C   5�   #   5�      ��5�      �� 5�      " ��6*   .R�5�      �� $	��150��6%   $��30��5�      $ 15��5�      #��z��5�      ._�5�   "   �� $��Center=�63   $��Center=�5�   #   5�      5�      5�      �� 5�      $!��___________________________��6   
�������$��12(�5�      $��Trebuchet MS)�5�      $��Center=�5�      $��Center=�5�      $
��Wrap=�5�      $��	15,2,18,0q�5�      �� 5�      -   5        $ registry_click��5�      $��SIGN UP��5�      
���   �$��16(�5�      $��
Montserrat)�5�      $
 Hand��5�      $��0,15,0,0q�5�      ��5�      �� 5      " ��6    .�5     ��  � ��
 �����6;    5     P� 5  "    �@J�IsMouseOver$
 True��6A   . �5  &   ��  � �� �#b9b7c56C   5  #   5     ��5
     �� 5     " ��6*   .R�5     �� $	��150��6%   $��30��5  %   $ 15��5  %   #��z��5  %   ._�5  "   �� $��Center=�63   $��Center=�5     5     5     5     5     5     5      59     