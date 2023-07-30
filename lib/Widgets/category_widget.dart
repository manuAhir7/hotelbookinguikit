import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                //print("Tapped icon");
              },
              child: Container(
                width: 78,
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? Colors.blue.withOpacity(0.5)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 1,
                      color: selectedIndex == index
                          ? Colors.black38
                          : Colors.grey),
                  boxShadow: selectedIndex == index
                      ? [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: const Offset(5, 5),
                          )
                        ]
                      : [],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      getCategoryIcon(
                          categories[index], selectedIndex == index),
                      const SizedBox(height: 10),
                      Text(
                        categories[index],
                        style: TextStyle(
                          fontSize: 14,
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

final List<String> categories = [
  'Hotels',
  'Flights',
  'Place',
  'Food',
  'Train',
];

Icon getCategoryIcon(String category, bool isSelected) {
  switch (category) {
    case 'Hotels':
      return Icon(
        Icons.hotel_rounded,
        color: isSelected ? Colors.white : Colors.grey,
        size: 28,
      );
    case 'Flights':
      return Icon(
        Icons.flight_rounded,
        color: isSelected ? Colors.white : Colors.grey,
        size: 28,
      );
    case 'Place':
      return Icon(
        Icons.location_on_rounded,
        color: isSelected ? Colors.white : Colors.grey,
        size: 28,
      );
    case 'Food':
      return Icon(
        Icons.room_service_rounded,
        color: isSelected ? Colors.white : Colors.grey,
        size: 28,
      );
    case 'Train':
      return Icon(
        Icons.train_outlined,
        color: isSelected ? Colors.white : Colors.grey,
        size: 28,
      );
    default:
      return Icon(
        Icons.category,
        color: isSelected ? Colors.white : Colors.grey,
        size: 28,
      );
  }
}
