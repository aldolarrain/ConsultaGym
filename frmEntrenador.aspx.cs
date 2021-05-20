using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace consultarGym
{
    public partial class frmEntrenador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscarEnt_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            gdvEntrenador.DataSource = obj.buscarEntrenadorPorNombre(txtBuscarEnt.Text);
            gdvEntrenador.DataBind();
        }

        protected void btnGuardarEntrenador_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            obj.guardarEntrenador(txtNombre.Text, txtApellido.Text);
        }
    }
}