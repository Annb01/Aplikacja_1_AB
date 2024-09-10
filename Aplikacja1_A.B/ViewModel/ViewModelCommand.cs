using System.Windows.Input;

//klasa która wykonuje komendy

namespace Aplikacja1_A.B.ViewModel
{
    public class ViewModelCommand : ICommand //interfejs obsługujący polecenia wykonywane w interfejsie człowieka
    {
        private readonly Action<object?> _executeAction;  // Obsługa null dla parametru
        private readonly Predicate<object?> _canExecuteAction;  // Obsługa null dla parametru

        // Konstruktor dla komendy bez warunków 'CanExecute'
        public ViewModelCommand(Action<object?> executeAction)
        {
            _executeAction = executeAction;
            _canExecuteAction = null;
        }

        // Konstruktor dla komendy z warunkami 'CanExecute'
        public ViewModelCommand(Action<object?> executeAction, Predicate<object?> canExecuteAction)
        {
            _executeAction = executeAction;
            _canExecuteAction = canExecuteAction;
        }

        public event EventHandler? CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        // Metoda określająca, czy komenda może być wykonana
        public bool CanExecute(object? parameter)
        {
            return _canExecuteAction == null || _canExecuteAction(parameter);
        }

        // Metoda wykonująca logikę komendy
        public void Execute(object? parameter)
        {
            _executeAction(parameter);
        }

    }
}
