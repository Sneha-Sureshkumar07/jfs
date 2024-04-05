
import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
  final String? hintText;
  final bool isPasswordType;
  final int? maxLines;
  final int? minLines;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final double width;
  final double? height;
  final String? fontFamily;
  final double? fontSize;
  final double borderRadius;
  final Color? color;
  final TextInputType keyboardType;
  final Color? fillColor;
  final String? Function(String?)? validator;
  /// ignore: prefer_typing_uninitialized_variables
  final inputFormatter;
  final Function? onTap;
  final Color? hinTextColor;
  final TextAlign? textAlign;
  Key? formKey;
  CustomTextField({
    super.key,
    this.height,
    this.isPasswordType = false,
     required this.width,
    this.maxLines,
    this.minLines,
    this.suffixIcon,
    this.prefixIcon,
    this.color,
    this.controller,
    this.fontFamily,
    this.hintText,
    this.formKey,
    this.validator,
    this.fillColor,
    this.keyboardType = TextInputType.text,
    this.hinTextColor,
    this.inputFormatter,
    this.fontSize,
    required this.borderRadius,
    this.textAlign,
    this.onTap
});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  widget.width,
      height: widget.height,
      child: TextFormField(
        key: widget.formKey,
        keyboardType: widget.keyboardType,
        maxLines: widget.maxLines,
        validator: widget.validator,
        obscureText: widget.isPasswordType,
        inputFormatters: widget.inputFormatter,
        controller: widget.controller,
        textAlign: widget.textAlign!,
        onTap: widget.onTap != null?widget.onTap!():null,
        decoration:  InputDecoration(
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          hintText: widget.hintText,
          hintStyle: TextStyle(fontFamily: widget.fontFamily,fontSize: widget.fontSize),
          border:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius))
          )
        ),
      ),
    );
  }
}
