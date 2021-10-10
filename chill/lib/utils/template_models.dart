import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/model.dart';

/** MODEL NULL
 * Empty Model
 */
Model generateModelNull() {
  return new Model([]);
}

/** MODEL A
 * WareHouse A: 3 Docking, Warehouse B: 2 Docking
 * Hauler 1 travelling to unload at A,1
 * Hauler 2 travelling to load at B,2
 */
Model generateModelA() {
  Model templateModelA = new Model([3, 2]);
  templateModelA.map.hauler_travelling_to_unload(new Hauler(1), 'A', 1);
  templateModelA.map.hauler_travelling_to_load(new Hauler(2), 'B', 2);
  return templateModelA;
}

/** MODEL B
 * Warehouse A: 5 Docking
 * Hauler 1 travelling to load at A,1
 * Hauler 2 occupying & loading at A,2
 * Hauler 3 occupying & unloading at A,3
 */
Model generateModeB() {
  Model templateModelB = new Model([5]);
  templateModelB.map.hauler_travelling_to_load(new Hauler(1), 'A', 1);
  templateModelB.map.warehouse_loading_in(new Hauler(2), 'A', 2);
  templateModelB.map.warehouse_unloading_in(new Hauler(3), 'A', 3);
  return templateModelB;
}

/** MODEL C
 * Warehouse A: 1 Docking
 * TODO; Flow to test: 
 * A,1 -> to send unloading request
 * Hauler1 -> to receive request and indicate on the way
 * A,1 -> see that Hauler1 is otw
 * Hauler1 -> indicate he has reached
 * A,1 -> see that bay is occupied
 * A,1 -> indicate unloading is complete
 */
Model generateModelC() {
  Model templateModelC = new Model([1]);
  return templateModelC;
}
