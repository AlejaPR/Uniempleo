<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAspirante.master" AutoEventWireup="true" CodeFile="~/controller/PerfilEmpresa.aspx.cs" Inherits="view_PerfilEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style22 {
            height: 23px;
            font-size: xx-large;
            font-family: "Malgun Gothic";
            text-align: center;
        }
        .auto-style23 {
            width: 185px;
        }
        .auto-style33 {
            height: 23px;
            width: 682px;
        }
        .auto-style26 {
            font-family: "MALgun Gothic";
            color: #FFFFFF;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style41 {
            font-family: "Malgun Gothic";
            font-size: medium;
        }
        .auto-style42 {
            font-size: medium;
        }
        .auto-style46 {
            text-align: center;
        }
        .auto-style47 {
            font-size: large;
            font-family: "Malgun Gothic";
        }
        .auto-style57 {
            text-align: center;
            width: 682px;
        }
        .auto-style59 {
            text-align: center;
            width: 332px;
        }
        .auto-style60 {
            height: 23px;
            width: 332px;
        }
        .auto-style61 {
            text-align: left;
            width: 253px;
        }
        .auto-style62 {
            text-align: center;
            width: 682px;
            font-size: medium;
        }
        .auto-style38 {
            font-size: medium;
            color: #000000;
            margin-left: 19px;
        }
        .auto-style36 {
            font-size: medium;
            color: #000000;
            margin-left: 70px;
        }
        .auto-style63 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style22" colspan="3"><strong>PERFIL EMPRESA 
                <br />
                <br />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style59" rowspan="2">
                <strong>
                <asp:Image ID="Image14" runat="server" Height="252px" ImageUrl="~/imagenes/NUESTRA-EMPRESA.png" Width="231px" />
                </strong>
            </td>
            <td class="auto-style61" rowspan="2">
                <span class="auto-style42"><span class="auto-style47">
                <strong>
                <div class="auto-style46">
                <asp:DataList ID="DL_datose" runat="server" CellPadding="4" ForeColor="#333333" HorizontalAlign="Center">
                    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("nombreem") %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Image ID="Image15" runat="server" Height="136px" ImageUrl='<%# Eval("logo") %>' Width="201px" />
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Text="Telefono: "></asp:Label>
                        </strong><strong></strong>
                        <asp:Label ID="Label3" runat="server" Font-Names="Malgun Gothic" Text='<%# Bind("telefonoE") %>'></asp:Label>
                        <strong>
                        <br />
                        <br />
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Text="Departamento:"></asp:Label>
                        </strong>
                        <asp:Label ID="Label4" runat="server" Font-Names="Malgun Gothic" Text='<%# Bind("deptoE") %>'></asp:Label>
                        <strong>
                        <br />
                        <br />
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Text="Ciudad:"></asp:Label>
                        </strong>
                        <asp:Label ID="Label5" runat="server" Font-Names="Malgun Gothic" Text='<%# Bind("ciudadE") %>'></asp:Label>
                        <strong>
                        <br />
                        <br />
                        </strong>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                </div>
                </span>
                </span>
                <br />
                <strong>
                </strong>
            </td>
            <td class="auto-style57">
                <strong>
                <span class="auto-style41">
                Puntuar empresa<br />
                </span>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style42" Height="33px" ImageUrl="~/imagenes/ES1.png" Width="33px" OnClick="ImageButton1_Click" />
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style42" Height="33px" ImageUrl="~/imagenes/ES2.png" Width="29px" OnClick="ImageButton2_Click" />
                <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style42" Height="33px" ImageUrl="~/imagenes/ES3.png" Width="30px" OnClick="ImageButton3_Click" />
                <asp:ImageButton ID="ImageButton4" runat="server" CssClass="auto-style42" Height="35px" ImageUrl="~/imagenes/ES4.png" Width="32px" OnClick="ImageButton4_Click" />
                <asp:ImageButton ID="ImageButton5" runat="server" CssClass="auto-style42" Height="33px" ImageUrl="~/imagenes/ES%.png" Width="32px" OnClick="ImageButton5_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style62">
                <strong>
                <span class="nuevoEstilo1">Comentar empresa<br />
                <br />
                <asp:TextBox ID="TB_Comentar_Emp" runat="server" CssClass="auto-style42" Height="59px" Width="270px" ></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="bt_comentar" runat="server" BackColor="#7197D6" BorderColor="#7197D6" BorderStyle="Double" CssClass="auto-style26" OnClick="bt_comentar_Click" Text="COMENTAR" Height="34px" Width="111px" />
                </span>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style59">
                &nbsp;</td>
            <td class="auto-style57">
                <strong>
                <span class="auto-style41">
                Sus puntos<br />
                <asp:GridView ID="GV_puntos" runat="server" Height="16%" Width="16%" CssClass="auto-style38" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
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
                </span>
                </strong></td>
            <td class="auto-style57">
                <span class="auto-style63"><strong>Sus comentarios</strong></span><asp:GridView ID="GV_comentarios" runat="server" CssClass="auto-style36" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
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
        </tr>
        <tr>
            <td class="auto-style59">
                &nbsp;</td>
            <td class="auto-style57" colspan="2">
                <span class="auto-style42"><strong>
                <span class="nuevoEstilo1">
                <br />
                <br />
                <br />
                </span>
                </strong>
                </span></td>
        </tr>
        <tr>
            <td class="auto-style59">
                &nbsp;</td>
            <td class="auto-style57" colspan="2">
                <strong>
                <span class="auto-style41">
                <br />
                </span><br />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style60">&nbsp;</td>
            <td class="auto-style33" colspan="2"></td>
        </tr>
        </table>
</asp:Content>

