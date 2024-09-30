import 'dart:io';

import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class ViewReport extends StatefulWidget {
  const ViewReport({super.key});

  @override
  State<ViewReport> createState() => _ViewReportState();
}

class _ViewReportState extends State<ViewReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: text18w400c000000('Reimbursement Report for June 2024'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(CupertinoIcons.arrow_left),
        ),
        elevation: 4,
        leadingWidth: 32, // Adjust this to fit the icon width properly
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(27, 98, 17, 203),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // First column for labels
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text18w500c6311CB('Report name'),
                        sizedBoxHeight(10.h),
                        text18w500c6311CB('Report by'),
                        sizedBoxHeight(10.h),
                        text18w500c6311CB('Report amount'),
                        sizedBoxHeight(10.h),
                        text18w500c6311CB('Date & time'),
                        sizedBoxHeight(10.h),
                        text18w500c6311CB('Approver'),
                        sizedBoxHeight(10.h),
                        text18w500c6311CB('Disburser'),
                      ],
                    ),
                    sizedBoxWidth(10.w), // Space between columns
                    // Second column for values
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text18w400c3A3472(': Report for food'),
                        sizedBoxHeight(10.h),
                        text18w400c3A3472(': Reethik Thota'),
                        sizedBoxHeight(10.h),
                        text18w400c3A3472(': ₹ 5000'),
                        sizedBoxHeight(10.h),
                        text18w400c3A3472(': 23 July 2024, 10 am'),
                        sizedBoxHeight(10.h),
                        text18w400c3A3472(': Manav Sain'),
                        sizedBoxHeight(10.h),
                        text18w400c3A3472(': Pooja Patade'),
                      ],
                    ),
                  ],
                ),
              ),
              sizedBoxHeight(20.h),
              Row(
                children: [
                  text18w400c3A3472('Bills for report'),
                ],
              ),
              sizedBoxHeight(20.h),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(27, 98, 17, 203),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/png/foods.png',
                              width: 30.w,
                            ),
                            sizedBoxWidth(10.w),
                            text25w400c464748(
                              'Food',
                            )
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: const BoxDecoration(
                              color: Color(0xff00A438),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              )),
                          child: const Text(
                            'Approved',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight(5.h),
                    const Divider(),
                    sizedBoxHeight(5.h),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text18w500c6311CB('Bill amount'),
                                  sizedBoxHeight(10.h),
                                  text18w500c6311CB('Uploaded on'),
                                  sizedBoxHeight(10.h),
                                  text18w500c6311CB('Paid from'),
                                ],
                              ),
                              sizedBoxWidth(20.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text18w400c3A3472('₹ 500'),
                                  sizedBoxHeight(10.h),
                                  text18w400c3A3472('1 June, 2024'),
                                  sizedBoxHeight(10.h),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                        color: Color(0xffE8E5FF)),
                                    child: const Text(
                                      'Paid from food wallet',
                                      style: TextStyle(
                                          color: Color(0xff3725EA),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          sizedBoxHeight(10.h),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(31, 133, 128, 198),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/png/bill.png',
                                      width: 50.w,
                                      height: 50.h,
                                    ),
                                    sizedBoxWidth(10.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text18w400c3A3472('dine in.jpg'),
                                        text14w400cF4F4F4('20kb')
                                      ],
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () async {
                                    await _downloadFile(
                                      'https://example.com/path_to_file/dine_in.jpg',
                                      context,
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.file_download_outlined,
                                    color: Color(0xff3725EA),
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              sizedBoxHeight(20.h),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(27, 98, 17, 203),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/png/travels.png',
                              width: 30.w,
                            ),
                            sizedBoxWidth(10.w),
                            text25w400c464748(
                              'Travel',
                            )
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: const BoxDecoration(
                              color: Color(0xff00A438),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              )),
                          child: const Text(
                            'Approved',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight(5.h),
                    const Divider(),
                    sizedBoxHeight(5.h),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text18w500c6311CB('Bill amount'),
                                  sizedBoxHeight(10.h),
                                  text18w500c6311CB('Uploaded on'),
                                  sizedBoxHeight(10.h),
                                  text18w500c6311CB('Paid from'),
                                ],
                              ),
                              sizedBoxWidth(20.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text18w400c3A3472('₹ 500'),
                                  sizedBoxHeight(10.h),
                                  text18w400c3A3472('1 June, 2024'),
                                  sizedBoxHeight(10.h),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                        color: Color(0xffE8E5FF)),
                                    child: const Text(
                                      'Paid from food wallet',
                                      style: TextStyle(
                                          color: Color(0xff3725EA),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          sizedBoxHeight(10.h),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(31, 133, 128, 198),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/png/bill.png',
                                      width: 50.w,
                                      height: 50.h,
                                    ),
                                    sizedBoxWidth(10.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text18w400c3A3472('dine in.jpg'),
                                        text14w400cF4F4F4('20kb')
                                      ],
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () async {
                                    await _downloadFile(
                                      'https://example.com/path_to_file/dine_in.jpg',
                                      context,
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.file_download_outlined,
                                    color: Color(0xff3725EA),
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              sizedBoxHeight(20.h),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(27, 98, 17, 203),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/png/fuels.png',
                              width: 30.w,
                            ),
                            sizedBoxWidth(10.w),
                            text25w400c464748(
                              'Fuel',
                            )
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: const BoxDecoration(
                              color: Color(0xff00A438),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              )),
                          child: const Text(
                            'Approved',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight(5.h),
                    const Divider(),
                    sizedBoxHeight(5.h),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text18w500c6311CB('Bill amount'),
                                  sizedBoxHeight(10.h),
                                  text18w500c6311CB('Uploaded on'),
                                  sizedBoxHeight(10.h),
                                  text18w500c6311CB('Paid from'),
                                ],
                              ),
                              sizedBoxWidth(20.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text18w400c3A3472('₹ 500'),
                                  sizedBoxHeight(10.h),
                                  text18w400c3A3472('1 June, 2024'),
                                  sizedBoxHeight(10.h),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                        color: Color(0xffE8E5FF)),
                                    child: const Text(
                                      'Paid from food wallet',
                                      style: TextStyle(
                                          color: Color(0xff3725EA),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          sizedBoxHeight(10.h),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(31, 133, 128, 198),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/png/bill.png',
                                      width: 50.w,
                                      height: 50.h,
                                    ),
                                    sizedBoxWidth(10.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text18w400c3A3472('dine in.jpg'),
                                        text14w400cF4F4F4('20kb')
                                      ],
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () async {
                                    await _downloadFile(
                                      'https://example.com/path_to_file/dine_in.jpg',
                                      context,
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.file_download_outlined,
                                    color: Color(0xff3725EA),
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _downloadFile(String fileUrl, BuildContext context) async {
  try {
    // Request storage permission if on Android
    if (Platform.isAndroid) {
      await _requestPermission(Permission.storage);
    }

    // Create a Dio instance for handling downloads
    Dio dio = Dio();

    // Get the temporary directory of the device
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String filePath = '${appDocDir.path}/dine_in.jpg';

    // Start the file download
    await dio.download(fileUrl, filePath);

    // Show a dialog or message to inform the user that the file is downloaded
    print("File downloaded to $filePath");
    _showDownloadCompleteDialog(context, filePath);
  } catch (e) {
    print("Download failed: $e");
  }
}

// Function to request storage permission on Android
Future<void> _requestPermission(Permission permission) async {
  if (await permission.isDenied) {
    await permission.request();
  }
}

// Function to show a download completion dialog
void _showDownloadCompleteDialog(BuildContext context, String filePath) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Download Complete'),
      content: Text('File downloaded to $filePath'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('OK'),
        ),
      ],
    ),
  );
}
