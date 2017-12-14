import 'dart:async';

import 'package:build_runner/build_runner.dart';
import 'package:barback/src/transformer/barback_settings.dart';
import 'package:build_barback/build_barback.dart';
import 'package:reflectable/transformer.dart';

import 'package:glob/glob.dart';
import 'package:reflectable/reflectable_builder.dart' as builder;

Future<BuildAction> getBuildAction(final List<String> arguments ) async {
    final PackageGraph graph = new PackageGraph.forThisPackage();
    final String packageName = graph.root.name;
    final List<String> globbedArguments = await _globbedArguments(arguments);

    // TODO(eernst) feature: We should support some customization of
    // the settings, e.g., specifying options like `suppress_warnings`.
    final BarbackSettings settings = new BarbackSettings(
        <String, Object>{"entry_points": arguments, "formatted": true},
        BarbackMode.DEBUG,
    );

    final builder = new TransformerBuilder(
        new ReflectableTransformer.asPlugin(settings),
        const <String, List<String>>{'.dart': const ['.reflectable.dart']},
    );

    return new BuildAction(builder, packageName, inputs: globbedArguments,
        excludes: [ '**/*.reflectable.dart']);
}

Future<List<String>> _globbedArguments(List<String> arguments) async {
    final List<String> globbedArguments = <String>[];

    for (String argument in arguments) {
        Glob fileGlob = new Glob(argument);

        await for (var entity in fileGlob.list()) {
            String fileSpec = entity.path;

            if (fileSpec.startsWith("./")) {
                fileSpec = fileSpec.substring(2);
            }

            print(fileSpec);
            globbedArguments.add(fileSpec);
        }
    }
    return globbedArguments;
}