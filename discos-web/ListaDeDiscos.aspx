<%@ Page Title="Lista de Articulos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaDeDiscos.aspx.cs" Inherits="discos_web.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Lista de Articulos</h1>
    <asp:GridView ID="dgvDiscos" CssClass="table" runat="server" DataKeyNames="Id"
        AutoGenerateColumns="false" 
        OnSelectedIndexChanged="dgvDiscos_SelectedIndexChanged"
        OnPageIndexChanging="dgvDiscos_PageIndexChanging" 
        AllowPaging="true" pageSize="5">

        <Columns>
            <asp:BoundField headerText ="Nombre" DataField ="Nombre"/>
            <asp:BoundField headerText ="Codigo" DataField ="Codigo"/>
            <asp:BoundField headerText ="Categoria" DataField ="Categoria"/>
            <asp:CommandField headerText ="Accion" ShowSelectButton="true" SelectText="✍"/>
        </Columns>
    
        
    </asp:GridView>
    <a href="FormularioArticulos.aspx" class="btn btn-primary">Agregar</a>
</asp:Content>
