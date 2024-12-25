import 'package:flutter/material.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';

class SettingsListPage extends TbPageWidget {


  SettingsListPage(
    TbContext tbContext, {
    super.key,
  }) : super(tbContext);

  @override
  State<StatefulWidget> createState() => _SettingsListPageState();
}
class _SettingsListPageState extends TbPageState<SettingsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cài Đặt'),
      ),
      body: const Center(
        child: Text('Settings List Page'),
      ),
    );
  }
}