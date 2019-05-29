import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:gemselections/Pages/inthenewspage.dart';
import 'dart:convert';


//class TvShows extends StatelessWidget{
//
//  int index;
//
//  TvShows({this.index});
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return MaterialApp(
//        home: Scaffold(
//          appBar: AppBar(
//            title: Text('GemSelection'),
//            leading: IconButton(
//                icon: Icon(Icons.arrow_back),
//                onPressed: () => Navigator.pop(context, false)),
//          ),
//          body: ListView(
//            reverse: false,
//            children: <Widget>[
//              Container(
//                padding: EdgeInsets.all(20.0),
//                child: Image.network(tvlogolist[index]),
//              ),
//              Content(context, index),
////            Expanded(
////              child: ,
////            )
//              RaisedButton(
//                  child: Text('Read more'),
//                  color: Colors.blue[500],
//                  textColor: Colors.white,
//                  onPressed: () => Navigator.push(
//                      context,
//                      MaterialPageRoute(
//                          builder: (context) => bestGems(
//                            index: index,
//                          )))),
//
////            RaisedButton(
////              onPressed: () => initiate(),
////            )
//            ],
//          ),
//        ),
//      );
//    }

//    Widget Content(BuildContext context, int item) {
//      return Container(
//        child: FutureBuilder(
//          future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
//          builder: (context, snapshot) {
//            var data = json.decode(snapshot.data.toString());
//            return new ListView.builder(
//              scrollDirection: Axis.vertical,
//              shrinkWrap: true,
//              itemBuilder: (BuildContext context, int index) {
//                return new Container(
//                  padding: EdgeInsets.all(20.0),
//                  child: Text(
//                    '${data[item]["text"]}',
//                    style: TextStyle(fontSize: 20.0),
//                  ),
//                  alignment: Alignment.centerRight,
//                );
//              },
//              itemCount: data == null ? 0 : 1,
//            );
//          },
//        ),
//      );
//    }
//}
class bestGems extends StatelessWidget{

  int index;

  bestGems({this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<String> newsLinks = ['gem-selections-awarded-as-the-best-gemstones-brand-in-india/','dilli-aaj-tak-cliping-of-mr-pankaj-khanna/','entrepreneur-india-video/','etv-naari/','etv-urdu/','fever-104-fm/','india-today/','mr-pankaj-khannas-interview-with-siddharth-kannan/','rudraksha-episodes/','sadhna-tv/','sahara-samay/','star-plus-meri-saheli/'];

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context, false)),
          ),
          body: WebviewScaffold(
            url: 'https://khannagems.com/pankajkhanna/' + '${newsLinks[index]}',
          ),
        ),
    );
  }

}

