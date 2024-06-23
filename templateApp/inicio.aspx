<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="templateApp.inicio" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 

  <title>Nueva Seccion de inicio</title>
  <script type="text/javascript" src="JavaScripts/JavaScript.js"></script>
 
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- general form elements disabled -->
    <div class="card card-warning">
        <div class="card-header">
            <h3 class="card-title">Datos del Turno</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <div class="row">
                <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group">
                        <label>Nombre</label>
                        <asp:TextBox ID="txtNombre" type="text" class="form-control"  placeholder="Ingrese nombre ..." runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Apellido</label>
                        <asp:TextBox ID="txtApellido" type="text" class="form-control"  placeholder="Ingrese Apellido ..." runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group">
                        <label>Telefono</label>
                        <asp:TextBox ID="txtTelefono" type="text" class="form-control"  placeholder="Ingrese telefono ..." runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Mail</label>
                        <asp:TextBox ID="txtCorreo" type="text" class="form-control"  placeholder="Ingrese correo electronico ..." runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group">
                        <!-- checkbox -->
                        <div>
                            <br>
                            <asp:DropDownList  runat="server" ID="txtServicio" CssClass="desenfocada">
                                <asp:ListItem Text="Seleccione Servicio" Value="" ></asp:ListItem>
                                <asp:ListItem Text="Manos" Value="Manos"></asp:ListItem>
                                <asp:ListItem Text="Pies" Value="Pies"></asp:ListItem>
                                <asp:ListItem Text="Alisado" Value="Alisado"></asp:ListItem>
                                <asp:ListItem Text="Botox" Value="Botox"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <label>Ingrese un comentario:</label>
                        <br>
                        <asp:TextBox ID="txtComentario" runat="server" TextMode="MultiLine" Rows="4" Columns="50"></asp:TextBox>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
    <!-- general form elements disabled -->
    <asp:Button ID="txtBoton" runat="server" Text="Enviar" OnClientClick="return validacion()" OnClick="txtBoton_Click"  />
</asp:Content>
