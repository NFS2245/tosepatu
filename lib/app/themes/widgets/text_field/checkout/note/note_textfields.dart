import 'package:flutter/material.dart';

import '../../../../themes/colors_theme.dart';

class CatatanTextFields extends StatefulWidget {
  final TextEditingController? controller;
  final double? height;
  const CatatanTextFields({this.controller, this.height});

  @override
  State<CatatanTextFields> createState() => _CatatanTextFieldsState();
}

class _CatatanTextFieldsState extends State<CatatanTextFields> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: SizedBox(
          width: 343,
          height: 87,
          child: TextFormField(
            controller: widget.controller,
            minLines:
                10, // any number you need (It works as the rows for the textarea)
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
              filled: true,
              fillColor: PrimaryGrey,
              hintText: 'Catatan',
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
    );
  }
}
