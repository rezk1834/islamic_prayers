import 'package:flutter/material.dart';

class Wakingup extends StatefulWidget {
  const Wakingup({super.key});

  @override
  State<Wakingup> createState() => _WakingupState();
}

class _WakingupState extends State<Wakingup> {
  final List<Map<String, int>> prayers = [
    {"الحمد لله الذي أحيانا بعد ما أماتنا، وإليه النشور.": 1},
    {"الحمد لله الذي عافاني في جسدي، ورد علي روحي، وأذن لي بذكره  ": 1},
    {"اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلَّا بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلَّا بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ وَلَا يَئُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ": 1},
    {" لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير، سبحان الله، والحمد لله، ولا إله إلا الله، والله أكبر، ولا حول ولا قوة إلا بالله العلي العظيم، رب اغفر لي ": 1},

  ];
  int progress_counter = 0;
  int total_prays  =0;
  void calculateTotalPrayers() {
    for (final prayer in prayers) {
      total_prays += prayer.values.first!;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text(
          'أذكار الاستيقاظ',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: LinearProgressIndicator(
                minHeight: 10.0,
                value: progress_counter / 4,
                color: Colors.deepPurple,
                backgroundColor: Colors.deepPurple[300],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: prayers.length,
              itemBuilder: (context, index) {
                String prayerName = prayers[index].keys.first;
                int prayerCount = prayers[index].values.first;
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Column(
                          children: [GestureDetector(
                            onTap: () {
                              setState(() {
                                if (prayerCount > 1) {
                                  prayers[index][prayerName] = prayerCount - 1;
                                } else {
                                  progress_counter++;
                                  prayers.removeAt(index);
                                }
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.deepPurple[800]!,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                ),
                              ),
                              alignment: AlignmentDirectional.centerEnd,
                              child: ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      1, 2, 1, 2),
                                  child: Text(
                                    prayers[index].keys.first,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                            Container(
                              alignment: AlignmentDirectional.centerEnd,
                              color: Colors.deepPurple[400],
                              child: ListTile(
                                title: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: prayerCount.toString(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '  التكرار ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 1),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}