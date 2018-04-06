import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/uw_api.dart';
import 'package:uwdart/src/courses/models/course_exam_schedule.dart';
import 'package:uwdart/src/courses/models/course_full.dart';
import 'package:uwdart/src/courses/models/course_prerequisite.dart';
import 'package:uwdart/src/courses/models/course_schedule.dart';
import 'package:uwdart/src/courses/models/course_simple.dart';
import 'package:uwdart/src/courses/models/course_subject.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/data/response_parser.dart';

/// NewsAPI provides a wrapper around the raw news API from UW
class CourseApi extends UWApi {
  static final String COURSES_ENDPOINT = "courses";
  static final String COURSES_SCHEDULE_ENDPOINT = "schedule";
  static final String COURSES_EXAM_SCHEDULE_ENDPOINT = "examschedule";
  static final String COURSES_PREREQUISITES_ENDPOINT = "prerequisities";

  CourseApi(Client client) : super(client);

  Future<List<CourseSimple>> getAllCourses() async {
    return createRequest(client, [COURSES_ENDPOINT])
        .then((data) => new ResponseParser<CourseSimple>(data).parseList(new CourseSimple()));
  }

  Future<List<CourseSubject>> getCoursesBySubject(String subject) async {
    return createRequest(client, [COURSES_ENDPOINT, subject])
        .then((data) => new ResponseParser<CourseSubject>(data).parseList(new CourseSubject()));
  }

  Future<CourseFull> getCourseByCourseId(String courseId) async {
    return createRequest(client, [COURSES_ENDPOINT, courseId])
        .then((data) => new ResponseParser<CourseFull>(data).parseList(new CourseFull())[0]);
  }

  Future<List<CourseSchedule>> getCourseScheduleByClassNumber(String classNumber,
      [String term = ""]) async {
    List<String> filter = _getValidFilter("term", term);

    return createRequest(client, [COURSES_ENDPOINT, classNumber, COURSES_SCHEDULE_ENDPOINT], filter)
        .then((data) => new ResponseParser<CourseSchedule>(data).parseList(new CourseSchedule()));
  }

  Future<CourseFull> getCourseBySubjectCatalog(String subject, String catalogNumber) {
    return createRequest(client, [COURSES_ENDPOINT, subject, catalogNumber])
        .then((data) => new ResponseParser<CourseFull>(data).parseList(new CourseFull())[0]);
  }

  Future<List<CourseSchedule>> getCourseScheduleBySubjectCatalog(
      String subject, String catalogNumber,
      [String term = ""]) {
    List<String> filter = _getValidFilter("term", term);

    return createRequest(
            client, [COURSES_ENDPOINT, subject, catalogNumber, COURSES_SCHEDULE_ENDPOINT], filter)
        .then((data) => new ResponseParser<CourseSchedule>(data).parseList(new CourseSchedule()));
  }

  Future<CoursePrerequisite> getCoursePrerequisiteBySubjectCatalog(
      String subject, String catalogNumber) {
    return createRequest(
            client, [COURSES_ENDPOINT, subject, catalogNumber, COURSES_PREREQUISITES_ENDPOINT])
        .then((data) =>
            new ResponseParser<CoursePrerequisite>(data).parseList(new CoursePrerequisite())[0]);
  }

  Future<CourseExamSchedule> getCourseExamScheduleBySubjectCatalog(
      String subject, String catalogNumber,
      [String term = ""]) {
    List<String> filter = _getValidFilter("term", term);

    return createRequest(client,
            [COURSES_ENDPOINT, subject, catalogNumber, COURSES_EXAM_SCHEDULE_ENDPOINT], filter)
        .then((data) =>
            new ResponseParser<CourseExamSchedule>(data).parseList(new CourseExamSchedule())[0]);
  }
}

/// Verifies the filter key value provided and based on that returns filter
List<String> _getValidFilter(String keyStart, String keyValue) {
  List<String> filter;

  if (keyValue.length <= 0) {
    filter = null;
  } else {
    filter = [keyStart + "=" + keyValue];
  }

  return filter;
}
