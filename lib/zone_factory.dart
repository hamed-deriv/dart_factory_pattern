import 'package:dart_factory_pattern/base_zone.dart';
import 'package:dart_factory_pattern/zone_central.dart';
import 'package:dart_factory_pattern/zone_eastern.dart';
import 'package:dart_factory_pattern/zone_western.dart';

class ZoneFactory {
  static BaseZone createZone(String zoneId) {
    switch (zoneId) {
      case 'Eastern':
        return ZoneEastern();
      case 'Western':
        return ZoneWestern();
      case 'Central':
        return ZoneCentral();

      default:
        throw Exception('Invalid Zone ID $zoneId');
    }
  }
}
