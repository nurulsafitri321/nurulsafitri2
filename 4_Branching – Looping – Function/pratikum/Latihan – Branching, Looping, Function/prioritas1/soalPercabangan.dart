void main(){
  var nilai = 85;
  var hasil = evaluasiNilai(nilai);

  print(hasil);
}
String evaluasiNilai(int nilai){
  if (nilai > 70){
    return "Nilai A";
  }else if(nilai > 40){
    return "Nilai B";
  }else if(nilai > 0){
    return "Nilai C";
  }else{
    return "";
  }
}