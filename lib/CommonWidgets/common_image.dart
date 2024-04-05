import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jfs/CommonWidgets/enum.dart';

class CustomImageWidget extends StatefulWidget {
  final double? height;
  final double? width;
  final ImageType type;
  final String imageUrl;
  final Color? color;
  final BoxFit? fit;
  final ColorFilter? colorFilter;
  final BorderRadius? borderRadius;
  final double? radius;
  final Border? border;
  // final Function? onPressed;


   const CustomImageWidget(
      {super.key,
      required this.type,
      required this.imageUrl,
      this.width,
      this.height,
      this.fit,
      this.color,
      this.colorFilter,
      this.borderRadius,
      this.border,
        this.radius
      // this.onPressed
      });

  @override
  State<CustomImageWidget> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImageWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      // onTap: (){
      //   widget.onPressed!();
      // },
      child: Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
              borderRadius: widget.borderRadius,
              border: widget.border),
          child: CustomImageType(
              type: widget.type,
              imageUrl: widget.imageUrl,
          )),
    );
  }
}

class CustomImageType extends StatefulWidget {
  final ImageType type;
  final String imageUrl;
  final Color? color;
  final BoxFit? fit;
  final ColorFilter? colorFilter;

  const CustomImageType(
      {super.key,
      required this.type,
      required this.imageUrl,
      this.color,
      this.fit,
        this.colorFilter,
     });

  @override
  State<CustomImageType> createState() => _CustomImage1State();
}

class _CustomImage1State extends State<CustomImageType> {
  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case ImageType.asset:
        return Image.asset(
          widget.imageUrl,
          fit: widget.fit,
          color: widget.color,
        );
      case ImageType.network:
        return Image.network(
          widget.imageUrl,
          fit: widget.fit,
          color: widget.color,
        );
      case ImageType.memory:
        return Image.memory(
          base64Decode(widget.imageUrl),
          fit: widget.fit,
          color: widget.color,
        );
      case ImageType.svg:
        return SvgPicture.asset(
          widget.imageUrl,
          colorFilter: widget.colorFilter,
        );
      default:
        return Container();
    }
  }
}
