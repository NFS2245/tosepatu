class DataPesanan {
  String? idPesanan;
  String? uidUser;
  String? tanggalMasuk;
  String? grandTotal;
  String? statusPesanan;

  DataPesanan(
      {this.idPesanan,
      this.uidUser,
      this.tanggalMasuk,
      this.grandTotal,
      this.statusPesanan});

  DataPesanan.fromJson(Map<String, dynamic> json) {
    idPesanan = json['id_pesanan'];
    uidUser = json['uid_user'];
    tanggalMasuk = json['tanggal_masuk'];
    grandTotal = json['grand_total'];
    statusPesanan = json['status_pesanan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_pesanan'] = this.idPesanan;
    data['uid_user'] = this.uidUser;
    data['ctanggal_masuk'] = this.tanggalMasuk;
    data['grand_total'] = this.grandTotal;
    data['status_pesanan'] = this.statusPesanan;
    return data;
  }
}
