import 'package:flutter/material.dart';

import '../../../../../themes/colors_theme.dart';

class ConfirmTextField extends StatefulWidget {
  const ConfirmTextField({super.key});

  @override
  State<ConfirmTextField> createState() => _ConfirmTextFieldState();
}

class _ConfirmTextFieldState extends State<ConfirmTextField> {
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
                hintText: 'Konfirmasi Kata Sandi',
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
