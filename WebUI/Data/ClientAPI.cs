using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;

namespace WebUI.Data
{
    public class ClientAPI
    {
        //https://www.youtube.com/watch?v=bgsROO8kDh0&t=917s
        public HttpClient Initial()
        {
            var client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost:62999/");
            return client;
        }
    }
}
