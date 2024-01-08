import 'package:flutter/material.dart';
import 'package:flutter_quotes_theams_words/pageview_words.dart';
import 'package:flutter_quotes_theams_words/pageviewquotes.dart';
import 'package:flutter_quotes_theams_words/pageviewthemes.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text(
                'Ikigai',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              accountEmail: Text(
                'Version 1.0',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            currentAccountPicture: ClipOval(
              child: Image.asset('images/image12.jpg',
              width: 100,
                height:100,
                fit: BoxFit.cover,
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/backgroudimage.jpg',
                ),
              ),
            ),


          ),
          ListTile(
            title: Text('Quotes',
            style: TextStyle(
              color: Colors.black,
            ),
            ),
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=> PageViewQuotes()));
            },
          ),
          ListTile(
            title: Text('Themes',
            style: TextStyle(
              color: Colors.black,
            ),
            ),
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> PageViewThemes()));
            },
          ),
          ListTile(
            title: Text('Words',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> PageViewWords()));
            },
          )
        ],
      ),
    );
  }
}
