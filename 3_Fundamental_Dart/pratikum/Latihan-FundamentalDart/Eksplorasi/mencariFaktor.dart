void main() {
  int bilangan = 24;

  print("Faktor-faktor dari $bilangan adalah:");
  for (int i = 1; i <= bilangan; i++) {
    if (bilangan % i == 0) {
      print(i);
    }
  }
}
