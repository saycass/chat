import 'package:chat/ui/pages/authentication/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat/ui/theme/fonts/fonts.dart';
import 'package:chat/ui/pages/authentication/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const routeLoginToSignUp =  LoginController();

    // const RouteLoginToSignUp routeLoginToSignUp = RouteLoginToSignUp();

    // var routeLoginToSignUp = Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => const SignupScreen()),
    // );

    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FirstTitle("Login"),
            const Image(
              image: AssetImage("assets/images/welcome.jpg"),
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
                child: const Text(" Login"),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              // onPressed: routeLoginToSignUp.onPressed,
              onPressed: () {
                 routeLoginToSignUp;
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const SignupScreen()),
                // );
              },
              child: const Text(
                " Don't have an account? Sing Up.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
