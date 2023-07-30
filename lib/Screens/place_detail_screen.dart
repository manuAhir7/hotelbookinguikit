import 'package:flutter/material.dart';
import 'package:hotelbookinguikit/Widgets/hotelspecification_widget.dart';
import 'package:hotelbookinguikit/Widgets/notification_widget.dart';

class Placescreen extends StatefulWidget {
  const Placescreen({super.key});

  @override
  State<Placescreen> createState() => _PlacescreenState();
}

class _PlacescreenState extends State<Placescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
              right: 0,
              left: 0,
              child: Container(
                width: double.maxFinite,
                height: 255,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/hotel1.jpg"))),
              )),
          Positioned(
              left: 20,
              top: 50,
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const NotificationIcon(icon: Icons.arrow_back))),
          const Positioned(
              right: 20,
              top: 50,
              child: NotificationIcon(icon: Icons.favorite_outline)),
          const Positioned(
              right: 70,
              top: 50,
              child: NotificationIcon(
                icon: Icons.share_outlined,
              )),
          Positioned(
              top: 225,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding:
                    const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Bali Motel",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 25)),
                    const SizedBox(height: 4),
                    const Text("Vung Tau",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 24)),
                    const SizedBox(height: 5),
                    const Row(children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 18,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 3),
                      Text(
                        "Indonesia",
                        style: TextStyle(color: Colors.black54),
                      )
                    ]),
                    const SizedBox(height: 4),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              size: 18,
                              color: Colors.amber,
                            ),
                            SizedBox(width: 4),
                            Text("4.9",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            SizedBox(width: 2),
                            Text(
                              "(6.8k review)",
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text("\$580/",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600)),
                            Text("night",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54))
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      height: 40,
                      color: Colors.grey,
                    ),
                    const Text(
                      "The hotel has a great location right by the sea with an access to a small private beach. "
                      "I found the room is spacious and comfortable and well designed."
                      "The infinity pool is fantastic sunset view is a big plus.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(height: 5),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Read more",
                        style: TextStyle(color: Colors.amber),
                      ),
                    ),
                    const SizedBox(height: 15),
                    mediumText("What we offer"),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.8),
                      child: Hotelspecification(),
                    ),
                    const SizedBox(height: 6),
                    mediumText("Hosted by"),
                    const SizedBox(height: 10),
                    ownerRating(),
                  ],
                ),
              )),
          Positioned(
              bottom: 12,
              left: 20,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.075,
                width: MediaQuery.of(context).size.width * 0.88,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.withOpacity(0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(2, 2),
                      )
                    ]),
                child: const Center(
                  child: Text(
                    "Book Now",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              )),
          Positioned(
              bottom: 98,
              right: 23,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.061,
                width: MediaQuery.of(context).size.height * 0.061,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.orange.withOpacity(0.8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(4, 3),
                      )
                    ]),
                child: const Icon(
                  Icons.chat_outlined,
                  color: Colors.white,
                  size: 22,
                ),
              )),
        ],
      ),
    ));
  }
}

Widget mediumText(String text) {
  return Text(text,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600));
}

Widget ownerRating() {
  return Row(
    children: [
      Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/dp.jpg"))),
      ),
      const SizedBox(width: 10),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Harleen Smith"),
          Row(
            children: [
              Icon(
                Icons.star_rounded,
                size: 20,
                color: Colors.amber,
              ),
              SizedBox(width: 4),
              Text("4.9", style: TextStyle(fontWeight: FontWeight.w500)),
              SizedBox(width: 2),
              Text(
                "(1.4k review)",
                style: TextStyle(color: Colors.black54),
              )
            ],
          ),
        ],
      )
    ],
  );
}
