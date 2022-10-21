import 'dart:io';

void main() {
  print('Masukan User ID');
  String? userId = stdin.readLineSync();
  print('Masukan Input number:');
  String? inputNumber = stdin.readLineSync();
  late int encryptNumber;
  late String result;
  if (inputNumber != null && userId != null) {
    encryptNumber = stepOne(input: inputNumber);
    encryptNumber = stepTwo(input: encryptNumber);
    result = stepThree(encryptNumber: encryptNumber.toString(), userId: userId);
    print('Hasil : ${result}');
  }
}

int stepOne({required String input}) {
  int current = 1;
  for (int i = 0; i < input.length; i++) {
    // print('Check number :${input[i]} at index $i');
    if (input[i] == '0') {
      // print('catch 1');
      // print('current = $current * ${i + 1}');
      current = current * i + 1;
      print('coba current if');
      print(current);
    } else {
      // print('catch 2');
      print('current = $current * ${int.parse(input[i])}');
      current = current * int.parse(input[i]);
      print('coba current else');
      print(current);
    }
    print('current value is $current');
  }
  return current;
}

int stepTwo({required int input}) {
  print('coba hasil input');
  print(input);
  return (input * 121) - 100;
}

String stepThree({required String userId, required String encryptNumber}) {
  int prefixNumber = 0;
  int postNumber = 0;
  if (userId.length >= 3) {
    prefixNumber = int.parse(userId.substring(0, 3)) + 13;
    postNumber = int.parse(userId.substring(3, userId.length)) + 18;
  // } else if (userId.length > 0) {
  //   prefixNumber = int.parse(userId.substring(0, userId.length)) + 13;
  } else {}
  return prefixNumber.toString() +
      'X' +
      encryptNumber +
      'B' +
      postNumber.toString();
}