using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace consultarGym
{
    public partial class frmHorario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscarHorario_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            gdvHorario.DataSource = obj.buscarHorario(txtBuscarHor.Text);
            gdvHorario.DataBind();
        }

        protected void btnGuardarHorario_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            obj.guardarHorario(txtHr1.Text, txtHr2.Text);
        }
    }
}