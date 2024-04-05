import 'package:flutter/material.dart';

import 'common_text_widget.dart';

class CustomButton extends StatefulWidget {
  final String buttonText;
  final Function onPressed;
  final double width;
  final double? height;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final double? elevation;
  final BorderSide? side;
  final double? radius;

  const CustomButton(
      {super.key,
      required this.width,
      required this.buttonText,
      required this.onPressed,
      this.color,
      this.height,
      this.textColor,
      this.elevation,
      this.fontSize,
      this.side,
      this.radius});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              elevation: widget.elevation,
              backgroundColor: widget.color,
              side: widget.side,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(widget.radius!),
              )),
          onPressed: () {
            widget.onPressed();
          },
          child: CustomText(
            data: widget.buttonText,
            color: widget.textColor,
            fontSize: widget.fontSize,
          )),
    );
  }
}
