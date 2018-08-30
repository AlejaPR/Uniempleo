<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAspirante.master" AutoEventWireup="true" CodeFile="~/controller/ExperienciaL.aspx.cs" Inherits="view_ExperienciaL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type ="text/javascript" src ="js/Redirecciones.js"> </script>
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
            text-align: center;
            font-family: "MALgun Gothic";
            font-size: x-large;
            width: 100%;
            }
        .nuevoEstilo5 {
            font-family: "MALgun Gothic";
        }
        .nuevoEstilo6 {
            font-family: "malgun Gothic";
        }
        .auto-style23 {
            font-family: "malgun Gothic";
            color: #7197D6;
            width: 191px;
        }
        .auto-style24 {
            width: 191px;
        }
        .auto-style25 {
            text-align: center;
        }
        .M {
            font-family: "MALgun Gothic";
        }
        .auto-style26 {
            font-family: "MALgun Gothic";
            color: #FFFFFF;
            font-weight: bold;
            font-size: large;
        }
        .nuevoEstilo7 {
            font-family: "malgun Gothic";
        }
        .nuevoEstilo8 {
            font-family: "malgun Gothic";
        }
        .nuevoEstilo9 {
            font-family: "malgun Gothic";
        }
        .nuevoEstilo10 {
            font-family: "malgun Gothic";
        }
        .auto-style30 {
            color: #000000;
        }
        .nuevoEstilo11 {
            font-family: "malgun Gothic";
        }
        .auto-style31 {
        text-align: left;
    }
        .auto-style33 {
            width: 191px;
            text-align: right;
            background-color: #C8ECF4;
        }
        .auto-style34 {
            font-family: "malgun Gothic";
            color: #7197D6;
            width: 30%;
            text-align: center;
            height: 31px;
            background-color: #C8ECF4;
        }
        .auto-style35 {
            text-align: left;
            height: 31px;
        }
        .auto-style38 {
            width: 554px;
            height: 95px;
            background-color: #C8ECF4;
        }
        .auto-style40 {
            font-family: "MALgun Gothic";
            color: #FFFFFF;
            font-weight: bold;
            font-size: medium;
            text-align: center;
            background-color: #6F9FED;
        }
        .nuevoEstilo12 {
            font-family: "MALgun Gothic";
        }
        .auto-style41 {
            font-family: "MALgun Gothic";
            color: #7197D6;
            font-size: large;
        }
        .nuevoEstilo13 {
            font-family: "MALgun Gothic";
        }
        .auto-style42 {
            font-family: "MALgun Gothic";
            margin-left: 15px;
        }
        .nuevoEstilo14 {
            font-family: "malgun Gothic";
        }
        .auto-style43 {
            height: 95px;
            font-family: "malgun Gothic";
            font-size: small;
            font-weight: bold;
            color: #6F9FED;
            background-color: #C8ECF4;
        }
        .auto-style44 {
            font-size: large;
        }
        .auto-style45 {
            text-align: center;
            font-family: "MALgun Gothic";
            font-size: x-large;
            width: 223px;
        }
        .auto-style46 {
            width: 223px;
            text-align: right;
            background-color: #C8ECF4;
        }
        .auto-style47 {
            font-family: "malgun Gothic";
            width: 223px;
        }
        .auto-style48 {
            width: 223px;
            height: 95px;
            font-family: "malgun Gothic";
            font-size: small;
            font-weight: bold;
            color: #6F9FED;
            background-color: #C8ECF4;
        }
        .auto-style49 {
            width: 223px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel_ExperienciaL" runat="server" Width="900px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style21" colspan="2"><strong>EXPERIENCIA LABORAL</strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style46" rowspan="6">
                    <asp:Image ID="Image8" runat="server" Height="167px" ImageUrl="~/imagenes/trabajadorE.png" Width="151px" />
                </td>
                <td class="auto-style33">&nbsp;</td>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23"><strong><span class="auto-style30">Nombre Empresa:</span><br /> </strong></td>
                <td class="auto-style31">
                    <asp:TextBox ID="tb_nomemp" runat="server" MaxLength="15" onkeypress="return Letras(event)"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RFV_nombreA" runat="server" ControlToValidate="tb_nomemp" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatose"></asp:RequiredFieldValidator>
                    <br />
                    </td>
                <td rowspan="4">&nbsp;</td>
                <td rowspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23"><strong><span class="auto-style30">Cargo</span> <span class="auto-style30">desempeñado:</span><br /> </strong></td>
                <td class="auto-style31">
                    <asp:TextBox ID="tb_cargo" runat="server" MaxLength="25" onkeypress="return Letras(event)"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RFV_nombreA0" runat="server" ControlToValidate="tb_cargo" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatose"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong><span class="auto-style30">Jefe</span> <span class="auto-style30">inmediato:</span><br /> </strong></td>
                <td class="auto-style31">
                    <asp:TextBox ID="tb_jefe" runat="server" MaxLength="15" onkeypress="return Letras(event)"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RFV_nombreA1" runat="server" ControlToValidate="tb_jefe" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatose"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong><span class="auto-style30">Telefono empresa:</span><br /> </strong></td>
                <td class="auto-style31">
                    <asp:TextBox ID="tb_telefonoE" runat="server" MaxLength="10" TextMode="Number" onkeypress="return Numeros(event)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_nombreA2" runat="server" ControlToValidate="tb_telefonoE" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatose"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style34"><strong><span class="auto-style30">Funciones desempeñadas:</span><br /> </strong></td>
                <td class="auto-style35">
                    <asp:TextBox ID="tb_funcion" runat="server" Height="85px" Width="227px" MaxLength="50" onkeypress="return Letras(event)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_nombreA3" runat="server" ControlToValidate="tb_funcion" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatose"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td rowspan="2">
                    </td>
                <td rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47">&nbsp;</td>
                <td class="nuevoEstilo14"><strong>Fecha inicio&nbsp;</strong></td>
                <td class="nuevoEstilo14"><strong>Fecha fin</strong></td>
                <td rowspan="6">&nbsp;</td>
                <td rowspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style48">
                    &nbsp;</td>
                <td class="auto-style38">
                    <asp:TextBox ID="tb_inicio" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_nombreA4" runat="server" ControlToValidate="tb_inicio" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatose"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="tb_fin" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_nombreA5" runat="server" ControlToValidate="tb_fin" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="sindatose"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style48">
                    &nbsp;</td>
                <td class="auto-style43" colspan="2">
                    <asp:Label ID="LB_ErrorFechasAsp" runat="server" CssClass="auto-style44" ForeColor="#F23824"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style48">&nbsp;</td>
                <td class="auto-style38"><strong>
                    <asp:Button ID="bt_agregar" runat="server" BackColor="#7197D6" BorderColor="#7197D6" BorderStyle="Double" CssClass="auto-style40" Height="35px" OnClick="bt_agregar_Click" Text="AGREGAR" Width="107px" ValidationGroup="sindatose" />
                    </strong></td>
                <td class="auto-style38"><strong>
                    <asp:Button ID="BT_omitirExperienciaL" runat="server" BackColor="#7197D6" BorderColor="#7197D6" BorderStyle="Double" CssClass="auto-style40" Height="33px" OnClick="BT_omitirExperienciaL_Click" Text="SIGUIENTE" Width="129px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style49">&nbsp;</td>
                <td colspan="2"><span class="auto-style41"><strong>Experiencias agregadas&nbsp;</strong></span></td>
            </tr>
            <tr>
                <td colspan="3"><strong>
                    <asp:GridView ID="GV_exp" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style42" DataSourceID="ODS_obtener_exp" GridLines="Horizontal" HorizontalAlign="Left" Width="33%">
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
                    <asp:ObjectDataSource ID="ODS_obtener_exp" runat="server" SelectMethod="ObtenerExpL" TypeName="DExpLab">
                        <SelectParameters>
                            <asp:SessionParameter Name="idper" SessionField="id" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

