import 'package:flutter/material.dart';
import 'package:jjk_calender/models/event_list.dart';
import 'package:provider/provider.dart';

class AddFbtn extends StatefulWidget {
  const AddFbtn({super.key});

  @override
  State<AddFbtn> createState() => _AddFbtnState();
}

class _AddFbtnState extends State<AddFbtn> {
  final TextEditingController _controller = TextEditingController();

  void _showAddEvent(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Add'),
            content: Column(
              children: [
                Row(
                  children: [
                    TextField(
                      controller: _controller,
                      decoration: const InputDecoration(hintText: 'Start Time'),
                    ),
                    TextField(
                      controller: _controller,
                      decoration: const InputDecoration(hintText: 'End Time'),
                    ),
                  ],
                ),
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(hintText: 'Add content'),
                )
              ],
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _controller.clear();
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  final newEvent = _controller.text;
                  if (newEvent.isNotEmpty) {
                    Provider.of<EventList>(context, listen: false)
                        .addEvent(newEvent);
                  }
                  Navigator.of(context).pop();
                  _controller.clear();
                },
                child: const Text('Add'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _showAddEvent(context);
      },
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
