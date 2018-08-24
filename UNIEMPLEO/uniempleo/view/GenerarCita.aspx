<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterEmpresa.master" AutoEventWireup="true" CodeFile="~/controller/GenerarCita.aspx.cs" Inherits="view_GenerarCita" %>

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
        .auto-style40 {
            width: 100%;
        }
        .TituloCitas {
            font-family: "malgun Gothic";
            font-size: xx-large;
            font-weight: bold;
            font-style: italic;
        }
        .auto-style41 {
            font-family: "malgun Gothic";
            font-size: xx-large;
            font-weight: bold;
            color: #000000;
        }
        .auto-style42 {
            width: 50%;
        }
        .auto-style43 {
            width: 50%;
            height: 49px;
            font-weight: normal;
            text-align: right;
            color: #000000;
            font-size: large;
        }
        .auto-style44 {
            height: 49px;
        }
        .auto-style45 {
            width: 50%;
            font-weight: normal;
            text-align: right;
            color: #000000;
            font-size: large;
        }
        .auto-style46 {
            font-size: large;
        }
        .Boton {
            font-weight: bold;

        }
        .auto-style47 {
            font-size: small;
            color: #EF4836;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style40">
        <tr>
            <td class="auto-style41" colspan="2">Generar una cita</td>
        </tr>
        <tr>
            <td class="auto-style45">Fecha de la cita:</td>
            <td>
                <asp:TextBox ID="TB_FechaCita" runat="server" Height="25px" TextMode="Date" Width="150px" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_FechaCita" CssClass="auto-style46" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sincita"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="LB_ErrorFechaCita" runat="server" CssClass="auto-style47"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style45">Lugar:</td>
            <td>
                <asp:TextBox ID="TB_LugarCita" runat="server" Height="25px" MaxLength="25" Width="150px" onkeypress="return Letras(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_LugarCita" CssClass="auto-style46" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sincita"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style45">Motivo de cita:</td>
            <td>
                <asp:DropDownList ID="DDL_OfertaCita" runat="server" DataTextField="nombre_oferta" Height="25px" OnSelectedIndexChanged="DDL_OfertaCita_SelectedIndexChanged" Width="150px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DDL_OfertaCita" CssClass="auto-style46" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sincita"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style45">Hora:</td>
            <td>
                <asp:TextBox ID="TB_Hora" runat="server" Height="25px" TextMode="Time" Width="150px" MaxLength="8" onkeypress="return Direccion(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_Hora" CssClass="auto-style46" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sincita"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style43">Requisitos:</td>
            <td class="auto-style44">
                <asp:TextBox ID="TB_Requisitos" runat="server" Height="40px" TextMode="MultiLine" Width="200px" Placeholder="Aquí puede agregar los requisitos para la entrevista de trabajo u objetos a llevar" onkeypress="return Letras(event)"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style42">&nbsp;</td>
            <td>
                <asp:Button ID="BT_CitarAsp" runat="server" BackColor="#7197D6" BorderColor="Black" BorderStyle="Double" CssClass="Boton" Height="35px" Text="CITAR" Width="140px" OnClick="BT_CitarAsp_Click" ValidationGroup="sincita" />
            </td>
        </tr>
    </table>
</asp:Content>

