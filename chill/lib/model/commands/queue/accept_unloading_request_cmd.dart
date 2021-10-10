import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/queueManager/user/hauler_user.dart';

class AcceptUnloadingRequest extends Command {
  HaulerUser accepter;
  Request request;
  Model model;

  AcceptUnloadingRequest(this.accepter, this.request, this.model) {}

  void execute() {
    this.model.acceptUnloadingRequest(request, accepter);
  }
}
