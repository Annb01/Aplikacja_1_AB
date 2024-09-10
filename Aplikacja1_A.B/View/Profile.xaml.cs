using Aplikacja1_A.B.Model;
using System.Windows;
using System.Windows.Input;


namespace Aplikacja1_A.B.View
{

    public partial class Profile : Window
    {
        private string UserName;
        private string Email;
        private string Name;
        private string LastName;
        private UserModel currentUser;

        public Profile(string name, string email, string lastName, string userName, UserModel user)
        {
            InitializeComponent();
            UserName = userName;
            Email = email;
            LastName = lastName;
            Name = name;
            currentUser = user;
            Display();
        }
        private void Display()
        {
            userName.Text = UserName; 
            email.Text = Email;
            name.Text = Name;
            lastName.Text = LastName;
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void minim_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void close_Click(object sender, RoutedEventArgs e)
        {
            LoginView loginView = new LoginView();

            this.Hide();

            loginView.Show();

            this.Close();
        }
        private void LogOut_Click(object sender, RoutedEventArgs e)
        {
            LoginView loginView = new LoginView();

            this.Hide();

            loginView.Show();

            this.Close();
        }

        private void BackToSearch_Click(object sender, RoutedEventArgs e)
        {
            MainView mainWindow = new MainView(currentUser.Email, currentUser);

            mainWindow.Show();
            this.Hide();
        }

        //private void IfDelete_Click(object sender, RoutedEventArgs e)
        //{
        //    Window1 window = new Window1(currentUser.Id);
        //    window.Show();
        //}
    }
}
