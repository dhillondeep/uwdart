## 0.0.6
### Added
- Made compatible with flutter

### Modified
- Switched to Dart 2
- Switched from `dartson (reflection)` to `built_values` for JSON serialization
- Changed News `GetAllNews()` method to `getNews()`
- Changed Course `getCoursePrerequisiteBySubjectCatalog` to `getCoursePrerequisite`
- Every endpoint returns a `DataResponse` now and this DataResponse contains `meta` from the http request and `deserialized data`
- `APIResponse` is now fully `serializable`.
- Deleted APIResponse `rawString` field from APIResponse because there is a toString method for the `data` field
- `makeRawRequest()` now accepts a `String` for `arguments` and a `map` for the `parameters`
- Made every endpoint call an explicit async

## 0.0.5
### Added
- Made compatible with browser and io
- Added Food Services, Feds, and Awards Endpoints

### Modified
- Generic open, close and makeRequest functions removed
- Endpoints provided through one class: UWDart

## 0.0.4
### Added
- Static ResponseParser
- Added Static types where ever possible.
- Exported API Endpoint for client to use.

## 0.0.3
### Added
- Implemented and documented API endpoint.
- A Generic example added for all the Endpoints since they are similar.
- Version 0.0.3 published.

### Modified
- Renamed CourseAPI, NewsAPI, UWAPI to CourseEndpoint, NewsEndpoint, and UWEndpoint respectively.
- Deleted individual examples for course and news endpoints.
- Internally modified how map data was being deserialize to objects.
- Added static types for OpenConnection and CloseConnection.

## 0.0.1
### Added
- News API and Course API implemented and documented.
- Examples added for CourseAPI and NewsAPI.
- Initial version published.
