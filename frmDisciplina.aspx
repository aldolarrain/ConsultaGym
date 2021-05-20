<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmDisciplina.aspx.cs" Inherits="consultarGym.frmDisciplina" %>

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
        <h3>CONSULTAS</h3>
        <div>
            <div>
                <h4>BUSCAR Disciplina</h4>
                <div>
                    Entrenador<br />
                    <asp:TextBox ID="txtBuscarDis" runat="server"></asp:TextBox>             
                    <asp:Button ID="btnBuscarDis" runat="server" Text="Buscar Disciplina" OnClick="btnBuscarDis_Click" />
                    <br />
                    <br />
                    <asp:GridView ID="gdvDisciplina" runat="server">
                    </asp:GridView>
                    <br />
                </div>
                <h4>GUARDAR Disciplina</h4>
                <div>
                    <asp:TableRow ID="TableRow1" runat="server">
                        <asp:TableCell>Nombre</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" runat="server">
                        <asp:TableCell>Descripcion</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow3" runat="server">
                        <asp:TableCell>Entrenador</asp:TableCell>
                        <asp:TableCell><asp:DropDownList ID="ddlEntrenador" runat="server">
                        </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow4" runat="server">
                        <asp:TableCell>Horario</asp:TableCell>
                        <asp:TableCell><asp:DropDownList ID="ddlHorario" runat="server">
                        </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:Button ID="btnGuardarDisciplina" runat="server" OnClick="btnGuardarDisciplina_Click" Text="Guardar Disciplina" />
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
