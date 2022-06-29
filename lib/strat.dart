import 'package:abcabcabc/login_page.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(130.0),
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          Center(
            child: Column(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF4D5DFA)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 29, 9, 139),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  child: const Text(
                    'INSTANT PAY',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                ),
                const Text(
                  'Your Perfect Payment Partner',
                  style: TextStyle(color: Colors.white),
                ),
                const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                  size: 70,
                )
              ],
            ),
          ),
        ],
      ),
    );

    // Scaffold(
    // //   body: Column(
    // //     mainAxisAlignment: MainAxisAlignment.center,
    // //     children: [
    // //       ListTile(
    // //         title: Text("Bilal"),
    // //         subtitle: Text("Hello"),
    // //         tileColor: Colors.grey,
    // //         leading: CircleAvatar(
    // //           backgroundImage: AssetImage('assets/images/car.jpg'),
    // //         ),
    // //         trailing: Column(
    // //           mainAxisAlignment: MainAxisAlignment.center,
    // //           children: [Text("12:00 AM"), Icon(Icons.check)],
    // //         ),
    // //       ),
    // //       ListTile(
    // //         title: Text("Bilal"),
    // //         subtitle: Text("Hello"),
    // //         tileColor: Colors.grey,
    // //         leading: CircleAvatar(
    // //           radius: 25,
    // //           backgroundImage: AssetImage('assets/images/car1.jpg'),
    // //         ),
    // //         trailing: Column(
    // //           mainAxisAlignment: MainAxisAlignment.center,
    // //           children: [Text("12:00 AM"), Icon(Icons.check)],
    // //         ),
    // //       ),
    // //       ListTile(
    // //         leading: CircleAvatar(
    // //           backgroundImage: AssetImage('assets/images/anas.jpg'),
    // //         ),
    // //         title: Text('Muneeb SMIT'),
    // //         subtitle: Text('ajao'),
    // //         tileColor: Colors.grey,
    // //         hoverColor: Colors.black,
    // //         trailing: Column(
    // //           mainAxisAlignment: MainAxisAlignment.center,
    // //           children: [Text("12:00 AM"), Icon(Icons.check)],
    // //         ),
    // //       )
    // //     ],
    // //   ),
    // // )
    // ;
  }
}
