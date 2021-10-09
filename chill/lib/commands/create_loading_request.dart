import 'package:chill/commands/command.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/queueManager/loading_queue.dart';
import 'package:chill/queueManager/requests.dart';

class CreateLoadingRequest extends Command {
  DockingBay requestee;
  Duration estimatedReadyTime;
  LoadingQueue targetQueue;

  CreateLoadingRequest(
      this.requestee, this.estimatedReadyTime, this.targetQueue) {}

  void execute() {
    Request request = new Request(requestee, estimatedReadyTime);
    this.targetQueue.receiveLoadingRequest(request);
  }
}
