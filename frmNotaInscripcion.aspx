<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmNotaInscripcion.aspx.cs" Inherits="consultarGym.frmNotaInscripcion" %>

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
                <h4>BUSCAR NOTA DE INSCRIPCION</h4>
                <div>
                    NOTA DE INSCRIPCION<br />
                    <asp:TextBox ID="txtBuscarNotaIns" runat="server"></asp:TextBox>             
                    <asp:Button ID="btnBuscarNotaIns" runat="server" Text="Buscar Nota Inscripcion" OnClick="btnBuscarNotaIns_Click" />
                    <br />
                    <br />
                    <asp:GridView ID="gdvNotaIns" runat="server">
                    </asp:GridView>
                    <br />
                </div>
                <h4>GUARDAR NOTA DE INSCRIPCION</h4>
                <div>
                    <asp:TableRow ID="TableRow1" runat="server">
                        <asp:TableCell>Cliente</asp:TableCell>
                        <asp:TableCell><asp:DropDownList ID="ddlCliente" runat="server">
                        </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <br />
                    <asp:TableRow ID="TableRow2" runat="server">
                        <asp:TableCell>Tipo de Inscripcion</asp:TableCell>
                        <asp:TableCell><asp:DropDownList ID="ddlTipoIns" runat="server">
                        </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <br />
                    <br />
                    <asp:TableRow ID="TableRow3" runat="server">
                        <asp:TableCell>Fecha de Inscripcion</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtFechaIns" TextMode="Date" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <br />
                    <asp:Button ID="btnGuardarNotaIns" runat="server" OnClick="btnGuardarNotaIns_Click" Text="Guardar Nota de Inscripcion" />
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
