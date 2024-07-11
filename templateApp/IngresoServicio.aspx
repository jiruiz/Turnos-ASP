<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="templateApp.inicio" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 

    <title>Nueva Seccion de inicio</title>
  <script type="text/javascript" src="JavaScripts/JavaScript.js"></script>
 
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
    <!-- general form elements disabled -->
    <div class="card card-warning">
        <div class="card-header">
            <h3 class="card-title">Ingresar Servicio Realizado</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <div class="row">
                <div class="col-sm-6">
                    <!-- text input -->
                    <div>
                        <br>
                      <label>Cliente</label>

                        <asp:DropDownList  runat="server" ID="DropDownList2" CssClass="desenfocada">
                            <asp:ListItem Text="Seleccione Cliente" Value="" ></asp:ListItem>
                            <asp:ListItem Text="Manos" Value="Manos"></asp:ListItem>
                            <asp:ListItem Text="Pies" Value="Pies"></asp:ListItem>
                            <asp:ListItem Text="Alisado" Value="Alisado"></asp:ListItem>
                            <asp:ListItem Text="Botox" Value="Botox"></asp:ListItem>
                        </asp:DropDownList>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <div class="form-group">
                          <label>Telefono</label>
                          <asp:TextBox ID="txtTelefono" type="text" class="form-control"  placeholder="Ingrese telefono ..." runat="server"></asp:TextBox>
                      </div>
                      
                      <div class="form-group">
                          <label>Telefono</label>
                          <asp:TextBox ID="TextBox1" type="text" class="form-control"  placeholder="Ingrese telefono ..." runat="server"></asp:TextBox>
                      </div>
                 
                    </div>
                </div>
              
                        <label>Servicio</label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="desenfocada">
                            <asp:ListItem Text="Manos y Pies" Value=""></asp:ListItem>
                            <asp:ListItem Text="Manos Esmalte Comun" Value="Manos Esmalte Comun"></asp:ListItem>
                            <asp:ListItem Text="Manos Esmalte Semipermanente" Value="Manos Esmalte Semipermanente"></asp:ListItem>
                            <asp:ListItem Text="Poligel" Value="Poligel"></asp:ListItem>
                            <asp:ListItem Text="SoftGel" Value="SoftGel"></asp:ListItem>
                            <asp:ListItem Text="Alisado" Value="Alisado"></asp:ListItem>
                            <asp:ListItem Text="Corte Femenino" Value="Corte Femenino"></asp:ListItem>
                            <asp:ListItem Text="Botox" Value="Botox"></asp:ListItem>
                             <asp:ListItem Text="Botox" Value="Botox"></asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
             
            <div class="row">
                <div class="col-sm-6">
                    <!-- text input -->

            </div>
            <div class="row">
                <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group">
                        <!-- checkbox -->
                        <div>
                            <br>
                            <asp:DropDownList  runat="server" ID="txtCliente" CssClass="desenfocada">
                                <asp:ListItem Text="Seleccione Cliente" Value="" ></asp:ListItem>
                                <asp:ListItem Text="Manos" Value="Manos"></asp:ListItem>
                                <asp:ListItem Text="Pies" Value="Pies"></asp:ListItem>
                                <asp:ListItem Text="Alisado" Value="Alisado"></asp:ListItem>
                                <asp:ListItem Text="Botox" Value="Botox"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      <div>
                      
                  </div>
                        <label>Ingrese un comentario adicional:</label>
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
