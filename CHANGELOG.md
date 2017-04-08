# CPU Changelog

This file is used to list changes made in each version of the cpu cookbook.

## v2.0.0 (2017-04-07)

- This cookbook now requires Chef 12.5 or later
- Fixed failures on RHEL in the affinity recipe
- Fixed helper methods that were leaking into the global Ruby namespace
- Added support for RHEL derivatives to the metadata
- Updated the affinity resource to install the necessary package. There is no longer a need to include the recipe first now.
- Added deprecation warnings to the legacy recipes that are no longer required
- Converted the LWRPs to custom resources. This adds why-run support for the resources
- Added full integration testing on RHEL/Ubuntu in Travis CI
- Simplified testing with Delivery local
- Added a test recipe that tests the governor recipe and also the resources. Previously only the empty default recipe was being tested
- Removed test gems from the Gemfile as testing should be done with ChefDK instead
- Added a basic Chefspec test for the governor recipe
- Updated the governor recipe to warn instead of failing on RHEL 7 and Fedora

## v1.0.0 (2016-11-02)

- Moved maintenance to the redguide group
- Added use_inline_resources to the providers to properly notify on updates
- Removed Chef 10 compatibility
- Resolved all cookstyle warnings
- Added new metadata for Supermarket
- Added testing in Travis
- Added local testing with rake and test kitchen
- Added the Apache 2.0 license file
- Add a Berksfile
- Refactored the Readme
- Added a chefignore file
