import 'package:chill/model/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/port_map.dart';

class PortInCommand extends Command {
  Hauler hauler;
  PortMap map;
  PortInCommand(this.hauler, this.map) {}

  void execute() {
    this.map.port_in(hauler);
  }
}
