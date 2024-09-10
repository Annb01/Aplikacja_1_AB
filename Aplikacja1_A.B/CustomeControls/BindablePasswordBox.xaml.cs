using System.Windows;
using System.Windows.Controls;


namespace Aplikacja1_A.B.CustomeControls;

public partial class BindablePasswordBox : UserControl
{

   
    public static readonly DependencyProperty PasswordProperty = DependencyProperty.Register("Password", typeof(string), typeof(BindablePasswordBox));

    public string Password
    {
        get { return (string)GetValue(PasswordProperty); }
        set { SetValue(PasswordProperty, value); }
    }

    public BindablePasswordBox()
    {
        InitializeComponent();
        password.PasswordChanged += OnPasswordChanged;
    }

    private void OnPasswordChanged(object sender, RoutedEventArgs e)
    {
        Password = password.Password;   //edytowanie w trakcie pisania
    }
}
