<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListarNotas.aspx.cs" Inherits="ProyectoCitt.Views.Alumno.ListarNotas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" id="containerTabla" runat="server">
            <div class="panel">
                <div class="row">
                    <div class="col-md-12">
                        <h4>Listado de Notas</h4>
                        <br />
                        <div class="table-responsive">
                            <asp:Table runat="server" CssClass="table table-bordred table-striped" ID="tablaEstadoPermisos">
                                <asp:TableRow TableSection="TableHeader">
                                    <asp:TableHeaderCell>Curso</asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Nivel</asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Nota</asp:TableHeaderCell>                                    
                                </asp:TableRow>
                            </asp:Table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
