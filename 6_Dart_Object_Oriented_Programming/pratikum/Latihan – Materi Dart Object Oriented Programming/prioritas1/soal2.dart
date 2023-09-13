// 2. Selanjutnya pada class Mobil, tambahkan method totalMuatan untuk menghitung total muatan 
//    yang diangkut oleh mobil tersebut!

//    ________________________________________
//    | class Mobil                           |
//    ________________________________________
//    | Property kapasitas                    |
//    | total berat maksimum muatan           |
//    ________________________________________
//    | Property muatan                       |
//    | list data hewan yang menjadi muatan   |
//    ________________________________________
//    | Method tambahMuatan                   |
//    | jika kapasitas mencukupi, maka        |
//    | menambah data hewan pada list muatan  |
//    ________________________________________


class Mobil {
  double kapasitas;
  double totalBeratMaksimumMuatan;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas, this.totalBeratMaksimumMuatan);

  void tambahMuatan(Hewan hewan) {
    if ((kapasitas - hitungTotalMuatan()) >= hewan.berat) {
      muatan.add(hewan);
      print("Hewan dengan berat ${hewan.berat} kg ditambahkan ke dalam muatan.");
    } else {
      print("Kapasitas muatan tidak mencukupi untuk menambahkan hewan dengan berat ${hewan.berat} kg.");
    }
  }

  double hitungTotalMuatan() {
    double total = 0;
    for (var hewan in muatan) {
      total += hewan.berat;
    }
    return total;
  }
}

class Hewan {
  double berat;

  Hewan(this.berat);
}

void main() {
  Mobil mobil = Mobil(1000, 500);

  Hewan kelinci = Hewan(5.5);
  Hewan unta = Hewan(15.2);

  mobil.tambahMuatan(kelinci);
  mobil.tambahMuatan(unta);

  print("Total muatan di dalam mobil: ${mobil.hitungTotalMuatan()} kg");
}
