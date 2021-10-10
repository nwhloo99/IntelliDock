import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';

class WarehouseLoadingInCommand extends Command {
  num haulerNum;
  Model model;
  String warehouseName;
  num bayNumber;

  WarehouseLoadingInCommand(
      this.haulerNum, this.warehouseName, this.bayNumber, this.model) {}

  void execute() {
    this.model.warehouse_loading_in(haulerNum, warehouseName, bayNumber);
  }
}
