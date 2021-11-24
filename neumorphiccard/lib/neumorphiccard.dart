library neumorphiccard;

import 'package:flutter/material.dart';
//import 'package:velocity_x/velocity_x.dart';

class NeumorpicCard extends StatelessWidget {
  const NeumorpicCard(
      {Key? key,
      required this.height,
      required this.width,
      required this.color,
      this.child})
      : super(key: key);

  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          const BoxShadow(
              offset: Offset(4, 4),
              spreadRadius: 1,
              blurRadius: 15,
              color: Colors.black26),
          BoxShadow(
              offset: const Offset(-4, -4),
              spreadRadius: 1,
              blurRadius: 15,
              color: color ?? const Color(0xFFF7F8F9))
        ],
      ),
      child: child,
    );
  }
}
