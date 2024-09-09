import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class SearchBarFilter extends StatefulWidget {
  final bool? isChecked;
  final ValueChanged<bool?>? onCheckedChanged;

  const SearchBarFilter({super.key, this.isChecked, this.onCheckedChanged});

  @override
  State<SearchBarFilter> createState() => _SearchBarFilterState();
}

class _SearchBarFilterState extends State<SearchBarFilter> {
  final List<String> departments = [
    'Design',
    'Finance',
    'IT',
    'Development',
    'Sales',
    'QA',
  ];
  final List<String> statuses = [
    'Active',
    'Pending',
    'Inactive',
    'Suspended',
  ];

  List<bool> departmentChecked = [];
  List<bool> statusChecked = [];

  @override
  void initState() {
    super.initState();
    departmentChecked =
        List<bool>.filled(departments.length, false, growable: true);
    statusChecked = List<bool>.filled(statuses.length, false, growable: true);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            height: 55.h,
            child: _buildSearchBar(),
          ),
        ),
        SizedBox(width: 10.w),
        _buildFilterPopupMenu(),
      ],
    );
  }

  // Extract the SearchBar into its own widget
  Widget _buildSearchBar() {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      decoration: const InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Color(0xffA0ABBB),
          size: 25,
        ),
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Color(0xffA0ABBB),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Color(0xffCDCDCD),
          ),
        ),
      ),
    );
  }

  // Extract the filter menu into its own widget
  Widget _buildFilterPopupMenu() {
    return PopupMenuButton<String>(
      color: Colors.white,
      icon: Image.asset(
        'assets/images/png/filter.png',
        width: 25.w,
      ),
      onSelected: (value) {
        // Handle the selected filter option
        print("Selected filter: $value");
      },
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          _buildPopupHeader(),
          _buildDepartmentAccordion(),
          _buildStatusAccordion(),
          _buildFooter(),
        ];
      },
    );
  }

  // Extract the filter header into a reusable widget
  PopupMenuItem<String> _buildPopupHeader() {
    return PopupMenuItem<String>(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                const Image(
                  width: 20,
                  image: AssetImage('assets/images/png/filter.png'),
                ),
                sizedBoxWidth(10),
                text20w400cblack('Filter'),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }

  // Build the Department Accordion
  PopupMenuItem<String> _buildDepartmentAccordion() {
    return PopupMenuItem<String>(
      child: GFAccordion(
        titleChild: const SizedBox(
          width: 200,
          child: Text(
            'Department',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff3A3A3A),
            ),
          ),
        ),
        contentChild: Column(
          children: List.generate(departments.length, (index) {
            return CheckboxListTile(
              title: Text(
                departments[index],
                style: const TextStyle(
                  color: Color(0xff646464),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              value: departmentChecked[index],
              onChanged: (bool? value) {
                setState(() {
                  departmentChecked[index] = value ?? false;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: const Color(0xff6311CB),
              checkColor: const Color(0xffffffff),
            );
          }),
        ),
        collapsedIcon: const Icon(Icons.keyboard_arrow_down),
        expandedIcon: const Icon(Icons.keyboard_arrow_up),
        collapsedTitleBackgroundColor: Colors.transparent,
        expandedTitleBackgroundColor: Colors.transparent,
        contentBackgroundColor: Colors.transparent,
        titleBorderRadius: BorderRadius.circular(0),
        titlePadding: const EdgeInsets.all(10.0),
        contentPadding: const EdgeInsets.all(0.0),
        showAccordion: false,
        margin: const EdgeInsets.all(0),
      ),
    );
  }

  // Build the Status Accordion
  PopupMenuItem<String> _buildStatusAccordion() {
    return PopupMenuItem<String>(
      child: GFAccordion(
        titleChild: const SizedBox(
          width: 200,
          child: Text(
            'Status',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff3A3A3A),
            ),
          ),
        ),
        contentChild: Column(
          children: List.generate(statuses.length, (index) {
            return CheckboxListTile(
              title: Text(
                statuses[index],
                style: const TextStyle(
                  color: Color(0xff646464),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              value: statusChecked[index],
              onChanged: (bool? value) {
                setState(() {
                  statusChecked[index] = value ?? false;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: const Color(0xff6311CB),
              checkColor: const Color(0xffffffff),
            );
          }),
        ),
        collapsedIcon: const Icon(Icons.keyboard_arrow_down),
        expandedIcon: const Icon(Icons.keyboard_arrow_up),
        collapsedTitleBackgroundColor: Colors.transparent,
        expandedTitleBackgroundColor: Colors.transparent,
        contentBackgroundColor: Colors.transparent,
        titleBorderRadius: BorderRadius.circular(0),
        titlePadding: const EdgeInsets.all(10.0),
        contentPadding: const EdgeInsets.all(0.0),
        showAccordion: false,
        margin: const EdgeInsets.all(0),
      ),
    );
  }

  // Build the footer with reset and filter buttons
  PopupMenuItem<String> _buildFooter() {
    return const PopupMenuItem<String>(
      child: Column(
        children: [
          Divider(),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CustomGreyButton(
                  text: 'Reset',
                ),
              ),
              Expanded(
                flex: 1,
                child: CustomButton(text: 'Filter'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
