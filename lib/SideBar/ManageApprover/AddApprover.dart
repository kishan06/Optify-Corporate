// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';

class AddApprovers extends StatefulWidget {
  const AddApprovers({super.key});

  @override
  State<AddApprovers> createState() => _AddApproversState();
}

class _AddApproversState extends State<AddApprovers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(titleTxt: 'Add Approver'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const AddApprover(
                header: 'Reethik thota',
                mail: 'reethikthota@wdipl.com',
                image: 'assets/images/png/Avatar.png',
              ),
              sizedBoxHeight(5),
              const Divider(),
              const AddApprover(
                header: 'Reethik thota',
                mail: 'reethikthota@wdipl.com',
                image: 'assets/images/png/Avatar.png',
              ),
              sizedBoxHeight(5),
              const Divider(),
              const AddApprover(
                header: 'Reethik thota',
                mail: 'reethikthota@wdipl.com',
                image: 'assets/images/png/Avatar.png',
              ),
              sizedBoxHeight(5),
              const Divider(),
              const AddApprover(
                header: 'Reethik thota',
                mail: 'reethikthota@wdipl.com',
                image: 'assets/images/png/Avatar.png',
              ),
              sizedBoxHeight(5),
              const Divider(),
              const AddApprover(
                header: 'Reethik thota',
                mail: 'reethikthota@wdipl.com',
                image: 'assets/images/png/Avatar.png',
              ),
              sizedBoxHeight(5),
              const Divider(),
              const AddApprover(
                header: 'Reethik thota',
                mail: 'reethikthota@wdipl.com',
                image: 'assets/images/png/Avatar.png',
              ),
              sizedBoxHeight(5),
              const Divider(),
              const AddApprover(
                header: 'Reethik thota',
                mail: 'reethikthota@wdipl.com',
                image: 'assets/images/png/Avatar.png',
              ),
              sizedBoxHeight(5),
              const Divider(),
              const AddApprover(
                header: 'Reethik thota',
                mail: 'reethikthota@wdipl.com',
                image: 'assets/images/png/Avatar.png',
              ),
              sizedBoxHeight(5),
              const Divider(),
              const AddApprover(
                header: 'Reethik thota',
                mail: 'reethikthota@wdipl.com',
                image: 'assets/images/png/Avatar.png',
              ),
              sizedBoxHeight(5),
              const Divider(),
              const AddApprover(
                header: 'Reethik thota',
                mail: 'reethikthota@wdipl.com',
                image: 'assets/images/png/Avatar.png',
              ),
              sizedBoxHeight(5),
              const Divider(),
              const AddApprover(
                header: 'Reethik thota',
                mail: 'reethikthota@wdipl.com',
                image: 'assets/images/png/Avatar.png',
              ),
              sizedBoxHeight(5),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class AddApprover extends StatefulWidget {
  final String header;
  final String mail;
  final String image;

  const AddApprover({
    super.key,
    required this.header,
    required this.mail,
    required this.image,
  });

  @override
  State<AddApprover> createState() => _AddApproverState();
}

class _AddApproverState extends State<AddApprover> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(RouteName.approverdetails);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  widget.image,
                ),
              ),
              sizedBoxWidth(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.header,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    widget.mail,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              border: Border.all(
                color: const Color(0xff6311CB),
              ),
            ),
            child: text14w400c6311CB('Select'),
          )
        ],
      ),
    );
  }
}
