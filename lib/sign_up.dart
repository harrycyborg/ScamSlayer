import 'package:flutter/material.dart';
import 'package:scamslayer/otp.dart';

class ScreenSignup extends StatelessWidget {
  const ScreenSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff22263E),
      body: Stack(
        children: [
        Positioned(
        top: -30,
        left: -30,
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF4942CE),
          ),
          child: const Center(
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize:21.4 ,
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Create New',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 40.0,
                            color: Colors.white,
                        ),
                      ),
                      Text(
                        'Account',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 40.0,
                            color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        SizedBox(
          height: 50,
          width: 250,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blueGrey,
                labelText: 'Name',
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.blueAccent),

                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),


            SizedBox(
              height: 50,
              width: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey,
                    labelText: 'Email or Phone no',
                    labelStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.blueAccent),

                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),


            SizedBox(
              height: 50,
              width: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey,
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.blueAccent),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(bottom:80.0),
              child: Container(
                alignment: Alignment.bottomCenter,
                //padding: EdgeInsets.only(left: 16.0,right: 16.0),
                child: SizedBox(
                  width: 235.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Screenotp(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xff4942CE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
          ),
            ),

          ],
        ),
      ),
      ],
    ),
    );
  }


}
