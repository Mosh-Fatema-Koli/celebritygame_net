
import 'package:celebritygame_net/views/widget/brand_colors.dart';
import 'package:flutter/material.dart';

class EmailCustomTextField extends StatelessWidget {
  EmailCustomTextField({
    this.icon,
    this.keytype,
    this.lebelText,
    this.keyy,
    this.maxNumber,
    this.controller,
    this.validator,
    this.data,
    this.hintText,
    this.initialText,
    this.suffixIcon,
    this.formatter,
    this.onChangeFunction,
    this.suffixText,
  });

  final TextEditingController? controller;
  final Function? onChangeFunction;
  final dynamic data;
  final dynamic icon;
  final dynamic suffixIcon;
  final String? initialText;
  final dynamic? validator;
  final String? hintText;
  final int? maxNumber;
  final String? lebelText;
  final dynamic formatter;
  final dynamic keytype;
  final String? suffixText;

  final String? keyy;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        //minLines: 1,
        maxLines: maxNumber,
        initialValue: initialText,
        keyboardType: keytype,
        controller: controller,
        inputFormatters: formatter,
        validator: validator,
        // onSaved: (String value) => data[keyy] = value,
        //  onChanged: onChangeFunction,
        autofocus: false,
        style: myStyle(16.0, Color.fromARGB(251, 77, 74, 74)),
        decoration: InputDecoration(
          // hoverColor: Colors.black,
          filled: true,
          suffixText: suffixText,
          errorStyle: myStyle(
              12,
              Color.fromARGB(255, 59, 66, 109).withOpacity(0.9),
              FontWeight.w500),
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          fillColor: Color.fromARGB(255, 255, 255, 255),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
            borderSide: BorderSide(
              color: Colors.blueGrey,
              width: 1,
            ),
          ),
          labelText: lebelText,
          hintStyle: myStyle(15, Color.fromARGB(235, 105, 101, 101)),
          suffixIcon: suffixIcon,
          prefixIcon: icon,
          labelStyle: myStyle(15, Color.fromARGB(213, 119, 118, 118)),
          hintText: hintText,
        ),
      ),
    );
  }
}
