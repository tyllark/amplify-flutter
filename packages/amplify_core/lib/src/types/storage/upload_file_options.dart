// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.upload_file_options}
/// Configurable options for `Amplify.Storage.uploadFile`.
/// {@endtemplate}
class StorageUploadFileOptions extends StorageOperationOptions
    with
        AWSEquatable<StorageUploadFileOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.upload_file_options}
  const StorageUploadFileOptions({
    required super.accessLevel,
    this.pluginOptions,
  });

  /// {@macro amplify_core.storage.upload_file_plugin_options}
  final StorageUploadFilePluginOptions? pluginOptions;

  @override
  List<Object?> get props => [accessLevel, pluginOptions];

  @override
  String get runtimeTypeName => 'StorageUploadFileOptions';

  @override
  Map<String, Object?> toJson() => {
        'accessLevel': accessLevel.name,
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// {@template amplify_core.storage.upload_file_plugin_options}
/// Plugin-specific options for `Amplify.Storage.uploadFile`.
/// {@endtemplate}
abstract class StorageUploadFilePluginOptions
    with
        AWSEquatable<StorageUploadFilePluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.upload_file_plugin_options}
  const StorageUploadFilePluginOptions();
}