import 'package:abcabcabc/login_page.dart';
import 'package:abcabcabc/q_r_code.dart';
import 'package:flutter/material.dart';

class Hslider4 extends StatelessWidget {
  const Hslider4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff1F222A),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              height: 200,
              width: MediaQuery.of(context).size.width * 1.9,
              child: Column(
                children: [
                  rewardSlideTexts('Casbacks earned', Colors.white),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Image(
                      image: AssetImage('assets/images/dollar2.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: rewardSlideTexts(
                        '+ 88 Rs This month', const Color(0xffB0BEC5)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      height: 60,
                      width: 335,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF343645)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const QrCode(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: rewardSlideTexts(
                              'View your cashback history', Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: rewardSlideTexts('Scrachcards won', Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                rewardSlideContainer(
                  const Image(
                    image: AssetImage('assets/images/group2.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: rewardSlideContainer(
                    const Image(
                      image: AssetImage('assets/images/group3.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: rewardSlideContainer(
                    const Image(
                      image: AssetImage('assets/images/group4.png'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: rewardSlideTexts('Collect Rewards', Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: rewardsLastContainers(
                const Color(0xff242042),
                const Image(
                  image: AssetImage('assets/images/group3.png'),
                ),
                'Flat 50% off On food Delivery',
                'On others above 99 on swaggy, Somato',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: rewardsLastContainers(
                const Color(0xff422038),
                const Image(
                  image: AssetImage('assets/images/group3.png'),
                ),
                '20% Cashback on Amazon',
                'Up to Rs 150 Minimum Other 1000',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget rewardSlideTexts(String balanceText, Color color) {
  return Padding(
    padding: const EdgeInsets.only(top: 5.0),
    child: Text(
      balanceText,
      style: TextStyle(color: color, fontSize: 18),
    ),
  );
}

Widget rewardSlideContainer(rewardIcon) {
  return Container(
    decoration: const BoxDecoration(
      color: Color(0xff242042),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    height: 98,
    width: 115,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: rewardIcon,
      ),
    ),
  );
}

Widget rewardsLastContainers(
  Color color,
  rewardContainerImage,
  String text1,
  String text2,
) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Container(
      height: 101,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          rewardContainerImage,
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  text1,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  text2,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: balanceSlideElevatedbutton(),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget balanceSlideElevatedbutton() {
  return SizedBox(
    height: 30,
    width: 130,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color.fromARGB(255, 106, 63, 80),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      onPressed: () {},
      child: rewardSlideTexts(
        'Collect Now',
        const Color(0xffFA4D96),
      ),
    ),
  );
}
