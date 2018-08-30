<%@ Page Title="" Language="C#" MasterPageFile="~/view/Masterp.master" AutoEventWireup="true" CodeFile="~/controller/RecuperarContraseña.aspx.cs" Inherits="views_RecuperarContraseña" %>

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
    .auto-style16 {
        width: 209px;
    }
    .nuevoEstilo6 {
        font-family: "malgun Gothic";
    }
    .auto-style17 {
        text-align: center;
    }
    .nuevoEstilo7 {
    }
    .auto-style18 {
        color: #2E9A95;
    }
    .nuevoEstilo8 {
        font-family: "malgun Gothic";
    }
    .auto-style19 {
        font-family: "malgun Gothic";
        color: #2E9A95;
    }
    .auto-style20 {
        color: #FFFFFF;
        font-weight: bold;
        font-size: large;
    }
        .auto-style31 {
            font-family: "malgun Gothic";
            text-align: right;
        }
        .auto-style32 {
            font-family: "malgun Gothic";
            color: #2E9A95;
            text-align: center;
            width: 33%;
            font-size: large;
            background-color: #A2DED0;
        }
        .auto-style33 {
            font-family: "malgun Gothic";
            text-align: left;
            font-size: xx-large;
        }
        .auto-style34 {
            font-size: medium;
            color: #EF4836;
        }
        .auto-style35 {
            background-color: #CCE4F7;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="nuevoEstilo6"><span class="auto-style18"><strong>Digite su nueva contraseña:</strong></span><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_clave1" runat="server" Height="21px" TextMode="Password" ValidationGroup="recuperar" MaxLength="20" onkeypress="return Caracteres(event)"></asp:TextBox>
            </strong></td>
        <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_clave1" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="recuperar"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style33"><span class="auto-style32"><strong><span class="auto-style35">Repita su nueva contraseña:</span></strong></span><strong>
            <asp:TextBox ID="tb_clave2" runat="server" TextMode="Password" ValidationGroup="recuperar" MaxLength="20" onkeypress="return Caracteres(event)"></asp:TextBox>
            <br />
            <asp:CompareValidator ID="CV_clave" runat="server" ControlToCompare="tb_clave1" ControlToValidate="tb_clave2" ErrorMessage="Las contraseñas no coinciden" CssClass="auto-style34"></asp:CompareValidator>
            </strong>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_clave2" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="recuperar"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style17" colspan="2"><strong>
            <asp:Button ID="bt_cambiar" runat="server" BackColor="#2E9A95" BorderColor="#2E9A95" BorderStyle="Double" CssClass="auto-style20" Text="Cambiar" OnClick="bt_cambiar_Click" ValidationGroup="recuperar" />
            </strong></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

