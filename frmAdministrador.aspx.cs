using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace consultarGym
{
    public partial class frmAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtBuscarAdm_TextChanged(object sender, EventArgs e)
        {

        }

        protected void gdvAdministrador_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnBuscarAdm_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            gdvAdministrador.DataSource = obj.buscarAdministradorPorNombre(txtBuscarAdm.Text);
            gdvAdministrador.DataBind();
        }

        protected void btnGuardarAdministrador_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            obj.guardarAdministrador(txtNombre.Text, txtApellido.Text, txtContrasena.Text);
        }
    }
}