import 'package:flutter/material.dart';
import 'package:my_network_appn/Screens/login/signup_screen.dart';
import 'package:my_network_appn/Shared/themes/text_styles.dart';

import '../../Shared/themes/colors.dart';
import '../../Shared/widgets/action_button.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  var email = TextEditingController();

  var password = TextEditingController();

  var formkey = GlobalKey<FormState>();

  var passwordNode = FocusNode();

  bool isHiden = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Login',
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Email Text
                  TextFormField(
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).requestFocus(passwordNode);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email Can't Be Empty";
                      }
                      return null;
                    },
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: orange,
                    style: title1,
                    decoration: InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: white,
                          width: 2,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: lightRed,
                          width: 2,
                        ),
                      ),
                      label: Text("Your Email", style: TextStyle(color: gray)),
                      //hintText: "Enter The Phone Number",
                      hintStyle: title1.merge(TextStyle(color: gray)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: white, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: gray,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Password Text
                  StatefulBuilder(
                    builder: (context, setState) => TextFormField(
                      focusNode: passwordNode,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password Can't Be Empty";
                        }
                        return null;
                      },
                      controller: password,
                      keyboardType: TextInputType.visiblePassword,
                      cursorColor: orange,
                      style: title1,
                      obscureText: isHiden,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                              isHiden == true ? Icons.lock : Icons.lock_open),
                          onPressed: () {
                            if (isHiden == true) {
                              isHiden = false;
                            } else if (isHiden == false) {
                              isHiden = true;
                            }
                            setState(() {});
                          },
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: white,
                            width: 2,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: lightRed,
                            width: 2,
                          ),
                        ),
                        label: Text("Your Password",
                            style: TextStyle(color: gray)),
                        //hintText: "Enter The Phone Number",
                        hintStyle: title1.merge(TextStyle(color: gray)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: white, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: gray,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ActionButton(
                    textButton: 'Login',
                    onClicked: () {
                      if (formkey.currentState!.validate()) {
                        print("==================");
                        print("Email : --> ${email.text}");
                        print("==================");
                        print("Email : --> ${password.text}");
                        print("==================");
                      }
                    },
                    bottonWidth: double.infinity,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {},
                        child: Text('Forget my password',
                            style: title2.merge(TextStyle(color: gray)))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ActionButton(
                      textButton: 'Login with google',
                      onClicked: () {},
                      bottonWidth: double.infinity),
                  SizedBox(
                    height: 20,
                  ),
                  ActionButton(
                      textButton: 'Login with facebook',
                      onClicked: () {},
                      bottonWidth: double.infinity),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        },
                        child: Text("Don't have an account",
                            style: title2.merge(TextStyle(color: gray)))),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
