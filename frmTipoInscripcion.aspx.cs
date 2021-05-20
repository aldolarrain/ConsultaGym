using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace consultarGym
{
    public partial class frmTipoInscripcion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscarTipoIns_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            gdvTipoIns.DataSource = obj.buscarTipoInscripcionPorNombre(txtBuscarTipoIns.Text);
            gdvTipoIns.DataBind();
        }

        protected void btnGuardarTipoIns_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            obj.guardarTipoInscripcion(txtNombre.Text, Convert.ToInt32(txtCosto.Text), txtPeriodo.Text, Convert.ToInt32(txtFrecuencia.Text));
        }
    }
}