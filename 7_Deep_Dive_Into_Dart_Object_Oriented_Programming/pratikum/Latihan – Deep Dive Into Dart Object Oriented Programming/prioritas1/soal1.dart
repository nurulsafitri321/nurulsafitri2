// 1. Buatlah Class dengan spesifikasi sesuai pada gambar di bawah ini

//                   BangunRuang
//                   panjang
//                   lebar
//                   tinggi
//                   volume
                     
//                      ^
//                      |
//                      |
//  ____________________ ____________________
//  |                  extends               |                                
//  |                                        |
//  |                                        |
//  |                                        |
//  |                                        |
//  |                                        |
//  kubus                                  Balok
//  sisi          



// //jawaban :



class BangunRuang {
  double hitungVolume() {
    // Metode ini akan di-override oleh kelas turunannya.
    return 0.0;
  }
}

class Kubus extends BangunRuang {
  double sisi;

  Kubus(this.sisi);

  @override
  double hitungVolume() {
    return sisi * sisi * sisi;
  }

  double hitungLuasPermukaan() {
    return 6 * sisi * sisi;
  }
}

class Balok extends BangunRuang {
  double panjang;
  double lebar;
  double tinggi;

  Balok(this.panjang, this.lebar, this.tinggi);

  @override
  double hitungVolume() {
    return panjang * lebar * tinggi;
  }

  double hitungLuasPermukaan() {
    return 2 * ((panjang * lebar) + (panjang * tinggi) + (lebar * tinggi));
  }
}

void main() {
  Kubus kubus = Kubus(5.0);
  Balok balok = Balok(3.0, 4.0, 5.0);

  print('Volume Kubus: ${kubus.hitungVolume()}');
  print('Luas Permukaan Kubus: ${kubus.hitungLuasPermukaan()}');

  print('Volume Balok: ${balok.hitungVolume()}');
  print('Luas Permukaan Balok: ${balok.hitungLuasPermukaan()}');
}