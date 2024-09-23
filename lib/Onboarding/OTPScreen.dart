import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final TextEditingController _otpController = TextEditingController();
  String? otpValidationError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: CustomButton(
          text: 'Verify',
          ontap: () {
            String otp = _otpController.text;
            setState(() {
              if (otp.isEmpty) {
                otpValidationError = "Please enter the verification code.";
              } else if (otp.length < 4) {
                otpValidationError = "OTP length should be at least 4 digits.";
              } else {
                otpValidationError = null; // No error, proceed
                Get.toNamed(RouteName.mainscreen); // Navigate to main screen
              }
            });
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            sizedBoxHeight(50.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text28w600cblack('Enter OTP'),
                text16w400c585858(
                    'Enter the verification code that we sent to 8457754115'),
                SizedBox(height: 100.h),
                PinCodeTextField(
                  // validator: (value) {
                  //   if (value != null && value.isEmpty) {
                  //     return "Please enter the verification code.";
                  //   } else if (value != null && value.length < 4) {
                  //     return "OTP length should be at least 4 digits.";
                  //   }
                  //   return null;
                  // },
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    inactiveFillColor: Colors.transparent,
                    inactiveColor: Colors.black,
                    activeColor: const Color(0xFF434A53),
                    selectedColor: Colors.black,
                    selectedFillColor: Colors.transparent,
                    shape: PinCodeFieldShape.underline,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 70,
                    fieldWidth: 50,
                    activeFillColor: Colors.transparent,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _otpController,
                  onCompleted: (v) {},
                  onChanged: (value) {
                    setState(() {
                      otpValidationError = null; // Reset error on change
                    });
                  },
                  cursorColor: Colors.black,
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontFamily: 'Helvetica',
                  ),
                  beforeTextPaste: (text) {
                    return true;
                  },
                  appContext: context,
                ),
                if (otpValidationError != null)
                  Text(
                    otpValidationError!,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14.sp,
                    ),
                  ),
                sizedBoxHeight(20.h),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: text16w400cpurple('Resend OTP'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
