
int hitungTotal(List<int> hargaBarang) {
  int total = 0;

  for (int i = 0; i < hargaBarang.length; i++) {
    total = total + hargaBarang[i];
  }

  return total;
}

double hitungPajak(double total) => total * 10 / 100;

void main() {
  const namaToko = 'Toko Metro';
  final namaPelanggan = 'Budi';
  bool isMember = true;
  String? kodeVoucher;

  List<String> namaBarang = ['Pensil', 'Buku', 'Tas'];
  List<int> hargaBarang = [5000, 15000, 120000];

  int total = hitungTotal(hargaBarang);

  double diskon = 0;

  if (isMember == true && total >= 100000) {
    diskon = total * 10 / 100;
  }

  double pajak = hitungPajak(total - diskon);
  double bayar = total - diskon + pajak;

  int uangBayar = 200000;
  double kembalian = uangBayar - bayar;

  String level;

  switch (total) {
    case >= 200000:
      level = 'Gold';
      break;
    case >= 100000:
      level = 'Silver';
      break;
    default:
      level = 'Reguler';
  }

  print('=== $namaToko ===');
  print('Pelanggan : $namaPelanggan');

  for (int i = 0; i < namaBarang.length; i++) {
    print('${i + 1}. ${namaBarang[i]}  Rp ${hargaBarang[i]}');
  }

  print('Total     : Rp $total');
  print('Diskon    : Rp ${diskon.toStringAsFixed(0)}');
  print('Pajak     : Rp ${pajak.toStringAsFixed(0)}');
  print('Bayar     : Rp ${bayar.toStringAsFixed(0)}');
  print('Voucher   : ${kodeVoucher ?? 'Tidak ada voucher'}');
  print('Level     : $level');
  print('Kembalian : Rp ${kembalian.toStringAsFixed(0)}');
}
