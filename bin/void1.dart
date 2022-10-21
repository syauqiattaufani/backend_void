import 'dart:io';
void main() {

  int id = 999999;

  var idToString = id.toString();
  var idToSplit = idToString.split('');

  //Menghitung Barcode, kurang kondisi jika dikalikan 0
  int a = 11245;
  int sum = 1;
  while(a>0){
      sum = sum * (a % 10);
      a = (a / 10).floor();
  }

  var result = sum * 121 - 100;
  print("Hitungan Kode Barcode");
  print(result);
  //if u want to store in a
  a = sum;

  //Menghitung ID

}