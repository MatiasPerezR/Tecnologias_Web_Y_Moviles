let Numero= prompt("Ingresa un numero entero positivo:");
var numero = parseFloat(Numero);
var sumarPar = 0;

if (numero > 0 && Number.isInteger(numero)){
    for( let i=2;i<=numero;i+=2){
      
        sumarPar += i
        console.log(sumarPar)
    }
    console.log(sumarPar)
    document.write("La suma de numeros pares desde 1 hasta " + numero + " es: " + sumarPar);
}
else {document.write("No es correcto")
}