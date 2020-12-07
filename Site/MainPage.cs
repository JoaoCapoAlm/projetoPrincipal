using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace Site
{
    public class MainPage : System.Web.UI.Page
    {
        protected string rootSite = ConfigurationManager.AppSettings["ROOT_SITE"];
    }
}