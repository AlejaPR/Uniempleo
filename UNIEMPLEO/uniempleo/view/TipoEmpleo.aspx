<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAspirante.master" AutoEventWireup="true" CodeFile="~/controller/TipoEmpleo.aspx.cs" Inherits="view_TipoEmpleo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            font-size: x-large;
            font-family: "Malgun Gothic";
            text-align: center;
        }
        .auto-style25 {
            margin-left: 2px;
        }
        .auto-style26 {
            height: 23px;
            text-align: left;
            width: 194px;
        }
        .auto-style28 {
            height: 25px;
            text-align: left;
            width: 194px;
        }
        .auto-style30 {
            text-align: left;
        }
        .auto-style31 {
            height: 77px;
            width: 215px;
        }
        .auto-style32 {
            height: 23px;
            width: 215px;
        }
        .auto-style33 {
            height: 25px;
            text-align: center;
            width: 215px;
        }
        .auto-style51 {
            font-size: medium;
        }
        .auto-style52 {
            text-align: center;
        }
        .auto-style53 {
            height: 77px;
            width: 194px;
        }
        .nuevoEstilo5 {
            font-family: "MALgun Gothic";
        }
        .auto-style54 {
            text-align: center;
            width: 554px;
            height: 95px;
            margin-left: 2px;
            background-color: #C8ECF4;
        }
        .auto-style55 {
            height: 95px;
            text-align: center;
            width: 194px;
            background-color: #C1E3EB;
        }
        .nuevoEstilo6 {
            font-family: "MALgun Gothic";
        }
        .nuevoEstilo7 {
            font-family: "Malgun Gothic";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style21" colspan="3"><strong>TIPO DE EMPLEO 
                <br />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style53">
                <div class="auto-style30">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Text="Tipo de contrato:"></asp:Label>
&nbsp;
                </div>
                <div class="auto-style30">
                    <asp:RadioButtonList ID="RBL_termino" runat="server" CssClass="auto-style54" Width="157px">
                        <asp:ListItem Value="1">Termino fijo</asp:ListItem>
                        <asp:ListItem Value="2">Termino indefinido</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </div>
            </td>
            <td rowspan="4">
                <asp:Image ID="Image8" runat="server" Height="149px" ImageUrl="~/imagenes/reloj.png" Width="156px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style32"></td>
            <td class="auto-style55">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Text="Horario:"></asp:Label>
&nbsp;
                <br />
                <asp:DropDownList ID="DDL_horario" runat="server">
                    <asp:ListItem Value="1">Diurno</asp:ListItem>
                    <asp:ListItem Value="2">Nocturno</asp:ListItem>
                </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="RFV_nombreA0" runat="server" ControlToValidate="DDL_horario" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatost"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style33" rowspan="2"></td>
            <td class="auto-style28">
                <div class="auto-style30">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Text="Tiempo laboral:"></asp:Label>
&nbsp;
                <br />
                </div>
                <div class="auto-style30">
                    <asp:RadioButtonList ID="RBL_tiempo" runat="server">
                        <asp:ListItem Value="0">Por horas</asp:ListItem>
                        <asp:ListItem Value="1">Medio tiempo</asp:ListItem>
                        <asp:ListItem Value="2">Tiempo completo</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">
                <span class="nuevoEstilo5"><strong>HOJA DE VIDA:</strong></span><br />
                <br />
                <asp:FileUpload ID="Fu_hoja" runat="server" />
                &nbsp;<asp:RequiredFieldValidator ID="RFV_nombreA" runat="server" ControlToValidate="Fu_hoja" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatost"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style52">
                <br />
              
                <asp:Button ID="BTN_agrega" runat="server" OnClick="BTN_agrega_Click" Text="AGREGAR" BackColor="#7197D6" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Height="34px" Width="94px" BorderStyle="Double" CssClass="auto-style51" ValidationGroup="sindatost" />
                </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style52">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style52">
                <strong>
                <asp:ObjectDataSource ID="ODS_tipoe" runat="server" SelectMethod="obtenerTipoe" TypeName="Dmodificar">
                    <SelectParameters>
                        <asp:SessionParameter Name="idper" SessionField="id" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                </strong>
                </td>
        </tr>
    </table>
</asp:Content>

