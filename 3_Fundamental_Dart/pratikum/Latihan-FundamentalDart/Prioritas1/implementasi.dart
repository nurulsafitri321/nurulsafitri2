import 'dart:math';

void main() {
  double jariJari = 5.0;
  
  double luas = hitungLuasLingkaran(jariJari);
  double keliling = hitungKelilingLingkaran(jariJari);
  
  print("Luas Lingkaran: $luas");
  print("Keliling Lingkaran: $keliling");
}

double hitungLuasLingkaran(double jariJari) {
  return pi * jariJari * jariJari;
}

double hitungKelilingLingkaran(double jariJari) {
  return 2 * pi * jariJari;
}
