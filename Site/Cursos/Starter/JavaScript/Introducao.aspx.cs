using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site.Cursos.Starter.JavaScript
{
    public partial class Introducao : MainPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnDesafio1.NavigateUrl = rootSite + "Cursos/Starter/JavaScript/Modulo1.aspx";
            btnDesafio2.NavigateUrl = rootSite + "Cursos/Starter/JavaScript/Modulo2.aspx";
            btnDesafio4.NavigateUrl = rootSite + "Cursos/Starter/JavaScript/Modulo4.aspx";
        }
    }
}