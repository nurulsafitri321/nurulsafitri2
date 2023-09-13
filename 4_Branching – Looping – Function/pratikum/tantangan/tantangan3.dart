//3. hitunglah  harga yang harus di bayar oleh kita

import 'tantangan1.dart';
import 'tantangan2.dart';

void main(){
  var jumlahBuku = 2;
  var jumlahPensil = 3;
  var jumlahTas =1;

  var totalHargaBarang = hitungTotalHarga(jumlahBuku, jumlahPensil, jumlahTas);
  var totalHargaSetelahDiskon = hitungDiskon(totalHargaBarang, 0.1); //Diskon 10%
  var hargaYangHarusDibayar = totalHargaSetelahDiskon;

  print("Total harga barang sebelum Diskon : $totalHargaBarang");
  print("Total Harga Barang Setelah Diskon : $totalHargaSetelahDiskon");
  print("Harga yang harus kita bayar : $hargaYangHarusDibayar");
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
  var hargaSetelahDiskon = hargaAwal - jumlahDiskon;

  return hargaSetelahDiskon;
}