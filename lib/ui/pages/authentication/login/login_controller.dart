import 'package:flutter/material.dart';
import '../signup/signup_screen.dart';

// class RouteLoginToSignUp {
//   void onPressed() {
//     Navigator.push( context,
//        MaterialPageRoute(builder: (context) => const SignupScreen()),
//     );
//   }
// }




// class RouteLoginToSignUp extends StatefulWidget {
//   const RouteLoginToSignUp({Key? key}) : super(key: key);
//
//   get onPressed => null;
//
//
//   @override
//   State<RouteLoginToSignUp> createState() => _RouteLoginToSignUpState();
// }
//
// class _RouteLoginToSignUpState extends State<RouteLoginToSignUp> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }



// class LoginController extends StatelessWidget {
//   final Function routeLoginToSignUp;
//
//   const LoginController({ Key? key,
//     required this.routeLoginToSignUp,
//   }) : super (key: key);
//
//   @override
//   Widget build(BuildContext context) {
//        var routeLoginToSignUp =
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => const SignupScreen()),
//       );
//       return Container();
//   }
// }

class LoginController extends StatelessWidget {
  const LoginController({ Key? key,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    var routeLoginToSignUp =
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignupScreen()),
    );
    return const LoginController();
  }
}
