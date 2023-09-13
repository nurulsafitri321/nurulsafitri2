void main(){
  var tinggiPiramida = 8;

  for (var i = 1; i <= tinggiPiramida; i++){
    print('  ' * (tinggiPiramida - i) + ' *' * (2 * i - 1));
  }
}