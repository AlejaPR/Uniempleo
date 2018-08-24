<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAdministrador.master" AutoEventWireup="true" CodeFile="~/controller/Administrador.aspx.cs" Inherits="view_Administrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style44 {
            font-family: "malgun Gothic";
            font-weight: bold;
            background-color: #C34F4C;
        }
        .auto-style45 {
            text-align: center;
        }
        .auto-style47 {
            font-family: "MALgun Gothic";
            font-weight: bold;
            text-align: center;
            font-size: medium;
            color: #000000;
            background-color: #D64541;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style45">
                <asp:Button ID="bt_reg_admi" runat="server" BorderColor="#C34F4C" BorderStyle="Double" CssClass="auto-style47" OnClick="bt_reg_admi_Click" Text="Nuevo Administrador" Height="48px" Width="189px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style45">
                <asp:Image ID="Image8" runat="server" Height="60px" ImageUrl="~/imagenes/agregar_admi.png" Width="66px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style45">
                &nbsp;</td>
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

