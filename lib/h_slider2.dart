import 'package:abcabcabc/login_page.dart';
import 'package:flutter/material.dart';

class Hslider2 extends StatelessWidget {
  const Hslider2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this is Balance slide...........
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 10, top: 10, left: 10),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xff1F222A),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          width: MediaQuery.of(context).size.width * 1.9,
          height: 425,
          child: totalBalanceInside(),
        ),
      ),
    );
  }
}

Widget totalBalanceInside() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.keyboard_arrow_left_rounded,
              color: Colors.white,
            ),
            balanceSlideTexts('Portfolio Value'),
            const Icon(Icons.align_vertical_bottom, color: Colors.white)
          ],
        ),
        const Image(
          image: AssetImage('assets/images/dollar.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: balanceSlideTexts('In 3 Accounts'),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              balanceSlideContainer(
                'Federel Bank',
                '1142524899652',
                '16,456.05',
                const Color(0xff652A5F),
              ),
              balanceSlideContainer(
                'States Bank',
                '1142524899652',
                '2045.05',
                const Color(0xff442A65),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              balanceSlideContainer(
                'Best Bank',
                '1142521547852',
                '35873.5',
                const Color(0xff2A6550),
              ),
              const Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 50,
                color: Colors.white,
              ),
            ],
          ),
        ),
        balanceSlideElevatedbutton(),
      ],
    ),
  );
}

Widget balanceSlideTexts(String balanceText) {
  return Padding(
    padding: const EdgeInsets.only(top: 5.0),
    child: Text(
      balanceText,
      style: const TextStyle(color: Colors.white, fontSize: 18),
    ),
  );
}

Widget balanceSlideContainer(
    String balanceText, String balanceText2, String balanceText3, Color color) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
    ),
    height: 98,
    width: 140,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Text(
              balanceText,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(balanceText2, style: const TextStyle(color: Colors.white)),
            Text(balanceText3,
                style: const TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
      ),
    ),
  );
}

Widget balanceSlideElevatedbutton() {
  return SizedBox(
    height: 60,
    width: 335,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xFF343645)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
      onPressed: () {},
      child: balanceSlideTexts('Add / Manage Accounts'),
    ),
  );
}
