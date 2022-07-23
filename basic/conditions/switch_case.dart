/*
    Exemplo básico de condições switch...case
*/
import 'dart:io';
void main() {
  stdout.write("Você pratica atividades físicas? (Sim / Nao): ");
  String ativo = stdin.readLineSync()!.toUpperCase();
  switch (ativo) {
    case "SIM": print("Está no caminho certo!");
      break;
    case "NAO": print("Melhor pensar sobre o assunto");
      break;
    default: print("Dados Inválidos");
  }
}