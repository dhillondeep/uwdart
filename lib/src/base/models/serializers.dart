import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:uwdart/src/base/models/uw_day.dart';
import 'package:uwdart/src/base/models/uw_image.dart';
import 'package:uwdart/src/base/models/uw_open_hours.dart';
import 'package:uwdart/src/base/models/uw_special_day.dart';
import 'package:uwdart/src/data/model/api_response.dart';
import 'package:uwdart/src/data/model/meta.dart';
import 'package:uwdart/src/endpoints/api/model/api_changelog.dart';
import 'package:uwdart/src/endpoints/api/model/api_method.dart';
import 'package:uwdart/src/endpoints/api/model/api_service.dart';
import 'package:uwdart/src/endpoints/api/model/api_usage.dart';
import 'package:uwdart/src/endpoints/api/model/api_version.dart';
import 'package:uwdart/src/endpoints/awards/models/award.dart';
import 'package:uwdart/src/endpoints/course/models/course.dart';
import 'package:uwdart/src/endpoints/course/models/course_detailed.dart';
import 'package:uwdart/src/endpoints/course/models/course_exam_schedule.dart';
import 'package:uwdart/src/endpoints/course/models/course_prerequisite.dart';
import 'package:uwdart/src/endpoints/course/models/course_schedule.dart';
import 'package:uwdart/src/endpoints/course/models/course_subject.dart';
import 'package:uwdart/src/endpoints/feds/models/feds_event.dart';
import 'package:uwdart/src/endpoints/feds/models/feds_events_detailed.dart';
import 'package:uwdart/src/endpoints/feds/models/feds_location.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_annoucement.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_diet.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_location.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_menu.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_note.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_outlet.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_product.dart';
import 'package:uwdart/src/endpoints/foodservices/models/foodservices_watcard_vendor.dart';
import 'package:uwdart/src/endpoints/news/model/news.dart';
import 'package:uwdart/src/endpoints/news/model/news_detailed.dart';
import 'package:uwdart/src/endpoints/news/model/news_site.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  // Request
  APIResponse,
  Meta,
  // Award
  Award,
  AwardDeadline,
  // Feds
  FedsEvent,
  FedsEventDetailed,
  FedsLocation,
  // UW Generic
  UWOpeningHours,
  UWSpecialDay,
  UWDay,
  UWImage,
  // API
  ApiChangelog,
  ApiMethod,
  ApiService,
  ApiUsage,
  ApiVersion,
  // Course
  CourseExamSchedule,
  CourseDetailed,
  CoursePrerequisite,
  CourseSchedule,
  Course,
  CourseSubject,
  // News
  News,
  NewsDetailed,
  NewsSite,
  // Food
  FoodServicesAnnouncement,
  FoodServicesDiet,
  FoodServicesLocation,
  FoodServicesMenu,
  FoodServicesNote,
  FoodServicesOutlet,
  FoodServicesProduct,
  FoodServicesWatcardVendor
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
          const FullType(BuiltMap, const [const FullType(String), const FullType(JsonObject)]),
          () => new MapBuilder<String, JsonObject>()))
    .build();
