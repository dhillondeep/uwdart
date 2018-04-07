import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_api.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/data/response_parser.dart';
import 'package:uwdart/src/news/model/news_base.dart';
import 'package:uwdart/src/news/model/news_detailed.dart';
import 'package:uwdart/src/news/model/news_site.dart';

/// NewsAPI provides a wrapper around the raw news API from UW
/// https://github.com/uWaterloo/api-documentation#news
class NewsAPI extends UWApi {
  NewsAPI(Client client) : super(client);

  /// Returns a list of [NewsSite] model for all types of news gathered. There is no parameter that
  /// is needed because it contains a list of all the news there are. Only top 100.
  Future<List<NewsSite>> GetAllNews() async {
    return createRequest(client, [NEWS_ENDPOINT]).then((data) {
      return new ResponseParser<NewsSite>(data).parse(new NewsSite());
    });
  }

  /// Returns a list of [NewsBase] model for all news based on the site provided. The site provided
  /// has to be a [String] like: "engineering". The max news are are 100.
  Future<List<NewsBase>> GetNewsBySite(String site) async {
    return createRequest(client, [NEWS_ENDPOINT, site]).then((data) {
      return new ResponseParser<NewsBase>(data).parse(new NewsBase());
    });
  }

  /// Returns a [NewsDetailed] for all news based on the site and id provided. This is the most
  /// specific search and hence only one element is returned which contains the news in detailed.
  Future<NewsDetailed> GetNewsBySiteAndID(String site, int id) async {
    return createRequest(client, [NEWS_ENDPOINT, site, id.toString()]).then((data) {
      return new ResponseParser<NewsDetailed>(data).parse(new NewsDetailed())[0];
    });
  }
}
