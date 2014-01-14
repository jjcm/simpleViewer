using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Media.Animation;
using System.IO;

namespace simpleViewerWpf
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
    public partial class MainWindow : CustomChromeLibrary.CustomChromeWindow
	{
        double resizePointX;
        double resizePointY;
        double sourceImageWidth;
        double sourceImageHeight;
        double width;
        double height;
        Boolean isResizeMouseDown = false;
        Boolean initialLoad = true;

        Storyboard FadeInElements;
        Storyboard FadeOutElements;

        string[] folderImages;
        int currentImageIndexInFolder;

        int MINIMUM_WIDTH = 104; // number of px required for window controls (minimize, max, close)
        int DEFAULT_WIDTH = Math.Max(104, (int)(System.Windows.SystemParameters.PrimaryScreenWidth / 3)); // 1/3 of the screen width by default
        int DEFAULT_HEIGHT = Math.Max(1, (int)(System.Windows.SystemParameters.PrimaryScreenHeight / 1.5)); // 2/3 of the screen height by default

		public MainWindow()
		{
			this.InitializeComponent();
            this.Loaded += new RoutedEventHandler(MainWindow_Loaded);

            width = LayoutRoot.Width;
            height = LayoutRoot.Height;


            //should be done dymanically on opening a new image, but this is a prototype, we dont got time for that shit
            sourceImageHeight = 266;
            sourceImageWidth = 390;
			// Insert code required on object creation below this point.

            FadeInElements = (Storyboard)TryFindResource("FadeInElements");
            FadeOutElements = (Storyboard)TryFindResource("FadeOutElements");

            this.SizeChanged += new SizeChangedEventHandler(MainWindow_SizeChanged);
            this.MouseLeave += new MouseEventHandler(MainWindow_MouseLeave);
            this.MouseEnter += new MouseEventHandler(MainWindow_MouseEnter);
            this.KeyDown += MainWindow_KeyDown;
		}

        void MainWindow_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Left)
            {
                PreviousImage();
            }
            else if (e.Key == Key.Right)
            {
                NextImage();
            }
        }

        void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {
            if (Application.Current.Properties["FileOpened"] != null)
            {
                string fname = Application.Current.Properties["FileOpened"].ToString();
                LoadImage(fname);

                List<string> filePaths = new List<string>();

                foreach (string s in Directory.GetFiles(new FileInfo(fname).Directory.FullName))
                {
                    //because regexp is hard and I'm lazy

                    String filePath = s.ToLower();
                    if (filePath.EndsWith(".jpg") || filePath.EndsWith(".png") || filePath.EndsWith(".gif") || filePath.EndsWith(".jpeg") || filePath.EndsWith(".tiff") || filePath.EndsWith(".bmp"))
                    {
                        filePaths.Add(s);
                    }
                    folderImages = filePaths.ToArray();
                }

                folderImages = filePaths.ToArray();
                currentImageIndexInFolder = filePaths.IndexOf(fname);
                outputArea.Text = filePaths.IndexOf(fname).ToString() + " / " + filePaths.Count.ToString() + " --> " + filePaths.ToArray()[filePaths.IndexOf(fname) + 1];
            }
        }

        void LoadImage(String fname)
        {
            initialLoad = true;
            BitmapFrame OpenedImage = BitmapFrame.Create(new Uri(fname));
            sourceImageHeight = OpenedImage.PixelHeight;
            sourceImageWidth = OpenedImage.PixelWidth;
            ImageContainer.Source = OpenedImage;

            ResizeForNewImage();
            // initial load has happened
            initialLoad = false;
        }

        void NextImage()
        {
            currentImageIndexInFolder = currentImageIndexInFolder + 1;
            if (currentImageIndexInFolder >= folderImages.Length) currentImageIndexInFolder = 0;
            LoadImage(folderImages[currentImageIndexInFolder]);
        }

        void PreviousImage()
        {
            currentImageIndexInFolder = currentImageIndexInFolder - 1;
            if (currentImageIndexInFolder < 0) currentImageIndexInFolder = folderImages.Length - 1;
            LoadImage(folderImages[currentImageIndexInFolder]);
        }

        void MainWindow_MouseEnter(object sender, MouseEventArgs e)
        {
            FadeInElements.Begin();
        }

        void MainWindow_MouseLeave(object sender, MouseEventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("mouse left");
            FadeOutElements.Begin();
            
        }

        /*
         * called when an image is loaded into the program for the first time
         */
        void ResizeForNewImage()
        {
            //needs a case for images that are less than 104px width
            width = Math.Min(sourceImageWidth, DEFAULT_WIDTH);
            height = Math.Min(sourceImageHeight, DEFAULT_HEIGHT);
            int newWidth = 0;
            int newHeight = 0;
            if (width / sourceImageWidth < height / sourceImageHeight)
            {
                newWidth = (int)width;
                newHeight = (int)((double)width * sourceImageHeight / sourceImageWidth);
            }
            else
            {
                newHeight = (int)height;
                newWidth = (int)((double)height * sourceImageWidth / sourceImageHeight);
            }

            LayoutRoot.Width = newWidth;
            LayoutRoot.Height = newHeight;
            Window.Width = newWidth;
            Window.Height = newHeight;

        }

        void MainWindow_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            if (!isResizeMouseDown && !initialLoad)
            {
                width = Window.ActualWidth;
                height = Window.ActualHeight;

                int newWidth = 0;
                int newHeight = 0;
                if (width / sourceImageWidth < height / sourceImageHeight)
                {
                    newWidth = (int)width;
                    newHeight = (int)((double)width * sourceImageHeight / sourceImageWidth);
                }
                else
                {
                    newHeight = (int)height;
                    newWidth = (int)((double)height * sourceImageWidth / sourceImageHeight);
                }

                LayoutRoot.Width = newWidth;
                LayoutRoot.Height = newHeight;

                LayoutRoot.HorizontalAlignment = System.Windows.HorizontalAlignment.Center;
                LayoutRoot.VerticalAlignment = System.Windows.VerticalAlignment.Center;

                if (this.WindowState == System.Windows.WindowState.Maximized)
                {
                    WindowControls.Margin = new Thickness(0, 8, 0, 0);
                }
                else
                {
                    WindowControls.Margin = new Thickness(0, 0, 0, 0);
                }
            }
        }

		private void resizeStart(object sender, System.Windows.Input.MouseButtonEventArgs e)
		{
            LayoutRoot.HorizontalAlignment = System.Windows.HorizontalAlignment.Left;
            LayoutRoot.VerticalAlignment = System.Windows.VerticalAlignment.Top;
            isResizeMouseDown = true;
            Point p = e.GetPosition(this);
            resizePointX = p.X;
            resizePointY = p.Y;

            System.Diagnostics.Debug.WriteLine(e.GetPosition(this).X);
		}

		private void resize(object sender, System.Windows.Input.MouseEventArgs e)
		{
            if (isResizeMouseDown)
            {
                if (e.GetPosition(this).X != resizePointX || e.GetPosition(this).Y != resizePointY)
                {
                    double ratio = Math.Max(e.GetPosition(this).X / resizePointX, e.GetPosition(this).Y / resizePointY);
                    int newWidth = Math.Max((int)(ratio * width), MINIMUM_WIDTH);
                    int newHeight = (int)(Math.Max((ratio * width), MINIMUM_WIDTH) * sourceImageHeight / sourceImageWidth);
                    LayoutRoot.Width = newWidth;
                    LayoutRoot.Height = newHeight;
                    Window.Width = newWidth;
                    Window.Height = newHeight;
                    //imageContainer.Width = newWidth;
                    //imageContainer.Height = newHeight;


                }

            }
		}

		private void resizeEnd(object sender, System.Windows.Input.MouseButtonEventArgs e)
		{
            isResizeMouseDown = false;
            width = LayoutRoot.Width;
            height = LayoutRoot.Height;
            
		}

		private void moveStart(object sender, System.Windows.Input.MouseButtonEventArgs e)
		{
            DragMove();
		}

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Maximize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Maximized;
        }

        private void Minimize_Click(object sender, RoutedEventArgs e)
        {
            //this.WindowStyle = WindowStyle.SingleBorderWindow;
            this.WindowState = WindowState.Minimized;
        }

        private void ZoomToActualSize(object sender, MouseButtonEventArgs e)
        {
            LayoutRoot.Width = sourceImageWidth;
            LayoutRoot.Height = sourceImageHeight;
            Window.Width = sourceImageWidth;
            Window.Height = sourceImageHeight;
            isResizeMouseDown = false;
        }
	}
}