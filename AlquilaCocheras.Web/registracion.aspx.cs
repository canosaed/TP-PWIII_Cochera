using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlquilaCocheras.Web
{
    public partial class registracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegistrarUsuario_Click(object sender, EventArgs e)
        {
            var mail = txtEmail.Text;
            var consultaSql = "mail@user.com";

            if (mail == consultaSql)
            {
                lblMail.CssClass = "alert alert-danger";
                lblMail.Text = "No se pudo completar la registración, existe otro usuario con el email ingresado.";
            }
            else
            {
                lblMail.CssClass = "alert alert-success";
                lblMail.Text = "El email es corecto";
                lblResultado.CssClass = "alert alert-success";
                lblResultado.Text = "Registracion exitosa dirijase al  <a class='btn btn-link' href='login.aspx'>Login</a>";
            }
        }
      
    }
}