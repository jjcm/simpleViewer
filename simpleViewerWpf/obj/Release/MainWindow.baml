   M S B A M L   `   `   `  ���� a  ]PresentationFramework.Aero, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35gJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.AeroMicrosoft.Windows.Themes  N JCustomChromeLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullV>clr-namespace:CustomChromeLibrary;assembly=CustomChromeLibraryCustomChromeLibrary  simpleViewerWpf    simpleViewerWpf.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     oMicrosoft_Windows_ThemesJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero     R NMicrosoft.Windows.Shell, Version=3.0.1.0, Culture=neutral, PublicKeyToken=nullKshell?http://schemas.microsoft.com/winfx/2006/xaml/presentation/shell  Hccl>clr-namespace:CustomChromeLibrary;assembly=CustomChromeLibrary  -   ,  &CustomChromeLibrary.CustomChromeWindow   Name$  Window�� � Title$ 
MainWindow��$	��390��$	��266��$
��Left=�$	��Top=����	#FF232323 � Icon$) #pack://siteoforigin:,,,/appIcon.png��*  $Microsoft.Windows.Shell.WindowChrome   WindowChrome      ResizeBorderThickness$ 0q�   CaptionHeight$ 43Q�   CornerRadius$ 0,0,0,0��   GlassFrameThickness$ 0q� � 	Resources    windowControlButton	 �� 
TargetType
 �� Property �� Value �� 
TargetType �Name'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value ��Name J� Opacity ��Name �� Triggers P� Property P� Value  windowControlButtonMaximize   windowControlButton_Minimize  FadeInElements   EasingFunction/  )System.Windows.Media.Animation.CircleEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode  FadeOutElements��%�	  &	        &	 �    &	 �    &	 �    &	 �    �� "	 ��.��� 
 � �� �� " ��.R�� $ transparentClose��   CommonStates��.   
Normal��. �� .��U� $ (UIElement.Opacity)�$
 icon��.\�  $ 0��$	 0.5Q�  	MouseOver��. �� .��U� $ (UIElement.Opacity)�$ bg��.\�  $ 0��$
 0.45Q�  Pressed��. �� .��U� $ (UIElement.Opacity)�$ bg��.\�  $ 0��$	 0.5Q�  Disabled��.+��� $ bg��
���   �$	 0.3Q���Z� �� $
 icon��$��0,7,0,0q�$'��!pack://siteoforigin:,,,/close.png��$
��Fill=�$��Center=�$	��Top=�$��8��$��7�� P�  �@J�	IsFocused . P�  �@��IsDefaulted . P�  �@J�IsMouseOver . P�  � �� . P�  � {� .  �� "	 ��.��� 
 � �� �� " ��.R�� $ transparentClose��   CommonStates��.   
Normal��. �� .��U� $ (UIElement.Opacity)�$
 icon��.\�  $ 0��$	 0.5Q�  	MouseOver��. �� .��U� $ (UIElement.Opacity)�$ bg��.\�  $ 0��$
 0.45Q�  Pressed��. �� .��U� $ (UIElement.Opacity)�$ bg��.\�  $ 0��$	 0.5Q�  Disabled��.+��� $ bg��
���   �$
 0.15Q���Z� �� $
 icon��$��0q�$%��pack://siteoforigin:,,,/max.png��$
��Fill=�$��Center=�$��Center=�$��10��$��8�� P�  �@J�	IsFocused . P�  �@��IsDefaulted . P�  �@J�IsMouseOver . P�  � �� . P�  � {� .  �� "	 ��.��� 
 � �� �� " ��.R�� $ transparentClose��   CommonStates��.   
Normal��. �� .��U� $ (UIElement.Opacity)�$
 icon��.\�  $ 0��$	 0.5Q�U� $ (UIElement.Opacity)�$ bg��.\�  $ 0��$
 0.15Q�  	MouseOver��. �� .��U� $ (UIElement.Opacity)�$ bg��.\�  $ 0��$
 0.45Q�  Pressed��. �� .��U� $ (UIElement.Opacity)�$ bg��.\�  $ 0��$	 0.5Q�  Disabled��.+��� $ bg��
���   �$	 0.3Q���Z� �� $
 icon��$��0q�$%��pack://siteoforigin:,,,/min.png��$
��Fill=�$��Center=�$��Center=�$��10��$��8�� P�  �@J�	IsFocused . P�  �@��IsDefaulted . P�  �@J�IsMouseOver . P�  � �� . P�  � {� .  �� .��U� $ (UIElement.Opacity)�$ WindowControls��.\�  $ 0:0:0.3��$ 1Q�   $ EaseOut=��� .��U� $ (UIElement.Opacity)�$ WindowControls��.\�  $ 0:0:1��$ 1Q�  $ 0:0:1.3��$ 0Q�   $ EaseOut=� � Triggers :�  :� RoutedEvent$ FrameworkElement.Loaded��.[��� #��[ .��� .+�� -   $ 
LayoutRoot��$	��266��$	��390��$
��Left=�$	��Top=�.+��� -   $ ImageContainer��$5��/pack://siteoforigin:,,,/simplePhotoViewerBG.png��$
��Fill=��� -   $ resizeControl�����	#01000000$��0,23,0,0q��� -    ��Name$ 
outputArea��$��asdfasdfasdfasdfasdfasdf��$��32(�
�������$��0,331.5,0,0q�$	��100��$��Bottom=�$y�Hidden=��� -     ��Name$  WindowControls��! �� Orientation$! 
Horizontal=�$��Right=�$	��Top=�.+�(	  "CustomChromeLibrary.MinimizeButton	  
���   �#���  (
  "CustomChromeLibrary.MaximizeButton
  ���	#FD000000#���  %  CustomChromeLibrary.CloseButton  
������ #���   