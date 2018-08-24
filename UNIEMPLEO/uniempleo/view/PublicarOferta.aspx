<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterEmpresa.master" AutoEventWireup="true" CodeFile="~/controller/PublicarOferta.aspx.cs" Inherits="view_PublicarOferta" %>

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
        .auto-style34 {
            width: 100%;
        }
        .auto-style35 {
            color: #000000;
            font-size: large;
        }
        .auto-style36 {
            color: #000000;
            font-size: medium;
            text-align: right;
        }
        .nuevoEstilo9 {
            font-family: "malgun Gothic";
        }
        .auto-style37 {
            font-family: "Malgun Gothic";
            font-weight: bold;
            background-color: #7197D6;
        }
        .auto-style38 {
            width: 99%;
            text-align: center;
            height: 54px;
            border-color: #6F9FED;
            background-color: #049CF9;
        }
        .auto-style39 {
            font-family: "MALgun Gothic";
            font-weight: bold;
            font-size: small;
            background-color: #92BBE4;
        }
        .auto-style40 {
            background-color: #92BBE4;
        }
        .auto-style41 {
            color: #000000;
            font-size: medium;
            text-align: right;
            background-color: #92BBE4;
        }
        .auto-style42 {
            color: #000000;
            font-size: xx-large;
            text-align: center;
            font-family: "Malgun Gothic";
            font-weight: bold;
            height: 54px;
            border-color: #6F9FED;
            background-color: #92BBE4;
        }
        .auto-style43 {
            background-color: #91BAE3;
        }
        .auto-style44 {
            background-color: #FFFFFF;
        }
        .auto-style27 {
            background-color: #91BAE3;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style38">
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style42" colspan="2">Realiza tu publicacion</td>
            <td class="auto-style40">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style41">Titulo de la oferta</td>
            <td class="auto-style40">
                <asp:TextBox ID="tb_titulo" runat="server" MaxLength="30" onkeypress="return Letras(event)"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RFV_nombreA" runat="server" ControlToValidate="tb_titulo" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatoso"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style40">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style41">Horario</td>
            <td class="auto-style43">
                <asp:TextBox ID="tb_horario" runat="server" MaxLength="15" onkeypress="return Caracteres(event)"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RFV_nombreA0" runat="server" ControlToValidate="tb_horario" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatoso"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style40">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style41">Salario </td>
            <td class="auto-style43">
                <asp:TextBox ID="tb_salario" runat="server" MaxLength="12" onkeypress="return Numeros(event)"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RFV_nombreA1" runat="server" ControlToValidate="tb_salario" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatoso"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style40">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style41">Fecha del contrato</td>
            <td class="auto-style43">
                <asp:TextBox ID="tb_fecha" runat="server" TextMode="Date" MaxLength="10"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RFV_nombreA2" runat="server" ControlToValidate="tb_fecha" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatoso"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="L_ErrorContrato" runat="server" ForeColor="Red" CssClass="auto-style27"></asp:Label>
            </td>
            <td class="auto-style40">&nbsp;</td>
        </tr>
        <tr>
            <td rowspan="4" class="auto-style40">&nbsp;</td>
            <td class="auto-style41">Tipo de contrato</td>
            <td class="auto-style43">
                <asp:DropDownList ID="DDL_contrato" runat="server" CssClass="auto-style44">
                    <asp:ListItem>Fijo</asp:ListItem>
                    <asp:ListItem>Indefinido</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RFV_nombreA3" runat="server" ControlToValidate="DDL_contrato" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatoso"></asp:RequiredFieldValidator>
            </td>
            <td rowspan="4" class="auto-style40">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style41">Funciones a desempeñar</td>
            <td class="auto-style43">
                <asp:TextBox ID="tb_funciones" runat="server" Height="64px" Width="147px" MaxLength="200" onkeypress="return Letras(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_nombreA4" runat="server" ControlToValidate="tb_funciones" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatoso"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style40"><strong>
                <asp:Button ID="bt_publicar" runat="server" BorderColor="Black" BorderStyle="Double" CssClass="auto-style39" Height="40px" OnClick="bt_publicar_Click" Text="Publicar" Width="86px" ValidationGroup="sindatoso" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

