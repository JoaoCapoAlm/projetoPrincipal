using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class _Default : MainPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnCifraCesar.NavigateUrl = rootSite + "Pagina/CifraCesar.aspx";
            btnCursoJS.NavigateUrl = rootSite + "Cursos/Starter/JavaScript/Introducao.aspx";
            btnValidaDoc.NavigateUrl = rootSite + "Pagina/ValidaDoc.aspx";
        }
    }
}