function generarContraseña() {
    const longitudInput = document.getElementById("longitud");
    const longitud = parseInt(longitudInput.value);

    if (isNaN(longitud) || longitud < 8 || longitud > 20) {
        alert("Por favor, ingrese una longitud válida entre 8 y 20 caracteres.");
        return;
    }

    const mayusculas = document.getElementById("mayusculas").checked;
    const minusculas = document.getElementById("minusculas").checked;
    const numeros = document.getElementById("numeros").checked;
    const especiales = document.getElementById("especiales").checked;

    if (!mayusculas && !minusculas && !numeros && !especiales) {
        alert("Por favor, seleccione al menos un tipo de carácter para generar la contraseña.");
        return;
    }

    const caracteresMayusculas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    const caracteresMinusculas = "abcdefghijklmnopqrstuvwxyz";
    const caracteresNumeros = "0123456789";
    const caracteresEspeciales = "!@#$%^&*()_-+=<>?/{}";

    let caracteresPermitidos = "";

    if (mayusculas) {
        caracteresPermitidos += caracteresMayusculas;
    }
    if (minusculas) {
        caracteresPermitidos += caracteresMinusculas;
    }
    if (numeros) {
        caracteresPermitidos += caracteresNumeros;
    }
    if (especiales) {
        caracteresPermitidos += caracteresEspeciales;
    }

    let contraseñaGenerada = "";
    for (let i = 0; i < longitud; i++) {
        const indiceAleatorio = Math.floor(Math.random() * caracteresPermitidos.length);
        contraseñaGenerada += caracteresPermitidos.charAt(indiceAleatorio);
    }

    document.getElementById("resultado").innerText = "Contraseña: " + contraseñaGenerada;
}
