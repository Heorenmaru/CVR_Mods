---@meta
-- AUTOMATICALLY GENERATED, DO NOT EDIT BY HAND
local UnityEngine = {}
UnityEngine.AI = {}

--- @class UnityEngine.AI.NavMesh
--- FIXME: Wrapped UnityEngine.AI.NavMesh for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field AllAreas System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field avoidancePredictionTime System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onPreUpdate UnityEngine.AI.NavMesh.OnNavMeshPreUpdate 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field pathfindingIterationsPerFrame System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
UnityEngine.AI.NavMesh = {}
UnityEngine.AI.NavMesh.AllAreas = 0
UnityEngine.AI.NavMesh.avoidancePredictionTime = 0.0
UnityEngine.AI.NavMesh.onPreUpdate = nil
UnityEngine.AI.NavMesh.pathfindingIterationsPerFrame = 0

---@param sourcePosition UnityEngine.Vector3: 
---@param targetPosition UnityEngine.Vector3: 
---@param areaMask System.Int32: 
---@param path UnityEngine.AI.NavMeshPath: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.CalculatePath (sourcePosition, targetPosition, areaMask, path) return true end -- static

---@param sourcePosition UnityEngine.Vector3: 
---@param targetPosition UnityEngine.Vector3: 
---@param filter UnityEngine.AI.NavMeshQueryFilter: 
---@param path UnityEngine.AI.NavMeshPath: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.CalculatePath (sourcePosition, targetPosition, filter, path) return true end -- static

---@param sourcePosition UnityEngine.Vector3: 
---@param hit UnityEngine.AI.NavMeshHit: 
---@param areaMask System.Int32: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.FindClosestEdge (sourcePosition, hit, areaMask) return true end -- static

---@param sourcePosition UnityEngine.Vector3: 
---@param hit UnityEngine.AI.NavMeshHit: 
---@param filter UnityEngine.AI.NavMeshQueryFilter: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.FindClosestEdge (sourcePosition, hit, filter) return true end -- static

---@param areaIndex System.Int32: 
---@return System.Single
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.GetAreaCost (areaIndex) return 0.0 end -- static

---@param areaName System.String: 
---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.GetAreaFromName (areaName) return 0 end -- static

---@param agentTypeID System.Int32: 
---@return UnityEngine.AI.NavMeshBuildSettings
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.GetSettingsByID (agentTypeID) return nil end -- static

---@param index System.Int32: 
---@return UnityEngine.AI.NavMeshBuildSettings
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.GetSettingsByIndex (index) return nil end -- static

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.GetSettingsCount () return 0 end -- static

---@param agentTypeID System.Int32: 
---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.GetSettingsNameFromID (agentTypeID) return "" end -- static

---@param sourcePosition UnityEngine.Vector3: 
---@param targetPosition UnityEngine.Vector3: 
---@param hit UnityEngine.AI.NavMeshHit: 
---@param areaMask System.Int32: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.Raycast (sourcePosition, targetPosition, hit, areaMask) return true end -- static

---@param sourcePosition UnityEngine.Vector3: 
---@param targetPosition UnityEngine.Vector3: 
---@param hit UnityEngine.AI.NavMeshHit: 
---@param filter UnityEngine.AI.NavMeshQueryFilter: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.Raycast (sourcePosition, targetPosition, hit, filter) return true end -- static

---@param sourcePosition UnityEngine.Vector3: 
---@param hit UnityEngine.AI.NavMeshHit: 
---@param maxDistance System.Single: 
---@param areaMask System.Int32: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.SamplePosition (sourcePosition, hit, maxDistance, areaMask) return true end -- static

---@param sourcePosition UnityEngine.Vector3: 
---@param hit UnityEngine.AI.NavMeshHit: 
---@param maxDistance System.Single: 
---@param filter UnityEngine.AI.NavMeshQueryFilter: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.SamplePosition (sourcePosition, hit, maxDistance, filter) return true end -- static

---@param x UnityEngine.AI.NavMesh: 
---@param y UnityEngine.AI.NavMesh: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.op_Equality (x, y) return true end -- static

---@param x UnityEngine.AI.NavMesh: 
---@param y UnityEngine.AI.NavMesh: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMesh.ToString () return "" end

--- @class UnityEngine.AI.NavMeshHit
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field distance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field hit System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field mask System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field normal UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field position UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
UnityEngine.AI.NavMeshHit = {}
UnityEngine.AI.NavMeshHit.distance = 0.0
UnityEngine.AI.NavMeshHit.hit = true
UnityEngine.AI.NavMeshHit.mask = 0
UnityEngine.AI.NavMeshHit.normal = nil
UnityEngine.AI.NavMeshHit.position = nil

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshHit.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshHit.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshHit.ToString () return "" end

--- @class UnityEngine.AI.NavMeshAgent
--- FIXME: Wrapped UnityEngine.AI.NavMeshAgent for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field acceleration System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field agentTypeID System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field angularSpeed System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field areaMask System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field autoBraking System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field autoRepath System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field autoTraverseOffMeshLink System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field avoidancePriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field baseOffset System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field currentOffMeshLinkData UnityEngine.AI.OffMeshLinkData 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field desiredVelocity UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field destination UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field hasPath System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field height System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isOnNavMesh System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field isOnOffMeshLink System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field isPathStale System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field isStopped System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field navMeshOwner UnityEngine.Object 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field nextOffMeshLinkData UnityEngine.AI.OffMeshLinkData 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field nextPosition UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field obstacleAvoidanceType UnityEngine.AI.ObstacleAvoidanceType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field path UnityEngine.AI.NavMeshPath 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field pathEndPosition UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field pathPending System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field pathStatus UnityEngine.AI.NavMeshPathStatus 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field radius System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field remainingDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field speed System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field steeringTarget UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field stoppingDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field updatePosition System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field updateRotation System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field updateUpAxis System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field velocity UnityEngine.Vector3 
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
UnityEngine.AI.NavMeshAgent = {}
UnityEngine.AI.NavMeshAgent.acceleration = 0.0
UnityEngine.AI.NavMeshAgent.agentTypeID = 0
UnityEngine.AI.NavMeshAgent.angularSpeed = 0.0
UnityEngine.AI.NavMeshAgent.areaMask = 0
UnityEngine.AI.NavMeshAgent.autoBraking = true
UnityEngine.AI.NavMeshAgent.autoRepath = true
UnityEngine.AI.NavMeshAgent.autoTraverseOffMeshLink = true
UnityEngine.AI.NavMeshAgent.avoidancePriority = 0
UnityEngine.AI.NavMeshAgent.baseOffset = 0.0
UnityEngine.AI.NavMeshAgent.currentOffMeshLinkData = nil
UnityEngine.AI.NavMeshAgent.desiredVelocity = nil
UnityEngine.AI.NavMeshAgent.destination = nil
UnityEngine.AI.NavMeshAgent.hasPath = true
UnityEngine.AI.NavMeshAgent.height = 0.0
UnityEngine.AI.NavMeshAgent.isOnNavMesh = true
UnityEngine.AI.NavMeshAgent.isOnOffMeshLink = true
UnityEngine.AI.NavMeshAgent.isPathStale = true
UnityEngine.AI.NavMeshAgent.isStopped = true
UnityEngine.AI.NavMeshAgent.navMeshOwner = nil
UnityEngine.AI.NavMeshAgent.nextOffMeshLinkData = nil
UnityEngine.AI.NavMeshAgent.nextPosition = nil
UnityEngine.AI.NavMeshAgent.obstacleAvoidanceType = nil
UnityEngine.AI.NavMeshAgent.path = nil
UnityEngine.AI.NavMeshAgent.pathEndPosition = nil
UnityEngine.AI.NavMeshAgent.pathPending = true
UnityEngine.AI.NavMeshAgent.pathStatus = nil
UnityEngine.AI.NavMeshAgent.radius = 0.0
UnityEngine.AI.NavMeshAgent.remainingDistance = 0.0
UnityEngine.AI.NavMeshAgent.speed = 0.0
UnityEngine.AI.NavMeshAgent.steeringTarget = nil
UnityEngine.AI.NavMeshAgent.stoppingDistance = 0.0
UnityEngine.AI.NavMeshAgent.updatePosition = true
UnityEngine.AI.NavMeshAgent.updateRotation = true
UnityEngine.AI.NavMeshAgent.updateUpAxis = true
UnityEngine.AI.NavMeshAgent.velocity = nil
UnityEngine.AI.NavMeshAgent.enabled = true
UnityEngine.AI.NavMeshAgent.isActiveAndEnabled = true
UnityEngine.AI.NavMeshAgent.gameObject = nil
UnityEngine.AI.NavMeshAgent.tag = ""
UnityEngine.AI.NavMeshAgent.transform = nil
UnityEngine.AI.NavMeshAgent.name = ""

---@param activated System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.ActivateCurrentOffMeshLink (activated) return end

---@param targetPosition UnityEngine.Vector3: 
---@param path UnityEngine.AI.NavMeshPath: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.CalculatePath (targetPosition, path) return true end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.CompleteOffMeshLink () return end

---@param hit UnityEngine.AI.NavMeshHit: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.FindClosestEdge (hit) return true end

---@param areaIndex System.Int32: 
---@return System.Single
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.GetAreaCost (areaIndex) return 0.0 end

---@param offset UnityEngine.Vector3: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.Move (offset) return end

---@param targetPosition UnityEngine.Vector3: 
---@param hit UnityEngine.AI.NavMeshHit: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.Raycast (targetPosition, hit) return true end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.ResetPath () return end

---@param areaMask System.Int32: 
---@param maxDistance System.Single: 
---@param hit UnityEngine.AI.NavMeshHit: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.SamplePathPosition (areaMask, maxDistance, hit) return true end

---@param areaIndex System.Int32: 
---@param areaCost System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.SetAreaCost (areaIndex, areaCost) return end

---@param target UnityEngine.Vector3: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.SetDestination (target) return true end

---@param path UnityEngine.AI.NavMeshPath: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.SetPath (path) return true end

---@param newPosition UnityEngine.Vector3: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.Warp (newPosition) return true end

---@param x UnityEngine.AI.NavMeshAgent: 
---@param y UnityEngine.AI.NavMeshAgent: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.op_Equality (x, y) return true end -- static

---@param x UnityEngine.AI.NavMeshAgent: 
---@param y UnityEngine.AI.NavMeshAgent: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.ToString () return "" end

---@param exists UnityEngine.AI.NavMeshAgent: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshAgent.op_Implicit (exists) return true end -- static

--- @class UnityEngine.AI.NavMeshData
--- FIXME: Wrapped UnityEngine.AI.NavMeshData for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field position UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field rotation UnityEngine.Quaternion 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field sourceBounds UnityEngine.Bounds 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field name System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
UnityEngine.AI.NavMeshData = {}
UnityEngine.AI.NavMeshData.position = nil
UnityEngine.AI.NavMeshData.rotation = nil
UnityEngine.AI.NavMeshData.sourceBounds = nil
UnityEngine.AI.NavMeshData.name = ""

---Constructor for UnityEngine.AI.NavMeshData
---@return UnityEngine.AI.NavMeshData
function UnityEngine.AI.NewNavMeshData() end

---Constructor for UnityEngine.AI.NavMeshData
---@param agentTypeID global::System.Int32 
---@return UnityEngine.AI.NavMeshData
function UnityEngine.AI.NewNavMeshData(agentTypeID) end

---@param x UnityEngine.AI.NavMeshData: 
---@param y UnityEngine.AI.NavMeshData: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshData.op_Equality (x, y) return true end -- static

---@param x UnityEngine.AI.NavMeshData: 
---@param y UnityEngine.AI.NavMeshData: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshData.op_Inequality (x, y) return true end -- static

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshData.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshData.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshData.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshData.ToString () return "" end

---@param exists UnityEngine.AI.NavMeshData: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.AI.NavMeshData.op_Implicit (exists) return true end -- static
return UnityEngine.AI
