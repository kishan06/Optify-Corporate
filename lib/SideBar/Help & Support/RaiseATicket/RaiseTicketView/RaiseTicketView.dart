import 'package:Optifii_Corporate/SideBar/Help%20&%20Support/RaiseATicket/RaiseTicketView/CompletedTab/CompletedTab.dart';
import 'package:Optifii_Corporate/SideBar/Help%20&%20Support/RaiseATicket/RaiseTicketView/InProgressTab/InProgressTab.dart';
import 'package:Optifii_Corporate/SideBar/Help%20&%20Support/RaiseATicket/RaiseTicketView/TerminatedTab/TerminatedTab.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/CommonWidgets/CommonTabBar.dart';

class RaiseTicketView extends StatefulWidget {
  const RaiseTicketView({super.key});

  @override
  State<RaiseTicketView> createState() => _RaiseTicketViewState();
}

class _RaiseTicketViewState extends State<RaiseTicketView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffffffff),
      extendBody: true,
      appBar: CommonAppbar(titleTxt: 'Raise a Ticket'),
      body: Column(
        children: [

          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  CommonTabBar(tabs: [
                    Tab(text: 'In progress'),
                    Tab(text: 'Completed'),
                    Tab(text: 'Terminated'),
                  ]),
                  Expanded( // Wrap TabBarView with Expanded to avoid overflow
                    child: TabBarView(
                      children: [

                        InProgressTab(),
                        CompletedTab(),
                        TerminatedTab()

                      ],
                    ),
                  )
                ],
              ),
            ),
          )




        ],
      ),
    );
  }
}
