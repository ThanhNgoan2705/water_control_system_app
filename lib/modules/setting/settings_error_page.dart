import 'package:flutter/material.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';
import 'package:thingsboard_app/core/entity/entities_base.dart';
import 'package:thingsboard_app/widgets/double_value_setting.dart';
import 'package:thingsboard_app/widgets/int_value_setting.dart';

class SettingsErrorPage extends TbPageWidget {
  SettingsErrorPage(TbContext tbContext, {super.key}) : super(tbContext);

  @override
  State<StatefulWidget> createState() {
    return _SettingsErrorPageState();
  }

  bool isSwitched = true;
  String message = 'Lỗi kết nối đến máy chủ';
}

class _SettingsErrorPageState extends TbPageState<SettingsErrorPage> {
  final PageLinkController _pageLinkController = PageLinkController();
  List<String> cate = <String>['EC', 'PH', 'ÁP SUẤT'];
  List<String> chanels = <String>['Kênh AC', 'Kênh BD', 'Kênh pH'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Trang Cài Đặt Lỗi',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFBE060C),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // create list Text with cate
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(width: 120),
                  for (var item in cate)
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF175C3B),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              OnOffSwitch(title: 'CẢNH BÁO'),
              OnOffSwitch(title: 'BÁO LỖI'),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        'TIME',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF175C3B),
                        ),
                      ),
                    ),
                  ),
                  IntSettingValue(configValue: 300),
                  IntSettingValue(configValue: 300),
                  IntSettingValue(configValue: 300),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        'DƯỚI',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF175C3B),
                        ),
                      ),
                    ),
                  ),
                  DoubleSettingValue(configValue: 0.3),
                  DoubleSettingValue(configValue: 0.4),
                  DoubleSettingValue(configValue: 0.3),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        'TRÊN',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF175C3B),
                        ),
                      ),
                    ),
                  ),
                  DoubleSettingValue(configValue: 0.3),
                  DoubleSettingValue(configValue: 0.4),
                  DoubleSettingValue(configValue: 0.3),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(width: 60),
                  for (var item in chanels)
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF175C3B),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              OnOffSwitch(title: 'CẢNH BÁO'),
              OnOffSwitch(title: 'BÁO LỖI'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        'SỐ XUNG',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF175C3B),
                        ),
                      ),
                    ),
                  ),
                  IntSettingValue(configValue: 300),
                  IntSettingValue(configValue: 300),
                  IntSettingValue(configValue: 300),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageLinkController.dispose();
    super.dispose();
  }
}

class OnOffSwitch extends StatefulWidget {
  late bool isSwitched = true;
  final String title;
  OnOffSwitch({super.key, required this.title});
  @override
  State<StatefulWidget> createState() {
    return _OnOffSwitchState();
  }
}

class _OnOffSwitchState extends State<OnOffSwitch> {
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
        const SizedBox(width: 30),
        Expanded(
          flex: 2,
          child: SizedBox(
            width: 60,
            height: 60,
            child: Transform.scale(
              scale: 1.7,
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
        ),
        const SizedBox(width: 30),
        Expanded(
          flex: 2,
          child: SizedBox(
            width: 50,
            height: 60,
            child: Transform.scale(
              scale: 1.7,
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
        ),
        const SizedBox(width: 30),
        Expanded(
            flex: 2,
            child: SizedBox(
              width: 50,
              height: 60,
              child: Transform.scale(
                scale: 1.7,
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
            )),
      ],
    );
  }
}
