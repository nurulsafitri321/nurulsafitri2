//soal : 
//1. Buatlah sebuah list dengan spesifikasi berikut:
  // a. Tiap elemen wajib berupa list juga
  // b. tiap element wajib terdapat 2 data(sub-elemen)
  // c. Buatlah sebuah map dengan menggunakan list tersebut

  void main() {
  List<List<int>> listOfLists = [
    [1, 2],
    [3, 4],
    [5, 6],
    [7, 8],
  ];

  Map<int, List<int>> mapFromList = {};

  for (int i = 0; i < listOfLists.length; i++) {
    mapFromList[i] = listOfLists[i];
  }

  print('List of Lists: $listOfLists');
  print('Map from List: $mapFromList');
}
