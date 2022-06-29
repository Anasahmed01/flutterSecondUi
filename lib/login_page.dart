import 'package:abcabcabc/home_page.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(0.100),
            child: Image(
              image: AssetImage('assets/images/Group.png'),
              height: 660,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 350,
              height: 60,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(),
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        // ignore: avoid_print
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Please enter your Mobile No.';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              height: 60,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF4D5DFA)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 29, 9, 139),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: buttonText,
              ),
            ),
          ),
          underButtonText,
          underButtonText2,
        ],
      ),
    );
  }
}

var backgroundColor = const Color(0xff181A20);
var baseColor = const Color(0xff4D5DFA);
var buttonText = const Text('Verify');
var underButtonText = const Text(
  'Your personal details are safe with us ',
  style: TextStyle(color: Color(0xff7C82BA)),
);
var underButtonText2 = const Text(
  'Read our Privacy Policy and Terms and Conditions',
  style: TextStyle(color: Color(0xff7C82BA)),
);
