void main() {
  int angka = 12; 
  
  if (angka <= 1) {
    print("bukan bilangan prima");
  } else if (angka <= 3) {
    print("bilangan prima");
  } else if (angka % 2 == 0 || angka % 3 == 0) {
    print("bukan bilangan prima");
  } else {
    bool isPrima = true;
    int i = 5;
    while (i * i <= angka) {
      if (angka % i == 0 || angka % (i + 2) == 0) {
        isPrima = false;
        break;
      }
      i += 6;
    }
    if (isPrima) {
      print("bilangan prima");
    } else {
      print("bukan bilangan prima");
    }
  }
}
