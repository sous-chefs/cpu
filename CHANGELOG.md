# CPU Changelog

This file is used to list changes made in each version of the cpu cookbook.

## Unreleased

## 3.0.11 - *2024-05-02*

## 3.0.10 - *2024-05-02*

## 3.0.9 - *2023-10-31*

## 3.0.8 - *2023-09-28*

## 3.0.7 - *2023-09-04*

## 3.0.6 - *2023-07-10*

## 3.0.5 - *2023-05-17*

## 3.0.4 - *2023-05-03*

## 3.0.3 - *2023-04-01*

## 3.0.2 - *2023-03-02*

- Standardise files with files in sous-chefs/repo-management

## 3.0.1 - *2023-02-14*

- Standardise files with files in sous-chefs/repo-management

## 3.0.0 - *2022-08-04*

- Remove delivery folder
- resolved cookstyle error: resources/affinity.rb:32:1 refactor: `Chef/Modernize/ClassEvalActionClass`
- resolved cookstyle error: resources/nice.rb:30:1 refactor: `Chef/Modernize/ClassEvalActionClass`
- Chef 17 updates: enable `unified_mode` on all resources
- Bump required Chef Infra Client to >= 15.3

## 2.1.2 - *2021-08-31*

- Standardise files with files in sous-chefs/repo-management

## v2.1.0 (2020-10-24)

- resolved cookstyle error: metadata.rb:6:1 refactor: `ChefRedundantCode/LongDescriptionMetadata`
- resolved cookstyle error: metadata.rb:18:1 refactor: `ChefModernize/RespondToInMetadata`
- resolved cookstyle error: spec/unit/recipes/default_spec.rb:29:7 warning: `ChefDeprecations/DeprecatedChefSpecPlatform`
- resolved cookstyle error: spec/unit/recipes/default_spec.rb:39:7 warning: `ChefDeprecations/DeprecatedChefSpecPlatform`
- resolved cookstyle error: spec/unit/recipes/default_spec.rb:49:7 warning: `ChefDeprecations/DeprecatedChefSpecPlatform`
- Adoption by Sous-Chefs

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
