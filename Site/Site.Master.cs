using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class SiteMaster : MasterPage
    {
        protected string rootSite;
        protected void Page_Load(object sender, EventArgs e)
        {
            rootSite = ConfigurationManager.AppSettings["ROOT_SITE"];

            linkHome.NavigateUrl = rootSite;
            linkHomePage.NavigateUrl = rootSite;
            linkValidDoc.NavigateUrl = rootSite + "Pagina/ValidaDoc.aspx";
            linkIntro.NavigateUrl = rootSite + "Cursos/Starter/JavaScript/Introducao.aspx";
            linkMod1.NavigateUrl = rootSite + "Cursos/Starter/JavaScript/Modulo1.aspx";
            linkMod2.NavigateUrl = rootSite + "Cursos/Starter/JavaScript/Modulo2.aspx";
        }
    }
}