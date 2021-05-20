<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmTipoInscripcion.aspx.cs" Inherits="consultarGym.frmTipoInscripcion" %>

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
                <h4>BUSCAR TIPO DE INSCRIPCION</h4>
                <div>
                    TIPO DE INSCRIPCION<br />
                    <asp:TextBox ID="txtBuscarTipoIns" runat="server"></asp:TextBox>             
                    <asp:Button ID="btnBuscarTipoIns" runat="server" Text="Buscar Tipo de Inscripcion" OnClick="btnBuscarTipoIns_Click" />
                    <br />
                    <br />
                    <asp:GridView ID="gdvTipoIns" runat="server">
                    </asp:GridView>
                    <br />
                </div>
                <h4>GUARDAR TIPO DE INSCRIPCION</h4>
                <div>
                    <asp:TableRow ID="TableRow1" runat="server">
                        <asp:TableCell>Nombre</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" runat="server">
                        <asp:TableCell>Costo</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtCosto" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow3" runat="server">
                        <asp:TableCell>Periodo</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtPeriodo" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow4" runat="server">
                        <asp:TableCell>Frecuencia</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtFrecuencia" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:Button ID="btnGuardarTipoIns" runat="server" OnClick="btnGuardarTipoIns_Click" Text="Guardar Tipo de Inscripcion" />
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
