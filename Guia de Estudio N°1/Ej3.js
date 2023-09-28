function verificarContraseña() {
    // Obtener la contraseña ingresada por el usuario
    var contraseña = document.getElementById("passwordInput").value;

    // Verificar los criterios de seguridad
    var longitudValida = contraseña.length >= 8;
    var tieneMayuscula = /[A-Z]/.test(contraseña);
    var tieneNumero = /[0-9]/.test(contraseña);
    var tieneCaracterEspecial = /[!@#$%^&*()_+{}[\]:;<>,.?~\-]/.test(contraseña);

    // Comprobar si la contraseña cumple con todos los criterios
    if (longitudValida && tieneMayuscula && tieneNumero && tieneCaracterEspecial) {
        document.getElementById("resultado").textContent = "La contraseña es válida.";
    } else {
        document.getElementById("resultado").textContent = "La contraseña no cumple con los requisitos de seguridad.";
    }
}
