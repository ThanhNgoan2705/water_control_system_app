import 'package:flutter/material.dart';

class ECSettingsWidget extends StatefulWidget {
  final String title;
  double value;
  ECSettingsWidget({super.key, required this.title, required this.value}) {
    value = value.clamp(-20.0, 20.0);
  }
  @override
  State<StatefulWidget> createState() {
    return _ECSettingsWidgetState();
  }
}

class _ECSettingsWidgetState extends State<ECSettingsWidget> {
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.value.toString());
  }

  @override
  void didUpdateWidget(ECSettingsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.text = widget.value.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF175C3B),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: 60,
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
            ),
            onPressed: () {
              setState(() {
                widget.value = (widget.value + 1.0).clamp(-20.0, 20.0);
                _controller.text = widget.value.toString();
              });
            },
            child: const SizedBox(
              width: 30,
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.green,
                  weight: 200,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: 100,
          child: TextField(
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            controller: TextEditingController(text: widget.value.toString()),
            onChanged: (value) {
              setState(() {
                double parsedValue = double.tryParse(value) ?? widget.value;
                widget.value = parsedValue.clamp(-20.0, 20.0);
                _controller.text = widget.value.toString();
              });
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
              alignLabelWithHint: true,
            ),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: 60,
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
            ),
            onPressed: () {
              setState(() {
                widget.value = (widget.value - 1.0).clamp(-20.0, 20.0);
                _controller.text = widget.value.toString();
              });
            },
            child: const SizedBox(
              width: 30,
              child: Center(
                child: Icon(
                  Icons.remove,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
