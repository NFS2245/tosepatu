import 'package:flutter/material.dart';

import '../../../../themes/colors_theme.dart';

class ConfirmNewPasswordTextFields extends StatefulWidget {
  const ConfirmNewPasswordTextFields({super.key});

  @override
  State<ConfirmNewPasswordTextFields> createState() =>
      _ConfirmNewPasswordTextFieldsState();
}

class _ConfirmNewPasswordTextFieldsState
    extends State<ConfirmNewPasswordTextFields> {
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
              decoration: InputDecoration(
                filled: true,
                fillColor: PrimaryGrey,
                hintText: 'Konfirmasi Kata Sandi Baru',
                enabled: true,
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: PrimaryBlue),
                  borderRadius: new BorderRadius.circular(8),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: StrokeGrey),
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
