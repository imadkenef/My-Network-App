import 'package:flutter/material.dart';
import 'package:my_network_appn/Screens/login/login_screen.dart';

import '../../Shared/themes/colors.dart';
import '../../Shared/themes/text_styles.dart';
import '../../Shared/widgets/action_button.dart';

class SignUpScreen extends StatelessWidget {
  var email = TextEditingController();
  var password = TextEditingController();
  var re_password = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var passwordNode = FocusNode();
  var re_passwordNode = FocusNode();
  bool isHiden = true;
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign up"),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  // Email Text Fields
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
                  // Password Text Fields
                  StatefulBuilder(
                    builder: (context, setState) => TextFormField(
                      focusNode: passwordNode,
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(re_passwordNode);
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password Can't Be Empty";
                        }

                        return null;
                      },
                      controller: password,
                      keyboardType: TextInputType.emailAddress,
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
                    height: 20,
                  ),
                  // Re Password Text Fields
                  StatefulBuilder(
                    builder: (context, setState) => TextFormField(
                      focusNode: re_passwordNode,
                      onFieldSubmitted: (value) {
                        // FocusScope.of(context).requestFocus(passwordNode);
                      },
                      validator: (value) {
                        if (password.text.isEmpty) {
                          return "Password Can't Be Empty";
                        }
                        if (value != password) {
                          return "Password  doesn't match";
                        }
                        return null;
                      },
                      controller: re_password,
                      keyboardType: TextInputType.emailAddress,
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
                        label: Text("Re Enter Password",
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
                    height: 10,
                  ),
                  ActionButton(
                    textButton: 'Sign up',
                    onClicked: () {
                      if (formkey.currentState!.validate()) {
                        print("==================");
                        print("Email : --> ${email.text}");
                        print("==================");
                        print("Email : --> ${password.text}");
                        print("==================");
                        print("Email : --> ${re_password}");
                        print("==================");
                      }
                    },
                    bottonWidth: double.infinity,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'OR',
                    style: h3.merge(TextStyle(color: gray)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ActionButton(
                      textButton: 'Sign up with google',
                      onClicked: () {},
                      bottonWidth: double.infinity),
                  SizedBox(
                    height: 20,
                  ),
                  ActionButton(
                      textButton: 'Sign up with facebook',
                      onClicked: () {},
                      bottonWidth: double.infinity),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LogInScreen()));
                        },
                        child: Text("Already Have an Account",
                            style: title2.merge(TextStyle(color: gray)))),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
