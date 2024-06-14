import 'package:flutter/material.dart';
import 'package:jjk_calender/models/event_list.dart';
import 'package:provider/provider.dart';

class ScheduleList extends StatefulWidget {
  const ScheduleList({super.key});

  @override
  State<ScheduleList> createState() => _ScheduleListState();
}

class _ScheduleListState extends State<ScheduleList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      //color: Colors.yellow,
      child: Consumer<EventList>(builder: (context, eventlist, child) {
        return ListView.builder(
          itemCount: eventlist.events.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'start',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'end',
                    ),
                  ],
                ),
                title: Text(eventlist.events[index]),
              ),
            );
          },
        );
      }),
    );
  }
}
