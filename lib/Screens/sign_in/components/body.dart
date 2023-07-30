import 'package:flutter/material.dart';
import 'package:hotelbookinguikit/Screens/sign_in/components/sigin_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              "Sign In",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: h * 0.03),
            const Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: h * 0.008),
            const Text(
              "Sign in with your email and password  \nor continue with social media",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: h * 0.08),
            SignForm()
          ]),
        ),
      ),
    ));
  }
}
