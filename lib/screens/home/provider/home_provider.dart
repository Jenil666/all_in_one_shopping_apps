import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier
{
  WebViewController? webViewController;

  List Logos = [
    "assets/logos/logo1.jpg",
    "assets/logos/logo2.jpg",
    "assets/logos/logo3.jpg",
    "assets/logos/logo4.jpg",
    "assets/logos/logo5.jpg",
    "assets/logos/logo6.jpg",
    "assets/logos/logo7.jpg",
    "assets/logos/logo8.jpg",
    "assets/logos/logo9.jpg",
    "assets/logos/logo10.jpg",
  ];
  List names = [
    "Reliance Mart",
    "La pinoz pizza",
    "meesho",
    "Flipcart",
    "Shopsy",
    "Macdonald",
    "Ali baba",
    "Amazon",
    "Dominoz",
    "Dmart",
  ];

  List urls = [
    "https://www.reliancedigital.in/",
    "https://lapinozpizza.in/",
    "https://www.meesho.com/",
    "https://www.flipkart.com/",
    "https://www.shopsy.in/",
    "https://www.mcdonalds.com/us/en-us.html",
    "https://www.alibaba.com/",
    "https://www.amazon.in/",
    "https://www.dominos.co.in/",
    "https://www.dmartindia.com/",
  ];


  void loadurl(int inde)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${urls[inde]}"),);
  }
}