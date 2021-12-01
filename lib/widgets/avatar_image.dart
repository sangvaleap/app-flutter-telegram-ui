
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiavatar/multiavatar.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage(this.name, {this.width = 100, this.height = 100, this.bgColor, this.borderWidth = 0, this.borderColor, this.trBackground = false});
  final String name;
  final double width;
  final double height;
  final double borderWidth;
  final Color? borderColor;
  final Color? bgColor;
  final bool trBackground;

  @override
  Widget build(BuildContext context) {
    return
      Container(width: width, height: height,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? Theme.of(context).cardColor, width: borderWidth), 
          color: bgColor,
          shape: BoxShape.circle,
          // boxShadow: [
          //   BoxShadow(
          //     color: Theme.of(context).shadowColor.withOpacity(0.1),
          //     spreadRadius: 1,
          //     blurRadius: 1,
          //     offset: Offset(0, 1), // changes position of shadow
          //   ),
          // ],
        ),
        child: SvgPicture.string(multiavatar(name, trBackground: trBackground)),
      );
  }
}
