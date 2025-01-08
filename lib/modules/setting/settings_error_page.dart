import 'package:flutter/material.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';
import 'package:thingsboard_app/core/entity/entities_base.dart';

class SettingsErrorPage extends TbPageWidget {
   SettingsErrorPage(TbContext tbContext, {super.key}) : super(tbContext);

  @override
  State<StatefulWidget> createState() {
    return _SettingsErrorPageState();
  }
}
class _SettingsErrorPageState extends TbPageState<SettingsErrorPage> {
  final PageLinkController _pageLinkController = PageLinkController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang Cài Đặt Lỗi',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFBE060C),
          ),
        ),
      ),
      body: const Center(
        child: Text('Error'),
      ),
    );
  }
  @override
  void dispose() {
    _pageLinkController.dispose();
    super.dispose();
  }

}