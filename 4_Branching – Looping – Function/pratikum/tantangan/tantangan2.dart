//2.  hitunglah  diskon 10%  dari  jumlah  

import 'tantangan1.dart';

void main() {
  var jumlahBuku = 2;
  var jumlahPensil = 3;
  var jumlahTas = 1;

  var totalHargaBarang = hitungTotalHarga(jumlahBuku, jumlahPensil, jumlahTas);
  var totalHargaSetelahDiskon = hitungDiskon(totalHargaBarang, 0.1); //Diskon 10%

  print("Total harga barang sebelum Diskon : $totalHargaBarang");
  print("Total harga barang Setelah Diskon : $totalHargaSetelahDiskon");
}

int hitungTotalHarga(int banyakBuku, int banyakPensil, int banyakTas) {
  var hargaBuku = 10000;
  var hargaPensil = 5000;
  var hargaTas = 100000;

  var totalBuku = banyakBuku * hargaBuku;
  var totalPensil = banyakPensil * hargaPensil;
  var totalTas = banyakTas * hargaTas;

  var totalHarga = totalBuku + totalPensil + totalTas;

  return totalHarga;
}

int hitungDiskon(int hargaAwal, double diskon){
  var jumlahDiskon = (hargaAwal * diskon).toInt();
  var HargaSetelahDiskon = hargaAwal - jumlahDiskon;

  return HargaSetelahDiskon;
}