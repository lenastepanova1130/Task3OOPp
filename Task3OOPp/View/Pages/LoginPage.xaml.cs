using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
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
using Task3OOPp.Core;
using Task3OOPp.Model;

namespace Task3OOPp.View.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();

        }
        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {
            if(string.IsNullOrEmpty(TbLogin.Text) ||
               string.IsNullOrWhiteSpace(PbPassword.Password))
            {
                MessageBox.Show("Ошибка ввода данных",
                    "Системное сообщение",
                    MessageBoxButton.OK,
                    MessageBoxImage.Error);
            }
            else
            {
                try
                {
                    User userModel = CoreConnection.DB.User.FirstOrDefault(u=>
                                                     u.Login == TbLogin.Text &&
                                                     u.Password == PbPassword.Password);
                    if(userModel != null)
                    {
                        MessageBox.Show($"{userModel.Login}-выполнен успешный вход!",
                            "Системное сообщение",
                            MessageBoxButton.OK,
                            MessageBoxImage.Error);
                    }
                    else
                    {
                        MessageBox.Show("Ошибка входа",
                            "Системное сообщение",
                            MessageBoxButton.OK,
                            MessageBoxImage.Error);
                    }
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(),
                            "Системное сообщение",
                            MessageBoxButton.OK,
                            MessageBoxImage.Error);
                }
            }
        }

        private void BtnRegistration_Click(object sender, RoutedEventArgs e)
        {
            CoreConnection.CoreFrame.Navigate(new RePage()); 
        }

       
    }
}
