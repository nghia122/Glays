import 'package:flutter/material.dart';
import 'package:flutter_glays/Screens/font_page.dart';
import '../widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Backgroudimage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 250,
                    child: Center(
                      child: Image.asset('assets/images/GLAYS1-logo.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextInputField(
                          icon: FontAwesomeIcons.solidEnvelope,
                          hint: 'Email',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                        ),
                        PasswordInput(
                          icon: FontAwesomeIcons.lock,
                          hint: 'Password',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.done,
                        ),
                        Text(
                          'Forgot Password?',
                          style: kBodyText,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: 	TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                'Login',
                                style: kBodyText,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                            bottom: BorderSide(color: Colors.white, width: 1),
                          )),
                          child: Text(
                            'CreateNewAccount',
                            style: kBodyText,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}



