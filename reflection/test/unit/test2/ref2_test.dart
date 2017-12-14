// @TestOn("browser")
// unit
library test.unit.ref2;

import 'package:test/test.dart';
import 'package:reflectable/reflectable.dart';
import 'package:reflectable/capability.dart';

import 'package:reflection_test_browser2/rlib.dart';

import 'ref2_test.reflectable.dart';

// import 'package:logging/logging.dart';

main() async {
    initializeReflectable();

    group('ref2', () {
        setUp(() {});

        test('> Animal', () {
            final Animal animal = new Cat();
            final InstanceMirror imAnimal = rlibtest.reflect(animal);

            expect(imAnimal.invoke("makeNoise", []), "Miau");
        }); // end of 'Animal' test

    });
    // End of 'ref2' group
}

// - Helper --------------------------------------------------------------------------------------
