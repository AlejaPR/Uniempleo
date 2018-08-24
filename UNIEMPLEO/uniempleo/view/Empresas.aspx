<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAdministrador.master" AutoEventWireup="true" CodeFile="~/controller/Empresas.aspx.cs" Inherits="view_Empresas" %>

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




  </SCRIPT>

    <style type="text/css">
        .m {
            font-family: "malgun Gothic";
        }
        .nuevoEstilo12 {
            font-family: "malgun Gothic";
        }
        .auto-style42 {
            text-align: right;
            font-family: "malgun Gothic";
        }
        .auto-style43 {
            font-family: "malgun Gothic";
            font-weight: bold;
            background-color: #C24F4C;
        }
        .auto-style44 {
            text-align: center;
        }
        .auto-style47 {
            width: 276px;
        }
        .auto-style48 {
            font-family: "malgun Gothic";
            font-weight: bold;
            text-align: center;
            background-color: #F2C1C3;
        }
        .auto-style49 {
            width: 276px;
            text-align: center;
        }
        .nuevoEstilo14 {
            font-family: "malgun Gothic";
        }
        .nuevoEstilo15 {
            font-family: "malgun Gothic";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td rowspan="7" class="auto-style47">
                <br />
                <strong>
                <asp:GridView ID="GV_empresa" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="ODS_obtener_empresas" ForeColor="Black" CssClass="nuevoEstilo14" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Codigo">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_codigo" runat="server" ReadOnly="True" Text='<%# Bind("id_empresa") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("id_empresa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_nombre" runat="server" Text='<%# Bind("nombre_empresa") %>' onkeypress="return Letras(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="r_nombre" runat="server" ControlToValidate="tb_nombre" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombre_empresa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Forma Juridica">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_forma" runat="server" MaxLength ="20" Text='<%# Bind("forma_juridica") %>' onkeypress="return Letras(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="r_forma" runat="server" ControlToValidate="tb_forma" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("forma_juridica") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Direccion">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_direccion" runat="server" MaxLength ="20" Text='<%# Bind("direccion_empresa") %>' onkeypress="return Letras(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="r_direccion" runat="server" ControlToValidate="tb_direccion" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("direccion_empresa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Telefono">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_telefono" runat="server" MaxLength ="20" Text='<%# Bind("telefono_empresa") %>' onkeypress="return Numeros(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="r_telefono" runat="server" ControlToValidate="tb_telefono" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("telefono_empresa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sector Economico">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_sector" runat="server" MaxLength ="20" Text='<%# Bind("sector_economico") %>' onkeypress="return Letras(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="r_sector" runat="server" ControlToValidate="tb_sector" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("sector_economico") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Numero Empleados">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_numero_empleado" runat="server" MaxLength ="20" Text='<%# Bind("num_empleados") %>' onkeypress="return Numeros(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="r_numero" runat="server" ControlToValidate="tb_numero_empleado" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("num_empleados") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nit">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_nit" runat="server" MaxLength ="20" Text='<%# Bind("nit") %>' onkeypress="return Numeros(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="r_nit" runat="server" ControlToValidate="tb_nit" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("nit") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tipo Empresa">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_tipo" runat="server" MaxLength ="20" Text='<%# Bind("tipo_empresa") %>' onkeypress="return Letras(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="r_tipo" runat="server" ControlToValidate="tb_tipo" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("tipo_empresa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="Gray" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                </strong>
                <asp:ObjectDataSource ID="ODS_obtener_empresas" runat="server" SelectMethod="obtenerEmpresas" TypeName="DEmpresas" UpdateMethod="EditarEmpresas">
                    <UpdateParameters>
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="forma" Type="String" />
                        <asp:Parameter Name="direccion" Type="String" />
                        <asp:Parameter Name="telefono" Type="String" />
                        <asp:Parameter Name="sector" Type="String" />
                        <asp:Parameter Name="numero" Type="Int32" />
                        <asp:Parameter Name="nit" Type="String" />
                        <asp:Parameter Name="tipo" Type="String" />
                        <asp:Parameter Name="id_empresa" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="auto-style49"><strong class="nuevoEstilo15">ACCIONES</strong></td>
            <td>
                <asp:Button ID="bt_agregar_empresa" runat="server" BorderColor="#C34F4C" BorderStyle="Double" CssClass="auto-style48" OnClick="bt_agregar_empresa_Click" Text="Nueva empresa" Height="28px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style49">
                <asp:Image ID="Image8" runat="server" Height="73px" ImageUrl="~/imagenes/agregar_empresa.png" Width="83px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
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

