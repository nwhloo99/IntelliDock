import 'package:chill/model/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/model.dart';

class HaulerTravellingToUnload extends Command {
  Hauler hauler;
  Model model;
  String warehouseName;
  num bayNumber;

  HaulerTravellingToUnload(
      this.hauler, this.warehouseName, this.bayNumber, this.model) {}

  void execute() {
    this.model.hauler_travelling_to_unload(hauler, warehouseName, bayNumber);
  }
}
