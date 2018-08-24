<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAspirante.master" AutoEventWireup="true" CodeFile="~/controller/VerOfertas.aspx.cs" Inherits="view_VerOfertas" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <SCRIPT language=Javascript>  
        function caracteres(evt)
        {

            var charCode = (evt.which) ? evt.which : event.keyCode;

            if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (charCode > 47 && charCode < 58)|| (charCode < 33 && charCode > 31) || (charCode < 9 && charCode > 7) )

             return true;  

                return false;
        }

  </SCRIPT>
    <style type="text/css">
    .titulo {
        font-family: "malgun Gothic";
        font-size: xx-large;
        font-weight: bold;
    }
    .auto-style22 {
        text-align: center;
        font-family: "malgun Gothic";
        font-size: xx-large;
        font-weight: bold;
        color: #263544;
    }
    .busqueda {
        text-align: center;
        font-family: "malgun Gothic";
        font-size: xx-large;
        font-weight: bold;
        color: #263544;
        border-radius: 30px;
    }
        .nuevoEstilo5 {
            font-family: "malgun Gothic";
            font-size: small;
            font-weight: bold;
        }
        .auto-style23 {
            width: 50%;
        }
        .datalistofertas {
            font-family: "malgun Gothic";
            font-size: medium;
            font-weight: bold;
        }
        .auto-style25 {
            font-weight: normal;
        }
        .auto-style26 {
            width: 50%;
            height: 25px;
            text-align: right;
        }
        .auto-style33 {
            width: 50%;
            text-align: center;
            height: 31px;
            background-color: #C8ECF4;
        }
        .auto-style34 {
            width: 176px;
        }
        .auto-style35 {
            width: 459px;
        }
        .nuevoEstilo6 {
            font-family: "MALgun Gothic";
        }
        .auto-style36 {
            font-family: "MALgun Gothic";
            color: #CC0000;
        }
        .auto-style38 {
            background-color: #C8ECF4;
        }
        .auto-style39 {
            font-weight: normal;
            text-align: center;
            width: 554px;
            height: 95px;
            background-color: #FFFFFF;
        }
        .auto-style40 {
            width: 50%;
            height: 95px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style41 {
            font-family: "malgun Gothic";
            font-size: medium;
            font-weight: bold;
            background-color: #FFFFFF;
        }
        .ErrorBusqueda {
            font-family: "malgun Gothic";
            font-size: medium;
            color: #EF4836;
        }
        .auto-style42 {
            text-align: center;
            height: 31px;
            background-color: #C8ECF4;
        }
        .nuevoEstilo7 {
            font-family: "MAlgun Gothic";
            font-size: medium;
            font-weight: bold;
        }
        .auto-style43 {
            font-family: "malgun Gothic";
            font-size: large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style22" colspan="2">¡Encuentra el empleo que estás buscando!<br />
            <asp:Image ID="IMG_buscaroferta" runat="server" Height="96px" ImageUrl="~/imagenes/buscaroferta.png" Width="134px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style33">
            &nbsp;</td>
        <td>
            <asp:TextBox ID="TB_BuscaOferta" runat="server" Height="25px" Width="160px" OnTextChanged="TB_BuscaOferta_TextChanged" TextMode="Search" onkeypress="return caracteres(event)" MaxLength="30"></asp:TextBox>
            &nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="26px" ImageUrl="~/imagenes/lupabuscaroferta.png" Width="33px" OnClick="ImageButton1_Click" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong class="nuevoEstilo5">Buscar</strong></td>
    </tr>
    <tr>
        <td class="auto-style42" colspan="2">
            <asp:Label ID="L_ErrorBuscarOferta" runat="server" CssClass="auto-style43"></asp:Label>
            </td>
    </tr>
    <tr>
        <td colspan="2">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style34">
                        &nbsp;</td>
                    <td class="auto-style35">
            &nbsp;&nbsp;
            <asp:DataList ID="DL_Ofertas" runat="server"  DataKeyNames="id_oferta" RepeatDirection="Horizontal" DataKeyField="nombre_oferta" OnItemCommand="DL_ofertas_itemComand" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="441px" Width="434px" CssClass="auto-style38">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <ItemTemplate>
                    <table class="auto-style41">
                        <tr>
                            <td class="auto-style28">Nombre de la oferta:</td>
                            <td class="auto-style29">
                                <asp:Label ID="LB_nombreempresa" runat="server" Text='<%# Bind("nombre_oferta") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="auto-style39">
                                <asp:Image ID="IMG_logoempresa" runat="server" ImageUrl='<%# Eval("logo") %>' Height="150px" Weight="150px"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style40">Salario:</td>
                            <td class="auto-style27">
                                <asp:Label ID="LB_salarioOferta" runat="server" Text='<%# Eval("sueldo") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">Tiempo:</td>
                            <td class="auto-style29">
                                <asp:Label ID="LB_TiempoOferta" runat="server" Text='<%# Eval("horario") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">¿Te gusta esta oferta?</td>
                            <td class="auto-style30">
                                <asp:LinkButton ID="LB_ampliaroferta" runat="server"  CssClass="auto-style31" CommandArgument='<%# Eval("id_oferta") %>' CommandName="ver mas"  >Ver más</asp:LinkButton>
                                <br />
                                <asp:LinkButton ID="LinkButton1" runat="server"  CssClass="auto-style31" CommandArgument='<%# Eval("id_empresa") %>' CommandName="ver empresa" >Ver empresa</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            </asp:DataList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style33">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style42" colspan="2">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

