import 'package:abcabcabc/login_page.dart';
import 'package:flutter/material.dart';

class Hslider1 extends StatelessWidget {
  const Hslider1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  hsliderText,
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 150.0,
                    ),
                    child: buttonMore(),
                  ),
                ],
              ),
              Row(
                children: [
                  itemContainer("Scan QR Code", const Color(0xff5B2E62)),
                  Padding(
                    padding: const EdgeInsets.only(left: 48.0),
                    child: itemContainer(
                      "Scan QR Code",
                      const Color(0xff2E624C),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child:
                        itemContainer("Scan QR Code", const Color(0xff5E622E)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 48.0, top: 10.0),
                    child: itemContainer(
                      "Scan QR Code",
                      const Color(0xff622E3A),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  hsliderText2,
                  Padding(
                    padding: const EdgeInsets.only(left: 62.0, top: 10.0),
                    child: buttonMore(),
                  ),
                ],
              ),
              Row(
                children: [
                  itemContainer("Scan QR Code", const Color(0xff32652A)),
                  Padding(
                    padding: const EdgeInsets.only(left: 48.0),
                    child: itemContainer(
                      "Scan QR Code",
                      const Color(0xff652A5F),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child:
                        itemContainer("Scan QR Code", const Color(0xff652A2A)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 48.0, top: 10.0),
                    child: itemContainer(
                      "Scan QR Code",
                      const Color(0xff2A4065),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: hsliderText3,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    roundedContainer(
                      const Icon(
                        Icons.movie_filter,
                        color: Colors.pink,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: roundedContainer(
                        const Icon(
                          Icons.train,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: roundedContainer(
                        const Icon(
                          Icons.directions_bus_filled_outlined,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: roundedContainer(
                        const Icon(
                          Icons.flight_outlined,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: roundedContainer(
                        const Icon(
                          Icons.electric_car_outlined,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 9.0, top: 4.0),
                    child: roundedContainerText('Movies'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0, top: 4.0),
                    child: roundedContainerText('Trains'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45.0, top: 4.0),
                    child: roundedContainerText('Bus'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 4.0),
                    child: roundedContainerText('Flights'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45.0, top: 4.0),
                    child: roundedContainerText('Car'),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: hsliderText4,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    roundedContainer(
                      const Icon(
                        Icons.directions_bus_filled_outlined,
                        color: Colors.pink,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: roundedContainer(
                        const Icon(
                          Icons.flight_outlined,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: roundedContainer(
                        const Icon(
                          Icons.favorite_border,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: roundedContainer(
                        const Icon(
                          Icons.local_car_wash_outlined,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 4.0),
                    child: roundedContainerText('Invest'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 37.0, top: 4.0),
                    child: roundedContainerText('Loans'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 4.0),
                    child: roundedContainerText('Insurance'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, top: 4),
                    child: roundedContainerText('Fastag'),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: hsliderText5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0, top: 10.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff08348A)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Recieve Money',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    lastRoundContainer(
                      const Image(
                        image: AssetImage('assets/images/dp2.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: lastRoundContainer(
                        const Image(
                          image: AssetImage('assets/images/dp1.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: lastRoundContainer(
                        const Image(
                          image: AssetImage('assets/images/dp4.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: lastRoundContainer(
                        const Image(
                          image: AssetImage('assets/images/dp5.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: lastRoundContainer(
                        const Image(
                          image: AssetImage('assets/images/dp3.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

var hsliderText = const Text('Money Transfer',
    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20));
var hsliderText2 = const Text('Recharge & Bill Payments',
    style: TextStyle(color: Colors.white, fontSize: 20));
var hsliderText3 = const Text('Ticket Booking',
    style: TextStyle(color: Colors.white, fontSize: 20));
var hsliderText4 = const Text('More Services',
    style: TextStyle(color: Colors.white, fontSize: 20));
var hsliderText5 = const Text('Recent Transactions',
    style: TextStyle(color: Colors.white, fontSize: 20));
var hslidercolor1 = const Color(0xff343645);

Widget buttonMore() {
  return SizedBox(
    width: 89,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(hslidercolor1),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      onPressed: () {},
      child: Row(
        children: const [
          Text(
            'more',
          ),
          Icon(Icons.keyboard_arrow_right_rounded)
        ],
      ),
    ),
  );
}

Widget itemContainer(
  String text,
  Color color,
) {
  return Container(
    height: 43,
    width: 165,
    decoration: BoxDecoration(
      color: color,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    ),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    ),
  );
}

Widget roundedContainer(iconText) {
  return Container(
    height: 60,
    width: 65,
    decoration: const BoxDecoration(
      color: Color(0xff242042),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Center(child: iconText),
  );
}

Widget roundedContainerText(String roundedText) {
  return Text(roundedText,
      style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255), fontSize: 15));
}

Widget lastRoundContainer(lastRoundImage) {
  return SizedBox(
    height: 60,
    width: 59,
    child: lastRoundImage,
  );
}
