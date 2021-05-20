using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace consultarGym
{
    public partial class frmPaquete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			if (!this.IsPostBack)
			{
				string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
				using (var con = new MySqlConnection(constr))
				{
					using (MySqlCommand cmd = new MySqlCommand("SELECT id_disciplina, nombre FROM disciplina"))
					{
						cmd.CommandType = CommandType.Text;
						cmd.Connection = con;
						con.Open();
						ddlDisciplina.DataSource = cmd.ExecuteReader();
						ddlDisciplina.DataTextField = "nombre";
						ddlDisciplina.DataValueField = "id_disciplina";
						ddlDisciplina.DataBind();
						con.Close();
					}
				}
				ddlDisciplina.Items.Insert(0, new ListItem("--Seleccione Disciplina--", "0"));

			}
		}

        protected void btnBuscarPaq_Click(object sender, EventArgs e)
        {
			wsGym.wsGym obj = new wsGym.wsGym();
			gdvPaquete.DataSource = obj.buscarPaquetes(TextBox1.Text);
			gdvPaquete.DataBind();
		}

		protected void btnGuardarDisciplina_Click(object sender, EventArgs e)
        {
			wsGym.wsGym obj = new wsGym.wsGym();
			obj.guardarPaquetes(txtNombre.Text, txtDescripcion.Text, Convert.ToInt32(txtCupos.Text), Convert.ToInt32(ddlDisciplina.Text));
		}
    }
}