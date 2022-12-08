import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tosepatu/app/themes/themes/colors_theme.dart';
import 'package:tosepatu/app/themes/themes/font_themes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

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
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    PrimaryBlue,
                    CyanBlue,
                  ],
                ),
              ),
              accountName: Text("Name", style: FontsThemes.drawerTextBig),
              accountEmail: Text("Email", style: FontsThemes.drawerTextSmall),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Jadwal Tosepatu"),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.access_time_filled),
                    ),
                    Text("Senin, Selasa : 17.00 - 21.00"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.access_time_filled),
                    ),
                    Text("Rabu, Kamis : 12.00 - 21.00"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.access_time_filled),
                    ),
                    Text("Jumat : 09.00 - 18.00"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.access_time_filled),
                    ),
                    Text("Sabtu : 09.00 - 21.00"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.access_time_filled),
                    ),
                    Text("Minggu : 09.00 - 18.00"),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/login");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: PrimaryBlue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    child: Text(
                      "Log Out",
                      style: FontsThemes.buttonTextStyle
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
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
