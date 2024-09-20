import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/VoucherTab/CommonWidgets/CustomButtonIconLeft.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonModal.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PullBackFund2 extends StatefulWidget {
  const PullBackFund2({super.key});

  @override
  State<PullBackFund2> createState() => _PullBackFund2State();
}

class _PullBackFund2State extends State<PullBackFund2> {
  bool isFuelChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(titleTxt: 'Pull back funds'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/png/Avatar.png',
                    width: 60.w,
                    height: 60.h,
                  ),
                  sizedBoxWidth(10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text20w400c252C32('Reethik thota'),
                      text16w400cA0ABBB('WD-0956')
                    ],
                  )
                ],
              ),
              sizedBoxHeight(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      text16w400cA0ABBB('Department : '),
                      text16w400cblack('Design'),
                    ],
                  ),
                  Row(
                    children: [
                      text16w400cA0ABBB('Role : '),
                      text16w400cblack('Sr. Designer'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              const Divider(),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  text18w500c343C6A('Select expense wallet'),
                ],
              ),
              sizedBoxHeight(15.h),
              const Expensewallet(),
              sizedBoxHeight(30.h),
              Row(
                children: [
                  text18w500c343C6A('Select benefit wallet'),
                ],
              ),
              sizedBoxHeight(15.h),
              const Benifitswallet(),
              sizedBoxHeight(30.h),
              Row(
                children: [
                  text18w500c343C6A('Select gift card'),
                ],
              ),
              sizedBoxHeight(15.h),
              const GiftCard()
            ],
          ),
        ),
      ),
    );
  }
}

class Expensewallet extends StatefulWidget {
  const Expensewallet({super.key, this.isChecked, this.onCheckedChanged});
  final bool? isChecked; // Is the checkbox checked?
  final ValueChanged<bool?>? onCheckedChanged;
  @override
  _ExpensewalletState createState() => _ExpensewalletState();
}

class _ExpensewalletState extends State<Expensewallet> {
  // Boolean values for each row
  bool isFuelChecked1 = false;
  bool isFuelChecked2 = false;
  bool isFuelChecked3 = false;
  bool isFuelChecked4 = false;
  bool isFuelChecked5 = false;
  @override
  void didUpdateWidget(Expensewallet oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update internal state based on the parent state
    if (widget.isChecked != null && widget.isChecked != oldWidget.isChecked) {
      setState(() {
        isFuelChecked1 = widget.isChecked!;
        isFuelChecked2 = widget.isChecked!;
        isFuelChecked3 = widget.isChecked!;
        isFuelChecked4 = widget.isChecked!;
        isFuelChecked5 = widget.isChecked!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildRow(isFuelChecked1, 'assets/images/png/foods.png', 'Reethik thota',
            'WD-0956', (value) {
          setState(() {
            isFuelChecked1 = value ?? false;
          });
        }),
        sizedBoxHeight(15.h),
        buildRow(
            isFuelChecked2, 'assets/images/png/fuels.png', 'Fuel', '₹ 5000',
            (value) {
          setState(() {
            isFuelChecked2 = value ?? false;
          });
        }),
        sizedBoxHeight(15.h),
        buildRow(isFuelChecked3, 'assets/images/png/image 45.png',
            'Books & periodicals', '₹ 5000', (value) {
          setState(() {
            isFuelChecked3 = value ?? false;
          });
        }),
        sizedBoxHeight(15.h),
        buildRow(isFuelChecked4, 'assets/images/png/image 43.png',
            'Gadget & equipment', '₹ 5000', (value) {
          setState(() {
            isFuelChecked4 = value ?? false;
          });
        }),
        sizedBoxHeight(15.h),
        buildRow(isFuelChecked5, 'assets/images/png/image 46.png', 'Telecom',
            '₹ 5000', (value) {
          setState(() {
            isFuelChecked5 = value ?? false;
          });
        }),
      ],
    );
  }

  // Helper method to build each row
  Widget buildRow(bool isChecked, String imagePath, String name, String id,
      ValueChanged<bool?> onChanged) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value ?? false;
              if (widget.onCheckedChanged != null) {
                widget.onCheckedChanged!(value);
              }

              // Open the BottomSheet when the checkbox is clicked
              if (value == true) {
                WithdrawSummary(context);
              }
            });
          },
          materialTapTargetSize:
              MaterialTapTargetSize.shrinkWrap, // Shrink checkbox padding
          visualDensity: VisualDensity.compact, // Further reduces padding
        ),
        Image.asset(
          imagePath,
          width: 40.w,
          height: 40.h,
        ),
        sizedBoxWidth(5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text20w400c252C32(name),
            text16w400cA0ABBB(id),
          ],
        ),
      ],
    );
  }

  Future<dynamic> WithdrawSummary(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          // height: 250,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              text16w400cblack('Summary of withdraw'),
              sizedBoxHeight(10.h),
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        text18w400c848484('Food'),
                        sizedBoxWidth(10.w),
                        const Icon(
                          Icons.close,
                          color: Color(0xff848484),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  sizedBoxWidth(10.w),
                  Container(
                    child: Row(
                      children: [
                        text18w400c848484('Food'),
                        sizedBoxWidth(10.w),
                        const Icon(
                          Icons.close,
                          color: Color(0xff848484),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  sizedBoxWidth(10.w),
                  Container(
                    child: Row(
                      children: [
                        text18w400c848484('Books & periodicals'),
                        sizedBoxWidth(10.w),
                        const Icon(
                          Icons.close,
                          color: Color(0xff848484),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  sizedBoxWidth(10.w),
                ],
              ),
              sizedBoxHeight(20.h),
              text18w400c848484('Amount to pull back'),
              sizedBoxHeight(5.h),
              text20w400cblack('₹ 10,000'),
              sizedBoxHeight(20.h),
              SizedBox(
                width: double.infinity,
                child: CustomButtonIconLeft(
                  image: 'assets/images/png/pullbackfund.png',
                  text: 'Pull back funds',
                  ontap: () {
                    withdrawwidget();
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class Benifitswallet extends StatefulWidget {
  const Benifitswallet({super.key, this.isChecked, this.onCheckedChanged});
  final bool? isChecked; // Is the checkbox checked?
  final ValueChanged<bool?>? onCheckedChanged;
  @override
  _BenifitswalletState createState() => _BenifitswalletState();
}

class _BenifitswalletState extends State<Benifitswallet> {
  // Boolean values for each row
  bool isBenefit1 = false;
  bool isBenefit2 = false;
  bool isBenefit3 = false;
  bool isBenefit4 = false;
  bool isBenefit5 = false;
  @override
  void didUpdateWidget(Benifitswallet oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update internal state based on the parent state
    if (widget.isChecked != null && widget.isChecked != oldWidget.isChecked) {
      setState(() {
        isBenefit1 = widget.isChecked!;
        isBenefit2 = widget.isChecked!;
        isBenefit3 = widget.isChecked!;
        isBenefit4 = widget.isChecked!;
        isBenefit5 = widget.isChecked!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildRow(isBenefit1, 'assets/images/png/foods.png', 'Reethik thota',
            'WD-0956', (value) {
          setState(() {
            isBenefit1 = value ?? false;
          });
        }),
        sizedBoxHeight(15.h),
        buildRow(isBenefit2, 'assets/images/png/fuels.png', 'Fuel', '₹ 5000',
            (value) {
          setState(() {
            isBenefit2 = value ?? false;
          });
        }),
        sizedBoxHeight(15.h),
        buildRow(isBenefit3, 'assets/images/png/image 45.png',
            'Books & periodicals', '₹ 5000', (value) {
          setState(() {
            isBenefit3 = value ?? false;
          });
        }),
        sizedBoxHeight(15.h),
        buildRow(isBenefit4, 'assets/images/png/image 43.png',
            'Gadget & equipment', '₹ 5000', (value) {
          setState(() {
            isBenefit4 = value ?? false;
          });
        }),
        sizedBoxHeight(15.h),
        buildRow(
            isBenefit5, 'assets/images/png/image 46.png', 'Telecom', '₹ 5000',
            (value) {
          setState(() {
            isBenefit5 = value ?? false;
          });
        }),
      ],
    );
  }

  // Helper method to build each row
  Widget buildRow(bool isChecked, String imagePath, String name, String id,
      ValueChanged<bool?> onChanged) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value ?? false;
              if (widget.onCheckedChanged != null) {
                widget.onCheckedChanged!(value);
              }

              // Open the BottomSheet when the checkbox is clicked
              if (value == true) {
                WithdrawSummary(context);
              }
            });
          },
          materialTapTargetSize:
              MaterialTapTargetSize.shrinkWrap, // Shrink checkbox padding
          visualDensity: VisualDensity.compact, // Further reduces padding
        ),
        Image.asset(
          imagePath,
          width: 40.w,
          height: 40.h,
        ),
        sizedBoxWidth(5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text20w400c252C32(name),
            text16w400cA0ABBB(id),
          ],
        ),
      ],
    );
  }

  Future<dynamic> WithdrawSummary(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          // height: 250,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              text16w400cblack('Summary of withdraw'),
              sizedBoxHeight(10.h),
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        text18w400c848484('Food'),
                        sizedBoxWidth(10.w),
                        const Icon(
                          Icons.close,
                          color: Color(0xff848484),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  sizedBoxWidth(10.w),
                  Container(
                    child: Row(
                      children: [
                        text18w400c848484('Food'),
                        sizedBoxWidth(10.w),
                        const Icon(
                          Icons.close,
                          color: Color(0xff848484),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  sizedBoxWidth(10.w),
                  Container(
                    child: Row(
                      children: [
                        text18w400c848484('Books & periodicals'),
                        sizedBoxWidth(10.w),
                        const Icon(
                          Icons.close,
                          color: Color(0xff848484),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  sizedBoxWidth(10.w),
                ],
              ),
              sizedBoxHeight(20.h),
              text18w400c848484('Amount to pull back'),
              sizedBoxHeight(5.h),
              text20w400cblack('₹ 10,000'),
              sizedBoxHeight(20.h),
              SizedBox(
                width: double.infinity,
                child: CustomButtonIconLeft(
                  image: 'assets/images/png/pullbackfund.png',
                  text: 'Pull back funds',
                  ontap: () {
                    withdrawwidget();
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class GiftCard extends StatefulWidget {
  const GiftCard({super.key, this.isChecked, this.onCheckedChanged});
  final bool? isChecked; // Is the checkbox checked?
  final ValueChanged<bool?>? onCheckedChanged;
  @override
  _GiftCardState createState() => _GiftCardState();
}

class _GiftCardState extends State<GiftCard> {
  // Boolean values for each row
  bool isgift1 = false;
  bool isgift2 = false;
  bool isgift3 = false;
  @override
  void didUpdateWidget(GiftCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update internal state based on the parent state
    if (widget.isChecked != null && widget.isChecked != oldWidget.isChecked) {
      setState(() {
        isgift1 = widget.isChecked!;
        isgift2 = widget.isChecked!;
        isgift3 = widget.isChecked!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildRow(isgift1, 'assets/images/png/image 47.png',
            '4512 **** **** 4512', '₹ 5000', (value) {
          setState(() {
            isgift1 = value ?? false;
          });
        }),
        sizedBoxHeight(15.h),
        buildRow(isgift2, 'assets/images/png/image 47.png',
            '4512 **** **** 4512', '₹ 5000', (value) {
          setState(() {
            isgift2 = value ?? false;
          });
        }),
        sizedBoxHeight(15.h),
        buildRow(isgift3, 'assets/images/png/image 47.png',
            '4512 **** **** 4512', '₹ 5000', (value) {
          setState(() {
            isgift3 = value ?? false;
          });
        }),
        sizedBoxHeight(40.h),
      ],
    );
  }

  // Helper method to build each row
  Widget buildRow(bool isChecked, String imagePath, String name, String id,
      ValueChanged<bool?> onChanged) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value ?? false;
              if (widget.onCheckedChanged != null) {
                widget.onCheckedChanged!(value);
              }

              // Open the BottomSheet when the checkbox is clicked
              if (value == true) {
                WithdrawSummary(context);
              }
            });
          },
          materialTapTargetSize:
              MaterialTapTargetSize.shrinkWrap, // Shrink checkbox padding
          visualDensity: VisualDensity.compact, // Further reduces padding
        ),
        Image.asset(
          imagePath,
          width: 40.w,
          height: 40.h,
        ),
        sizedBoxWidth(5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text20w400c252C32(name),
            text16w400cA0ABBB(id),
          ],
        ),
      ],
    );
  }

  Future<dynamic> WithdrawSummary(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          // height: 250,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              text16w400cblack('Summary of withdraw'),
              sizedBoxHeight(10.h),
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        text18w400c848484('Food'),
                        sizedBoxWidth(10.w),
                        const Icon(
                          Icons.close,
                          color: Color(0xff848484),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  sizedBoxWidth(10.w),
                  Container(
                    child: Row(
                      children: [
                        text18w400c848484('Food'),
                        sizedBoxWidth(10.w),
                        const Icon(
                          Icons.close,
                          color: Color(0xff848484),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  sizedBoxWidth(10.w),
                  Container(
                    child: Row(
                      children: [
                        text18w400c848484('Books & periodicals'),
                        sizedBoxWidth(10.w),
                        const Icon(
                          Icons.close,
                          color: Color(0xff848484),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  sizedBoxWidth(10.w),
                ],
              ),
              sizedBoxHeight(20.h),
              text18w400c848484('Amount to pull back'),
              sizedBoxHeight(5.h),
              text20w400cblack('₹ 10,000'),
              sizedBoxHeight(20.h),
              SizedBox(
                width: double.infinity,
                child: CustomButtonIconLeft(
                  image: 'assets/images/png/pullbackfund.png',
                  text: 'Pull back funds',
                  ontap: () {
                    withdrawwidget();
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
