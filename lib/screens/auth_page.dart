import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/login_form.dart';
import 'package:flutter_application_1/components/social_button.dart';
import 'package:flutter_application_1/utils/config.dart';
import 'package:flutter_application_1/utils/text.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              AppText.enText[
                  'welcome_text']!, // This requires runtime lookup, so Scaffold can't be `const`
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Config.spaceSmall,
            Text(
              AppText.enText[
                  'signIn_text']!, // This requires runtime lookup, so Scaffold can't be `const`
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Config.spaceSmall,
            const LoginForm(),
            Config.spaceSmall,
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppText.enText['forgot_password']!,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
            ),
            const Spacer(),
            Center(
              child: Text(
                AppText.enText[
                    'social_login']!, // This requires runtime lookup, so Scaffold can't be `const`
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
            ),
            Config.spaceSmall,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SocialButton(social: 'facebook'),
                SocialButton(social: 'google')
              ],
            ),
            Config.spaceSmall,
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
