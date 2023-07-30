import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  final IconData icon;
  const NotificationIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black12,
        //     offset: Offset(0, 4),
        //     blurRadius: 4,
        //   ),
        // ],
      ),
      child: Icon(
        icon,
        size: 20,
        color: Colors.black87,
      ),
    );
  }
}
