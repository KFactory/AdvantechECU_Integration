   M S B A M L   `   `   `  ����L  HECU1251HttpClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:ECU1251HttpClientECU1251HttpClient  5   	   "    ECU1251HttpClient.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:ECU1251HttpClient     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ ECU1251 Client��5	   	   $	��525��6    $	��650��6-   .��5
      � .+�5   
   �� $��IP Address : ��6   $
��Left=�6(   $��	10,23,0,0q�6C   $	��Top=�6V   �� 5   
   -   5         ��Name$ TB_IpAddress��5      $��
90,23,10,0q�6(    �� TextWrapping$
 Wrap=�6<   $	��Top=�6P   $��26��6h   $��4,3,0,0q�6t   �� 5   
   $��Password : ��6   $
��Left=�6&   $��	10,54,0,0q�6A   $	��Top=�6T   �� 5   
   -   5        $ TB_Password��5      $��00000000��6'   $��
90,54,10,0q�67   $
 Wrap=�6K   $	��Top=�6_   $��26��6w   $��4,3,0,0q�6�   �� 5   
   $��Token : ��6   $
��Left=�6#   $��
10,153,0,0q�6>   $	��Top=�6R   �� 5   
   -   5        $ TB_Token��5      $��90,153,10,0q�6$   $
 Wrap=�69   $	��Top=�6M   $��26��6e   $��4,3,0,0q�6q   �� 5   
   -   5         ��Name$ 	BTN_Login��5      $��Login��6$   $��
90,99,10,0q�64   $	��Top=�6H   $��30��6`   6l   �� 5   
   $��Endpoint : ��6   $
��Left=�6&   $��
10,184,0,0q�6A   $	��Top=�6U   �� 5   
   -   5        $ TB_Endpoint��5      $��/data/tags/��6'   $��90,184,10,0q�6:   $
 Wrap=�6O   $	��Top=�6c   $��26��6{   $��4,3,0,0q�6�   �� 5   
   $��Response : ��6   $
��Left=�6&   $��
10,279,0,0q�6A   $	��Top=�6U   �� 5   
   -   5        $ TB_Response��5      $��90,279,10,25q�6'   $
 Wrap=�6=   " �� VerticalScrollBarVisibility$ Visible=�6Q   $��4,3,0,0q�6w   �� 5   
   -   5        $ BTN_SendGetRequest��5      $��Send 'Get' Request��6-   $��90,225,10,0q�6J   $	��Top=�6_   $��30��6w   6�   5      5       