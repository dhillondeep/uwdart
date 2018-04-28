import 'package:built_collection/built_collection.dart';
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
  NewsSite
])
final Serializers serializers = _$serializers;
