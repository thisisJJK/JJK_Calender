import 'package:flutter/material.dart';

class EventList with ChangeNotifier {
  final List<String> _events = [];

  List<String> get events => _events;

  void addEvent(String event) {
    _events.add(event);
    notifyListeners();
  }
}
