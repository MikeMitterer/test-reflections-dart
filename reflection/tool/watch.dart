import 'dart:async';

import 'package:build_runner/build_runner.dart';
import 'package:barback/src/transformer/barback_settings.dart';
import 'package:build_barback/build_barback.dart';
import 'package:reflectable/transformer.dart';

import 'package:glob/glob.dart';
import 'package:reflectable/reflectable_builder.dart' as builder;

import 'package:reflection_test_browser2/build.dart';

const String _DEFAULT_ENTRY_POINT = "web/main.dart";

Future main(List<String> arguments) async {
    await watch([
        await getBuildAction(arguments.isNotEmpty ? arguments : [ _DEFAULT_ENTRY_POINT ])
    ],deleteFilesByDefault: true);
}
