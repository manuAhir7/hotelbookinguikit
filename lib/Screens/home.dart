import 'package:flutter/material.dart';
import 'package:hotelbookinguikit/Screens/blank_screen.dart';
import '../Widgets/category_widget.dart';
import '../Widgets/horizontal_carousel_widget.dart';
import '../Widgets/vertical_carousel_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  //List<Widget> _pages = [const Blankscreen()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('''Where you\nwanna go?''',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Blankscreen()));
                    },
                    child: searchIcon(Icons.search_rounded)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: CategorySelector(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 25, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Popular Hotels",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Blankscreen()));
                  },
                  child: const Text(
                    "See all",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Horizontalcarousel(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Hot Deals",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 2),
            child: Verticalcarousel(),
          ),
        ],
      )),
    );
  }
}

Widget searchIcon(IconData icon) {
  return Container(
    height: 40,
    width: 40,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(0, 4),
          blurRadius: 4,
        ),
      ],
    ),
    child: Icon(
      icon,
      size: 24,
      color: Colors.black87,
    ),
  );
}
