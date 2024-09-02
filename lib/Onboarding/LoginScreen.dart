// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optifii_employee/Utils/CommonWidgets/CommonTextFormField.dart';
import 'package:optifii_employee/Utils/CommonWidgets/Custombutton.dart';
import 'package:optifii_employee/Utils/CommonWidgets/Text.dart';
import 'package:optifii_employee/Utils/Helpers/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 28),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/png/logo-sm.png',
                    height: 41,
                    width: 142,
                  ),
                  text12w400c3725EA('CORPORATE'),
                  const SizedBox(height: 20),
                  text28w400cblack('Sign In to OptiFii corporate'),
                  SizedBox(height: 10.h),
                  text16w400c585858center(
                      "Welcome to OptiFii, it's time to Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                  SizedBox(height: 50.h),
                  SizedBox(
                      width: double.infinity,
                      child: text18w400c848484('Phone Number')),
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
                              child: CustomTextFormField(
                                texttype: TextInputType.number,
                                textEditingController: numberController,
                                hintText: 'Enter your mobile number',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 204),

                  CustomButton(text: "Continue"),
                  SizedBox(height: 40.h),

                  // Terms & Conditions text
                  GestureDetector(
                    onTap: () {
                      // Handle Terms & Conditions tap
                    },
                    child: const Center(
                      child: Text(
                        'Terms & Conditions to use crm app',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 14,
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
    );
  }
}
