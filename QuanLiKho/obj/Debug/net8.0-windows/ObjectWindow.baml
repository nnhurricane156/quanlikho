   M S B A M L   `   `   `  ����D  @QuanLiKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QuanLiKho	QuanLiKho  5   	   ;"clr-namespace:QuanLiKho.ControlBarQuanLiKho.ControlBar  5   	       QuanLiKho.ObjectWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:QuanLiKho     5   	   1uc"clr-namespace:QuanLiKho.ControlBar     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ ObjectWindow��5   	   $	��450��6   $	��800��6+   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      '   !QuanLiKho.ControlBar.ControlBarUC  
 � Tag 6   �� *Title+ �� ElementName$ window��6J   5      � 5    
   $��1��6    5!      �� 5"      $
��auto �6    60   �� 5#      $
��auto �6    60   �� 5$      6"   .+�5(      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5)      � $��0 0 0 10q�6   .+�5*      �� $��5 5 15 5q�6`   )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Tên vật tư��6r    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��6   �� *DisplayName+
 �� UpdateSourceTrigger$
 PropertyChanged=�6�   �� 5+      $��5 5 15 5q�6    �� DisplayMemberPath$ DisplayName��61   $	 Đơn vị đo��6�    �� 
IsEditable$
 True��6�    & "MaterialDesignFloatingHintComboBox#��[ 6  ��6Q   �� *Unit+ �� SelectedItem 6n   �� *SelectedUnit+ �� Mode$ TwoWay=�$
 PropertyChanged=�6B  �� 5,      $��5 5 15 5q�6   $ DisplayName��62   $	 Nhà cung cấp��6�   $
 True��6�   #��[ 6  ��6R   �� *	Suplier+ 6r   �� *SelectedSuplier+$ TwoWay=�$
 PropertyChanged=�6M  5-      5.        50      $��1��6"   $��5q�6/   .��51      � .+�52      �� -   5        $��Thêm��52   <   $��5q�6K   $	��100��6V   ��6   �� *
AddCommand+6y   �� 53      -   5        $��Sửa��53   =   $��5q�6L   $	��100��6W   ��6   �� *EditCommand+6|   �� 54      -   5        $��Xóa��54   ?   $��5q�6N   $	��100��6Y   ��6   �� *DeleteCommand+6~   55      56        58      $��2��6"   $��5q�6/   $��Stretch=�6:   .��59      �� $
��Auto=�6   .��5:      �� ��6   �� *List+ 6<   �� *SelectedItem+$ OneWayToSource=� �� View 5;      �� 5<      .P�5=   "   �� $��Id��61    �� DisplayMemberBinding 6=   �� *
ObjectId+6i   �� 5>   "   $��Tên vật tư��61    6F   �� *
ObjectName+6t   �� 5?   "   $��Đơn vị đo��61    6E   �� *Unit.UnitName+6v   �� 5@   "   $��Nhà cung cấp��61    6I   �� *Supplier.SupplierName+6�   5A      5C      5D      5E      5F      5H      5I      