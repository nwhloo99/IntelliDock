import 'package:chill/model/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/model.dart';

class PortUnloadingOutCommand extends Command {
  Hauler hauler;
  Model model;
  PortUnloadingOutCommand(this.hauler, this.model) {}

  void execute() {
    this.model.port_out_unloading(hauler);
  }
}
