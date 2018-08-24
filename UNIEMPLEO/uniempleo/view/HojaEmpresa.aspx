<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterEmpresa.master" AutoEventWireup="true" CodeFile="~/controller/HojaEmpresa.aspx.cs" Inherits="view_HojaEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <SCRIPT language=Javascript>  
        function Letras(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode;

            if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (charCode < 33 && charCode > 31) || (charCode < 9 && charCode > 7))

                return true;

            return false;
        }


        function Numeros(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode;

            if ((charCode > 47 && charCode < 58) || (charCode < 33 && charCode > 31) || (charCode < 9 && charCode > 7))

                return true;

            return false;
        }

        function Caracteres(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode;

            if ((charCode > 47 && charCode < 58) ||  ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123)) || (charCode < 33 && charCode > 31) || (charCode < 9 && charCode > 7))

                return true;

            return false;
        }
        function Direccion(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode;

            if ((charCode > 32 && charCode < 60) || ((charCode > 62 && charCode < 126)) || (charCode < 33 && charCode > 31) || (charCode < 9 && charCode > 7))

                return true;

            return false;
        }


   

  
  </SCRIPT>
    <style type="text/css">
        .auto-style33 {
            font-weight: normal;
        }
        .auto-style34 {
            color: #000000;
        }
        .auto-style36 {
            height: 49px;
        }
        .auto-style37 {
            font-size: medium;
            color: #000000;
        }
        .auto-style51 {
            font-size: medium;
            background-color: #98CBFE;
        }
        .auto-style52 {
            font-size: medium;
            width: 153px;
            background-color: #99CCFF;
        }
        .auto-style54 {
            width: 191px;
            background-color: #98CBFE;
        }
        .auto-style55 {
            font-size: medium;
            color: #000000;
            width: 191px;
            background-color: #99CCFF;
            height: 47px;
        }
        .auto-style56 {
            text-align: center;
            background-color: #99CCFF;
        }
        .auto-style57 {
        font-size: medium;
        width: 191px;
        background-color: #99CCFF;
    }
        .auto-style58 {
            background-color: #98CBFE;
        }
        .auto-style59 {
            font-size: small;
            color: #000000;
            font-family: "MALgun Gothic";
            font-weight: bold;
            background-color: #98CBFE;
        }
        .auto-style60 {
            color: #000000;
            width: 30%;
            text-align: center;
            height: 54px;
            border-color: #6F9FED;
            background-color: #98CBFE;
        }
        .auto-style61 {
            background-color: #99CCFF;
        }
        .auto-style62 {
            font-size: small;
            color: #000000;
            font-family: "MALgun Gothic";
            font-weight: bold;
            background-color: #99CCFF;
            height: 47px;
        }
        .auto-style63 {
            font-weight: bold;
            font-family: "Malgun Gothic";
            background-color: #99CCFF;
        }
        .auto-style64 {
            height: 49px;
            font-size: medium;
            color: #000000;
            background-color: #99CCFF;
        }
    .auto-style66 {
        color: #000000;
        width: 30%;
        text-align: center;
        height: 54px;
        border-color: #6F9FED;
        background-color: #99CCFF;
    }
    .auto-style67 {
        color: #000000;
        width: 30%;
        text-align: center;
        height: 54px;
        border-color: #6F9FED;
        background-color: #98CBFE;
        font-size: large;
    }
    .auto-style68 {
        font-size: medium;
        width: 191px;
        background-color: #98CBFE;
    }
        .auto-style69 {
            background-color: #98CBFE;
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style37">
    <tr>
        <td colspan="4" class="auto-style63"><strong><span class="auto-style67">HOJA DE VIDA EMPRESA - FORMATO UE</span></strong></td>
    </tr>
    <tr>
        <td rowspan="4" class="auto-style56">
            <asp:Image ID="Image9" runat="server" Height="196px" ImageUrl="~/imagenes/Empresa1.png" Width="187px" CssClass="auto-style58" />
        </td>
        <td class="auto-style52"><span class="auto-style66">Nombre Empresa:</span><span class="auto-style34"><br class="auto-style61" />
            <asp:TextBox ID="TB_nombreE" runat="server" MaxLength="25" CssClass="auto-style61" onkeypress="return Letras(event)"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_nombrep" runat="server" ControlToValidate="TB_nombreE" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style61" ValidationGroup="sinregistro">*</asp:RequiredFieldValidator>
            <br class="auto-style61" />
        </td>
        <td class="auto-style57"><span class="auto-style66">Nit:</span><span class="auto-style34"><br class="auto-style61" />
            <asp:TextBox ID="TB_Nit" runat="server" MaxLength="12" CssClass="auto-style61" onkeypress="return Caracteres(event)"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_nombrep0" runat="server" ControlToValidate="TB_Nit" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style61" ValidationGroup="sinregistro">*</asp:RequiredFieldValidator>
            <br class="auto-style61" />
            </td>
        <td class="auto-style61">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style52"><span class="auto-style66">Direccion:</span><span class="auto-style34"><br class="auto-style61" />
            <asp:TextBox ID="TB_direccionE" runat="server" CssClass="auto-style61" onkeypress="return Direccion(event)" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_nombrep1" runat="server" ControlToValidate="TB_direccionE" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style61" ValidationGroup="sinregistro">*</asp:RequiredFieldValidator>
            <br class="auto-style61" />
        </td>
       <td class="auto-style57"><span class="auto-style60">Telefono:</span><br class="auto-style58" />
            <span class="auto-style34">
            <asp:TextBox ID="TB_telefonoE" runat="server" TextMode="Phone" MaxLength="10" CssClass="auto-style58" onkeypress="return Numeros(event)"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_nombrep11" runat="server" ControlToValidate="TB_telefonoE" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style58" ValidationGroup="sinregistro">*</asp:RequiredFieldValidator>
            <br class="auto-style58" />
            </span><span class="auto-style58"></span></span></td>
        <td class="auto-style64"></td>
    </tr>
    <tr>
        <td class="auto-style52"><span class="auto-style60">Pais:</span><span class="auto-style34"><br class="auto-style58" />
            <asp:TextBox ID="TB_paisE" runat="server" MaxLength="15" CssClass="auto-style58" onkeypress="return Letras(event)"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_nombrep2" runat="server" ControlToValidate="TB_paisE" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style58" ValidationGroup="sinregistro">*</asp:RequiredFieldValidator>
            <br class="auto-style58" />
            </td>
        <td class="auto-style57"><span class="auto-style60">Departamento:</span><br class="auto-style58" />
            <span class="auto-style34">
            <asp:TextBox ID="TB_deptoE" runat="server" MaxLength="15" CssClass="auto-style58" onkeypress="return Letras(event)"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_nombrep10" runat="server" ControlToValidate="TB_deptoE" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style58">*</asp:RequiredFieldValidator>
            <br class="auto-style58" />
            </span><span class="auto-style58"></span></span></td>
        <td class="auto-style58">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style52"><span class="auto-style60">Ciudad:</span><span class="auto-style34"><br class="auto-style58" />
            <asp:TextBox ID="TB_ciudadE" runat="server" MaxLength="20" CssClass="auto-style58" onkeypress="return Letras(event)"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_nombrep3" runat="server" ControlToValidate="TB_ciudadE" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style58">*</asp:RequiredFieldValidator>
            <br class="auto-style58" />
            </span></td>
        <td class="auto-style68"><span class="auto-style60">Tipo de empresa:</span><br class="auto-style58" />
            <asp:DropDownList ID="DDL_TipoEmpresa" runat="server" Height="25px" Width="143px" CssClass="auto-style58">
                <asp:ListItem Value="0">Seleccione</asp:ListItem>
                <asp:ListItem Value="1">Micro Empresa</asp:ListItem>
                <asp:ListItem Value="2">Pequeña Empresa</asp:ListItem>
                <asp:ListItem Value="3">Mediana Empresa</asp:ListItem>
                <asp:ListItem Value="4">Gran Empresa</asp:ListItem>
            </asp:DropDownList>
            <span class="auto-style34">
            <asp:RequiredFieldValidator ID="RFV_nombrep9" runat="server" ControlToValidate="DDL_TipoEmpresa" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style58" ValidationGroup="sinregistro">*</asp:RequiredFieldValidator>
            <br class="auto-style58" />
            </span><span class="auto-style58"></span></span></td>
        <td class="auto-style58">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style58">&nbsp;</td>
        <td class="auto-style52"><span class="auto-style60">Numero empleados:</span><span class="auto-style34"><br class="auto-style58" />
            <asp:TextBox ID="TB_numEmpleado" runat="server" TextMode="Number" CssClass="auto-style58" onkeypress="return Numeros(event)" MaxLength="10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_nombrep4" runat="server" ControlToValidate="TB_numEmpleado" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style58" ValidationGroup="sinregistro">*</asp:RequiredFieldValidator>
            <br class="auto-style58" />
            </td>
        <td class="auto-style68"><span class="auto-style60">Fecha constitucion:</span><br class="auto-style58" />
            <span class="auto-style34">
            <asp:TextBox ID="TB_fechaC" runat="server" TextMode="Date" Height="16px" Width="140px" CssClass="auto-style58"></asp:TextBox>
            </span>
                <asp:Label ID="L_ErrorCEmpresa" runat="server" ForeColor="Red" CssClass="auto-style58"></asp:Label>
            </td>
        <td rowspan="4" class="auto-style58">
            <asp:Image ID="Image10" runat="server" Height="175px" ImageUrl="~/imagenes/SalaJuntas.png" Width="215px" CssClass="auto-style58" />
        </td>
    </tr>
    <tr>
        <td class="auto-style58">&nbsp;</td>
        <td class="auto-style52"><span class="auto-style60">Forma juridica:</span><span class="auto-style34"><br class="auto-style58" />
            <asp:TextBox ID="TB_formaJ" runat="server" MaxLength="15" CssClass="auto-style58" onkeypress="return Letras(event)"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_nombrep5" runat="server" ControlToValidate="TB_formaJ" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style58" ValidationGroup="sinregistro">*</asp:RequiredFieldValidator>
            <br class="auto-style58" />
            </td>
        <td class="auto-style57"><span class="auto-style60">Sector economico:</span><span class="auto-style34"><br class="auto-style58" />
            
            <asp:TextBox ID="TB_sectorE" runat="server" MaxLength="15" CssClass="auto-style58" onkeypress="return Letras(event)"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_nombrep7" runat="server" ControlToValidate="TB_sectorE" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style58" ValidationGroup="sinregistro">*</asp:RequiredFieldValidator>
            <br class="auto-style58" />
            </td>
    </tr>
    <tr>
        <td class="auto-style69"></td>
        <td class="auto-style62"><span class="auto-style58">Logo:</span><br class="auto-style58" />
            <asp:FileUpload ID="FU_logo" runat="server" CssClass="auto-style58" />
            <br class="auto-style58" />
        </td>
        <td class="auto-style55"><span class="auto-style59">Pagina web:</span><span class="auto-style37"><br class="auto-style58" />
            <span class="auto-style34">
            <asp:TextBox ID="TB_pagina" runat="server" MaxLength="25" CssClass="auto-style58" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_nombrep6" runat="server" ControlToValidate="TB_pagina" ErrorMessage="RequiredFieldValidator" ForeColor="Red" CssClass="auto-style58" ValidationGroup="sinregistro">*</asp:RequiredFieldValidator>
            <br class="auto-style58" />
            </span></span></td>
    </tr>
    <tr>
        <td class="auto-style58">&nbsp;</td>
        <td colspan="2" class="auto-style61">
              
                <asp:Button ID="BTN_agregarE" runat="server" OnClick="BTN_agregarE_Click" Text="AGREGAR" BackColor="#7197D6" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Height="34px" Width="94px" BorderStyle="Double" CssClass="auto-style51" ValidationGroup="sinregistro" />
                </td>
    </tr>
    <tr>
        <td class="auto-style58">&nbsp;</td>
        <td class="auto-style58">&nbsp;</td>
        <td class="auto-style54">&nbsp;</td>
        <td class="auto-style58">&nbsp;</td>
    </tr>
</table>
</asp:Content>

