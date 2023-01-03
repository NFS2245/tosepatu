// import 'package:flutter/material.dart';
// import 'package:tosepatu/app/themes/themes/colors_theme.dart';
// import 'package:tosepatu/app/themes/themes/font_themes.dart';

// class GenericDropdown extends StatelessWidget {
//   // TODO: Fixing focus node and dropdown style

//   const GenericDropdown(
//       {super.key,
//       required this.selectedItem,
//       required this.items,
//       required this.onChanged});

//   final String selectedItem;
//   final List<String> items;
//   final Function(String?)? onChanged;

//   @override
//   Widget build(BuildContext context) {
//     // FIXME: Change from Material to Material
//     return Material(
//       elevation: 2,
//       borderRadius: BorderRadius.circular(8),
//       child: Container(
//         height: 53,
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
//         width: MediaQuery.of(context).size.width * 0.90,
//         decoration: BoxDecoration(
//           color: PrimaryGrey,
//           borderRadius: BorderRadius.circular(8),
//         ),
//         // child: Row(
//         //   children: [
//         //     Expanded(
//         //       child: ButtonTheme(
//         //         alignedDropdown: true,
//         //         child: DropdownButtonFormField(
//         //           isExpanded: true,
//         //           decoration: InputDecoration(
//         //             border: OutlineInputBorder(
//         //               borderRadius: BorderRadius.circular(8.0),
//         //               borderSide: BorderSide(
//         //                 color: Colors.white,
//         //               ),
//         //             ),
//         //             enabledBorder: OutlineInputBorder(
//         //               borderRadius: BorderRadius.circular(8.0),
//         //               borderSide: BorderSide(
//         //                 color: Colors.white,
//         //               ),
//         //             ),
//         //             focusedBorder: OutlineInputBorder(
//         //               borderRadius: BorderRadius.circular(8.0),
//         //               borderSide: BorderSide(
//         //                 color: Colors.white,
//         //               ),
//         //             ),
//         //             icon: SizedBox(
//         //               height: 32,
//         //               width: 32,
//         //               child: Center(
//         //                 child: Icon(
//         //                   CustomIconData.timer,
//         //                   color: ColorsTheme.neutralColor[900],
//         //                 ),
//         //               ),
//         //             ),
//         //           ),
//         //           dropdownColor: Colors.white,
//         //           style: TypographyTheme.bodyRegular
//         //               .copyWith(color: ColorsTheme.neutralColor[900]),
//         //           icon: Icon(Icons.expand_more),
//         //           iconEnabledColor: ColorsTheme.neutralColor[900],
//         //           value: selectedItem,
//         //           items: items
//         //               .map((String e) =>
//         //                   DropdownMenuItem(value: e, child: Text(e)))
//         //               .toList(),
//         //           onChanged: onChanged,
//         //         ),
//         //       ),
//         //     ),
//         //   ],
//         // ),
//         child: Row(
//           children: [
//             SizedBox(
//               height: 32,
//               width: 32,
//               child: Center(
//                 child: Icon(
//                   Icons.local_shipping,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 child: DropdownButtonHideUnderline(
//                   child: ButtonTheme(
//                     alignedDropdown: true,
//                     child: DropdownButton(
//                       alignment: Alignment.center,
//                       style: FontsThemes.checkoutText
//                           .copyWith(color: Colors.black),
//                       icon: Icon(Icons.expand_more),
//                       isExpanded: true,
//                       iconEnabledColor: Colors.black,
//                       dropdownColor: Colors.white,
//                       value: selectedItem,
//                       items: items
//                           .map(
//                             (String e) => DropdownMenuItem(
//                               value: e,
//                               child: Text(e),
//                             ),
//                           )
//                           .toList(),
//                       onChanged: onChanged,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
