using System.Windows;
using System.Windows.Input;
using Aplikacja1_A.B.Model;

namespace Aplikacja1_A.B.View
{
    public partial class MainView : Window
    {
        private string userEmail;
        private UserModel currentUser;
        public MainView(string email, UserModel user)
        {
            InitializeComponent();
            userEmail = email;
            currentUser = user;
        }
        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void Search_Click(object sender, RoutedEventArgs e)
        {
            string query = searchBox.Text;
            Rearch rearchWindow = new Rearch(userEmail, currentUser, query);
            rearchWindow.Show(); 
            this.Hide();         
        }


        
        private void minim_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void close_Click(object sender, RoutedEventArgs e)
        {
            Dispatcher.BeginInvoke(new Action(() =>
            {
                Application.Current.Shutdown();
            }), System.Windows.Threading.DispatcherPriority.Background);
        }


        private void Profile_CLick(object sender, RoutedEventArgs e)
        {
            Profile profileWindow = new Profile(currentUser.Name, currentUser.Email, currentUser.LastName, currentUser.UserName, currentUser);


            profileWindow.Show();
            this.Hide();
        }

        private void LogOut_Click(object sender, RoutedEventArgs e)
        {
            LoginView loginView = new LoginView();

            this.Hide();

            loginView.Show();

            this.Close();
        }
    }
}
