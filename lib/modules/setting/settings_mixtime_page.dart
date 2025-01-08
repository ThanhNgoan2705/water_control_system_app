import 'package:flutter/material.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';
import 'package:thingsboard_app/widgets/switch_mixtime.dart';
import 'package:thingsboard_app/widgets/time_picker-minutes.dart';

class SettingsMixTimePage extends TbPageWidget {
  SettingsMixTimePage(TbContext tbContext, {Key? key})
      : super(tbContext, key: key);
  bool isSwitched = true;
  @override
  State<StatefulWidget> createState() {
    return _SettingsMixTimePageState();
  }
}

class _SettingsMixTimePageState extends TbPageState<SettingsMixTimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TRANG CÀI ĐẶT TRỘN PHÂN',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF175C3B),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 10, width: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(width: 20),
                  const Text(
                    'TẮT',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF175C3B),
                    ),
                  ),
                  const SizedBox(width: 40),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Transform.scale(
                      scale: 2.5,
                      child: Switch(
                        value: widget.isSwitched,
                        onChanged: (bool value) {
                          setState(() {
                            widget.isSwitched = value;
                          });
                        },
                        activeTrackColor: Colors.orange,
                        activeColor: Colors.green,
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    'BẬT',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF175C3B),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  width: 600,
                  height: 500,
                  decoration: BoxDecoration(
                    color:  Colors.green[200],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'CÀI ĐẶT THỜI GIAN TRỘN ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFA65005),
                              ),
                            ),
                            TimerPicker(),
                          ],
                        ),
                        const SizedBox(height: 30),
                        SwitchMixtime(
                          title: 'LẦN 1',
                          value: true,
                        ),
                        const SizedBox(height: 30),
                        SwitchMixtime(
                          title: 'LẦN 2',
                          value: true,
                        ),
                        const SizedBox(height: 30),
                        SwitchMixtime(
                          title: 'LẦN 3',
                          value: true,
                        ),
                        const SizedBox(height: 30),
                        SwitchMixtime(
                          title: 'LẦN 4',
                          value: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
