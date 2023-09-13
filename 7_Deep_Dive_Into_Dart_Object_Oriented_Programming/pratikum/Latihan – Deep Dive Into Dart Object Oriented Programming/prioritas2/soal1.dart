
// Buatlah Class dengan spesifikasi berikut!

//                     ---------------
//                     | Matematika  |
//                     ---------------
//                             ^
//                             |
             
//              ------------------------------|
//                                            |
//             |           implements         |
//             |                              |
//             |                       ---------------------
//     ----------------------|
//     | Kelipatan           |
//     | Persekuruan Terkecil|
//     -----------------------         |Faktor Persekutuan |
//           x  
//           y                        ----------------------
//                                               X
//                                               y


// Interface Matematika
abstract class Matematika {
  int hitungKelipatan(int x, int y);
  int hitungPersekutuanTerkecil(int x, int y);
}

// Kelas Kelipatan yang mengimplementasikan Matematika
class Kelipatan implements Matematika {
  @override
  int hitungKelipatan(int x, int y) {
    // Implementasi perhitungan kelipatan
    int hasil = x;
    while (hasil % y != 0) {
      hasil += x;
    }
    return hasil;
  }

  @override
  int hitungPersekutuanTerkecil(int x, int y) {
    // Implementasi perhitungan persekutuan terkecil
    int a = x;
    int b = y;
    while (b != 0) {
      int sisa = a % b;
      a = b;
      b = sisa;
    }
    return (x * y) ~/ a; // Persekutuan terkecil = (x * y) / FPB(x, y)
  }
}

// Kelas FaktorPersekutuan yang mengimplementasikan Matematika
class FaktorPersekutuan implements Matematika {
  @override
  int hitungKelipatan(int x, int y) {
    // Implementasi perhitungan kelipatan
    int hasil = x;
    while (hasil % y != 0) {
      hasil += x;
    }
    return hasil;
  }

  @override
  int hitungPersekutuanTerkecil(int x, int y) {
    // Implementasi perhitungan faktor persekutuan
    int a = x;
    int b = y;
    while (b != 0) {
      int sisa = a % b;
      a = b;
      b = sisa;
    }
    return a; // Faktor persekutuan terbesar
  }
}

void main() {
  Matematika matematika1 = Kelipatan();
  Matematika matematika2 = FaktorPersekutuan();

  int x = 12;
  int y = 18;

  int kelipatan = matematika1.hitungKelipatan(x, y);
  int pt1 = matematika1.hitungPersekutuanTerkecil(x, y);

  int fpb2 = matematika2.hitungKelipatan(x, y);
  int pt2 = matematika2.hitungPersekutuanTerkecil(x, y);

  print('Kelipatan: $kelipatan');
  print('Persekutuan Terkecil (Matematika 1): $pt1');
  print('Persekutuan Terkecil (Matematika 2): $pt2');
}

