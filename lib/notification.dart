import 'package:abcabcabc/home_page.dart';
import 'package:abcabcabc/login_page.dart';
import 'package:flutter/material.dart';

class NotiFy extends StatelessWidget {
  const NotiFy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xff1F222A),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 380,
            width: MediaQuery.of(context).size.width * 1.0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  notificationList(
                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget notificationList(navigateIconHomePage) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Notifications',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          navigateIconHomePage,
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: noftifyListView('Recharge Completed ',
            'Your last recharge on 9847229989 of 199 rs has been succesfully completed.                                            May 20 - 12:32 Pm'),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: noftifyListView('Money Recived ',
            'Your account ***21445 has been recieved an amount of Rs 1000 using upi transaction.                                                         May 20 - 12:45 Pm'),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: noftifyListView('Offer Unlocked',
            'You have an unlockd offer avilable go to offer section or tap to view the offer.                                           May 20 - 2:45 Pm'),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Notifications',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
    ],
  );
}

Widget noftifyListView(String text, String subtital) {
  return ListTile(
    title: Text(
      text,
      style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
    ),
    subtitle: Text(
      subtital,
      style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
    ),
    trailing: const Icon(
      Icons.circle_notifications_rounded,
      color: Color(0xff343645),
      size: 40,
    ),
  );
}
