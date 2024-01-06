<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="discos_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Hola que tal</h1>
    <p>LLegaste a tu sitio de discos...tu lugar en el mundo</p>
    <div class="row row-cols-1 row-cols-md-3 g-4">

<%--        <%  
            foreach(dominio.Articulo arti in ListaDiscos)
            {
        %>
                  
               <div class="col">
                <div class="card">
                  <img src="<%:arti.ImagenUrl%>" " class="card-img-top" alt="...">
                  <div class="card-body">
                    <h5 class="card-title"> <%: arti.Nombre %> </h5>
                    <p class="card-text"> <%:arti.Descripcion %> </p>
                     <a href="detalleArticulo.aspx?id=<%: arti.Id%>">Ver detalles</a>
                  </div>
                </div>
              </div>
       
             <% }%>--%>

         <asp:Repeater  runat="server" id="repRepetidor">
             
            <ItemTemplate>
                
                 <div class="col">
                      <div class="card">
                        <img src="<%#Eval("ImagenUrl")%>" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title"> <%#Eval("Nombre") %> </h5>
                          <p class="card-text"> <%#Eval("Descripcion") %> </p>
                           <a href="detalleArticulo.aspx?id=<%#Eval("Id")%>">Ver detalles</a>
                            <asp:button Text="ejemplo" CssClass="btn btn-primary" runat="server" id="btnEjemplo" CommandArgument='<%#Eval("Id")%>' CommandName="ArticuloId" OnClick="btnEjemplo_Click">

                            </asp:button>

                           
                        </div>
                      </div>
                    </div>


            </ItemTemplate>
             
         </asp:Repeater>
             
             


 
 
 
</div>

</asp:Content>
