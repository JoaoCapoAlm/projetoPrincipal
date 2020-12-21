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
        /// <summary>
        /// Envia o texto e o número de deslocamento escritos pelo usuário para
        /// o método CifraCesar e apresenta o novo texto após a cifra
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void txtOriginal_Click(object sender, EventArgs e)
        {
            try
            {
                string text = txtOriginal.Text;
                int number = Convert.ToInt32(txtNumber.Text);
                txtCriptografia.Text = Cryptography.CifraCesar(text, number);
                txtCriptografia.CssClass = "";
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