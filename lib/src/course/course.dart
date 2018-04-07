import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_api.dart';
import 'package:uwdart/src/course/models/course_exam_schedule.dart';
import 'package:uwdart/src/course/models/course_full.dart';
import 'package:uwdart/src/course/models/course_prerequisite.dart';
import 'package:uwdart/src/course/models/course_schedule.dart';
import 'package:uwdart/src/course/models/course_simple.dart';
import 'package:uwdart/src/course/models/course_subject.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/data/response_parser.dart';

/// CourseAPI provides a wrapper around the raw course API from UW
/// https://github.com/uWaterloo/api-documentation#course
class CourseAPI extends UWApi {
  CourseAPI(Client client) : super(client);

  /// Get's all the courses that are offered at the University of Waterloo and provides
  /// a list of simple course model for them.
  Future<List<CourseSimple>> getAllCourses() async {
    return createRequest(client, [COURSES_ENDPOINT])
        .then((data) => new ResponseParser<CourseSimple>(data).parse(new CourseSimple()));
  }

  /// Get's all the courses under the subject provided. It gathers all the courses and provides
  /// a list of courses with subject information.
  Future<List<CourseSubject>> getCoursesBySubject(String subject) async {
    return createRequest(client, [COURSES_ENDPOINT, subject])
        .then((data) => new ResponseParser<CourseSubject>(data).parse(new CourseSubject()));
  }

  /// Get's a course by it's course ID. It gathers the course and provides a [CourseFull] object,
  /// which contains detailed course information.
  Future<CourseFull> getCourseByCourseId(String courseId) async {
    return createRequest(client, [COURSES_ENDPOINT, courseId])
        .then((data) => new ResponseParser<CourseFull>(data).parse(new CourseFull())[0]);
  }

  /// Get's a course based on the subject and catalog number. It gathers the course data and
  /// provides a [CourseFull] object, which contains detailed course information.
  Future<CourseFull> getCourseBySubjectCatalog(String subject, String catalogNumber) {
    return createRequest(client, [COURSES_ENDPOINT, subject, catalogNumber])
        .then((data) => new ResponseParser<CourseFull>(data).parse(new CourseFull())[0]);
  }

  Future<CoursePrerequisite> getCoursePrerequisiteBySubjectCatalog(
      String subject, String catalogNumber) {
    return createRequest(client, [
      COURSES_ENDPOINT,
      subject,
      catalogNumber,
      COURSES_PREREQUISITES_ENDPOINT
    ]).then(
        (data) => new ResponseParser<CoursePrerequisite>(data).parse(new CoursePrerequisite())[0]);
  }

  /// Get's schedules for a class based on it's class number. It wraps the data in a
  /// [CourseSchedule] object, which contains information related to schedules. It also
  /// supports a "term" filter that let's you get the schedule for previous terms. Just provide
  /// a second argument, a 4 digit number in [String] quotes.
  Future<List<CourseSchedule>> getCourseScheduleByClassNumber(num classNumber,
      [String term = ""]) async {
    List<String> filter = getValidFilter("term", term);

    return createRequest(
            client, [COURSES_ENDPOINT, classNumber.toString(), COURSES_SCHEDULE_ENDPOINT], filter)
        .then((data) => new ResponseParser<CourseSchedule>(data).parse(new CourseSchedule()));
  }

  /// Get's schedule for a course based on it's subject and catalog number. It wraps the data in
  /// [CourseSchedule] object, which provides all sorts of schedule information. It also
  /// supports a "term" filter that let's you get the schedule for previous terms. Just provide
  /// a third argument, a 4 digit number in [String] quotes.
  Future<List<CourseSchedule>> getCourseScheduleBySubjectCatalog(
      String subject, String catalogNumber,
      [String term = ""]) {
    List<String> filter = getValidFilter("term", term);

    return createRequest(
            client, [COURSES_ENDPOINT, subject, catalogNumber, COURSES_SCHEDULE_ENDPOINT], filter)
        .then((data) => new ResponseParser<CourseSchedule>(data).parse(new CourseSchedule()));
  }

  /// Get's schedule for exams based on a course's subject and catalog number. It wraps the
  /// data in a [CourseExamSchedule] object, which provides examination related information. It also
  /// supports a "term" filter that let's you get the schedule for previous terms. Just provide
  /// a third argument, a 4 digit number in [String] quotes.
  Future<CourseExamSchedule> getCourseExamScheduleBySubjectCatalog(
      String subject, String catalogNumber,
      [String term = ""]) {
    List<String> filter = getValidFilter("term", term);

    return createRequest(client,
            [COURSES_ENDPOINT, subject, catalogNumber, COURSES_EXAM_SCHEDULE_ENDPOINT], filter)
        .then((data) =>
            new ResponseParser<CourseExamSchedule>(data).parse(new CourseExamSchedule())[0]);
  }
}
