import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:gemselections/newsLink/best-gemstones-brand-in-india.dart';
import 'package:gemselections/newsLink/articles.dart';

class InTheNewsPage extends StatefulWidget {
  @override
  _InTheNewsPageState createState() => _InTheNewsPageState();
}
 
class _InTheNewsPageState extends State<InTheNewsPage> {
  @override
  Widget build(BuildContext context) {

     return MainScaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "TV Show",
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FlatButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => bestGems(index: index,))),
                      child: Container(
                        height: 120.0,
                        width: 100.0,
                        child: Image.network(tvlogolist[index]),
                      ),
                    );
                  },
                  itemCount: tvlogolist.length,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Articles",
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FlatButton(
                      onPressed: () { Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Articles(index: index),
                          )
                      );
                      },
                      child: Container(
                        height: 220.0,
                        width: 100.0,
                        child: Image.network(Articles().newspaperlogolist[index]),
                      ),
                      );
                  },
                  itemCount: Articles().newspaperlogolist.length,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Print Media",
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: 120.0,
                        width: 100.0,
                        child: Image.network(printmedialogolist[index]),
                      ),
                    );
                  },
                  itemCount: printmedialogolist.length,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

List<String> tvlogolist = [
  'https://4.imimg.com/data4/GY/QT/MY-23977977/ruby-precious-gemstones-500x500.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/2/28/Aaj_tak_logo.png',
  'https://pbs.twimg.com/profile_images/810856439392665600/8I7dbPPZ_400x400.jpg',
  'https://simultv.com/wp-content/uploads/2018/12/etv-logo-2.png',
  'http://admin.risingkashmir.com/images/news/98591c53-1ff9-4978-b934-4382e8da0a3a.jpg',
  'http://bestmediainfo.com/uploads/2011/08/fever-fm-top.jpg',
  'https://apprecs.org/ios/images/app-icons/256/8c/510733452.jpg',
  'https://www.livelaw.in/h-upload/2019/02/05/358091-india-tv.jpg',
  'https://pbs.twimg.com/profile_images/864923635701604352/AhpKZ73b_400x400.jpg',
  'https://khannagems.com/pankajkhanna/wp-content/uploads/2018/06/Pt7-e-1.png',
  'data:image/png;base64,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',
  'http://mediakhabar.com/wp-content/uploads/2013/04/sahara-samay-logo.jpg',
  'https://images.adgully.com/img/400/2010-10-Meri-Saheli.jpg',
];



List<String> printmedialogolist = [
  'https://spiderimg.amarujala.com/assets/images/2018/09/03/750x506/amarujala_1535918602.jpeg',
  'https://spiderimg.amarujala.com/assets/images/2018/09/03/750x506/amarujala_1535918602.jpeg',
  'https://spiderimg.amarujala.com/assets/images/2018/09/03/750x506/amarujala_1535918602.jpeg',
  'https://spiderimg.amarujala.com/assets/images/2018/09/03/750x506/amarujala_1535918602.jpeg',
  'https://spiderimg.amarujala.com/assets/images/2018/09/03/750x506/amarujala_1535918602.jpeg',
];
