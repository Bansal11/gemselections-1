import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/material.dart';

class ArticlesReadMore extends StatelessWidget{

  List<String> ArticlesUrls = [
    'https://www.business-standard.com/article/news-ani/gem-selections-launches-exclusive-customer-centric-online-services-119012300937_1.html',
    'http://www.businessworld.in/article/How-Gems-Jewellery-Sector-Plays-A-Significant-Role-In-The-Indian-Economy/03-06-2018-150508/',
    'https://economictimes.indiatimes.com/markets/commodities/news/gold-glitters-on-dhanteras-despite-high-prices-sales-rise-15/articleshow/66514006.cms',
    'https://www.dailypioneer.com/2018/sunday-edition/light-up.html',
    'https://in.news.yahoo.com/gem-selections-launches-ai-enabled-astro-dose-astrological-074726322.html',
    'https://www.bloombergquint.com/markets/high-prices-take-sheen-off-gold-sales-on-dhanteras-2#gs.OKknqIo',
    'https://www.firstpost.com/business/gold-glitters-on-dhanteras-despite-rise-in-prices-on-fears-of-further-hike-sales-up-15-after-a-sluggish-start-5509141.html',
    'http://www.businessworld.in/article/Gold-glitters-on-Dhanteras-festival-sales-up-15-/05-11-2018-163730/',
    'https://zeenews.india.com/bullion/gold-glitters-on-dhanteras-despite-high-prices-sales-up-15-2153301.html',
    'https://timesofindia.indiatimes.com/business/india-business/gold-glitters-on-dhanteras-despite-high-prices-sales-up-15-pc/articleshow/66513718.cms',
    'https://www.financialexpress.com/market/commodities/gold-glitters-on-dhanteras-sales-jump-15-despite-high-prices/1373699/',
    'https://www.outlookindia.com/newsscroll/gold-glitters-on-dhanteras-festival-sales-up-15/1416472',
    'https://economictimes.indiatimes.com/markets/commodities/news/spike-in-diamond-jewellery-demand-on-diwali/articleshow/66523982.cms',
    'https://khabar.ndtv.com/news/business/steps-to-take-care-of-while-purchasing-gold-on-akshaya-tritiya-1838518',
    'https://www.patrika.com/business-expert-column/before-buying-gold-at-akshaya-tritiya-2018-know-this-important-thing/',
    'https://money.bhaskar.com/news/MON-MARK-COMM-GOL-ECNM-infog-always-remember-these-things-during-gold-jewellery-purchasing-5853723-PHO.html',
    'https://www.livehindustan.com/business/story-gold-prices-go-up-before-the-akshaya-tritiya-read-the-hallmark-while-purchasing-1909181.html',
    'https://in.news.yahoo.com/gem-selections-launches-ai-enabled-astro-dose-astrological-074726322.html',
    'https://www.aninews.in/news/tech/mobile/gem-selections-launches-ai-enabled-astro-dose-for-astrological-analysis201808071316190002/',
    'https://www.outlookindia.com/newsscroll/gem-selections-launches-ai-enabled-astro-dose-for-astrological-analysis/1363959/?next',
    'https://www.deccanchronicle.com/lifestyle/fashion-and-beauty/130418/5-steps-to-know-if-a-gemstone-is-actually-real.html',
    'https://www.huewire.com/gold-glitters-on-dhanteras-despite-high-prices-sales-up-15/',
    'https://forextv.com/xauusd-gold-us-dollar/gold-glitters-on-dhanteras-sales-jump-15-despite-high-prices/',
    'https://news.franchiseindia.com/content/gem-selections-to-venture-into-bullion-industry.n16902',
    'https://www.news18.com/news/lifestyle/find-your-perfect-gemstone-this-dhanteras-1929373.html',
    'https://www.apnnews.com/ten-gemstones-to-removes-hurdles-in-your-path-and-bring-prosperity-and-happiness-in-your-life/',
    'https://news.webindia123.com/news/Articles/India/20181017/3456744.html',
    'http://www.uniindia.com/gem-selections-to-expand-through-bullion-business-in-india/business-economy/news/1381338.html',
    'https://www.business-standard.com/article/news-ians/find-your-perfect-gemstone-this-dhanteras-118110400030_1.html',
    'https://www.wefornews.com/dhanteras-2018-diwali-heres-perfect-gemstones/',
    'https://in.style.yahoo.com/diwali-dhanteras-2018-perfect-gemstone-083133987.html',
    'https://m.dailyhunt.in/news/india/english/news24+english-epaper-newstwen/quick+tips+for+finding+your+perfect+gemstone+this+dhanteras-newsid-100791488',
    'http://newztoday.net/find-your-perfect-gemstone-this-dhanteras/',
    'https://www.aajkikhabar.com/en/234908/dhanteras-2018-find-your-perfect-gemstone-this-dhanteras/',
    'https://www.socialnews.xyz/2018/11/03/find-your-perfect-gemstone-this-dhanteras/',
    'http://www.orissapost.com/find-your-perfect-gemstone-this-dhanteras/',
  ];

  final String url;

  ArticlesReadMore({this.url});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('GemSelection'),
            leading: IconButton(icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context, false)),
          ),
          body: WebviewScaffold(
            url: url,
          ),
        )
    );
  }

}