import 'package:chill/queueManager/requests/request.dart';

abstract class Queue {
  List<Request> requestList = [];
  DateTime timer = DateTime.now();

  updateTime() {
    Duration difference = timer.difference(DateTime.now());
    this.timer = DateTime.now();
    requestList.forEach((element) {
      element.updateDuration(difference);
    });
  }
}
