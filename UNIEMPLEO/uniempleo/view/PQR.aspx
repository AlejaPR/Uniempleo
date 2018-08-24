<%@ Page Title="" Language="C#" MasterPageFile="~/view/Masterp.master" AutoEventWireup="true" CodeFile="~/controller/PQR.aspx.cs" Inherits="views_prueba" %>

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


	 if ((charCode > 47 && charCode < 58) || (charCode < 31 && charCode > 33) || (charCode < 33 && charCode > 31) || (charCode < 9 && charCode > 7))

                
	return true;

            	
	return false;
        }

    
    function Caracteres(evt) {

            
	var charCode = (evt.which) ? evt.which : event.keyCode;


		if ((charCode > 47 && charCode < 58) || ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123)) || (charCode < 31 && charCode < 33) || (charCode < 33 && charCode > 31) || (charCode < 9 && charCode > 7))

  
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
    .nuevoEstilo6 {
        font-family: "malgun Gothic";
    }
        .auto-style36 {
            font-size: medium;
            color: #008080;
        }
        .auto-style37 {
            color: #008080;
        }
        .auto-style38 {
            color: #008080;
            font-size: x-large;
            font-family: "Malgun Gothic";
        }
        .auto-style39 {
            font-family: "Malgun Gothic";
            color: #008080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    &nbsp;<table class="auto-style1">
    <tr>
        <td class="auto-style42">&nbsp;</td>
        <td class="auto-style42">&nbsp;</td>
        <td class="auto-style38" colspan="2"><strong>PREGUNTAS QUEJAS O RECLAMOS</strong></td>
        <td class="auto-style42">&nbsp;</td>
        <td class="auto-style42">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style45" colspan="2" rowspan="3">
            <asp:Image ID="Image7" runat="server" Height="231px" ImageUrl="~/imagenes/dudas.png" Width="196px" />
        </td>
        <td class="auto-style39"><strong>NOMBRE</strong>:</td>
        <td class="auto-style44">
            <asp:TextBox ID="tb_nombre" runat="server" MaxLength="25" onkeypress="return Letras(event)" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_nombrep" runat="server" ControlToValidate="tb_nombre" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="pqr">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style42">&nbsp;</td>
        <td class="auto-style42">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style40"><span class="auto-style39"><strong>CORREO</strong></span>:</td>
        <td class="auto-style44">
            <asp:TextBox ID="tb_correo" runat="server" TextMode="Email" MaxLength="35" onkeypress="return Direccion(event)"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_correop" runat="server" ControlToValidate="tb_correo" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="pqr">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style42">&nbsp;</td>
        <td class="auto-style42">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style39"><strong>ASUNTO:</strong></td>
        <td class="auto-style41">
            <asp:TextBox ID="tb_asunto" runat="server" Height="58px" Width="258px" MaxLength="100" onkeypress="return Letras(event)"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_asunto" runat="server" ControlToValidate="tb_asunto" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="pqr">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style37"></td>
        <td class="auto-style37"></td>
    </tr>
    <tr>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style46" colspan="2">
            <strong>
                <asp:Button ID="bt_enviar" runat="server" BackColor="#2E9A95" BorderColor="#2E9A95" BorderStyle="Double" CssClass="auto-style36" ForeColor="White" Text="ENVIAR" OnClick="bt_enviar_Click" Height="34px" Width="168px" ValidationGroup="pqr" />
                </strong>
        </td>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style37">&nbsp;</td>
    </tr>
</table>
    
</asp:Content>

