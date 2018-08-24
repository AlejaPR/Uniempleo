<%@ Page Title="" Language="C#" MasterPageFile="~/view/MasterAdministrador.master" AutoEventWireup="true" CodeFile="~/controller/ReporteEmpresa.aspx.cs" Inherits="view_ReporteEmpresa" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <CR:CrystalReportViewer ID="CRV_Empresa" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="50px" ReportSourceID="CRS_empresa" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="350px" />
                <CR:CrystalReportSource ID="CRS_empresa" runat="server">
                    <Report FileName="C:\Users\Hp-14\Desktop\PARA MODIFICAR\UNIEMPLEO2\uniempleo\Reportes\ReporteEmpresas.rpt">
                    </Report>
                </CR:CrystalReportSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

