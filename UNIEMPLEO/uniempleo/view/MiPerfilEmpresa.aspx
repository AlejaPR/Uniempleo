<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterEmpresa.master" AutoEventWireup="true" CodeFile="~/controller/MiPerfilEmpresa.aspx.cs" Inherits="view_MiPerfilEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style33 {
            width: 100%;
        }
        .auto-style34 {
            color: #000000;
        }
        .auto-style35 {
            width: 176px;
        }
        .auto-style36 {
            font-size: medium;
            color: #000000;
        }
        .auto-style37 {
            width: 336px;
            text-align: center;
        }
        .auto-style38 {
            font-size: medium;
            color: #000000;
            margin-left: 30px;
            margin-right: 0px;
        }
        .auto-style40 {
            background-color: #99CCFF;
            width: 51px;
        }
        .auto-style44 {
            margin-left: 67px;
            background-color: #92BBE4;
        }
        .auto-style45 {
            width: 314px;
            text-align: center;
            font-family: "MALgun Gothic";
            font-size: small;
            font-weight: bold;
            background-color: #99CCFF;
        }
        .auto-style46 {
            font-size: medium;
            color: #000000;
            margin-left: 0px;
        }
        .auto-style47 {
            background-color: #99CCFF;
        }
        .auto-style48 {
            width: 176px;
            text-align: center;
            font-family: "Malgun Gothic";
            font-weight: bold;
            color: #FFFFFF;
            font-size: xx-large;
            height: 54px;
            border-color: #6F9FED;
            background-color: #99CCFF;
        }
        .auto-style49 {
            font-size: medium;
            color: #000000;
            width: 879px;
            height: 1505px;
        }
        .auto-style51 {
            background-color: #99CCFF;
            width: 71px;
        }
        .auto-style52 {
            font-size: large;
            color: #000000;
            background-color: #99CCFF;
        }
        .auto-style53 {
            font-size: small;
            color: #000000;
            font-family: "malgun Gothic";
            font-weight: bold;
            margin-left: 30px;
            margin-right: 0px;
        }
        .auto-style54 {
            margin-left: 128px;
        }
        .auto-style55 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style49">
        <tr>
            <td class="auto-style36" colspan="4">Mi Perfil Empresa</td>
        </tr>
        <tr>
            <td class="auto-style36">
                <asp:Image ID="Image10" runat="server" Height="80px" Width="80px" ImageUrl="~/imagenes/coronitapuntos.png" />
                <br />
                <asp:DataList ID="DL_TotalPuntosEmp" runat="server" HorizontalAlign="Center" CssClass="auto-style55">
                    <ItemTemplate>
                        <asp:Label ID="LB_PuntosTotalesEmp" runat="server" CssClass="auto-style55" Text='<%# Eval("f_suma_puntos_empresa") %>'></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
                <br />
                <asp:Label ID="LB_PuntosVaciosEmp" runat="server" CssClass="auto-style55"></asp:Label>
            </td>
            <td colspan="2" class="auto-style47">
                <asp:DataList ID="DL_miperfile" runat="server" CssClass="auto-style44" CellPadding="4" ForeColor="#333333">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text="Nombre de empresa:" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="Black"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombre_empresa") %>' Font-Bold="False" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="Black"></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Telefono:" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="Black"></asp:Label>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("telefono_empresa") %>' Font-Bold="False" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="Black"></asp:Label>
                        &nbsp;<asp:Label ID="Label4" runat="server" Text="Nit:" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="Black"></asp:Label>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("nit") %>' Font-Bold="False" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="Black"></asp:Label>
                        <br />
                        <asp:Label ID="Label7" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="Black" Text="Departamento:"></asp:Label>
                        <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="Black" Text='<%# Bind("departamento") %>'></asp:Label>
                        &nbsp;<asp:Label ID="Label9" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="Black" Text="Ciudad:"></asp:Label>
                        <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="Black" Text='<%# Bind("ciudad") %>'></asp:Label>
                        <br />
                        <asp:Image ID="Image9" runat="server" Height="115px" ImageUrl='<%# Bind("logo") %>' Width="156px" />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
            </td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style48">&nbsp;</td>
            <td class="auto-style45">
                <span class="auto-style52">Mis puntos</span><asp:GridView ID="GV_puntos" runat="server" Height="16%" Width="22%" CssClass="auto-style53" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" EmptyDataText="No tienes puntos">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
            <td class="auto-style40">
                <br />
                <span class="auto-style52">Comentarios&nbsp; </span><asp:GridView ID="GV_comentarios" runat="server" CssClass="auto-style46" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="109px" Width="161px" EmptyDataText="No tienes comentarios">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style48">&nbsp;</td>
            <td colspan="2" class="auto-style47">
                <br />
                OFERTAS PUBLICADAS
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style54" DataSourceID="ODS_misOfertas" EmptyDataText="No tienes ofertas publicadas">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_misOfertas" runat="server" SelectMethod="obtenermisOfertas" TypeName="DEmpresas">
                    <SelectParameters>
                        <asp:Parameter Name="idp" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

