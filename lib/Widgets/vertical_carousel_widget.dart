import 'package:flutter/material.dart';
import 'package:hotelbookinguikit/Screens/place_detail_screen.dart';

class Verticalcarousel extends StatelessWidget {
  const Verticalcarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          final hotelIndex = index + 1;
          final hotelImage = 'images/hotel$hotelIndex.jpg';
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Placescreen()));
            },
            child: Container(
              width: 320,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(hotelImage), fit: BoxFit.cover)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bali Motal Vung Tau",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star_sharp, size: 20, color: Colors.amber),
                          Text("4.9",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500))
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 18,
                            color: Colors.white,
                          ),
                          SizedBox(width: 3),
                          Text(
                            "Indonesia",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Text(
                        "\$580/night",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
