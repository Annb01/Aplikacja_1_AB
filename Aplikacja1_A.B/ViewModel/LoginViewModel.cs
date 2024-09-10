using Aplikacja1_A.B.Model;
using System.Windows.Input;
using Aplikacja1_A.B.Repositories;
using System.Windows;
using Aplikacja1_A.B.View;
using System.Net;


namespace Aplikacja1_A.B.ViewModel
{
    public class LoginViewModel : ViewModelBase 
    {
      
        private string _username;
        private string _password;
        private string _errorMessage;  
        private bool _isViewVisible = true;
        private bool _validData;
        public bool ValidData
        {
            get => _validData;
            set
            {
                _validData = value;
                OnPropertyChanged(nameof(ValidData));
            }
        }

        private IUserRepository userRepository;

        public string Username 
        {
            get => _username;
            set 
            {
                 _username = value;
                 OnPropertyChanged(nameof(Username)); 
            }
        }
        public string Password
        {
            get => _password;
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }
        public string ErrorMessage
        {
            get => _errorMessage;
            set
            {
                _errorMessage = value;
                OnPropertyChanged(nameof(ErrorMessage));
            }
        }
        public bool IsViewVisible
        {
            get => _isViewVisible;
            set
            {
                _isViewVisible = value;
                OnPropertyChanged(nameof(IsViewVisible));
            }
        }
        private string _email;
        public string Email
        {
            get => _email;
            set
            {
                _email = value;
                OnPropertyChanged(nameof(Email));
            }
        }

        private string _name;
        public string Name
        {
            get => _name;
            set
            {
                _name = value;
                OnPropertyChanged(nameof(Name));
            }
        }



        private string _lastname;
        public string LastName
        {
            get => _lastname;
            set
            {
                _lastname = value;
                OnPropertyChanged(nameof(LastName));
            }
        }

        private UserModel loggedInUser;

        public UserModel LoggedInUser
        {
            get => loggedInUser;
            set
            {
                loggedInUser = value;
                OnPropertyChanged(nameof(LoggedInUser));
                Email = loggedInUser?.Email; 
            }
        }


        //commands

        public ICommand LoginCommand { get; } 
        public ICommand SignUpCommand { get; }

        //Konstruktor
        public LoginViewModel() 
        {
            userRepository = new UserRepository();
            LoginCommand = new ViewModelCommand(ExecuteLoginCommand, CanExecuteLoginCommands); 
            SignUpCommand = new ViewModelCommand(ExecuteSignUpCommand, CanExecuteSignUpCommand);


        }

        public Window LoginViewWindow { get; set; }

        private bool CanExecuteLoginCommands(object obj) 
        {
            bool validData;
            if(string.IsNullOrWhiteSpace(Username) || Username.Length<3 || Password==null || Password.Length<3)
                validData = false;
            else validData = true;
            return validData;

        }

        private void ExecuteLoginCommand(object obj)
        {
            UserModel user;
            var isValidUser = userRepository.AuthenticateUser(new NetworkCredential(Username, Password), out user);
            if (isValidUser && user != null)
            {
                LoggedInUser = user;
                Application.Current.Dispatcher.Invoke(() => {
                    var mainView = new MainView(LoggedInUser.Email, user);
                    var profileView = new Profile(LoggedInUser.Name, LoggedInUser.Email, LoggedInUser.LastName, LoggedInUser.UserName, LoggedInUser);
                    mainView.Show();
                });
                OnRequestClose();
                LoginViewWindow?.Close(); //jeśli nie jest null
            }
            else
            {
                ErrorMessage = "* Invalid username or password";
            }
        }


        private bool CanExecuteSignUpCommand(object obj)
        {

            return !string.IsNullOrWhiteSpace(Username) &&
            !string.IsNullOrWhiteSpace(Password) &&  
            !string.IsNullOrWhiteSpace(Email) &&
            Password.Length >= 3;
        }

        //public static bool IsstringEmpty(string secStr)
        //{
        //    if (secStr == null)
        //        return true;
        //    return secStr.Length == 0;
        //}

        //public static int stringLength(string secStr)
        //{
        //    if (secStr == null)
        //        return 0;
        //    return secStr.Length;
        //}


        private void ExecuteSignUpCommand(object obj)
        {
            if (userRepository.UserExists(Username))
            {
                ErrorMessage = "Username already taken. Please choose another.";
                return;
            }

          
            var newUser = new UserModel
            {
                UserName = Username,
                Email = Email,
                Password = _password,
                Name = Name,
                LastName = LastName,
            };
            userRepository.Add(newUser);
            ErrorMessage = "Registration successful! Please log in.";
        }



        //public static string stringToString(string secStr)
        //{
        //    if (secStr == null)
        //    {
        //        throw new ArgumentNullException(nameof(secStr));
        //    }

        //    IntPtr valuePtr = IntPtr.Zero;
        //    try
        //    {
        //        valuePtr = System.Runtime.InteropServices.Marshal.stringToGlobalAllocUnicode(secStr);
        //        return System.Runtime.InteropServices.Marshal.PtrToStringUni(valuePtr);
        //    }
        //    finally
        //    {
        //        System.Runtime.InteropServices.Marshal.ZeroFreeGlobalAllocUnicode(valuePtr);
        //    }
        //}


    }
}
