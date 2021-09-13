import 'package:chat/components/primary_button.dart';
import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

class SignInOdSignUpScreen extends StatelessWidget {
  const SignInOdSignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset(
              'assets/images/Logo_dark.png',
              height: 142,
            ),
            Spacer(),
            PrimaryButton(
              text: 'Sign In',
              press: () {},
            ),
            SizedBox(height: kDefaultPadding * .5),
            PrimaryButton(
              color: Theme.of(context).colorScheme.secondary,
              text: 'Sign In',
              press: () {},
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
