import 'package:flutter/material.dart';
import 'package:flutter_quotes_theams_words/navbar.dart';
import 'package:share_plus/share_plus.dart';

import 'appdata_words.dart';
import 'displayscreen_words.dart';

class PageViewWords extends StatefulWidget {
  const PageViewWords({Key? key}) : super(key: key);

  @override
  State<PageViewWords> createState() => _PageViewWordsState();
}

class _PageViewWordsState extends State<PageViewWords> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF9DD1DF),
        title: Text('Ikigai Book Words',

        ),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(value: 1, child: Text("Share")),
            ],
            onSelected: (value) {
              if (value == 1) {
                _shareInfo();
              }
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    print('--------->onpage changed');
                    print(index);
                    _selectedIndex = index;
                  });
                },
                itemCount: appDataWords.length,
                itemBuilder: (context, index) {
                  return DisplayWord(
                    appData: appDataWords[index],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: new Text(
                    (_selectedIndex + 1).toString() +
                        '/' +
                        appDataWords.length.toString(),
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF9DD1DF),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _shareInfo() {
    print('------>share');

    Share.share(appDataWords[_selectedIndex].Word);

    print(appDataWords[_selectedIndex].Word);
  }
}
