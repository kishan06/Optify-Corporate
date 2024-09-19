import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../Utils/CommonWidgets/Custombutton.dart';
import '../../../Utils/CommonWidgets/Text.dart';
import '../../../Utils/CommonWidgets/sized_box.dart';
import '../Common/CustomColorAndCategory.dart';

class ExpenseTab extends StatefulWidget {
  const ExpenseTab({super.key});

  @override
  State<ExpenseTab> createState() => _ExpenseTabState();
}

class _ExpenseTabState extends State<ExpenseTab> {
  late TooltipBehavior _tooltipBehavior;

  // Sample data for the doughnut chart
  final List<_ChartData> _chartData = [
    _ChartData('Food', 25.0),
    _ChartData('Travel', 38.0),
    _ChartData('Telecom', 34.0),
    _ChartData('Fuel', 52.0),
    _ChartData('Gift & voucher', 60.0),
    _ChartData('Book & Periodicals', 20.0),
  ];

  @override
  void initState() {
    super.initState();
    // Initialize the tooltip behavior for charts
    _tooltipBehavior = TooltipBehavior(enable: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              sizedBoxHeight(44.h),
              text20w400c343C6A('Spend summary'),
              _buildSplineChart(),
              sizedBoxHeight(24.h),
              text20w400c343C6A('Total spent by category'),
              DoughnutChartWithCenterText(
                dataSource: _chartData,
                tooltipBehavior: _tooltipBehavior,
                totalAmount: _calculateTotalSpent(),
              ),

              // Horizontal scrolling for the first Row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomColorAndCategory(
                      color: Color(0xff4C78FF),
                      categoryName: 'Food',
                    ),
                    sizedBoxWidth(30.w),
                    CustomColorAndCategory(
                      color: Color(0xffFF82AC),
                      categoryName: 'Travel',
                    ),
                    sizedBoxWidth(30.w),
                    CustomColorAndCategory(
                      color: Color(0xff4C78FF),
                      categoryName: 'Telecom',
                    ),
                  ],
                ),
              ),

              sizedBoxHeight(15.h),

              // Horizontal scrolling for the second Row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomColorAndCategory(
                      color: Color(0xff16DBCC),
                      categoryName: 'Fuel',
                    ),
                    sizedBoxWidth(30.w),
                    CustomColorAndCategory(
                      color: Color(0xffFFBB38),
                      categoryName: 'Gift & voucher',
                    ),
                    sizedBoxWidth(30.w),
                    CustomColorAndCategory(
                      color: Color(0xff16DBCC),
                      categoryName: 'Books & periodicals',
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

  /// Build the header row with Weekly and Export popups
  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildWeeklyPopupMenu(),
        _buildExportPopupMenu(),
      ],
    );
  }

  /// Build the Spline chart showing the spending summary
  Widget _buildSplineChart() {
    return Container(
      height: 287.h,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        tooltipBehavior: _tooltipBehavior,
        series: <CartesianSeries>[
          SplineSeries<SalesData, String>(
            dataSource: _getSalesData(),
            color: const Color(0xff1814F3),
            xValueMapper: (SalesData sales, _) => sales.day,
            yValueMapper: (SalesData sales, _) => sales.amount,
          ),
        ],
      ),
    );
  }

  /// Calculate the total amount spent from chart data
  double _calculateTotalSpent() {
    return _chartData.fold<double>(0, (total, item) => total + item.y);
  }

  /// Build the popup for selecting the week
  Widget _buildWeeklyPopupMenu() {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        // Handle week selection
        print("Selected week: $value");
      },
      itemBuilder: (context) => [
        _buildPopupHeader('Filter', 'assets/images/png/filter.png'),
        _buildWeeklyDropdown(),
        _buildPopupFooter(),
      ],
      child: _buildPopupButton('Week', Icons.calendar_today_outlined, width: 225.w),
    );
  }

  /// Build the popup for exporting data
  Widget _buildExportPopupMenu() {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        // Handle export selection
        print("Selected export option: $value");
      },
      itemBuilder: (context) => [
        PopupMenuItem<String>(
          value: 'export_pdf',
          child: const Text('Export as PDF'),
        ),
        PopupMenuItem<String>(
          value: 'export_excel',
          child: const Text('Export as Excel'),
        ),
      ],
      child: _buildPopupButton('Export', Icons.arrow_drop_down, width: 120.w),
    );
  }

  /// Build a general popup button widget for reuse
  Widget _buildPopupButton(String label, IconData icon, {required double width}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(width: 0.5, color: const Color(0xffD4D6D9)),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.black54, size: 22.sp),
          sizedBoxWidth(10),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff272727),
                fontFamily: 'TT Commons',
              ),
            ),
          ),
          Icon(Icons.arrow_drop_down, color: Colors.black54, size: 20.sp),
        ],
      ),
    );
  }

  /// Build the popup header with a title and an icon
  PopupMenuItem<String> _buildPopupHeader(String title, String iconPath) {
    return PopupMenuItem<String>(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(iconPath, width: 20),
              sizedBoxWidth(10),
              text20w400cblack(title),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }

  /// Build a dropdown menu to select the week
  PopupMenuItem<String> _buildWeeklyDropdown() {
    return PopupMenuItem<String>(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text16w400cblack('Weekly'),
          sizedBoxHeight(10),
          DropdownButton<String>(
            isExpanded: true,
            items: const [
              DropdownMenuItem(value: 'week_1', child: Text('Week 1')),
              DropdownMenuItem(value: 'week_2', child: Text('Week 2')),
              DropdownMenuItem(value: 'week_3', child: Text('Week 3')),
              DropdownMenuItem(value: 'week_4', child: Text('Week 4')),
            ],
            onChanged: (String? value) {
              print("Selected week: $value");
            },
            hint: const Text('Select Week'),
          ),
          const Divider(),
        ],
      ),
    );
  }

  /// Build the popup footer with reset and filter buttons
  PopupMenuItem<String> _buildPopupFooter() {
    return PopupMenuItem<String>(
      child: Row(
        children: const [
          Expanded(
            child: CustomGreyButton(text: 'Reset'),
          ),
          Expanded(
            child: CustomButton(text: 'Filter'),
          ),
        ],
      ),
    );
  }

  /// Sample sales data for the chart
  List<SalesData> _getSalesData() {
    return [
      SalesData('Mon', 12),
      SalesData('Tue', 22),
      SalesData('Wed', 30),
      SalesData('Thu', 50),
      SalesData('Fri', 10),
      SalesData('Sat', 35),
      SalesData('Sun', 60),
    ];
  }
}

// Class for representing the sales data used in the Spline chart
class SalesData {
  SalesData(this.day, this.amount);

  final String day;
  final double amount;
}



class DoughnutChartWithCenterText extends StatelessWidget {
  /// The data source for the chart.
  final List<_ChartData> dataSource;

  /// The tooltip behavior for the chart.
  final TooltipBehavior tooltipBehavior;

  /// The total amount to display at the center of the chart.
  final double totalAmount;

  /// Creates a [DoughnutChartWithCenterText] widget.
  DoughnutChartWithCenterText({
    required this.dataSource,
    required this.tooltipBehavior,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.h,
      child: Stack(
        children: [
          // Doughnut chart
          SfCircularChart(
            tooltipBehavior: tooltipBehavior,
            series: <CircularSeries<_ChartData, String>>[
              DoughnutSeries<_ChartData, String>(
                dataSource: dataSource,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                name: 'Category',
                dataLabelSettings: DataLabelSettings(
                  isVisible: true,
                  labelPosition: ChartDataLabelPosition.outside,
                  labelAlignment: ChartDataLabelAlignment.outer,
                  textStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  labelIntersectAction: LabelIntersectAction.none,
                ),
                pointColorMapper: (_ChartData data, _) {
                  switch (data.x) {
                    case 'Food':
                      return Color(0xff4C78FF);
                    case 'Travel':
                      return Color(0xffFF82AC);
                    case 'Telecom':
                      return Color(0xff4C78FF);
                    case 'Fuel':
                      return Color(0xff16DBCC);
                    case 'Gift & voucher':
                      return Color(0xffFFBB38);
                    case 'Book & Periodicals':
                      return Color(0xff16DBCC);
                    default:
                      return Colors.grey;
                  }
                },
                explode: true,
                explodeIndex: 0,
                explodeOffset: '10%',
              )
            ],
          ),
          // Center text
          Center(
            child: Text(
              '₹ ${totalAmount.toStringAsFixed(2)}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class _ChartData {
  /// Creates a [_ChartData] instance.
  _ChartData(this.x, this.y);

  /// The category name.
  final String x;

  /// The value associated with the category.
  final double y;
}


