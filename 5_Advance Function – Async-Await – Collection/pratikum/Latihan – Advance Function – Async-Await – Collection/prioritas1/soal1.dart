// soal  
// 1. Buatlah sebuah fungsi dengan spesifikasi berikut:
//    a. Menerima 2 parameter, yaitu list data dan pengali
//    b. Lakukan perulangan pada list data secara asynchronous
//    c. Tiap perulangan, kalikan elemen list data dengan pengali
//    d. Return list baru yang berisi hasil proses diatas
   
  
Future<List<int>> multiplyList(List<int> data, int multiplier) async {
  List<int> result = [];

  await Future.forEach(data, (int value) {
    int multipliedValue = value * multiplier;
    result.add(multipliedValue);
  });

  return result;
}

void main() async {
  List<int> dataList = [1, 2, 3, 4, 5];
  int multiplier = 2;

  List<int> multipliedList = await multiplyList(dataList, multiplier);

  print('Original List: $dataList');
  print('Multiplied List: $multipliedList');
}
