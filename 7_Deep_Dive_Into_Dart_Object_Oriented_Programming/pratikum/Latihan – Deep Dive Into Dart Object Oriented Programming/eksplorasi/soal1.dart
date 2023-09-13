// 1. Buatlah sebuah program berdasarkan class diagram berikut:
//    Kriteria dari program yang dibuat adalah sebagai berikut:

//    ~ Buat class beserta interface sesuai dengan class diagram diatas.
//    ~ Method getArea() digunakan untuk menghitung luas bangun datar.
//    ~ Method getPerimeter() digunakan untuk menghitung keliling bangun datar.
//    ~ Output yang harus ditampilkan adalah luas dan keliling untuk tiga bangun datar berdasarkan di class diagram.

//jawaban :

// Interface untuk bangun datar
abstract class BangunDatar {
  double getArea();
  double getPerimeter();
}

// Kelas Segitiga
class Segitiga implements BangunDatar {
  double alas;
  double tinggi;
  double sisiA;
  double sisiB;
  double sisiC;

  Segitiga(this.alas, this.tinggi, this.sisiA, this.sisiB, this.sisiC);

  @override
  double getArea() {
    return 0.5 * alas * tinggi;
  }

  @override
  double getPerimeter() {
    return sisiA + sisiB + sisiC;
  }
}

// Kelas Persegi
class Persegi implements BangunDatar {
  double sisi;

  Persegi(this.sisi);

  @override
  double getArea() {
    return sisi * sisi;
  }

  @override
  double getPerimeter() {
    return 4 * sisi;
  }
}

// Kelas Lingkaran
class Lingkaran implements BangunDatar {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double getArea() {
    return 3.14 * jariJari * jariJari;
  }

  @override
  double getPerimeter() {
    return 2 * 3.14 * jariJari;
  }
}

void main() {
  // Buat objek segitiga, persegi, dan lingkaran
  Segitiga segitiga = Segitiga(6, 8, 5, 7, 9);
  Persegi persegi = Persegi(5);
  Lingkaran lingkaran = Lingkaran(4);

  // Hitung dan cetak luas dan keliling masing-masing bangun datar
  print('Luas Segitiga: ${segitiga.getArea()}');
  print('Keliling Segitiga: ${segitiga.getPerimeter()}');
  print('Luas Persegi: ${persegi.getArea()}');
  print('Keliling Persegi: ${persegi.getPerimeter()}');
  print('Luas Lingkaran: ${lingkaran.getArea()}');
  print('Keliling Lingkaran: ${lingkaran.getPerimeter()}');
}
