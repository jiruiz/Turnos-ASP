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
  public partial class usuarios : System.Web.UI.Page
  {

    //CREAMOS LAS VARIABLES PROVADAS
    private SqlConnection conn;
    //DATACLASS1DATACONEXT -> conexion a LINQ (ORM - mapeador de la base de datos)
    private DataClasses1DataContext mapeardor;
    protected void Page_Load(object sender, EventArgs e)
    {
      conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=templateDB;");
      conn.Open();
      mapeardor = new DataClasses1DataContext(conn);
      if (!IsPostBack)
      {
        cargarGrilla();
        DataTable dt = ConvertGridViewToDataTable(GridView1);

        string scriptT = @"<script>
                    $(document).ready(function() {
                        $('#<%= GridView1.ClientID %>').DataTable(); 
                    });
                    </script>";
        ScriptManager.RegisterStartupScript(this, GetType(), "DataTables", scriptT, false);
        string script = @"<script>
            $(document).ready(function() {
                $('#example1').DataTable(); // ID de tu tabla
                $('#example2').DataTable(); // ID de tu tabla
            });
            </script>";
        ClientScript.RegisterStartupScript(this.GetType(), "DataTables", script);
      }

    }
    private DataTable ConvertGridViewToDataTable(GridView gridView)
{
    DataTable dt = new DataTable();
    
    // Agregar las columnas al DataTable basándote en las columnas del GridView
    foreach (DataControlField column in gridView.Columns)
    {
        dt.Columns.Add(column.HeaderText);
    }

    // Agregar las filas al DataTable basándote en las filas del GridView
    foreach (GridViewRow row in gridView.Rows)
    {
        DataRow dr = dt.NewRow();
        for (int i = 0; i < gridView.Columns.Count; i++)
        {
            dr[i] = row.Cells[i].Text;
        }
        dt.Rows.Add(dr);
    }

    return dt;
}
    private void cargarGrilla()
    {
      var datosTurno = from i in mapeardor.datosTurno
                       where i.ID > 1
                       select new { i.ID, i.Nombre, i.Apellido, i.Mail, i.Servicio, i.Comentario, i.Telefono };


      GridView1.DataSource = datosTurno;
      GridView1.DataBind();
    }
    protected void BotonMostrar_Click(object sender, EventArgs e)
    {
      cargarGrilla();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
      GridView1.EditIndex = -1;
      cargarGrilla();
    }
    

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
      GridView1.EditIndex = e.NewEditIndex;
      cargarGrilla();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
      GridViewRow fila = GridView1.Rows[e.RowIndex];
      int codigo = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
      string nombre = (fila.FindControl("txtNombre") as TextBox)?.Text;
      string apellido = (fila.FindControl("txtApellido") as TextBox)?.Text;
      string servicio = (fila.FindControl("txtServicio") as TextBox)?.Text;
      string correo = (fila.FindControl("txtCorreo") as TextBox)?.Text;
      int tel = Convert.ToInt32((fila.FindControl("txtTelefono") as TextBox)?.Text);
      string comentario = (fila.FindControl("txtComentario") as TextBox)?.Text;

      datosTurno consulta = mapeardor.datosTurno.SingleOrDefault(c => c.ID == codigo);
      if (consulta != null)
      {
        // Actualizar las propiedades en la consulta
        if (nombre != null)
          consulta.Nombre = nombre;
        if (apellido != null)
          consulta.Apellido = apellido;
        if (servicio != null)
          consulta.Servicio = servicio;
        if (correo != null)
          consulta.Correo = correo;
        if (comentario != null)
          consulta.Comentario = comentario;
      

          // Guardar los cambios en la base de datos
          mapeardor.SubmitChanges();
      }

      GridView1.EditIndex = -1;
      cargarGrilla();
    }






  }

}
