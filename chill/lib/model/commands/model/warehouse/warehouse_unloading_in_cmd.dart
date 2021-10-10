import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';

class WarehouseUnloadingInCommand extends Command {
  num haulerNum;
  Model model;
  String warehouseName;
  num bayNumber;

  WarehouseUnloadingInCommand(
      this.haulerNum, this.warehouseName, this.bayNumber, this.model) {
    execute();
  }

  void execute() {
    this.model.warehouse_unloading_in(haulerNum, warehouseName, bayNumber);
  }
}
