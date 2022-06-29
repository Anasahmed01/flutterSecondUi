import 'package:abcabcabc/h_slider1.dart';
import 'package:abcabcabc/h_slider2.dart';
import 'package:abcabcabc/h_slider3.dart';
import 'package:abcabcabc/h_slider4.dart';
import 'package:abcabcabc/login_page.dart';
import 'package:abcabcabc/notification.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          drawer: SizedBox(
            width: MediaQuery.of(context).size.width * 1.9,
            child: Drawer(
              backgroundColor: backgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    UserAccountsDrawerHeader(
                      decoration: const BoxDecoration(
                        color: Color(0xff1F222A),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      accountEmail: const Text(
                        'anasahmedyt321@gmail.com',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      accountName: const Text(
                        'Anas Ahmed',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      currentAccountPicture: drawerProfileImage(),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff1F222A),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          drawerListTile(
                            const Icon(
                              Icons.turned_in_not,
                              color: Colors.grey,
                            ),
                            'All Transactions',
                            const Icon(
                              Icons.keyboard_arrow_right_rounded,
                              size: 40,
                            ),
                          ),
                          drawerListTile(
                            const Icon(
                              Icons.info_outline,
                              color: Colors.grey,
                            ),
                            'Pending Transaction',
                            const Icon(
                              Icons.keyboard_arrow_right_rounded,
                              size: 40,
                            ),
                          ),
                          drawerListTile(
                            const Icon(
                              Icons.watch_later_outlined,
                              color: Colors.grey,
                            ),
                            'Refund status',
                            const Icon(
                              Icons.keyboard_arrow_right_rounded,
                              size: 40,
                            ),
                          ),
                          drawerListTile(
                            const Icon(
                              Icons.nearby_error_outlined,
                              color: Colors.grey,
                            ),
                            'Raise an issue',
                            const Icon(
                              Icons.keyboard_arrow_right_rounded,
                              size: 40,
                            ),
                          ),
                          drawerListTile(
                            const Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            ),
                            'Help and support',
                            const Icon(
                              Icons.keyboard_arrow_right_rounded,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff1F222A),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            drawerListTile(
                              const Icon(
                                Icons.info_outline_rounded,
                                color: Colors.grey,
                              ),
                              'About us',
                              const Icon(
                                Icons.keyboard_arrow_right_rounded,
                                size: 40,
                              ),
                            ),
                            drawerListTile(
                              const Icon(
                                Icons.watch_later_outlined,
                                color: Colors.grey,
                              ),
                              'Tearms and Conditions',
                              const Icon(
                                Icons.keyboard_arrow_right_rounded,
                                size: 40,
                              ),
                            ),
                            drawerListTile(
                              const Icon(
                                Icons.feedback_outlined,
                                color: Colors.grey,
                              ),
                              'Feedback',
                              const Icon(
                                Icons.keyboard_arrow_right_rounded,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: Builder(
              builder: (context) => lastRoundContainer(
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: const Image(
                      image: AssetImage('assets/images/dp6.png'),
                    ),
                  ),
                ),
              ),
            ),
            title: appbarTextField(Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: IconButton(
                icon: const Icon(
                  Icons.circle_notifications_sharp,
                  color: Color(0xff343645),
                  size: 50,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NotiFy()),
                  );
                },
              ),
            )),
            backgroundColor: const Color(0xff1F222A),
            bottom: TabBar(
              labelColor: homePageBackgroundColor,
              tabs: [
                Tab(child: tabslider1),
                Tab(child: tabslider2),
                Tab(child: tabslider3),
                Tab(child: tabslider4),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Hslider1(),
              Hslider2(),
              Hslider3(),
              Hslider4(),
            ],
          ),
        ),
      ),
    );
  }
}

var tabslider1 = const Text(
  'Home',
  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
);
var tabslider2 = const Text(
  'Balance',
  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
);
var tabslider3 = const Text(
  'Offers',
  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
);
var tabslider4 = const Text(
  'Rewards',
  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
);
var homePageBackgroundColor = const Color(0xffB8B8B8);

Widget appbarTextField(appBarTextfieldIcon) {
  return Row(
    children: [
      SizedBox(
        width: 250,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
          ),
          child: TextField(
            style: const TextStyle(
              color: Color(0xffB0BEC5),
            ),
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                size: 35,
              ),
              fillColor: const Color(0xff343645),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.0),
              ),
              hintText: 'Search Users,ID’s etc',
              hintStyle: const TextStyle(
                color: Color(0xffB0BEC5),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: appBarTextfieldIcon,
      ),
    ],
  );
}

Widget drawerProfileImage() {
  return const Image(
    image: AssetImage(
      'assets/images/dp6.png',
    ),
  );
}

Widget drawerListTile(icon1, String title, icon2) {
  return ListTile(
    title: Column(
      children: [
        Row(
          children: [
            icon1,
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                title,
                style: const TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
          ],
        ),
      ],
    ),
    trailing: icon2,
    iconColor: Colors.grey,
  );
}
