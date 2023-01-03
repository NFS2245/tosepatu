import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tosepatu/app/modules/models/indexPesanan.dart';
import 'package:tosepatu/app/themes/themes/colors_theme.dart';
import '../../api/api.dart';
import 'package:http/http.dart' as http;

class TabFinish extends StatefulWidget {
  const TabFinish({super.key});

  @override
  State<TabFinish> createState() => _TabFinishState();
}

class _TabFinishState extends State<TabFinish> {
  List<DataPesanan>? lisPending;
  String? id_user = '';
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      id_user = preferences.getString("id_user");
    });
  }

  Future<void> getDataRiwayatFinish() async {
    Uri url = Uri.parse(API.riwayatFinish);
    var response = await http.post(url, body: {"id_user": '$id_user'});
    setState(() {
      lisPending = jsonDecode(response.body)
          .map((item) => DataPesanan.fromJson(item))
          .toList()
          .cast<DataPesanan>();
    });
  }

  @override
  void initState() {
    super.initState();
    getDataRiwayatFinish();
    getPref();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              radius: 25,
              backgroundColor: PrimaryBlue,
              child: IconButton(
                splashRadius: 35,
                icon: Icon(
                  Icons.refresh,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  getDataRiwayatFinish();
                },
              ),
            ),
          ),
          SizedBox(height: 20),
          if (lisPending != null)
            Expanded(
              child: ListView.builder(
                  itemCount: lisPending!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 20),
                          child: Container(
                            width: double.infinity,
                            height: 85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey,
                                  spreadRadius: 0.1,
                                  blurRadius: 1,
                                  offset: const Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                            child: ListTile(
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 17,
                                    child: Icon(Icons.monetization_on_rounded,
                                        color: Colors.white),
                                    backgroundColor: PrimaryBlue,
                                  ),
                                ],
                              ),
                              title: Row(
                                children: [
                                  Text(
                                    "",
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: Colors.black, fontSize: 12)),
                                  ),
                                  Text(
                                    "${lisPending![index].idPesanan}",
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12)),
                                  ),
                                ],
                              ),
                              subtitle: Row(
                                children: [
                                  Text(
                                    "",
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: Colors.black, fontSize: 10)),
                                  ),
                                  Text(
                                    "${lisPending![index].tanggalMasuk}",
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10)),
                                  ),
                                ],
                              ),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Rp. ${lisPending![index].grandTotal}",
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                  ),
                                  Text(
                                    "${lisPending![index].statusPesanan}",
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            color: lisPending![index]
                                                        .statusPesanan ==
                                                    "Menunggu Konfirmasi"
                                                ? Colors.red
                                                : Colors.blue,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
        ],
      ),
    );
  }
}
