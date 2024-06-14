import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jjk_calender/components/add_event_btn.dart';
import 'package:jjk_calender/components/main_calender.dart';
import 'package:jjk_calender/components/schedule_banner.dart';
import 'package:jjk_calender/components/schedule_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            MainCalender(),
            SizedBox(
              height: 8,
            ),
            ScheduleBanner(),
            SizedBox(
              height: 8,
            ),
            ScheduleList(),
          ],
        ),
      ),

      floatingActionButton: AddFbtn(),
    );
  }
}
