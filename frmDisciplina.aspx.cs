using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace consultarGym
{
    public partial class frmDisciplina : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
                using (var con = new MySqlConnection(constr))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT id_entrenador, nombre FROM entrenador"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        ddlEntrenador.DataSource = cmd.ExecuteReader();
                        ddlEntrenador.DataTextField = "nombre";
                        ddlEntrenador.DataValueField = "id_entrenador";
                        ddlEntrenador.DataBind();
                        con.Close();
                    }
                }
                ddlEntrenador.Items.Insert(0, new ListItem("--Seleccione Entrenador--", "0"));

            }
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
                using (var con = new MySqlConnection(constr))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT id_horario, horaDeInicio, horaDeFinalizacion FROM horario"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        ddlHorario.DataSource = cmd.ExecuteReader();
                        ddlHorario.DataTextField = "horaDeInicio";               
                        ddlHorario.DataValueField = "id_horario";
                        ddlHorario.DataBind();
                        con.Close();
                    }
                }
                ddlHorario.Items.Insert(0, new ListItem("--Seleccione Horario--", "0"));

            }
        }

        protected void btnBuscarDis_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            gdvDisciplina.DataSource = obj.buscarDisciplinaPorNombre(txtBuscarDis.Text);
            gdvDisciplina.DataBind();
        }

        protected void btnGuardarDisciplina_Click(object sender, EventArgs e)
        {
            wsGym.wsGym obj = new wsGym.wsGym();
            obj.guardarDisciplina(txtNombre.Text, txtDescripcion.Text, ddlEntrenador.SelectedIndex,ddlHorario.SelectedIndex);
        }
    }
}