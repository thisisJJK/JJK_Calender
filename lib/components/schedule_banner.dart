import 'package:flutter/material.dart';

class ScheduleBanner extends StatefulWidget {
  const ScheduleBanner({super.key});

  @override
  State<ScheduleBanner> createState() => _ScheduleBannerState();
}

class _ScheduleBannerState extends State<ScheduleBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.blue),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'date',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'count',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
