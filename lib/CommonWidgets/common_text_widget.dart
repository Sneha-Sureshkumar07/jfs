import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String data;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final Color? textBgColor;
  final String? fontFamily;
  final TextAlign? textAlign;
  const CustomText(
      {super.key,
      required this.data,
      this.fontWeight,
      this.color,
      this.fontFamily,
      this.fontSize,this.textAlign,
      this.textBgColor});

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.data,textAlign: widget.textAlign,
      style: TextStyle(
        fontSize: widget.fontSize,
        fontWeight: widget.fontWeight,
        fontFamily: widget.fontFamily,
        color: widget.color,
        backgroundColor: widget.textBgColor,

      ),
    );
  }
}
