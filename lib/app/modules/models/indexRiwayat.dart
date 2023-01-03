class DataRiwayat {
  String? idPesanan;
  String? namaPengiriman;
  String? catatan;
  String? tanggalMasuk;
  String? grandTotal;
  String? noTelp;
  String? alamat;

  DataRiwayat(
      {this.idPesanan,
      this.namaPengiriman,
      this.catatan,
      this.tanggalMasuk,
      this.grandTotal,
      this.noTelp,
      this.alamat});

  DataRiwayat.fromJson(Map<String, dynamic> json) {
    idPesanan = json['id_pesanan'];
    namaPengiriman = json['nama_pengiriman'];
    catatan = json['catatan'];
    tanggalMasuk = json['tanggal_masuk'];
    grandTotal = json['grand_total'];
    noTelp = json['no_telp'];
    alamat = json['alamat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_pesanan'] = this.idPesanan;
    data['nama_pengiriman'] = this.namaPengiriman;
    data['catatan'] = this.catatan;
    data['tanggal_masuk'] = this.tanggalMasuk;
    data['grand_total'] = this.grandTotal;
    data['no_telp'] = this.noTelp;
    data['alamat'] = this.alamat;
    return data;
  }
}
