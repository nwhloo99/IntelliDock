import 'package:chill/commands/command.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/queueManager/loading_queue.dart';
import 'package:chill/queueManager/requests/loading_request.dart';

class CreateLoadingRequest extends Command {
  DockingBay requestee;
  Duration estimatedReadyTime;
  DateTime startTime;
  LoadingQueue targetQueue;

  CreateLoadingRequest(this.requestee, this.estimatedReadyTime, this.startTime,
      this.targetQueue) {}

  void execute() {
    LoadingRequest request =
        new LoadingRequest(requestee, estimatedReadyTime, startTime);
    this.targetQueue.receiveLoadingRequest(request);
  }
}
