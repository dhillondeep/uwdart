import 'dart:async';

import 'package:uwdart/src/endpoints/api/model/api_changelog.dart';
import 'package:uwdart/src/endpoints/api/model/api_method.dart';
import 'package:uwdart/src/endpoints/api/model/api_service.dart';
import 'package:uwdart/src/endpoints/api/model/api_usage.dart';
import 'package:uwdart/src/endpoints/api/model/api_version.dart';
import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_endpoint.dart';
import 'package:uwdart/src/data/api_request.dart';

/// ApiEndpoint provides a wrapper around the raw Api Endpoints from UW Open Data API
/// https://github.com/uWaterloo/api-documentation#api
class ApiEndpoint extends UWEndpoint {
  ApiEndpoint(Client client) : super(client);

  /// Get's the usage of API by the user of the key and provides an [ApiUsage] object
  /// that contains information regarding that.
  Future<ApiUsage> getUsage() async {
    return createRequest(client, [API_USAGE_ENDPOINT])
        .then((data) => new ResponseParser<ApiUsage>().parse(data)[0]);
  }

  /// Get's the services that are available through UW Open data API and it provides
  /// a list of [ApiService] objects that contain information regarding that.
  Future<List<ApiService>> getServices() async {
    return createRequest(client, [API_SERVICES_ENDPOINT])
        .then((data) => new ResponseParser<ApiService>().parse(data));
  }

  /// Get's the methods that are available that are available for all the services. It provides
  /// a list of [ApiMethod] objects that contain information regarding that.
  Future<List<ApiMethod>> getMethods() async {
    return createRequest(client, [API_METHODS_ENDPOINT])
        .then((data) => new ResponseParser<ApiMethod>().parse(data));
  }

  /// Get's the versions of API as it has progressed throughout the years. It provides a list
  /// of [ApiVersion] objects that contain information regarding that.
  Future<List<ApiVersion>> getVersions() async {
    return createRequest(client, [API_VERSIONS_ENDPOINT])
        .then((data) => new ResponseParser<ApiVersion>().parse(data));
  }

  /// Get's the change logs as the API has developed throughout the years. It provides a list
  /// of [ApiChangelog] objects that contain information regarding that.
  Future<List<ApiChangelog>> getChangelog() async {
    return createRequest(client, [API_CHANGELOG_ENDPOINT])
        .then((data) => new ResponseParser<ApiChangelog>().parse(data));
  }
}