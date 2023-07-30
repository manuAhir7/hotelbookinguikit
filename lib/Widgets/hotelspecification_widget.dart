import 'package:flutter/material.dart';

class Hotelspecification extends StatelessWidget {
  const Hotelspecification({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 65,
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colors.black12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(1, 2),
                  )
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                getCategoryIcon(categories[index]),
                const SizedBox(height: 6),
                Text(
                  categories[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

final List<String> categories = [
  '2 Bed',
  'Dinner',
  'Hot Tub',
  'AC',
  'Dry Cleaning',
];

Icon getCategoryIcon(String category) {
  switch (category) {
    case '2 Bed':
      return const Icon(
        Icons.hotel_outlined,
        color: Colors.black87,
        size: 24,
      );
    case 'Dinner':
      return const Icon(
        Icons.room_service_outlined,
        color: Colors.black87,
        size: 22,
      );
    case 'Hot Tub':
      return const Icon(
        Icons.hot_tub_outlined,
        color: Colors.black87,
        size: 24,
      );
    case 'AC':
      return const Icon(
        Icons.ac_unit_outlined,
        color: Colors.black87,
        size: 24,
      );
    case 'Dry Cleaning':
      return const Icon(
        Icons.dry_cleaning,
        color: Colors.black87,
        size: 24,
      );
    default:
      return const Icon(
        Icons.category_outlined,
        color: Colors.black87,
        size: 24,
      );
  }
}
