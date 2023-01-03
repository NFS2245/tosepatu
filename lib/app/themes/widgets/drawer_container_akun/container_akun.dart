import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:tosepatu/app/themes/themes/colors_theme.dart';
import 'package:tosepatu/app/themes/themes/font_themes.dart';

class akun extends StatefulWidget {
  akun({Key? key}) : super(key: key);
  @override
  State<akun> createState() => _akunState();
}

class _akunState extends State<akun> {
  String? username_user = '';
  String? no_telp_user = '';
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      username_user = preferences.getString("username");
      no_telp_user = preferences.getString("no_telp_user");
    });
  }

  @override
  void initState() {
    getPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        children: [
          Positioned(
            // profileoE5 (135:320)
            left: 0,
            top: 43,
            child: Container(
              padding: EdgeInsets.fromLTRB(12, 23, 12, 56),
              width: Get.width,
              height: 138,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.003, -0.896),
                  end: Alignment(0.941, 0.648),
                  colors: <Color>[GradientBlue, GradientCyan, GradientCyan],
                  stops: <double>[0, 1, 1],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 0,
                    ),
                    // johndoeCX7 (135:315)
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    width: double.infinity,
                    child: Text(
                      '$username_user',
                      style: FontsThemes.akunTextName
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    // emailemailcomikM (135:317)
                    margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    width: double.infinity,
                    child: Text(
                      "$no_telp_user",
                      style: FontsThemes.akunTextEmail
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
