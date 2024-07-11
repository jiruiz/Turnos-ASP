<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="productos.aspx.cs" Inherits="templateApp.productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <title>Usuarios</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css">
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Sistema de Gestion</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="inicio.aspx">Inicio</a></li>
            <li class="breadcrumb-item active">Blank Page</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">DataTable with minimal features & hover style</h3>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <asp:GridView ID="GridView1" runat="server" CssClass="datatbemp" AutoGenerateColumns="false"
                OnRowCancelingEdit="rowCancelEditEvent" OnRowDeleting="rowDeletingEvent" OnRowEditing="rowEditingEvent" OnRowUpdating="rowUpdatingEvent" DataKeyNames="ID">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                <Columns>
                  <asp:TemplateField HeaderText="NOMBRE">
                    <ItemTemplate>
                      <asp:Label ID="labelNombre" runat="server" Text='<%# Bind("NOMBRE") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                      <asp:TextBox ID="txtNombre" runat="server" Text='<%# Bind("NOMBRE") %>'></asp:TextBox>
                    </EditItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="APELLIDO">
                    <ItemTemplate>
                      <asp:Label ID="labelApellido" runat="server" Text='<%# Bind("APELLIDO") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                      <asp:TextBox ID="txtApellido" runat="server" Text='<%# Bind("APELLIDO") %>'></asp:TextBox>
                    </EditItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="TELEFONO">
                    <ItemTemplate>
                      <asp:Label ID="labelTelefono" runat="server" Text='<%# Bind("TELEFONO") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                      <asp:TextBox ID="txtTelefono" runat="server" Text='<%# Bind("TELEFONO") %>'></asp:TextBox>
                    </EditItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="MAIL">
                    <ItemTemplate>
                      <asp:Label ID="labelCorreo" runat="server" Text='<%# Bind("MAIL") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                      <asp:TextBox ID="txtCorreo" runat="server" Text='<%# Bind("MAIL") %>'></asp:TextBox>
                    </EditItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="SERVICIO">
                    <ItemTemplate>
                      <asp:Label ID="labelServicio" runat="server" Text='<%# Bind("SERVICIO") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                      <asp:TextBox ID="txtServicio" runat="server" Text='<%# Bind("SERVICIO") %>'></asp:TextBox>
                    </EditItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="COMENTARIO">
                    <ItemTemplate>
                      <asp:Label ID="labelComentario" runat="server" Text='<%# Bind("Comentario") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                      <asp:TextBox ID="txtComentario" runat="server" Text='<%# Bind("Comentario") %>'></asp:TextBox>
                    </EditItemTemplate>
                  </asp:TemplateField>
                  <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" />
                </Columns>
              </asp:GridView>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
<script>
  <script>
    $(document).ready(function () {
      $(".datatbemp").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
    });
</script>

  <!--
  <script>
      $(document).ready(function () {
          $('#<%= GridView1.ClientID %>').DataTable({
              "responsive": true,
              "lengthChange": false,
              "autoWidth": false,
              "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
          }).buttons().container().appendTo('#<%= GridView1.ClientID %>_wrapper .col-md-6:eq(0)');
      });
  </script>
  -->


</asp:Content>
