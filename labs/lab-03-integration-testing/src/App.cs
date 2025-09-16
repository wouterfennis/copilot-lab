using System.Net.Http;
using System.Threading.Tasks;

public class App
{
    public async Task<int> GetDataAsync()
    {
        // Simulate fetching data from an external API
        using (var client = new HttpClient())
        {
            var response = await client.GetAsync("https://api.example.com/value");
            // TODO: Add integration tests and document expected outcomes
            if (response.IsSuccessStatusCode)
            {
                // Simulate parsing response
                return 42;
            }
            return -1;
        }
    }
}
