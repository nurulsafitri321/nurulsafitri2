void main(){
  double radius = 7.0; 
  double luas = hitungLuasLingkaran(radius);
  print("Luas Lingkaran dengan radius $radius adalah $luas");
}
double hitungLuasLingkaran(double radius){
  return 3.14 * radius * radius;
}