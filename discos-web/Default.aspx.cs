
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using dominio;

namespace discos_web
{
    public partial class _Default : Page
    {
        public List<Articulo>ListaDiscos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();

            ListaDiscos = negocio.ListarconSP();

            if(!IsPostBack)
            {
                repRepetidor.DataSource = ListaDiscos;
                repRepetidor.DataBind();

            }


                
        }

        protected void btnEjemplo_Click(object sender, EventArgs e)
        {
            string valor = ((Button)sender).CommandArgument;
        }
    }
}