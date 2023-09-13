bool isPalindrom(String word) {
  String reversedWord = word.split('').reversed.join('');
  return word == reversedWord;
}

void main() {
  String input1 = "kasur rusak";
  String input2 = "mobil balap";

  bool result1 = isPalindrom(input1.replaceAll(' ', ''));
  bool result2 = isPalindrom(input2.replaceAll(' ', ''));

  if (result1) {
    print("$input1 adalah palindrom");
  } else {
    print("$input1 bukan palindrom");
  }

  if (result2) {
    print("$input2 adalah palindrom");
  } else {
    print("$input2 bukan palindrom");
  }
}
