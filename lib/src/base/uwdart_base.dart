import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/data/api_request.dart' as request;
import 'package:uwdart/src/data/model/api_response.dart' as response;
import 'package:uwdart/src/endpoints/api/api_endpoint.dart';
import 'package:uwdart/src/endpoints/awards/awards_endpoint.dart';
import 'package:uwdart/src/endpoints/course/course_endpoint.dart';
import 'package:uwdart/src/endpoints/feds/feds_endpoint.dart';
import 'package:uwdart/src/endpoints/news/news_endpoint.dart';

abstract class UWDartBase {
  Client _client;

  NewsEndpoint _newsEndpoint;
  AwardsEndpoint _awards;
  FedsEndpoint _fedsEndpoint;
  ApiEndpoint _apiEndpoint;
  CourseEndpoint _courseEndpoint;

  /// Initializes UWDart API. This is a base class and hence will depend on the
  /// child implementation
  UWDartBase(String key, http.Client client) : _client = new Client(key, client) {
    // initialize the endpoints

    _newsEndpoint = new NewsEndpoint(_client);
    _apiEndpoint = new ApiEndpoint(_client);
    _courseEndpoint = new CourseEndpoint(_client);
    _fedsEndpoint = new FedsEndpoint(_client);
    _awards = new AwardsEndpoint(_client);
  }

  /// Close the connection for the Client. This is the responsibility of the user to close
  /// the connection at a right time. Failing to do so can cause the Dart process to hang.
  void close() {
    _client.httpClient.close();
  }

  /// This allows the user to make raw requests to the API and get an [response.APIResponse] object
  /// value pair. This is useful when testing the API. Otherwise built in API
  /// parsers must be used since they do all the heavy lifting for you.
  Future<response.APIResponse> makeRawRequest(List<String> args, [List<String> filter = null]) {
    return request.CreateRequest(_client, args).catchError((error) => throw error);
  }

  NewsEndpoint get news => _newsEndpoint;

  CourseEndpoint get course => _courseEndpoint;

  ApiEndpoint get api => _apiEndpoint;

  FedsEndpoint get feds => _fedsEndpoint;

  AwardsEndpoint get award => _awards;
}
