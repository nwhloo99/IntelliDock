import 'package:chill/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/port_map.dart';

class PortTapInCommand extends Command {
  Hauler haulerNumber;
  PortMap map;
  PortTapInCommand(this.haulerNumber, this.map) {}

  void execute() {
    this.map.port_in(haulerNumber);
  }
}
