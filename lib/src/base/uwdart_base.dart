import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/data/model/api_response.dart';
import 'package:uwdart/src/endpoints/api/api_endpoint.dart';
import 'package:uwdart/src/endpoints/awards/awards_endpoint.dart';
import 'package:uwdart/src/endpoints/course/course_endpoint.dart';
import 'package:uwdart/src/endpoints/feds/feds_endpoint.dart';
import 'package:uwdart/src/endpoints/foodservices/foodservices_endpoint.dart';
import 'package:uwdart/src/endpoints/news/news_endpoint.dart';

/// Base class for UWDart
abstract class UWDartBase {
  Client _client;

  NewsEndpoint _newsEndpoint;
  AwardsEndpoint _awards;
  FedsEndpoint _fedsEndpoint;
  ApiEndpoint _apiEndpoint;
  CourseEndpoint _courseEndpoint;
  FoodServicesEndpoint _food;

  /// Initializes UWDart API. This is a base class and hence will depend on the
  /// child implementation
  UWDartBase(String key, http.Client client) : _client = new Client(key, client) {
    // initialize the endpoints
    _newsEndpoint = new NewsEndpoint(_client);
    _apiEndpoint = new ApiEndpoint(_client);
    _courseEndpoint = new CourseEndpoint(_client);
    _fedsEndpoint = new FedsEndpoint(_client);
    _awards = new AwardsEndpoint(_client);
    _food = new FoodServicesEndpoint(_client);
  }

  /// Close the connection for the Client. This is the responsibility of the user to close
  /// the connection at a right time. Failing to do so can cause the Dart process to hang.
  void close() {
    _client.httpClient.close();
  }

  /// This allows the user to make raw requests to the API and get an [APIResponse] object
  /// value pair. This is useful when testing the API. Otherwise built in API
  /// parsers must be used since they do all the heavy lifting for you.
  Future<APIResponse> makeRawRequest(String args, [Map<String, String> params = null]) async {
    final request = await CreateRequest(_client, args);

    // ignore: invalid_assignment
    APIResponse response = request[0];
    return response;
  }

  NewsEndpoint get news => _newsEndpoint;

  CourseEndpoint get course => _courseEndpoint;

  ApiEndpoint get api => _apiEndpoint;

  FedsEndpoint get feds => _fedsEndpoint;

  AwardsEndpoint get award => _awards;

  FoodServicesEndpoint get food => _food;
}
