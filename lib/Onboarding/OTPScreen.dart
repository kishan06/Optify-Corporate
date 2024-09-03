import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:optifii_Corporate/routes/route_name.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final TextEditingController _otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: CustomButton(
            text: 'Verify',
            ontap: () {
              Get.toNamed(RouteName.mainscreen);
            },
          )),
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
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Please Enter verification code";
                    } else if (value != null && value.length < 4) {
                      return "OTP length should be at least 4";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    fieldWidth: 70,
                    activeFillColor: Colors.transparent,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _otpController,
                  onCompleted: (v) {},
                  onChanged: (value) {
                    setState(() {
                      // currentText = value;
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
