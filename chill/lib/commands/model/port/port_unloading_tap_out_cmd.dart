import 'package:chill/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/port_map.dart';

class PortUnloadingTapOutCommand extends Command {
  Hauler haulerNumber;
  PortMap map;
  PortUnloadingTapOutCommand(this.haulerNumber, this.map) {}

  void execute() {
    this.map.port_out_unloading(haulerNumber);
  }
}
