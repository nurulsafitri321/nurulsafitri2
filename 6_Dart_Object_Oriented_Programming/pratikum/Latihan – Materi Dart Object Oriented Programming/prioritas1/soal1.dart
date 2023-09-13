// // 1. Buatlah sebuah class dengan ketentuan di bawah ini
// //  ____________________________________
// //  | Class hewan                      |
// //  ____________________________________                    |
// //  | Property Berat                   |
// //  | menyimpan data berat badan hewan |
// //  ____________________________________



class Hewan {
  double berat;

  Hewan(this.berat);
}

void main() {
  // Membuat objek hewan dengan berat tertentu
  Hewan kelinci = Hewan(4.5);
  Hewan unta = Hewan(15.2);

  // Mengakses properti berat
  print("Berat kucing: ${kelinci.berat} kg");
  print("Berat anjing: ${unta.berat} kg");
}
