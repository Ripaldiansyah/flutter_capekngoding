void main() {
  // String str = "The text is between 'this'";
  // int startIndex = str.indexOf("'") + 2;
  // int endIndex = str.lastIndexOf("'");
  // String textBetweenQuotes = str.substring(startIndex, endIndex);

  // print(textBetweenQuotes);
  print(exercise114());
}

bool? exercise114() {
  List<int> numbers = [1, 2, 3, 4, 5];
  // Implementasikan kode untuk menghitung hasil perkalian semua angka pada List numbers.
  int? output = -1;
  for (int i = 0; i < numbers.length; i++) {
    if (output != null) {
      output *= numbers[i];
      output = output.abs();
    }
  }

  return output == 120;
}
