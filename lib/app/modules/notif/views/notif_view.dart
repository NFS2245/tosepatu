import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notif_controller.dart';

class NotifView extends GetView<NotifController> {
  const NotifView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotifView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NotifView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
