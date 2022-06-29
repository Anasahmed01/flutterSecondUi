import 'package:abcabcabc/home_page.dart';
import 'package:abcabcabc/login_page.dart';
import 'package:flutter/material.dart';

class QrCode extends StatelessWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(right: 10, top: 10, left: 10),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xff1F222A),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width * 1.9,
                height: 370,
                child: Column(
                  children: [
                    qrcode(
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 50,
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
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: const [
                    Text(
                      'Other Options',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: qrButtons(
                  'Your Pay ID                           xyz@524899652',
                  const Icon(
                    Icons.copy,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: qrButtons(
                  'Show bank account details',
                  const Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.grey,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget qrcode(closeIcons) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Recieve Money',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            closeIcons
          ],
        ),
      ),
      const Image(
        image: AssetImage('assets/images/qrcode.png'),
      ),
    ],
  );
}

Widget qrButtons(String text, listIcon) {
  return Container(
    decoration: const BoxDecoration(
      color: Color(0xff343645),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: ListTile(
      title: Text(
        text,
        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      trailing: SizedBox(height: 20, width: 20, child: listIcon),
    ),
  );
}
