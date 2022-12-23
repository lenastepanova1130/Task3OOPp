using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Task3OOPp.View.Pages;
using Task3OOPp.Core;

namespace Task3OOPp
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            CoreConnection.CoreFrame = MainFrame;
            CoreConnection.DB = new Model.Task3BDEntities1();
            MainFrame.Navigate(new LoginPage());


        }

        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
