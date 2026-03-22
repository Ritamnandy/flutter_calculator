import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Firstbutton extends StatelessWidget {
  final String text;
  final Color color;
  final FaIconData? icon;

  final Color frontcolor;
  final Color? iconcolor;
  const Firstbutton({
    super.key,
    required this.text,
    required this.color,

    required this.frontcolor,
    this.icon,
    this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 4),
            blurRadius: 2,
            color: const Color.fromARGB(90, 251, 249, 249),
          ),
        ],
      ),
      child: Center(
        child: icon == null
            ? Text(
                text,
                style: TextStyle(
                  fontSize: 26,
                  color: frontcolor,
                  fontWeight: FontWeight.bold,
                ),
              )
            : FaIcon(icon, size: 30, color: iconcolor),
      ),
    );
  }
}
