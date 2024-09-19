import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:flutter/material.dart';

import '../../../Common/CustomTicketBox.dart';

class InProgressTab extends StatefulWidget {
  const InProgressTab({super.key});

  @override
  State<InProgressTab> createState() => _InProgressTabState();
}

class _InProgressTabState extends State<InProgressTab> {
  // Create a list of RaiseTicket objects
  final List<RaiseTicket> tickets = [
    RaiseTicket(
      issue: 'App loading issue',
      ticketNumber: 'TA 97868',
      assignedTo: 'Aman',
      status: 'IN progress',
    ),
    RaiseTicket(
      issue: 'Login issue',
      ticketNumber: 'TA 12345',
      assignedTo: 'John',
      status: 'IN progress',
    ),
    RaiseTicket(
      issue: 'Data sync failure',
      ticketNumber: 'TA 56789',
      assignedTo: 'Mike',
      status: 'IN progress',
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

// Define the RaiseTicket class with proper fields
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
