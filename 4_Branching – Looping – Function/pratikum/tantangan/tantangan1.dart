//1. buatlah  function untuk  menghitung jumlah barang yang  kita  beli  dari sebuah toko
// var buku = 10000;
// var pensil = 5000;
// var tas = 100000;

void main() {
  var jumlahBuku = 2;
  var jumlahPensil = 3;
  var jumlahTas = 1;

  var totalHargaBarang = hitungTotalHarga(jumlahBuku, jumlahPensil, jumlahTas);
  print("Total harga barang yang sudah di beli : $totalHargaBarang");
}

int hitungTotalHarga(int banyakBuku, int banyakPensil, int banyakTas){
  var hargaBuku = 10000;
  var hargaPensil = 5000;
  var hargaTas = 100000;

  var totalBuku = banyakBuku * hargaBuku;
  var totalPensil = banyakPensil * hargaPensil;
  var totalTas = banyakTas * hargaTas;

  var totalHarga = totalBuku + totalPensil + totalTas;

  return totalHarga;
}

