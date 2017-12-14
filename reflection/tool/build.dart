// Copyright (c) 2017, the Dart Team. All rights reserved. Use of this
// source code is governed by a BSD-style license that can be found in
// the LICENSE file.
import 'dart:async';

import 'package:build_runner/build_runner.dart';
import 'package:glob/glob.dart';
import 'package:reflectable/reflectable_builder.dart' as builder;

import 'package:reflection_test_browser2/build.dart';

const String _DEFAULT_ENTRY_POINT = "web/main.dart";

/// Builds all the xxx.reflectable.dart files
///
///     dart tool/build.dart
///
/// For tests:
///     dart tool/build.dart test/**/*.dart
Future main(List<String> arguments) async {
  return await build([
      await getBuildAction(arguments.isNotEmpty ? arguments : [ _DEFAULT_ENTRY_POINT ])
  ],deleteFilesByDefault: true);
}
