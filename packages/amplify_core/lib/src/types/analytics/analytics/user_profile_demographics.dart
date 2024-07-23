// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Demographics data of a user.
class UserProfileDemographics {
  const UserProfileDemographics({
    this.appVersion,
    this.locale,
    this.make,
    this.model,
    this.modelVersion,
    this.platform,
    this.platformVersion,
    this.timezone,
  });

  final String? appVersion;
  final String? locale;
  final String? make;
  final String? model;
  final String? modelVersion;
  final String? platform;
  final String? platformVersion;
  final String? timezone;

  Map<String, Object?> getAllProperties() => {
        if (appVersion != null) 'appVersion': appVersion,
        if (locale != null) 'locale': locale,
        if (make != null) 'make': make,
        if (model != null) 'model': model,
        if (modelVersion != null) 'modelVersion': modelVersion,
        if (platform != null) 'platform': platform,
        if (platformVersion != null) 'platformVersion': platformVersion,
        if (timezone != null) 'timezone': timezone,
      };
}
