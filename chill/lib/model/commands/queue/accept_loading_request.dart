import 'package:chill/model/commands/command.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/queueManager/queues/loading_queue.dart';

class AcceptLoadingRequest extends Command {
  HaulerUser accepter;
  Request request;
  LoadingQueue targetQueue;

  AcceptLoadingRequest(this.accepter, this.request, this.targetQueue) {}

  void execute() {
    this.targetQueue.acceptLoadingRequest(request, accepter);
  }
}
