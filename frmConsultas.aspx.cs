using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace consultarGym
{
    public partial class frmConsultas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscarPaq_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            gdvPaquete.DataSource = obj.buscarDisciplinaPorPaquete(txtBuscarPaq.Text);
            gdvPaquete.DataBind();
        }

        protected void btnBuscarFec_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            gdvFechas.DataSource = obj.buscarInscripcionPorFecha(txtFecha1.Text, txtFecha2.Text);
            gdvFechas.DataBind();
        }
    }
}