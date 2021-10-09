import 'package:chill/model/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/port_map.dart';

class PortLoadingOutCommand extends Command {
  Hauler hauler;
  PortMap map;
  PortLoadingOutCommand(this.hauler, this.map) {}

  void execute() {
    this.map.port_loading_out(hauler);
  }
}
