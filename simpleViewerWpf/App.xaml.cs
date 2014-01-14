using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Windows;

namespace simpleViewerWpf
{
	/// <summary>
	/// Interaction logic for App.xaml
	/// </summary>
	public partial class App : Application
	{
        protected override void OnStartup(StartupEventArgs e)
        {
            if (e.Args != null && e.Args.Length > 0)
            {
                this.Properties["FileOpened"] = e.Args[0];
            }

            base.OnStartup(e);
        }
	}
}