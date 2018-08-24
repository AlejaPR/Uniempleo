<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterEmpresa.master" AutoEventWireup="true" CodeFile="~/controller/AspiranteCompleto.aspx.cs" Inherits="view_AspiranteCompleto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style33 {
            width: 100%;
        }
        .auto-style34 {
            color: #000000;
        }
        .auto-style35 {
            font-size: medium;
            color: #000000;
        }
        .auto-style41 {
            font-family: "Malgun Gothic";
            font-size: medium;
        }
        .nuevoEstilo1 {
            font-family: "MALgun Gothic";
        }
        .auto-style45 {
            background-color: #62A5E0;
            font-weight: bold;
            font-family: "Malgun Gothic";
        }
        .auto-style46 {
            font-size: small;
            background-color: #62A5E0;
        }
        .auto-style58 {
            width: 30%;
            height: 444px;
            background-color: #62A5E0;
        }
        .auto-style60 {
            width: 305px;
            height: 444px;
            background-color: #62A5E0;
        }
        .auto-style62 {
            font-size: large;
            color: #000000;
        }
        .auto-style64 {
            font-size: medium;
            color: #3333FF;
        }
        .auto-style65 {
            margin-left: 0px;
        }
        .auto-style66 {
            width: 30%;
            height: 94px;
            background-color: #62A5E0;
        }
        .auto-style67 {
            width: 305px;
            height: 94px;
            background-color: #62A5E0;
            text-align: center;
        }
        .auto-style68 {
            font-size: medium;
            margin-left: 158px;
        }
        .auto-style69 {
            font-size: medium;
            margin-left: 35px;
        }
        .auto-style70 {
            font-size: large;
            color: #3169C6;
            text-decoration: none;
        }
        .auto-style73 {
            font-size: large;
            color: #000000;
            background-color: #62A5E0;
        }
        .auto-style74 {
            background-color: #62A5E0;
        }
        .auto-style75 {
            font-size: medium;
            text-align: center;
            font-family: "Malgun Gothic";
            font-weight: bold;
            height: 54px;
            border-color: #6F9FED;
            background-color: #62A5E0;
        }
        .auto-style77 {
            font-size: medium;
        }
        .auto-style79 {
            font-size: xx-large;
            color: #FFFFFF;
            text-align: center;
            font-family: "Malgun Gothic";
            font-weight: bold;
            height: 54px;
            border-color: #6F9FED;
            background-color: #62A5E0;
        }
        .auto-style90 {
            color: #000000;
            width: 100%;
            text-align: center;
            height: 973px;
            border-color: #6F9FED;
            margin-right: 83px;
            background-color: #4183D7;
        }
        .auto-style92 {
            width: 30%;
            background-color: #62A5E0;
        }
        .auto-style93 {
            font-size: medium;
            background-color: #62A5E0;
        }
        .auto-style94 {
            color: #000000;
            width: 30%;
            text-align: center;
            height: 54px;
            border-color: #6F9FED;
            background-color: #62A5E0;
        }
        .auto-style96 {
            background-color: #62A5E0;
            width: 305px;
        }
        .auto-style97 {
            font-size: medium;
            margin-left: 57px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style90">
        <tr>
            <td class="auto-style94" colspan="4"><span class="auto-style74">Informacion completa de aspirante</span><br class="auto-style74" />
            </td>
        </tr>
        <tr>
            <td rowspan="4" class="auto-style74">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td class="auto-style58" rowspan="2">
                <asp:DataList ID="DL_datosp" runat="server" CellPadding="4" CssClass="auto-style65" ForeColor="#333333" RepeatColumns="3" RepeatDirection="Horizontal">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <ItemTemplate>
                        <span class="auto-style77">Nombre:
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("nombre_aspirante") %>'></asp:Label>
                        <br />
                        Apellido:
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("apellido_aspirante") %>'></asp:Label>
                        <br />
                        Documento:
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("documento") %>'></asp:Label>
                        <br />
                        Telefono:
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("telefono_asp") %>'></asp:Label>
                        <br />
                        <asp:Image ID="Image9" runat="server" Height="134px" ImageUrl='<%# Bind("foto") %>' Width="141px" />
                        <br />
                        Profesion:<asp:Label ID="Label3" runat="server" Text='<%# Bind("titulo") %>'></asp:Label>
                        <br />
                        Habilidades:<br />
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("habilidad1") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("habilidad2") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("habilidad3") %>'></asp:Label>
                        <br />
                        </span>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
            </td>
            <td class="auto-style60">
                <span class="auto-style62"><span class="auto-style74">
                <br />
                <br />
                </span></span><br class="auto-style74" />
                <asp:Image ID="Image10" runat="server" width="80px" Height="80px" ImageUrl="~/imagenes/coronitapuntos.png"/>
                <br />
                <asp:DataList ID="DL_SumaPuntosAsp" runat="server" style="margin-left: 94px">
                    <ItemTemplate>
                        <asp:Label ID="LB_SumaPuntosAsp" runat="server" Text='<%# Eval("f_obtener_puntos_totales_aspiranteA") %>' style="font-size: x-large"></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
                </td>
            <td rowspan="4" class="auto-style74">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style60">
                <br />
                <span class="auto-style62"><span class="auto-style74">¿Te gusta este aspirante? 
                </span> 
                <br class="auto-style74" />
                <span class="auto-style74">Descarga su hoja de vida</span></span><asp:DataList ID="DL_hoja" runat="server" CssClass="auto-style65" RepeatDirection="Horizontal" OnItemCommand="DL_hoja_ItemCommand" Height="119px" Width="16px">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style64" NavigateUrl='<%# Bind("hoja") %>' Text='<%# Bind("hoja") %>'></asp:HyperLink>
                        <br />
                        <asp:LinkButton ID="LB_CitarAsp" runat="server" CssClass="auto-style70"  CommandArgument='<%# Eval("id_aspirante") %>' CommandName= "citar">¡Citar esta persona!</asp:LinkButton>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                </td>
        </tr>
        <tr>
            <td class="auto-style66">
                <strong>
                <span class="auto-style41">
                <span class="auto-style94">Puntuar aspirante</span><br class="auto-style74" />
                </span>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style93" Height="33px" ImageUrl="~/imagenes/ES1.png" Width="33px" OnClick="ImageButton1_Click"  />
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style93" Height="33px" ImageUrl="~/imagenes/ES2.png" Width="29px" OnClick="ImageButton2_Click"  />
                <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style93" Height="33px" ImageUrl="~/imagenes/ES3.png" Width="30px" OnClick="ImageButton3_Click"  />
                <asp:ImageButton ID="ImageButton4" runat="server" CssClass="auto-style93" Height="35px" ImageUrl="~/imagenes/ES4.png" Width="32px" OnClick="ImageButton4_Click" />
                <asp:ImageButton ID="ImageButton5" runat="server" CssClass="auto-style93" Height="33px" ImageUrl="~/imagenes/ES%.png" Width="32px" OnClick="ImageButton5_Click" />
                </strong>
            </td>
            <td class="auto-style67">
                <strong>
                <span class="nuevoEstilo1"><span class="auto-style79">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span><span class="auto-style75">
                Comentar aspirante</span><br class="auto-style74" />
                <asp:TextBox ID="TB_comentar_Asp" runat="server" CssClass="auto-style97" Height="59px" Width="270px"></asp:TextBox>
                <br class="auto-style74" />
                <br class="auto-style46" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="bt_comentar" runat="server" BackColor="#7197D6" BorderColor="#7197D6" BorderStyle="Double" CssClass="auto-style45"  Text="COMENTAR" Height="34px" Width="111px" OnClick="bt_comentar_Click" />
                </span>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style92">
                <span class="auto-style73">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sus puntuaciones</span><asp:GridView ID="GV_puntos" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style68" EmptyDataText="Este usuario no tiene puntos"  >
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
                <asp:ObjectDataSource ID="ODS_puntosAsp" runat="server"></asp:ObjectDataSource>
            </td>
            <td class="auto-style96">
                <span class="auto-style73">Sus comentarios</span><strong><asp:GridView ID="GV_comentarios" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style69" EmptyDataText="Este usuario no tiene comentarios">
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
            </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style74">&nbsp;</td>
            <td class="auto-style92">&nbsp;</td>
            <td class="auto-style96">&nbsp;</td>
            <td class="auto-style74">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

