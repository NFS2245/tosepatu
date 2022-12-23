import 'package:flutter/material.dart';

import '../../../../themes/colors_theme.dart';

class EmailTextFields extends StatefulWidget {
  final double? height;
  final TextEditingController? controller;
  const EmailTextFields({required this.controller, this.height});

  @override
  State<EmailTextFields> createState() => _EmailTextFieldsState();
}

class _EmailTextFieldsState extends State<EmailTextFields> {
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
              decoration: InputDecoration(
                filled: true,
                fillColor: PrimaryGrey,
                hintText: 'Email',
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
