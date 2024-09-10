using Aplikacja1_A.B.Model;
using System.Windows;
using System.Windows.Input;


namespace Aplikacja1_A.B.View;

public partial class Window1 : Window
{
    private string Id;
    private UserModel currentUser;

    public Window1(string id, UserModel user)
    {
        InitializeComponent();
        Id = id;
        currentUser = user;

    }

    private void Back_Click(object sender, RoutedEventArgs e)
    {
        this.Close();
    }

    private void minim_Click(object sender, RoutedEventArgs e)
    {
        WindowState = WindowState.Minimized;
    }

    private void close_Click(object sender, RoutedEventArgs e)
    {

        this.Close();
    }

    private void Window_MouseDown(object sender, MouseButtonEventArgs e)
    {
        if (e.LeftButton == MouseButtonState.Pressed)
        {
            DragMove();
        }
    }

    private void DeleteButton_Click(object sender, RoutedEventArgs e)
    {
       
    }

}
