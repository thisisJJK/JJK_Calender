import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

class MainCalender extends StatefulWidget {
  const MainCalender({
    super.key,
  });

  @override
  State<MainCalender> createState() => _MainCalenderState();
}

class _MainCalenderState extends State<MainCalender> {
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime(1900, 1, 1),
      lastDay: DateTime(2999, 12, 31),
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
        });
      },
      headerStyle: const HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: true,
        defaultDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[200],
        ),
        weekendDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[200],
        ),
        selectedDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.green,
        ),
        todayDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.pink[200],
        ),
      ),
    );
  }
}
