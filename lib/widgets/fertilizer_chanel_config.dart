import 'package:flutter/material.dart';

class FertilizerChanelConfig extends StatefulWidget {
  final String title;
  int chanelValueA;
  int chanelValueB;
  int chanelValueC;
  int chanelValueD;
  FertilizerChanelConfig(
      {Key? key,
        required this.title,
        required this.chanelValueA,
        required this.chanelValueB,
        required this.chanelValueC,
        required this.chanelValueD}) {}
  @override

  State<StatefulWidget> createState() {
    return _FertilizerChanelConfigState();
  }
}
class _FertilizerChanelConfigState extends State<FertilizerChanelConfig> {
  late TextEditingController _controllerA;
  late TextEditingController _controllerB;
  late TextEditingController _controllerC;
  late TextEditingController _controllerD;


  @override
  void initState() {
    super.initState();
    _controllerA = TextEditingController(text: widget.chanelValueA.toString());
    _controllerB = TextEditingController(text: widget.chanelValueB.toString());
    _controllerC = TextEditingController(text: widget.chanelValueC.toString());
    _controllerD = TextEditingController(text: widget.chanelValueD.toString());
  }

  @override
  void didUpdateWidget(FertilizerChanelConfig oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controllerA.text = widget.chanelValueA.toString();
    _controllerB.text = widget.chanelValueB.toString();
    _controllerC.text = widget.chanelValueC.toString();
    _controllerD.text = widget.chanelValueD.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF175C3B),
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
                      TextEditingController(text: widget.chanelValueA.toString()),
                      onChanged: (value) {
                        setState(() {
                          widget.chanelValueA = int.parse(value);
                        });
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        alignLabelWithHint: true,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: 50,
                    child: TextField(
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      controller:
                      TextEditingController(text: widget.chanelValueB.toString()),
                      onChanged: (value) {
                        setState(() {
                          widget.chanelValueB = int.parse(value);
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
                    width: 50,
                    child: TextField(
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      controller:
                      TextEditingController(text: widget.chanelValueC.toString()),
                      onChanged: (value) {
                        setState(() {
                          widget.chanelValueC = int.parse(value);
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
                    width: 50,
                    child: TextField(
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      controller:
                      TextEditingController(text: widget.chanelValueD.toString()),
                      onChanged: (value) {
                        setState(() {
                          widget.chanelValueD = int.parse(value);
                        });
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        alignLabelWithHint: true,
                      ),
                    ),
                  ),
                ),
              ]
          )
        ]
    );
  }
}



