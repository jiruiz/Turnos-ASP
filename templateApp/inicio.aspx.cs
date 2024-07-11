using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace templateApp
{
  public partial class inicio : System.Web.UI.Page
  {
    //CREAMOS LAS VARIABLES PROVADAS
    private SqlConnection conn;
    //DATACLASS1DATACONEXT -> conexion a LINQ (ORM - mapeador de la base de datos)
    private DataClasses1DataContext mapeardor;
    protected void Page_Load(object sender, EventArgs e)
    {
      conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=templateDB;Integrated Security=True;");
      conn.Open();
      mapeardor = new DataClasses1DataContext(conn);
      
    }

    protected void Unnamed4_Click(object sender, EventArgs e)
    {
      
    }

    protected void txtBoton_Click(object sender, EventArgs e)
    {
      try
      {
        datosTurno carga = new datosTurno
        {
          Nombre = txtNombre.Text,
          Apellido = txtApellido.Text,
          Telefono = int.Parse(txtTelefono.Text),
          Servicio = txtServicio.Text,
          Mail = txtCorreo.Text,
          Comentario = txtComentario.Text
        };

        

        mapeardor.datosTurno.InsertOnSubmit(carga);
        mapeardor.SubmitChanges();
        Response.Redirect("usuarios.aspx",false);
      }
      catch (SqlException ex)
      {
        // Manejar errores de SQL específicos
        // Por ejemplo, registrar el mensaje de error o notificar al usuario
        Console.WriteLine("Error de SQL: " + ex.Message);
      }
      catch (Exception ex)
      {                                                                                         
        // Manejar otros errores             
        throw new Exception("Error en el Servidor. Contactese con Soporte Tecnico", ex);
      }
    }
  }
}
