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
using Task3OOPp.Core;
using Task3OOPp.Model;

namespace Task3OOPp.View.Pages
{
    /// <summary>
    /// Логика взаимодействия для RePage.xaml
    /// </summary>
    public partial class RePage : Page
    {
        public RePage()
        {
            InitializeComponent();
            CbRole.ItemsSource = CoreConnection.DB.Role.ToList();
        }

        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {
            CoreConnection.CoreFrame.Navigate(new LoginPage());
        }

        private void BtnRegistration_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(TbLogin.Text) ||
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
                    CoreConnection.DB.User.Add(new User()
                    {
                        Login = TbLogin.Text,
                        Password = PbPassword.Password,
                        RoleID = Convert.ToInt32(CbRole.Text)
                    });
                    CoreConnection.DB.SaveChanges();
                    MessageBox.Show("Учётная запись создана",
                        "Системное сообщение",
                        MessageBoxButton.OK,
                        MessageBoxImage.Error);
                    CoreConnection.CoreFrame.Navigate(new LoginPage());    
                }
                    
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(),
                            "Системное сообщение",
                            MessageBoxButton.OK,
                            MessageBoxImage.Error);
                }
            }
        }
    }
}
