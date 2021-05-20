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
    public partial class frmNotaInscripcion : System.Web.UI.Page
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
                ddlCliente.Items.Insert(0, new ListItem("--Seleccione Cliente--", "0"));

            }

            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
                using (var con = new MySqlConnection(constr))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT id_tipoInscripcion, nombre FROM tipoInscripcion"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        ddlTipoIns.DataSource = cmd.ExecuteReader();
                        ddlTipoIns.DataTextField = "nombre";
                        ddlTipoIns.DataValueField = "id_tipoInscripcion";
                        ddlTipoIns.DataBind();
                        con.Close();
                    }
                }
                ddlTipoIns.Items.Insert(0, new ListItem("--Seleccione Tipo de Inscripcion--", "0"));

            }
        }

        protected void btnGuardarNotaIns_Click(object sender, EventArgs e)
        {
            string s = txtFechaIns.Text;
            wsGym.wsGym obj = new wsGym.wsGym();
            obj.guardarNotaInscripcion(ddlCliente.SelectedIndex, ddlTipoIns.SelectedIndex, s);
        }

        protected void btnBuscarNotaIns_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            gdvNotaIns.DataSource = obj.buscarNotaInscripcionPorNombre(Convert.ToInt32(txtBuscarNotaIns.Text));
            gdvNotaIns.DataBind();
        }
    }
}