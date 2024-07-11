<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="templateApp.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Usuarios</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
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
    <section class="content">
        <div>
            <asp:GridView ID="GridView1" CssClass="datatbemp" Width="100%" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" 
                AutoGenerateColumns="false"
                OnRowEditing="GridView1_RowEditing" 
                OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                OnRowUpdating="GridView1_RowUpdating"
                OnRowDeleting="GridView1_RowDeleting"
                DataKeyNames="ID">
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
    </section>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>
    <script>
      $(document).ready(function () {
        $(".datatbemp").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
      });
    </script>
</asp:Content>
