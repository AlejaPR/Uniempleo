<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAdministrador.master" AutoEventWireup="true" CodeFile="~/controller/RegistroAdmi.aspx.cs" Inherits="view_RegistroAdmi_" %>

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

           
	 if ((charCode > 32 && charCode < 60) || ((charCode > 62 && charCode < 126)))

                
	return true;

            
	return false;
        }


   
  </SCRIPT>
    <style type="text/css">
        .auto-style42 {
            text-align: center;
        }
        .nuevoEstilo12 {
            font-family: "malgun Gothic";
        }
        .auto-style43 {
            font-family: "malgun Gothic";
            color: #C34F4C;
        }
        .nuevoEstilo13 {
            font-family: "malgun Gothic";
        }
        .nuevoEstilo14 {
            font-family: "malgun Gothic";
        }
        .auto-style44 {
            font-family: "malgun Gothic";
            font-weight: bold;
            background-color: #BE4D4A;
        }
        .auto-style47 {
            font-family: "malgun Gothic";
            color: #C34F4C;
            height: 14px;
            text-align: center;
            font-size: x-large;
            background-color: #F2C1C3;
        }
        .auto-style48 {
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
            <td class="auto-style47" colspan="3">&nbsp;<span class="auto-style47"><strong>Registro&nbsp;</strong></span></td>
        </tr>
        <tr>
            <td class="auto-style47" colspan="2" rowspan="3">
                <asp:Image ID="Image8" runat="server" Height="220px" ImageUrl="~/imagenes/admi_registro.png" Width="356px" />
            </td>
            <td class="auto-style43"><strong>Correo:</strong></td>
            <td class="auto-style47">
                <asp:TextBox ID="tb_correo" runat="server" MaxLength="30" onkeypress="return Direccion(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_CorreoAdm" runat="server" ErrorMessage="*" ForeColor="#C24F4C" ControlToValidate="tb_correo" ValidationGroup="admi"></asp:RequiredFieldValidator>
                <strong>
                <br />
                <asp:RegularExpressionValidator ID="REV_CorreoAdm" runat="server" ControlToValidate="tb_correo" ErrorMessage="Correo inválido" ForeColor="#C34F4C" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style43"><strong>Usuario:</strong></td>
            <td class="auto-style47">
                <asp:TextBox ID="tb_usuario" runat="server" MaxLength="15" onkeypress="return Caracteres(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_UsuarioAdm" runat="server" ControlToValidate="tb_usuario" ErrorMessage="*" ForeColor="#C24F4C" ValidationGroup="admi"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style43"><strong>Clave:</strong></td>
            <td class="auto-style47">
                <asp:TextBox ID="tb_clave" runat="server" TextMode="Password" MaxLength="15" onkeypress="return Caracteres(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_ClaveAdm" runat="server" ControlToValidate="tb_clave" ErrorMessage="*" ForeColor="#C24F4C" ValidationGroup="admi"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style43"><strong>Rol:</strong></td>
            <td class="auto-style47">
                <asp:DropDownList ID="DDL_rol" runat="server">
                    <asp:ListItem Value="1">Administrador</asp:ListItem>
                    <asp:ListItem Value="3">Empresa</asp:ListItem>
                    <asp:ListItem Value="2">Aspirante</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RFV_ClaveAdm0" runat="server" ControlToValidate="DDL_rol" ErrorMessage="*" ForeColor="#C24F4C" ValidationGroup="admi"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style47">
                <asp:Button ID="bt_agregar" runat="server" BorderColor="#C34F4C" BorderStyle="Double" CssClass="auto-style48" OnClick="bt_agregar_Click" Text="Agregar" Height="35px" Width="81px" ValidationGroup="admi" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

