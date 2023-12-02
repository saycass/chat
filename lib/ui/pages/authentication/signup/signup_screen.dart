import 'package:flutter/material.dart';
import 'package:chat/ui/theme/fonts/fonts.dart';

import '../login/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FirstTitle("Sign Up"),
            const Image(
              image: AssetImage("assets/images/welcome.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_2_outlined),
                  labelText: "Name",
                  contentPadding: const EdgeInsets.symmetric(vertical: 7),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email_outlined),
                    labelText: "Email",
                    contentPadding: const EdgeInsets.symmetric(vertical: 7),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_outline),
                  labelText: "Senha",
                  contentPadding: const EdgeInsets.symmetric(vertical: 7),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 400,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                child: const Text("Create an account"),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  LoginScreen()),
                );
              },
              child: const Text(
                " Already have an account? Sign In.",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 30,
                  icon: const Icon(Icons.facebook),
                  color: Colors.blue,
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 30,
                  icon: const Icon(Icons.facebook),
                  color: Colors.blue,
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 30,
                  icon: const Icon(Icons.facebook),
                  color: Colors.blue,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
