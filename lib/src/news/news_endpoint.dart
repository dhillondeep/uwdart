import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_endpoint.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/news/model/news_base.dart';
import 'package:uwdart/src/news/model/news_detailed.dart';
import 'package:uwdart/src/news/model/news_site.dart';

/// NewsEndpoint provides a wrapper around the raw news Endpoint from UW Open Data API
/// https://github.com/uWaterloo/api-documentation#news
class NewsEndpoint extends UWEndpoint {
  NewsEndpoint(Client client) : super(client);

  /// Returns a list of [NewsSite] model for all types of news gathered. There is no parameter that
  /// is needed because it contains a list of all the news there are. Only top 100.
  Future<List<NewsSite>> GetAllNews() async {
    return createRequest(client, [NEWS_ENDPOINT])
        .then((data) => new ResponseParser<NewsSite>().parse(data));
  }

  /// Returns a list of [NewsBase] model for all news based on the site provided. The site provided
  /// has to be a [String] like: "engineering". The max news are are 100.
  Future<List<NewsBase>> GetNewsBySite(String site) async {
    return createRequest(client, [NEWS_ENDPOINT, site])
        .then((data) => new ResponseParser<NewsBase>().parse(data));
  }

  /// Returns a [NewsDetailed] for all news based on the site and id provided. This is the most
  /// specific search and hence only one element is returned which contains the news in detailed.
  Future<NewsDetailed> GetNewsBySiteAndID(String site, int id) async {
    return createRequest(client, [NEWS_ENDPOINT, site, id.toString()])
        .then((data) => new ResponseParser<NewsDetailed>().parse(data)[0]);
  }
}
