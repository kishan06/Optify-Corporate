import 'package:flutter/cupertino.dart';

class StatusContainer extends StatelessWidget {
  final String status;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final Color circleColor;

  const StatusContainer({
    Key? key,
    required this.status,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
    required this.circleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      width: 123,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
          width: 0.75,
          color: borderColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: circleColor,
              shape: BoxShape.circle,
            ),
            width: 8, // Specify a width for the circle
            height: 8, // Specify a height for the circle
          ),
          const SizedBox(width: 6),
          Text(
            status,
            style: TextStyle(color: textColor),
          ),
        ],
      ),
    );
  }
}