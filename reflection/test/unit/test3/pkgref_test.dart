// @TestOn("browser")
// unit
library test.unit.pkgref;

import 'package:test/test.dart';

import 'package:test/test.dart';
import 'package:reflectable/reflectable.dart';
import 'package:reflectable/capability.dart';

import 'package:reflection_test_pkgref/anotherlib.dart';
import 'pkgref_test.reflectable.dart';


main() async {
    initializeReflectable();

    group('pkgref', () {
        setUp(() {});

        test('> Vehicle', () {
            Vehicle vehicle = new Car();
            InstanceMirror imVehicle = rpackagetest.reflect(vehicle);
            ClassMirror cmVehicle = imVehicle.type;

            expect(imVehicle.invoke("wheels",[]),4);

            final List annotationsCar = cmVehicle.metadata.where(
                    (final Object obj) => obj is ThisIsACarAnnotation).toList();

            expect(annotationsCar,isNotEmpty);
            expect(annotationsCar.length,1);


            vehicle = new MotorBike();
            imVehicle = rpackagetest.reflect(vehicle);
            cmVehicle = imVehicle.type;

            final List isThisACar = cmVehicle.metadata.where(
                    (final Object obj) => obj is ThisIsACarAnnotation).toList();

            expect(isThisACar,isEmpty);
            expect(isThisACar.length,0);
        }); // end of 'Vehicle' test

    });
    // End of 'pkgref' group
}

// - Helper --------------------------------------------------------------------------------------
