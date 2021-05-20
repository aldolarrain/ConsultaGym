<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmHorario.aspx.cs" Inherits="consultarGym.frmHorario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        <h3>Horario</h3>
        <div>
            <div>
                <h4>BUSCAR HORARIO</h4>
                <div>
                    Horario<br />
                    <asp:TextBox ID="txtBuscarHor" runat="server" TextMode="Time" format="HH:mm"></asp:TextBox>             
                    <asp:Button ID="btnBuscarHor" runat="server" Text="Buscar Horario" OnClick="btnBuscarHorario_Click" />
                    <br />
                    <br />
                    <asp:GridView ID="gdvHorario" runat="server">
                    </asp:GridView>
                    <br />
                </div>
                <h4>GUARDAR HORARIO</h4>
                <div>
                    <asp:TableRow ID="TableRow1" runat="server">
                        <asp:TableCell>Horario de inicio</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtHr1" runat="server" TextMode="Time" format="HH:mm"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" runat="server">
                        <asp:TableCell>Horario de finalizacion</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtHr2" runat="server" TextMode="Time" format="HH:mm"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:Button ID="btnGuardarHorario" runat="server" OnClick="btnGuardarHorario_Click" Text="Guardar Horario" />
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
