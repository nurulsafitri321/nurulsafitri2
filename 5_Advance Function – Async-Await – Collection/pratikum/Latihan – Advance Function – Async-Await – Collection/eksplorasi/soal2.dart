// soal  
// 2. Buatlah sebuah program untuk menghitung frekuensi pada 
//    setiap data di dalam sebuah list. Frekuensi merupakan jumlah kemunculan data di dalam list.
//    Sampel 
//    Input: [js,js,js,golang,python,js,js,golang,rust]
   
//    Sampel 
//    Output: js: 5, golang: 2, python: 1, rust: 1


  
void main() {
  List<String> input = ["js", "js", "js", "golang", "python", "js", "js", "golang", "rust"];
  Map<String, int> frequencyMap = {};

  for (var value in input) {
    frequencyMap[value] = (frequencyMap[value] ?? 0) + 1;
  }
  
  frequencyMap.forEach((key, value) {
    print("$key: $value");
  });
}
