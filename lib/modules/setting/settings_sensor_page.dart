
import 'package:flutter/material.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';
import 'package:thingsboard_app/widgets/sensor_setting_value.dart';

class SettingsSensorPage extends TbPageWidget {
  SettingsSensorPage(TbContext tbContext, {Key? key}) : super(tbContext, key: key);
  @override
  State<StatefulWidget> createState() {
    return _SettingsSensorPageState();
  }
}
class _SettingsSensorPageState extends TbPageState<SettingsSensorPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang Cài Đặt Cảm Biến',
          style: TextStyle(
            fontSize: 24,
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
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 100),
                    Text(
                      'Giá Trị Chỉnh',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Giá Trị Thực Tế',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // table increment decrement value
               SensorSettingsWidget(title: 'EC', configValue: 0.0, realValue: 0.0),
                const SizedBox(height: 20),
                SensorSettingsWidget(title: 'PH', configValue: 0.0, realValue: 0.0),
                const SizedBox(height: 20),
                SensorSettingsWidget(title: 'Áp Suất', configValue: 0.0, realValue: 0.0),
                const SizedBox(height: 20),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(width: 100),
                    Text(
                      'Giá Trị Thấp',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Text(
                      'Giá Trị Cao',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // table increment decrement value
                SensorIncreaDecreaSettingWidget(title: 'EC', lowValue: 780, highValue: 3200),
                const SizedBox(height: 20),
                SensorIncreaDecreaSettingWidget(title: 'PH', lowValue: 0, highValue: 14),
                const SizedBox(height: 20),
                SensorIncreaDecreaSettingWidget(title: 'Áp Suất', lowValue: 0, highValue: 100),
              ],
            ),
          ),
        ));
  }
}