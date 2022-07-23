/*
  Exemplo básico de repetição com while + imc com if else if
  While repetirá o bloco de código se a condição for true
*/
import 'dart:io';
main() {
  print("\n----------------------CÁLCULO IMC----------------------\n");
  var resp = 1;
  while (resp == 1) {
    stdout.write("Informe seu NOME: ");
    dynamic nome = stdin.readLineSync();
    stdout.write("Informe sua IDADE: ");
    int idade = int.parse(stdin.readLineSync()!);
    stdout.write("Informe sua ALTURA em CENTÍMETROS, exemplo: '180': ");
    dynamic altura = int.parse(stdin.readLineSync()!);
    stdout.write("Agora informe seu PESO (Exemplo: 75): ");
    dynamic peso = int.parse(stdin.readLineSync()!);
    double imc = peso / (altura * altura / 10000);
    if (imc >= 1 && imc <= 17.9999) {
      print("\n$nome, $idade anos, está abaixo do peso !!!\n");
    } else if (imc >= 18 && imc <= 24.9999) {
      print("\n$nome, $idade anos, está com peso normal !!!\n");
    } else if (imc >= 25 && imc <= 29.9999) {
      print("\n$nome, $idade anos, está acima do peso !!!\n");
    } else if (imc >= 30 && imc <= 34.9999) {
      print("\n$nome, $idade anos, está acima do peso, obesidade grau 1 !!!\n");
    } else if (imc >= 35 && imc <= 39.9999) {
      print("\n$nome, $idade anos, está acima do peso, obesidade grau 2 !!!\n");
    } else if (imc >= 40) {
      print("\n$nome, $idade anos, está com obesidade mórbida, cuidado !!!\n");
    } else {
      print("\nDados Invalidos...\n");
    }
    print("1 - REPETIR CÁLCULO IMC / 2 SAIR\n");
    stdout.write("ESCOLHA UMA OPÇÃO: \n");
    resp = int.parse(stdin.readLineSync()!);
    if (resp == 2) {
      print("\nSaindo...\n");
    } 
  }
}