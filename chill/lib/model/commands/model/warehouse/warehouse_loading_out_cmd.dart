import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';

class WarehouseLoadingOutCommand extends Command {
  num haulerNum;
  Model model;
  String warehouseName;
  num bayNumber;

  WarehouseLoadingOutCommand(
      this.haulerNum, this.warehouseName, this.bayNumber, this.model) {}

  void execute() {
    this.model.warehouse_loading_out(haulerNum, warehouseName, bayNumber);
  }
}
