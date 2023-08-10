using System;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Windows;

namespace ECU1251HttpClient
{
    public partial class MainWindow : Window
    {

        public MainWindow()
        {
            InitializeComponent();
        }

        private async void BTN_Login_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                // Create an insecure HttpClientHandler that bypasses hostname verification and trust self signed certificate
                HttpClientHandler handler = new();
                handler.ServerCertificateCustomValidationCallback = (sender, certificate, chain, sslPolicyErrors) => true;

                using (var client = new HttpClient(handler))
                {
                    // Add headers   
                    client.DefaultRequestHeaders.Add("Referer", "https://" + TB_IpAddress.Text);

                    StringContent content = new("{\"password\":\"" + TB_Password.Text + "\"}", Encoding.UTF8, "application/json");
                    
                    var responseTask = client.PutAsync(new Uri("https://" + TB_IpAddress.Text + "/sys/log_in"), content);
                    responseTask.Wait();

                    var result = responseTask.Result;
                    
                    if (result.IsSuccessStatusCode)
                    {
                        string tokenString = await result.Content.ReadAsStringAsync();

                        TB_Token.Text = JsonSerializer.Deserialize<TokenData>(tokenString)!.session_id;
                    }
                    else
                    throw new HttpRequestException($"Error : {result.ReasonPhrase}, Status code : {result.StatusCode}");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message + Environment.NewLine + " StackTrace : " + ex.StackTrace, "Error");
            }
        }

        private async void BTN_SendGetRequest_Click(object sender, RoutedEventArgs e)
        {
            var endpoint = new Uri("https://" + TB_IpAddress.Text + TB_Endpoint.Text);

            try
            {
                if (string.IsNullOrEmpty(TB_Token.Text))
                    throw new Exception("Token is null, Please log in before trying to access tags");

                // Create an insecure HttpClientHandler that bypasses hostname verification and trust self signed certificate
                HttpClientHandler handler = new();
                handler.ServerCertificateCustomValidationCallback = (sender, certificate, chain, sslPolicyErrors) => true;

                using (var client = new HttpClient(handler))
                {
                    // Add headers   
                    client.DefaultRequestHeaders.Add("Referer", "https://" + TB_IpAddress.Text);
                    client.DefaultRequestHeaders.Add("Cookie", "SID=" + TB_Token.Text);

                    var responseTask = client.GetAsync(endpoint);
                    responseTask.Wait();

                    var result = responseTask.Result;
                    if (result.IsSuccessStatusCode)
                    {
                        var rawData = await result.Content.ReadAsStringAsync();

                       TB_Response.Text = rawData;
                    }
                    else
                    throw new HttpRequestException($"Error : {result.ReasonPhrase}, Status code : {result.StatusCode}");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message + Environment.NewLine + " StackTrace : " + ex.StackTrace, "Error");
            }
        }


    }
}
