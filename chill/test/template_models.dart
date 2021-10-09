import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/model.dart';

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
