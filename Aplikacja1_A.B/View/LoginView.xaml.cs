using System.Windows;
using System.Windows.Input;
using Aplikacja1_A.B.ViewModel;

namespace Aplikacja1_A.B.View
{
    public partial class LoginView : Window
    {
        public LoginView()
        {
            InitializeComponent();
            var viewModel = new LoginViewModel();
            DataContext = viewModel;
            viewModel.LoginViewWindow = this;

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
            Dispatcher.BeginInvoke(new Action(() =>
            {
                Application.Current.Shutdown();
            }), System.Windows.Threading.DispatcherPriority.Background);
        }  

        private void Registry_Click(object sender, RoutedEventArgs e)
        {
            Rejestracja rejestracjaWindow = new Rejestracja();
    
            this.Hide(); 
           

        }

    }
}
