import 'package:flutter/material.dart';
import 'package:flutter_quotes_theams_words/appdata_themes.dart';

import 'package:flutter_quotes_theams_words/display_themes.dart';
import 'package:flutter_quotes_theams_words/navbar.dart';
import 'package:share_plus/share_plus.dart';

class PageViewThemes extends StatefulWidget {
  const PageViewThemes({Key? key}) : super(key: key);

  @override
  State<PageViewThemes> createState() => _PageViewThemesState();
}

class _PageViewThemesState extends State<PageViewThemes> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF9DD1DF),
        title: Text('Ikigai Book Themes'),
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
            height: 150,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    print('--------->onpage changed');
                    print(index);
                    _selectedIndex = index;
                  });
                },
                itemCount: appDataThemes.length,
                itemBuilder: (context, index) {
                  return DisplayThemes(
                    appData: appDataThemes[index],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: new Text(
                    (_selectedIndex + 1).toString() +
                        '/' +
                        appDataThemes.length.toString(),
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

    Share.share(appDataThemes[_selectedIndex].themes);

    print(appDataThemes[_selectedIndex].themes);
  }
}
