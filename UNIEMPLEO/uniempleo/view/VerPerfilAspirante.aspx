<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAspirante.master" AutoEventWireup="true" CodeFile="~/controller/VerPerfilAspirante.aspx.cs" Inherits="view_VerPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style24 {
        text-align: center;
    }
    .nuevoEstilo6 {
        font-family: "malgun Gothic";
    }
    .auto-style25 {
        font-family: "malgun Gothic";
        color: #7197D6;
    }
        .nuevoEstilo7 {
            font-family: "MALgun Gothic";
        }
        .auto-style26 {
            font-family: "MALgun Gothic";
            font-size: large;
            color: #6F9FED;
        }
        .nuevoEstilo8 {
            font-family: "MALgun Gothic";
        }
        .nuevoEstilo9 {
            font-family: "malgun Gothic";
        }
        .auto-style38 {
            font-family: "malgun Gothic";
            background-color: #C8ECF4;
            font-size: medium;
        }
        .auto-style41 {
            font-family: "MALgun Gothic";
            font-size: large;
            color: #6F9FED;
        }
        .auto-style44 {
            background-color: #C8ECF4;
        }
        .auto-style46 {
            font-size: medium;
        }
        .auto-style47 {
            width: 50%;
        }
        .TablaDatos {
            font-family: "malgun Gothic";
        }
        .Tabladatos {
            font-family: "malgun Gothic";
            font-size: medium;
            font-weight: bold;
        }
        .tabladatosII {
            font-family: "malgun Gothic";
            font-size: x-large;
        }
        .auto-style48 {
            font-family: "malgun Gothic";
            font-size: x-large;
            font-weight: normal;
        }
        .nuevoEstilo10 {
            font-family: "malgun Gothic";
            font-size: xx-large;
            font-weight: bold;
        }
        .nuevoEstilo11 {
            font-family: "malgun Gothic";
            font-size: xx-large;
            font-weight: bold;
        }
        .auto-style50 {
            font-family: "malgun Gothic";
            font-weight: bold;
        }
        .auto-style51 {
            font-family: "malgun Gothic";
            color: #674172;
            text-align: left;
            width: 50%;
            height: 95px;
            background-color: #C8ECF4;
            font-size: medium;
        }
        .auto-style52 {
            font-family: "malgun Gothic";
            font-weight: normal;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td rowspan="4" class="auto-style47">
            <strong>
            <asp:DataList ID="DL_perfil" runat="server"  CssClass="auto-style38" RepeatColumns="2" RepeatDirection="Horizontal" HorizontalAlign="Left" >
                <ItemTemplate>
                    <table class="Tabladatos">
                        <tr>
                            <td class="auto-style4" colspan="2">
                                <asp:Image ID="Image9" runat="server" ImageUrl='<%# Bind("foto") %>' Height="147px" Width="157px" CssClass="auto-style44" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style51"><strong>Nombre:</strong></td>
                            </strong>
                            <td class="auto-style48">
                                <asp:Label ID="L_nombre" runat="server" Text='<%# Bind("nombre_aspirante") %>' style="font-size: medium"></asp:Label>
                            </td>
                        </tr>
                        <strong>
                        <tr>
                            <td class="auto-style51"><strong>Apellido:</strong></td>
                            <td class="auto-style52">
                                <asp:Label ID="L_apellido" runat="server" Text='<%# Bind("apellido_aspirante") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style51"><strong>Profesion:</strong></td>
                            <td class="auto-style52">
                                <asp:Label ID="L_Profesion" runat="server" Text='<%# Bind("titulo") %>'></asp:Label>
                            </td>
                        </tr>
                        </strong>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            &nbsp;</td>
        <td class="auto-style41">
            <br />
            <br />
            <br />
            <br />
            <asp:Image ID="IMG_PuntosAsp" runat="server" Height="80px" Width="80px" ImageUrl="~/imagenes/coronitapuntos.png" />
            <br />
            Puntos Totales:<br />
            <strong>
            <asp:DataList ID="DL_PuntosTotalesAsp" runat="server" HorizontalAlign="Center" OnSelectedIndexChanged="DL_PuntosTotalesAsp_SelectedIndexChanged" style="font-size: medium">
                <ItemTemplate>
                    <asp:Label ID="LB_PuntosTotalesAsp" runat="server" Text='<%# Eval("f_obtener_puntos_totales_aspirante") %>' CssClass="auto-style46"></asp:Label>
                </ItemTemplate>
            </asp:DataList>
            </strong>
            <br />
            <strong>
            <asp:Label ID="LB_PuntosVaciosAsp" runat="server" CssClass="auto-style46"></asp:Label>
            </strong>
        </td>
    </tr>
    <tr>
        <td class="auto-style41">
            <strong>
            <span class="auto-style50">
            Mi puntuación:</span><span class="nuevoEstilo10"><br />
            </span>
            </strong>
            <br />
            <asp:GridView ID="GV_puntos" runat="server" BackColor="White" HorizontalAlign="Center" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GV_puntos_SelectedIndexChanged" EmptyDataText="Aún no te han puntuado!" AutoGenerateColumns="False" >
                <Columns>
                    <asp:BoundField DataField="cantidad" HeaderText="Puntos" />
                    <asp:BoundField DataField="fecha_puntuacion" HeaderText="Fecha" />
                    <asp:BoundField DataField="nombre_empresa" HeaderText="Nombre de la empresa" />
                    <asp:BoundField DataField="estado" HeaderText="Estado" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#7197D6" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#6F9FEE" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            </td>
    </tr>
    <tr>
        <td class="auto-style41">
            <strong class="nuevoEstilo11">La personas dicen de mi:<br />
            <br />
            <br />
            </strong><asp:GridView ID="GV_comentarios" HorizontalAlign="Center" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" EmptyDataText="No tienes comentarios aún" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="comentario" HeaderText="Comentario" />
                    <asp:BoundField DataField="fecha_comentario" HeaderText="Fecha" />
                    <asp:BoundField DataField="nombre_empresa" HeaderText="Nombre de la empresa" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#6F9FED" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#6F9FED" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <strong>
            <br />
            <br />
            <span class="auto-style5">Tus citas:</span><br />
            <asp:GridView ID="GV_MisCitasAsp" runat="server" HorizontalAlign="Center" DataSourceID="ODS_Miscitasaspi" EmptyDataText="No tienes citas pendientes">
                <HeaderStyle BackColor="#6F9FED" ForeColor="White" />
                <RowStyle BackColor="White" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ODS_Miscitasaspi" runat="server" SelectMethod="VerMisCitasAsp" TypeName="DAspirantes">
                <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            </strong>
        </td>
    </tr>
    <tr>
        <td class="auto-style41">
            &nbsp;</td>
    </tr>
    </table>
</asp:Content>

