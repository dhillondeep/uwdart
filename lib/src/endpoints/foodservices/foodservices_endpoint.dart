import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_endpoint.dart';
import 'package:uwdart/src/data/api_request.dart';
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
  /// search is need, provide a year as [String] and week as [String].
  Future<FoodServicesMenu> getMenus([String year = "", String week]) {
    return new Fetcher(FoodServicesMenu.serializer, client)
        .fetchSingle(_customizeArgs(FOOD_MENU_ENDPOINT, year, week));
  }

  /// Get's all the food related notes from food services throughout the UW Campus. If no optional
  /// parameter is provided, the search for notes is done with current year and week. If a custom
  /// search is need, provide a year as [String] and week as [String].
  Future<List<FoodServicesNote>> getNotes([String year = "", String week = ""]) {
    return new Fetcher(FoodServicesNote.serializer, client)
        .fetch(_customizeArgs(FOOD_NOTES_ENDPOINT, year, week));
  }

  /// Get's all the types of diets available throughout the UW Campus.
  Future<List<FoodServicesDiet>> getAllDiets() {
    return new Fetcher(FoodServicesDiet.serializer, client).fetch([FOOD_DIETS_ENDPOINT]);
  }

  /// Get's all the food outlets on the UW campus and around the campus and what type of
  /// food they offer.
  Future<List<FoodServicesOutlet>> getAllOutlets() {
    return new Fetcher(FoodServicesOutlet.serializer, client).fetch([FOOD_OUTLETS_ENDPOINT]);
  }

  /// Get's locations for all the food outlets on the UW Campus and around the campus.
  Future<List<FoodServicesLocation>> getAllLocations() {
    return new Fetcher(FoodServicesLocation.serializer, client).fetch([FOOD_LOCATIONS_ENDPOINT]);
  }

  /// Get's all the Food Vendors that accept payment from UW Watcard.
  Future<List<FoodServicesWatcardVendor>> getAllWatcardVendors() {
    return new Fetcher(FoodServicesWatcardVendor.serializer, client).fetch([FOOD_WATCARD_ENDPOINT]);
  }

  /// Get's all the food related announcements from food services throughout the UW Campus.
  /// If no optional parameter is provided, the search for notes is done with current year and week.
  /// If a custom search is need, provide a year as [String] and week as [String].
  Future<List<FoodServicesAnnouncement>> getAllAnnouncements([String year = "", String week = ""]) {
    return new Fetcher(FoodServicesAnnouncement.serializer, client)
        .fetch(_customizeArgs(FOOD_ANNOUNCEMENTS_ENDPOINT, year, week));
  }

  /// Get's detailed information about the food products that are available. This includes
  /// nutrient information.
  Future<FoodServicesProduct> getProductDetails(String productId) {
    return new Fetcher(FoodServicesProduct.serializer, client)
        .fetchSingle([FOOD_PRODUCTS_ENDPOINT, productId]);
  }

  /// Helper method to customize the arguments for various searches.
  List<String> _customizeArgs(String originalArgs, String year, String week) {
    List<String> args;

    // choose the request arguments based on the type of request
    if (year != "") {
      List<String> endpointSplit = originalArgs.split("/");
      args = [endpointSplit[0], year, week, endpointSplit[1]];
    } else {
      args = [originalArgs];
    }

    return args;
  }
}
