import 'package:flutter/material.dart';
import 'package:flutter_quotes_theams_words/appData_quotes.dart';
import 'package:flutter_quotes_theams_words/displayquotes.dart';
import 'package:flutter_quotes_theams_words/navbar.dart';
import 'package:share_plus/share_plus.dart';

class PageViewQuotes extends StatefulWidget {
  const PageViewQuotes({Key? key}) : super(key: key);

  @override
  State<PageViewQuotes> createState() => _PageViewQuotesState();
}

class _PageViewQuotesState extends State<PageViewQuotes> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF9DD1DF),
        title: Text('Ikigai Book Quotes'),
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
            height: 200,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    print('--------->onpage changed');
                    print(index);
                    _selectedIndex = index;
                  });
                },
                itemCount: appDataQuotes.length,
                itemBuilder: (context, index) {
                  return DisplayQuote(
                    appData: appDataQuotes[index],
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
                        appDataQuotes.length.toString(),
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

    Share.share(appDataQuotes[_selectedIndex].quotes);

    print(appDataQuotes[_selectedIndex].quotes);
  }
}
