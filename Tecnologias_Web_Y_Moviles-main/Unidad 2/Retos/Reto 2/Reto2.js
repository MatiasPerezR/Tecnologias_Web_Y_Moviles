
let nota1 = (prompt("Ingrese la Nota 1:"))
let nota2 = (prompt("Ingrese la Nota 2:"))
let nota3 = (prompt("Ingrese la Nota 3:"))


  let promedio = (nota1 * 0.4 + nota2 * 0.3 + nota3 * 0.3)

  console.log("El promedio ponderado es: " + promedio);

  if (promedio < 3.95) {
    console.log(" EL alumno ha reprobado la asignatura");
  } else if (promedio >= 3.95 && promedio < 4.95) {
    console.log("EL alumno va a examen.");
  } else {
    console.log("EL alumno se exime de la asignatura");
  }
