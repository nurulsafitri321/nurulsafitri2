// 1. Buatlah sebuah class Calculator dengan kriteria sebagai berikut:
//    a.  Terdapat method untuk melakukan penjumlahan dua bilangan.
//    b.  Terdapat method untuk melakukan pengurangan dua bilangan.
//    c.  Terdapat method untuk melakukan perkalian dua bilangan.
//    d.  Terdapat method untuk melakukan pembagian dua bilangan.


class Calculator {
  double tambah(double a, double b) {
    return a + b;
  }

  double kurang(double a, double b) {
    return a - b;
  }

  double kali(double a, double b) {
    return a * b;
  }

  double bagi(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      throw Exception("Pembagian oleh nol tidak diizinkan.");
    }
  }
}

void main() {
  Calculator calculator = Calculator();

  double angka1 = 20;
  double angka2 = 4;

  print("$angka1 + $angka2 = ${calculator.tambah(angka1, angka2)}");
  print("$angka1 - $angka2 = ${calculator.kurang(angka1, angka2)}");
  print("$angka1 * $angka2 = ${calculator.kali(angka1, angka2)}");

  try {
    print("$angka1 / $angka2 = ${calculator.bagi(angka1, angka2)}");
  } catch (e) {
    print(e);
  }
}
