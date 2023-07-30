import 'package:flutter/material.dart';
import 'package:hotelbookinguikit/Screens/home.dart';

class Blankscreen extends StatefulWidget {
  const Blankscreen({super.key});

  @override
  State<Blankscreen> createState() => _BlankscreenState();
}

class _BlankscreenState extends State<Blankscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Home()));
          },
          child: const Text("Want to go home?"),
        ),
      ),
    );
  }
}
