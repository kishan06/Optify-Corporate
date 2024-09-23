// ignore_for_file: file_names

import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:remove_emoji_input_formatter/remove_emoji_input_formatter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isValidPhoneNumber(String phoneNumber) {
    final RegExp phoneNumberExpression = RegExp(r"^0{10}$");
    return !phoneNumberExpression.hasMatch(phoneNumber);
  }

  final TextEditingController numberController = TextEditingController();
  String? validationError;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 28),
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: _formKey, // Wrap with Form to manage validation
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/png/logo-sm.png',
                      height: 41,
                      width: 142,
                    ),
                    text12w400c3725EA('CORPORATE'),
                    const SizedBox(height: 20),
                    text28w600cblack('Sign In to OptiFii corporate'),
                    SizedBox(height: 10.h),
                    text16w400c585858center(
                        "Welcome to OptiFii, it's time to Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                    SizedBox(height: 50.h),
                    SizedBox(
                      width: double.infinity,
                      child: text18w400c848484('Phone Number'),
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      child: Stack(
                        children: [
                          const Positioned(
                            top: 13,
                            left: 15,
                            child: Row(
                              children: [
                                Text(
                                  '+91',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            cursorColor: const Color(0xff000000),
                            enableInteractiveSelection: false,
                            controller: numberController,
                            textCapitalization: TextCapitalization.none,
                            decoration: InputDecoration(
                              hintStyle: const TextStyle(
                                color: Color(0xffCDCDCD),
                                fontSize: 14,
                                fontFamily: "Helvetica",
                                fontWeight: FontWeight.w400,
                              ),
                              hintText: "Enter your phone number",
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffE0E0E0)), // Default border
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)), // Rounded corners
                              ),
                              contentPadding: const EdgeInsets.only(
                                  left: 50, top: 10, right: 10, bottom: 10),
                              errorText:
                                  validationError, // Show error message if any
                            ),
                            style: const TextStyle(
                              color: Color(0xff000000),
                            ),
                            keyboardType: TextInputType.phone,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10),
                              RemoveEmojiInputFormatter(),
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9]')),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50.h),
                    CustomButton(
                      text: "Send OTP",
                      ontap: () {
                        String phoneNumber = numberController.text;

                        setState(() {
                          if (phoneNumber.isEmpty) {
                            validationError = 'Enter your phone number';
                          } else if (!RegExp(r'^(?:[+0]9)?[0-9]{10}$')
                              .hasMatch(phoneNumber)) {
                            validationError = 'Enter a valid phone number';
                          } else {
                            validationError = null;
                            Get.toNamed(RouteName.otpScreen);
                          }
                        });
                      },
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 150,
                          child: Divider(
                            color: Color(0xFFCFCFCF),
                            thickness: 1,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                        text16w400c585858('or'),
                        const SizedBox(
                          width: 150,
                          child: Divider(
                            color: Color(0xFFCFCFCF),
                            thickness: 1,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(
                      onTap: () {
                        // Handle "Continue with Email" action
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50.h,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFF6F6F6),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFF6F6F6),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              const Icon(Icons.mail_outlined),
                              SizedBox(width: 50.w),
                              Text(
                                'Continue with Email',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
