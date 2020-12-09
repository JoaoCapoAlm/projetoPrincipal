using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Site.Pagina
{
    public partial class CifraCesar : MainPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtOriginal_Click(object sender, EventArgs e)
        {
            try
            {
                string text = txtOriginal.Text;
                int number = Convert.ToInt32(txtNumber.Text);
                txtCriptografia.Text = Cryptography.CifraCesar(text, number);
                txtCriptografia.CssClass = "";
            }
            catch (FormatException)
            {
                txtCriptografia.Text = "Formato do número incorreto";
                txtCriptografia.CssClass = "error";
            }
            catch (Exception ex)
            {
                txtCriptografia.Text = ex.Message;
                txtCriptografia.CssClass = "error";
                throw ex;
            }
        }
    }
}