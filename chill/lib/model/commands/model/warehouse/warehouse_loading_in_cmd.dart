import 'package:chill/model/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/model.dart';

class WarehouseLoadingInCommand extends Command {
  Hauler hauler;
  Model model;
  String warehouseName;
  num bayNumber;

  WarehouseLoadingInCommand(
      this.hauler, this.warehouseName, this.bayNumber, this.model) {}

  void execute() {
    this.model.warehouse_loading_in(hauler, warehouseName, bayNumber);
  }
}
