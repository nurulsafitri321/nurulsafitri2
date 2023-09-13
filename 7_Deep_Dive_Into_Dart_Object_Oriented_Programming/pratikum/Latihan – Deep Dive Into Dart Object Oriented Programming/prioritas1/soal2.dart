// 2. Dari rangkaian Class di atas, buatlah method Overriding 
//    untuk membedakan tiap proses dalam method antar Class! 
//    Sehingga dapat melengkapi penggunaan code di bawah ini

//    void main() {
//     // lengkapi di sini
//     print(bangun.volume());
//    }


class BangunRuang {
  double panjang;
  double lebar;
  double tinggi;
  

  BangunRuang(this.panjang, this.lebar, this.tinggi);

  // Method hitungVolume() yang akan di-override oleh kelas turunannya
  double hitungVolume() {
    return 0.0; // Implementasi default
  }
}

class Kubus extends BangunRuang {
  double sisi;

  Kubus(this.sisi) : super(sisi, sisi, sisi);

  // Override method hitungVolume() untuk Kubus
  @override
  double hitungVolume() {
    return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang {
  Balok(double panjang, double lebar, double tinggi)
      : super(panjang, lebar, tinggi);

  // Override method hitungVolume() untuk Balok
  @override
  double hitungVolume() {
    return panjang * lebar * tinggi;
  }
}

void main() {
  // Buat objek Kubus
  Kubus kubus = Kubus(5.0);
 
  // Buat objek Balok
  Balok balok = Balok(3.0, 4.0, 5.0);

  // Print hasil volume masing-masing objek
  print('Volume Kubus: ${kubus.hitungVolume()}');
  print('Volume Balok: ${balok.hitungVolume()}');
}
