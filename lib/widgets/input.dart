import 'package:flutter/material.dart';

class InputTextFormField extends StatefulWidget {
  InputTextFormField(
      {super.key,
      this.width,
      this.height,
      this.controller,
      this.hintText,
      this.label,
      this.prefixIcon,
      this.obscureText,
      this.suffixIcon,
      this.onFieldSubmitted,
      this.keyboardType});

  double? width;
  double? height;
  TextEditingController? controller;
  String? hintText;
  Widget? label;
  Widget? prefixIcon;
  bool? obscureText;
  Widget? suffixIcon;
  void Function(String)? onFieldSubmitted;
  TextInputType? keyboardType;

  @override
  State<InputTextFormField> createState() => _InputTextFormFieldState();
}

class _InputTextFormFieldState extends State<InputTextFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: widget.width ?? 250,
        height: widget.height ?? 60,
        child: TextFormField(
          controller: widget.controller,
          // onTap: () async {},
          style: TextStyle(fontSize: 22),
          obscureText: widget.obscureText ?? false,
          onFieldSubmitted: widget.onFieldSubmitted,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            label: widget.label,
            hintText: widget.hintText,
            hintStyle: TextStyle(fontSize: 22),
            prefixIcon: widget.prefixIcon,
            filled: true,
            fillColor: const Color.fromARGB(255, 232, 232, 232),
            suffixIcon: widget.suffixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
          ),
        ));
  }
}