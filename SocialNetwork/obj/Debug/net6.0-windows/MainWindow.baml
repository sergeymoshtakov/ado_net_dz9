   M S B A M L   `   `   `  ����H  DSocialNetwork, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:SocialNetworkSocialNetwork  5   	       SocialNetwork.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:SocialNetwork     5   	     � Title$  Social Network��5   	   $	��450��6    $	��800��6-   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �  5      �� 5      $
��Auto �6    �� 5      .+�5      �� $��0��6   $��Database monitor��6!   $��Center=�6<   �� 5       �� Orientation$ Vertical=�6   $��1��60   $��0��6=   $��2��6M   .+�5      �� $ 
Horizontal=�6   $��	0 10 0 10q�66   .+�5      �� $��Пользователи��6   $
��Left=�63   �� 5      -   5         ��Name$ AddGroupButton��5   0   $��Добавить��6   $��Right=�6e   $��0 0 10 0q�6|   �� 5      -   5         ��Name$ ShowDeleted��5   <   $)��#Показать удаленных��6    d� 	IsChecked$ FalseY�6Q   $��Center=�6c   6�   5      �� 5      ��6   �� *
UserGroups+ �� View 5      �� 5       .P�5!      �� $��Id��6-    �� DisplayMemberBinding 69   �� 	 �� Path$	 Id��� 5"      $
��Name��6-    6;   �� $
	 Name��� 5#      $��Surname��6-    6>   �� $	 Surname��� 5$      $��Gender��6-    6=   �� $	 Gender��� 5%      $��Birthday��6-    6?   �� $	 Birthday�5&      
 � 	Resources
 5(       �� 
TargetType��%E   '��       �� 5)      " ��6    .�5*      -   5        5+      5,      5-      5.      5/      �� 50   
   $ Vertical=�6   $��1��51      $��0��6   $��	10 0 10 0q�6*   .+�52      �  � Orientation$ 
Horizontal=�6   .+�53      �� -   5        $ GenderButton��53   *   $��Gender��6   54      �� 55      -   5        $ 	AgeButton��55   '   $	��Age��6   56      57      �� 58      $
��True��6   $	��180��63   .��59      �� ��6   �� *Pairs+ 5:      �� 5;      .P�5<      �� $	��Key��5=       5>      �� $		 Key��� 5?      $��Value��5@       5A      �� $	 Value�5B      5D      5E      5F      5G      5H      