import 'package:flutter/material.dart';

import '../../../../../Utils/Helpers/colors.dart';
import '../../../Common/CustomTicketBox.dart';

class TerminatedTab extends StatefulWidget {
  const TerminatedTab({super.key});

  @override
  State<TerminatedTab> createState() => _TerminatedTabState();
}

class _TerminatedTabState extends State<TerminatedTab> {
  final List<RaiseTicket> tickets = [
    RaiseTicket(
      issue: 'App loading issue',
      ticketNumber: 'TA 97868',
      assignedTo: 'Aman',
      status: 'Completed',
    ),
    RaiseTicket(
      issue: 'Login issue',
      ticketNumber: 'TA 12345',
      assignedTo: 'John',
      status: 'Completed',
    ),
    RaiseTicket(
      issue: 'Data sync failure',
      ticketNumber: 'TA 56789',
      assignedTo: 'Mike',
      status: 'Completed',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: ListView.builder(
        itemCount: tickets.length,
        itemBuilder: (context, index) {
          final ticket = tickets[index];
          return Padding(
            padding: const EdgeInsets.all(16),
            child: CustomTicketBox(
              issue: ticket.issue,
              ticketNumber: ticket.ticketNumber,
              assignedTo: ticket.assignedTo,
              status: ticket.status,
            ),
          );
        },
      ),
    );
  }
}


class RaiseTicket {
  final String issue;
  final String ticketNumber;
  final String assignedTo;
  final String status;

  RaiseTicket({
    required this.issue,
    required this.ticketNumber,
    required this.assignedTo,
    required this.status,
  });
}
