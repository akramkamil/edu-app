import 'package:flutter/material.dart';

class CustomIconButtom extends StatelessWidget {
  final Widget child;
  final double hight;
  final double width;
  final VoidCallback onTap;
  final Color? color;
  const CustomIconButtom(
      {super.key,
      required this.child,
      required this.hight,
      required this.width,
      required this.onTap,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: hight,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 2.0,
              spreadRadius: .05,
            )
          ]),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Center(child: child),
      ),
    );
  }
}
