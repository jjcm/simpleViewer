   M S B A M L   `   `   `  ����a  ]PresentationFramework.Aero, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35gJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.AeroMicrosoft.Windows.Themes  5      N JCustomChromeLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullV>clr-namespace:CustomChromeLibrary;assembly=CustomChromeLibraryCustomChromeLibrary 5       simpleViewerWpf    simpleViewerWpf.MainWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      oMicrosoft_Windows_ThemesJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero     5      R NMicrosoft.Windows.Shell, Version=3.0.1.0, Culture=neutral, PublicKeyToken=nullKshell?http://schemas.microsoft.com/winfx/2006/xaml/presentation/shell  5      Hccl>clr-namespace:CustomChromeLibrary;assembly=CustomChromeLibrary  5      -   5        ,  &CustomChromeLibrary.CustomChromeWindow   Name$  Window��5       � Title$ 
MainWindow��5
      $	��390��5      $	��266��6   $
��Left=�6   $	��Top=�66   ���	#FF232323 � Icon$) #pack://siteoforigin:,,,/appIcon.png��6e   *  $Microsoft.Windows.Shell.WindowChrome   WindowChrome 5        5   
      ResizeBorderThickness$ 0q�5         CaptionHeight$ 43Q�5         CornerRadius$ 0,0,0,0��5         GlassFrameThickness$ 0q�5      5       � 	Resources 5         windowControlButton	 �� 
TargetType
 �� Property �� Value �� 
TargetType �Name'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value ��Name J� Opacity ��Name �� Triggers P� Property P� Value  windowControlButtonMaximize   windowControlButton_Minimize  FadeInElements   EasingFunction/  )System.Windows.Media.Animation.CircleEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode  FadeOutElements��%  &	        &	 �    &	 �	    &	     &	 �    �� 5   
   "	 ��6,   .�5      �� 
 � �� 5      �� 5      " ��6&   .R�5      � $ transparentClose��6    5        5   "   CommonStates��. 5   &     
Normal��. 5   *   �� .��5   .   U� $ (UIElement.Opacity)�6L   $
 icon��6|   .\�5    2     $ 0��6G   $	 0.5Q�6S   5!   /   5"   +   5#   '     5$   &   	MouseOver��. 5%   *   �� .��5&   .   U� $ (UIElement.Opacity)�6L   $ bg��6|   .\�5'   2     $ 0��6G   $
 0.45Q�6S   5(   /   5)   +   5*   '     5+   &   Pressed��. 5,   *   �� .��5-   .   U� $ (UIElement.Opacity)�6L   $ bg��6|   .\�5.   2     $ 0��6G   $	 0.5Q�6S   5/   /   50   +   51   '     52   &   Disabled��62   53   #   .+�55      �� $ bg��6(   
���   �$	 0.3Q�6S   ��6A   Z� 6S   �� 56      $
 icon��6$   $��0,7,0,0q�62   $'��!pack://siteoforigin:,,,/close.png��6C   $
��Fill=�6n   $��Center=�6}   $	��Top=�6�   $��8��6�   $��7��6�   57       58      P� 59       �@J�	IsFocused . 6;   P� 5:       �@��IsDefaulted . 6=   P� 5;       �@J�IsMouseOver . 6=   P� 5<       � �� . 6;   P� 5=       � {� .  6;   5?      5A      5B      �� 5C   
   "	 ��64   .�5D      �� 
 � �� 5E      �� 5F      " ��6   .R�5G      � $ transparentClose��6    5H   	     5I   
   CommonStates��. 5J        
Normal��. 5K      �� .��5L      U� $ (UIElement.Opacity)�6+   $
 icon��6[   .\�5M        $ 0��6#   $	 0.5Q�6/   5N      5O      5P        5Q      	MouseOver��. 5R      �� .��5S      U� $ (UIElement.Opacity)�6+   $ bg��6[   .\�5T        $ 0��6#   $
 0.45Q�6/   5U      5V      5W        5X      Pressed��. 5Y      �� .��5Z      U� $ (UIElement.Opacity)�6+   $ bg��6[   .\�5[        $ 0��6#   $	 0.5Q�6/   5\      5]      5^        5_      Disabled��6   5`      .+�5b   	   �� $ bg��6   
���   �$
 0.15Q�6>   ��6,   Z� 6>   �� 5c      $
 icon��6$   $��0q�62   $%��pack://siteoforigin:,,,/max.png��6=   $
��Fill=�6f   $��Center=�6u   $��Center=�6�   $��10��6�   $��8��6�   5d   	    5e      P� 5f   	    �@J�	IsFocused . 6&   P� 5g   	    �@��IsDefaulted . 6(   P� 5h   	    �@J�IsMouseOver . 6(   P� 5i   	    � �� . 6&   P� 5j   	    � {� .  6&   5l      5n      5o      �� 5p      "	 ��6/   .�5q      �� 
 � �� 5r      �� 5s      " ��6   .R�5t      � $ transparentClose��6    5u   	     5v   
   CommonStates��. 5w        
Normal��. 5x      �� .��5y      U� $ (UIElement.Opacity)�6+   $
 icon��6[   .\�5z        $ 0��6#   $	 0.5Q�6/   5{      U� 5|      $ (UIElement.Opacity)�6+   $ bg��6[   .\�5}        $ 0��6#   $
 0.15Q�6/   5~      5      5�        5�      	MouseOver��. 5�      �� .��5�      U� $ (UIElement.Opacity)�6+   $ bg��6[   .\�5�        $ 0��6#   $
 0.45Q�6/   5�      5�      5�        5�      Pressed��. 5�      �� .��5�      U� $ (UIElement.Opacity)�6+   $ bg��6[   .\�5�        $ 0��6#   $	 0.5Q�6/   5�      5�      5�        5�      Disabled��6   5�      .+�5�   	   �� $ bg��6   
���   �$	 0.3Q�6>   ��6,   Z� 6>   �� 5�      $
 icon��6$   $��0q�62   $%��pack://siteoforigin:,,,/min.png��6=   $
��Fill=�6f   $��Center=�6u   $��Center=�6�   $��10��6�   $��8��6�   5�   	    5�      P� 5�   	    �@J�	IsFocused . 6&   P� 5�   	    �@��IsDefaulted . 6(   P� 5�   	    �@J�IsMouseOver . 6(   P� 5�   	    � �� . 6&   P� 5�   	    � {� .  6&   5�      5�      5�      �� 5�      .��5�      U� $ (UIElement.Opacity)�6#   $ WindowControls��6S   .\�5�        $ 0:0:0.3��6   $ 1Q�6-    5�        5�      $ EaseOut=�6   5�      5�      5�      �� 5�      .��5�      U� $ (UIElement.Opacity)�6#   $ WindowControls��6S   .\�5�        $ 0:0:1��6   $ 1Q�6+     5�      $ 0:0:1.3��6   $ 0Q�6-    5�        5�      $ EaseOut=�6   5�      5�      5�      5�       � Triggers 5�      :� 5�       :� RoutedEvent$ FrameworkElement.Loaded��6   .[�5�      �� #��[ 6   5�      .��5�      � .+�5�      � -   5        $ 
LayoutRoot��5�   	   $	��266��6   $	��390��6*   $
��Left=�66   $	��Top=�6Q   .+�5�      �� -   5        $ ImageContainer��5�      $5��/pack://siteoforigin:,,,/simplePhotoViewerBG.png��6,   $
��Fill=�6e   �� 5�      -   5        $ resizeControl��5�      ���	#01000000$��0,23,0,0q�67   6a   �� 5�      -   5         ��Name$ 
outputArea��5�      $��asdfasdfasdfasdfasdfasdf��6,   $��32(�6L   
�������$��0,331.5,0,0q�6m   $	��100��6�   $��Bottom=�6�   $y�Hidden=�6�   5�      �� 5�      -   5          ��Name$  WindowControls��5�      ! �� Orientation$! 
Horizontal=�6'   $��Right=�6@   $	��Top=�6\   .+�5�      (	  "CustomChromeLibrary.MinimizeButton	  
���   �#���  6+   (
  "CustomChromeLibrary.MaximizeButton
  5�      ���	#FD000000#���  6/   %  CustomChromeLibrary.CloseButton  5�      
������ #���   6.   5�      5�      5�      