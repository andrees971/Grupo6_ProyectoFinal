function cambioPagina(){
    location.href = "registro.html"
}

function inicio(){
    if( document.getElementById('usuario').value == 'restaurante' && document.getElementById('contraseña').value == 'restaurante'){
        location.href = "restaurante.html"
    }else if(document.getElementById('usuario').value == 'user' && document.getElementById('contraseña').value == 'user'){
        location.href = "usuario.html"
    }else{
        alert('Usuario o contraseña incorrecto')
    }
}

function alerta(mensaje){
    alert(mensaje)
}

function cerrarSesion(){
    location.href = "index.html"
}