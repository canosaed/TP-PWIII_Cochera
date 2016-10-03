﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlquilaCocheras.Web.MasterPages
{
    public partial class Clientes : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["tipo2"] = "Cliente";
            if (Session["tipo"] != Session["tipo2"])
            {
                Response.Redirect("/propietarios/reservas.aspx");
            }

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("/default.aspx");
        }
    }
}