   M S B A M L   `   `   `  ����D  @QuanLiKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QuanLiKho	QuanLiKho  5   	   ;"clr-namespace:QuanLiKho.ControlBarQuanLiKho.ControlBar  5   	       QuanLiKho.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:QuanLiKho     5   	   1uc"clr-namespace:QuanLiKho.ControlBar     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ 
MainWindow��5   	   $	��700��6   $	��800��6)   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      '   !QuanLiKho.ControlBar.ControlBarUC  6    5      � 5    
   $��1��6    5!      �� 5"      $
��auto �6    60   �� 5#      6"   .+�5&      � $��0��6   .+�5'      � $��Stretch=�6   $��Stretch=�65   
������  � 	Resources 5(       �� 
TargetType	 �� Property
 �� Value��%�   '��       �� 5)      " ��6    .�5*      �� 	 � ��$
 2 4 2 4q�67   6I   �� 5+      	 � ��

 �����6O   5,      5-       � ColumnDefinitions 5.      �� 5/      6-   �� 50      6-   �� 51      6-   �� 52      6-   �� 53      6-   �� 54      6-   �� 55      6-   .+�57      �� $��0��6>    � ToolTip$ Nhập kho��6N   ��6   �� *InputCommand+.��58      �  59      �� 5:   "   62   �� 5;   "   62   .+�5=      � $��0��6#   .+�5>   "   �� $��Nhập kho��6,   $��Center=�6=   6\   5?      � 5@      $��1��6#   .+�5A   "   '  !MaterialDesignThemes.Wpf.PackIcon  $��Center=�6:   $��24��6W   $��24��6b      Kind$  ArrowDownBoldCircleOutline=�6o   5B      5C      5D      �� 5E      $��1��6?   $ Xuất kho��6O   ��6   �� *OutputCommand+.��5F      �  5G      �� 5H   "   62   �� 5I   "   62   .+�5K      � $��0��6#   .+�5L   "   �� $��Xuất kho��6,   $��Center=�6=   6\   5M      � 5N      $��1��6#   .+�5O   "     $��24��6:   $��24��6E   $��Center=�6R   $ ArrowUpBoldCircleOutline=�6p   5P      5Q      5R      �� 5S      $��2��6?   $ 
Vật tư��6O   ��6   �� *ObjectCommand+.��5T      �  5U      �� 5V   "   62   �� 5W   "   62   .+�5Y      � $��0��6#   .+�5Z   "   �� $��
Vật tư��6,   $��Center=�6;   6Z   5[      � 5\      $��1��6#   .+�5]   "     $��24��6:   $��24��6E   $��Center=�6R   $	 Dns=�6p   5^      5_      5`      �� 5a      $��3��6   $ Đơn vị đo��6M   ��6-   �� *UnitCommand+.��5b      �  5c      �� 5d   "   62   �� 5e   "   62   .+�5g      � $��0��6#   .+�5h   "   �� $��Đơn vị đo��6,   $��Center=�6>   6]   5i      � 5j      $��1��6#   .+�5k   "     $��24��6:   $��24��6E   $��Center=�6R   $ 	Altimeter=�6p   5l      5m      5n      �� 5o      $��4��6   $ Nhà cung cấp��6P   ��6-   �� *SuplierCommand+.��5p      �  5q      �� 5r   "   62   �� 5s   "   62   .+�5u      � $��0��6#   .+�5v   "   �� $��Nhà cung cấp��6,   $��Center=�6B   6a   5w      � 5x      $��1��6#   .+�5y   "     $��24��6:   $��24��6E   $��Center=�6R   $ Factory=�6p   5z      5{      5|      �� 5}      $��5��6   $ Khách hàng��6Q   ��6-   �� *CustomerCommand+.��5~      �  5      �� 5�   "   62   �� 5�   "   62   .+�5�      � $��0��6#   .+�5�   "   �� $��Khách hàng��6,   $��Center=�6@   6_   5�      � 5�      $��1��6#   .+�5�   "     $��24��6:   $��24��6E   $��Center=�6R   $ HumanHandsup=�6p   5�      5�      5�      �� 5�      $��6��6   $ Người dùng��6M   ��6-   �� *UserCommand+.��5�      �  5�      �� 5�   "   62   �� 5�   "   62   .+�5�      � $��0��6#   .+�5�   "   �� $��Người dùng��6,   $��Center=�6@   6_   5�      � 5�      $��1��6#   .+�5�   "     $��24��6:   $��24��6E   $��Center=�6R   $ AccountMultiple=�6p   5�      5�      5�      5�      5�      � 5�      $��1��6    5�      �� 5�      $
��auto �6$   64   �� 5�      6&   .+�5�      � $��0��6   .+�5�      #  MaterialDesignThemes.Wpf.Card  $��5q�6*   .��5�      � $��0��6    5�      �� 5�   "   $
��auto �60   6@   �� 5�   "   $
��auto �60   6@   �� 5�   "   62   .+�5�      � $��0��6#   $��5q�60    5�   "   �� 5�   &   $
��auto �67   6F   �� 5�   &   $
��auto �67   6F   �� 5�   &   $
��auto �67   6F   .+�5�   "   � $��0��6'   .+�5�   &   (  "System.Windows.Controls.DatePicker  $��Center=�61   $
��Left=�6L   $	��100��6g   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Ngày bắt đầu��6s    ( $MaterialDesignFloatingHintDatePicker#��[ 6�   5�   #   � 5�   "   $��1��6'   .+�5�   &     $��Center=�61   $
��Left=�6L   $	��100��6g   $ Ngày kết thúc��6s   #��[ 6�   5�   #   � 5�   "   $��2��6'   .+�5�   &   ��   MaterialDesignRaisedButton#��[ 6-   $��5q�6a   $	��100��5�      $��Lọc��5�      $/ )Resource name: MaterialDesignRaisedButton��5�      6S   5�   #   5�      � 5�      $��1��6#   .+�5�   "   �� $��5q�6,   69   5�      � 5�      $��2��6#    5�   "   �� 5�   &   $��* �67   6D   �� 5�   &   $��* �67   6C   �� 5�   &   $��* �67   6C   .+�5�   "   � $��0��6'   .+�5�   &     ���#03a9f4$��5q�6P   $	��225��6[    ! PrimaryHueDarkForegroundBrush#���  5�   *   $��0q�5�   *   $	��200��66   .��5�   *   �  5�   .   �� 5�   2   $
��Auto �6@   �� 5�   2   $
��Auto �6@   �� 5�   2   $
��Auto �6@   .+�5�   .   �� $��0��68   $��
16 16 16 4q�6E   $��Lượng nhập��5�   (    ) %MaterialDesignHeadlineMediumTextBlock#��[ 5�   (   5�   /   �� 5�   .   $��1��68      MaterialDesignLightSeparator#��[ 6E   �� 5�   .   $��2��68   $��16,0,0,8q�6E   $��Bottom=�6W   $
��Left=�5�   (   $��998568��5�   (   #��[ 5�   (   5�   /   '  !MaterialDesignThemes.Wpf.PopupBox  5�   .   $��Right=�6F   $��2 0 2 0q�6b      PopupContent. 5�   2   �� 5�   3   5�   /   5�   +   5�   '   5�   #   � 5�   "   $��1��6'   .+�5�   &     ���#03a9f4$��5q�6O   $	��225��6Z   #���  5�   *   $��0q�5�   *   $	��200��66   .��5�   *   �  5�   .   �� 5�   2   $
��Auto �6@   �� 5�   2   $
��Auto �6@   �� 5�   2   $
��Auto �6@   .+�5�   .   �� $��0��68   $��
16 16 16 4q�6E   $��Lượng xuất��5�   (   #��[ 5�   (   5�   /   �� 5�   .   $��1��68   #��[ 6E   �� 5�   .   $��2��68   $��	16 0 16 8q�6E   $��Center=�6X   $
��Left=�5�   (   $��998568��5�   (   #��[ 5�   (   5�   /     5�   .   $��Right=�6F   $��2 0 2 0q�6b   . 5�   2   �� 5   3   5  /   5  +   5  '   5  #   � 5  "   $��2��6'   .+�5  &     ���#03a9f4$��5q�6P   $	��225��6[   #���  5  *   $��0q�5	  *   $	��200��66   .��5
  *   �  5  .   �� 5  2   $
��Auto �6@   �� 5  2   $
��Auto �6@   �� 5  2   $
��Auto �6@   .+�5  .   �� $��0��68   $��
16 16 16 4q�6E   $��
Tồn kho��5  (   #��[ 5  (   5  /   �� 5  .   $��1��68   #��[ 6E   �� 5  .   $��2��68   $��	16 0 16 8q�6E   $��Center=�6X   $
��Left=�5  (   $��998568��5  (   #��[ 5  (   5  /     5  .   $��Right=�6F   $��2 0 2 0q�6b   . 5  2   �� 5  3   5  /   5   +   5!  '   5"  #   5#     5$     5%     5&       5+     $��1��6&   $��5q�63   $��Stretch=�6>   .��5,     �  5-     �� 5.     $
��auto �6,   6<   �� 5/     $
��auto �6,   6<   �� 50     6.   .+�53     � $��0��6   $��5q�6,    54     �� 55  "   $
��auto �63   6B   �� 56  "   $
��auto �63   6B   �� 57  "   $
��auto �63   6B   .+�5:     � $��0��6#   .+�5;  "     $��Center=�6-   $
��Left=�6H   $	��100��6c   $ Ngày bắt đầu��6o   #��[ 6�   5<     � 5=     $��1��6#   .+�5>  "     $��Center=�6-   $
��Left=�6H   $	��100��6c   $ Ngày kết thúc��6o   #��[ 6�   5?     � 5@     $��2��6#   .+�5A  "   �� #��[ 6)   $��5q�6]   $	��100��5B  -   $��Lọc��5C  -   $/ )Resource name: MaterialDesignRaisedButton��5D  -    J� RenderTransformOrigin$ 0.965,0.664&�6a   6�   5E     5F     � 5H     $��1��6   .+�5I     �� 6*   5J     � 5K     $��2��6    5L     �� 5M  "   $
��139* �63   �� 5N  "   $
��651* �63   .+�5P     �� $��2��6J   ��6'   �� *
TonKhoList+ �� View 5Q  "   �� 5R  &   .P�5S  *   �� $	��STT��69    �� DisplayMemberBinding 6F   �� *STT+6m   �� 5T  *   $��Tên vật tư��69    6N   �� *Object.DisplayName+6�   �� 5U  *   $��Số lượng tồn��69    6R   �� *Count+6{   5V  '   5X     5Y     5Z     5[     5^     5_     5a     5b     