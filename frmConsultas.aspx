<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmConsultas.aspx.cs" Inherits="consultarGym.frmConsultas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
		<h3>Consultas</h3>
        <div>
			<div>
				<h4>Buscar</h4>
			</div>
        </div>
				<div style="height: 155px">   

					<asp:Label ID="Label1" runat="server" Text="Nombre de Disciplina"></asp:Label>
					<br />
					<asp:TextBox ID="txtBuscarPaq" runat="server"></asp:TextBox>
					<asp:Button ID="btnBuscarPaq" runat="server" OnClick="btnBuscarPaq_Click" Text="Busqueda de Paquetes por Nombre de Disciplina" />
					<asp:GridView ID="gdvPaquete" runat="server">
					</asp:GridView>

				</div>
		<h3>Consulta 2</h3>
		<div>
			<div>
				<h4>Buscar rango de fechas</h4>
			</div>
		</div>
		<div style="height: 189px">

				<asp:TableRow ID="TableRow1" runat="server">
                        <asp:TableCell>Primera fecha</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtFecha1" runat="server" type="date"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" runat="server">
                        <asp:TableCell>Segunda fecha</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtFecha2" runat="server" type="date"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:Button ID="btnBuscarFec" runat="server" OnClick="btnBuscarFec_Click" Text="Buscar NotaInscripcion por Fecha" />
                    <br />
                    <asp:GridView ID="gdvFechas" runat="server">
                    </asp:GridView>
                    <br />

		</div>
    </form>
</body>
</html>
