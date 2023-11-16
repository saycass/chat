import 'package:flutter/material.dart';
import 'package:chat/ui/theme/fonts/fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;

    return  Padding(
      padding:  EdgeInsets.only(
        top: screenSize.height * 0.1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const FirstTitle("Welcome to charts"),
          Padding(
            padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: screenSize.height * 0.6,
                width: screenSize.width *0.9,
                child: const Image(
                  image: AssetImage (
                    "assets/images/onboarding.jpg"
                  ),
                ),
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                      child: const Text('Create a account on the charts')
              ),
                ),
                ),
            ],
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                  child: const Text('Login')
              ),
            ),
          ),
        ],
      ),
    );
  }
}


