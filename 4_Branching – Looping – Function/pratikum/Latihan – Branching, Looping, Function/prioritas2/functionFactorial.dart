void main() {
  print("Faktorial dari 10: ${hitungFaktorial(10)}");
  print("Faktorial dari 40: ${hitungFaktorial(40)}");
  print("Faktorial dari 50: ${hitungFaktorial(50)}");
}

BigInt hitungFaktorial(int n) {
  if (n == 0 || n == 1) {
    return BigInt.one;
  } else {
    return BigInt.from(n) * hitungFaktorial(n - 1);
  }
}
