import 'package:chill/model/model.dart';
import 'package:chill/screens/warehouse_dashboard/components/docking_bay_grid_available.dart';
import 'package:chill/screens/warehouse_dashboard/components/docking_bay_grid_awaiting.dart';
import 'package:chill/screens/warehouse_dashboard/components/docking_bay_grid_occupied.dart';
import 'package:chill/utils/constants.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:flutter/material.dart';

class DockingBayEntry extends StatefulWidget {
  const DockingBayEntry(
      {Key? key, required this.dockingBay, required this.simulatedModel})
      : super(key: key);

  final DockingBay dockingBay;
  final Model simulatedModel;

  @override
  _DockingBayEntryState createState() => _DockingBayEntryState();
}

class _DockingBayEntryState extends State<DockingBayEntry> {
  Color getStatusColor(DockingBay bay) {
    Color colorAvailable = Color(0xFF7CF3A0);
    Color colorAwaiting = Color(0xFFFEDE00);
    Color colorOccupied = Color(0xFFFF3212);
    BayState state = bay.state;
    switch (state) {
      case BayState.Available:
        {
          return colorAvailable;
        }

      case BayState.Awaiting:
        {
          return colorAwaiting;
        }

      case BayState.Occupied:
        {
          return colorOccupied;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (this.widget.dockingBay.state) {
      case BayState.Available:
        {
          return DockingBayGridAvailable(
              dockingBay: this.widget.dockingBay,
              simulatedModel: this.widget.simulatedModel);
        }

      case BayState.Awaiting:
        {
          return DockingBayGridAwaiting(
              dockingBay: this.widget.dockingBay,
              simulatedModel: this.widget.simulatedModel);
        }

      case BayState.Occupied:
        {
          return DockingBayGridOccupied(
              dockingBay: this.widget.dockingBay,
              simulatedModel: this.widget.simulatedModel);
        }
    }
  }
}
