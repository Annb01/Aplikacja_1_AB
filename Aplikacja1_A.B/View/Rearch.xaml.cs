using System.Net.Http;
using System.Windows;
using System.Windows.Documents;
using System.Windows.Input;
using Aplikacja1_A.B.Model;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace Aplikacja1_A.B.View
{
    public partial class Rearch : Window
    {
        private readonly string userEmail;
        private readonly UserModel currentUser;
        public Rearch(string email, UserModel user)
        {
            InitializeComponent();
            userEmail = email;
            currentUser = user;
        }

        public Rearch(string email, UserModel user, string initialQuery) : this(email, user)
        {
            searchBox.Text = initialQuery; 
            FetchAndDisplayResults(initialQuery);
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

        private async void Search_Click(object sender, RoutedEventArgs e)
        {
            string query = searchBox.Text;
            resultText.Inlines.Clear(); 
            resultText.Inlines.Add(new Run("Searching data...")); 

            string response = await FetchDataFromAPI(query);
            DisplayResults(response);
        }

        private async Task<string> FetchDataFromAPI(string query)
        {
            string baseUrl = "https://api.unpaywall.org/v2/search";
            using (HttpClient client = new HttpClient())
            {
                string url = $"{baseUrl}?query={Uri.EscapeDataString(query)}&email={Uri.EscapeDataString(userEmail)}";
                HttpResponseMessage response = await client.GetAsync(url);
                response.EnsureSuccessStatusCode();
                return await response.Content.ReadAsStringAsync();
            }
        }
        private async void FetchAndDisplayResults(string query)
        {
            string jsonResponse = await FetchDataFromAPI(query);
            DisplayResults(jsonResponse);
        }

        private void DisplayResults(string jsonResponse)
        {
            try
            {
                var jsonObject = JObject.Parse(jsonResponse);
                var results = jsonObject["results"];
                resultText.Inlines.Clear();

                if (results == null || !results.Any())
                {
                    resultText.Inlines.Add(new Run("No results found."));
                    return;
                }


                foreach (var result in results)
            {
                string title = (string)result.SelectToken("response.title") ?? "Title not available";
                string doiUrl = (string)result.SelectToken("response.doi_url") ?? "DOI not available";
                string journalName = (string)result.SelectToken("response.journal_name") ?? "Journal name not available";
                string publisher = (string)result.SelectToken("response.publisher") ?? "Publisher not available";
                string publishedDate = (string)result.SelectToken("response.published_date") ?? "Published date not available";
                string year = (string)result.SelectToken("response.year")?.ToString() ?? "Year not available";
                string pdfUrl = (string)result.SelectToken("response.best_oa_location.url_for_pdf") ?? null;

                resultText.Inlines.Add(new Run($"Title: {title}\n"));
                resultText.Inlines.Add(new Run($"Journal: {journalName}\n"));
                resultText.Inlines.Add(new Run($"Publisher: {publisher}\n"));
                resultText.Inlines.Add(new Run($"Published Date: {publishedDate}\n"));
                resultText.Inlines.Add(new Run($"Year: {year}\n"));

                if (!string.IsNullOrEmpty(pdfUrl) && Uri.IsWellFormedUriString(pdfUrl, UriKind.Absolute))
                {
                    Hyperlink pdfLink = new Hyperlink(new Run("PDF"))
                    {
                        NavigateUri = new Uri(pdfUrl)
                    };
                    pdfLink.RequestNavigate += Hyperlink_RequestNavigate;
                    resultText.Inlines.Add(new Run("PDF: "));
                    resultText.Inlines.Add(pdfLink);
                    resultText.Inlines.Add(new Run("\n"));
                }
                else
                {
                    resultText.Inlines.Add(new Run("No valid PDF URL available\n"));
                }

                    if (!string.IsNullOrEmpty(doiUrl) && Uri.IsWellFormedUriString(doiUrl, UriKind.Absolute))
                    {
                        Hyperlink doilink = new Hyperlink(new Run("DOI"))
                        {
                            NavigateUri = new Uri(doiUrl)
                        };
                        doilink.RequestNavigate += Hyperlink_RequestNavigate;
                        resultText.Inlines.Add(new Run("DOI: "));
                        resultText.Inlines.Add(doilink);
                        resultText.Inlines.Add(new Run("\n"));
                    }
                    else
                    {
                        resultText.Inlines.Add(new Run("No valid DOI URL available\n"));
                    }

                    resultText.Inlines.Add(new Run("\n")); 
            }
            }
            catch (JsonReaderException jex)
            {
                resultText.Inlines.Add(new Run("Error parsing results: " + jex.Message));
            }
            catch (Exception ex)
            {
                resultText.Inlines.Add(new Run("An error occurred: " + ex.Message));
            }
        }

        private void Hyperlink_RequestNavigate(object sender, System.Windows.Navigation.RequestNavigateEventArgs e)
        {
            System.Diagnostics.Process.Start(new System.Diagnostics.ProcessStartInfo
            {
                FileName = e.Uri.AbsoluteUri,
                UseShellExecute = true
            });
            e.Handled = true;
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
