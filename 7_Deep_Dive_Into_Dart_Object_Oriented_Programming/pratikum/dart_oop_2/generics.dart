// class Hadiah<T>{
//   var isi;

//   Hadiah(T i){
//     isi = i;
//   }
// }

// void main(){
//   var h1 = Hadiah<String>('mobil');
//   print(h1.isi);

//   var h2 = Hadiah<int>(10);
//   print(h2.isi);

// }

void cekTipe<T>(T data){
  print(data.runtimeType);
}

void main(){
  cekTipe<String>('satu');
  cekTipe<int>(10);
  cekTipe<bool>(true);
}