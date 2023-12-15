import 'dart:io';

void main() {
  print('Ingrese un numero: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (primo(numero)) {
    print("El $numero es un numero primo.");
  } else {
    print("El $numero NO es un numero primo.");
  }

  if (par(numero)) {
    print("El $numero es un numero par");
  } else {
    print("El $numero es un numero impar.");
  }
}

bool primo(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

bool par(int n) {
  return n % 2 == 0;
}
