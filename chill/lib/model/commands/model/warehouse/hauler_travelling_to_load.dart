import 'package:chill/model/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/port_map.dart';

class HaulerTravellingToLoad extends Command {
  Hauler hauler;
  PortMap map;
  String warehouseName;
  num bayNumber;

  HaulerTravellingToLoad(
      this.hauler, this.warehouseName, this.bayNumber, this.map) {}

  void execute() {
    this.map.hauler_travelling_to_load(hauler, warehouseName, bayNumber);
  }
}
