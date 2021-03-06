import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/queueManager/user/hauler_user.dart';

class AcceptRequestCommand extends Command {
  HaulerUser accepter;
  Request request;
  Model model;

  AcceptRequestCommand(this.accepter, this.request, this.model) {
    execute();
  }

  void execute() {
    this.model.acceptRequest(request, accepter);
  }
}
