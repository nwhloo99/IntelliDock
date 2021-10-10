import 'package:chill/model/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/model.dart';

class PortLoadingOutCommand extends Command {
  Hauler hauler;
  Model model;
  PortLoadingOutCommand(this.hauler, this.model) {}

  void execute() {
    this.model.port_loading_out(hauler);
  }
}
