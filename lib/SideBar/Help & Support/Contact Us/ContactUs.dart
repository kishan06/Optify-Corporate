import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTextFormField.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: CommonAppbar(titleTxt: 'Contact Us'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/images/png/Profile photo.png',
                          ),
                          height: 257.h,
                          width: 257.w,
                        ),
                        sizedBoxHeight(24.h),
                        text20w400c090909('How can we help you?'),
                        sizedBoxHeight(4.h),
                        text18w400c686868(
                            'We are here to help you, so, please get in'),
                        text18w400c686868('touch with us.'),
                      ],
                    )
                  ],
                ),
                sizedBoxHeight(40.h),
                // Subject field
                CustomTextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your subject';
                    }
                    return null;
                  },
                  hintText: 'Subject',
                ),
                sizedBoxHeight(18.h),
                // Email field with validation
                CustomTextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    // Check for valid email format
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                        .hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                  hintText: 'E-mail address',
                ),

                sizedBoxHeight(18.h),
                // Message field
                CustomTextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your message';
                    }
                    return null;
                  },
                  maxlines: 5,
                  hintText: 'Type your message',
                ),
                sizedBoxHeight(40.h),
                // Send button
                CustomButton(
                    ontap: () {
                      if (_formKey.currentState!.validate()) {
                        print('Form validated successfully');
                        // Add form submission logic here
                      }
                    },
                    text: 'Send'),
                sizedBoxHeight(20.h), // Extra space after button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
