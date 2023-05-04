import 'package:flutter/material.dart';
import 'package:watch_em_grow/screen/profile/profile_screen.dart';
import 'package:watch_em_grow/static/bottom_bar.dart';
import 'package:watch_em_grow/static/checkbox.dart';
import 'package:watch_em_grow/static/input_field.dart';
import 'package:watch_em_grow/static/input_field_pass.dart';
import 'package:watch_em_grow/static/input_field_phone.dart';
import 'package:watch_em_grow/static/large_button.dart';
import 'package:watch_em_grow/static/notification_checkbox.dart';
import 'package:watch_em_grow/values/colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscureText = true;
  bool checkboxval = false;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  _togglecheckbox() {
    // print(checkboxval);
    setState(() {
      checkboxval = !checkboxval;
    });
    // authController.termsCheckBoxValue.value = checkboxval;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      var screenWidth = MediaQuery.of(context).size.width;
      return Row(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                width: screenWidth,
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  //  TopBar(),
                    SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Create a customer acccount',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "You're are almost there!Create your new account for Watch Em Grow by completing these detail",
                      style: TextStyle(color: hintText, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'First Name',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    InputField(
                      hint: 'Enter your first name',
                      type: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Last Name',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    InputField(
                      hint: 'Enter your last name',
                      type: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  
                    InputFieldPassword(
                      toggle: _toggle,
                      obscure: _obscureText,
                      hint: 'secret1234567',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Mobile Number',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    InputFieldPhone(
                      hint: '+1800......',
                    ),
                   
                    const SizedBox(
                      height: 10,
                    ),
                    MCheckBox(
                        checkbox: checkboxval,
                        onchanged: () => _togglecheckbox()),
                    const SizedBox(
                      height: 10,
                    ),

                      NCheckBox(
                        checkbox: checkboxval,
                        onchanged: () => _togglecheckbox()),
                    const SizedBox(
                      height: 20,
                    ),
                     Center(
                        child: LargeButton(
                      title: 'Create Account',
                      sreenRatio: 0.9,
                      color: themeColor,
                      textcolor: white,
                      buttonWidth: 0.95,
                       onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomBar()),
                        );
                      },
                    )),
                    // Center(
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       const Text(
                    //         'Have Account?   ',
                    //         style: TextStyle(fontSize: 16),
                    //       ),
                    //       GestureDetector(
                    //         onTap: () {
                    //           Navigator.pushNamed(context, 'login');
                    //         },
                    //         child: const Text(
                    //           'Login Now',
                    //           style: TextStyle(
                    //               fontWeight: FontWeight.bold, fontSize: 16),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                  ],
                ),
             
              ),
            ),
          ),
        ],
      );
    }));
  }
}
