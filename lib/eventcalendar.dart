import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderApp extends StatefulWidget {
  const CalenderApp({super.key});

  @override
  State<CalenderApp> createState() => _CalenderAppState();
}

class _CalenderAppState extends State<CalenderApp> {
  DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        //title: const Text("Event Calender"),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        const Text(
          "Event Calender",
          style: TextStyle(color: Color.fromARGB(255, 5, 79, 7), fontSize: 40),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          child: TableCalendar(
              focusedDay: today,
              firstDay: DateTime.utc(2010, 10, 01),
              lastDay: DateTime.utc(2025, 01, 01)),
        )
      ],
    );
  }
}
