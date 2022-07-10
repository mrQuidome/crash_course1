import 'package:crash_course1/mocks/mock_location.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:crash_course1/models/location.dart';

void main() {

  test('test fetchAny', () {
    final Location location = MockLocation.fetchAny();
    expect(location, isNotNull);
    expect(location.name, isNotEmpty);
  });

  test('test fetchAll', () {
    final List<Location> locations = MockLocation.fetchAll();
    expect(locations, isNotNull);
    expect(locations[0].name, isNotEmpty);
  });

  test('test fetch', () {
    final Location location = MockLocation.fetch(1);
    expect(location, isNotNull);
    expect(location.name, isNotEmpty);
  });

}