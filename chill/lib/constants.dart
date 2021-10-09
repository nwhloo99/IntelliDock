// Average Loading Time kg/min
const AVG_Loading_Time = 1;

// Enum for Request Type
enum request_type { Loading, Unloading }

// Time to Warehouses in minutes
const num TTWarehouseA = 10;
const num TTWarehouseB = 6;
const num TTWarehouseC = 8;
const num TTWarehouseD = 20;
const num TTWarehouseE = 20;

// Hauler states
enum hauler_state {
  Loading,
  Unloading,
  TravellingToLoad,
  TravellingToUnload,
  Waiting
}
