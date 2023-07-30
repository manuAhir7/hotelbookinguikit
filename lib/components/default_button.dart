import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function? press;
  const DefaultButton({super.key, required this.text, this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.075,
        width: MediaQuery.of(context).size.width * 0.88,
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(
              0.7,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(2, 2),
              )
            ]),
        child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ));
  }
}
