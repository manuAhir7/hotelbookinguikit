import 'package:flutter/material.dart';

class socialSignIn extends StatelessWidget {
  final Color bgcolor;
  final String text;
  final Color txtcolor;
  const socialSignIn(
      {super.key,
      required this.bgcolor,
      required this.text,
      required this.txtcolor});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: w * 0.13,
      width: w * 0.42,
      decoration: BoxDecoration(
        color: bgcolor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
          onPressed: () {},
          child: Text(text, style: TextStyle(color: txtcolor))),
    );
  }
}
