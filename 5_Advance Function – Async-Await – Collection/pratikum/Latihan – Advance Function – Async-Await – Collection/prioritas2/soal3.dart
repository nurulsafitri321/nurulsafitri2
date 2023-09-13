// soal 
// 3. Buatlah sebuah program untuk melakukan 
//    perhitungan bilangan faktorial secara asinkron.
//    Sampel 
//    Input: 5

//    Sampel 
//    Output: 120



import 'dart:async';

Future<int> factorial(int n) async {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    int result = 1;
    for (int i = 2; i <= n; i++) {
      result *= i;
    }
    return result;
  }
}

void main() async {
  int input = 5;
  int result = await factorial(input);

  print('Input: $input');
  print('Output: $result');
}
