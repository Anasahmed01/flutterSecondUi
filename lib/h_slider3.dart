import 'package:abcabcabc/login_page.dart';
import 'package:flutter/material.dart';

class Hslider3 extends StatelessWidget {
  const Hslider3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            offersContainers(
              const Color(0xff242042),
              const Image(
                image: AssetImage('assets/images/group1.png'),
              ),
              'Mobile Recharge Offer',
              'Use Code FIRST20',
              'Get 20 % Instant cashback upto Rs 50',
              'on your firs mobile recharge. T&C apply',
            ),
            offersContainers(
              const Color(0xff242042),
              const Image(
                image: AssetImage('assets/images/group2.png'),
              ),
              'DTH Recharge Offer',
              'Use Code FIRSDTHT20',
              'Get 20 % Instant cashback upto Rs 50',
              'on your first DTH recharge. T&C apply',
            ),
            offersContainers(
              const Color(0xff242042),
              const Image(
                image: AssetImage('assets/images/group3.png'),
              ),
              'Flipcart Shopping Offer',
              '',
              'Shop on Flipcart using our payment system',
              'to get upto 50% cashback . T&C appply',
            ),
            offersContainers(
              const Color(0xff242042),
              const Image(
                image: AssetImage('assets/images/group4.png'),
              ),
              'Money Transfer Offer',
              'Get a scratch card ',
              'with assuerd casbck and coupons',
              ' on Money Transfer of Rs 500 or more . T&C apply',
            ),
            offersContainers(
              const Color(0xff242042),
              const Image(
                image: AssetImage('assets/images/group5.png'),
              ),
              'Rs 50 Off on Flights',
              'Get instant discount on ',
              'flat 50 Rs on Flight ticket booking. T&C apply',
              'Go to offer page',
            ),
          ],
        ),
      ),
    );
  }
}

Widget offersContainers(
  Color color,
  offerContainerImage,
  String text1,
  String text2,
  String text3,
  String text4,
) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 101,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          offerContainerImage,
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                text1,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                text2,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                text3,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                text4,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
