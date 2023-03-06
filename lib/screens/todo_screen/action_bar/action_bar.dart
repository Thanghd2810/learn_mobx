import 'package:flutter/material.dart';

class ActionBar extends StatefulWidget {
  ActionBar({super.key});

  @override
  State<ActionBar> createState() => _ActionBarState();
}

class _ActionBarState extends State<ActionBar> {
  bool isCheckedAll = false;
  bool isCheckedPending = false;
  bool isCheckedComplete = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          onChanged: (value) {
            setState(() {
              isCheckedAll = value!;
            });
          },
          value: isCheckedAll,
          checkColor: Colors.blue,
          activeColor: Colors.black12,
          title: Text('All'),
          controlAffinity: ListTileControlAffinity.leading,
        ),
        CheckboxListTile(
          onChanged: (value) {
            setState(() {
              isCheckedPending = value!;
            });
          },
          value: isCheckedPending,
          checkColor: Colors.blue,
          activeColor: Colors.black12,
          title: const Text('Pending'),
          controlAffinity: ListTileControlAffinity.leading,
        ),
        CheckboxListTile(
          onChanged: (value) {
            setState(() {
              isCheckedComplete = value!;
            });
          },
          value: isCheckedComplete,
          checkColor: Colors.blue,
          activeColor: Colors.black12,
          title: const Text('Complete'),
          controlAffinity: ListTileControlAffinity.leading,
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: const Text('Remove Completed'), onPressed: () {}),
            ElevatedButton(
                child: const Text('Mark All Completed'), onPressed: () {})
          ],
        ),
      ],
    );
  }
}
