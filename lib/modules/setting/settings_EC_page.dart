import 'package:flutter/material.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';
import 'package:thingsboard_app/core/entity/entities_base.dart';
import 'package:thingsboard_app/widgets/ec_setting_value.dart';

class SettingsECPage extends TbPageWidget {
  SettingsECPage(TbContext tbContext, {Key? key}) : super(tbContext, key: key);
  @override
  State<StatefulWidget> createState() {
    return _SettingsECPageState();
  }
}

class _SettingsECPageState extends TbPageState<SettingsECPage> {
  final PageLinkController _pageLinkController = PageLinkController();
  late double numEc = 0.0;
  late double totalABWeight = 0.0;
  late double totalCDWeight = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Trang Cài Đặt EC',
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
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'EC NƯỚC:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {
                            numEc = double.parse(value);
                          });
                        },
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF175C3B),
                        ),
                        decoration: InputDecoration(
                          hintText: numEc.toString(),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'mS',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'TỔNG SỐ KG PHÂN BỒN AB:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {
                            totalABWeight = double.parse(value);
                          });
                        },
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF175C3B),
                        ),
                        decoration: InputDecoration(
                          hintText: totalABWeight.toString(),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Kg',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'TỔNG SỐ KG PHÂN BỒN CD:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {
                            totalCDWeight = double.parse(value);
                          });
                        },
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF175C3B),
                        ),
                        decoration: InputDecoration(
                          hintText: totalCDWeight.toString(),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Kg',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'CÀI ĐẶT GIÁ TRỊ EC CHO TỪNG KHU',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF175C3B),
                  ),
                ),
                const SizedBox(height: 25),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                     SizedBox(width: 75),
                    Text(
                      'Tăng',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                     SizedBox(width: 50),
                    Text(
                      'Giá Trị',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF175C3B),
                      ),
                    ),
                     SizedBox(width: 55),
                    Text(
                      'Giảm',
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
                ECSettingsWidget(title: 'Khu 1', value: 0.0),
                const SizedBox(height: 20),
                ECSettingsWidget(title: 'Khu 2', value: 0.0),
                const SizedBox(height: 20),
                ECSettingsWidget(title: 'Khu 3', value: 0.0),
                const SizedBox(height: 20),
                ECSettingsWidget(title: 'Khu 4', value: 0.0),
              ],
            ),
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
