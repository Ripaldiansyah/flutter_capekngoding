void main() {
  // String str = "The text is between 'this'";
  // int startIndex = str.indexOf("'") + 2;
  // int endIndex = str.lastIndexOf("'");
  // String textBetweenQuotes = str.substring(startIndex, endIndex);

  // print(textBetweenQuotes);
  print(exercise27());
}

bool exercise27() {
  List<String> fruits = ["apple", "banana", "cherry"];
  // Implementasikan kode untuk menggabungkan semua elemen pada List fruits menjadi satu string dengan spasi di antara buah-buahnya, misalnya "apple banana cherry".
  String? output = "";
  output = fruits.join(" ");
  print(output);
  return output == "apple banana cherry";
}
