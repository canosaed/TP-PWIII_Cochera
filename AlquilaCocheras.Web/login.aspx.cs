using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlquilaCocheras.Web
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                        
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtEmail.Text== "cliente@gmail.com" && txtContrasenia.Text=="Password1")
            {
                //implementar logica de cliente
                Session["tipo"] = "Cliente";
                if(Session["url"] != null) { string url = Session["url"].ToString(); Response.Redirect(url); }
                Response.Redirect("clientes/reservas.aspx");              
                lblResultado.Text = "Usuario correcto.";
            }
            else if (txtEmail.Text == "propietario@gmail.com" && txtContrasenia.Text == "Password1")
            {
                //implementar logica de propietario
                Session["tipo"] = "Propietario";
                if (Session["url"] != null) { string url = Session["url"].ToString(); Response.Redirect(url); }
                Response.Redirect("propietarios/reservas.aspx");
                lblResultado.Text = "Usuario correcto.";
            } else { lblResultado.Text = "Usuario incorrecto.";  }
        }
    }
}