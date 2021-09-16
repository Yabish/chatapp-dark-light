import 'package:chat/constants.dart';
import 'package:chat/screens/signinOrSignup/signin_or_signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Spacer(flex: 2),
          Image.asset('assets/images/welcome_image.png'),
          Spacer(flex: 3),
          Text(
            'Welcome to our freedom \nmessaging app',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Spacer(flex: 1),
          Opacity(
            opacity: 0.6,
            child: Text(
              'Freedom Talk any person of your \nmother language.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Spacer(flex: 1),
          FittedBox(
            child: TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInOdSignUpScreen(),
                ),
              ),
              child: Row(
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: kDefaultPadding / 4,
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(flex: 1),
        ],
      )),
    );
  }
}
