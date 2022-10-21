import 'dart:io';

void main() {
  var kode;
  var kali;

  stdout.write('Masukkan Kode Barcode: ');
  kode = int.parse(stdin.readLineSync().toString());

  int? hitungKode ({required String kode}) {
    int bantuanIndex = 1;
    for (int i = 0; i < kode.length; i++) {
      if(kode[i] == 0) {
        bantuanIndex = bantuanIndex * i + 1;
        print('Hitungan Kode Barcode: ');
        print(bantuanIndex);
      }
    }
  }

}