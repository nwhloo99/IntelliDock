import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/queueManager/requests.dart';

class LoadingQueue {
  List<Request> requestList = new List.empty();
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
  void acceptLoadingRequest(Request request, HaulerUser haulerUser) {
    requestList.remove(request);
    request.pushToModel(haulerUser.getSelf());
  }

  /**
   * Handles create_loading_request input
   */
  void receiveLoadingRequest(Request request) {
    requestList.add(request);
    requestList.sort((a, b) => a.compare(b));
  }
}
