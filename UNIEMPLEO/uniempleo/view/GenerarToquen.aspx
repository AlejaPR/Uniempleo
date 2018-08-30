<%@ Page Title="" Language="C#" MasterPageFile="~/view/Masterp.master" AutoEventWireup="true" CodeFile="~/controller/GenerarToquen.aspx.cs" Inherits="views_GenerarToquen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
        width: 158px;
            color: #2E9A95;
        height: 47px;
    }
    .auto-style17 {
        width: 207px;
    }
    .auto-style18 {
        width: 162px;
        height: 47px;
    }
    .auto-style19 {
        text-align: center;
    }
    .nuevoEstilo6 {
        font-family: "MALgun Gothic";
    }
        .auto-style20 {
            color: #FFFFFF;
            font-weight: bold;
            font-size: large;
        }
        .auto-style21 {
            color: #2E9A95;
        }
        .auto-style22 {
            width: 207px;
            color: #2E9A95;
        height: 47px;
    }
        .auto-style32 {
            color: #2E9A95;
            text-align: left;
            margin-left: 40px;
        height: 47px;
    }
        .auto-style33 {
            font-weight: bold;
            font-size: medium;
            border-radius: 30px;
            align-items:center;
        background-color: #2E9A95;
    }
        .auto-style34 {
            width: 207px;
            height: 39px;
        }
        .auto-style35 {
            text-align: center;
            width: 33%;
            height: 39px;
            background-color: #E4F1FE;
        }
        .auto-style36 {
            height: 39px;
        }
        .auto-style37 {
            text-align: center;
            width: 33%;
            background-color: #E4F1FE;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr class="nuevoEstilo6">
        <td class="auto-style22"><strong></strong></td>
        <td class="auto-style16"><strong>Ingresa Usuario</strong></td>
        <td class="auto-style18">
            <strong>
            <asp:TextBox ID="tb_usuario" runat="server" CssClass="auto-style21" MaxLength="20" onkeypress="return Caracteres(event)"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_usuario" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="token"></asp:RequiredFieldValidator>
            &nbsp;</strong></td>
        <td class="auto-style32"><strong>
            &nbsp;<asp:Button ID="bt_atras" runat="server" BackColor="#39C6B3" BorderColor="#39C6B3" BorderStyle="Double" CssClass="auto-style33" ForeColor="White" OnClick="Button1_Click" Text="Atras" />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style34"></td>
        <td class="auto-style35" colspan="2">
            <asp:Button ID="bt_recuperar" runat="server" Text="Recuperar" BackColor="#2E9A95" BorderColor="#2E9A95" BorderStyle="Double" CssClass="auto-style20" OnClick="bt_recuperar_Click" ValidationGroup="token" />
        </td>
        <td class="auto-style36"></td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td id="L_error" class="auto-style37" colspan="2">
            <strong>
            <asp:Label ID="L_error" runat="server" ForeColor="#EF4836"></asp:Label>
            </strong>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

