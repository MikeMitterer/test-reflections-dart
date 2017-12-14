// @TestOn("browser")
// unit
library test.unit.ref1;

import 'package:test/test.dart';
import 'package:reflectable/reflectable.dart';
import 'package:reflectable/capability.dart';

import 'package:reflection_test_browser2/rlib.dart';

import 'ref1_test.reflectable.dart';

// import 'package:logging/logging.dart';

main() async {
    initializeReflectable();

    group('ref1', () {
        setUp(() {});

        test('> Animal', () {
            final Animal animal = new Dog();
            final InstanceMirror imAnimal = rlibtest.reflect(animal);

            expect(imAnimal.invoke("makeNoise", []), "Wuff");
        }); // end of 'Animal' test

        test('> nr Of Legs', () {
            final Animal animal = new Dog();
            final InstanceMirror imAnimal = rlibtest.reflect(animal);

            expect(imAnimal.invokeGetter("nrOfLegs"), 4);
        }); // end of 'nr Of Legs' test


    });
    // End of 'ref1' group
}

// - Helper --------------------------------------------------------------------------------------
