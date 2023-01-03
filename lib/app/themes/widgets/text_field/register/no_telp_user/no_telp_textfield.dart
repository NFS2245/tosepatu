import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../themes/colors_theme.dart';

class NoTelpUserTextField extends StatefulWidget {
  final TextEditingController? controller;
  final double? height;
  const NoTelpUserTextField({this.controller, this.height});

  @override
  State<NoTelpUserTextField> createState() => _NoTelpUserTextFieldState();
}

class _NoTelpUserTextFieldState extends State<NoTelpUserTextField> {
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
                LengthLimitingTextInputFormatter(13),
              ],
              keyboardType: TextInputType.number,
              controller: widget.controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: PrimaryGrey,
                hintText: 'No Telepon',
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
