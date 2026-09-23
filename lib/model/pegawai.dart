class Pegawai {
  int? id;
  String nomorNip;
  String namaPegawai;
  String tglLahir;
  String noTelp;
  String noEmail;
  String inpPassword;

  Pegawai({
    this.id,
    required this.nomorNip,
    required this.namaPegawai,
    required this.inpPassword,
    required this.noEmail,
    required this.noTelp,
    required this.tglLahir,
  });
}
