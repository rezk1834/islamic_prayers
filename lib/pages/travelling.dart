import 'package:flutter/material.dart';

class Travilling extends StatefulWidget {
  const Travilling({super.key});

  @override
  State<Travilling> createState() => _TravillingState();
}

class _TravillingState extends State<Travilling> {
  final List<Map<String, int>> prayers = [
    {"كبَّر ثلاثًا عند ركوب راحلته": 1},
    {"سبحان الذي سخَّر لنا هذا، وما كنا له مُقْرِنِينَ، وإنَّا إلى رَبِّنا لَمُنْقَلِبُونَ": 2},
    {"اللهم إنا نسألك في سفرنا هذا البِرَّ وَالتَّقْوَى، وَمِنَ العَمَلِ ما تَرْضَى": 2},
    {"اللهم أصحبنَا بنُصحكَ واقلبْنا بذمّةٍ، اللهم ازْوِ لنا الأرضَ وهوِّنْ علينا السفرَ": 1},
    {"أعوذُ بِكلماتِ اللهِ التَّامَّاتِ من شرِّ ما خَلقَ عند نزول المسافر منزلاً": 1},
    {"سَمِعَ سَامِعٌ بحَمْدِ اللهِ وَحُسْنِ بَلَائِهِ عَلَيْنَا، رَبَّنَا صَاحِبْنَا وَأَفْضِلْ عَلَيْنَا، عَائِذًا باللَّهِ مِنَ النَّارِ أثناء السحر": 1},
    {"يا أرضُ ربِّي وربُّكِ اللَّهُ، أعوذُ باللَّهِ من شرِّكِ وشرِّ ما فيكِ، وشرِّ ما خلقَ فيكِ، وشرِّ ما يدبُّ عليكِ، أعوذُ بكَ من أسَدٍ وأسوَدَ، ومنِ الحيَّةِ والعقربِ، ومن ساكنِ البلدِ، ووالدٍ وما ولدَ عند اقبل الليل": 1},
    {"أستودع اللَّه دينَك وأمانتك وخواتيم عملك": 2},
    {"اللهم اطو له البعد وهون عليه السفر": 1},
    {"أستودعكم الله الذي لا تضيع ودائعه": 1},
    {"الله أكبر، الله أكبر، الله أكبر، سبحان الّذي سخّر لنا هذا وما كنّا له مقرنين وإنّا إلى رَبِّنا لمنقلبون، اللهم إنا نسألك في سفرنا هذا البرّ والتقوى، ومن العمل ما ترضى، اللهم هون علينا سفرنا هذا واطو عنا بعده، اللهم أنت الصاحب في السفر، والخليفة في الأهل، اللهم إني أعوذ بك من وعثاء السفر، وكآبة المنظر وسوء المنقلب في المال والأهل": 2},
    {"آيبون، تائبون، عابدون، لربنا حامدون": 2},
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
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: const Text(
          'أذكار السفر',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: LinearProgressIndicator(
                minHeight: 10.0,
                value: progress_counter / 12,
                color: Colors.teal[800],
                backgroundColor: Colors.teal[300],
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
                                  color: Colors.teal[400]!,
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
                              color: Colors.teal[400],
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