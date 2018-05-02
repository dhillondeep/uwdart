import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_endpoint.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/data/data_response.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_annoucement.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_diet.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_location.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_menu.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_note.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_outlet.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_product.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_watcard_vendor.dart';

/// FoodServicesEndpoint provides a wrapper around the raw Food Services Endpoint from UW Open
/// Data API.
/// https://github.com/uWaterloo/api-documentation#food-services
class FoodServicesEndpoint extends UWEndpoint {
  FoodServicesEndpoint(Client client) : super(client);

  /// Get's all the food menus that are available throughout the UW Campus. If no optional
  /// parameter is provided, the search for menu is done with current year and week. If a custom
  /// search is need, provide a year as [String] and week as [String]. It returns a
  /// [FoodServicesMenu] object wrapped in [DataResponse].
  Future<DataResponse<FoodServicesMenu>> getMenus([String year = "", String week = ""]) async {
    String args = '${JoinArgs([FOOD_MENU_ENDPOINT, year, week])}';
    return new SingleFetcher<FoodServicesMenu>(FoodServicesMenu.serializer, client).apply(args);
  }

  /// Get's all the food related notes from food services throughout the UW Campus. If no optional
  /// parameter is provided, the search for notes is done with current year and week. If a custom
  /// search is need, provide a year as [String] and week as [String]. It returns a list of
  /// [FoodServicesNote] objects wrapped in [DataResponse].
  Future<DataResponse<List<FoodServicesNote>>> getNotes(
      [String year = "", String week = ""]) async {
    String args = '${JoinArgs([FOOD_NOTES_ENDPOINT, year, week])}';
    return new MultipleFetcher<FoodServicesNote>(FoodServicesNote.serializer, client).apply(args);
  }

  /// Get's all the types of diets available throughout the UW Campus. It returns a list of
  /// [FoodServicesDiet] objects wrapped in [DataResponse].
  Future<DataResponse<List<FoodServicesDiet>>> getAllDiets() async {
    return new MultipleFetcher<FoodServicesDiet>(FoodServicesDiet.serializer, client)
        .apply(FOOD_DIETS_ENDPOINT);
  }

  /// Get's all the food outlets on the UW campus and around the campus and what type of
  /// food they offer. It returns a list of [FoodServicesOutlet] object wrapped in [DataResponse].
  Future<DataResponse<List<FoodServicesOutlet>>> getAllOutlets() async {
    return new MultipleFetcher<FoodServicesOutlet>(FoodServicesOutlet.serializer, client)
        .apply(FOOD_OUTLETS_ENDPOINT);
  }

  /// Get's locations for all the food outlets on the UW Campus and around the campus. It returns a
  /// list of [FoodServicesLocation] objects wrapped in [DataResponse].
  Future<DataResponse<List<FoodServicesLocation>>> getAllLocations() async {
    return new MultipleFetcher<FoodServicesLocation>(FoodServicesLocation.serializer, client)
        .apply(FOOD_LOCATIONS_ENDPOINT);
  }

  /// Get's all the Food Vendors that accept payment from UW Watcard. It returns a list of
  /// [FoodServicesWatcardVendor] objects wrapped in [DataResponse].
  Future<DataResponse<List<FoodServicesWatcardVendor>>> getAllWatcardVendors() async {
    return new MultipleFetcher<FoodServicesWatcardVendor>(
            FoodServicesWatcardVendor.serializer, client)
        .apply(FOOD_WATCARD_ENDPOINT);
  }

  /// Get's all the food related announcements from food services throughout the UW Campus.
  /// If no optional parameter is provided, the search for notes is done with current year and week.
  /// If a custom search is need, provide a year as [String] and week as [String]. It returns a
  /// list of [FoodServicesAnnouncement] objects wrapped in [DataResponse].
  Future<DataResponse<List<FoodServicesAnnouncement>>> getAllAnnouncements(
      [String year = "", String week = ""]) async {
    String args = '${JoinArgs([FOOD_ANNOUNCEMENTS_ENDPOINT, year, week])}';
    return new MultipleFetcher<FoodServicesAnnouncement>(
            FoodServicesAnnouncement.serializer, client)
        .apply(args);
  }

  /// Get's detailed information about the food products that are available. This includes
  /// nutrient information. It returns a [FoodServicesProduct] object wrapped in [DataResponse].
  Future<DataResponse<FoodServicesProduct>> getProductDetails(String productId) async {
    String args = '${JoinArgs([FOOD_PRODUCTS_ENDPOINT, productId])}';
    return new SingleFetcher<FoodServicesProduct>(FoodServicesProduct.serializer, client)
        .apply(args);
  }
}
