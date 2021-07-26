# Changelog
All notable changes to this project will be documented in this file.

## [1.0.1] - 2021-08-26
### Changed
##### Execute method
- The execute method converts the received data from JSON to the response model.
- The execute method returns the UUID of the request, which can be used later to cancel the network operation.
### Added
- Added method `cancel(taskUid: String)`.

## [1.0.0] - 2021-08-23
### Changed
- Distribution: Swift Package Manager
