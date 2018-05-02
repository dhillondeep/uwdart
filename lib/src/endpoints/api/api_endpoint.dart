import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_endpoint.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/data/data_response.dart';
import 'package:uwdart/src/endpoints/api/model/api_changelog.dart';
import 'package:uwdart/src/endpoints/api/model/api_method.dart';
import 'package:uwdart/src/endpoints/api/model/api_service.dart';
import 'package:uwdart/src/endpoints/api/model/api_usage.dart';
import 'package:uwdart/src/endpoints/api/model/api_version.dart';

/// ApiEndpoint provides a wrapper around the raw Api Endpoints from UW Open Data API
/// https://github.com/uWaterloo/api-documentation#api
class ApiEndpoint extends UWEndpoint {
  ApiEndpoint(Client client) : super(client);

  /// Get's the usage of API by the user of the key and provides an [ApiUsage] object, wrapped
  /// inside [DataResponse], that contains information regarding that.
  Future<DataResponse<ApiUsage>> getUsage() async {
    return new SingleFetcher<ApiUsage>(ApiUsage.serializer, client).apply(API_USAGE_ENDPOINT);
  }

  /// Get's the services that are available through UW Open data API and it provides
  /// a list of [ApiService], wrapped inside [DataResponse], objects that contain
  /// information regarding that.
  Future<DataResponse<List<ApiService>>> getServices() async {
    return new MultipleFetcher<ApiService>(ApiService.serializer, client)
        .apply(API_SERVICES_ENDPOINT);
  }

  /// Get's the methods that are available that are available for all the services. It provides
  /// a list of [ApiMethod], wrapped inside [DataResponse], objects that contain
  /// information regarding that.
  Future<DataResponse<List<ApiMethod>>> getMethods() async {
    return new MultipleFetcher<ApiMethod>(ApiMethod.serializer, client).apply(API_METHODS_ENDPOINT);
  }

  /// Get's the versions of API as it has progressed throughout the years. It provides a list
  /// of [ApiVersion], wrapped inside [DataResponse], objects that contain
  /// information regarding that.
  Future<DataResponse<List<ApiVersion>>> getVersions() async {
    return new MultipleFetcher<ApiVersion>(ApiVersion.serializer, client)
        .apply(API_VERSIONS_ENDPOINT);
  }

  /// Get's the change logs as the API has developed throughout the years. It provides a list
  /// of [ApiChangelog], wrapped inside [DataResponse], objects that contain
  /// information regarding that.
  Future<DataResponse<List<ApiChangelog>>> getChangelog() async {
    return new MultipleFetcher(ApiChangelog.serializer, client).apply(API_CHANGELOG_ENDPOINT);
  }
}
