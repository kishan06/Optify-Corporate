import 'package:flutter/material.dart';
import 'package:optifii_Corporate/Utils/CommonWidgets/Text.dart';

class GiftVoucherPage extends StatefulWidget {
  const GiftVoucherPage({super.key});

  @override
  State<GiftVoucherPage> createState() => _GiftVoucherPageState();
}

class _GiftVoucherPageState extends State<GiftVoucherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFFFFFF),
      extendBody: true,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: text12w400c3725EA('GiftVouncher')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
