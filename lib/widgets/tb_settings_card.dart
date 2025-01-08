import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class TbSettingsCard extends StatelessWidget {
  final String cardTitle;
  final String cardImage;
  final String cardPath;
  final Function? onTap;

  const TbSettingsCard({
    Key? key,
    required this.cardTitle,
    required this.cardImage,
    required this.cardPath,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Card(
    //   margin: const EdgeInsets.all(8),
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(25.0),
    //   ),
    //   color: const Color(0xFFD8F8C3),
    //   child: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //        Image(
    //           image: AssetImage(cardImage),
    //           height: 100,
    //           width: 100,),
    //       ListTile(
    //         title:  Text(cardTitle,
    //             style: const TextStyle(
    //               fontSize: 24,
    //               fontWeight: FontWeight.bold,
    //               color: Color(0xFF175C3B),
    //             ),
    //             textAlign: TextAlign.center),
    //       ),
    //     ],
    //   ),
    // );
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!(); // Trigger the custom onTap function if provided
        } else {
          Navigator.pushNamed(
              context, cardPath); // Navigate to the specified path
        }
      },
      child: Card(
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: const Color(0xFFD8F8C3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage(cardImage),
              height: 100,
              width: 100,
            ),
            ListTile(
              title: Text(
                cardTitle,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF175C3B),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
