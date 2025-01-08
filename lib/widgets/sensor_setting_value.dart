import 'package:flutter/material.dart';

class SensorSettingsWidget extends StatefulWidget {
  final String title;
  double configValue;
  double realValue;
  SensorSettingsWidget(
      {Key? key,
      required this.title,
      required this.configValue,
      required this.realValue}) {}
  @override
  State<StatefulWidget> createState() {
    return _SensorSettingsWidgetState();
  }
}

class _SensorSettingsWidgetState extends State<SensorSettingsWidget> {
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.configValue.toString());
  }

  @override
  void didUpdateWidget(SensorSettingsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.text = widget.configValue.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF175C3B),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: SizedBox(
            width: 70,
            child: TextField(
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller:
                  TextEditingController(text: widget.configValue.toString()),
              onChanged: (value) {
                setState(() {
                  widget.configValue = double.parse(value);
                  _controller.text = widget.configValue.toString();
                });
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                alignLabelWithHint: true,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex:2,
          child: Text(
            widget.realValue.toString(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF175C3B),
            ),
          ),
        ),
      ],
    );
  }
}

class SensorIncreaDecreaSettingWidget extends StatefulWidget{
  final String title;
  int lowValue;
  int highValue;
  SensorIncreaDecreaSettingWidget(
      {Key? key,
        required this.title,
        required this.lowValue,
        required this.highValue}) {}
  @override
  State<StatefulWidget> createState() {
    return _SensorIncreaDecreaSettingWidgetState();
  }
}
class _SensorIncreaDecreaSettingWidgetState extends State<SensorIncreaDecreaSettingWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.lowValue.toString());
  }

  @override
  void didUpdateWidget(SensorIncreaDecreaSettingWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.text = widget.lowValue.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF175C3B),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: SizedBox(
            width: 70,
            child: TextField(
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller:
              TextEditingController(text: widget.lowValue.toString()),
              onChanged: (value) {
                setState(() {
                  widget.lowValue = int.parse(value) ;
                  _controller.text = widget.lowValue.toString();
                });
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                alignLabelWithHint: true,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: SizedBox(
            width: 70,
            child: TextField(
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller:
              TextEditingController(text: widget.highValue.toString()),
              onChanged: (value) {
                setState(() {
                  widget.highValue = int.parse(value);
                  _controller.text = widget.highValue.toString();
                });
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                alignLabelWithHint: true,
              ),
            ),
          ),
        ),
      ],
    );
  }
}