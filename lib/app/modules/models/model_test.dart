// To parse this JSON data, do
//
//     final userDatafromMap = userDatafromMapFromJson(jsonString);

import 'dart:convert';

UserData userDataFromMap(String str) => UserData.fromMap(json.decode(str));

String userDataToMap(UserData data) => json.encode(data.toMap());

class UserData {
  UserData({
    required this.status,
    required this.message,
    required this.data,
  });
  final String status;
  final String message;
  final List<Data>? data;

  factory UserData.fromMap(Map<String, dynamic> json) => UserData(
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<Data>.from(json["data"].map((x) => Data.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status == null ? null : status,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<dynamic>.from(data?.map((x) => x.toMap()) ?? []),
      };
}

class Data {
  Data({
    required this.idAkun,
    required this.username,
    required this.email,
    required this.password,
    required this.foto,
    required this.alamat,
    required this.noTelp,
    required this.code,
    required this.codeExpire,
    required this.createdAt,
    required this.idRole,
    required this.verified,
    required this.deleted,
  });

  final String idAkun;
  final String username;
  final String email;
  final String password;
  final String foto;
  final String alamat;
  final String noTelp;
  final String code;
  final String codeExpire;
  final String createdAt;
  final String idRole;
  final String verified;
  final String deleted;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        idAkun: json["id_akun"] == null ? null : json["id_akun"],
        username: json["username"] == null ? null : json["username"],
        email: json["email"] == null ? null : json["email"],
        password: json["password"] == null ? null : json["password"],
        foto: json["foto"] == null ? null : json["foto"],
        alamat: json["alamat"] == null ? null : json["alamat"],
        noTelp: json["no_telp"] == null ? null : json["no_telp"],
        code: json["code"] == null ? null : json["code"],
        codeExpire: json["code_expire"] == null ? null : json["code_expire"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        idRole: json["id_role"] == null ? null : json["id_role"],
        verified: json["verified"] == null ? null : json["verified"],
        deleted: json["deleted"] == null ? null : json["deleted"],
      );

  Map<String, dynamic> toMap() => {
        "id_akun": idAkun == null ? null : idAkun,
        "username": username == null ? null : username,
        "email": email == null ? null : email,
        "password": password == null ? null : password,
        "foto": foto == null ? null : foto,
        "alamat": alamat == null ? null : alamat,
        "no_telp": noTelp == null ? null : noTelp,
        "code": code == null ? null : code,
        "code_expire": codeExpire == null ? null : codeExpire,
        "created_at": createdAt == null ? null : createdAt,
        "id_role": idRole == null ? null : idRole,
        "verified": verified == null ? null : verified,
        "deleted": deleted == null ? null : deleted,
      };
}
