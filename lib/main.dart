import 'package:flutter/material.dart';
import 'package:jjk_calender/models/event_list.dart';

import 'package:jjk_calender/views/home_view.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => EventList(),
        child: MaterialApp(
          title: 'JJK Calender',
          theme: ThemeData(primarySwatch: Colors.blue),
          home: const HomeView(),
        ));
  }
}
