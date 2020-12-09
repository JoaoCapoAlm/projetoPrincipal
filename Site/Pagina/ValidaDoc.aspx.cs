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
            if (RequiredFieldValidator.IsValid)
            {
                bool isValid = DocumentBLL.ValidDocument.IsCpf(txtCpf.Text);
                if (isValid)
                {
                    lblMsgCpfValid.Text = "CPF válido!";
                    lblMsgCpfValid.Style.Remove("color");
                }
                else
                {
                    lblMsgCpfValid.Text = "CPF inválido!";
                    lblMsgCpfValid.Style.Add("color", "red");
                }
            }
        }

        protected void btnValidCnpj_Click(object sender, EventArgs e)
        {
            if (rfvCnpj.IsValid)
            {
                bool isValid = DocumentBLL.ValidDocument.IsCnpj(txtCnpj.Text);

                if (isValid)
                {
                    lblValidCnpj.Text = "CNPJ válido!";
                    lblValidCnpj.Style.Remove("color");
                }
                else
                {
                    lblValidCnpj.Text = "CNPJ inválido";
                    lblValidCnpj.Style.Add("color", "red");
                }
            }
        }

        protected void btnValidarPis_Click(object sender, EventArgs e)
        {
            if (RFVPis.IsValid)
            {
                bool isValid = DocumentBLL.ValidDocument.IsPis(txtPis.Text);

                if (isValid)
                {
                    lblValidPis.Text = "PIS válido!";
                    lblValidPis.Style.Remove("color");
                }
                else
                {
                    lblValidPis.Text = "PIS inválido!";
                    lblValidPis.Style.Add("color", "red");
                }
            }
        }
    }
}