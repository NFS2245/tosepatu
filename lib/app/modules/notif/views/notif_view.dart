import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../themes/themes/font_themes.dart';
import '../controllers/notif_controller.dart';

class NotifView extends GetView<NotifController> {
  const NotifView({Key? key}) : super(key: key);
  static const String _title = 'Flutter Tutorial';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ',
            style: FontsThemes.titlePage.copyWith(color: Colors.black)),
        leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              onPressed: () {
                Get.offNamed(Routes.AKUN);
              },
              color: Colors.black,
              icon: Icon(Icons.keyboard_arrow_left),
            )),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: const Steps(),
    );
  }
}

class Step {
  Step(this.title, this.body, [this.isExpanded = false]);
  String title;
  String body;
  bool isExpanded;
}

List<Step> getSteps() {
  return [
    Step('1 Tentang Tosepatu',
        'Terbentuknya Kami Ber-Awal Dari Sekelompok Pertemanan Yang Sedang Memikirkan Kehidupan Untuk Mengisi Waktu Luang. Dimulainya Bisnis Ini Pada Tanggal 21 September 2022, Sementara Sampai Saat Ini Tempatnya Berada Di Kabupaten Jember.'),
    Step('2 Layanan Tosepatu',
        'Tosepatu Memiliki 2 layanan utama untuk saat ini, yaitu Deep Clean dan Deep clean + Sepatu Putih.'),
    Step('3 Cara Pesan',
        'Pertama Silahkan Pilih Layanan Dan Pesan pada menu Home, pilih juga Metode Pengambilan, selanjutnya tunggu dari admin, Setelah Konfirmasi pesananmu Akan Di Proses.'),
  ];
}

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);
  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  final List<Step> _steps = getSteps();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _renderSteps(),
      ),
    );
  }

  Widget _renderSteps() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _steps[index].isExpanded = !isExpanded;
        });
      },
      children: _steps.map<ExpansionPanel>((Step step) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(step.title),
            );
          },
          body: ListTile(
            title: Text(step.body),
          ),
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
}
