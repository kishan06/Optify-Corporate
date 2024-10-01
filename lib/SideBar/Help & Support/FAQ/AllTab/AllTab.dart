import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllTab extends StatefulWidget {
  const AllTab({super.key});

  @override
  State<AllTab> createState() => _AllTabState();
}

class _AllTabState extends State<AllTab> {


  // List of accordion data (title and content)
  final List<Map<String, String>> accordionData = [
    {
      'title': 'How to create a new account?',
      'content': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since. Lorem Ipsum has been the industry'
    },    {
      'title': 'How to create a new account?',
      'content': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since. Lorem Ipsum has been the industry'
    },    {
      'title': 'How to create a new account?',
      'content': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since. Lorem Ipsum has been the industry'
    },    {
      'title': 'How to create a new account?',
      'content': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since. Lorem Ipsum has been the industry'
    },
  ];

  // To track which accordion is expanded
  int? expandedIndex;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Accordion(
          maxOpenSections: 1, // Ensures only one section is open at a time
          headerBackgroundColor: Colors.white, // Default header background color
          contentBackgroundColor: Colors.white, // Default content background color
          paddingListHorizontal: 15,
          paddingListTop: 10,
          contentBorderColor: Colors.transparent,

          children: List.generate(accordionData.length, (index) {
            final isExpanded = expandedIndex == index;
            return AccordionSection(
              isOpen: isExpanded,  // Ensure section opens when expanded
              headerBackgroundColor: isExpanded ? Color(0xff3725EA) : Colors.white,
              contentBackgroundColor: Colors.white,
              headerBorderRadius: 8,
  
              rightIcon: isExpanded ? Icon(Icons.keyboard_arrow_up , color: Colors.white,) : Icon(Icons.keyboard_arrow_down),
              headerPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              header: Text(
                accordionData[index]['title']!,
                style: TextStyle(
                  color: isExpanded ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp,
                  fontFamily: 'TT Commons'
                ),
              ),
              content: Text(accordionData[index]['content']!),
              onOpenSection: () {
                setState(() {
                  expandedIndex = isExpanded ? null : index; // Close if clicked again
                });
              },
            );
          }),
        ),
      ),
    );
  }
}
