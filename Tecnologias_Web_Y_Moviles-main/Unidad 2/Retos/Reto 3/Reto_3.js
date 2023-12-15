function calcularPropina() {
    
    const total = parseFloat(document.getElementById("total").value);
    const Porcentaje = parseFloat(document.getElementById("Porcentaje").value);
  
    // Validar que los valores sean números válidos
    if (isNaN(total) || isNaN(Porcentaje) || total < 0) {
        alert("Por favor, ingrese un monto de boleta válido (mayor o igual a cero).");
        return;
      }
  
    // Calcular la propina y el total a pagar
    const propina = total * (Porcentaje / 100);
    const totalPagar = total + propina;
  
    
    document.getElementById("propinaResultado").innerText = `Propina: $${propina.toFixed(2)}`;
    document.getElementById("totalResultado").innerText = `Total a Pagar: $${totalPagar.toFixed(2)}`;
  
   
    document.getElementById("resultado").style.display = "block";

  }
  