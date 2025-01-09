

import 'package:flutter/material.dart';

class DoubleSettingValue extends StatefulWidget{
  double configValue;
  DoubleSettingValue({Key? key, required this.configValue}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _DoubleSettingValueState();
  }
}
class _DoubleSettingValueState extends State<DoubleSettingValue>{
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.configValue.toString());
  }
  @override
  void didUpdateWidget(DoubleSettingValue oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.text = widget.configValue.toString();
  }
  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        flex: 1,
        child: SizedBox(
          width: 30,
          child: TextField(
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF175C3B),
            ),
            controller:
            TextEditingController(
              text: widget.configValue.toString(),
            ),
            onChanged: (value) {
              setState(() {
                widget.configValue = double.parse(value);
              });
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
              alignLabelWithHint: true,
            ),
          ),
        ),
      );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}