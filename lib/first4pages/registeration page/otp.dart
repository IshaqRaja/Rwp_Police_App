import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);
  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  _textfieldOTP({required bool first, last}) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              //or value.length == 0 in the place of value.isEmpty &&
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 2, color: Colors.black12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 2, color: Colors.purple),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/img.png", width: 300)),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Verification",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Enter your code number",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black38,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    Container(
                      padding: const EdgeInsets.all(28),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _textfieldOTP(first: false, last: false),
                              _textfieldOTP(first: false, last: false),
                              _textfieldOTP(first: false, last: false),
                              _textfieldOTP(first: false, last: true),
                            ],
                          ),

                          // TextFormField(
                          //   keyboardType: TextInputType.number,
                          //   style: const TextStyle(
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 18,
                          //   ),
                          //   decoration: InputDecoration(
                          //       enabledBorder: OutlineInputBorder(
                          //         borderSide: const BorderSide(color: Colors.black12),
                          //         borderRadius: BorderRadius.circular(10),
                          //       ),
                          //       focusedBorder: OutlineInputBorder(
                          //         borderSide: const BorderSide(color: Colors.black12),
                          //         borderRadius: BorderRadius.circular(10),
                          //       ),
                          //       // prefix: const Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                          //       //   child: Text(
                          //       //     "(+92)",
                          //       //     style: TextStyle(
                          //       //         fontSize: 18, fontWeight: FontWeight.bold),
                          //       //   ),
                          //       // ),
                          //       // suffixIcon: const Icon(
                          //       //   Icons.check_circle,
                          //       //   color: Colors.green,
                          //       //   size: 32,
                          //       // )
                          //   ),
                          // ),
                          const SizedBox(
                            height: 22,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.of(context).push(
                                //   MaterialPageRoute(builder: (context) => const OTP()),
                                // );
                              },
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.purple),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24)),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(14),
                                child: Text(
                                  "Verify",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Text(
                      "Didn't receive any code?",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
