
import 'package:flutter/material.dart';
import 'package:watch_em_grow/static/input_field.dart';
import 'package:watch_em_grow/static/input_field_pass.dart';
import 'package:watch_em_grow/static/input_field_phone.dart';
import 'package:watch_em_grow/static/large_button.dart';
import 'package:watch_em_grow/values/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _obscureText = true;
  bool checkboxval = false;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  _togglecheckbox() {
    setState(() {
      checkboxval = !checkboxval;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
          child: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: hintText),
                    shape: BoxShape.circle,
                  ),
                  height: 115,
                  width: 115,
                  child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/user1.png"),
                      ),
                      Positioned(
                          bottom: 0,
                          right: -25,
                          child: RawMaterialButton(
                            onPressed: () {},
                            elevation: 2.0,
                            fillColor: Colors.green,
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: white,
                            ),
                            padding: EdgeInsets.all(6.0),
                            shape: CircleBorder(),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
             Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     
                      const Text(
                        'Name',
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      InputField(
                        hint: 'Enter your name',
                        type: TextInputType.name,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Email',
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      InputField(
                        hint: 'user@mail.com',
                        type: TextInputType.emailAddress,
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
                        height: 20,
                      ),
                       Center(
                          child: LargeButton(
                        title: 'Update Profile',
                        sreenRatio: 0.9,
                        onPressed: () {},
                        color: themeColor,
                        textcolor: white,
                        buttonWidth: 0.95,
                      )),
                    
                    ],
                  ),
               
            ],
          ),
        ),
      )),
    );
  }
}
