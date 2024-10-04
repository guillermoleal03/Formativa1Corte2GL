using System;
using System.Web;
using System.Web.UI;

namespace Formativa1Corte2GL
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Iniciar en la primera vista (View1)
                MultiView1.ActiveViewIndex = 0;
            }
        }

        // Método para cambiar a la vista 1
        protected void CambiarAVista1(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        // Método para cambiar a la vista 2
        protected void CambiarAVista2(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        // Evento Click del botón Guardar
        protected void guardar(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    // Guardar archivo en el servidor, en la carpeta 'Archivos'
                    string ruta = Server.MapPath("~/Archivos/") + FileUpload1.FileName;
                    FileUpload1.SaveAs(ruta);
                    Response.Write("Archivo guardado con éxito en: " + ruta);
                }
                catch (Exception ex)
                {
                    Response.Write("Ocurrió un error al guardar el archivo: " + ex.Message);
                }
            }
            else
            {
                Response.Write("Por favor, selecciona un archivo.");
            }
        }
    }
}
