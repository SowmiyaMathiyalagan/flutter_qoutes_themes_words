import 'package:flutter/material.dart';

import 'appdata_themes.dart';




class DisplayThemes extends StatelessWidget {
  final AppDataThemes appData;

  const DisplayThemes({Key? key, required this.appData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: 20,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                width: 400,
                decoration: BoxDecoration(
                  color: Color(0xFF9DD1DF),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Text(
                    appData.themes,
                    textAlign: TextAlign.center,

                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
