import 'dart:io';


void main() {
  stdout.write("Informe um número: ");
  dynamic entrada = stdin.readLineSync(); //Dynamic permite a troca de tipos e valores em tempo de execução.
  final converter = double.parse(entrada); // Final não pode ter valores e tipos alterados e seu uso é para casos onde não se sabe o valor em tempo de compilação.
  print("Voce digitou: " + converter.toString());
  const constante = "Valor Fixo"; // Constantes tem seus valores e tipos fixos, não podendo ser alterados posteriormente em tempo de execução.
  print(constante);
}