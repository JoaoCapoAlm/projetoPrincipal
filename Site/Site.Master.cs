using System;
using System.Configuration;
using System.Web.UI;

namespace Site
{
    public partial class SiteMaster : MasterPage
    {
        protected string rootSite;
        protected void Page_Load(object sender, EventArgs e)
        {
            rootSite = ConfigurationManager.AppSettings["ROOT_SITE"];

            sc.Scripts.Add(new ScriptReference { Path = "/Scripts/main.js" });

            linkHome.NavigateUrl = rootSite;
            linkHomePage.NavigateUrl = rootSite;
            linkValidDoc.NavigateUrl = rootSite + "Pagina/ValidaDoc.aspx";
            linkIntro.NavigateUrl = rootSite + "Cursos/Starter/JavaScript/Introducao.aspx";
            linkMod1.NavigateUrl = rootSite + "Cursos/Starter/JavaScript/Modulo1.aspx";
            linkMod2.NavigateUrl = rootSite + "Cursos/Starter/JavaScript/Modulo2.aspx";
            linkMod4.NavigateUrl = rootSite + "Cursos/Starter/JavaScript/Modulo4.aspx";
            linkCifraCesar.NavigateUrl = rootSite + "Pagina/CifraCesar.aspx";
            linkConversor.NavigateUrl = rootSite + "Pagina/Conversor.aspx";

            // TODO: Conversor de temperatura.
            // TODO: Conversor de base númerica.
            // TODO: Alistamento militar.
            // TODO: Se é ano bisexo. DateTime.IsLeapYear(year)
            // TODO: Qual número é maior.
            // TODO: IMC.
            // TODO: Sequência de Fibonacci.
            // TODO: Contador de vogais.
        }
    }
}