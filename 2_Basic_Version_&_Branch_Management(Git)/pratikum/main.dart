void main() {
  print('Halo, dunia!');
  
  String name = 'Nurul Safitri';
  int age = 20;
  double height = 155.5;
  
  print('Nama: $name');
  print('Usia: $age tahun');
  print('Tinggi: $height cm');
  
  List<String> hobbies = ['Membaca KOmic', 'Olahraga', 'Musik'];
  
  print('Hobi:');
  for (String hobby in hobbies) {
    print('- $hobby');
  }
  
  int result = addNumbers(10, 20);
  print('Hasil penjumlahan: $result');
}

int addNumbers(int a, int b) {
  return a + b;
}
