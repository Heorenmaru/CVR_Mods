---@meta
-- AUTOMATICALLY GENERATED, DO NOT EDIT BY HAND
local RCC = {}

--- FIXME: Wrapped RCC_CarControllerV3+WheelType for Lua and WASM
---@enum RCC.WheelType
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.WheelType = {}
RCC.WheelType.FWD = 0
RCC.WheelType.RWD = 1
RCC.WheelType.AWD = 2
RCC.WheelType.BIASED = 3

--- FIXME: Wrapped RCC_CarControllerV3+AudioType for Lua and WASM
---@enum RCC.AudioType
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.AudioType = {}
RCC.AudioType.OneSource = 0
RCC.AudioType.TwoSource = 1
RCC.AudioType.ThreeSource = 2
RCC.AudioType.Off = 3

--- FIXME: Wrapped RCC_CarControllerV3+IndicatorsOn for Lua and WASM
---@enum RCC.IndicatorsOn
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.IndicatorsOn = {}
RCC.IndicatorsOn.Off = 0
RCC.IndicatorsOn.Right = 1
RCC.IndicatorsOn.Left = 2
RCC.IndicatorsOn.All = 3

--- FIXME: Wrapped RCC_CarControllerV3+WheelDamage for Lua and WASM
---@enum RCC.WheelDamage
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.WheelDamage = {}
RCC.WheelDamage.Off = 0
RCC.WheelDamage.Visual = 1
RCC.WheelDamage.Mechanical = 2

--- @class RCC.RCC
--- This is the RCC scene management system, NOT the actual car.
--- @access WORLD CLIENT|SERVER LOCAL|OTHER
---@field enabled System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isActiveAndEnabled System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field gameObject UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field tag System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field transform UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field name System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
RCC.RCC = {}
RCC.RCC.enabled = true
RCC.RCC.isActiveAndEnabled = true
RCC.RCC.gameObject = nil
RCC.RCC.tag = ""
RCC.RCC.transform = nil
RCC.RCC.name = ""

---Constructor for RCC.RCC
---@return RCC.RCC
function RCC.NewRCC() end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.ChangeCamera () return end -- static

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.DeRegisterPlayerVehicle () return end -- static

---@param vehicle RCC_CarControllerV3: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.RegisterPlayerVehicle (vehicle) return end -- static

---@param vehicle RCC_CarControllerV3: 
---@param isControllable System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.RegisterPlayerVehicle (vehicle, isControllable) return end -- static

---@param vehicle RCC_CarControllerV3: 
---@param isControllable System.Boolean: 
---@param engineState System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.RegisterPlayerVehicle (vehicle, isControllable, engineState) return end -- static

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.SetAutomaticGear () return end -- static

---@param behaviorIndex System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.SetBehavior (behaviorIndex) return end -- static

---@param vehicle RCC_CarControllerV3: 
---@param isControllable System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.SetControl (vehicle, isControllable) return end -- static

---@param controllerIndex System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.SetController (controllerIndex) return end -- static

---@param vehicle RCC_CarControllerV3: 
---@param engineState System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.SetEngine (vehicle, engineState) return end -- static

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.SetUnits () return end -- static

---@param vehiclePrefab RCC_CarControllerV3: 
---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@param registerAsPlayerVehicle System.Boolean: 
---@param isControllable System.Boolean: 
---@param isEngineRunning System.Boolean: 
---@return RCC_CarControllerV3
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.SpawnRCC (vehiclePrefab, position, rotation, registerAsPlayerVehicle, isControllable, isEngineRunning) return nil end -- static

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.StartStopRecord () return end -- static

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.StartStopReplay () return end -- static

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.StopRecordReplay () return end -- static

---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.Transport (position, rotation) return end -- static

---@param vehicle RCC_CarControllerV3: 
---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.Transport (vehicle, position, rotation) return end -- static

---@param x RCC: 
---@param y RCC: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.op_Equality (x, y) return true end -- static

---@param x RCC: 
---@param y RCC: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.ToString () return "" end

---@param exists RCC: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC.op_Implicit (exists) return true end -- static

--- @class RCC.ConfigureVehicleSubsteps
--- FIXME: Wrapped RCC_CarControllerV3+ConfigureVehicleSubsteps for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field speedThreshold System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field stepsAboveThreshold System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field stepsBelowThreshold System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.ConfigureVehicleSubsteps = {}
RCC.ConfigureVehicleSubsteps.speedThreshold = 0.0
RCC.ConfigureVehicleSubsteps.stepsAboveThreshold = 0
RCC.ConfigureVehicleSubsteps.stepsBelowThreshold = 0

---Constructor for RCC.ConfigureVehicleSubsteps
---@return RCC.ConfigureVehicleSubsteps
function RCC.NewConfigureVehicleSubsteps() end

---@param x RCC_CarControllerV3.ConfigureVehicleSubsteps: 
---@param y RCC_CarControllerV3.ConfigureVehicleSubsteps: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.ConfigureVehicleSubsteps.op_Equality (x, y) return true end -- static

---@param x RCC_CarControllerV3.ConfigureVehicleSubsteps: 
---@param y RCC_CarControllerV3.ConfigureVehicleSubsteps: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.ConfigureVehicleSubsteps.op_Inequality (x, y) return true end -- static

--- @class RCC.Gear
--- FIXME: Wrapped RCC_CarControllerV3+Gear for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxRatio System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxSpeed System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetSpeedForNextGear System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.Gear = {}
RCC.Gear.maxRatio = 0.0
RCC.Gear.maxSpeed = 0
RCC.Gear.targetSpeedForNextGear = 0

---Constructor for RCC.Gear
---@return RCC.Gear
function RCC.NewGear() end

---@param ratio System.Single: 
---@param speed System.Int32: 
---@param targetSpeed System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.Gear.SetGear (ratio, speed, targetSpeed) return end

---@param x RCC_CarControllerV3.Gear: 
---@param y RCC_CarControllerV3.Gear: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.Gear.op_Equality (x, y) return true end -- static

---@param x RCC_CarControllerV3.Gear: 
---@param y RCC_CarControllerV3.Gear: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.Gear.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_CarControllerV3
--- FIXME: Wrapped RCC_CarControllerV3 for Lua and WASM
--- @access EVENT_WHITELIST|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ABS System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ABSAct System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ABSThreshold System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field allWheelColliders RCC_WheelCollider[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field angularDragHelper System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field angularDragHelperStrength System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field antiRollFrontHorizontal System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field antiRollRearHorizontal System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field antiRollVertical System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field applyEngineTorqueToExtraRearWheelColliders System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field attachedTrailer RCC_TruckTrailer 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field audioType RCC_CarControllerV3.AudioType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field autoCreateEngineOffSounds System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field autoGenerateEngineRPMCurve System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field automaticGear System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field autoReverse System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field blowClip UnityEngine.AudioClip[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field boostInput System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field brakeClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field brakeInput System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field brakeTorque System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field canControl System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field changingGear System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field clutchInertia System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field clutchInput System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field COM UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field configureVehicleSubsteps RCC_CarControllerV3.ConfigureVehicleSubsteps 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field contactSparkle UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field counterSteeringFactor System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field crashClips UnityEngine.AudioClip[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field currentGear System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field cutGas System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field damageFilter UnityEngine.LayerMask 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field damageMultiplier System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field damageRadius System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field deformableMeshFilters UnityEngine.MeshFilter[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field detachableParts RCC_DetachablePart[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field direction System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field downForce System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field electricVehicleBrake System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field electricVehicleBrakeValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineClipHigh UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineClipHighOff UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineClipIdle UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineClipLow UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineClipLowOff UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineClipMed UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineClipMedOff UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineCoolingWaterThreshold System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineCoolRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineFriction System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineHeat System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineHeatRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineInertia System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineRPM System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineRunning System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineSoundPosition UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineStartClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field engineTorqueCurve UnityEngine.AnimationCurve 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ESP System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ESPAct System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ESPStrength System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ESPThreshold System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field exhaustSoundPosition UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field externalController System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ExtraRearWheelsCollider RCC_WheelCollider[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field ExtraRearWheelsTransform UnityEngine.Transform[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field finalRatio System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field FrontLeftWheelCollider RCC_WheelCollider 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field FrontLeftWheelTransform UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field FrontRightWheelCollider RCC_WheelCollider 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field FrontRightWheelTransform UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field frontSlip System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fuelConsumptionRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fuelInput System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fuelTank System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fuelTankCapacity System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gears RCC_CarControllerV3.Gear[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gearShiftDownRPM System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gearShiftingClips UnityEngine.AudioClip[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gearShiftingDelay System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gearShiftingThreshold System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gearShiftUpRPM System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gearSoundPosition UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field handbrakeInput System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field highBeamHeadLightsOn System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field highspeedsteerAngle System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field highspeedsteerAngleAtspeed System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field idleEngineSoundVolume System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field indicatorsOn RCC_CarControllerV3.IndicatorsOn 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field indicatorTimer System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field inputs RCC_Inputs 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isGrounded System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field launched System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field lowBeamHeadLightsOn System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxEngineRPM System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxEngineSoundPitch System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxEngineSoundVolume System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxEngineTorque System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxEngineTorqueAtRPM System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maximumContactSparkle System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maximumDamage System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxspeed System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minEngineRPM System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minEngineSoundPitch System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minEngineSoundVolume System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field NGear System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field NoS System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field NOSClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field overrideWheels System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field overSteering System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field poweredWheels System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field randomizeVertices System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field RearLeftWheelCollider RCC_WheelCollider 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field RearLeftWheelTransform UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field RearRightWheelCollider RCC_WheelCollider 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field RearRightWheelTransform UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field rearSlip System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field repaired System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field repairNow System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field reversingClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field rigid UnityEngine.Rigidbody 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field runEngineAtAwake System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field speed System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field steerAngle System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field steerHelperAngularVelStrength System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field steerHelperLinearVelStrength System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field steeringDirection UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field steeringHelper System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field steeringSmootherFactor System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field SteeringWheel UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field steeringWheelAngleMultiplier System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field steeringWheelRotateAround RCC_CarControllerV3.SteeringWheelRotateAround 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field steerInput System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TCS System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TCSAct System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TCSStrength System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field throttleInput System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field totalGears System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field tractionHelper System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field tractionHelperStrength System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field turboBoost System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field turboClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field turboSoundPosition UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field underSteering System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useAutomaticClutch System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field useCounterSteering System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useDamage System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useEngineHeat System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useExhaustFlame System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useFuelConsumption System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useNOS System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useRevLimiter System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useSteeringSmoother System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useTurbo System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field velocityAngle System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field velocityDirection UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field wheelDamage RCC_CarControllerV3.WheelDamage 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field wheelDamageMultiplier System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field wheelDamageRadius System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field wheelTypeChoise RCC_CarControllerV3.WheelType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field windClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field windSoundPosition UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field enabled System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isActiveAndEnabled System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field gameObject UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field tag System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field transform UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field name System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
RCC.RCC_CarControllerV3 = {}
RCC.RCC_CarControllerV3.ABS = true
RCC.RCC_CarControllerV3.ABSAct = true
RCC.RCC_CarControllerV3.ABSThreshold = 0.0
RCC.RCC_CarControllerV3.allWheelColliders = []
RCC.RCC_CarControllerV3.angularDragHelper = true
RCC.RCC_CarControllerV3.angularDragHelperStrength = 0.0
RCC.RCC_CarControllerV3.antiRollFrontHorizontal = 0.0
RCC.RCC_CarControllerV3.antiRollRearHorizontal = 0.0
RCC.RCC_CarControllerV3.antiRollVertical = 0.0
RCC.RCC_CarControllerV3.applyEngineTorqueToExtraRearWheelColliders = true
RCC.RCC_CarControllerV3.attachedTrailer = nil
RCC.RCC_CarControllerV3.audioType = nil
RCC.RCC_CarControllerV3.autoCreateEngineOffSounds = true
RCC.RCC_CarControllerV3.autoGenerateEngineRPMCurve = true
RCC.RCC_CarControllerV3.automaticGear = true
RCC.RCC_CarControllerV3.autoReverse = true
RCC.RCC_CarControllerV3.blowClip = []
RCC.RCC_CarControllerV3.boostInput = 0.0
RCC.RCC_CarControllerV3.brakeClip = nil
RCC.RCC_CarControllerV3.brakeInput = 0.0
RCC.RCC_CarControllerV3.brakeTorque = 0.0
RCC.RCC_CarControllerV3.canControl = true
RCC.RCC_CarControllerV3.changingGear = true
RCC.RCC_CarControllerV3.clutchInertia = 0.0
RCC.RCC_CarControllerV3.clutchInput = 0.0
RCC.RCC_CarControllerV3.COM = nil
RCC.RCC_CarControllerV3.configureVehicleSubsteps = nil
RCC.RCC_CarControllerV3.contactSparkle = nil
RCC.RCC_CarControllerV3.counterSteeringFactor = 0.0
RCC.RCC_CarControllerV3.crashClips = []
RCC.RCC_CarControllerV3.currentGear = 0
RCC.RCC_CarControllerV3.cutGas = true
RCC.RCC_CarControllerV3.damageFilter = nil
RCC.RCC_CarControllerV3.damageMultiplier = 0.0
RCC.RCC_CarControllerV3.damageRadius = 0.0
RCC.RCC_CarControllerV3.deformableMeshFilters = []
RCC.RCC_CarControllerV3.detachableParts = []
RCC.RCC_CarControllerV3.direction = 0
RCC.RCC_CarControllerV3.downForce = 0.0
RCC.RCC_CarControllerV3.electricVehicleBrake = true
RCC.RCC_CarControllerV3.electricVehicleBrakeValue = 0.0
RCC.RCC_CarControllerV3.engineClipHigh = nil
RCC.RCC_CarControllerV3.engineClipHighOff = nil
RCC.RCC_CarControllerV3.engineClipIdle = nil
RCC.RCC_CarControllerV3.engineClipLow = nil
RCC.RCC_CarControllerV3.engineClipLowOff = nil
RCC.RCC_CarControllerV3.engineClipMed = nil
RCC.RCC_CarControllerV3.engineClipMedOff = nil
RCC.RCC_CarControllerV3.engineCoolingWaterThreshold = 0.0
RCC.RCC_CarControllerV3.engineCoolRate = 0.0
RCC.RCC_CarControllerV3.engineFriction = 0.0
RCC.RCC_CarControllerV3.engineHeat = 0.0
RCC.RCC_CarControllerV3.engineHeatRate = 0.0
RCC.RCC_CarControllerV3.engineInertia = 0.0
RCC.RCC_CarControllerV3.engineRPM = 0.0
RCC.RCC_CarControllerV3.engineRunning = true
RCC.RCC_CarControllerV3.engineSoundPosition = nil
RCC.RCC_CarControllerV3.engineStartClip = nil
RCC.RCC_CarControllerV3.engineTorqueCurve = nil
RCC.RCC_CarControllerV3.ESP = true
RCC.RCC_CarControllerV3.ESPAct = true
RCC.RCC_CarControllerV3.ESPStrength = 0.0
RCC.RCC_CarControllerV3.ESPThreshold = 0.0
RCC.RCC_CarControllerV3.exhaustSoundPosition = nil
RCC.RCC_CarControllerV3.externalController = true
RCC.RCC_CarControllerV3.ExtraRearWheelsCollider = []
RCC.RCC_CarControllerV3.ExtraRearWheelsTransform = []
RCC.RCC_CarControllerV3.finalRatio = 0.0
RCC.RCC_CarControllerV3.FrontLeftWheelCollider = nil
RCC.RCC_CarControllerV3.FrontLeftWheelTransform = nil
RCC.RCC_CarControllerV3.FrontRightWheelCollider = nil
RCC.RCC_CarControllerV3.FrontRightWheelTransform = nil
RCC.RCC_CarControllerV3.frontSlip = 0.0
RCC.RCC_CarControllerV3.fuelConsumptionRate = 0.0
RCC.RCC_CarControllerV3.fuelInput = 0.0
RCC.RCC_CarControllerV3.fuelTank = 0.0
RCC.RCC_CarControllerV3.fuelTankCapacity = 0.0
RCC.RCC_CarControllerV3.gears = []
RCC.RCC_CarControllerV3.gearShiftDownRPM = 0.0
RCC.RCC_CarControllerV3.gearShiftingClips = []
RCC.RCC_CarControllerV3.gearShiftingDelay = 0.0
RCC.RCC_CarControllerV3.gearShiftingThreshold = 0.0
RCC.RCC_CarControllerV3.gearShiftUpRPM = 0.0
RCC.RCC_CarControllerV3.gearSoundPosition = nil
RCC.RCC_CarControllerV3.handbrakeInput = 0.0
RCC.RCC_CarControllerV3.highBeamHeadLightsOn = true
RCC.RCC_CarControllerV3.highspeedsteerAngle = 0.0
RCC.RCC_CarControllerV3.highspeedsteerAngleAtspeed = 0.0
RCC.RCC_CarControllerV3.idleEngineSoundVolume = 0.0
RCC.RCC_CarControllerV3.indicatorsOn = nil
RCC.RCC_CarControllerV3.indicatorTimer = 0.0
RCC.RCC_CarControllerV3.inputs = nil
RCC.RCC_CarControllerV3.isGrounded = true
RCC.RCC_CarControllerV3.launched = 0.0
RCC.RCC_CarControllerV3.lowBeamHeadLightsOn = true
RCC.RCC_CarControllerV3.maxEngineRPM = 0.0
RCC.RCC_CarControllerV3.maxEngineSoundPitch = 0.0
RCC.RCC_CarControllerV3.maxEngineSoundVolume = 0.0
RCC.RCC_CarControllerV3.maxEngineTorque = 0.0
RCC.RCC_CarControllerV3.maxEngineTorqueAtRPM = 0.0
RCC.RCC_CarControllerV3.maximumContactSparkle = 0
RCC.RCC_CarControllerV3.maximumDamage = 0.0
RCC.RCC_CarControllerV3.maxspeed = 0.0
RCC.RCC_CarControllerV3.minEngineRPM = 0.0
RCC.RCC_CarControllerV3.minEngineSoundPitch = 0.0
RCC.RCC_CarControllerV3.minEngineSoundVolume = 0.0
RCC.RCC_CarControllerV3.NGear = true
RCC.RCC_CarControllerV3.NoS = 0.0
RCC.RCC_CarControllerV3.NOSClip = nil
RCC.RCC_CarControllerV3.overrideWheels = true
RCC.RCC_CarControllerV3.overSteering = true
RCC.RCC_CarControllerV3.poweredWheels = 0
RCC.RCC_CarControllerV3.randomizeVertices = 0.0
RCC.RCC_CarControllerV3.RearLeftWheelCollider = nil
RCC.RCC_CarControllerV3.RearLeftWheelTransform = nil
RCC.RCC_CarControllerV3.RearRightWheelCollider = nil
RCC.RCC_CarControllerV3.RearRightWheelTransform = nil
RCC.RCC_CarControllerV3.rearSlip = 0.0
RCC.RCC_CarControllerV3.repaired = true
RCC.RCC_CarControllerV3.repairNow = true
RCC.RCC_CarControllerV3.reversingClip = nil
RCC.RCC_CarControllerV3.rigid = nil
RCC.RCC_CarControllerV3.runEngineAtAwake = true
RCC.RCC_CarControllerV3.speed = 0.0
RCC.RCC_CarControllerV3.steerAngle = 0.0
RCC.RCC_CarControllerV3.steerHelperAngularVelStrength = 0.0
RCC.RCC_CarControllerV3.steerHelperLinearVelStrength = 0.0
RCC.RCC_CarControllerV3.steeringDirection = nil
RCC.RCC_CarControllerV3.steeringHelper = true
RCC.RCC_CarControllerV3.steeringSmootherFactor = 0.0
RCC.RCC_CarControllerV3.SteeringWheel = nil
RCC.RCC_CarControllerV3.steeringWheelAngleMultiplier = 0.0
RCC.RCC_CarControllerV3.steeringWheelRotateAround = nil
RCC.RCC_CarControllerV3.steerInput = 0.0
RCC.RCC_CarControllerV3.TCS = true
RCC.RCC_CarControllerV3.TCSAct = true
RCC.RCC_CarControllerV3.TCSStrength = 0.0
RCC.RCC_CarControllerV3.throttleInput = 0.0
RCC.RCC_CarControllerV3.totalGears = 0
RCC.RCC_CarControllerV3.tractionHelper = true
RCC.RCC_CarControllerV3.tractionHelperStrength = 0.0
RCC.RCC_CarControllerV3.turboBoost = 0.0
RCC.RCC_CarControllerV3.turboClip = nil
RCC.RCC_CarControllerV3.turboSoundPosition = nil
RCC.RCC_CarControllerV3.underSteering = true
RCC.RCC_CarControllerV3.useAutomaticClutch = true
RCC.RCC_CarControllerV3.useCounterSteering = true
RCC.RCC_CarControllerV3.useDamage = true
RCC.RCC_CarControllerV3.useEngineHeat = true
RCC.RCC_CarControllerV3.useExhaustFlame = true
RCC.RCC_CarControllerV3.useFuelConsumption = true
RCC.RCC_CarControllerV3.useNOS = true
RCC.RCC_CarControllerV3.useRevLimiter = true
RCC.RCC_CarControllerV3.useSteeringSmoother = true
RCC.RCC_CarControllerV3.useTurbo = true
RCC.RCC_CarControllerV3.velocityAngle = 0.0
RCC.RCC_CarControllerV3.velocityDirection = nil
RCC.RCC_CarControllerV3.wheelDamage = nil
RCC.RCC_CarControllerV3.wheelDamageMultiplier = 0.0
RCC.RCC_CarControllerV3.wheelDamageRadius = 0.0
RCC.RCC_CarControllerV3.wheelTypeChoise = nil
RCC.RCC_CarControllerV3.windClip = nil
RCC.RCC_CarControllerV3.windSoundPosition = nil
RCC.RCC_CarControllerV3.enabled = true
RCC.RCC_CarControllerV3.isActiveAndEnabled = true
RCC.RCC_CarControllerV3.gameObject = nil
RCC.RCC_CarControllerV3.tag = ""
RCC.RCC_CarControllerV3.transform = nil
RCC.RCC_CarControllerV3.name = ""

---Constructor for RCC.RCC_CarControllerV3
---@return RCC.RCC_CarControllerV3
function RCC.NewRCC_CarControllerV3() end

---@param gear System.Int32: 
---@return System.Collections.IEnumerator
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.ChangeGear (gear) return nil end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.CheckGrounded () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.CreateEngineCurve () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.CreateWheelColliders () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.DetachTrailer () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GearShiftDown () return end

---@param gear System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GearShiftTo (gear) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GearShiftUp () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.InitGears () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.KillEngine () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.KillOrStartEngine () return end

---@param state System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.PreviewSmokeParticle (state) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.Repair () return end

---@param state System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.SetCanControl (state) return end

---@param state System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.SetEngine (state) return end

---@param state System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.SetExternalControl (state) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.StartEngine () return end

---@param instantStart System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.StartEngine (instantStart) return end

---@return System.Collections.IEnumerator
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.StartEngineDelayed () return nil end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.UpdateKinematic () return end

---@param x RCC_CarControllerV3: 
---@param y RCC_CarControllerV3: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.op_Equality (x, y) return true end -- static

---@param x RCC_CarControllerV3: 
---@param y RCC_CarControllerV3: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.ToString () return "" end

---@param exists RCC_CarControllerV3: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CarControllerV3.op_Implicit (exists) return true end -- static

--- @class RCC.RCC_Caliper
--- FIXME: Wrapped RCC_Caliper for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field wheelCollider RCC_WheelCollider 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_Caliper = {}
RCC.RCC_Caliper.wheelCollider = nil

---Constructor for RCC.RCC_Caliper
---@return RCC.RCC_Caliper
function RCC.NewRCC_Caliper() end

---@param x RCC_Caliper: 
---@param y RCC_Caliper: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Caliper.op_Equality (x, y) return true end -- static

---@param x RCC_Caliper: 
---@param y RCC_Caliper: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Caliper.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_Camera
--- FIXME: Wrapped RCC_Camera for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field cameraMode RCC_Camera.CameraMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field hoodCameraFOV System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isRendering System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field lastCameraMode RCC_Camera.CameraMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maximumOrtSize System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maximumZDistanceOffset System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxOrbitY System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minimumOrtSize System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minOrbitY System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field occlusionLayerMask UnityEngine.LayerMask 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field oldOrbitY System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field orbitReset System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field orbitSmooth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field orbitXSpeed System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field orbitYSpeed System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field pivot UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field playerCar RCC_CarControllerV3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field thisCam UnityEngine.Camera 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field topCameraAngle UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field topCameraDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSAutoFocus System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSAutoReverse System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSCollision System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSMaximumFOV System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSMinimumFOV System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSOffset UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSPitch System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSRotationDamping System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSStartRotation UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSTiltMaximum System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSTiltMultiplier System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field TPSYaw System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useAutoChangeCamera System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useCinematicCameraMode System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useFixedCameraMode System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useHoodCameraMode System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useOcclusion System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useOrbitInHoodCameraMode System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useOrbitInTPSCameraMode System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useOrthoForTopCamera System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useTopCameraMode System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useWheelCameraMode System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field wheelCameraFOV System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_Camera = {}
RCC.RCC_Camera.cameraMode = nil
RCC.RCC_Camera.hoodCameraFOV = 0.0
RCC.RCC_Camera.isRendering = true
RCC.RCC_Camera.lastCameraMode = nil
RCC.RCC_Camera.maximumOrtSize = 0.0
RCC.RCC_Camera.maximumZDistanceOffset = 0.0
RCC.RCC_Camera.maxOrbitY = 0.0
RCC.RCC_Camera.minimumOrtSize = 0.0
RCC.RCC_Camera.minOrbitY = 0.0
RCC.RCC_Camera.occlusionLayerMask = nil
RCC.RCC_Camera.oldOrbitY = 0.0
RCC.RCC_Camera.orbitReset = true
RCC.RCC_Camera.orbitSmooth = 0.0
RCC.RCC_Camera.orbitXSpeed = 0.0
RCC.RCC_Camera.orbitYSpeed = 0.0
RCC.RCC_Camera.pivot = nil
RCC.RCC_Camera.playerCar = nil
RCC.RCC_Camera.thisCam = nil
RCC.RCC_Camera.topCameraAngle = nil
RCC.RCC_Camera.topCameraDistance = 0.0
RCC.RCC_Camera.TPSAutoFocus = true
RCC.RCC_Camera.TPSAutoReverse = true
RCC.RCC_Camera.TPSCollision = true
RCC.RCC_Camera.TPSDistance = 0.0
RCC.RCC_Camera.TPSHeight = 0.0
RCC.RCC_Camera.TPSMaximumFOV = 0.0
RCC.RCC_Camera.TPSMinimumFOV = 0.0
RCC.RCC_Camera.TPSOffset = nil
RCC.RCC_Camera.TPSPitch = 0.0
RCC.RCC_Camera.TPSRotationDamping = 0.0
RCC.RCC_Camera.TPSStartRotation = nil
RCC.RCC_Camera.TPSTiltMaximum = 0.0
RCC.RCC_Camera.TPSTiltMultiplier = 0.0
RCC.RCC_Camera.TPSYaw = 0.0
RCC.RCC_Camera.useAutoChangeCamera = true
RCC.RCC_Camera.useCinematicCameraMode = true
RCC.RCC_Camera.useFixedCameraMode = true
RCC.RCC_Camera.useHoodCameraMode = true
RCC.RCC_Camera.useOcclusion = true
RCC.RCC_Camera.useOrbitInHoodCameraMode = true
RCC.RCC_Camera.useOrbitInTPSCameraMode = true
RCC.RCC_Camera.useOrthoForTopCamera = true
RCC.RCC_Camera.useTopCameraMode = true
RCC.RCC_Camera.useWheelCameraMode = true
RCC.RCC_Camera.wheelCameraFOV = 0.0

---Constructor for RCC.RCC_Camera
---@return RCC.RCC_Camera
function RCC.NewRCC_Camera() end

---@return System.Collections.IEnumerator
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.AutoFocus () return nil end

---@param bounds UnityEngine.Transform: 
---@return System.Collections.IEnumerator
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.AutoFocus (bounds) return nil end

---@param bounds1 UnityEngine.Transform: 
---@param bounds2 UnityEngine.Transform: 
---@return System.Collections.IEnumerator
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.AutoFocus (bounds1, bounds2) return nil end

---@param bounds1 UnityEngine.Transform: 
---@param bounds2 UnityEngine.Transform: 
---@param bounds3 UnityEngine.Transform: 
---@return System.Collections.IEnumerator
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.AutoFocus (bounds1, bounds2, bounds3) return nil end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.ChangeCamera () return end

---@param mode RCC_Camera.CameraMode: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.ChangeCamera (mode) return end

---@param collision UnityEngine.Collision: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.Collision (collision) return end

---@param pointerData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.OnDrag (pointerData) return end

---@param x System.Single: 
---@param y System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.OnDrag (x, y) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.RemoveTarget () return end

---@param player UnityEngine.GameObject: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.SetTarget (player) return end

---@param state System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.ToggleCamera (state) return end

---@param x RCC_Camera: 
---@param y RCC_Camera: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.op_Equality (x, y) return true end -- static

---@param x RCC_Camera: 
---@param y RCC_Camera: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Camera.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_Core
--- FIXME: Wrapped RCC_Core for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_Core = {}

---Constructor for RCC.RCC_Core
---@return RCC.RCC_Core
function RCC.NewRCC_Core() end

---@param carController RCC_CarControllerV3: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Core.CreateWheelColliders (carController) return end

---@param audioMixer UnityEngine.Audio.AudioMixerGroup: 
---@param go UnityEngine.GameObject: 
---@param audioName System.String: 
---@param minDistance System.Single: 
---@param maxDistance System.Single: 
---@param volume System.Single: 
---@param audioClip UnityEngine.AudioClip: 
---@param loop System.Boolean: 
---@param playNow System.Boolean: 
---@param destroyAfterFinished System.Boolean: 
---@return UnityEngine.AudioSource
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Core.NewAudioSource (audioMixer, go, audioName, minDistance, maxDistance, volume, audioClip, loop, playNow, destroyAfterFinished) return nil end -- static

---@param go UnityEngine.GameObject: 
---@param audioName System.String: 
---@param minDistance System.Single: 
---@param maxDistance System.Single: 
---@param volume System.Single: 
---@param audioClip UnityEngine.AudioClip: 
---@param loop System.Boolean: 
---@param playNow System.Boolean: 
---@param destroyAfterFinished System.Boolean: 
---@return UnityEngine.AudioSource
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Core.NewAudioSource (go, audioName, minDistance, maxDistance, volume, audioClip, loop, playNow, destroyAfterFinished) return nil end -- static

---@param audioMixer UnityEngine.Audio.AudioMixerGroup: 
---@param go UnityEngine.GameObject: 
---@param localPosition UnityEngine.Vector3: 
---@param audioName System.String: 
---@param minDistance System.Single: 
---@param maxDistance System.Single: 
---@param volume System.Single: 
---@param audioClip UnityEngine.AudioClip: 
---@param loop System.Boolean: 
---@param playNow System.Boolean: 
---@param destroyAfterFinished System.Boolean: 
---@return UnityEngine.AudioSource
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Core.NewAudioSource (audioMixer, go, localPosition, audioName, minDistance, maxDistance, volume, audioClip, loop, playNow, destroyAfterFinished) return nil end -- static

---@param go UnityEngine.GameObject: 
---@param localPosition UnityEngine.Vector3: 
---@param audioName System.String: 
---@param minDistance System.Single: 
---@param maxDistance System.Single: 
---@param volume System.Single: 
---@param audioClip UnityEngine.AudioClip: 
---@param loop System.Boolean: 
---@param playNow System.Boolean: 
---@param destroyAfterFinished System.Boolean: 
---@return UnityEngine.AudioSource
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Core.NewAudioSource (go, localPosition, audioName, minDistance, maxDistance, volume, audioClip, loop, playNow, destroyAfterFinished) return nil end -- static

---@param source UnityEngine.AudioSource: 
---@param freq System.Single: 
---@param level System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Core.NewHighPassFilter (source, freq, level) return end -- static

---@param source UnityEngine.AudioSource: 
---@param freq System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Core.NewLowPassFilter (source, freq) return end -- static

---@param carController RCC_CarControllerV3: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Core.SetBehavior (carController) return end

---@param x RCC_Core: 
---@param y RCC_Core: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Core.op_Equality (x, y) return true end -- static

---@param x RCC_Core: 
---@param y RCC_Core: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Core.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_Exhaust
--- FIXME: Wrapped RCC_Exhaust for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field boostFlameColor UnityEngine.Color 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flame UnityEngine.ParticleSystem 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flameColor UnityEngine.Color 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flameTime System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flareBrightness System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxEmission System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxSize System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxSpeed System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minEmission System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minSize System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minSpeed System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field previewFlames System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_Exhaust = {}
RCC.RCC_Exhaust.boostFlameColor = nil
RCC.RCC_Exhaust.flame = nil
RCC.RCC_Exhaust.flameColor = nil
RCC.RCC_Exhaust.flameTime = 0.0
RCC.RCC_Exhaust.flareBrightness = 0.0
RCC.RCC_Exhaust.maxEmission = 0.0
RCC.RCC_Exhaust.maxSize = 0.0
RCC.RCC_Exhaust.maxSpeed = 0.0
RCC.RCC_Exhaust.minEmission = 0.0
RCC.RCC_Exhaust.minSize = 0.0
RCC.RCC_Exhaust.minSpeed = 0.0
RCC.RCC_Exhaust.previewFlames = true

---Constructor for RCC.RCC_Exhaust
---@return RCC.RCC_Exhaust
function RCC.NewRCC_Exhaust() end

---@param x RCC_Exhaust: 
---@param y RCC_Exhaust: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Exhaust.op_Equality (x, y) return true end -- static

---@param x RCC_Exhaust: 
---@param y RCC_Exhaust: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Exhaust.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_Inputs
--- FIXME: Wrapped RCC_Inputs for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field boostInput System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field brakeInput System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field clutchInput System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gearInput System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field handbrakeInput System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field steerInput System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field throttleInput System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_Inputs = {}
RCC.RCC_Inputs.boostInput = 0.0
RCC.RCC_Inputs.brakeInput = 0.0
RCC.RCC_Inputs.clutchInput = 0.0
RCC.RCC_Inputs.gearInput = 0
RCC.RCC_Inputs.handbrakeInput = 0.0
RCC.RCC_Inputs.steerInput = 0.0
RCC.RCC_Inputs.throttleInput = 0.0

---Constructor for RCC.RCC_Inputs
---@return RCC.RCC_Inputs
function RCC.NewRCC_Inputs() end

---@param _throttleInput System.Single: 
---@param _brakeInput System.Single: 
---@param _steerInput System.Single: 
---@param _clutchInput System.Single: 
---@param _handbrakeInput System.Single: 
---@param _boostInput System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Inputs.SetInput (_throttleInput, _brakeInput, _steerInput, _clutchInput, _handbrakeInput, _boostInput) return end

---@param _throttleInput System.Single: 
---@param _brakeInput System.Single: 
---@param _steerInput System.Single: 
---@param _clutchInput System.Single: 
---@param _handbrakeInput System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Inputs.SetInput (_throttleInput, _brakeInput, _steerInput, _clutchInput, _handbrakeInput) return end

---@param _throttleInput System.Single: 
---@param _brakeInput System.Single: 
---@param _steerInput System.Single: 
---@param _handbrakeInput System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Inputs.SetInput (_throttleInput, _brakeInput, _steerInput, _handbrakeInput) return end

---@param _throttleInput System.Single: 
---@param _brakeInput System.Single: 
---@param _steerInput System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Inputs.SetInput (_throttleInput, _brakeInput, _steerInput) return end

---@param x RCC_Inputs: 
---@param y RCC_Inputs: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Inputs.op_Equality (x, y) return true end -- static

---@param x RCC_Inputs: 
---@param y RCC_Inputs: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Inputs.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_Light
--- FIXME: Wrapped RCC_Light for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field defaultIntensity System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flare UnityEngine.Flare 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flareBrightness System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field indicatorClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field inertia System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field lightType RCC_Light.LightType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field refreshRate System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_Light = {}
RCC.RCC_Light.defaultIntensity = 0.0
RCC.RCC_Light.flare = nil
RCC.RCC_Light.flareBrightness = 0.0
RCC.RCC_Light.indicatorClip = nil
RCC.RCC_Light.inertia = 0.0
RCC.RCC_Light.lightType = nil
RCC.RCC_Light.refreshRate = 0

---Constructor for RCC.RCC_Light
---@return RCC.RCC_Light
function RCC.NewRCC_Light() end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Light.Init () return end

---@param x RCC_Light: 
---@param y RCC_Light: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Light.op_Equality (x, y) return true end -- static

---@param x RCC_Light: 
---@param y RCC_Light: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Light.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_Mirror
--- FIXME: Wrapped RCC_Mirror for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_Mirror = {}

---Constructor for RCC.RCC_Mirror
---@return RCC.RCC_Mirror
function RCC.NewRCC_Mirror() end

---@param x RCC_Mirror: 
---@param y RCC_Mirror: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Mirror.op_Equality (x, y) return true end -- static

---@param x RCC_Mirror: 
---@param y RCC_Mirror: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Mirror.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_Settings
--- FIXME: Wrapped RCC_Settings for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field audioMixer UnityEngine.Audio.AudioMixerGroup 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field autoReset System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field autoReverse System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field behaviorSelectedIndex System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field behaviorTypes RCC_Settings.BehaviorType[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field blowoutClip UnityEngine.AudioClip[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field boostKB UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field brakeClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field brakeLights UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field bumpClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field changeCameraKB UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field chassisJoint UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field cinematicCamera UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field contactParticles UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field controllerSelectedIndex System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field controllerType RCC_Settings.ControllerType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field crashClips UnityEngine.AudioClip[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field dontUseAnyParticleEffects System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field dontUseSkidmarks System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field exhaustFlameClips UnityEngine.AudioClip[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field exhaustGas UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fixedTimeStep System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field foldBehaviorSettings System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field foldControllerSettings System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field foldGeneralSettings System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field foldOptimization System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field foldSFX System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field foldTagsAndLayers System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field foldUISettings System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field foldWheelPhysics System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gearShiftingClips UnityEngine.AudioClip[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gyroSensitivity System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field handbrakeKB UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field hazardIndicatorKB UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field headLights UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field highBeamHeadlightsKB UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field hoodCamera UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field horizontalInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field indicatorClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field indicatorLights UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Instance RCC_Settings 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field leftIndicatorKB UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field lightTrailers UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field lockAndUnlockCursor System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LogiSteeringWheel_boostKB System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LogiSteeringWheel_changeCameraKB System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LogiSteeringWheel_handbrakeKB System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LogiSteeringWheel_hazardIndicatorKB System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LogiSteeringWheel_highBeamHeadlightsKB System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LogiSteeringWheel_lookBackKB System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LogiSteeringWheel_lowBeamHeadlightsKB System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LogiSteeringWheel_shiftGearDown System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LogiSteeringWheel_shiftGearUp System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LogiSteeringWheel_startEngineKB System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field lookBackKB UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field lowBeamHeadlightsKB UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxAngularVelocity System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxBrakeSoundVolume System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxCrashSoundVolume System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxFPS System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxGearShiftingSoundVolume System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxWindSoundVolume System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field mirrors UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field mobileController RCC_Settings.MobileController 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field mouseXInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field mouseYInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field NGear UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field NOSClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field overrideBehavior System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field overrideFixedTimeStep System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field overrideFPS System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field playbackKB UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field projector UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field projectorIgnoreLayer UnityEngine.LayerMask 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_boostKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_changeCameraKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_handbrakeKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_hazardIndicatorKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_highBeamHeadlightsKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_horizontalInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_indicatorKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_lookBackKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_lowBeamHeadlightsKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_mouseXInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_mouseYInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_shiftGearDown System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_shiftGearUp System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_startEngineKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_trailerAttachDetach System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_triggerLeftInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_triggerRightInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PS4_verticalInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field RCCCanvas UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field RCCLayer System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field RCCMainCamera RCC_Camera 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field RCCTag System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field RCCTelemetry UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field recordKB UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field reverseLights UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field reversingClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field rightIndicatorKB UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field runEngineAtAwake System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field selectedBehaviorType RCC_Settings.BehaviorType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field selectedControllerType RCC_Settings.ControllerType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field setTagsAndLayers System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shiftGearDown UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shiftGearUp UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field skidmarksManager RCC_SkidmarksManager 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field slowMotionKB UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field startEngineKB UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field tagAllChildrenGameobjects System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field trailerAttachDetach UnityEngine.KeyCode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field turboClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field UIButtonGravity System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field UIButtonSensitivity System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field uiType RCC_Settings.UIType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field units RCC_Settings.Units 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useAutomaticClutch System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useAutomaticGear System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useFixedWheelColliders System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useLightProjectorForLightingEffect System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useLightsAsVertexLights System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useTelemetry System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useVR System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field verticalInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field windClip UnityEngine.AudioClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_boostKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_changeCameraKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_handbrakeKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_hazardIndicatorKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_highBeamHeadlightsKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_horizontalInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_indicatorKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_lookBackKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_lowBeamHeadlightsKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_mouseXInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_mouseYInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_shiftGearDown System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_shiftGearUp System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_startEngineKB System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_trailerAttachDetach System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_triggerLeftInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_triggerRightInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Xbox_verticalInput System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_Settings = {}
RCC.RCC_Settings.audioMixer = nil
RCC.RCC_Settings.autoReset = true
RCC.RCC_Settings.autoReverse = true
RCC.RCC_Settings.behaviorSelectedIndex = 0
RCC.RCC_Settings.behaviorTypes = []
RCC.RCC_Settings.blowoutClip = []
RCC.RCC_Settings.boostKB = nil
RCC.RCC_Settings.brakeClip = nil
RCC.RCC_Settings.brakeLights = nil
RCC.RCC_Settings.bumpClip = nil
RCC.RCC_Settings.changeCameraKB = nil
RCC.RCC_Settings.chassisJoint = nil
RCC.RCC_Settings.cinematicCamera = nil
RCC.RCC_Settings.contactParticles = nil
RCC.RCC_Settings.controllerSelectedIndex = 0
RCC.RCC_Settings.controllerType = nil
RCC.RCC_Settings.crashClips = []
RCC.RCC_Settings.dontUseAnyParticleEffects = true
RCC.RCC_Settings.dontUseSkidmarks = true
RCC.RCC_Settings.exhaustFlameClips = []
RCC.RCC_Settings.exhaustGas = nil
RCC.RCC_Settings.fixedTimeStep = 0.0
RCC.RCC_Settings.foldBehaviorSettings = true
RCC.RCC_Settings.foldControllerSettings = true
RCC.RCC_Settings.foldGeneralSettings = true
RCC.RCC_Settings.foldOptimization = true
RCC.RCC_Settings.foldSFX = true
RCC.RCC_Settings.foldTagsAndLayers = true
RCC.RCC_Settings.foldUISettings = true
RCC.RCC_Settings.foldWheelPhysics = true
RCC.RCC_Settings.gearShiftingClips = []
RCC.RCC_Settings.gyroSensitivity = 0.0
RCC.RCC_Settings.handbrakeKB = nil
RCC.RCC_Settings.hazardIndicatorKB = nil
RCC.RCC_Settings.headLights = nil
RCC.RCC_Settings.highBeamHeadlightsKB = nil
RCC.RCC_Settings.hoodCamera = nil
RCC.RCC_Settings.horizontalInput = ""
RCC.RCC_Settings.indicatorClip = nil
RCC.RCC_Settings.indicatorLights = nil
RCC.RCC_Settings.Instance = nil
RCC.RCC_Settings.leftIndicatorKB = nil
RCC.RCC_Settings.lightTrailers = nil
RCC.RCC_Settings.lockAndUnlockCursor = true
RCC.RCC_Settings.LogiSteeringWheel_boostKB = 0
RCC.RCC_Settings.LogiSteeringWheel_changeCameraKB = 0
RCC.RCC_Settings.LogiSteeringWheel_handbrakeKB = 0
RCC.RCC_Settings.LogiSteeringWheel_hazardIndicatorKB = 0
RCC.RCC_Settings.LogiSteeringWheel_highBeamHeadlightsKB = 0
RCC.RCC_Settings.LogiSteeringWheel_lookBackKB = 0
RCC.RCC_Settings.LogiSteeringWheel_lowBeamHeadlightsKB = 0
RCC.RCC_Settings.LogiSteeringWheel_shiftGearDown = 0
RCC.RCC_Settings.LogiSteeringWheel_shiftGearUp = 0
RCC.RCC_Settings.LogiSteeringWheel_startEngineKB = 0
RCC.RCC_Settings.lookBackKB = nil
RCC.RCC_Settings.lowBeamHeadlightsKB = nil
RCC.RCC_Settings.maxAngularVelocity = 0.0
RCC.RCC_Settings.maxBrakeSoundVolume = 0.0
RCC.RCC_Settings.maxCrashSoundVolume = 0.0
RCC.RCC_Settings.maxFPS = 0
RCC.RCC_Settings.maxGearShiftingSoundVolume = 0.0
RCC.RCC_Settings.maxWindSoundVolume = 0.0
RCC.RCC_Settings.mirrors = nil
RCC.RCC_Settings.mobileController = nil
RCC.RCC_Settings.mouseXInput = ""
RCC.RCC_Settings.mouseYInput = ""
RCC.RCC_Settings.NGear = nil
RCC.RCC_Settings.NOSClip = nil
RCC.RCC_Settings.overrideBehavior = true
RCC.RCC_Settings.overrideFixedTimeStep = true
RCC.RCC_Settings.overrideFPS = true
RCC.RCC_Settings.playbackKB = nil
RCC.RCC_Settings.projector = nil
RCC.RCC_Settings.projectorIgnoreLayer = nil
RCC.RCC_Settings.PS4_boostKB = ""
RCC.RCC_Settings.PS4_changeCameraKB = ""
RCC.RCC_Settings.PS4_handbrakeKB = ""
RCC.RCC_Settings.PS4_hazardIndicatorKB = ""
RCC.RCC_Settings.PS4_highBeamHeadlightsKB = ""
RCC.RCC_Settings.PS4_horizontalInput = ""
RCC.RCC_Settings.PS4_indicatorKB = ""
RCC.RCC_Settings.PS4_lookBackKB = ""
RCC.RCC_Settings.PS4_lowBeamHeadlightsKB = ""
RCC.RCC_Settings.PS4_mouseXInput = ""
RCC.RCC_Settings.PS4_mouseYInput = ""
RCC.RCC_Settings.PS4_shiftGearDown = ""
RCC.RCC_Settings.PS4_shiftGearUp = ""
RCC.RCC_Settings.PS4_startEngineKB = ""
RCC.RCC_Settings.PS4_trailerAttachDetach = ""
RCC.RCC_Settings.PS4_triggerLeftInput = ""
RCC.RCC_Settings.PS4_triggerRightInput = ""
RCC.RCC_Settings.PS4_verticalInput = ""
RCC.RCC_Settings.RCCCanvas = nil
RCC.RCC_Settings.RCCLayer = ""
RCC.RCC_Settings.RCCMainCamera = nil
RCC.RCC_Settings.RCCTag = ""
RCC.RCC_Settings.RCCTelemetry = nil
RCC.RCC_Settings.recordKB = nil
RCC.RCC_Settings.reverseLights = nil
RCC.RCC_Settings.reversingClip = nil
RCC.RCC_Settings.rightIndicatorKB = nil
RCC.RCC_Settings.runEngineAtAwake = true
RCC.RCC_Settings.selectedBehaviorType = nil
RCC.RCC_Settings.selectedControllerType = nil
RCC.RCC_Settings.setTagsAndLayers = true
RCC.RCC_Settings.shiftGearDown = nil
RCC.RCC_Settings.shiftGearUp = nil
RCC.RCC_Settings.skidmarksManager = nil
RCC.RCC_Settings.slowMotionKB = nil
RCC.RCC_Settings.startEngineKB = nil
RCC.RCC_Settings.tagAllChildrenGameobjects = true
RCC.RCC_Settings.trailerAttachDetach = nil
RCC.RCC_Settings.turboClip = nil
RCC.RCC_Settings.UIButtonGravity = 0.0
RCC.RCC_Settings.UIButtonSensitivity = 0.0
RCC.RCC_Settings.uiType = nil
RCC.RCC_Settings.units = nil
RCC.RCC_Settings.useAutomaticClutch = true
RCC.RCC_Settings.useAutomaticGear = true
RCC.RCC_Settings.useFixedWheelColliders = true
RCC.RCC_Settings.useLightProjectorForLightingEffect = true
RCC.RCC_Settings.useLightsAsVertexLights = true
RCC.RCC_Settings.useTelemetry = true
RCC.RCC_Settings.useVR = true
RCC.RCC_Settings.verticalInput = ""
RCC.RCC_Settings.windClip = nil
RCC.RCC_Settings.Xbox_boostKB = ""
RCC.RCC_Settings.Xbox_changeCameraKB = ""
RCC.RCC_Settings.Xbox_handbrakeKB = ""
RCC.RCC_Settings.Xbox_hazardIndicatorKB = ""
RCC.RCC_Settings.Xbox_highBeamHeadlightsKB = ""
RCC.RCC_Settings.Xbox_horizontalInput = ""
RCC.RCC_Settings.Xbox_indicatorKB = ""
RCC.RCC_Settings.Xbox_lookBackKB = ""
RCC.RCC_Settings.Xbox_lowBeamHeadlightsKB = ""
RCC.RCC_Settings.Xbox_mouseXInput = ""
RCC.RCC_Settings.Xbox_mouseYInput = ""
RCC.RCC_Settings.Xbox_shiftGearDown = ""
RCC.RCC_Settings.Xbox_shiftGearUp = ""
RCC.RCC_Settings.Xbox_startEngineKB = ""
RCC.RCC_Settings.Xbox_trailerAttachDetach = ""
RCC.RCC_Settings.Xbox_triggerLeftInput = ""
RCC.RCC_Settings.Xbox_triggerRightInput = ""
RCC.RCC_Settings.Xbox_verticalInput = ""

---Constructor for RCC.RCC_Settings
---@return RCC.RCC_Settings
function RCC.NewRCC_Settings() end

---@param x RCC_Settings: 
---@param y RCC_Settings: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Settings.op_Equality (x, y) return true end -- static

---@param x RCC_Settings: 
---@param y RCC_Settings: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Settings.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_Spawner
--- FIXME: Wrapped RCC_Spawner for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_Spawner = {}

---Constructor for RCC.RCC_Spawner
---@return RCC.RCC_Spawner
function RCC.NewRCC_Spawner() end

---@param x RCC_Spawner: 
---@param y RCC_Spawner: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Spawner.op_Equality (x, y) return true end -- static

---@param x RCC_Spawner: 
---@param y RCC_Spawner: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Spawner.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_Version
--- FIXME: Wrapped RCC_Version for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field version System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
RCC.RCC_Version = {}
RCC.RCC_Version.version = ""

---Constructor for RCC.RCC_Version
---@return RCC.RCC_Version
function RCC.NewRCC_Version() end

---@param x RCC_Version: 
---@param y RCC_Version: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Version.op_Equality (x, y) return true end -- static

---@param x RCC_Version: 
---@param y RCC_Version: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Version.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_Teleporter
--- FIXME: Wrapped RCC_Teleporter for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spawnPoint UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_Teleporter = {}
RCC.RCC_Teleporter.spawnPoint = nil

---Constructor for RCC.RCC_Teleporter
---@return RCC.RCC_Teleporter
function RCC.NewRCC_Teleporter() end

---@param x RCC_Teleporter: 
---@param y RCC_Teleporter: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Teleporter.op_Equality (x, y) return true end -- static

---@param x RCC_Teleporter: 
---@param y RCC_Teleporter: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Teleporter.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_Waypoint
--- FIXME: Wrapped RCC_Waypoint for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetSpeed System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_Waypoint = {}
RCC.RCC_Waypoint.targetSpeed = 0.0

---Constructor for RCC.RCC_Waypoint
---@return RCC.RCC_Waypoint
function RCC.NewRCC_Waypoint() end

---@param x RCC_Waypoint: 
---@param y RCC_Waypoint: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Waypoint.op_Equality (x, y) return true end -- static

---@param x RCC_Waypoint: 
---@param y RCC_Waypoint: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_Waypoint.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_AssetPaths
--- FIXME: Wrapped RCC_AssetPaths for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field assetStorePath System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field BCGSharedAssetsPath System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field documentations System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field YTVideos System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
RCC.RCC_AssetPaths = {}
RCC.RCC_AssetPaths.assetStorePath = ""
RCC.RCC_AssetPaths.BCGSharedAssetsPath = ""
RCC.RCC_AssetPaths.documentations = ""
RCC.RCC_AssetPaths.YTVideos = ""

---Constructor for RCC.RCC_AssetPaths
---@return RCC.RCC_AssetPaths
function RCC.NewRCC_AssetPaths() end

---@param x RCC_AssetPaths: 
---@param y RCC_AssetPaths: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_AssetPaths.op_Equality (x, y) return true end -- static

---@param x RCC_AssetPaths: 
---@param y RCC_AssetPaths: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_AssetPaths.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_CinematicCamera
--- FIXME: Wrapped RCC_CinematicCamera for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field pivot UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetFOV System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_CinematicCamera = {}
RCC.RCC_CinematicCamera.pivot = nil
RCC.RCC_CinematicCamera.targetFOV = 0.0

---Constructor for RCC.RCC_CinematicCamera
---@return RCC.RCC_CinematicCamera
function RCC.NewRCC_CinematicCamera() end

---@param x RCC_CinematicCamera: 
---@param y RCC_CinematicCamera: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CinematicCamera.op_Equality (x, y) return true end -- static

---@param x RCC_CinematicCamera: 
---@param y RCC_CinematicCamera: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_CinematicCamera.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_FuelStation
--- FIXME: Wrapped RCC_FuelStation for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field refillSpeed System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_FuelStation = {}
RCC.RCC_FuelStation.refillSpeed = 0.0

---Constructor for RCC.RCC_FuelStation
---@return RCC.RCC_FuelStation
function RCC.NewRCC_FuelStation() end

---@param x RCC_FuelStation: 
---@param y RCC_FuelStation: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_FuelStation.op_Equality (x, y) return true end -- static

---@param x RCC_FuelStation: 
---@param y RCC_FuelStation: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_FuelStation.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_RepairStation
--- FIXME: Wrapped RCC_RepairStation for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_RepairStation = {}

---Constructor for RCC.RCC_RepairStation
---@return RCC.RCC_RepairStation
function RCC.NewRCC_RepairStation() end

---@param x RCC_RepairStation: 
---@param y RCC_RepairStation: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_RepairStation.op_Equality (x, y) return true end -- static

---@param x RCC_RepairStation: 
---@param y RCC_RepairStation: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_RepairStation.op_Inequality (x, y) return true end -- static

--- @class RCC.RCC_SceneManager
--- FIXME: Wrapped RCC_SceneManager for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field activeMainCamera UnityEngine.Camera 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field activePlayerCamera RCC_Camera 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field activePlayerCanvas RCC_UIDashboardDisplay 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field activePlayerVehicle RCC_CarControllerV3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field allRecorders System.Collections.Generic.List<RCC_Recorder> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field allVehicles System.Collections.Generic.List<RCC_CarControllerV3> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field disableUIWhenNoPlayerVehicle System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Instance RCC_SceneManager 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field loadCustomizationAtFirst System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field recordMode RCC_SceneManager.RecordMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field registerFirstVehicleAsPlayer System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
RCC.RCC_SceneManager = {}
RCC.RCC_SceneManager.activeMainCamera = nil
RCC.RCC_SceneManager.activePlayerCamera = nil
RCC.RCC_SceneManager.activePlayerCanvas = nil
RCC.RCC_SceneManager.activePlayerVehicle = nil
RCC.RCC_SceneManager.allRecorders = []
RCC.RCC_SceneManager.allVehicles = []
RCC.RCC_SceneManager.disableUIWhenNoPlayerVehicle = true
RCC.RCC_SceneManager.Instance = nil
RCC.RCC_SceneManager.loadCustomizationAtFirst = true
RCC.RCC_SceneManager.recordMode = nil
RCC.RCC_SceneManager.registerFirstVehicleAsPlayer = true

---Constructor for RCC.RCC_SceneManager
---@return RCC.RCC_SceneManager
function RCC.NewRCC_SceneManager() end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.ChangeCamera () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.CheckCanvas () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.DeRegisterPlayer () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.Play () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.Record () return end

---@param playerVehicle RCC_CarControllerV3: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.RegisterPlayer (playerVehicle) return end

---@param playerVehicle RCC_CarControllerV3: 
---@param isControllable System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.RegisterPlayer (playerVehicle, isControllable) return end

---@param playerVehicle RCC_CarControllerV3: 
---@param isControllable System.Boolean: 
---@param engineState System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.RegisterPlayer (playerVehicle, isControllable, engineState) return end

---@param behaviorIndex System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.SetBehavior (behaviorIndex) return end -- static

---@param controllerIndex System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.SetController (controllerIndex) return end -- static

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.Stop () return end

---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.Transport (position, rotation) return end

---@param vehicle RCC_CarControllerV3: 
---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.Transport (vehicle, position, rotation) return end

---@param x RCC_SceneManager: 
---@param y RCC_SceneManager: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.op_Equality (x, y) return true end -- static

---@param x RCC_SceneManager: 
---@param y RCC_SceneManager: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function RCC.RCC_SceneManager.op_Inequality (x, y) return true end -- static
return RCC
