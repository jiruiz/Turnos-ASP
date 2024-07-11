using System;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI.WebControls;

namespace templateApp
{
  public partial class usuarios : System.Web.UI.Page
  {
    private DataClasses1DataContext mapeardor;

    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
        BindGridView();
      }
    }

    private void BindGridView()
    {
      using (var conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=templateDB;Integrated Security=True;"))
      {
        conn.Open();
        mapeardor = new DataClasses1DataContext(conn);

        var datosTurno = from i in mapeardor.datosTurno
                         where i.ID > 1
                         select new { i.ID, i.Nombre, i.Apellido, i.Mail, i.Servicio, i.Comentario, i.Telefono };

        GridView1.DataSource = datosTurno;
        GridView1.DataBind();
      }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
      GridView1.EditIndex = e.NewEditIndex;
      BindGridView();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
      GridView1.EditIndex = -1;
      BindGridView();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
      GridViewRow row = GridView1.Rows[e.RowIndex];
      int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

      string nombre = (row.FindControl("txtNombre") as TextBox)?.Text;
      string apellido = (row.FindControl("txtApellido") as TextBox)?.Text;
      string servicio = (row.FindControl("txtServicio") as TextBox)?.Text;
      string correo = (row.FindControl("txtCorreo") as TextBox)?.Text;
      int tel = Convert.ToInt32((row.FindControl("txtTelefono") as TextBox)?.Text);
      string comentario = (row.FindControl("txtComentario") as TextBox)?.Text;

      using (var conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=templateDB;Integrated Security=True;"))
      {
        conn.Open();
        mapeardor = new DataClasses1DataContext(conn);
        var t = mapeardor.datosTurno.Single(d => d.ID == id);
        t.Nombre = nombre;
        t.Apellido = apellido;
        t.Mail = correo;
        t.Telefono = tel;
        t.Servicio = servicio;
        t.Comentario = comentario;
        mapeardor.SubmitChanges();
      }
      GridView1.EditIndex = -1;
      BindGridView();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
      int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value); // Obtener el ID de la fila que se va a eliminar

      // Aquí iría la lógica para eliminar la fila de la base de datos, por ejemplo:
      using (SqlConnection conn = new SqlConnection("cadena_de_conexión"))
      {
        string sql = "DELETE FROM tabla WHERE id = @id";
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("@id", id);

        conn.Open();
        cmd.ExecuteNonQuery();
      }

      // Volver a enlazar el GridView después de eliminar
      BindGridView();
    }

    protected void txtBoton_Click(object sender, EventArgs e)
    {
      try
      {
        datosTurno carga = new datosTurno
        {
          /*
          Nombre = txtNombre.Text,
          Apellido = txtApellido.Text,
          Telefono = int.Parse(txtTelefono.Text),
          Servicio = txtServicio.Text,
          Mail = txtCorreo.Text,
          Comentario = txtComentario.Text
          */
        };

        using (var conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=templateDB;Integrated Security=True;"))
        {
          conn.Open();
          mapeardor = new DataClasses1DataContext(conn);
          mapeardor.datosTurno.InsertOnSubmit(carga);
          mapeardor.SubmitChanges();
        }
        Response.Redirect("usuarios.aspx", false);
      }
      catch (SqlException ex)
      {
        Console.WriteLine("Error de SQL: " + ex.Message);
      }
      catch (Exception ex)
      {
        throw new Exception("Error en el Servidor. Contactese con Soporte Tecnico", ex);
      }
    }
  }
}
