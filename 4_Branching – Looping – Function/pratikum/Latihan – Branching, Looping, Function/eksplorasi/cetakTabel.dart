// void main() {
//   int n = 9;
  
//   for (int i = 1; i <= n; i++) {
//     for (int j = 1; j <= n; j++) {
//       int hasil = i * j;
//       print("$hasil\t");
//     }
//     print("");
//   }
// }


void main() {
  int baris = 9;
  int kolom = 9;

  print("Sampel Input : 9  ");
  print("Sampel Output :   ");
  print(" ");
  print("----------------Tabel Perkalian---------------- ");

  print("".padRight(5) + " ".padRight(5));
  print("".padRight(7,));

  for (int i = 1; i<= baris; i++)
  {
    String barisStr = "$i ";
    for (int j = 1; j<= kolom; j++)
    {
      int hasil = i * j;
      barisStr += " ${hasil.toString().padLeft(4)}";
    }
    print(barisStr);
  }
}
