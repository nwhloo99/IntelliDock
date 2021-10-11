import 'package:chill/model/warehouse/port.dart';
import 'package:chill/model/warehouse/warehouse.dart';

/* 
 * Map Model containing Warehouses and the Port
 */
class PortMap {
  late List<Warehouse> warehouses;
  late port startingPort;
  num numOfHaulers = 0;

  /**
   * Constructor for Map, taking in the arrangement of the Warehouses
   */
  PortMap(List<int> numOfWarehouses) {
    List<Warehouse> tempList = [];
    for (int i = 0; i < numOfWarehouses.length; i++) {
      tempList
          .add(new Warehouse(String.fromCharCode(65 + i), numOfWarehouses[i]));
    }
    warehouses = tempList;
    startingPort = new port();
  }
}
