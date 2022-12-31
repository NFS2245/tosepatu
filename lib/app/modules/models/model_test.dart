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
    required this.idUser,
    required this.noTelpUser,
    required this.username,
    required this.password,
  });

  final String idUser;
  final String noTelpUser;
  final String username;
  final String password;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        idUser: json["id_user"] == null ? null : json["id_user"],
        noTelpUser: json["no_telp_user"] == null ? null : json["no_telp_user"],
        username: json["username"] == null ? null : json["username"],
        password: json["password"] == null ? null : json["password"],
      );

  Map<String, dynamic> toMap() => {
        "id_user": idUser == null ? null : idUser,
        "no_telp_user": noTelpUser == null ? null : noTelpUser,
        "username": username == null ? null : username,
        "password": password == null ? null : password,
      };
}
