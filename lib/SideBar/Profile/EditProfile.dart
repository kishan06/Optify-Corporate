// ignore_for_file: file_names

import 'dart:io';

import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTextFormField.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:remove_emoji_input_formatter/remove_emoji_input_formatter.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final ImagePicker _picker = ImagePicker();

  // Function to pick an image from gallery or camera
  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  File? _image;
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _employeeIdController = TextEditingController();
  final _memberSinceController = TextEditingController();
  final _companyNameController = TextEditingController();
  final _industryController = TextEditingController();
  final _typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(
        titleTxt: 'Edit',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      // CircleAvatar for profile image
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: _image != null
                                ? FileImage(_image!) // Display selected image
                                : const AssetImage(
                                        'assets/images/png/Avatar.png')
                                    as ImageProvider, // Default image
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                      // Positioned overlay with icon and text on top of the image
                      Positioned.fill(
                        bottom: 20,
                        child: Align(
                          alignment: Alignment
                              .center, // Align overlay in the center of the image
                          child: Container(
                            width: 120.w,
                            height: 130.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.black
                                  .withOpacity(0.3), // Semi-transparent overlay
                              borderRadius: BorderRadius.circular(
                                  100), // Match with CircleAvatar's radius
                            ),
                            padding: const EdgeInsets.all(
                                10), // Padding around the content
                            child: const Column(
                              mainAxisSize: MainAxisSize
                                  .min, // Minimize the size of the overlay content
                              children: [
                                Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SizedBox(
                                    height: 5), // Spacing between icon and text
                                Text(
                                  'Change Photo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // ElevatedButton to pick image
                    ],
                  ),
                ),
                text20w600c343C6A('Personal Information'),
                sizedBoxHeight(20.h),
                text20w400cblack('Name'),
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value!.isEmpty) {
                      return "Please enter your name";
                    }
                    if (value.length < 3) {
                      return "Name length should be more then 3 charater";
                    }
                    return null;
                  },
                  texttype: TextInputType.text,
                  inputFormatters: [
                    RemoveEmojiInputFormatter(),
                  ],
                  onInput: (value) {
                    return null;
                  },
                  hintText: "Shailesh Gupta",
                ),
                sizedBoxHeight(15.h),
                text20w400cblack('Email ID'),
                CustomTextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(
                            r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$') // Corrected regex
                        .hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                  texttype: TextInputType.emailAddress,
                  inputFormatters: [
                    RemoveEmojiInputFormatter(),
                  ],
                  onInput: (value) {
                    return null;
                  },
                  hintText: "reethikthota@wdipl.com",
                ),
                sizedBoxHeight(15.h),
                text20w400cblack('Mobile number'),
                CustomTextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your mobile number';
                    } else if (value.length < 10) {
                      return 'Mobile number should be 10 digit long';
                    }
                    return null;
                  },
                  texttype: TextInputType.phone,
                  inputFormatters: [
                    RemoveEmojiInputFormatter(),
                  ],
                  onInput: (value) {
                    return null;
                  },
                  hintText: "+91 7845154578",
                ),
                sizedBoxHeight(15.h),
                text20w400cblack('Employee ID'),
                CustomTextFormField(
                  controller: _employeeIdController,
                  texttype: TextInputType.number,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "WD-7675",
                  validator: (value) {
                    if (value!.isEmpty) {
                      if (value!.isEmpty) {
                        return 'Please enter your employee id';
                      }
                      return null;
                    }
                  },
                  onInput: (value) {
                    return null;
                  },
                ),
                sizedBoxHeight(15.h),
                text20w400cblack('Member since'),
                CustomTextFormField(
                  texttype: TextInputType.datetime,
                  inputFormatters: [
                    RemoveEmojiInputFormatter(),
                  ],
                  onInput: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter member data';
                    }
                    return null;
                  },
                  hintText: "07/12/2022",
                ),
                sizedBoxHeight(40.h),
                text20w600c343C6A('Company Information'),
                sizedBoxHeight(20.h),
                text20w400cblack('Company Name'),
                CustomTextFormField(
                  texttype: TextInputType.text,
                  inputFormatters: [
                    RemoveEmojiInputFormatter(),
                  ],
                  onInput: (value) {
                    return null;
                  },
                  hintText: "WDIPL",
                ),
                sizedBoxHeight(15.h),
                text20w400cblack('Industry'),
                CustomTextFormField(
                  texttype: TextInputType.text,
                  inputFormatters: [
                    RemoveEmojiInputFormatter(),
                  ],
                  onInput: (value) {
                    return null;
                  },
                  hintText: "Fintech",
                ),
                sizedBoxHeight(15.h),
                text20w400cblack('Type'),
                CustomTextFormField(
                  texttype: TextInputType.text,
                  inputFormatters: [
                    RemoveEmojiInputFormatter(),
                  ],
                  onInput: (value) {
                    return null;
                  },
                  hintText: "Private limited company",
                ),
                sizedBoxHeight(40.h),
                CustomButton(
                  text: 'Save',
                  ontap: () {
                    Get.toNamed(RouteName.profile);
                  },
                ),
                sizedBoxHeight(40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showImageSourceDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Choose Image Source"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text("Camera"),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_album),
              title: const Text("Gallery"),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }
}
