import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/queueManager/requests/loading_request.dart';

class LoadingQueue {
  List<LoadingRequest> requestList = [];
  DateTime timer = DateTime.now();

  LoadingQueue() {}

  updateTime() {
    Duration difference = timer.difference(DateTime.now());
    this.timer = DateTime.now();
    requestList.forEach((element) {
      element.updateDuration(difference);
    });
  }

//--------Handling Command requests-------------------------------------------
  /**
   * Handles accept_loading_request input
   */
  void acceptLoadingRequest(LoadingRequest request, HaulerUser haulerUser) {
    requestList.remove(request);
    request.pushToModel(haulerUser.getSelf());
  }

  /**
   * Handles create_loading_request input
   */
  void receiveLoadingRequest(LoadingRequest request) {
    requestList.add(request);
    requestList.sort((a, b) => a.compareEstimate(b));
  }
}
