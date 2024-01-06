<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormularioArticulos.aspx.cs" Inherits="discos_web.FormularioArticulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-6">
           
            <div class="mb-3">
              <label for="txtId" class="form-label">Id: </label>
                <asp:TextBox runat="server" ID="txtId" CssClass="form-control"/>
              
            </div>

             <div class="mb-3">
               <label for="txtCodigo" class="form-label">Codigo: </label>
                 <asp:TextBox runat="server" ID="txtCodigo" CssClass="form-control"/>
  
             </div>

            <div class="mb-3">
              <label for="txtNombre" class="form-label">Nombre: </label>
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control"/>
              
            </div>

           

            <div class="mb-3">
              <label for="txtMarca" class="form-label">Marca: </label>
                <asp:DropDownList ID="ddlMarca" cssClass="form-select" runat="server"></asp:DropDownList>                
  
            </div>

             <div class="mb-3">
               <label for="txtCategoria" class="form-label">Categoria: </label>
                 <asp:DropDownList ID="ddlCategoria" cssClass="form-select" runat="server"></asp:DropDownList>                
  
             </div>

            <div class="mb-3">
                <asp:Button Text="Aceptar" ID="btnAceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" runat="server" />
                <a href="Default.aspx">Cancelar</a>
                               
            </div>
    
    </div>


           
            
            
            <%-- public int Id { get; set; }
 [DisplayName("Código")]
 public string Codigo { get; set; }
 public string Nombre { get; set; }

 [DisplayName("Descripción")]
 public string Descripcion { get; set; }

 public string ImagenUrl { get; set; }
 public decimal Precio { get; set; }
 public Marca Marca { get; set; }
 public Categoria Categoria { get; set; }--%>

            <div class="col-6">

                 <div class="mb-3">
                   <label for="txtDescripcion" class="form-label">Descripcion: </label>
                     <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDescripcion" CssClass="form-control"/>
  
             </div>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <div class="mb-3">
                          <label for="txtImagenUrl" class="form-label">Imagen Url: </label>
                            <asp:TextBox runat="server"  ID="txtImagenUrl" CssClass="form-control"
                                AutoPostBack="true" OnTextChanged="ImagenUrl_TextChanged"/>
  
                           </div>
                        <asp:Image ImageUrl="https://editorial.unc.edu.ar/wp-content/uploads/sites/33/2022/09/placeholder.png"                          
                            ID="imgArticulos" runat="server" Width="60%" />
                    </ContentTemplate>
                </asp:UpdatePanel>

                    

            

        </div>

    </div>
</asp:Content>
