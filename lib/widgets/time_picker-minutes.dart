import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TimerPicker extends StatefulWidget {
  const TimerPicker({super.key});

  @override
  State<TimerPicker> createState() => _TimerPickerState();
}

class _TimerPickerState extends State<TimerPicker> {
  Duration duration = const Duration(hours: 1, minutes: 23);
  // short duration in minutes
  int get durationInMinutes => duration.inMinutes;

  // This shows a CupertinoModalPopup with a reasonable fixed height which hosts
  // a CupertinoTimerPicker.
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The bottom margin is provided to align the popup above the system
        // navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.transparent,
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _TimerPickerItem(
                children: <Widget>[
                  CupertinoButton(
                    // Display a CupertinoTimerPicker with hour/minute mode.
                    onPressed: () => _showDialog(
                      CupertinoTimerPicker(
                        mode: CupertinoTimerPickerMode.hm,
                        initialTimerDuration: duration,
                        // This is called when the user changes the timer's
                        // duration.
                        onTimerDurationChanged: (Duration newDuration) {
                          setState(() =>  duration = newDuration);
                        },
                      ),
                    ),
                  minSize: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      '$durationInMinutes phút',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}

// This class simply decorates a row of widgets.
class _TimerPickerItem extends StatelessWidget {
  const _TimerPickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: CupertinoColors.transparent,
            width: 0.0,
          ),
          bottom: BorderSide(
            color: CupertinoColors.transparent,
            width: 0.0,
          ),
        ),
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
    );
  }
}

