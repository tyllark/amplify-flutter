// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Interface for all amplify plugins
abstract class AmplifyPluginInterface {
  const AmplifyPluginInterface();

  /// Casts a plugin to a category-specific implementation.
  P cast<P extends AmplifyPluginInterface>() => this as P;

  /// The category implemented by this plugin.
  Category get category;

  /// Called when the plugin is added to the category.
  @mustCallSuper
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {}

  /// Configures the plugin using the registered [config].
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {}

  /// Resets the plugin by removing all traces of it from the device.
  @visibleForTesting
  Future<void> reset() async {}

  /// validate [pluginOptions] is an instance of [T].
  /// if [pluginOptions] is `null` returns the [defaultPluginOptions].
  /// throws [ArgumentError] if none of the above.
  static T reifyPluginOptions<T>({
    Object? pluginOptions,
    required T defaultPluginOptions,
  }) {
    if (pluginOptions == null) {
      return defaultPluginOptions;
    }
    if (pluginOptions is! T) {
      throw ArgumentError(
        'Expected pluginOptions with type: ${defaultPluginOptions.runtimeType.toString()}. '
        'but got: ${pluginOptions.runtimeType.toString()}.',
      );
    }
    return pluginOptions as T;
  }
}
