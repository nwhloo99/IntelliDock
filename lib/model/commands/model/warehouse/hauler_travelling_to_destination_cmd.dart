import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';

class HaulerTravellingToDestinationCommand extends Command {
  num haulerNum;
  Model model;
  String warehouseName;
  num bayNumber;

  HaulerTravellingToDestinationCommand(
      this.haulerNum, this.warehouseName, this.bayNumber, this.model) {
    execute();
  }

  void execute() {
    this
        .model
        .hauler_travelling_to_destination(haulerNum, warehouseName, bayNumber);
  }
}
