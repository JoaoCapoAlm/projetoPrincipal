using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Site.Validacao
{
    public partial class ValidacaoCPF : MainPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnValidCpf_Click(object sender, EventArgs e)
        {
            bool isValid = DocumentBLL.ValidDocument.IsCpf(txtCpf.Text);
            if (isValid)
            {
                lblMsgCpfValid.Text = "CPF válido!";
                lblMsgCpfValid.CssClass = string.Empty;
            }
            else
            {
                lblMsgCpfValid.Text = "CPF inválido!";
                lblMsgCpfValid.CssClass = "error";
            }
        }

        protected void btnValidCnpj_Click(object sender, EventArgs e)
        {
            bool isValid = DocumentBLL.ValidDocument.IsCnpj(txtCnpj.Text);

            if (isValid)
            {
                lblValidCnpj.Text = "CNPJ válido!";
                lblValidCnpj.CssClass = string.Empty;
            }
            else
            {
                lblValidCnpj.Text = "CNPJ inválido";
                lblValidCnpj.CssClass = "error";
            }
        }

        protected void btnValidarPis_Click(object sender, EventArgs e)
        {
            bool isValid = DocumentBLL.ValidDocument.IsPis(txtPis.Text);

            if (isValid)
            {
                lblValidPis.Text = "PIS válido!";
                lblValidPis.CssClass = string.Empty;
            }
            else
            {
                lblValidPis.Text = "PIS inválido!";
                lblValidPis.CssClass = "error";
            }
        }

        protected void btnValidarCnh_Click(object sender, EventArgs e)
        {
            bool isValid = DocumentBLL.ValidDocument.IsCnh(txtCnh.Text);

            if (isValid)
            {
                lblValidCnh.Text = "CNH válido!";
                lblValidCnh.CssClass = string.Empty;
            }
            else
            {
                lblValidCnh.Text = "CNH inválido!";
                lblValidCnh.CssClass = "error";
            }
        }
    }
}