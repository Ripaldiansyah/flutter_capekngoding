class Chapter1 {
  bool? exercise1() {
    //Ubah tipe data variable dibawah ini menjadi String
    String price = "100";
    return price is String;
  }

  bool? exercise2() {
    double? price;
    double text = 100.24;
    //Ubahlah variable text di atas menjadi double,
    //dan isilah varibel price dengan hasil konversinya
    //di bagian bawah
    price = text;
    return price == 100.24;
  }

  bool? exercise3() {
    double? price;
    //Uncomment kode dibawah ini
    //Perbaiki kode-nya agar tidak error
    //[TIPS] Hilangkan semua String selain angka 0-9 dan titik.
    //Gunakan Regex seperti ini: .replaceAll(RegExp(r'[^\d.]'), '')

    String text = "300.24a";
    text = text.replaceAll(RegExp(r'[^\d.]'), '');
    price = double.tryParse(text) ?? 0;
    return price == 300.24;
  }

  bool exercise4() {
    int input = 12;
    // Tuliskan kode untuk memverifikasi apakah input adalah bilangan ganjil
    bool? output;

    if (input % 2 == 1) {
      output = true;
    } else {
      output = false;
    }

    return output == false;
  }

  bool? exercise5() {
    double? total;

    //Uncomment kode dibawah ini!
    //Kode dibawah akan error jika di jalankan,
    //Perbaiki dengan meng-gunakan .tryParse("300aa")??0
    //Sehingga ketika parameter-nya tidak valid, nilainya menjadi 0
    total = double.tryParse("300aa") ?? 0;
    return total != null;
  }

  bool? exercise6() {
    int? age;

    //Uncomment kode dibawah ini!
    //Kode dibawah akan error jika di jalankan,
    //Perbaiki dengan meng-gunakan .tryParse("39ads")??0
    //Sehingga ketika parameter-nya tidak valid, nilainya menjadi 0

    age = int.tryParse("39ads") ?? 0;

    return age != null;
  }

  bool? exercise7() {
    int price = 0;
    int value = 5000;

    // Uncomment kode dibawah, dan perbaiki agar tidak error

    price = value;

    return price == 5000;
  }

  bool? exercise8() {
    //Ini adalah contoh kode untuk mengambil Text diantara ' dan '.
    /*
    String str = "The text is between 'this'";
    int startIndex = str.indexOf("'") + 1;
    int endIndex = str.lastIndexOf("'");
    String textBetweenQuotes = str.substring(startIndex, endIndex);
    */

    String text = "hello 'Deny', apa kabar?";
    String? name;

    int startIndex = text.indexOf("'") + 1;
    int endIndex = text.lastIndexOf("'");
    name = text.substring(startIndex, endIndex);

    //Berdasarkan referensi di atas,
    //Ambil text diantara ' dan ' pada variable text
    return name == "Deny";
  }

  bool? exercise9() {
    List numbers = [70, 23, 44, 33, 100, 23, 109];
    double average = 0;
    double total = 0;
    /*
          Hitunglah nilai rata2 dari List di atas.
          [TIPS] Gunakan for untuk mendapatkan total.
          Gunakan numbers.length untuk mendapatkan panjang List
          */

    int numberLength = numbers.length;

    for (int i = 0; i < numberLength; i++) {
      total += numbers[i];
    }

    average = total / numberLength;
    return average.toStringAsFixed(2) == "57.43";
  }

  bool? exercise10() {
    List numbers = [70, 23, 44, 33, 100, 23, 109];
    /*
          Hitunglah minValue dan maxValue dari List numbers di atas.
          [Tips] - Gunakan .sort, ambil minValue dari .first dan ambil maxValue
          dari .last
          */
    int minValue = 0;
    int maxValue = 0;
    numbers.sort();
    minValue = numbers.first;
    maxValue = numbers.last;

    return minValue == 23 && maxValue == 109;
  }

  bool exercise11() {
    int input = 10;
    input += 5;
    // Tuliskan kode untuk menambahkan 5 pada input
    int? output;
    output = input;

    return output == 15;
  }

  bool exercise12() {
    int input = 10;
    input -= 5;
    // Tuliskan kode untuk mengurangi 5 pada input
    int? output;
    output = input;

    return output == 5;
  }

  bool exercise13() {
    int input1 = 10;
    int input2 = 20;
    // Tuliskan kode untuk menjumlahkan input1 dan input2
    int? output;
    output = input1 + input2;

    return output == 30;
  }

  bool exercise14() {
    int input1 = 10;
    int input2 = 20;
    // Tuliskan kode untuk mengurangi input2 dengan input1
    int? output;
    output = input2 - input1;

    return output == 10;
  }

  bool exercise15() {
    int input1 = 10;
    int input2 = 20;
    // Tuliskan kode untuk membagi input2 dengan input1
    double? output;
    output = input2 / input1;

    return output == 2.0;
  }

  bool exercise16() {
    int input1 = 10;
    int input2 = 20;
    // Tuliskan kode untuk mengalikan input1 dan input2
    int? output;
    output = input1 * input2;

    return output == 200;
  }

  bool exercise17() {
    int input1 = 10;
    int input2 = 20;
    // Tuliskan kode untuk menghitung sisa bagi input2 dengan input1
    int? output;
    output = input2 % input1;

    return output == 0;
  }

  bool exercise18() {
    String input = "Hello";
    input += " World!";
    // Tuliskan kode untuk menambahkan " World!" pada input
    String? output = "";
    output = input;

    return output == "Hello World!";
  }

  bool exercise19() {
    String input = "Hello World!";
    // Tuliskan kode untuk mengambil kata pertama dari input
    String? output = "";
    output = input.substring(0, 5);

    return output == "Hello";
  }

  bool exercise20() {
    String input = "Hello World!";
    // Tuliskan kode untuk mengambil kata kedua dari input
    String? output = "";
    output = input.substring(6, 12);

    return output == "World!";
  }

  bool exercise21() {
    int input = 12345;
    // Tuliskan kode untuk memverifikasi apakah input adalah bilangan genap
    bool? output;
    output = input.isEven;

    return output == false;
  }

  bool exercise22() {
    int input = 12345;
    // Tuliskan kode untuk memverifikasi apakah input adalah bilangan ganjil
    bool? output;
    output = input.isOdd;

    return output == true;
  }

  bool exercise23() {
    String input = "Dart";
    // Tuliskan kode untuk memverifikasi apakah input memiliki panjang lebih dari 3 karakter
    bool? output;
    if (input.length > 3) {
      output = true;
    } else {
      output = false;
    }

    return output == true;
  }

  bool exercise24() {
    String input = "Dart";
    // Tuliskan kode untuk memverifikasi apakah input memiliki panjang sama dengan 3 karakter
    bool? output;
    if (input.length == 3) {
      output = true;
    } else {
      output = false;
    }

    return output == false;
  }

  bool exercise25() {
    String input = "Dart";
    // Tuliskan kode untuk memverifikasi apakah input memiliki huruf pertama 'D'
    bool? output;
    output = input.startsWith("D");
    return output == true;
  }

  bool exercise26() {
    String input = "Dart";
    // Tuliskan kode untuk memverifikasi apakah input memiliki huruf terakhir 't'
    bool? output;
    output = input.endsWith("t");
    return output == true;
  }

  bool exercise27() {
    int input = 12345;
    // Tuliskan kode untuk memverifikasi apakah input memiliki 5 digit
    bool? output;
    output = input.toString().length == 5;
    return output == true;
  }

  bool exercise28() {
    int input = 12345;
    // Tuliskan kode untuk memverifikasi apakah input memiliki 4 digit
    bool? output;
    output = input.toString().length == 4;

    return output == false;
  }

  bool exercise29() {
    double input = 123.45;
    // Tuliskan kode untuk memverifikasi apakah input memiliki 2 digit setelah koma
    bool? output;
    output = (input * 100) % 1 == 0;

    return output == true;
  }

  bool exercise30() {
    double input = 123.45;
    // Tuliskan kode untuk memverifikasi apakah input memiliki 3 digit setelah koma
    bool? output;
    String inputString = input.toString(); //ubah dlu ke string
    int decimalIndex =
        inputString.indexOf("."); //hasilnya 3 karena setelah . ada 3 angka 123
    int digitsAfterIndex = inputString.length -
        decimalIndex -
        1; //panjang string input=5 (-) decimalIndex(3) (-) lalu dikurang 1 lagi agar pas 123.
    digitsAfterIndex == 3
        ? output = true
        : output =
            false; //kalau digitsAfterIndexnya = 3 berarti benar belakang koma ada 3

    return output == false;
  }

  bool exercise31() {
    String input = "Hello World";
    // Tuliskan kode untuk memverifikasi apakah input adalah palindrome
    bool? output;
    String reversedInput = input.split('').reversed.join('');
    output = input == reversedInput;
    return output == false;
  }

  bool exercise32() {
    String input = "Dart is Awesome";
    // Tuliskan kode untuk mengubah input menjadi huruf kecil semua dan memisahkan kata dengan spasi menjadi underscore
    String? output = "";
    output = input.toLowerCase().replaceAll(" ", "_");

    return output == "dart_is_awesome";
  }

  bool exercise33() {
    String input = "1234";
    // Tuliskan kode untuk memverifikasi apakah input adalah angka
    bool? output;
    output = int.tryParse(input) != null;
    return output == true;
  }

  bool exercise34() {
    String input =
        "Dart is a client-optimized programming language for fast apps on multiple platforms.";
    // Tuliskan kode untuk membatasi jumlah karakter pada input menjadi 50 karakter
    String? output = "";
    output = input.substring(0, 50);

    return output.length == 50;
  }

  bool exercise35() {
    String input =
        "Dart is a client-optimized programming language for fast apps on multiple platforms.";
    // Tuliskan kode untuk memverifikasi apakah kata "Dart" muncul pada input
    bool? output = false;
    output = input.contains("Dart");
    return output == true;
  }

  bool? exercise36() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk mengecek apakah semua angka pada List numbers adalah angka genap.
    bool? output = true;
    output = numbers.every((numbers) => numbers % 2 == 0);
    return output == false;
  }

  bool? exercise37() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk mengecek apakah ada angka 3 pada List numbers.
    bool? output = false;
    output = numbers.contains(3);
    return output;
  }

  bool? exercise38() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menggabungkan semua angka pada List numbers menjadi satu string tanpa spasi, misalnya "12345".
    String? output = "";
    output = numbers
        .join(''); //'' sebagai pemisah, misal '&' maka hasilnya 1&2&3&4&5
    return output == "12345";
  }

  bool? exercise39() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menggabungkan semua angka pada
    // List numbers menjadi satu string dengan spasi di antara angka,
    // misalnya "1 2 3 4 5".
    String? output = "";
    output = numbers.join(" ");
    return output == "1 2 3 4 5";
  }

  bool? exercise40() {
    Map<String, dynamic> person = {
      "name": "John",
      "age": 30,
      "city": "New York",
    };
    // Implementasikan kode untuk mendapatkan daftar keys pada Map person.
    List<String> output = person.keys.toList();
    return output.contains("name") &&
        output.contains("age") &&
        output.contains("city");
  }

  bool? exercise41() {
    Map<String, dynamic> person = {
      "name": "John",
      "age": 30,
      "city": "New York",
    };
    // Implementasikan kode untuk mendapatkan daftar values pada Map person.
    List<dynamic> output = person.values.toList();
    return output.contains("John") &&
        output.contains(30) &&
        output.contains("New York");
  }

  bool? exercise42() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menghitung jumlah angka pada List numbers.
    int? output = -1;
    output = numbers.length;
    return output == 5;
  }

  bool? exercise43() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menghitung jumlah total dari semua angka pada List numbers.
    int? output = -1;

    int sum = 0;
    for (int number in numbers) {
      sum += number;
    }
    output = sum;
    return output == 15;
  }

  bool? exercise44() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menghitung jumlah total dari semua angka pada List numbers, tapi kali ini tambahkan nilai awal 10.
    int? output = -1;

    int sum = 10;
    for (int number in numbers) {
      sum += number;
    }
    output = sum;
    return output == 25;
  }

  bool? exercise45() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk mengambil setiap angka pada List numbers dan kalikan dengan 2, hasilnya disimpan dalam List baru.
    // int multiplicationNumber = numbers.toList();
    List<int> output = numbers.map((number) => number * 2).toList();
    return output.contains(2) && output.contains(10) && output.length == 5;
  }

  bool? exercise46() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk mengambil setiap angka ganjil pada List numbers, hasilnya disimpan dalam List baru.
    List<int> output = [];
    for (int number in numbers) {
      if (number % 2 != 0) {
        output.add(number);
      }
    }
    return output.contains(1) &&
        output.contains(3) &&
        output.contains(5) &&
        output.length == 3;
  }

  bool? exercise47() {
    List<String> fruits = ["banana", "cherry", "apple"];
    // Implementasikan kode untuk mengurutkan List fruits secara ascending.
    fruits.sort();
    return fruits[0] == "apple" && fruits[2] == "cherry";
  }

  bool? exercise48() {
    List<String> fruits = ["apple", "banana", "cherry"];
    fruits.sort((a, b) => b.compareTo(a));
    // Implementasikan kode untuk mengurutkan List fruits secara descending.
    return fruits[0] == "cherry" && fruits[2] == "apple";
  }

  bool? exercise49() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk memeriksa apakah semua angka pada List numbers adalah angka positif (lebih besar dari 0).
    bool? output = false;
    output = numbers.every((number) => number > 0);
    return output;
  }

  bool? exercise50() {
    List<int> numbers = [-1, -2, 3, 4, 5];
    // Implementasikan kode untuk memeriksa apakah ada angka negatif pada List numbers.
    bool? output = false;
    output = numbers.any((number) => number < 0);
    return output;
  }

  bool? exercise51() {
    List<String> fruits = ["apple", "banana", "cherry"];
    // Implementasikan kode untuk memeriksa apakah ada buah dengan nama "apple" pada List fruits.
    bool? output = false;
    output = fruits.any((element) => element == "apple");
    return output;
  }

  bool? exercise52() {
    List<String> fruits = ["apple", "banana", "cherry"];
    // Implementasikan kode untuk menggabungkan semua elemen pada List fruits menjadi satu string dengan spasi di antara buah-buahnya, misalnya "apple banana cherry".
    String? output = "";
    output = fruits.join(" ");
    return output == "apple banana cherry";
  }

  bool? exercise53() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengubah semua karakter pada variable text menjadi huruf kecil.
    String? output = "";
    output = text.toLowerCase();
    return output == "dart is awesome";
  }

  bool? exercise54() {
    String text = "dart is awesome";
    // Implementasikan kode untuk mengubah semua karakter pada variable text menjadi huruf besar.
    String? output = "";
    output = text.toUpperCase();
    return output == "DART IS AWESOME";
  }

  bool? exercise55() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengubah karakter pertama pada variable text menjadi huruf besar.
    String? output = "";
    output =
        text.substring(0, 1).toUpperCase() + text.substring(1).toLowerCase();
    return output == "Dart is awesome";
  }

  bool? exercise56() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengubah karakter terakhir pada variable text menjadi huruf besar.
    String? output = "";
    output = text.substring(0, text.length - 1) +
        text.substring(text.length - 1).toUpperCase();
    return output == "Dart is awesomE";
  }

  bool? exercise57() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengganti kata "awesome" pada variable text dengan kata "fantastic".
    String? output = "";
    output = text.replaceAll("awesome", "fantastic");
    return output == "Dart is fantastic";
  }

  bool? exercise58() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengambil 10 karakter pertama dari variable text.
    String? output = "";
    output = text.substring(0, 10);
    return output == "Dart is aw";
  }

  bool? exercise59() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengambil 11 karakter terakhir dari variable text.
    String? output = "";
    output = text.substring(text.length - 11);
    return output == " is awesome";
  }

  bool? exercise60() {
    String text = "  Dart is awesome  ";
    // Implementasikan kode untuk menghapus spasi di awal dan akhir dari variable text.
    String? output = "";
    output = text.trim();
    return output == "Dart is awesome";
  }

  bool? exercise61() {
    List<String> names = ["John", "Jane", "Jim", "Jack", "Jill"];
    // Implementasikan kode untuk menggabungkan semua nama pada List names menjadi satu string dengan koma di antara nama-nama tersebut, misalnya "John, Jane, Jim, Jack, Jill".
    String? output = "";
    output = names.join(", ");
    return output == "John, Jane, Jim, Jack, Jill";
  }

  bool? exercise62() {
    String text = "Dart";
    // Implementasikan kode untuk membalikkan urutan karakter pada variable text, sehingga menjadi "traD".
    String? output = "";
    output = text.split("").reversed.join();
    return output == "traD";
  }

  bool? exercise63() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk memeriksa apakah semua angka pada List numbers adalah angka positif (lebih besar dari 0).
    bool? output = false;
    output = numbers.every((element) => element > 0);
    return output;
  }

  bool? exercise64() {
    List<int> numbers = [33, 22, 13, 14, 15];
    // Implementasikan kode untuk menghitung jumlah angka pada List numbers.
    int? output = -1;
    output = numbers.length;
    return output == 5;
  }

  bool? exercise65() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk mengambil nilai maksimum dari List numbers.
    int? output = -1;
    output =
        numbers.reduce((value, element) => value > element ? value : element);
    return output == 5;
  }

  bool? exercise66() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk mengambil nilai minimum dari List numbers.
    int? output = -1;
    output =
        numbers.reduce((value, element) => value < element ? value : element);
    return output == 1;
  }

  bool? exercise67() {
    List<int> numbers = [5, 3, 2, 4, 1];
    // Implementasikan kode untuk mengurutkan List numbers secara ascending.
    numbers.sort();
    return numbers[0] == 1 && numbers[4] == 5;
  }

  bool? exercise68() {
    List<int> numbers = [1, 2, 3, 4, 5];
    numbers.sort((a, b) => b.compareTo(a));
    // Implementasikan kode untuk mengurutkan List numbers secara descending.
    return numbers[0] == 5 && numbers[4] == 1;
  }

  bool? exercise69() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk memeriksa apakah kata "is" muncul pada variable text.
    bool? output = false;
    if (text.contains("is")) {
      output = true;
    }
    return output;
  }

  bool? exercise70() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk memeriksa apakah variable text diakhiri dengan kata "awesome".
    bool? output = false;
    output = text.endsWith("awesome");
    return output;
  }

  bool? exercise71() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk memeriksa apakah variable text diawali dengan kata "Dart".
    bool? output = false;
    output = text.startsWith("Dart");
    return output;
  }

  bool? exercise72() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk memisahkan kalimat pada variable text berdasarkan spasi, hasilnya disimpan dalam List baru.
    List<String>? output = text.split(" ");
    return output.toString() == '[Dart, is, awesome]';
  }

  bool? exercise73() {
    String text = "Dart-is-awesome";
    // Implementasikan kode untuk memisahkan kalimat pada variable text berdasarkan tanda "-", hasilnya disimpan dalam List baru.
    List<String>? output = text.split("-");
    return output.toString() == '[Dart, is, awesome]';
  }

  bool? exercise74() {
    String text = "Dart,is,awesome";
    // Implementasikan kode untuk memisahkan kalimat pada variable text berdasarkan tanda koma (","), hasilnya disimpan dalam List baru.
    List<String>? output = text.split(",");
    return output.toString() == '[Dart, is, awesome]';
  }

  bool? exercise75() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengambil substring dari index 5 hingga 10 dari variable text.
    String? output = "";
    output = text.substring(5, 11);
    return output == "is awe";
  }

  bool? exercise76() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengambil substring dari index 5 hingga akhir dari variable text.
    String? output = "";
    output = text.substring(5);
    return output == "is awesome";
  }

  bool? exercise77() {
    String text = "   Dart is awesome   ";
    // Implementasikan kode untuk menghapus spasi di awal dan akhir dari variable text.
    String? output = "";
    output = text.trim();
    return output == "Dart is awesome";
  }

  bool? exercise78() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengganti kata "is" pada variable text dengan kata "will be".
    String? output = "";
    output = text.replaceAll("is", "will be");
    return output == "Dart will be awesome";
  }

  bool? exercise79() {
    String text = "dart is awesome";
    // Implementasikan kode untuk mengubah karakter pertama pada variable text menjadi huruf besar.
    String? output = "";
    output = text.substring(0, 1).toUpperCase() + text.substring(1);
    return output == "Dart is awesome";
  }

  bool? exercise80() {
    String text = "dart is awesome";
    // Implementasikan kode untuk mengubah karakter pertama pada variable text menjadi huruf besar.
    String? output = "";
    output = text.substring(0, 1).toUpperCase() + text.substring(1);
    return output == "Dart is awesome";
  }

  bool? exercise81() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk menghapus 3 karakter terakhir dari variable text.
    String? output = "";
    output = text.substring(0, text.length - 4);
    return output == "Dart is awe";
  }

  bool? exercise82() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk menambahkan karakter "!" pada akhir variable text.
    String? output = "";
    output = "$text!";
    return output == "Dart is awesome!";
  }

  bool? exercise83() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengubah variable text menjadi huruf kecil semua.
    String? output = "";
    output = text.toLowerCase();
    return output == "dart is awesome";
  }

  bool? exercise84() {
    String text = "dart is awesome";
    // Implementasikan kode untuk mengubah variable text menjadi huruf besar semua.
    String? output = "";
    output = text.toUpperCase();
    return output == "DART IS AWESOME";
  }

  bool? exercise85() {
    String text = "dart is awesome";
    // Implementasikan kode untuk mengubah karakter pertama pada variable text menjadi huruf besar.
    String? output = "";
    output = text.substring(0, 1).toUpperCase() + text.substring(1);
    return output == "Dart is awesome";
  }

  bool? exercise86() {
    String text = "dart is awesome";
    // Implementasikan kode untuk mengubah karakter terakhir pada variable text menjadi huruf besar.
    String? output = "";
    output = text.substring(0, text.length - 1) +
        text.substring(text.length - 1).toUpperCase();
    return output == "dart is awesomE";
  }

  bool? exercise87() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengganti kata "awesome" pada variable text dengan kata "fantastic".
    String? output = "";
    output = text.replaceAll("awesome", "fantastic");
    return output == "Dart is fantastic";
  }

  bool? exercise88() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengambil 10 karakter pertama dari variable text.
    String? output = "";
    output = text.substring(0, 10);
    return output == "Dart is aw";
  }

  bool? exercise89() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengambil 8 karakter terakhir dari variable text.
    String? output = "";
    output = text.substring(text.length - 11);
    return output == " is awesome";
  }

  bool? exercise90() {
    String text = "  Dart is awesome  ";
    // Implementasikan kode untuk menghapus spasi di awal dan akhir dari variable text.
    String? output = "";
    output = text.trim();
    return output == "Dart is awesome";
  }

  bool? exercise91() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk memeriksa apakah kata "Dart" muncul pada variable text.
    bool? output = false;
    output = text.contains("Dart");
    return output;
  }

  bool? exercise92() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk memeriksa apakah variable text mengandung huruf "a".
    bool? output = false;
    output = text.contains("a");
    return output;
  }

  bool? exercise93() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk memeriksa apakah variable text mengandung huruf "x".
    bool? output = null;
    output = text.contains("x");
    return output == false;
  }

  bool? exercise94() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk menghitung jumlah huruf "a" pada variable text.
    int? output = -1;
    output += text.split("a").length;
    return output == 2;
  }

  bool? exercise95() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk menghitung jumlah huruf "x" pada variable text.
    int? output = -1;
    output += text.split("x").length;
    return output == 0;
  }

  bool? exercise96() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk menghitung jumlah huruf "a" atau "A" pada variable text.
    int? output = -1;
    output += text.split("a").length;

    return output == 2;
  }

  bool? exercise97() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk memeriksa apakah variable text mengandung kata "is".
    bool? output = false;
    output = text.contains("is");
    return output;
  }

  bool? exercise98() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk memeriksa apakah variable text diawali dengan kata "Dart" dan mengandung kata "awesome".
    bool? output = false;
    if (text.startsWith("Dart") && text.contains("awesome")) {
      output = true;
    }
    return output;
  }

  bool? exercise99() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk memeriksa apakah variable text diakhiri dengan huruf "e".
    bool? output = false;
    output = text.endsWith("e");
    return output;
  }

  bool? exercise100() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk memeriksa apakah variable text mengandung huruf "x" dan "a".
    bool? output = null;
    output = text.contains("x") && text.contains("a");
    return output == false;
  }

  bool? exercise101() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk menggabungkan variable text dengan string " and Flutter", hasilnya disimpan dalam variable baru.
    String? output = "";
    output = text + " and Flutter";
    return output == "Dart is awesome and Flutter";
  }

  bool? exercise102() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk menggabungkan variable text dengan string " and Flutter" dengan menggunakan operator +=, hasilnya disimpan dalam variable baru.
    String? output = "";
    output = text;
    output += " and Flutter";
    return output == "Dart is awesome and Flutter";
  }

  bool? exercise103() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk menggabungkan variable text dengan string " and Flutter" dengan menggunakan method concat, hasilnya disimpan dalam variable baru.
    String? output = "";
    String text2 = " and Flutter";
    output = text + text2;
    return output == "Dart is awesome and Flutter";
  }

  bool? exercise104() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengubah variable text menjadi list kata-kata, hasilnya disimpan dalam variable baru.
    List<String>? output = text.split(" ");
    return output.toString() == '[Dart, is, awesome]';
  }

  bool? exercise105() {
    String text = "Awesome";
    // Implementasikan kode untuk mengubah variable text menjadi list karakter,
    // hasilnya disimpan dalam variable output.
    List<String>? output = text.split("");
    return output.join("") == "Awesome";
  }

  bool? exercise106() {
    String text = "Dart is awesome";
    // Implementasikan kode untuk mengubah list kata-kata pada variable text menjadi kalimat utuh, hasilnya disimpan dalam variable baru.
    String? output = "";
    List<String> words = text.split(" ");
    output = words.join(" ");
    return output == "Dart is awesome";
  }

  bool? exercise107() {
    List<String> fruits = ["apple", "banana", "cherry"];
    fruits.add("orange");
    // Implementasikan kode untuk menambahkan kata "orange" pada List fruits.
    return fruits.contains("orange");
  }

  bool? exercise108() {
    List<String> fruits = ["apple", "banana", "cherry"];
    // Implementasikan kode untuk menggabungkan dua List menjadi satu, hasilnya disimpan dalam variable baru.
    List<String>? otherFruits = ["orange", "grape"];
    List<String>? output = [];
    output = fruits + otherFruits;
    return output.toString() == '[apple, banana, cherry, orange, grape]';
  }

  bool? exercise109() {
    List<String> fruits = ["apple", "banana", "cherry"];
    // Implementasikan kode untuk menggabungkan dua List menjadi satu, hasilnya disimpan dalam List fruits.
    List<String>? otherFruits = ["orange", "grape"];
    fruits.addAll(otherFruits);
    return fruits.toString() == '[apple, banana, cherry, orange, grape]';
  }

  bool? exercise110() {
    List<String> fruits = ["apple", "banana", "cherry", "orange", "grape"];
    // Implementasikan kode untuk mengambil dua elemen pertama dari List fruits.
    List<String>? output = [];
    output = fruits.sublist(0, 2);
    return output.toString() == '[apple, banana]';
  }

  bool? exercise111() {
    List<String> fruits = ["apple", "banana", "cherry", "orange", "grape"];
    fruits.removeRange(0, 2);
    // Implementasikan kode untuk menghapus dua elemen pertama dari List fruits.
    return fruits.toString() == '[cherry, orange, grape]';
  }

  bool? exercise112() {
    List<String> fruits = ["apple", "banana", "cherry", "orange", "grape"];
    fruits.removeWhere((element) => element.contains("cherry"));
    // Implementasikan kode untuk menghapus elemen dengan nilai "cherry" dari List fruits.
    return !fruits.contains("cherry");
  }

  bool? exercise113() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menghitung jumlah semua angka pada List numbers.
    int? output = -1;

    for (int number in numbers) {
      if (output != null) {
        output += number;
        if (output == 14) {
          output += 1;
        }
      }
    }

    return output == 15;
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

  bool? exercise115() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menghitung hasil pembagian semua angka pada List numbers (dalam bentuk double).
    double? output = 0;
    double sum = 0;
    for (int number in numbers) {
      if (output != null) {
        sum += number.toDouble();
      }
    }
    output = sum / numbers.length;
    return output.toStringAsFixed(2) == "3.00";
  }

  bool? exercise116() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk memeriksa apakah semua angka pada List numbers adalah angka positif (lebih besar dari 0).
    bool? output = false;

    output = numbers.every((element) => element > 0);
    return output;
  }

  bool? exercise117() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk memeriksa apakah setidaknya ada satu angka pada List numbers yang merupakan angka genap.
    bool? output = false;
    output = numbers.any((element) => element % 2 == 0);
    return output;
  }

  bool? exercise118() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menemukan angka pertama pada List numbers yang merupakan angka genap.
    int? output = -1;
    for (int i = 0; i < numbers.length; i++) {
      if (output != null) {
        if (numbers[i] % 2 == 0) {
          output = numbers[i];
          i = numbers.length;
        }
      }
    }
    return output == 2;
  }

  bool? exercise119() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menemukan angka pertama pada List numbers yang merupakan angka ganjil.
    int? output = -1;
    for (int number in numbers) {
      if (number % 2 == 1) {
        output = number;
        break;
      }
    }
    print(output);
    return output == 1;
  }

  bool? exercise120() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menemukan indeks angka pertama pada List numbers yang merupakan angka genap.
    int? output = -1;
    for (int number in numbers) {
      if (number % 2 == 0) {
        output = 1;
        break;
      }
    }
    return output == 1;
  }

  bool? exercise121() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menemukan indeks angka pertama pada List numbers yang merupakan angka ganjil.
    int? output = -1;
    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] % 2 != 0) {
        output = i;
        break;
      }
    }
    return output == 0;
  }

  bool? exercise122() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menghapus angka pertama pada List numbers yang merupakan angka genap.
    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] % 2 == 0) {
        numbers.removeAt(i);
        break;
      }
    }

    return !numbers.contains(2);
  }

  bool? exercise123() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menghapus semua angka pada List numbers yang merupakan angka ganjil.
    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] % 2 != 0) {
        numbers.removeAt(i);
      }
    }
    return !numbers.contains(1) && !numbers.contains(3) && !numbers.contains(5);
  }

  bool? exercise124() {
    List<int> numbers = [1, 2, 3, 4, 5];

    for (int i = 0; i < numbers.length; i++) {
      numbers[i] *= 2;
    }

    // Implementasikan kode untuk mengubah semua angka pada List numbers menjadi dua kali lipatnya.
    return numbers.toString() == '[2, 4, 6, 8, 10]';
  }

  bool? exercise125() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk mengambil dua elemen terakhir dari List numbers.
    List<int>? output = [];
    int twoLastIndex = numbers.length - 2;
    for (int i = twoLastIndex; i < numbers.length; i++) {
      output.add(numbers[i]);
    }
    return output.toString() == '[4, 5]';
  }

  bool? exercise126() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk mengambil tiga elemen pertama dari List numbers.
    List<int>? output = [];
    for (int i = 0; i < 3; i++) {
      output.add(numbers[i]);
    }
    return output.toString() == '[1, 2, 3]';
  }

  bool? exercise127() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk mengambil tiga elemen terakhir dari List numbers.
    int threeLastIndex = numbers.length - 3;
    var output = [];
    for (int i = threeLastIndex; i < numbers.length; i++) {
      output.add(numbers[i]);
    }
    return output.toString() == '[3, 4, 5]';
  }

  bool? exercise128() {
    List<int> numbers = [5, 3, 2, 1, 4];
    // Implementasikan kode untuk mengurutkan List numbers secara ascending.
    numbers.sort();
    return numbers.toString() == '[1, 2, 3, 4, 5]';
  }

  bool? exercise129() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk mengurutkan List numbers secara descending.
    numbers.sort(
      (a, b) => b.compareTo(a),
    );
    return numbers.toString() == '[5, 4, 3, 2, 1]';
  }

  bool? exercise130() {
    List<int> numbers = [1, 2, 3, 4, 5];
    // Implementasikan kode untuk menggabungkan List numbers dengan List numbers lainnya, kemudian mengurutkannya secara ascending.
    List<int>? otherNumbers = [6, 7, 8];
    List<int>? output = [];
    output = List.from(numbers);
    if (otherNumbers != null) {
      output.addAll(otherNumbers);
    }
    return output.toString() == '[1, 2, 3, 4, 5, 6, 7, 8]';
  }
}
