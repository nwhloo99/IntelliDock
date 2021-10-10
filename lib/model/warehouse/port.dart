import 'package:chill/model/hauler/hauler.dart';

/**
 * Port monitors which Haulers are currently stationed here.
 */
class port {
  List<Hauler> _stationedHaulers = [];

  port() {}

  void haulerEnter(Hauler entry) {
    _stationedHaulers.add(entry);
  }

  void haulerExit(Hauler exiting) {
    _stationedHaulers.remove(exiting);
  }

  List<Hauler> viewStationed() {
    return _stationedHaulers;
  }
}
