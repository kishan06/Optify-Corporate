// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:remove_emoji_input_formatter/remove_emoji_input_formatter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isValidPhoneNumber(String phoneNumber) {
    final RegExp phoneNumberExpression = RegExp(r"^0{10}$");
    return !phoneNumberExpression.hasMatch(phoneNumber);
  }

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
                    text28w600cblack('Sign In to Optifii corporate'),
                    SizedBox(height: 10.h),
                    text16w400c585858center(
                        "Welcome to Optifii, it's time to Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                    SizedBox(height: 50.h),
                    SizedBox(
                      width: double.infinity,
                      child: text18w400c848484('Phone Number'),
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFF6F6F6),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF6F6F6),
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            const Text(
                              '+91',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 10),
                            const VerticalDivider(
                              thickness: 2,
                              indent: 5.5,
                              endIndent: 5.5,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 22),
                                child: TextFormField(
                                  textAlignVertical: TextAlignVertical.center,
                                  cursorColor: const Color(0xff000000),
                                  enableInteractiveSelection: false,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: numberController,
                                  textCapitalization: TextCapitalization.none,
                                  decoration: const InputDecoration(
                                    hintStyle: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontFamily: "Helvetica",
                                        fontWeight: FontWeight.w400),
                                    hintText: "Enter your phone number'",
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 20),
                                  ),
                                  style: const TextStyle(
                                    color: Color(0xffCDCDCD),
                                  ),
                                  keyboardType: TextInputType.phone,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Enter your phone number';
                                    } else if (!RegExp(r'^(?:[+0]9)?[0-9]{10}$')
                                        .hasMatch(value)) {
                                      return 'Enter a valid phone number';
                                    } else if (isValidPhoneNumber(value)) {
                                      return 'Phone number cannot contain 10 zeros';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(10),
                                    RemoveEmojiInputFormatter(),
                                    FilteringTextInputFormatter.allow(
                                        RegExp('[0-9]')),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50.h),
                    CustomButton(
                      text: "Send OTP",
                      ontap: () {
                        Get.toNamed(RouteName.otpScreen);
                      }, // Call the sendOTP function
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
