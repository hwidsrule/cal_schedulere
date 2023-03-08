import 'package:flutter/material.dart';
import 'package:calendar_scheduler/const/colors.dart';
import 'package:table_calendar/table_calendar.dart';

class MainCalendar extends StatelessWidget {
  final OnDaySelected onDaySelected;
  final DateTime selectedDate;

  MainCalendar({
    required this.onDaySelected,
    required this.selectedDate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: 'ko_kr',
      onDaySelected: onDaySelected,
      selectedDayPredicate: (date) =>
          date.year == selectedDate.year &&
          date.month == selectedDate.month &&
          date.day == selectedDate.day,
      firstDay: DateTime(1800, 1, 1),
      lastDay: DateTime(3000, 1, 1),
      // focusedDay: DateTime.now(),
      focusedDay: selectedDate,
      headerStyle: HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: false,
        defaultDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: LIGHT_GREY_COLOR,
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              spreadRadius: 0.0,
              offset: const Offset(5, 5),
              color: Colors.grey.withOpacity(0.3),
            )
          ],
        ),
        weekendDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: LIGHT_GREY_COLOR,
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              spreadRadius: 0.0,
              offset: const Offset(5, 5),
              color: Colors.grey.withOpacity(0.3),
            )
          ],
        ),
        selectedDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: PRIMARY_COLOR,
            width: 1.0,
          ),
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 5.0,
          //     spreadRadius: 0.0,
          //     offset: const Offset(5, 5),
          //     color: Colors.grey.withOpacity(0.7),
          //   )
          // ],
        ),
        defaultTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: DARK_GREY_COLOR,
        ),
        weekendTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: DARK_GREY_COLOR,
        ),
        selectedTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: PRIMARY_COLOR,
        ),
      ),
    );
  }
}
