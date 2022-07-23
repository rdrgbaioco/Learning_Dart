import 'dart:io';


main() {

  stdout.write("Informe seu nome: ");
  var nome = stdin.readLineSync();

  stdout.write("Informe sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  print("Olá, seja bem-vindo $nome !!!");
  print("Você tem $idade anos, uauu!");

}