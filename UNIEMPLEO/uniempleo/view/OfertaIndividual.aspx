<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAspirante.master" AutoEventWireup="true" CodeFile="~/controller/OfertaIndividual.aspx.cs" Inherits="view_OfertaIndividual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .Datalist {
            font-family: "malgun Gothic";
        }
        .auto-style21 {
            text-align: justify;
        }
        .auto-style24 {
            font-family: "Malgun Gothic";
            font-size: xx-large;
        }
        .auto-style29 {
            height: 35px;
        }
        .auto-style33 {
            width: 100%;
            height: 197px;
        }
        .auto-style34 {
            height: 72px;
        }
        .auto-style22 {
            font-family: "Malgun Gothic";
            font-size: medium;
        }
        .auto-style35 {
            font-family: "Malgun Gothic";
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style33">
        <tr>
            <td class="auto-style34"><strong><span class="auto-style24">
                <br />
                <asp:Image ID="Image10" runat="server" Height="157px" ImageUrl="~/imagenes/analizar_oferta2.png" Width="228px" />
                </span></strong>
                <br />
            </td>
            <td class="auto-style34"><strong><span class="auto-style35">INFORMACION COMPLETA DE OFERTA</span></strong></td>
            <td class="auto-style34">
                <asp:Image ID="Image9" runat="server" Height="156px" ImageUrl="~/imagenes/ofertas.png" Width="147px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style29">    <asp:DataList ID="DL_oferta" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" HorizontalAlign="Center" >
                <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
            <div class="auto-style21">
                <span class="auto-style22"><strong>Nombre de la empresa: </strong></span>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style22" Text='<%# Bind("nombre_empresa") %>'></asp:Label>
                <br class="auto-style22" />
                <span class="auto-style22"><strong>Nombre de la oferta:&nbsp; </strong></span>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style22" Text='<%# Bind("nombreo") %>'></asp:Label>
                <br class="auto-style22" />
                <span class="auto-style22"><strong>Horario:&nbsp;&nbsp;&nbsp; </strong></span>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style22" Text='<%# Bind("horario") %>'></asp:Label>
                <br class="auto-style22" />
                <span class="auto-style22"><strong>Salario:&nbsp; </strong></span>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style22" Text='<%# Bind("sueldo") %>'></asp:Label>
                <br class="auto-style22" />
                <span class="auto-style22"><strong>Tipo de contrato:&nbsp; </strong></span>
                <asp:Label ID="Label5" runat="server" CssClass="auto-style22" Text='<%# Bind("tipoc") %>'></asp:Label>
                <br class="auto-style22" />
                <span class="auto-style22"><strong>Funciones: </strong></span>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style22" Text='<%# Bind("funciones") %>'></asp:Label>
                <br />
                <br />
                <span class="auto-style22"><strong>¿Te gusta esta oferta? </strong></span>
                <br class="auto-style22" />
                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style22" OnClick="LinkButton1_Click">Quiero agendar una cita</asp:LinkButton>
            </div>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>
                <strong>
                <asp:Label ID="LB_ErrorAgendaAsp" runat="server" ForeColor="#FE2C2C"></asp:Label>
                </strong>
                <br />
            </td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
    </table>
    </asp:Content>

