import 'package:flutter/material.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';
import 'package:thingsboard_app/widgets/time_picker-minutes.dart';

import '../../widgets/date_picker.dart';

class SettingsConfigPage extends TbPageWidget {
  SettingsConfigPage(TbContext tbContext, {Key? key})
      : super(tbContext, key: key);

  @override
  State<StatefulWidget> createState() {
    return _SettingsConfigPageState();
  }
}

class _SettingsConfigPageState extends TbPageState<SettingsConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Trang Cài Đặt Thông Số Máy',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF175C3B),
            ),
          ),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' SỐ PHÚT TƯỚI TỐI ĐA: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF175C3B),
                          ),
                        ),
                        SizedBox(width: 10),
                        TimerPicker()
                      ],
                    ),
                    SizedBox(height: 20),
                    DatePicker(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
