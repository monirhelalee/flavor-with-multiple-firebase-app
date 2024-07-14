import 'package:flavor_example/global.dart';

class Urls {
  ///base url
  static String get baseUrl => Global.baseUrl;
  //production
  static String prodBaseUrl = 'http://prod.com/';
  //development
  static String devBaseUrl = 'http://dev.com';
  //staging
  static String stgBaseUrl = 'http://stg.com/';
}
