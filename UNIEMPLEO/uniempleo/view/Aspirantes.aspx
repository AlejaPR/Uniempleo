<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAdministrador.master" AutoEventWireup="true" CodeFile="~/controller/Aspirantes.aspx.cs" Inherits="view_Aspirantes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <SCRIPT language=Javascript>  



   function Letras(evt) {

    var charCode = (evt.which) ? evt.which : event.keyCode;

    if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (charCode < 33 && charCode > 31) || (charCode < 9 && charCode > 7))

     return true;  

      return false;  }


        function Numeros(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode;

            if ((charCode > 47 && charCode < 58) )

                return true;

            return false;
        }

 
      

  </SCRIPT>
    <style type="text/css">
        .nuevoEstilo12 {
            font-family: "malgun Gothic";
        }
        .auto-style42 {
            font-family: "malgun Gothic";
            font-weight: bold;
            background-color: #C34F4C;
        }
        .nuevoEstilo13 {
            font-family: "malgun Gothic";
        }
        .nuevoEstilo14 {
            font-family: "malgun Gothic";
        }
        .nuevoEstilo15 {
            font-family: "malgun Gothic";
        }
        .auto-style43 {
            font-family: "malgun Gothic";
            color: #C34F4C;
            background-color: #C34F4C;
        }
        .auto-style44 {
            text-align: center;
        }
        .auto-style47 {
            text-align: center;
            font-family: "MALgun Gothic";
            font-size: xx-large;
            color: #000000;
            height: 25px;
            width: 476px;
            background-color: #F2C1C3;
        }
        .auto-style48 {
            text-align: center;
        }
        .nuevoEstilo16 {
            font-family: "malgun Gothic";
        }
        .auto-style49 {
            font-family: "malgun Gothic";
            font-weight: bold;
            font-size: medium;
            background-color: #D44441;
        }
        .auto-style50 {
            font-family: "MALgun Gothic";
            font-weight: bold;
            font-size: medium;
            color: #000000;
            height: 49px;
            text-align: center;
            background-color: #D64541;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td rowspan="5">
                <strong>
                <asp:GridView ID="GV_lista_aspirantes" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="ODS_obtener_aspirantes" ForeColor="Black" OnSelectedIndexChanged="GV_lista_aspirantes_SelectedIndexChanged" CssClass="auto-style43" AutoGenerateColumns="False">
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
                        <asp:TemplateField HeaderText="Codigo" InsertVisible="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="Tb_id_aspirante" runat="server" Text='<%# Bind("id_aspirante") %>' ReadOnly="True"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("id_aspirante") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_nombre" runat="server" MaxLength ="20" Text='<%# Bind("nombre_aspirante") %>' onkeypress="return Letras(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="R_nombre" runat="server" CssClass="auto-style51" ErrorMessage="*" ControlToValidate="TB_nombre" ></asp:RequiredFieldValidator>
                                </strong>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("nombre_aspirante") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Apellido">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_apellido" runat="server" MaxLength ="20" Text='<%# Bind("apellido_aspirante") %>' onkeypress="return Letras(event)"> </asp:TextBox>
                                <asp:RequiredFieldValidator ID="R_apellido" runat="server" ErrorMessage="*" ControlToValidate="tb_apellido"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("apellido_aspirante") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_fecha" runat="server" MaxLength ="15" Text ='<%# Bind("fecha_nacim") %>' onkeypress="return Numeros(event)" ReadOnly="True" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="R_fecha" runat="server" ControlToValidate="tb_fecha" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("fecha_nacim") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Direccion">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_direccion" runat="server" MaxLength ="15" Text='<%# Bind("direccion_asp") %>'>   </asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("direccion_asp") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Telefono">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_telefono" runat="server" MaxLength ="15" Text='<%# Bind("telefono_asp") %>' onkeypress="return Numeros(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="R_telefono" runat="server" ControlToValidate="tb_telefono" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("telefono_asp") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Estado">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_estado" runat="server" MaxLength ="15" Text='<%# Bind("estado_civil") %>' onkeypress="return Letras(event)" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="R_estado" runat="server" ControlToValidate="tb_estado" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("estado_civil") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Documento">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_documento" runat="server" MaxLength ="15" Text='<%# Bind("documento") %>' onkeypress="return Numeros(event)" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="R_documento" runat="server" ControlToValidate="tb_documento" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("documento") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sexo">
                            <EditItemTemplate>
                                <asp:TextBox ID="tb_sexo" runat="server" MaxLength ="15" Text='<%# Bind("sexo") %>' onkeypress="return Letras(event)" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="R_sexo" runat="server" ControlToValidate="tb_sexo" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("sexo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_obtener_aspirantes" runat="server" SelectMethod="obtenerAspirantes" TypeName="DAspirantes" UpdateMethod="EditarAspirantes">
                    <UpdateParameters>
                        <asp:Parameter Name="Idpm" Type="Int32" />
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Nacimiento" Type="String" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Celular" Type="String" />
                        <asp:Parameter Name="Estado" Type="String" />
                        <asp:Parameter Name="Documento" Type="String" />
                        <asp:Parameter Name="Sexo" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
            <td class="nuevoEstilo14"><span class="nuevoEstilo13"><strong><em>ACCIONE</em></strong></span><strong>S</strong></td>
            <td class="auto-style48">
                <asp:Button ID="bt_agregar_asp" runat="server" BorderColor="#C24E4B" BorderStyle="Double" CssClass="auto-style50" OnClick="bt_agregar_asp_Click" Text="Nuevo aspirante" />
            &nbsp;&nbsp;
                <asp:Image ID="Image8" runat="server" Height="62px" ImageUrl="~/imagenes/guardar_usuario.png" Width="64px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style47">
                <strong>
                <asp:Button ID="bt_suspender" runat="server" CssClass="auto-style49" OnClick="bt_suspender_Click" Text="Suspender Aspirante" />
                </strong>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style48">
                <asp:Image ID="Image9" runat="server" Height="57px" ImageUrl="~/imagenes/suspennder.png" Width="61px" />
            </td>
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

