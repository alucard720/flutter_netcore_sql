import 'package:flutter/material.dart';

import '../utils/coderefactors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 13),
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    customtext(
                        txt: "Login Now",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
