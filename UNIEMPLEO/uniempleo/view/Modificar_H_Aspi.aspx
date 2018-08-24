<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAspirante.master" AutoEventWireup="true" CodeFile="~/controller/Modificar_H_Aspi.aspx.cs" Inherits="view_Modificar_H_Aspi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <SCRIPT language=Javascript>  

   function caracteres(evt) {

    var charCode = (evt.which) ? evt.which : event.keyCode;

    if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (charCode < 33 && charCode > 31) || (charCode < 9 && charCode > 7))

     return true;  

      return false;  }
        function numeros(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode;

            if ((charCode > 47 && charCode < 58) || (charCode < 33 && charCode > 31) || (charCode < 9 && charCode > 7))

                return true;

            return false;
        }
        function dir(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode;

            if ((charCode > 34 && charCode < 60) || (charCode < 33 && charCode > 31) || (charCode < 9 && charCode > 7))

             return true;

                return false;
  </SCRIPT>
    <style type="text/css">
        .nuevoEstilo6 {
            font-family: "MALgun Gothic";
        }
        .auto-style38 {
            font-family: "MALgun Gothic";
            font-size: large;
        }
        .nuevoEstilo7 {
            font-family: "MALgun Gothic";
        }
        .nuevoEstilo8 {
            font-family: "malgun Gothic";
        }
        .auto-style39 {
            font-family: "malgun Gothic";
            color: #7197D6;
        }
        .auto-style40 {
            color: #7197D6;
        }
        .nuevoEstilo9 {
            font-family: "malgun Gothic";
        }
        .auto-style41 {
            color: #C8ECF4;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style38"><strong>MODIFICA TU HOJA DE VIDA UNIEMPLEO</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style39"><strong class="nuevoEstilo7">DATOS PERSONALES</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="nuevoEstilo8">
                <asp:GridView ID="GV_datos_personales" runat="server" Orientation="Vertical" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" DataSourceID="ods_muestra" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LB_EditarDatosAsp" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Codigo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModCodigoAsp" runat="server" ReadOnly="True" Text='<%# Bind("id_aspirante") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("id_aspirante") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_CambiaNombAsp" runat="server" Text='<%# Bind("nombre_aspirante") %>' onkeypress="return caracteres(event)" MaxLength="15"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_CambiaNombAsp" ErrorMessage="*" ForeColor="#EF4836"></asp:RequiredFieldValidator>
                                </strong>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("nombre_aspirante") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Apellido">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModApellidoAsp" runat="server" Text='<%# Bind("apellido_aspirante") %>' onkeypress="return caracteres(event)" MaxLength="15"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_ModApellidoAsp" runat="server" ControlToValidate="TB_ModApellidoAsp" ErrorMessage="*" ForeColor="#EF4836"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("apellido_aspirante") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha de nacimiento">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModNacimientoAsp" runat="server" Text='<%# Bind("fecha_nacim") %>' ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_ModnacimientoAsp" runat="server" ControlToValidate="TB_ModNacimientoAsp" ErrorMessage="*" ForeColor="#EF4836"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("fecha_nacim") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Dirección">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModDireccionAsp" runat="server" Text='<%# Bind("direccion_asp") %>' MaxLength="25" onkeypress=" return dir(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_ModDireccionAsp" runat="server" ControlToValidate="TB_ModDireccionAsp" ErrorMessage="*" ForeColor="#EF4836"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("direccion_asp") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Estado civil">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModCivilAsp" runat="server" ReadOnly="True" Text='<%# Bind("estado_civil") %>'></asp:TextBox>
                                <span class="auto-style41">d</span>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("estado_civil") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Numero celular">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModTelefonoAsp" runat="server" Text='<%# Bind("telefono_asp") %>' MaxLength="10" onkeypress="return numeros(event)"></asp:TextBox>
                                <strong>
                                <asp:RequiredFieldValidator ID="RFV_ModTelefonoAsp" runat="server" ControlToValidate="TB_ModTelefonoAsp" ErrorMessage="*" ForeColor="#EF4836"></asp:RequiredFieldValidator>
                                </strong>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("telefono_asp") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="N. documento">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModDocumentoAsp" runat="server" Text='<%# Bind("documento") %>' onkeypress="return numeros(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_ModDocumentoAsp" runat="server" ControlToValidate="TB_ModDocumentoAsp" ErrorMessage="*" ForeColor="#EF4836"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("documento") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sexo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModSexoAsp" runat="server" Text='<%# Bind("Sexo") %>' ReadOnly="True"></asp:TextBox>
                                <span class="auto-style41">d</span>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Sexo") %>'></asp:Label>
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
                <asp:ObjectDataSource ID="ods_muestra" runat="server" SelectMethod="modificarPerfil" TypeName="Dmodificar" UpdateMethod="Editardp">
                    <SelectParameters>
                        <asp:SessionParameter Name="idper" SessionField="id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Idpm" Type="Int32" />
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Nacimiento" Type="String" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Celular" Type="String" />
                        <asp:Parameter Name="Estado" Type="String" />
                        <asp:Parameter Name="documento" Type="String" />
                        <asp:Parameter Name="sexo" Type="String" />
                        <asp:Parameter Name="id_aspirante" Type="Int32" />
                        <asp:Parameter Name="nombre_aspirante" Type="String" />
                        <asp:Parameter Name="apellido_aspirante" Type="String" />
                        <asp:Parameter Name="fecha_nacim" Type="String" />
                        <asp:Parameter Name="direccion_asp" Type="String" />
                        <asp:Parameter Name="telefono_asp" Type="String" />
                        <asp:Parameter Name="estado_civil" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td rowspan="4">&nbsp;</td>
            <td class="auto-style39"><strong>FORMACION ACADEMICA</strong></td>
            <td rowspan="4">&nbsp;</td>
        </tr>
        <tr class="nuevoEstilo8">
            <td>
                <asp:GridView ID="GV_Forma_acae" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" DataSourceID="ODS_formacion" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField HeaderText="Codigo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModCodFAsp" runat="server" ReadOnly="True" Text='<%# Bind("id_formacion") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("id_formacion") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Titulo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModTituloAsp" runat="server" Text='<%# Bind("titulo") %>' MaxLength="40" onkeypress="return caracteres(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_ModTituloAsp" runat="server" ControlToValidate="TB_ModTituloAsp" ErrorMessage="*" ForeColor="#EF4836"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("titulo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Lugar de grado">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModLugarAsp" runat="server" Text='<%# Bind("lugar_grado") %>' MaxLength="25" onkeypress="return caracteres(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_ModLugarAsp" runat="server" ControlToValidate="TB_ModLugarAsp" ErrorMessage="*" ForeColor="#EF4836"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("lugar_grado") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Telefono">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModTelefonoAsp" runat="server" Text='<%# Bind("telefono_lugar") %>' MaxLength="10" onkeypress="return numeros(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_ModTelefonoAsp" runat="server" ControlToValidate="TB_ModTelefonoAsp" ErrorMessage="*" ForeColor="#EF4836"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("telefono_lugar") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Habilidad #1">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModHab1Asp" runat="server" Text='<%# Bind("habilidad1") %>' MaxLength="25" onkeypress="return caracteres(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Hab1Asp" runat="server" ControlToValidate="TB_ModHab1Asp" ErrorMessage="*" ForeColor="#EF4836"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("habilidad1") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Habilidad #2">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModHab2Asp" runat="server" Text='<%# Bind("habilidad2") %>' MaxLength="25" onkeypress="return caracteres(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Hab2Asp" runat="server" ControlToValidate="TB_ModHab2Asp" ErrorMessage="*" ForeColor="#EF4836"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("habilidad2") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Habilidad #3">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ModHab3Asp" runat="server" Text='<%# Bind("habilidad3") %>' MaxLength="25" onkeypress="return caracteres(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Hab3Asp" runat="server" ControlToValidate="TB_ModHab3Asp" ErrorMessage="*" ForeColor="#EF4836"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("habilidad3") %>'></asp:Label>
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
                <asp:ObjectDataSource ID="ODS_formacion" runat="server" SelectMethod="obtenerFacae" TypeName="Dmodificar" UpdateMethod="EditarFacae">
                    <SelectParameters>
                        <asp:SessionParameter Name="idper" SessionField="id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Idf" Type="Int32" />
                        <asp:Parameter Name="Titulo" Type="String" />
                        <asp:Parameter Name="Lugar" Type="String" />
                        <asp:Parameter Name="Telefono" Type="String" />
                        <asp:Parameter Name="Habi1" Type="String" />
                        <asp:Parameter Name="Habi2" Type="String" />
                        <asp:Parameter Name="Habi3" Type="String" />
                        <asp:Parameter Name="id_formacion" Type="Int32" />
                        <asp:Parameter Name="habilidad1" Type="String" />
                        <asp:Parameter Name="habilidad2" Type="String" />
                        <asp:Parameter Name="habilidad3" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr class="nuevoEstilo8">
            <td class="auto-style40"><strong>EXPERIENCIA LABORAL</strong></td>
        </tr>
        <tr class="nuevoEstilo8">
            <td>
                <asp:GridView ID="GV_Exp_lab" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" DataSourceID="ODS_Experiencia">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
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
                <asp:ObjectDataSource ID="ODS_Experiencia" runat="server" SelectMethod="obtenerExpL" TypeName="Dmodificar" UpdateMethod="EditarExpl">
                    <SelectParameters>
                        <asp:SessionParameter Name="idper" SessionField="id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Idexp" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="cargo" Type="String" />
                        <asp:Parameter Name="jefe" Type="String" />
                        <asp:Parameter Name="telefono" Type="String" />
                        <asp:Parameter Name="funcion" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td rowspan="3">&nbsp;</td>
            <td class="auto-style39"><strong>TIPO DE EMPLEO</strong></td>
            <td rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GV_tipoe" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="nuevoEstilo9" GridLines="Horizontal" DataSourceID="ODS_tipoe">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
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
                <asp:ObjectDataSource ID="ODS_tipoe" runat="server" SelectMethod="obtenerTipoe" TypeName="Dmodificar" UpdateMethod="EditarTipoe">
                    <SelectParameters>
                        <asp:SessionParameter Name="idper" SessionField="id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Idtipo" Type="Int32" />
                        <asp:Parameter Name="termino" Type="String" />
                        <asp:Parameter Name="horario" Type="String" />
                        <asp:Parameter Name="tiempo" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

