<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmDetalleInscripcion.aspx.cs" Inherits="consultarGym.frmDetalleInscripcion" %>

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
				<h4>Buscar Detalle Inscripcion</h4>
				<div>
					Detalle Incripcion</div>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
				<asp:Button ID="btnBuscarDet" runat="server" Text="Buscar Detalle" OnClick="btnBuscarDet_Click" />
			</div>
        </div>
    	<asp:GridView ID="gdvDetalle" runat="server">
		</asp:GridView>
		<h4>Detalle Inscripcion</h4>
		<div style="height: 104px">
			Cantidad<asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
			Cliente<asp:DropDownList ID="ddlCliente" runat="server" style="margin-bottom: 0px">
			</asp:DropDownList>
			Precio<asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
			Paquete<asp:DropDownList ID="ddlPaquete" runat="server">
			</asp:DropDownList>
			<asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar" />
			<br />
		</div>
    </form>
</body>
</html>
