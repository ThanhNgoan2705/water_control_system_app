import 'package:flutter/material.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';

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
        title: const Text('Trang Cài Đặt Thông Số',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF175C3B),
          ),
        ),
      ),
      body: const Center(
        child: Text('Settings EC'),
      ),
    );
  }
}