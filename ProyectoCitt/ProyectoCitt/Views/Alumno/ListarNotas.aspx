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
        <form runat="server">
            <asp:Button ID="calProm" CssClass="btn btn-success" runat="server" OnClick="calProm_Click" Text="Calcular Promedio" />
        </form>
        <br />
        <div class="panel" runat="server" id="promedios" hidden="hidden">
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <asp:Table runat="server" CssClass="table table-bordred table-striped" ID="proTable">
                            <asp:TableRow TableSection="TableHeader">
                                <asp:TableHeaderCell>PROMEDIO EN HTM</asp:TableHeaderCell>
                                <asp:TableHeaderCell>PROMEDIO EN CSS</asp:TableHeaderCell>
                                <asp:TableHeaderCell>PROMMEDIO EN JQUERY</asp:TableHeaderCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
