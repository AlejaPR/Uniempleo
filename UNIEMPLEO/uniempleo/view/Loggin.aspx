<%@ Page Title="" Language="C#" MasterPageFile="~/view/Masterp.master" AutoEventWireup="true" CodeFile="~/controller/Loggin.aspx.cs" Inherits="views_Loggin" %>

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
        .auto-style1 {
            font-family: "MALgun Gothic";
            width: 100%;
        }
        .auto-style19 {
            font-weight: bold;
        }
        .auto-style20 {
            color: #2E9A95;
        }
        .auto-style21 {
            text-align: center;
            color: #2E9A95;
            font-size: x-large;
            height: 36px;
        }
        .auto-style31 {
            text-align: center;
        }
        .auto-style32 {
        font-family: "malgun Gothic";
        text-align: center;
    }
        .auto-style33 {
            font-weight: bold;
            text-align: center;
            background-color: #A2DED0;
            border-radius: 30px;
        }
    .auto-style35 {
        font-size: small;
    }
        .auto-style36 {
            font-size: medium;
        }
        .auto-style37 {
            height: 36px;
        }
        .auto-style38 {
            font-size: large;
        }
        .auto-style39 {
            color: #990033;
        }
        .auto-style40 {
            font-size: medium;
            color: #22313F;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1"
        style=" background-image: url(../imagenes/fondo_login.png);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover">
        <tr>
            <td class="auto-style37"></td>
            <td class="auto-style21" colspan="2"><strong>INGRESAR<br />
                <br />
                </strong></td>
            <td class="auto-style37"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style32"><span class="auto-style20"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style38">USUARIO:</span> </strong></span>
                <strong>
                <asp:TextBox ID="tb_usuario" runat="server" CssClass="auto-style36" MaxLength="15" onkeypress="return Caracteres(event)"></asp:TextBox>
                </strong>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style32"><span class="auto-style20"><strong><span class="auto-style38">
                <br />
                CONTRASEÑA:</span> </strong></span>
                <strong>
                <asp:TextBox ID="tb_clave" runat="server" TextMode="Password" CssClass="auto-style36" MaxLength="25" onkeypress="return Caracteres(event)"></asp:TextBox>
                <br />
                </strong>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style31">
                <span class="auto-style35">&nbsp;</span><br />
                <strong>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="auto-style40">Olvidé mi contraseña</asp:LinkButton>
                </strong>
                <br />
                <strong>
                <asp:Label ID="L_Error" runat="server" ForeColor="#D91E18"></asp:Label>
                <br />
                <asp:Label ID="L_error_sus" runat="server" CssClass="auto-style39"></asp:Label>
                </strong>
                <br />
            </td>
            <td>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style31"><strong>
                <asp:Button ID="bt_ingresar" runat="server" BackColor="#2E9A95" BorderColor="#2E9A95" BorderStyle="Double" CssClass="auto-style33" ForeColor="White" Text="INGRESAR" OnClick="bt_ingresar_Click" Height="75px" Width="250px" />
                </strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
