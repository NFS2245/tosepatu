import 'dart:ffi';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:tosepatu/app/themes/themes/colors_theme.dart';
import 'package:tosepatu/app/themes/widgets/item_count/checkout_itemcount.dart/controller_itemcount.dart';

class ItemCount extends StatefulWidget {
  ItemCount({super.key});

  @override
  State<ItemCount> createState() => _ItemCountState();
}

class _ItemCountState extends State<ItemCount> {
  final CountController c = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 38,
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
        SizedBox(width: 20),
        Obx(() => Text("${c.deepClean.toString()}")),
        SizedBox(width: 20),
        SizedBox(
          width: 38,
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

class ItemCount2 extends StatefulWidget {
  ItemCount2({super.key});

  @override
  State<ItemCount2> createState() => _ItemCount2State();
}

class _ItemCount2State extends State<ItemCount2> {
  final CountController c = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 38,
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
        SizedBox(width: 20),
        Obx(() => Text("${c.deepcleanwhite.toString()}")),
        SizedBox(width: 20),
        SizedBox(
          width: 38,
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
