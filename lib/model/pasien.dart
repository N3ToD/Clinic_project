class Pasien {
  int? id;
  String nomorRm;
  String namaPasien;
  String tglLahir;
  String noTelp;
  String alamatTinggal;

  Pasien({
    this.id,
    required this.nomorRm,
    required this.namaPasien,
    required this.alamatTinggal,
    required this.noTelp,
    required this.tglLahir,
  });
}
