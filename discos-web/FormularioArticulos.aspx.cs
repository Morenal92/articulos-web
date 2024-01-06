using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using Negocio;

namespace discos_web
{
    public partial class FormularioArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Enabled = false;

            try
            {
                //configuracion inicial de la pantalla
                if (!IsPostBack)
                {

                    CategoriaNegocio negocio = new CategoriaNegocio();
                    List<Categoria> lista = negocio.listar();

                    ddlCategoria.DataSource = lista;
                    ddlCategoria.DataValueField = "id";
                    ddlCategoria.DataTextField = "Descripcion";
                    ddlCategoria.DataBind();

                    MarcaNegocio marcaNegocio = new MarcaNegocio();
                    List<Marca> listaMarca = marcaNegocio.listar();

                    ddlMarca.DataSource = listaMarca;
                    ddlMarca.DataValueField = "id";
                    ddlMarca.DataTextField = "Descripcion";
                    ddlMarca.DataBind();

                }
                //configuracion si estamos modificando:
                if(Request.QueryString["Id"] != null)
                {
                    ArticuloNegocio negocio = new ArticuloNegocio();
                    List<Articulo> lista = negocio.listar(Request.QueryString["id"].ToString());
                    Articulo seleccionado = lista[0];
                }
            }


            // string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";




            catch (Exception ex)
                {

                    Session.Add("Error", ex);
                }

              

        }

        

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
                try
                {
                    Articulo nuevo = new Articulo();
                    ArticuloNegocio negocio = new ArticuloNegocio();
                    nuevo.Codigo = txtCodigo.Text;  
                    nuevo.Nombre = txtNombre.Text;
                    nuevo.Descripcion = txtDescripcion.Text;
                    nuevo.ImagenUrl = txtImagenUrl.Text;

                    nuevo.Categoria = new Categoria();
                    nuevo.Categoria.Id = int.Parse(ddlCategoria.SelectedValue);
                    
                    nuevo.Marca = new Marca();
                    nuevo.Marca.Id = int.Parse(ddlCategoria.SelectedValue);

                    negocio.agregarconSp(nuevo);
                    Response.Redirect("ListaDeDiscos.aspx", false);


                }
                catch (Exception ex)
                {

                    Session.Add("Error", ex);
                    throw;
            }

                }

        protected void ImagenUrl_TextChanged(object sender, EventArgs e)
        {

        }
    }
}