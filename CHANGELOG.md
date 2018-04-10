## 0.0.4
### Added
- Static ResponseParser
- Added Static types where ever possible.
- Exported API Endpoint for client to use.

### Modified
- Every Endpoint now uses ResponseParser to cast from map to objects.

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
