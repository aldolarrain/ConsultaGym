<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPaquete.aspx.cs" Inherits="consultarGym.frmPaquete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <a href="frmCliente.aspx">Cliente</a>&nbsp;
    <a href="frmAdministrador.aspx">Administrador</a>&nbsp;
    <a href="frmTipoInscripcion.aspx">Tipo de Inscripcion</a>&nbsp;
    <a href="frmNotaInscripcion.aspx">Nota de Inscripcion</a>&nbsp;
    <a href="frmPaquete.aspx">Paquete</a>&nbsp;
    <a href="frmDetalleInscripcion.aspx">Detalle Inscripcion</a>&nbsp;
    <a href="frmConsultas.aspx">Consultas</a>&nbsp;
    <form id="form1" runat="server">
		<h3>Consultas</h3>
        <div>
			<div>
				<h4>Buscar Paquete</h4>
				<div>

					Nombre</div>
			</div>
        </div>
    	<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		<asp:Button ID="btnBuscarPaq" runat="server" Text="Buscar paquete por nombre" OnClick="btnBuscarPaq_Click" />
		<asp:GridView ID="gdvPaquete" runat="server">
		</asp:GridView>
		<h4>Paquete</h4>
			<div>

				Nombre del paquete
				<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
				Descripcion<asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
				Cupos<asp:TextBox ID="txtCupos" runat="server"></asp:TextBox>
				Disciplina<asp:DropDownList ID="ddlDisciplina" runat="server">
				</asp:DropDownList>
				<asp:Button ID="btnGuardarPaquetes" runat="server" OnClick="btnGuardarDisciplina_Click" Text="Guardar" />

			</div>
    </form>
</body>
</html>
