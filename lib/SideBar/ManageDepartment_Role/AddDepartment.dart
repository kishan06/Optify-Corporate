import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddDepartment extends StatefulWidget {
  const AddDepartment({super.key});

  @override
  State<AddDepartment> createState() => _AddDepartmentState();
}

class _AddDepartmentState extends State<AddDepartment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(titleTxt: 'Add department'),
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: CustomButton(
            text: 'Add departments',
            ontap: () {
              Get.toNamed(RouteName.managedepartment_role);
            },
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xffBCBCBC),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Type department name....',
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none, // Remove default borders
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(
                          0xff6211CB,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Color(0xffffffff),
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              sizedBoxHeight(20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        flex: 1,
                        child: DepartmentTags(),
                      ),
                      sizedBoxWidth(8),
                      const Expanded(
                        flex: 1,
                        child: DepartmentTags(),
                      ),
                      sizedBoxWidth(8),
                      const Expanded(
                        flex: 1,
                        child: DepartmentTags(),
                      ),
                      sizedBoxWidth(8),
                    ],
                  ),
                  sizedBoxHeight(10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        flex: 1,
                        child: DepartmentTags(),
                      ),
                      sizedBoxWidth(8),
                      const Expanded(
                        flex: 1,
                        child: DepartmentTags(),
                      ),
                      sizedBoxWidth(8),
                      const Expanded(
                        flex: 1,
                        child: DepartmentTags(),
                      ),
                      sizedBoxWidth(8),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DepartmentTags extends StatelessWidget {
  const DepartmentTags({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color.fromARGB(14, 98, 17, 203),
        borderRadius: BorderRadius.all(
          Radius.circular(
            50,
          ),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Finance',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
            ),
          ),
          Icon(
            Icons.close,
            color: Color(0xff6311CB),
            size: 20,
          ),
        ],
      ),
    );
  }
}
