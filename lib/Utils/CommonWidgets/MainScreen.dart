// ignore_for_file: file_names, deprecated_member_use

import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonBottomNavigationBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/MainController.dart';

final MainController mainController = Get.put(MainController());

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // @override
  // void initState() {
  //   // InterestListApi().getinterestlistApi();

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return WillPopScope(
        onWillPop: () async {
          _onBackButtonPressed(context);
          return true; // Return true to allow the pop action
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: mainController.currentTab[mainController.selectedIndex.value],
          bottomNavigationBar:
              CustomBottomNavigationBar(mainController: mainController),
        ),
      );
    });
  }

  Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool? exitApp = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xFFffffff),
          title: const Text('Exit App', style: TextStyle(color: Colors.black)),
          content: const Text('Do you really want to close the app?',
              style: TextStyle(color: Colors.black)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text(
                'No',
                style: TextStyle(
                  color: AppColors.primary,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                SystemNavigator.pop();
                Navigator.pop(context);
              },
              child: const Text(
                'Yes',
                style: TextStyle(
                  color: AppColors.primary,
                ),
              ),
            )
          ],
        );
      },
    );
    return exitApp ?? false;
  }
}
