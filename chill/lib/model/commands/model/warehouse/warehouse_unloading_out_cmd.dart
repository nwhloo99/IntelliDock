import 'package:chill/model/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/model.dart';

class WarehouseUnloadingOutCommand extends Command {
  Hauler hauler;
  Model model;
  String warehouseName;
  num bayNumber;

  WarehouseUnloadingOutCommand(
      this.hauler, this.warehouseName, this.bayNumber, this.model) {}

  void execute() {
    this.model.warehouse_unloading_out(hauler, warehouseName, bayNumber);
  }
}
