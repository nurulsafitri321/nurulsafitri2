// soal 
// 2. Buatlah sebuah program untuk menghitung rata-rata dari sekumpulan nilai. 
//    Lakukan pembulatan keatas untuk nilai hasil perhitungan rata-rata.
      // Sampel 
      // Input: [7,5,3,5,2,1]

      // Sampel 
      // Output: 4


      import 'dart:math';

void main() {
  List<int> values = [7, 5, 3, 5, 2, 1];
  double sum = 0;

  for (int value in values) {
    sum += value;
  }

  double average = sum / values.length;
  int roundedAverage = average.ceil();

  print('Input: $values');
  print('Output: $roundedAverage');
}
