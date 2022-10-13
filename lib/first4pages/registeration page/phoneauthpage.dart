import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'fadeindown/fadeindown.dart';

class RegisterWithPhoneNumber extends StatefulWidget {
  const RegisterWithPhoneNumber({Key? key}) : super(key: key);

  @override
  State<RegisterWithPhoneNumber> createState() =>
      _RegisterWithPhoneNumberState();
}

class _RegisterWithPhoneNumberState extends State<RegisterWithPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/img.png', width: 250, fit: BoxFit.cover),
                const SizedBox(height: 50),
                const FadeInDown(
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                FadeInDown(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      "Enter you phone number to continue, we will send you OTP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                FadeInDown(
                    child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xffeeeeee),
                          blurRadius: 10,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black.withOpacity(0.13)),
                  ),
                  child: Stack(
                    children: [
                      InternationalPhoneNumberInput(
                        onInputChanged: (value) {},
                        cursorColor: Colors.black,
                        formatInput: false,
                        selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
                        inputDecoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.only(bottom: 15, left: 0),
                            border: InputBorder.none,
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 16,
                            )),
                        //   selectorTextStyle: const TextStyle(color: Colors.black),
                      ),
                      Positioned(
                          left: 90,
                          top: 8,
                          bottom: 8,
                          child: Container(
                            height: 40,
                            width: 1,
                            color: Colors.black.withOpacity(0.13),
                          ))
                    ],
                  ),
                ),
                ),
                const SizedBox(
                  height: 100,
                ),
                FadeInDown(
                    child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  minWidth: double.infinity,
                  child: const Text(
                    "Request OTP",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
                FadeInDown(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    TextButton(onPressed: () {}, child: const Text("Login"))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
