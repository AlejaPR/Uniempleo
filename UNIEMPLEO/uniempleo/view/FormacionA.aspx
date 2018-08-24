<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAspirante.master" AutoEventWireup="true" CodeFile="~/controller/FormacionA.aspx.cs" Inherits="view_ExperienciaL" %>

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

        .auto-style21 {
            font-size: x-large;
            font-family: "Malgun Gothic";
            text-align: center;
            height: 56px;
        }
        .auto-style42 {
            width: 56%;
            text-align: center;
            height: 51px;
        }
        .auto-style43 {
            text-align: center;
        }
        .auto-style48 {
            font-family: "Malgun Gothic";
            font-weight: bold;
            text-align: center;
        }
        .auto-style29 {
            height: 71px;
            text-align: center;
            font-family: mal;
            font-size: large;
        }
        .auto-style50 {
            font-family: mal;
            font-size: large;
        }
        .auto-style51 {
            font-size: medium;
        }
    .auto-style52 {
        width: 56%;
        text-align: center;
    }
    .auto-style53 {
        text-align: center;
    }
        .nuevoEstilo6 {
            font-family: "malgun Gothic";
        }
        .auto-style55 {
            text-align: center;
            font-family: "malgun Gothic";
            color: #7197D6;
        }
        .nuevoEstilo7 {
            font-family: "malgun Gothic";
        }
        .auto-style56 {
            font-family: "malgun Gothic";
            margin-right: 112px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2" class="auto-style21"><strong>FORMACION ACADEMICA<asp:Image ID="Image8" runat="server" Height="65px" ImageUrl="~/imagenes/birrete.png" Width="71px" />
                <br />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style42">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="l_titulo" runat="server" Text="Titulo" Font-Bold="True" Font-Names="Malgun Gothic"></asp:Label>
            :
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TB_titulo" runat="server" maxlength="25" onkeypress="return Letras(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_nombreA" runat="server" ControlToValidate="TB_titulo" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatosf"></asp:RequiredFieldValidator>
            </td>
            <td>
                    <asp:Label ID="l_titulo3" runat="server" Text="Fecha de grado:" Font-Bold="True" Font-Names="Malgun Gothic"></asp:Label>
                    <br />
                <asp:TextBox ID="TB_fecha" runat="server" maxlength="25" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_nombreA0" runat="server" ControlToValidate="TB_fecha" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatosf"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="L_CalendarioError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style52">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="l_titulo0" runat="server" Text="Lugar de grado:" Font-Bold="True" Font-Names="Malgun Gothic"></asp:Label>
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TB_lugar" runat="server" maxlength="25" onkeypress="return Letras(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_nombreA1" runat="server" ControlToValidate="TB_lugar" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatosf"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td class="auto-style53">
                <span class="auto-style48">
                <br />
                Telefono de lugar:<br />
                <asp:TextBox ID="TB_telefono" runat="server" maxlength="10" onkeypress="return Numeros(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_nombreA2" runat="server" ControlToValidate="TB_telefono" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatosf"></asp:RequiredFieldValidator>
                <br /></span>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" colspan="2">&nbsp;<br />&nbsp;<asp:Label ID="l_titulo1" runat="server" Text="Certificacion:" Font-Bold="True" Font-Names="Malgun Gothic"></asp:Label>
            &nbsp;
                <asp:FileUpload ID="FU_certificado" runat="server" />
&nbsp;<asp:RequiredFieldValidator ID="RFV_nombreA3" runat="server" ControlToValidate="FU_certificado" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatosf"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style29" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ¿Cuales son tus habilidades para destacar?&nbsp;&nbsp; </strong></td>
        </tr>
        <tr>
            <td class="auto-style43" colspan="2"><strong><span class="auto-style50">Habilidad 1</span></strong>:
                <asp:TextBox ID="TB_Hab1" runat="server" maxlength="25" onkeypress="return Letras(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_nombreA4" runat="server" ControlToValidate="TB_Hab1" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatosf"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" colspan="2">
                <asp:Label ID="l_titulo5" runat="server" Text="Habilidad 2:" Font-Bold="True" Font-Names="Malgun Gothic"></asp:Label>
            &nbsp;
                <asp:TextBox ID="TB_Hab2" runat="server" maxlength="25" onkeypress="return Letras(event)"></asp:TextBox>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style43" colspan="2">
                <asp:Label ID="l_titulo6" runat="server" Text="Habilidad 3:" Font-Bold="True" Font-Names="Malgun Gothic"></asp:Label>
            &nbsp;
                <asp:TextBox ID="TB_Hab3" runat="server" maxlength="25" onkeypress="return Letras(event)"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" colspan="2">
                <br />
              
                <asp:Button ID="BTN_guarda" runat="server" OnClick="BTN_guarda_Click" Text="AGREGAR" BackColor="#7197D6" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Height="34px" Width="94px" BorderStyle="Double" CssClass="auto-style51" ValidationGroup="sindatosf" />
                &nbsp;
                              
                <asp:Button ID="BT_omiteFormacionA" runat="server" OnClick="BT_omiteFormacionA_Click" Text="SIGUIENTE" BackColor="#7197D6" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Height="34px" Width="94px" BorderStyle="Double" CssClass="auto-style51" />
                <br />
                <br /></td>
        </tr>
        <tr>
            <td class="auto-style55" colspan="2">
                <strong>Formaciones academicas que agregaste</strong></td>
        </tr>
        <tr>
            <td colspan="2">
                <strong>
                <asp:GridView ID="GV_formacion" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style56" DataSourceID="ODS_facae" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_facae" runat="server" SelectMethod="ObtenerFacae" TypeName="DExpLab">
                    <SelectParameters>
                        <asp:SessionParameter Name="idper" SessionField="id" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                </strong></td>
        </tr>
    </table>
</asp:Content>

