// 2. dari rangkaian di atas, lengkapi kode berikut sehingga dapat menampilkan hasil pada Layar!

//   void main(){
//     //lengkapi disini
//     print(operation.hasil());
//   }

import 'soal1.dart';
void main() {
  Matematika operation = Kelipatan(); // Ganti dengan FaktorPersekutuan() jika perlu

  int x = 12;
  int y = 18;

  int hasilOperasi = operation.hitungKelipatan(x, y); // Ganti dengan hitungPersekutuanTerkecil() jika perlu

  print('Hasil Operasi: $hasilOperasi');
}
