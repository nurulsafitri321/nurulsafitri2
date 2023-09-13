// soal 
// 1. Buatlah sebuah program untuk menghilangkan nilai atau data 
//    yang sama pada sebuah data sehingga output akhirnya adalah sekumpulan nilai atau data yang unik.
//    Sampel 
//    Input: [amuse, tommy kaira, spoon, HKS, litchfield, amuse,HKS]

//    Sampel 
//    Output: [amuse, tommy kaira, spoon, HKS, litchfield]

//    Sampel 
//    Input: [JS Racing, amuse, spoon, spoon, JS Racing, amuse]

//    Sampel 
//    Output: [JS Racing, amuse, spoon]

void main() {
  List<String> input1 = ["amuse", "tommy kaira", "spoon", "HKS", "litchfield", "amuse", "HKS"];
  List<String> output1 = removeDuplicates(input1);
  print("Output 1: $output1");
  
  List<String> input2 = ["JS Racing", "amuse", "spoon", "spoon", "JS Racing", "amuse"];
  List<String> output2 = removeDuplicates(input2);
  print("Output 2: $output2");
}

List<String> removeDuplicates(List<String> input) {
  List<String> uniqueValues = [];

  for (var value in input) {
    if (!uniqueValues.contains(value)) {
      uniqueValues.add(value);
    }
  }
  
  return uniqueValues;
}
