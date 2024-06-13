import 'package:flutter/material.dart';

class Studying extends StatefulWidget {
  const Studying({super.key});

  @override
  State<Studying> createState() => _StudyingState();
}
class _StudyingState extends State<Studying> {
final List<Map<String, int>> prayers = [
  {"بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيمِ* الْحَمْدُ لِلَّـهِ رَبِّ الْعَالَمِينَ* الرَّحْمَـٰنِ الرَّحِيمِ* مَالِكِ يَوْمِ الدِّينِ* إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ* اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ* صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ": 1},
  {"اللَّـهُ لَا إِلَـٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِندَهُ إِلَّا بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلَا يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلَّا بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ وَلَا يَئُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ": 1},
  {"أَلَمْ نَشْرَحْ لَكَ صَدْرَكَ* وَوَضَعْنَا عَنكَ وِزْرَكَ* الَّذِي أَنقَضَ ظَهْرَكَ*وَرَفَعْنَا لَكَ ذِكْرَكَ* فَإِنَّ مَعَ الْعُسْرِ يُسْرًا* إِنَّ مَعَ الْعُسْرِ يُسْرًا* فَإِذَا فَرَغْتَ فَانصَبْ* وَإِلَى رَبِّكَ فَارْغَب": 1},
  {"سورة القلم": 1},
  {"آمَنَ الرَّسُولُ بِمَا أُنزِلَ إِلَيْهِ مِن رَّبِّهِ وَالْمُؤْمِنُونَ كُلٌّ آمَنَ بِاللَّـهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِّنْ رُسُلِهِ وَقَالُوا سَمِعْنَا وَأَطَعْنَا غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ* لَا يُكَلِّفُ اللَّـهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِن نَّسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِن قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنتَ مَوْلَانَا فَانصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ": 1},
  {"سَنُقْرِئُكَ فَلَا تَنسَى* إِلَّا مَا شَاءَ اللَّـهُ إِنَّهُ يَعْلَمُ الْجَهْرَ وَمَا يَخْفَى": 1},
  {"الرَّحْمَـنُ*عَلَّمَ الْقُرْآنَ* خَلَقَ الْإِنسَانَ* عَلَّمَهُ الْبَيَانَ* الشَّمْسُ وَالْقَمَرُ بِحُسْبَانٍ": 1},
  {"ثُمَّ كَانَ عَلَقَةً فَخَلَقَ فَسَوَّى* فَجَعَلَ مِنْهُ الزَّوْجَيْنِ الذَّكَرَ وَالْأُنثَى* أَلَيْسَ ذَلِكَ بِقَادِرٍ عَلَى أَن يُحْيِيَ الْمَوْتَى": 1},
  {"قالَ رَبِّ اشرَح لي صَدري* وَيَسِّر لي أَمري* وَاحلُل عُقدَةً مِن لِساني* يَفقَهوا قَولي": 1},
  {"اللهم إنّي أسألك أن تجعل حفظي سريعًا، وتُبارك في جهدي ووقتي، وأسألك ألّا يذهب تعبي سدًى، وأن توفقني وتُيسّر أمري. اللهم ارزقني قوة الحافظة، وسرعة الحفظ، واتّقاد الذهن وعلو الطموح والهمّة. اللهم أعنّي على دراستي وأرشدني لما فيه صلاح أمري في الدنيا والآخرة، وهبني سرعة الحفظ وقوّته والبركة في الوقت والقدرة على الدراسة في جميع الظروف. اللهم إنّي أسألك أن ترزقني علمًا نافعًا، وأن تنفعني بما علّمتني وأنت تزيدني علمًا، وأن تهبني من لدنك عقلًا منيرًا، ونفسًا منشرحة مقبلة على الدراسة والتحصيل العلمي برغبةٍ وحب، واجعلني يا ربّي سريع الحفظ حاد الذهن، واجعل ما رزقتني من العلم حجةً لي لا عليّ يا كريم يا رب. ربّ زدني علمًا، وحلمًا، وصبرًا، وفهمًا، وأبعد عنّي النسيان والتشتّت، واجعل لي حافظةً قوية، وعقلًا واعيًا، وفكرًا متيقظًا، وأبعد عنّي المعاصي واصرف عنّي الفتن ما ظهر منها وما بطن. اللهم أنت ربي، وأنت إلهي، وأنت مولاي تولّني برحمتك واهدني سواء السبيل، وارزقني من العلم ما ترضى، وامنن عليّ بالحفظ السريع فلا أنسى ما أحفظ ولا أجهل ما أفهم، أنت الكريم وأنت المعطي وأنت الهادي يا رب. اللهم إنّي أسألك أن توفقّني في دراستي، وتعينني في مذاكرتي، وتكون معي في امتحاناتي، وترزقني سرعة الحفظ، وتكرمني بنور البصيرة والبصر، وتجعلني هاديًا مهديًا لا ضالًا مضلًّا، يا كريم يا رب.": 1},
  {"اللهم إنّي أسألك أن تجعل حفظي سريعًا، وتُبارك في جهدي ووقتي، وأسألك ألّا يذهب تعبي سدًى، وأن توفقني وتُيسّر أمري. ": 1},
  {"اللهم ارزقني قوة الحافظة، وسرعة الحفظ، واتّقاد الذهن وعلو الطموح والهمّة. ": 1},
  {"اللهم أعنّي على دراستي وأرشدني لما فيه صلاح أمري في الدنيا والآخرة، وهبني سرعة الحفظ وقوّته والبركة في الوقت والقدرة على الدراسة في جميع الظروف. ": 1},
  {"اللهم إنّي أسألك أن ترزقني علمًا نافعًا، وأن تنفعني بما علّمتني وأنت تزيدني علمًا، وأن تهبني من لدنك عقلًا منيرًا، ونفسًا منشرحة مقبلة على الدراسة والتحصيل العلمي برغبةٍ وحب، واجعلني يا ربّي سريع الحفظ حاد الذهن، واجعل ما رزقتني من العلم حجةً لي لا عليّ يا كريم يا رب. ": 1},
  {"اللهم يا معلّم إبراهيم ويا مفهّم سليمان علّمني وفهّمني. اللهم افتح لي من أبواب حكمتك، وانشر عليّ من أبواب رحمتك، وامنن عليّ بسهولة الفهم وحسن الاستيعاب وقوة التركيز. اللهم أحيني على سنّة نبيّك، وأعذني من الفتن، وأبعد عنّي ما يعيقني في طريق دراستي وتحصيلي العلمي، وارزقني سهولة الفهم وقوّته ولا تصعّب عليّ أمرًا ولا تعقّد عليّ مسألة. اللهم لا سهل إلّا ما جعلته سهلًا، يا رب إنّك أنت من تجعل الحَزن إذا شئت سهلًا، أسألك يا إلهي أن تجعل الدروس سهلة الفهم بالنسبة لي وأن تجعل الأسئلة ميسّرة الاستيعاب في ذهني، وارزقني طاعتك والالتزام بأمرك. اللهم افتح على قلبي من أبواب العلم والتقى ما تفتح به على أوليائك المتّقين، وهبني سهولة الفهم ونور العقل والفؤاد. اللهم اشرح لي صدري، اللهم يسّر لي أمري، اللهم احلل عقدةً من لساني، ونوّر عقلي بنور العلم والإيمان، واجعل فهمي سريعًا وذهني متّقدا، واهدني وارضَ عنّي.": 1},
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
      backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(
        title: const Text(
          'أذكار المذاكرة',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: LinearProgressIndicator(
                minHeight: 10.0,
                value: progress_counter / 15,
                color: Colors.orange[800],
                backgroundColor: Colors.orange[400],
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
                                  color: Colors.orange[800]!,
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
                              color: Colors.orange[400],
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