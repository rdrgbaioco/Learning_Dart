/*
- Exemplo básico de repetição com do-while + if else-if e for com lista,
- Exemplo com tratamento de excessões,
- Do-While sempre iniciará o bloco de código no inicio, depois verifica a condição,
*/
import 'dart:io';
main() {
  print("\n----------------------CÁLCULO IMC----------------------\n");
  var resp;
  List<String> listUsers = [];
  do {
    stdout.write("Informe seu NOME: ");
    var nome = stdin.readLineSync().toString();
    stdout.write("Informe sua IDADE: ");
    var idade;
    try{
      idade = int.parse(stdin.readLineSync()!);
      } on FormatException {
        print("USE SOMENTE NÚMEROS!!!");
        break;
      }
    stdout.write("Informe sua ALTURA em CENTÍMETROS, exemplo: '180': ");
    var altura;
    try{
      altura = int.parse(stdin.readLineSync()!);
      } on FormatException {
        print("USE SOMENTE NÚMEROS!!!");
        break;
      }
    stdout.write("Agora informe seu PESO (Exemplo: 75): ");
    var peso;
    try{
      peso = int.parse(stdin.readLineSync()!);
      } on FormatException {
        print("USE SOMENTE NÚMEROS!!!");
        break;
      }
    double imc = peso / (altura * altura / 10000);
    if (imc >= 1 && imc <= 17.9999) {
      print("\n$nome, está abaixo do peso !!!\n");
    } else if (imc >= 18 && imc <= 24.9999) {
      print("\n$nome, está com peso normal !!!\n");
    } else if (imc >= 25 && imc <= 29.9999) {
      print("\n$nome, está acima do peso !!!\n");
    } else if (imc >= 30 && imc <= 34.9999) {
      print("\n$nome, está acima do peso, obesidade grau 1 !!!\n");
    } else if (imc >= 35 && imc <= 39.9999) {
      print("\n$nome, está acima do peso, obesidade grau 2 !!!\n");
    } else if (imc >= 40) {
      print("\n$nome, está com obesidade mórbida, cuidado !!!\n");
    } else {
      print("\nDados Invalidos...\n");
    }
    stdout.write("\nDIGITE 1 PARA REPETIR OU 2 PARA SAIR E LISTAR NOMES: \n");
    listUsers.add("Usuário: $nome, Idade: $idade, Altura: $altura, IMC: $imc");
    try{
      resp = int.parse(stdin.readLineSync()!);
      } on FormatException {
        print("USE SOMENTE NÚMEROS!!!");
        break;
      }
    } while (resp == 1);
    for (var users in listUsers) {
    if (resp == 2) {
      print("\n" + users);
    }
  }
}