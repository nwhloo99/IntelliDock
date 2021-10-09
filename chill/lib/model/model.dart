import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/port_map.dart';
import 'package:chill/queueManager/queues/loading_queue.dart';
import 'package:chill/queueManager/queues/unloading_queue.dart';

class Model {
  List<Hauler> haulers = [];
  late PortMap map;
  LoadingQueue loadingQueue = new LoadingQueue();
  UnloadingQueue unloadingQueue = new UnloadingQueue();

  Model(List<int> numOfWarehouses) {
    map = new PortMap(numOfWarehouses);
  }
}
