﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;

namespace OSAE.UI.Controls
{
    /// <summary>
    /// Interaction logic for StateImage.xaml
    /// </summary>
    public partial class StateImage : UserControl
    {
        OSAE osae = new OSAE("GUI");
        public OSAEObject screenObject { get; set; }
        public Point Location;
        public DateTime LastUpdated;

        public string StateMatch;
        public string CurState;

        private string ObjectName;
        private string ObjectStateTime;
        
        
        public StateImage(OSAEObject sObject)
        {
            InitializeComponent();

            screenObject = sObject;
            ObjectName = screenObject.Property("Object Name").Value;
            CurState = osae.GetObjectStateValue(ObjectName).Value;

            Image.Tag = ObjectName;
            Image.MouseLeftButtonUp += new MouseButtonEventHandler(State_Image_MouseLeftButtonUp);

            //ObjectStateTime = stateObject.LastUpd;

            string imgPath;
            foreach (ObjectProperty p in screenObject.Properties)
            {
                if (p.Value.ToLower() == CurState.ToLower())
                {
                    StateMatch = p.Name.Substring(0, p.Name.LastIndexOf(' '));
                }
            }

            imgPath = osae.APIpath + screenObject.Property(StateMatch + " Image").Value;

            if (File.Exists(imgPath))
            {
                byte[] byteArray = File.ReadAllBytes(imgPath);
                var imageStream = new MemoryStream(byteArray);
                var bitmapImage = new BitmapImage();

                bitmapImage.BeginInit();
                bitmapImage.StreamSource = imageStream;
                bitmapImage.EndInit();
                Image.Source = bitmapImage;
                Image.Visibility = System.Windows.Visibility.Visible;
            }
            else
            {
                Image.Source = null;
                Image.Visibility = System.Windows.Visibility.Hidden;
            }
        }

        public void Update()
        {
            CurState = osae.GetObjectStateValue(ObjectName).Value;

            foreach (ObjectProperty p in screenObject.Properties)
            {
                if (p.Value.ToLower() == CurState.ToLower())
                {
                    StateMatch = p.Name.Substring(0, p.Name.LastIndexOf(' '));
                }
            }
            
            Location.X = Double.Parse(screenObject.Property(StateMatch + " X").Value);
            Location.Y = Double.Parse(screenObject.Property(StateMatch + " Y").Value);

            String imagePath = screenObject.Property(StateMatch + " Image").Value;
            if (File.Exists(osae.APIpath + imagePath))
            {
                imagePath = osae.APIpath + imagePath;
            }

            if (File.Exists(imagePath))
            {
                
                byte[] byteArray = File.ReadAllBytes(imagePath);
                var imageStream = new MemoryStream(byteArray);


                this.Dispatcher.Invoke((Action)(() =>
                {
                    var bitmapImage = new BitmapImage();
                    bitmapImage.BeginInit();
                    bitmapImage.StreamSource = imageStream;
                    bitmapImage.EndInit();
                    Image.Source = bitmapImage;
                }));
            }
        }

        private void State_Image_MouseLeftButtonUp(object sender, MouseEventArgs e)
        {
            bool iResults = false;

            if (CurState == "ON")
            {
                osae.MethodQueueAdd(ObjectName, "OFF", "", "");
                osae.ObjectStateSet(ObjectName, "OFF");
            }
            else
            {
                osae.MethodQueueAdd(ObjectName, "ON", "", "");
                osae.ObjectStateSet(ObjectName, "ON");
            }
            
        }

        
    }
}
