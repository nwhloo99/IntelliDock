import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/queueManager/user/hauler_user.dart';

class AcceptLoadingRequest extends Command {
  HaulerUser accepter;
  Request request;
  Model model;

  AcceptLoadingRequest(this.accepter, this.request, this.model) {}

  void execute() {
    this.model.acceptLoadingRequest(request, accepter);
  }
}
