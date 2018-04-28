import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_endpoint.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/endpoints/news/model/news.dart';
import 'package:uwdart/src/endpoints/news/model/news_base.dart';
import 'package:uwdart/src/endpoints/news/model/news_detailed.dart';
import 'package:uwdart/src/endpoints/news/model/news_site.dart';

/// NewsEndpoint provides a wrapper around the raw news Endpoint from UW Open Data API
/// https://github.com/uWaterloo/api-documentation#news
class NewsEndpoint extends UWEndpoint {
  NewsEndpoint(Client client) : super(client);

  /// Returns a list of [NewsSite] models for all types of news gathered. There is no parameter that
  /// is needed because it contains a list of all the news there are. Only top 100.
  Future<List<NewsSite>> GetNews() async {
    return new Fetcher(NewsSite.serializer, client).fetch([NEWS_ENDPOINT]);
  }

  /// Returns a list of [NewsBase] models for all news based on the site provided. The site provided
  /// has to be a [String] like: "engineering". The max news are are 100.
  Future<List<News>> GetNewsBySite(String site) async {
    return new Fetcher(News.serializer, client).fetch([NEWS_ENDPOINT, site]);
  }

  /// Returns a [NewsDetailed] for all news based on the site and id provided. This is the most
  /// specific search and hence only one element is returned which contains the news in detailed.
  Future<NewsDetailed> GetNewsBySiteAndID(String site, String id) async {
    return new Fetcher(NewsDetailed.serializer, client).fetchSingle([NEWS_ENDPOINT, site, id]);
  }
}
