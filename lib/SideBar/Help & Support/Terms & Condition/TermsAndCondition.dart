import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: CommonAppbar(titleTxt: 'Terms & Condition'),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: text20w400c373434(
                    'Lorem ipsum dolor sit amet, consecture consectetur adipiscing elit, sed do euio eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulla ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure \n dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla velit pariatur. Excepteur sint occaecat velit cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla velit pariatur. Excepteur sint occaecat velit cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'))
          ],
        ),
      ),
    );
  }
}
