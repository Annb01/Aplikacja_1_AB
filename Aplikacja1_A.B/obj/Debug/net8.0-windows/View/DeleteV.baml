   M S B A M L   `   `   `  ����I  EAplikacja1_A.B, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Aplikacja1_A.B.ViewAplikacja1_A.B.View  5   	   O,clr-namespace:Aplikacja1_A.B.CustomeControlsAplikacja1_A.B.CustomeControls  5   	   C&clr-namespace:Aplikacja1_A.B.ViewModelAplikacja1_A.B.ViewModel  5   	   !    Aplikacja1_A.B.View.Window1   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:Aplikacja1_A.B.View     5   	   Hcustomecontrols,clr-namespace:Aplikacja1_A.B.CustomeControls     5   	   <	viewModel&clr-namespace:Aplikacja1_A.B.ViewModel     5   	   -   5          � Title$  Rejestracja��5
   	   $	��200��5   	   $	��300��5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   	   .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��25 �6   �� 5      $��25 �6    � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��* �6   .+�5!   
   ��  �� CornerRadius$ 10,10,10,10��6   $��0��5"      $��3��5#      ���#141414$��0��5%      $��2��5&      �� 5(   
   $��0��6   ._�5)      �� $��SIGN UP��6   
�������$��10(�5+      $��
Montserrat)�5,      $��Center=�5-      $��10,0,0,0q�5.      5/      �� 51   
   $��1��6   $��0��52      ._�53      �� -   5         ��Name$ 	minimsign��53      
�������$��-��55      
���   �$��16(�57      $��
Montserrat)�58      	 � Cursor$
	 Hand��59      ��5<      �� 5=      
 �� 
TargetType"
 ��6&   .R�5>      �� $��18��6!   $��18��5?   !   $ 9��5@   !   #��z��5A   !   ._�5B      �� $��Center=�6/   $��Center=�5C   /   5D      5E      5H      5J      �� 5L   
   $��3��6   $��0��5M      ._�5N      �� -   5        $ 	closesign��5N      
�������$��x��5P      
���   �$��16(�5R      $��
Montserrat)�5S      $
	 Hand��5T      ��5W      �� 5X      "
 ��6&   .R�5Y      �� $��18��6!   $��18��5Z   !   $ 9��5[   !   #��z��5\   !   ._�5]      �� $��Center=�6/   $��Center=�5^   /   5_      5`      5c      5e      �� 5h   
   $��2��6   $��3��5i      $3��-Are you sure you want to delete your account?��5j      
�������$��12(�5l      $�� Trebuchet MS)�5m      $��Center=�5n      $��Center=�5o      $��	0,-40,0,0q�5p      �� 5r   
   $��1��6   $��3��5s       �� Orientation$ 
Horizontal=�5t      $��Center=�5v      .+�5z      �� -   5        $ 
back_click��5z      $
��BACK��5{      
���   �$��16(�5}      $��
Montserrat)�5~      $
	 Hand��5      $��	0,80,30,0q�5�      ��5�      �� 5�       �� 
TargetType" ��6   .�5�      ��  �� Property � �� �� Value
 �����5�   !    �� Triggers 5�      P� 5�       P� Property �@J�IsMouseOver P� Value$
 True��5�   &   . �5�   "   ��  � �� �#b9b7c55�   )   5�      5�      ��5�      �� 5�      "
 ��6&   .R�5�      �� $	��100��6!   $��30��5�   !   $ 15��5�   !   #��z��5�   !   ._�5�      �� $��Center=�6/   $��Center=�5�   /   5�      5�      5�      �� 5�      -   5        $ login_click��5�      $��DELETE��5�      
���   �$��16(�5�   	   $��
Montserrat)�5�   	   $
	 Hand��5�   	   $��0,80,0,0q�5�      ��5�      �� 5�   
   " ��6   .�5�      ��  � ��
 �  ��5�       5�      P� 5�       �@J�IsMouseOver$
 True��5�      . �5�      ��  � �� �#B313125�      5�      5�      ��5�      �� 5�   
   "
 ��6   .R�5�      �� $	��100��6   $��30��5�      $ 15��5�      #��z��5�      ._�5�      �� $��Center=�6#   $��Center=�5�   #   5�      5�      5�      5�      5�      5�      