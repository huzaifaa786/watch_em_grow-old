import 'package:flutter/material.dart';
import 'package:watch_em_grow/screen/register/register_screen.dart';
import 'package:watch_em_grow/static/checkbox.dart';
import 'package:watch_em_grow/static/google_button.dart';
import 'package:watch_em_grow/static/input_field.dart';
import 'package:watch_em_grow/static/input_field_pass.dart';
import 'package:watch_em_grow/static/input_field_phone.dart';
import 'package:watch_em_grow/static/large_button.dart';
import 'package:watch_em_grow/static/notification_checkbox.dart';
import 'package:watch_em_grow/static/top_bar.dart';
import 'package:watch_em_grow/values/colors.dart';

class CustomerRegisterScreen extends StatefulWidget {
  const CustomerRegisterScreen({Key? key}) : super(key: key);

  @override
  State<CustomerRegisterScreen> createState() => _CustomerRegisterScreenState();
}

class _CustomerRegisterScreenState extends State<CustomerRegisterScreen> {
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
                    // TopBar(),
                    SizedBox(
                      height:60,
                    ),
                    const Text(
                      'Watch Em Grow For Customers',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30.0,right: 30.0),
                      child: const Text(
                        "Create an account or login to join our community and list your child's wardrobs for customers and to rent",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: hintText, fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InputField(
                      hint: 'Enter your email',
                      type: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 10,),
                     Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: textGrey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('admin@mail.com')),
                    ),
                    Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: textGrey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('@gmail.com')),
                    ),
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: textGrey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('@hotmail')),
                    ),
                   
                  ],
                ),
             
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: LargeButton(
                      title: 'Continue',
                      sreenRatio: 0.9,
                      color: themeColor,
                      textcolor: white,
                      buttonWidth: 0.95,
                       onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        );
                      },
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      '________ OR ________',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    GoogleButton(
                      title: 'Continue With Google',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        );
                      },
                      textcolor: primaryColor,
                      color: white,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GoogleButton(
                      title: 'Continue With Apple',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        );
                      },
                      textcolor: primaryColor,
                      color: white,
                      icon: 'assets/images/apple.png',
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                        child: Text(
                      'LOGO HERE',
                      style: TextStyle(fontSize: 30),
                    ))
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
