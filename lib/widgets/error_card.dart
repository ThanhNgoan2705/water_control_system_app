import 'package:flutter/material.dart';

class ErrorCard extends StatefulWidget {
  final List<String> messages;
  const ErrorCard({super.key, required this.messages});

 @override
  State<StatefulWidget> createState() {
    return _ErrorCardState();
  }
}
class _ErrorCardState extends State<ErrorCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            for (var message in widget.messages)
              Text(
                message,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: (){
                  setState(() {

                  });
                },
                child: Image(image: AssetImage('assets/images/refresh.png')))
          ],
        ),
      ),
    );
  }
}
