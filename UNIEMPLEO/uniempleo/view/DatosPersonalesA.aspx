<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAspirante.master" AutoEventWireup="true" CodeFile="~/controller/DatosPersonalesA.cs" Inherits="view_hvaspirante1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="js/Redirecciones.js"></script> 
    <SCRIPT language=Javascript>  
        function Letras(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode;

            if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))

                return true;

            return false;
        }


        function Numeros(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode;

            if ((charCode > 48 && charCode < 58))

                return true;

            return false;
        }

        function Caracteres(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode;

            if ((charCode > 48 && charCode < 58) ||  ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123)))

                return true;

            return false;
        }
        function Direccion(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode;

            if ((charCode > 32 && charCode < 60) || ((charCode > 62 && charCode < 126)))

                return true;

            return false;
        }


   

  
  </SCRIPT>
    <style type="text/css">
        .auto-style21 {
            text-align: center;
            background-color: #B8D5DB;
            border-color: #7197D6;
            width: 100%;
            height: 100%;
        }
        .nuevoEstilo6 {
            font-family: "malgun Gothic";
            font-size: xx-large;
            font-weight: bold;
        }
        .nuevoEstilo7 {
            font-family: "malgun Gothic";
            font-weight: bold;
        }
        .auto-style26 {
            font-size: large;
            font-weight: 700;
            background-color: #B8D5DB;
        }
        .auto-style27 {
            background-color: #B8D5DB;
        }
        .auto-style28 {
            font-weight: bold;
            background-color: #B8D5DB;
        }
        .auto-style29 {
            text-align: center;
            font-family: "malgun Gothic";
            font-size: xx-large;
            font-weight: bold;
            color: #071B3D;
            background-color: #B8D5DB;
        }
        .auto-style30 {
            font-weight: bold;
            height: 59px;
            background-color: #B8D5DB;
        }
        .auto-style31 {
            height: 59px;
            background-color: #B8D5DB;
            text-align: left;
        }
        .auto-style32 {
            font-weight: bold;
            height: 55px;
            background-color: #B8D5DB;
        }
        .auto-style33 {
            height: 55px;
            background-color: #B8D5DB;
            text-align: left;
        }
        .auto-style34 {
            height: 129px;
            background-color: #B8D5DB;
        }
        .auto-style35 {
            font-weight: bold;
            height: 129px;
            background-color: #B8D5DB;
        }
        .auto-style36 {
            
            height: 25px;
            background-color: #B8D5DB;
        }
        .auto-style37 {
            height: 25px;
            background-color: #B8D5DB;
        }
        .auto-style38 {
            background-color: #B8D5DB;
            text-align: left;
        }
        .auto-style39 {
            background-color: #B8D5DB;
            font-size: small;
        }
        .auto-style40 {
            height: 25px;
            font-size: medium;
            color: #000000;
            text-align: right;
            background-color: #B8D5DB;
        }
        .auto-style41 {
            height: 25px;
            font-size: medium;
            color: #000000;
            background-color: #B8D5DB;
        }
        .auto-style42 {
            background-color: #B8D5DB;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style21" border="0">
        <tr>
            <td class="auto-style29" colspan="4">HOJA DE VIDA PERSONAL - FORMATO UE</td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style27" colspan="2">
                <asp:Image ID="Image8" runat="server" Height="85px" ImageUrl="~/imagenes/datoshv.png" Width="94px" CssClass="auto-style27" />
            </td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr class="nuevoEstilo7">
            <td class="auto-style27" rowspan="2">&nbsp;</td>
            <td class="auto-style27" rowspan="2">&nbsp;</td>
            <td class="auto-style27">Nombre:</td>
            <td class="auto-style38">
                <asp:TextBox ID="tb_nombre" runat="server" MaxLength="15" onkeypress="return Letras(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_nombreA" runat="server" ControlToValidate="tb_nombre" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatos"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr class="nuevoEstilo7">
            <td class="auto-style27">Apellido:</td>
            <td class="auto-style38">
                <asp:TextBox ID="tb_apellido" runat="server" MaxLength="15" onkeypress="return Letras(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_apelidoA" runat="server" ControlToValidate="tb_apellido" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatos"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr class="nuevoEstilo7">
            <td class="auto-style28" rowspan="4"><strong><span class="auto-style27">Fecha de nacimiento:</span></strong></td>
            <td rowspan="4" class="auto-style27">
&nbsp;<asp:TextBox ID="C_FechanacimientoA" runat="server" TextMode="Date"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RFV_FechaA" runat="server" ControlToValidate="C_FechanacimientoA" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatos"></asp:RequiredFieldValidator>
                <br class="auto-style27" />
                </strong></td>
            <td class="auto-style28"><strong><span class="auto-style27">Dirección:</span></strong></td>
            <td class="auto-style38"><strong>
                <asp:TextBox ID="TB_Direccion" runat="server" maxlength="25" style="text-align: center" CssClass="auto-style27" BackColor="White" onkeypress="return Letras(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_DireccionA" runat="server" ControlToValidate="TB_Direccion" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatos"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr class="nuevoEstilo7">
            <td class="auto-style30"><strong><span class="auto-style27">Celular:</span></strong></td>
            <td class="auto-style31"><strong>
                <asp:TextBox ID="TB_Celular" runat="server" maxlength="10" CssClass="auto-style27" BackColor="White" onkeypress="return Numeros(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_CelularA" runat="server" ControlToValidate="TB_Celular" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatos"></asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr class="nuevoEstilo7">
            <td class="auto-style32"><strong><span class="auto-style27">Número de documento:</span></strong></td>
            <td class="auto-style33"><strong>
                <asp:TextBox ID="TB_Documento" runat="server" maxlength="10" CssClass="auto-style27" BackColor="White" onkeypress="return Numeros(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_CedulaA" runat="server" ControlToValidate="TB_Documento" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatos"></asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr class="nuevoEstilo7">
            <td class="auto-style28"><strong><span class="auto-style27">Sexo:</span></strong></td>
            <td class="auto-style38"><strong>
                <asp:DropDownList ID="DDL_Sexo" runat="server" style="text-align: center" CssClass="auto-style27">
                    <asp:ListItem Value="3">Prefiero no especificar</asp:ListItem>
                    <asp:ListItem Value="1">Hombre</asp:ListItem>
                    <asp:ListItem Value="2">Mujer</asp:ListItem>
                </asp:DropDownList>
                </strong></td>
        </tr>
        <tr class="nuevoEstilo7">
            <td class="auto-style40" colspan="2">
                <asp:Label ID="L_ErrorCalendario" runat="server" ForeColor="Red" CssClass="auto-style27"></asp:Label>
            </td>
            <td class="auto-style41" colspan="2"></td>
        </tr>
        <tr class="nuevoEstilo7">
            <td class="auto-style34"></td>
            <td class="auto-style35"><strong><span class="auto-style27">Estado civil:</span></strong></td>
            <td class="auto-style34"><strong>
                <asp:RadioButtonList ID="RBL_Estado" runat="server" CssClass="auto-style27">
                    <asp:ListItem Value="Soltero/a">Soltero/a</asp:ListItem>
                    <asp:ListItem Value="Casado/a">Casado/a</asp:ListItem>
                    <asp:ListItem Value="Union libre">Union libre</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RBL_Estado" ErrorMessage="*" ForeColor="#EF4836" CssClass="auto-style27" ValidationGroup="sindatos"></asp:RequiredFieldValidator>
                </strong></td>
            <td class="auto-style34"></td>
        </tr>
        <tr class="nuevoEstilo7">
            <td class="auto-style27" colspan="4">
                <br class="auto-style27" />
                <strong><span class="auto-style27">Foto:
                </span>
                <asp:FileUpload ID="FU_Foto" runat="server" CssClass="auto-style28" BackColor="White" />
                <asp:RequiredFieldValidator ID="RFV_FotoPerfilAsp" runat="server" ControlToValidate="FU_Foto" ErrorMessage="*" ForeColor="#EF4836" CssClass="auto-style27" ValidationGroup="sindatos"></asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr class="nuevoEstilo7">
            <td class="auto-style42"></td>
            <td class="auto-style42"></td>
            <td class="auto-style42"></td>
            <td class="auto-style42"></td>
        </tr>
        <tr class="nuevoEstilo7">
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr class="nuevoEstilo7">
            <td class="auto-style27" colspan="4"><strong>
                <asp:Button ID="TB_Listo" runat="server" BackColor="#7197D6" BorderColor="White" BorderStyle="Double" CssClass="auto-style26" ForeColor="White" Height="33px" Text="AGREGAR" Width="127px" OnClick="TB_Listo_Click" Font-Bold="True" Font-Names="Malgun Gothic" ValidationGroup="sindatos" />
                &nbsp;
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

