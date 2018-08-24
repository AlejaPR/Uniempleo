<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAdministrador.master" AutoEventWireup="true" CodeFile="~/controller/SuspenderAspi.aspx.cs" Inherits="view_SuspenderAspi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .nuevoEstilo14 {
            font-family: "Malgun Gothic";
            font-size: medium;
        }
        .auto-style47 {
            text-align: center;
            font-family: "Malgun Gothic";
            font-size: large;
        }
        .nuevoEstilo15 {
            font-family: "malgun Gothic";
        }
        .nuevoEstilo16 {
            font-family: "malgun Gothic";
        }
        .auto-style48 {
            text-align: center;
        }
        .nuevoEstilo17 {
            font-family: "malgun Gothic";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style47" colspan="2"><strong>Cambia el estado del aspirante</strong></td>
        </tr>
        <tr>
            <td class="auto-style48"><span class="nuevoEstilo16"><strong>Activo = 1</strong></span></td>
            <td class="auto-style48"><span class="nuevoEstilo15"><strong>Suspender = 2</strong></span></td>
        </tr>
        <tr>
            <td colspan="2">
                <strong>
                <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="ODS_obtener_suspender" ForeColor="Black" CssClass="nuevoEstilo17">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                </strong>
                <asp:ObjectDataSource ID="ODS_obtener_suspender" runat="server" SelectMethod="obtenerAspirantesSus" TypeName="DAspirantes" UpdateMethod="suspenderAspirante">
                    <UpdateParameters>
                        <asp:Parameter Name="nombre_aspirante" Type="String" />
                        <asp:Parameter Name="apellido_aspirante" Type="String" />
                        <asp:Parameter Name="documento_asp" Type="String" />
                        <asp:Parameter Name="estado" Type="Int32" />
                        <asp:Parameter Name="id_aspirante" Type="Int32" />
                        <asp:Parameter Name="id_registro" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

