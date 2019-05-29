import 'package:flutter/material.dart';
import 'articlesReadMore.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';
//import 'assets/data.json';

class Articles extends StatelessWidget {
  int index;

  Articles({this.index});

  List<String> newspaperlogolist = [
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/art2.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/733257-gold-zee.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/light-up-2018-11-04.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/GOLD-875.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/733257-gold-zee.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/66513718.jpeg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/gold-jewellery3_152395296.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2018/07/pankajkhanna.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/gold-jewellery3_152395296.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/gold_prices_on_17_april_2018_1523969211.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/AstroDose_Aug07.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/dc-Cover-1b1lggj3ufl2iut7vo1i2u44d4-20180413141131.Medi_.jpeg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/66513718.jpeg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/13.jpeg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/2019-01-31.png',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/6f37caf002c35ab7d102dd0bf4a8b296.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/c9b251b4f8073525ad3b2b1d24def6e9.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/397b66cf9fea3f10cba1a3f52f44fbc3.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/13.jpeg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/dhanteras_reuters-1.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/6f37caf002c35ab7d102dd0bf4a8b296.jpg',
    'https://khannagems.com/pankajkhanna/wp-content/uploads/2019/01/belmont-mine-emerald-finds.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GemSelection'),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false)),
        ),
        body: ListView(
          reverse: false,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.network(newspaperlogolist[index]),
            ),
            Content(context, index),
//            Expanded(
//              child: ,
//            )
            RaisedButton(
                child: Text('Read more'),
                color: Colors.blue[500],
                textColor: Colors.white,
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ArticlesReadMore(
                              url: ArticlesReadMore().ArticlesUrls[index],
                            )))),

//            RaisedButton(
//              onPressed: () => initiate(),
//            )
          ],
        ),
      ),
    );
  }

  Widget Content(BuildContext context, int item) {
    return Container(
      child: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
        builder: (context, snapshot) {
          var data = json.decode(snapshot.data.toString());
          return new ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return new Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '${data[item]["text"]}',
                  style: TextStyle(fontSize: 20.0),
                ),
                alignment: Alignment.centerRight,
              );
            },
            itemCount: data == null ? 0 : 1,
          );
        },
      ),
    );
  }
}
