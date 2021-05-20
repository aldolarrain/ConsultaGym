using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace consultarGym
{
    public partial class frmCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscarCli_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            gdvCliente.DataSource = obj.buscarClientePorNombre(txtBuscarCli.Text);
            gdvCliente.DataBind();
        }

        protected void btnGuardarCliente_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            obj.guardarCliente(txtNombre.Text, txtApellido.Text);
        }
    }
}