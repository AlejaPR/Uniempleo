<%@ Page Title="" Language="C#" MasterPageFile="~/view/Masterp.master" AutoEventWireup="true" CodeFile="~/controller/Registro.aspx.cs" Inherits="views_Registro" %>

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
        .auto-style32 {
            text-align: center;
        }
        .auto-style34 {
            width: 386px;
        }
        .auto-style35 {
            width: 386px;
            text-align: center;
            height: 54px;
        }
        .auto-style36 {
            font-size: medium;
            color: #008080;
        }
        .auto-style37 {
            text-align: center;
            height: 110px;
        }
        .auto-style44 {
            font-size: large;
            color: #008080;
        }
        .auto-style47 {
            width: 403px;
            text-align: right;
        }
        .auto-style51 {
            width: 403px;
        }
        .auto-style52 {
        width: 386px;
        text-align: center;
        height: 35px;
        color: #009486;
    }
        .auto-style54 {
            font-size: xx-large;
        }
        .auto-style55 {
            margin-right: 26px;
        }
        .auto-style56 {
            margin-left: 18px;
        }
    .nuevoEstilo6 {
        font-family: "MALgun Gothic";
    }
    .auto-style57 {
        font-family: "MALgun Gothic";
        font-size: x-large;
        color: #008E81;
    }
    .nuevoEstilo7 {
        font-family: "MALGun Gothic";
    }
    .nuevoEstilo8 {
        font-family: "MALgun Gothic";
    }
    .M {
        font-family: "MALgun Gothic";
    }
    .MA {
        font-family: "MALgun Gothic";
    }
    .nuevoEstilo9 {
        font-family: "MALgun Gothic";
    }
    .auto-style58 {
        color: #009486;
    }
    .auto-style59 {
        font-family: "MALgun Gothic";
        color: #009486;
    }
    .auto-style60 {
        font-size: large;
        color: #009486;
    }
    .auto-style61 {
        font-family: "MALgun Gothic";
        color: #008B7E;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style37" colspan="3"><strong><span class="auto-style57">REGISTRO</span><br class="auto-style54" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style47" rowspan="4">
                <asp:Image ID="Image8" runat="server" Height="201px" ImageUrl="~/imagenes/revisando.png" Width="197px" CssClass="auto-style55" />
            </td>
            <td class="auto-style52"><strong><span class="auto-style59">CORREO:</span><span class="auto-style58"> </span> </strong>&nbsp;<asp:TextBox ID="TB_correo" runat="server" TextMode="Email" CssClass="auto-style58" MaxLength="30" onkeypress="return Direccion(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_correo" runat="server" ControlToValidate="TB_correo" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style58" ValidationGroup="registro"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style11" rowspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image7" runat="server" ImageUrl="~/imagenes/bform.png" CssClass="auto-style56" />
            </td>
        </tr>
        <tr>
            <td class="auto-style52"><span class="auto-style59"><strong>USUARIO</strong></span><span class="auto-style58">:&nbsp;
                </span>
                <asp:TextBox ID="TB_usuario" runat="server" CssClass="auto-style58" MaxLength="15" onkeypress="return Caracteres(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_usuario" runat="server" ControlToValidate="TB_usuario" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style58" ValidationGroup="registro"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style52"><strong><span class="auto-style60">&nbsp;&nbsp; </span><span class="auto-style59">CLAVE:</span></strong><span class="auto-style58">&nbsp;&nbsp;
                </span>
                <asp:TextBox ID="TB_clave" runat="server" TextMode="Password" CssClass="auto-style58" MaxLength="15" onkeypress="return Caracteres(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_clave" runat="server" ControlToValidate="TB_clave" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style58" ValidationGroup="registro"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style35"><span class="auto-style44"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="auto-style61"> ROL:</span><span class="auto-style44">&nbsp;</span></strong>
                <asp:DropDownList ID="DDL_rol" runat="server" Height="31px" Width="137px">
                    <asp:ListItem Value="0">Seleccione</asp:ListItem>
                    <asp:ListItem Value="2">Aspirante</asp:ListItem>
                    <asp:ListItem Value="1">Empleador</asp:ListItem>
                </asp:DropDownList>
            &nbsp;
                <asp:RangeValidator ID="RV_rol" runat="server" ControlToValidate="DDL_rol" ErrorMessage="Seleccione" ForeColor="Red" MaximumValue="3" MinimumValue="1" SetFocusOnError="True" Type="Integer" ValidationGroup="registro"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style32" colspan="3"><strong>
                <br />
                <br />
                <asp:Button ID="btn_registrar" runat="server" BackColor="#2E9A95" BorderColor="#2E9A95" BorderStyle="Double" CssClass="auto-style36" ForeColor="White" Text="REGISTRAR" OnClick="btn_registrar_Click" Height="34px" Width="168px" ValidationGroup="registro" />
                <br />
                <asp:Label ID="L_registro" runat="server" ForeColor="#CC0000"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

