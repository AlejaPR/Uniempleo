<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterEmpresa.master" AutoEventWireup="true" CodeFile="~/controller/VerAspirantes.aspx.cs" Inherits="view_VerAspirantes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style33 {
            color: #000000;
        }
        .auto-style34 {
            width: 606px;
        }
        .auto-style37 {
            width: 289px;
        }
        .auto-style38 {
            font-size: medium;
            color: #000000;
        }
        .auto-style39 {
            width: 253px;
            text-align: center;
        }
        .auto-style40 {
            margin-left: 28px;
        }
        .auto-style42 {
            width: 253px;
            text-align: center;
            height: 54px;
            border-color: #6F9FED;
            background-color: #99CCFF;
        }
        .auto-style44 {
            background-color: #91C1F1;
            margin-top: 0px;
        }
        .auto-style45 {
            width: 52px;
            font-family: "MALgun Gothic";
            font-size: small;
            font-weight: bold;
            background-color: #99CCFF;
        }
        .auto-style47 {
            height: 54px;
            font-size: large;
            font-weight: normal;
        }
        .auto-style48 {
            height: 74px;
        }
        .auto-style49 {
            height: 63px;
        }
        .auto-style50 {
            font-size: small;
            color: #000000;
            font-family: "malgun Gothic";
            font-weight: bold;
            width: 1062px;
        }
        .auto-style51 {
            width: 52px;
            font-family: "MALgun Gothic";
            font-size: small;
            font-weight: bold;
            background-color: #99CCFF;
            height: 577px;
        }
        .auto-style52 {
            height: 577px;
            width: 554px;
        }
        .auto-style53 {
            font-size: large;
        }
        .auto-style54 {
            font-size: medium;
        }
        .auto-style55 {
            height: 74px;
            width: 554px;
        }
        .auto-style56 {
            width: 554px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style50">
        <tr>
            <td colspan="3"><span class="auto-style33">¡Encuentra el aspirante que estás buscando!</span><br />
                <asp:Image ID="IMG_buscaroferta" runat="server" Height="107px" ImageUrl="~/imagenes/masterAspirante.png" Width="129px" CssClass="auto-style40" />
            </td>
        </tr>
        <tr>
            <td class="auto-style48" colspan="2">
            <asp:Label ID="L_ErrorBuscarAspirante" runat="server" CssClass="auto-style47"></asp:Label>
            </td>
            <td class="auto-style55">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TB_BuscaAspirante" runat="server" Height="25px" Width="160px" ></asp:TextBox>
            <asp:ImageButton ID="IBAspirante" runat="server" Height="26px" ImageUrl="~/imagenes/lupabuscaroferta.png" Width="33px" OnClick="IBAspirante_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style51"></td>
            <td class="auto-style49">
                <span class="auto-style54">&nbsp;Aspirantes interesados<br />
                </span><span class="auto-style53"> </span>
                <asp:DataList ID="DL_mensajes" runat="server"  DataKeyNames="id_aspirante"   RepeatDirection="Horizontal"  OnItemCommand="DL_mensajes_itemComand"  RepeatColumns="3" DataKeyField="nombre_aspirante" CssClass="auto-style44" Height="346px" Width="417px">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text="Nombre Aspirante"></asp:Label>
                        &nbsp;<asp:Label ID="Label8" runat="server" Text='<%# Bind("nombre_aspirante") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="Mensaje"></asp:Label>
                        &nbsp;<asp:Label ID="Label10" runat="server" Text='<%# Bind("mensaje") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label11" runat="server" Text="Nombre Oferta"></asp:Label>
                        &nbsp;<asp:Label ID="Label12" runat="server" Text='<%# Bind("nombre_oferta") %>'></asp:Label>
                        <br />
                        &nbsp;<br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="auto-style52">
                <asp:DataList ID="DL_a" runat="server" DataKeyNames="id_aspirante" RepeatDirection="Horizontal" DataKeyField="nombre_aspirante" OnItemCommand="DL_a_itemComand" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" RepeatColumns="3">
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <ItemTemplate>
                        Nombre:<asp:Label ID="Label1" runat="server" Text='<%# Bind("nombre_aspirante") %>'></asp:Label>
                        <br />
                        <br />
                        Apellido:<asp:Label ID="Label2" runat="server" Text='<%# Bind("apellido_aspirante") %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Image ID="Image9" runat="server" Height="82px" ImageUrl='<%# Bind("foto") %>' Width="77px" />
                        <br />
                        <br />
                        Profesion:<asp:Label ID="Label3" runat="server" Text='<%# Bind("titulo") %>'></asp:Label>
                        &nbsp;<br /> Habilidades:<br />
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("habilidad1") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("habilidad2") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("habilidad3") %>'></asp:Label>
                        <br />
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("id_aspirante") %>' CommandName="ver mas">Ver Hoja de vida</asp:LinkButton>
                                <br />
                                <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                </asp:DataList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style45">&nbsp; &nbsp;</td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style56">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style56">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

