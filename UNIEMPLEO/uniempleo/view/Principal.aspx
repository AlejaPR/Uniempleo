<%@ Page Title="" Language="C#" MasterPageFile="~/view/Masterp.master" AutoEventWireup="true" CodeFile="~/controller/Principal.aspx.cs" Inherits="views_Principal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .nuevoEstilo6 {
        font-family: "MALgun Gothic";
    }
    .auto-style16 {
            text-align: left;
            width: 859px;
        }
        .nuevoEstilo7 {
            font-family: "malgun Gothic";
            font-weight: bold;
        }
        .auto-style32 {
            text-align: right;
        }
        .nuevoEstilo8 {
            font-family: "malgun Gothic";
        }
        .auto-style33 {
            font-family: "malgun Gothic";
            font-size: medium;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #FFFFFF;
        }
        .nuevoEstilo9 {
            font-family: "malgun Gothic";
        }
        .auto-style34 {
            font-family: "malgun Gothic";
            font-size: medium;
            font-weight: bold;
            color: #FFFFFF;
        margin-right: 0px;
    }
        .auto-style36 {
            width: 33%;
        text-align: right;
    }
        .auto-style38 {
            width: 2520px;
            text-align: right;
        }
    .nuevoEstilo10 {
        font-family: "MALgun Gothic";
    }
    .auto-style39 {
        text-align: center;
        width: 2520px;
    }
    .auto-style40 {
        font-size: large;
    }
    .auto-style41 {
        font-size: large;
        color: #3A79AF;
    }
    .auto-style42 {
        color: #3A79AF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style36">
            <asp:Image ID="Image10" runat="server" Height="135px" ImageUrl="~/imagenes/flechas.png" Width="87px" />
        &nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td class="auto-style38"><strong>
            <asp:Button ID="bt_registro" runat="server" OnClick="bt_registro_Click" Text="REGISTRATE" BackColor="#47505B" BorderColor="#39C6B3" BorderStyle="Double" CssClass="auto-style34" Height="51px" Width="129px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="bt_inicio_sesion" runat="server" BackColor="#47505B" BorderColor="#39C6B3" OnClick="Btn_inicioS_Click" Text="INICIO SESION" BorderStyle="Double" CssClass="auto-style33" Height="48px" Width="130px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong></td>
        <td class="auto-style16">
            <asp:Image ID="Image11" runat="server" Height="146px" ImageUrl="~/imagenes/flechas2.png" Width="88px" />
        </td>
        <td class="auto-style32">
            <br />
            </td>
    </tr>
    <tr>
        <td rowspan="2">
            <br />
            <asp:Image ID="Image7" runat="server" ImageUrl="~/imagenes/estadistica.png" />
        </td>
        <td rowspan="2" class="auto-style39">
            <span class="nuevoEstilo10"><span class="auto-style40"><strong><span class="auto-style42">EL 80 % DE LAS PERSONAS REGISTRADAS </span>
            <br class="auto-style42" />
            <span class="auto-style42">EN NUESTRO PORTAL DE EMPLEO,</span></strong></span><strong><br class="auto-style41" />
            </strong><span class="auto-style41"><strong>CONSIGUEN EL TRABAJO DE SUS SUEÑOS.</strong><table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </span></span>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <br />
            <asp:Image ID="Image8" runat="server" ImageUrl="~/imagenes/persona.png" />
        </td>
    </tr>
</table>
</asp:Content>

