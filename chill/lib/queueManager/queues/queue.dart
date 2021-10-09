import 'package:chill/queueManager/requests/request.dart';

abstract class Queue {
  List<Request> requestList = [];
  DateTime timer = DateTime.now();
}
