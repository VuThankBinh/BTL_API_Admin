using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class User
    {
        [Required]
        public string username { get; set; }
        [Required]
        public string password { get; set; }
    }
    public class Authencation
    {
        public string username {  get; set; }
        public string password { get; set; }
        public string token { get; set; }

        public Authencation()
        {
        }

        public Authencation(string username, string password, string token)
        {
            this.username = username;
            this.password = password;
            this.token = token;
        }
    }
    public class AppSettings
    {
        public string Secret { get; set; }

    }
}
