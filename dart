import 'dart:io';
import 'dart:math';
void main (){
   print('Question no 1');

  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  
  // Check if 'fri' key exists
  if (expenses.containsKey('fri')) {
    expenses.update('fri', (value) => 5000.0);
  } else {
    expenses['fri'] = 5000.0;
  }
  
  // Print the updated expenses map
  print(expenses);

print('Question no 2');

stdout.write("Enter the radius of the circle: ");
  var rad = double.parse(stdin.readLineSync()!);

  var area = calculateCircleArea(rad);
  
  print("The area of the circle with rad $rad is $area");

  // calculateCircleArea function after body end.

  print('Question no 3');

 stdout.write("Enter the length of side a: ");
  var a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the length of side b: ");
  var b = double.parse(stdin.readLineSync()!);

  var c = calculateHypotenuse(a, b);

  print("lengthhypotenuse is $c");

  //calculateHypotenuse function after body end.

  print('Question no 4');

stdout.write("Enter a string: ");
  var string = stdin.readLineSync()!;

  var reversedString = reverseString(string);

  print("The reversed string is $reversedString");


  print('Question no 6');

int base = 4;
  int exponent = 6;
  int result = power(base, exponent);
  print('$base ^ $exponent = $result');


  print('Question no 7');

countVowelsAndConsonants("Hello, World!");

}


//Question no 2 function :

double calculateCircleArea(double radius) {
  return 3.14 * radius * radius;
}

//Question no 3 function :

double calculateHypotenuse(double a, double b) {
  return sqrt(a * a + b * b);
}

//Question no 4 function :

String reverseString(String string) {
  var sb = StringBuffer();

  for (var i = string.length - 1; i >= 0; i--) {
    sb.write(string[i]);
  }

  return sb.toString();
}

//Question no 6 function:

int power(int base, int exponent) {
  int result = 1;
  for (int i = 0; i < exponent; i++) {
    result *= base;
  }
  return result;
}

//Question no 7 function :

void countVowelsAndConsonants(String string) {
  int vowels = 0;
  int consonants = 0;

  string = string.toLowerCase(); // convert all letters to lowercase to make the comparison easier

  for (int i = 0; i < string.length; i++) {
    if (string[i] == 'a' || string[i] == 'e' || string[i] == 'i' || string[i] == 'o' || string[i] == 'u') {
      vowels++;
    } else {
      consonants++;
    }
  }

  print("Number of vowels: $vowels");
  print("Number of consonants: $consonants");
}
