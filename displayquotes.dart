import 'package:flutter/material.dart';

import 'appData_quotes.dart';




class DisplayQuote extends StatelessWidget {
  final AppDataQuotes appData;
  const DisplayQuote({Key? key, required this.appData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: TextStyle(
          fontSize: 20,
        ),
        child:Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                width: 350,
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
                      appData.quotes,
                      textAlign: TextAlign.center,

                    ),

                  ),
                ],
              ),
            )
          ],
        )
    );

  }
}
