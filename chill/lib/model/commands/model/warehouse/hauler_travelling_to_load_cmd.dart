import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';

class HaulerTravellingToLoadCommand extends Command {
  num haulerNum;
  Model model;
  String warehouseName;
  num bayNumber;

  HaulerTravellingToLoadCommand(
      this.haulerNum, this.warehouseName, this.bayNumber, this.model) {}

  void execute() {
    this.model.hauler_travelling_to_load(haulerNum, warehouseName, bayNumber);
  }
}
