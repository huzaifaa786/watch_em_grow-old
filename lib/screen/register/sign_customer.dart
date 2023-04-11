import 'package:flutter/material.dart';
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
                   TopBar(),
                    SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Watch Em Grow For Customers',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Create an account or login to manage your order and rent ",
                      style: TextStyle(color: hintText, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    InputField(
                      hint: 'Enter your email',
                      type: TextInputType.emailAddress,
                    ),
                   
                    const SizedBox(
                      height: 20,
                    ),
                     Center(
                        child: LargeButton(
                      title: 'Continue',
                      sreenRatio: 0.9,
                      onPressed: () {},
                      color: themeColor,
                      textcolor: white,
                      buttonWidth: 0.95,
                    )),
                    SizedBox(height: 10,),
                    Center(child: Text('________ OR ________',style: TextStyle(fontSize: 20,color:Colors.grey),)),
                    SizedBox(height: 10,),
                    GoogleButton(title: 'Continue With Google', onPressed: (){},
                    textcolor: primaryColor,
                    color: white,
                    ),
                    SizedBox(height: 20,),
                    GoogleButton(title: 'Continue With Apple', onPressed: (){},
                    textcolor: primaryColor,
                    color: white,
                    icon: 'assets/images/apple.png',
                    ),
                    SizedBox(height: 100,),
                    Center(child: Text('LOGO HERE',style: TextStyle(fontSize: 30),))
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
