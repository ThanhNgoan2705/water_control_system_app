import 'package:flutter/material.dart';
import 'package:thingsboard_app/widgets/time_picker_hour_minutes.dart';

class SwitchMixtime extends StatefulWidget {
  final String title;
  bool value;
  SwitchMixtime({super.key, required this.title, required this.value});
  @override
  State<StatefulWidget> createState() {
    return _SwitchMixtimeState();
  }
}
class _SwitchMixtimeState extends State<SwitchMixtime> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(width: 20),
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF175C3B),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: 120,
          height: 60,
          child: Transform.scale(
            scale: 2.0,
            child: Switch(
              value: widget.value,
              onChanged: (bool value) {
                setState(() {
                  widget.value = value;
                });
              },
              activeTrackColor: Colors.orange ,
              activeColor: Colors.green,
            ),
          ),
        ),
        const TimerPickerHourMinutes(),
      ],
    );
  }
}