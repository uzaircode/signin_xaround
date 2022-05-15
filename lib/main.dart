import 'package:flutter/material.dart';
import 'package:the_apple_sign_in/apple_sign_in_button.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SignIn(),
    ),
  );
}

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment : MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  color:Colors.red,
                  child: RichText(
                    text: const TextSpan(
                      text: 'x',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'around',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.lightBlue,
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  color:Colors.yellow,
                  padding: const EdgeInsets.all(20),
                  child: const Text(
                    "Discover what's happening in various universities right now.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'Avenir',
                    ),
                  ),
                ),
              ),
              Container(
                color:Colors.green,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    const AppleSignInButton(
                      type: ButtonType.continueButton,
                      buttonText: "Sign in with apple",
                    ),
                    Row(
                      children: [
                        Expanded(
                          child:
                          SignInButton(
                            Buttons.GoogleDark,
                            text: "Sign up with Google",
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "By using around, you agree to our User Agreement and Community Guidelines. There's no tolerance for objectionable content and abusive users.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
