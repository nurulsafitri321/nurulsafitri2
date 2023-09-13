void main(){
  var tinggiJamPasir = 6;

  for(var i = 1; i <= tinggiJamPasir; i++){
    print(' ' * (i - 1) + '0' * (2 * (tinggiJamPasir - i) + 1));
  }

  for(var i = tinggiJamPasir - 1; i >= 1; i--){
    print(' ' * (i - 1) + '0' * (2 * (tinggiJamPasir - i) + 1));
  }
}