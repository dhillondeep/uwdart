import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_endpoint.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/endpoints/course/models/course.dart';
import 'package:uwdart/src/endpoints/course/models/course_detailed.dart';
import 'package:uwdart/src/endpoints/course/models/course_exam_schedule.dart';
import 'package:uwdart/src/endpoints/course/models/course_prerequisite.dart';
import 'package:uwdart/src/endpoints/course/models/course_schedule.dart';
import 'package:uwdart/src/endpoints/course/models/course_subject.dart';

/// CourseEndpoint provides a wrapper around the raw course Endpoint from UW Open Data API
/// https://github.com/uWaterloo/api-documentation#course
class CourseEndpoint extends UWEndpoint {
  CourseEndpoint(Client client) : super(client);

  /// Get's all the courses that are offered at the University of Waterloo and provides
  /// a list of [CourseSimple] objects.
  Future<List<Course>> getAllCourses() async {
    return new Fetcher(Course.serializer, client).fetch([COURSES_ENDPOINT]);
  }

  /// Get's all the courses under the subject provided. It gathers all the courses and provides
  /// a list of [CourseSubject] objects.
  Future<List<CourseSubject>> getCoursesBySubject(String subject) async {
    return new Fetcher(CourseSubject.serializer, client).fetch([COURSES_ENDPOINT, subject]);
  }

  /// Get's a course by it's course ID. It gathers the course and provides a [CourseDetailed] object,
  /// which contains detailed course information.
  Future<CourseDetailed> getCourseByCourseId(String courseId) async {
    return new Fetcher(CourseDetailed.serializer, client).fetchSingle([COURSES_ENDPOINT, courseId]);
  }

  /// Get's a course based on the subject and catalog number. It gathers the course data and
  /// provides a [CourseDetailed] object, which contains detailed course information.
  Future<CourseDetailed> getCourseBySubjectCatalog(String subject, String catalogNumber) {
    return new Fetcher(CourseDetailed.serializer, client)
        .fetchSingle([COURSES_ENDPOINT, subject, catalogNumber]);
  }

  /// Get'a course prerequisite based on the subject and catalog number. It gathers the data
  /// and provides a [CoursePrerequisite] object.
  Future<CoursePrerequisite> getCoursePrerequisiteBySubjectCatalog(
      String subject, String catalogNum) {
    return new Fetcher(CoursePrerequisite.serializer, client)
        .fetchSingle([COURSES_ENDPOINT, subject, catalogNum, COURSES_PREREQUISITES_ENDPOINT]);
  }

  /// Get's schedules for a class based on it's class number. It wraps the data in a
  /// [CourseSchedule] object, which contains information related to schedules. It also
  /// supports a "term" filter that let's you get the schedule for previous terms. Just provide
  /// a second argument, a 4 digit number in [String] quotes.
  Future<List<CourseSchedule>> getCourseScheduleByClassNumber(String classNumber,
      [String term = ""]) async {
    List<String> filter = GetValidFilter("term", term);

    return new Fetcher(CourseSchedule.serializer, client)
        .fetch([COURSES_ENDPOINT, classNumber, COURSES_SCHEDULE_ENDPOINT], filter);
  }

  /// Get's schedule for a course based on it's subject and catalog number. It wraps the data in
  /// [CourseSchedule] object, which provides all sorts of schedule information. It also
  /// supports a "term" filter that let's you get the schedule for previous terms. Just provide
  /// a third argument, a 4 digit number in [String] quotes.
  Future<List<CourseSchedule>> getCourseScheduleBySubjectCatalog(String subject, String catalogNum,
      [String term = ""]) {
    List<String> filter = GetValidFilter("term", term);

    return new Fetcher(CourseSchedule.serializer, client)
        .fetch([COURSES_ENDPOINT, subject, catalogNum, COURSES_SCHEDULE_ENDPOINT], filter);
  }

  /// Get's schedule for exams based on a course's subject and catalog number. It wraps the
  /// data in a [CourseExamSchedule] object, which provides examination related information. It also
  /// supports a "term" filter that let's you get the schedule for previous terms. Just provide
  /// a third argument, a 4 digit number in [String] quotes.
  Future<CourseExamSchedule> getCourseExamScheduleBySubjectCatalog(String sub, String catalogNum,
      [String term = ""]) {
    List<String> filter = GetValidFilter("term", term);

    return new Fetcher(CourseExamSchedule.serializer, client)
        .fetchSingle([COURSES_ENDPOINT, sub, catalogNum, COURSES_EXAM_SCHEDULE_ENDPOINT], filter);
  }
}
