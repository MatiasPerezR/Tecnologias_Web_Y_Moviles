function calcularSalud() {
    // Obtener los datos del formulario
    const nombre = document.getElementById("nombre").value;
    const peso = parseFloat(document.getElementById("peso").value);
    const altura = parseFloat(document.getElementById("altura").value);
    const edad = parseInt(document.getElementById("edad").value);
    const genero = document.getElementById("genero").value;
    const nivelActividad = document.getElementById("actividad").value;
  
    
    if (isNaN(peso) || isNaN(altura) || isNaN(edad) || peso < 0 || altura < 0 || edad < 0) {
        alert("Por favor, ingrese valores numéricos válidos y no negativos.");
        return;
      }
  
    // Calcular IMC
    const imc = peso / Math.pow(altura, 2);
  
    // Calcular Clasificación del IMC
    let clasificacion = "No disponible";
  if (imc < 18.5) {
    clasificacion = "Bajo Peso";
  } else if (imc < 24.9) {
    clasificacion = "Peso Normal";
  } else if (imc < 29.9) {
    clasificacion = "Sobrepeso";
  } else {
    clasificacion = "Obesidad";
  }
  
    // Calcular Gasto Energético Diario (GED)
    const factoresActividad = {
      sedentario: 1.2,
      moderado: 1.55,
      activo: 1.9
    };
    const factorActividad = factoresActividad[nivelActividad];
    const ged = factorActividad * peso;
  
    // Calcular Estado Nutricional
    let estadoNutricional = "No disponible";
    if (imc < 18.5 || imc > 24.9) {
      estadoNutricional = "Necesita atención especializada";
    } else {
      estadoNutricional = "Adecuado";
    }
  
    // Mostrar resultados en el DOM
    document.getElementById("imcResultado").innerText = `IMC: ${imc.toFixed(2)}`;
    document.getElementById("clasificacionResultado").innerText = `Clasificación: ${clasificacion}`;
    document.getElementById("gedResultado").innerText = `Gasto Energético Diario : ${ged.toFixed(2)} kcal`;
    document.getElementById("estadoNutricionalResultado").innerText = `Estado Nutricional: ${estadoNutricional}`;
  
   
    document.getElementById("resultados").style.display = "block";
  }
  