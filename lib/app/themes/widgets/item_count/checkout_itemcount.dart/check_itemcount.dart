import 'dart:ffi';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tosepatu/app/themes/themes/colors_theme.dart';
import 'package:tosepatu/app/themes/widgets/item_count/checkout_itemcount.dart/controller_itemcount.dart';

class CheckItemCount extends StatefulWidget {
  const CheckItemCount({super.key});

  @override
  State<CheckItemCount> createState() => _CheckItemCountState();
}

class _CheckItemCountState extends State<CheckItemCount> {
  final CountController c = Get.put(CountController());
  // int up = 0;

  // void increment() {
  //   setState(() {
  //     if (up >= 0 && up < 100) {
  //       up++;
  //     }
  //   });
  // }

  // void decrement() {
  //   setState(() {
  //     if (up > 0) {
  //       up--;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 27,
          height: 26,
          child: ElevatedButton(
            onPressed: (() => c.decrementDeepclean()),
            child: Icon(Icons.remove_outlined),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              backgroundColor: MaterialStateProperty.all<Color>(PrimaryBlue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(3)))),
            ),
          ),
        ),
        SizedBox(width: 10),
        Obx(() => Text("${c.deepClean.toString()}")),
        SizedBox(width: 10),
        SizedBox(
          width: 27,
          height: 26,
          child: ElevatedButton(
              onPressed: (() => c.incrementDeepclean()),
              child: const Icon(Icons.add),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(PrimaryBlue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(3)))))),
        ),
      ],
    );
  }
}

class CheckItemCount2 extends StatefulWidget {
  const CheckItemCount2({super.key});

  @override
  State<CheckItemCount2> createState() => _CheckItemCount2State();
}

class _CheckItemCount2State extends State<CheckItemCount2> {
  final CountController c = Get.put(CountController());
  int up = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 27,
          height: 26,
          child: ElevatedButton(
            onPressed: (() => c.decrementDeepcleanWhite()),
            child: Icon(Icons.remove_outlined),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              backgroundColor: MaterialStateProperty.all<Color>(PrimaryBlue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(3)))),
            ),
          ),
        ),
        SizedBox(width: 10),
        Obx(() => Text("${c.valuedwhite.toString()}")),
        SizedBox(width: 10),
        SizedBox(
          width: 27,
          height: 26,
          child: ElevatedButton(
              onPressed: (() => c.incrementDeepcleanWhite()),
              child: const Icon(Icons.add),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(PrimaryBlue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(3)))))),
        ),
      ],
    );
  }
}
