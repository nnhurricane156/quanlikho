   M S B A M L   `   `   `  ����D  @QuanLiKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QuanLiKho	QuanLiKho  5   	   ;"clr-namespace:QuanLiKho.ControlBarQuanLiKho.ControlBar  5   
       QuanLiKho.OutWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:QuanLiKho     5   	   1uc"clr-namespace:QuanLiKho.ControlBar     5   
   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   
      MaterialDesignBody#���   5
   
   $��Regular"�5   
   $��13(�5   
   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     MaterialDesignPaper#���  5   
     MaterialDesignFont#���  5   
    � 
ResizeMode$ NoResize=�5   
    � WindowStyle$
 None=�5   
    � WindowStartupLocation$ CenterScreen=�5   
    � Title$ 	OutWindow��5   	   $	��450��6   $	��800��6(   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      '   !QuanLiKho.ControlBar.ControlBarUC  
 � Tag 6   �� *Title+ �� ElementName$ window��6J   5      � 5    
   $��1��6    5!      �� 5"      $
��auto �6    60   �� 5#      $
��auto �6    60   �� 5$      6"   .+�5(      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5)      � $��0 0 0 10q�6   .+�5*      �� $��5 5 15 5q�6f   )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Tên vật tư��6x    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��6   �� *ObjectDisplayName+
 �� UpdateSourceTrigger$
 PropertyChanged=�6�   (  "System.Windows.Controls.DatePicker  5+      $��Center=�6!   $	��100��6_   $��	5 5 15 -7q�6k   $	 Ngày xuất��6~    ( $MaterialDesignFloatingHintDatePicker#��[ 6�      SelectedDate 6<   �� *	DateOnput+6�   �� 5,      $��5 5 15 5q�6Z   $	 Số lượng��6l   #��[ 6�   ��6   �� *Count+$
 PropertyChanged=�6�   �� 5-      $��5 5 15 5q�6`   $	 Giá xuất��6r   #��[ 6�   ��6   �� *PriceOutput+$
 PropertyChanged=�6�   �� 5.      $��5 5 15 5q�6   $	 Khách hàng��6�    �� 
IsEditable$
 True��6�    & "MaterialDesignFloatingHintComboBox#��[ 6�   ��61   �� *
Customer+ �� SelectedItem 6R   �� *SelectedCustomer+ �� Mode$ TwoWay=�$
 PropertyChanged=�6,  �� 50      $��5 5 15 5q�6[   $	 Trạng thái xuất��6m   #��[ 6�   ��6   �� *Status+$
 PropertyChanged=�6�   51      52        54      $��1��6"   $��5q�6/   .��55      � .+�56      �� $��Thêm��6<   $��5q�6K   $	��100��6V   ��6   �� *
AddCommand+6d   �� 57      $��Sửa��6=   $��5q�6L   $	��100��6W   ��6   �� *EditCommand+6e   �� 58      $��Xóa��6?   $��5q�6N   $	��100��6Y   ��6   �� *DeleteCommand+6g   59      5:        5<      $��2��6"   $��5q�6/   $��Stretch=�6:   .��5=      �� $
��Auto=�6   .��5>      �� ��6   �� *List+ 6<   �� *SelectedItem+$ OneWayToSource=� �� View 5?      �� 5@      .P�5A   "   �� $��
Vật tư��61    �� DisplayMemberBinding 6B   �� *Object.DisplayName+6x   �� 5B   "   $��Ngày xuất��61    6F   �� *Output.DateOnput+6z   �� 5C   "   $��Số lượng��61    6E   �� *Count+6n   �� 5D   "   $��Giá xuất��61    6E   �� *InputInfo.OutputPrice+6~   �� 5E   "   $��Khách hàng��61    6G   �� *Customer.DisplayName+6   �� 5F   "   $��Trạng thái xuất��61    6M   �� *Status+6w   5G      5I      5J      5K      5L      5N      5O      