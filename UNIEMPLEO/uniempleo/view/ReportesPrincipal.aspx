<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAdministrador.master" AutoEventWireup="true" CodeFile="~/controller/ReportesPrincipal.aspx.cs" Inherits="view_ReportesPrincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .nuevoEstilo14 {
            font-family: "MALgun Gothic";
        }
        .nuevoEstilo15 {
            font-family: "MALgun Gothic";
        }
        .nuevoEstilo16 {
            font-family: "MALgun Gothic";
        }
        .auto-style42 {
            font-family: "MALgun Gothic";
            font-size: small;
            font-weight: bold;
            background-color: #C34F4C;
        }
        .auto-style44 {
            font-family: "MALgun Gothic";
            font-weight: bold;
            background-color: #C34F4C;
        }
        .auto-style47 {
            font-family: "MALgun Gothic";
            font-size: medium;
            font-weight: bold;
            color: #000000;
            text-align: center;
            margin-left: 103px;
            background-color: #D64541;
        }
        .auto-style48 {
            font-family: "MALgun Gothic";
            font-weight: bold;
            text-align: center;
            font-size: medium;
            color: #000000;
            margin-left: 107px;
            background-color: #D64541;
        }
        .auto-style49 {
            font-family: "MALgun Gothic";
            font-weight: bold;
            text-align: center;
            font-size: medium;
            color: #000000;
            margin-left: 103px;
            background-color: #D64541;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="bt_aspirantes" runat="server" OnClick="bt_aspirantes_Click" Text="Aspirantes Registrados" BorderColor="#C34F4C" BorderStyle="Double" CssClass="auto-style47" Height="47px" Width="197px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Image ID="Image8" runat="server" Height="56px" ImageUrl="~/imagenes/birretechica.png" Width="60px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="bt_rep_empresa" runat="server" OnClick="bt_rep_empresa_Click" Text="Empresas Registradas" BorderColor="#C34F4C" BorderStyle="Double" CssClass="auto-style49" Height="41px" Width="195px" />
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Image ID="Image9" runat="server" Height="43px" ImageUrl="~/imagenes/idi-empresa.png" Width="52px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="bt_Ofertas" runat="server" OnClick="bt_Ofertas_Click" Text="Ofertas actuales" BorderColor="#C34F4C" BorderStyle="Double" CssClass="auto-style48" Height="44px" Width="191px" />
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Image ID="Image10" runat="server" Height="46px" ImageUrl="~/imagenes/publicacion.png" Width="52px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

