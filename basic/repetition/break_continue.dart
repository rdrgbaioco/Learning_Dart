/*
  Exemplo básico de uso do break e continue
*/
main() {
  for (int i = 0; i < 5; i++) {
    if (i == 2) {
      continue; // Pulará o item dois do loop
    }
    print(i);
  }
  for (int i = 0; i < 5; i++) {
    if (i == 2) {
      break; // Irá parar o loop no item dois
    }
    print(i);
  }
}