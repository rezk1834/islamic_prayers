import 'package:flutter/material.dart';
import 'package:islamic_prayers/pages/Mosque.dart';
import 'package:islamic_prayers/pages/Wakingup.dart';
import 'package:islamic_prayers/pages/studying.dart';
import 'package:islamic_prayers/pages/travelling.dart';
import 'package:islamic_prayers/widgets/PrayerContainer.dart';
import 'pages/EPrayers.dart';
import 'pages/MPrayers.dart';
import 'pages/Sleeping.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الأذكار',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[400],
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MPrayers()),);
                  },
                  child: PrayerContainer(
                    title: 'أذكار الصباح   ',
                    icon: Icons.wb_sunny,
                    color1: Colors.red[600]!,
                    color2: Colors.orange,
                  ),
                ),
                SizedBox(height: 20), // Add SizedBox for spacing
                GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EPrayers()),);
                    },
                  child: PrayerContainer(
                    title: 'أذكار المساء     ',
                    icon: Icons.nightlight_round_outlined,
                    color1: Colors.blueGrey[600]!,
                    color2: Colors.blueAccent,
                  ),
                ),
                SizedBox(height: 20), // Add SizedBox for spacing
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Sleeping()),);
                  },
                  child: PrayerContainer(
                    title: 'أذكار النوم       ',
                    icon: Icons.bed,
                    color1: Colors.black!,
                    color2: Colors.blueGrey[500]!,
                  ),
                ),
                SizedBox(height: 20), // Add SizedBox for spacing
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Mosque()),);
                  },
                  child: PrayerContainer(
                    title: 'أذكار المسجد   ',
                    icon: Icons.mosque,
                    color1: Colors.green[800]!,
                    color2: Colors.green[400]!,
                  ),
                ),
                SizedBox(height: 20), // Add SizedBox for spacing
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Travilling()),);
                  },
                  child: PrayerContainer(
                    title: 'أذكار السفر      ',
                    icon: Icons.train_outlined,
                    color1: Colors.teal,
                    color2: Colors.teal,
                  ),
                ),
                SizedBox(height: 20), // Add SizedBox for spacing
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Wakingup()),);
                  },
                  child: PrayerContainer(
                    title: 'أذكار الاستياظ   ',
                    icon: Icons.alarm,
                    color1: Colors.deepPurple[600]!,
                    color2: Colors.purple[400]!,
                  ),
                ),
                SizedBox(height: 20), // Add SizedBox for spacing
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Studying()),);
                  },
                  child: PrayerContainer(
                    title: 'أذكار المذاكرة   ',
                    icon: Icons.school,
                    color1: Colors.orangeAccent[700]!,
                    color2: Colors.orangeAccent[400]!,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
