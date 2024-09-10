using System.Windows;
using System.Windows.Input;


namespace Aplikacja1_A.B.View
{
    public partial class Rejestracja : Window
    {
        public Rejestracja()
        {
            InitializeComponent();
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

    }
}
