function validacion() {
    let apellido = document.getElementById("txtApellido").value;
    let nombre = document.getElementById("txtNombre").value;
    let telefono = document.getElementById("txtTelefono").value;
    let email = document.getElementById("txtCorreo").value;
    let turno = document.getElementById("txtServicio").value;
    

    if (apellido == "" || !isNaN(apellido) || !/^[a-zA-Z\s]+$/.test(apellido)) {
        alert("el campo Apellido debe contener solo LETRAS, no Numeros");
        return false;
    }
    if (nombre == "" || !isNaN(nombre) || !/^[a-zA-Z\s]+$/.test(nombre)) {
        alert("el campo Nombre debe contener solo LETRAS, no Numeros");
        return false;
    }
    if (telefono == "" || isNaN(telefono)) {
          alert("el campo TELEFONO no puede estar vacio, Y DEBE INGRESAR SOLO NUMEROS");
          return false;
      }
    if (email == "" || !isNaN(email) || email.indexOf("@") === -1) {
        alert("el campo E-Mail no puede estar vacio, y Debe contener el Signo de  Arroba ");
        return false;
    }
    if (turno == "" || !isNaN(turno)) {
        alert("Debes seleccionar el turno a Cursar");
        return false;
    }
    // Nueva validación para el campo de teléfono
    if (telefono.trim() === "") {
      alert("El campo Teléfono no puede estar vacío");
      return false;
    }
    return true; // Devuelve true si todas las validaciones son exitosas
}
function validarCampoComentario()
{
    let comentarioIngresado = document.getElementById("txtComentario");

    if (comentarioIngresado.value == "") {
        alert("Debe ingresar un comentario de manera obligatoria");
        return false;
    }
    
}
