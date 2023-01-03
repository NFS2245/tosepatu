import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../themes/colors_theme.dart';

class AlamatCodTextFields extends StatefulWidget {
  final TextEditingController? controller;
  final double? height;
  const AlamatCodTextFields({this.controller, this.height});

  @override
  State<AlamatCodTextFields> createState() => _AlamatCodTextFieldsState();
}

class _AlamatCodTextFieldsState extends State<AlamatCodTextFields> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: SizedBox(
          width: 343,
          height: 50,
          child: Center(
            child: TextFormField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(50),
              ],
              controller: widget.controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: PrimaryGrey,
                hintText: 'Alamat Ketemuan',
                enabled: true,
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: PrimaryBlue),
                  borderRadius: new BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: StrokeGrey2),
                  borderRadius: new BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
