import 'package:flutter/material.dart';

class PrayerContainer extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color1;
  final Color color2;


  const PrayerContainer({
     Key? key,
    required this.title,
    required this.icon,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [color1,color2]),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
    );
  }
}
