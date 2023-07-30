import 'package:flutter/material.dart';
import 'package:hotelbookinguikit/Screens/home.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int currentIndex = 0;
  List<Map<String, String>> welcomeData = [
    {
      "text": "Welcome to TripMate!\nBook Your Dream Trip \nwith a Few Taps",
      "image": "images/svg1.svg"
    },
    {
      "text":
          "Travel the World \nwith TripMate and Create \nUnforgettable Memories",
      "image": "images/svg2.svg"
    },
    {
      "text": "Your One-Stop App for All Your Travel Needs\nTripMate",
      "image": "images/svg3.svg"
    },
  ];
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                itemCount: welcomeData.length,
                controller: _controller,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SvgPicture.asset(
                        welcomeData[index]["image"]!,
                        fit: BoxFit.cover,
                      ),
                      const Spacer(flex: 1),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          welcomeData[index]["text"]!,
                          style: const TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 2)
                    ],
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) => buildDots(index, context)),
          ),
          const SizedBox(height: 40),
          Container(
            height: MediaQuery.of(context).size.height * 0.075,
            width: MediaQuery.of(context).size.width * 0.88,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(2, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue.withOpacity(0.7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              child: Text(
                currentIndex == 2 ? "Get Started" : "Next",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              onPressed: () {
                if (currentIndex == 2) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration: const Duration(milliseconds: 220),
                  curve: Curves.easeOut,
                );
              },
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }

  Container buildDots(int index, BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: currentIndex == index ? Colors.blue : Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: currentIndex == index ? Colors.blue : Colors.black,
          width: 1,
        ),
      ),
    );
  }
}
