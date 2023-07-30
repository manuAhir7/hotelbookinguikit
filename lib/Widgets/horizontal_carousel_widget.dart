import 'package:flutter/material.dart';
//import 'package:hotelbookinguikit/Widgets/place_detail_widget.dart';

class Horizontalcarousel extends StatelessWidget {
  const Horizontalcarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hotels.length,
        itemBuilder: (BuildContext context, int index) {
          final cityIndex = index + 1;
          final cityImage = 'images/city$cityIndex.jpg';
          return GestureDetector(
            onTap: () {},
            child: Container(
              width: 150,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(cityImage), fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    hotels[index],
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Greece",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "\$488/night",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star_sharp, size: 20, color: Colors.amber),
                          Text("4.8",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

final List<String> hotels = [
  'Santorin',
  'Hotel Royal',
  'Taj Palace',
  'Cozy Inn',
  'Sunset Inn',
];
