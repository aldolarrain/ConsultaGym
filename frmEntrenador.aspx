<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmEntrenador.aspx.cs" Inherits="consultarGym.frmEntrenador" %>

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
        <h3>CONSULTAS</h3>
        <div>
            <div>
                <h4>BUSCAR ENTRENADOR</h4>
                <div>
                    Entrenador<br />
                    <asp:TextBox ID="txtBuscarEnt" runat="server"></asp:TextBox>             
                    <asp:Button ID="btnBuscarEnt" runat="server" Text="Buscar Entrenador" OnClick="btnBuscarEnt_Click" />
                    <br />
                    <br />
                    <asp:GridView ID="gdvEntrenador" runat="server">
                    </asp:GridView>
                    <br />
                </div>
                <h4>GUARDAR ENTRENADOR</h4>
                <div>
                    <asp:TableRow ID="TableRow1" runat="server">
                        <asp:TableCell>Nombre</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" runat="server">
                        <asp:TableCell>Apellido</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:Button ID="btnGuardarEntrenador" runat="server" OnClick="btnGuardarEntrenador_Click" Text="Guardar Entrenador" />
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
