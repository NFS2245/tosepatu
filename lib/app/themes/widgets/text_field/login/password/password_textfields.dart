import 'package:flutter/material.dart';
import 'package:tosepatu/app/themes/themes/colors_theme.dart';
import 'package:tosepatu/app/themes/themes/font_themes.dart';

class PasswordTextFields extends StatefulWidget {
  final TextEditingController? controller;
  final double? height;
  const PasswordTextFields({required this.controller, this.height});

  @override
  State<PasswordTextFields> createState() => _PasswordTextFieldsState();
}

class _PasswordTextFieldsState extends State<PasswordTextFields> {
  bool _isObscure = true;

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
              controller: widget.controller,
              obscureText: _isObscure,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),
                filled: true,
                fillColor: PrimaryGrey,
                hintText: 'Kata Sandi',
                enabled: true,
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 13.0),
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