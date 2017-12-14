// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.

import "dart:core";
import 'package:reflection_test_browser2/rlib.dart' as prefix0;

// ignore:unused_import
import "package:reflectable/mirrors.dart" as m;
// ignore:unused_import
import "package:reflectable/src/reflectable_transformer_based.dart" as r;
// ignore:unused_import
import "package:reflectable/reflectable.dart" show isTransformed;

final _data = {
  const prefix0.ReflectionTestInLib(): new r.ReflectorData(
      <m.TypeMirror>[
        new r.NonGenericClassMirrorImpl(
            r"Animal",
            r"reflection_test_browser2.rlib.Animal",
            519,
            0,
            const prefix0.ReflectionTestInLib(),
            const <int>[0, 1, 2],
            const <int>[3, 4, 5, 6, 7],
            const <int>[],
            -1,
            {},
            {},
            {},
            0,
            0,
            const <int>[],
            const <Object>[prefix0.rlibtest],
            null),
        new r.NonGenericClassMirrorImpl(
            r"Dog",
            r"reflection_test_browser2.rlib.Dog",
            7,
            1,
            const prefix0.ReflectionTestInLib(),
            const <int>[8, 9, 10],
            const <int>[3, 4, 5, 6, 7, 8, 9],
            const <int>[],
            0,
            {},
            {},
            {r"": (b) => () => b ? new prefix0.Dog() : null},
            0,
            1,
            const <int>[],
            const <Object>[prefix0.rlibtest],
            null),
        new r.NonGenericClassMirrorImpl(
            r"Cat",
            r"reflection_test_browser2.rlib.Cat",
            7,
            2,
            const prefix0.ReflectionTestInLib(),
            const <int>[11, 12, 13],
            const <int>[3, 4, 5, 6, 7, 11, 12],
            const <int>[],
            0,
            {},
            {},
            {r"": (b) => () => b ? new prefix0.Cat() : null},
            0,
            2,
            const <int>[],
            const <Object>[prefix0.rlibtest],
            null)
      ],
      <m.DeclarationMirror>[
        new r.MethodMirrorImpl(r"makeNoise", 131586, 0, -1, 3, 3, const <int>[],
            const prefix0.ReflectionTestInLib(), const <Object>[]),
        new r.MethodMirrorImpl(r"nrOfLegs", 131587, 0, -1, 4, 4, const <int>[],
            const prefix0.ReflectionTestInLib(), const <Object>[]),
        new r.MethodMirrorImpl(r"", 64, 0, -1, 0, 0, const <int>[],
            const prefix0.ReflectionTestInLib(), const []),
        new r.MethodMirrorImpl(r"==", 131074, null, -1, 5, 5, const <int>[0],
            const prefix0.ReflectionTestInLib(), const <Object>[]),
        new r.MethodMirrorImpl(
            r"toString",
            131074,
            null,
            -1,
            3,
            3,
            const <int>[],
            const prefix0.ReflectionTestInLib(),
            const <Object>[]),
        new r.MethodMirrorImpl(
            r"noSuchMethod",
            65538,
            null,
            null,
            null,
            null,
            const <int>[1],
            const prefix0.ReflectionTestInLib(),
            const <Object>[]),
        new r.MethodMirrorImpl(
            r"hashCode",
            131075,
            null,
            -1,
            4,
            4,
            const <int>[],
            const prefix0.ReflectionTestInLib(),
            const <Object>[]),
        new r.MethodMirrorImpl(
            r"runtimeType",
            131075,
            null,
            -1,
            6,
            6,
            const <int>[],
            const prefix0.ReflectionTestInLib(),
            const <Object>[]),
        new r.MethodMirrorImpl(r"makeNoise", 131074, 1, -1, 3, 3, const <int>[],
            const prefix0.ReflectionTestInLib(), const <Object>[override]),
        new r.MethodMirrorImpl(r"nrOfLegs", 131075, 1, -1, 4, 4, const <int>[],
            const prefix0.ReflectionTestInLib(), const <Object>[override]),
        new r.MethodMirrorImpl(r"", 64, 1, -1, 1, 1, const <int>[],
            const prefix0.ReflectionTestInLib(), const []),
        new r.MethodMirrorImpl(r"makeNoise", 131074, 2, -1, 3, 3, const <int>[],
            const prefix0.ReflectionTestInLib(), const <Object>[override]),
        new r.MethodMirrorImpl(r"nrOfLegs", 131075, 2, -1, 4, 4, const <int>[],
            const prefix0.ReflectionTestInLib(), const <Object>[override]),
        new r.MethodMirrorImpl(r"", 64, 2, -1, 2, 2, const <int>[],
            const prefix0.ReflectionTestInLib(), const [])
      ],
      <m.ParameterMirror>[
        new r.ParameterMirrorImpl(
            r"other",
            16390,
            3,
            const prefix0.ReflectionTestInLib(),
            null,
            null,
            null,
            const <Object>[],
            null,
            null),
        new r.ParameterMirrorImpl(
            r"invocation",
            32774,
            5,
            const prefix0.ReflectionTestInLib(),
            -1,
            7,
            7,
            const <Object>[],
            null,
            null)
      ],
      <Type>[
        prefix0.Animal,
        prefix0.Dog,
        prefix0.Cat,
        String,
        int,
        bool,
        Type,
        Invocation
      ],
      3,
      {
        r"==": (dynamic instance) => (x) => instance == x,
        r"toString": (dynamic instance) => instance.toString,
        r"noSuchMethod": (dynamic instance) => instance.noSuchMethod,
        r"hashCode": (dynamic instance) => instance.hashCode,
        r"runtimeType": (dynamic instance) => instance.runtimeType,
        r"makeNoise": (dynamic instance) => instance.makeNoise,
        r"nrOfLegs": (dynamic instance) => instance.nrOfLegs
      },
      {},
      <m.LibraryMirror>[
        new r.LibraryMirrorImpl(
            r"reflection_test_browser2.rlib",
            Uri.parse(r"reflectable://0/reflection_test_browser2.rlib"),
            const prefix0.ReflectionTestInLib(),
            const <int>[],
            {},
            {},
            const <Object>[],
            null)
      ],
      [])
};

final _memberSymbolMap = null;

initializeReflectable() {
  if (!isTransformed) {
    throw new UnsupportedError(
        "The transformed code is running with the untransformed "
        "reflectable package. Remember to set your package-root to "
        "'build/.../packages'.");
  }
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
