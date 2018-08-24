<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterEmpresa.master" AutoEventWireup="true" CodeFile="~/controller/Modificar_H_Empresa.aspx.cs" Inherits="view_Modificar_H_Empresa" %>

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
        .auto-style38 {
            width: 100%;
        }
        .auto-style39 {
            color: #000000;
            font-size: large;
        }
        .auto-style40 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style38">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style39">Modifica tu hoja de vida</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td rowspan="3">
                <asp:GridView ID="GV_hoja_emp" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style40" DataSourceID="ODS_obtener_pempresa" GridLines="Horizontal" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" ValidationGroup="modificae"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Codigo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" MaxLength="25" Text='<%# Bind("id_empresa") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("id_empresa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre Empresa">
                            <EditItemTemplate>
                                <asp:TextBox ID="CambiaNomEmp" runat="server" Text='<%# Bind("nombre_empresa") %>' MaxLength="20" onkeypress="return Letras(event)"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CambiaNomEmp" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="modificae"></asp:RequiredFieldValidator>
                                </strong>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("nombre_empresa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Forma Juridica">
                            <EditItemTemplate>
                                <asp:TextBox ID="CambiaFormaJ" runat="server" MaxLength="15" Text='<%# Bind("forma_juridica") %>' onkeypress="return Letras(event)"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CambiaFormaJ" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="modificae"></asp:RequiredFieldValidator>
                                </strong>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("forma_juridica") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Direccion Empresa">
                            <EditItemTemplate>
                                <asp:TextBox ID="CambiaDireccionE" runat="server" MaxLength="15" Text='<%# Bind("direccion_empresa") %>' onkeypress="return Direccion(event)"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CambiaDireccionE" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="modificae"></asp:RequiredFieldValidator>
                                </strong>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("direccion_empresa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Telefono Empresa">
                            <EditItemTemplate>
                                <asp:TextBox ID="CambiaTelefonoE" runat="server" MaxLength="10" Text='<%# Bind("telefono_empresa") %>' onkeypress="return Numeros(event)"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CambiaTelefonoE" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="modificae"></asp:RequiredFieldValidator>
                                </strong>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("telefono_empresa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sector Economico">
                            <EditItemTemplate>
                                <asp:TextBox ID="CambiaSectorE" runat="server" MaxLength="15" Text='<%# Bind("sector_economico") %>' onkeypress="return Letras(event)"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CambiaSectorE" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="modificae"></asp:RequiredFieldValidator>
                                </strong>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("sector_economico") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Numero Empleados">
                            <EditItemTemplate>
                                <asp:TextBox ID="CambiaNumE" runat="server" MaxLength="10" Text='<%# Bind("num_empleados") %>' onkeypress="return Numeros(event)"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CambiaNumE" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="modificae"></asp:RequiredFieldValidator>
                                </strong>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("num_empleados") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nit">
                            <EditItemTemplate>
                                <asp:TextBox ID="CambiaNit" runat="server" MaxLength="12" Text='<%# Bind("nit") %>' onkeypress="return Caracteres(event)"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CambiaNit" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="modificae"></asp:RequiredFieldValidator>
                                </strong>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("nit") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tipo Empresa">
                            <EditItemTemplate>
                                <asp:TextBox ID="CambiaTipoE" runat="server" MaxLength="15" Text='<%# Bind("tipo_empresa") %>' onkeypress="return Letras(event)"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CambiaTipoE" ErrorMessage="*" ForeColor="#EF4836" ValidationGroup="modificae"></asp:RequiredFieldValidator>
                                </strong>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("tipo_empresa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
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
                <asp:ObjectDataSource ID="ODS_obtener_pempresa" runat="server" SelectMethod="obtenerEmpresa" TypeName="Dmodificar" UpdateMethod="EditarEmpresa">
                    <SelectParameters>
                        <asp:SessionParameter Name="idper" SessionField="id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="forma" Type="String" />
                        <asp:Parameter Name="direccion" Type="String" />
                        <asp:Parameter Name="telefono" Type="String" />
                        <asp:Parameter Name="sector" Type="String" />
                        <asp:Parameter Name="empleados" Type="String" />
                        <asp:Parameter Name="nit" Type="String" />
                        <asp:Parameter Name="tipo" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

