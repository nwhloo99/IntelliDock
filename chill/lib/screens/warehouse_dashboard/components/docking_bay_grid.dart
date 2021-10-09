import 'package:chill/constants.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/queueManager/user/warehouse_user.dart';
import 'package:chill/screens/warehouse_dashboard/components/docking_bay_entry.dart';
import 'package:flutter/material.dart';

class DockingBayGrid extends StatefulWidget {
  final WarehouseUser warehouseUser;
  const DockingBayGrid(this.warehouseUser, {Key? key}) : super(key: key);

  @override
  _DockingBayGridState createState() => _DockingBayGridState();
}

class _DockingBayGridState extends State<DockingBayGrid> {
  @override
  Widget build(BuildContext context) {
    List<DockingBayEntry> cardList = [];

    this.widget.warehouseUser.parentWarehouse.loadingBays.forEach((bay) {
      DockingBayEntry card = new DockingBayEntry(dockingBay: bay);
      cardList.add(card);
    });

    return Expanded(
        child: GridView.count(
            physics: ScrollPhysics(),
            primary: false,
            crossAxisCount: 3,
            children: cardList));
  }
}
