import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:tosepatu/app/themes/themes/colors_theme.dart';
import 'package:tosepatu/app/themes/themes/font_themes.dart';

class MainDrawer extends StatefulWidget {
  final VoidCallback? signOut;

  MainDrawer({Key? key, this.signOut}) : super(key: key);
  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  signOut() {
    setState(() {
      widget.signOut!();
    });
  }

  String? username = '';
  String? no_telp_user = '';
  String? id_user = '';
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString("username");
      no_telp_user = preferences.getString("no_telp_user");
      id_user = preferences.getString("id_user");
    });
  }

  @override
  void initState() {
    getPref();
    super.initState();
  }
// class MainDrawer extends StatelessWidget {
//   String? username = '';
//   String? email = '';
//   getPref() async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     setState(() {
//       username = preferences.getString("username");
//       email = preferences.getString("email");
//     });
//   }

//   @override
//   void initState() {
//     getPref();
//     super.initState();
//   }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.003, -0.896),
                  end: Alignment(0.941, 0.648),
                  colors: <Color>[GradientBlue, GradientCyan, GradientCyan],
                  stops: <double>[0, 1, 1],
                ),
              ),
              accountName: Text("$username", style: FontsThemes.drawerTextBig),
              accountEmail:
                  Text("$id_user", style: FontsThemes.drawerTextSmall),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Jadwal Tosepatu"),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Icon(Icons.access_time_filled),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Text("Senin, Selasa : 17.00 - 21.00"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Icon(Icons.access_time_filled),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                      child: Text("Rabu, Kamis : 12.00 - 21.00"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Icon(Icons.access_time_filled),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                      child: Text("Jumat : 09.00 - 18.00"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Icon(Icons.access_time_filled),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                      child: Text("Sabtu : 09.00 - 21.00"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Icon(Icons.access_time_filled),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                      child: Text("Minggu : 09.00 - 18.00"),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 200),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: PrimaryBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  child: Text(
                    'Log Out',
                    style: FontsThemes.buttonTextStyle
                        .copyWith(color: Colors.white),
                  ),
                  onPressed: () {
                    signOut();
                  },
                ),
              ),
            ),
            // Column(
            //   children: [
            //     Container(
            //       padding: const EdgeInsets.fromLTRB(20, 0, 16, 8),
            //       alignment: Alignment.bottomLeft,
            //       child: ElevatedButton(
            //         onPressed: () {
            //           Get.toNamed("/login");
            //         },
            //         style: ElevatedButton.styleFrom(
            //           backgroundColor: PrimaryBlue,
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(10.0)),
            //         ),
            //         child: Text(
            //           "Log Out",
            //           style: FontsThemes.buttonTextStyle
            //               .copyWith(color: Colors.white),
            //         ),
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
//     return Drawer(
//       child: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             height: 155,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment(0.8, 1),
//                 colors: <Color>[
//                   PrimaryBlue,
//                   CyanBlue,
//                 ],
//               ),
//             ),
//             padding: EdgeInsets.all(20),
//             alignment: Alignment.bottomLeft,
//             child: Column(
//               children: [
//                 Text(
//                   "Name",
//                   style: FontsThemes.drawerTextBig.copyWith(
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   "Email",
//                   style: FontsThemes.drawerTextSmall.copyWith(
//                     color: Colors.white,
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
