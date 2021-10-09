import 'package:chill/model/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/port_map.dart';

class PortUnloadingOutCommand extends Command {
  Hauler hauler;
  PortMap map;
  PortUnloadingOutCommand(this.hauler, this.map) {}

  void execute() {
    this.map.port_out_unloading(hauler);
  }
}
