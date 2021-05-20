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
    public partial class frmDetalleInscripcion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			if (!this.IsPostBack)
			{
				string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
				using (var con = new MySqlConnection(constr))
				{
					using (MySqlCommand cmd = new MySqlCommand("SELECT id_cliente, nombre FROM cliente"))
					{
						cmd.CommandType = CommandType.Text;
						cmd.Connection = con;
						con.Open();
						ddlCliente.DataSource = cmd.ExecuteReader();
						ddlCliente.DataTextField = "nombre";
						ddlCliente.DataValueField = "id_cliente";
						ddlCliente.DataBind();
						con.Close();
					}
				}
				ddlCliente.Items.Insert(0, new ListItem("--Seleccione el Cliente--", "0"));

			}

			if (!this.IsPostBack)
			{
				string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
				using (var con = new MySqlConnection(constr))
				{
					using (MySqlCommand cmd = new MySqlCommand("SELECT id_paquete, nombreP FROM paquetes"))
					{
						cmd.CommandType = CommandType.Text;
						cmd.Connection = con;
						con.Open();
						ddlPaquete.DataSource = cmd.ExecuteReader();
						ddlPaquete.DataTextField = "nombreP";
						ddlPaquete.DataValueField = "id_paquete";
						ddlPaquete.DataBind();
						con.Close();
					}
				}
				ddlPaquete.Items.Insert(0, new ListItem("--Seleccione el Paquete--", "0"));

			}
		}

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
			wsGym.wsGym obj = new wsGym.wsGym();
			obj.guardarDetalleInscripcion(Convert.ToInt32(txtCantidad.Text), Convert.ToInt32(ddlCliente.Text), Convert.ToInt32(txtPrecio.Text), Convert.ToInt32(ddlPaquete.Text));
		}

        protected void btnBuscarDet_Click(object sender, EventArgs e)
        {
			wsGym.wsGym obj = new wsGym.wsGym();
			gdvDetalle.DataSource = obj.buscarDetalleInscripcion(TextBox2.Text);
			gdvDetalle.DataBind();
		}
    }
}