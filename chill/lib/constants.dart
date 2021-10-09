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
const num containerTransferTime = 20;

// Hauler states
enum hauler_state {
  Loading,
  Unloading,
  TravellingToLoad,
  TravellingToUnload,
  Waiting
}

// Bay states
enum bay_state { Available, Awaiting, Occupied }
