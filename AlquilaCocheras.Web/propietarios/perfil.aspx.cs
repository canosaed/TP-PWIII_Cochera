using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlquilaCocheras.Web.propietarios
{
    public partial class perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   //txtEmail.Enabled= false;

            if (Session["tipo"] == null)
            {
                Session["url"] = "/propietarios/perfil.aspx";
                Response.Redirect("/login.aspx");
            }
            txtNombre.Text = "Propietario";
            txtApellido.Text = "PropietarioApellido";
            txtEmail.Text = "Propietario@gmail.com";
            txtContrasenia.Text = "Password1";
            txtConfContrasenia.Text = "Password1";
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblResultado.CssClass = "alert alert-success";
                lblResultado.Text = "Operación exitosa";
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("propietarios/reservas.aspx");
        }
    }
}