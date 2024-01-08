import 'package:flutter/material.dart';

import 'appdata_words.dart';



class DisplayWord extends StatelessWidget {
  final AppDataWord appData;
  const DisplayWord({Key? key, required this.appData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTextStyle(
            style: TextStyle(
              fontSize: 25,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
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
                        appData.Word,
                        textAlign: TextAlign.center,

                      ))
                    ],
                  ),
                )
              ],
            )));
  }
}
