function contarPalabras() {
  let oracion = document.getElementById("oracionIng").value;
  let palabras = oracion.split(/\s+/);
  let numeroPalabras = palabras.length;

  document.getElementById("resultado").textContent = "Oracion ingresada: " + oracion ;
  document.getElementById("resultado").textContent += "\nNumero de palabras: " + numeroPalabras;
}
