import 'package:flutter/material.dart';

// SCREEN CONSTANTS
// Colors to be used in the app
const kPrimaryColor = Color(0xFF2697EF);
const kSecondaryColor = Color(0xFF1D1F2F);
const kTextColor = Color(0xFFE2E2FF);
const kBackgroundColor = Color(0xFF212332);

// FontSize
const double kHeaderFont1 = 44;
const double kHeaderFont2 = 36;
const double kTextFont = 24;

// Padding
const double kDefaultPadding = 20.0;

//
const String fFamily = 'Montserrat';

// BACKEND CONSTANTS
// Average Queueing Delay in minutes
const Queue_Delay = 60;

// Enum for Request Type
enum request_type { Loading, Unloading }

// Time to Warehouses in minutes
const num TTWarehouseA = 10; // 17 Dock Bays
const num TTWarehouseB = 6; // 17 Dock Bays
const num TTWarehouseC = 20; // 8 Docks Bays
const num TTWarehouseD = 20; // 8 Dock Bays
const num TTWarehouseE = 8; // 21 Dock bays

// Time to Load / Unload Container in mins per container
const int containerTransferTime = 20;

// Hauler states
enum hauler_state {
  Loading,
  Unloading,
  TravellingToLoad,
  TravellingToUnload,
  Waiting
}

// Bay states
enum BayState { Available, Awaiting, Occupied }
