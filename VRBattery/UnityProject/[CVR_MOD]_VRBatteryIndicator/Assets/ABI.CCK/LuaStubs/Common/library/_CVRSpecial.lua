---@meta
-- AUTOMATICALLY GENERATED, DO NOT EDIT BY HAND
local _CVRSpecial = {}

--- @class _CVRSpecial.BasePersistentStorage
--- FIXME: Wrapped ABI_RC.Scripting.Persistence.BasePersistentStorage for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field CurrentSize System.Int32 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field HasData System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field Path System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field SizeAllowed System.Int32 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
_CVRSpecial.BasePersistentStorage = {}
_CVRSpecial.BasePersistentStorage.CurrentSize = 0
_CVRSpecial.BasePersistentStorage.HasData = true
_CVRSpecial.BasePersistentStorage.Path = ""
_CVRSpecial.BasePersistentStorage.SizeAllowed = 0

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.BasePersistentStorage.Clear () return end

---@param key System.String: 
---@return System.Nullable<System.Boolean>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.BasePersistentStorage.GetBoolean (key) return nil end

---@param key System.String: 
---@return System.Nullable<System.Double>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.BasePersistentStorage.GetNumber (key) return nil end

---@param key System.String: 
---@return System.String
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.BasePersistentStorage.GetString (key) return "" end

---@param key System.String: 
---@return MoonSharp.Interpreter.Table
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.BasePersistentStorage.GetTable (key) return nil end

---@param key System.String: 
---@return System.Boolean
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.BasePersistentStorage.HasValue (key) return true end

---@param key System.String: 
---@param value System.Nullable<System.Boolean>: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.BasePersistentStorage.SetBoolean (key, value) return end

---@param key System.String: 
---@param value System.Nullable<System.Double>: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.BasePersistentStorage.SetNumber (key, value) return end

---@param key System.String: 
---@param value System.String: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.BasePersistentStorage.SetString (key, value) return end

---@param key System.String: 
---@param value MoonSharp.Interpreter.Table: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.BasePersistentStorage.SetTable (key, value) return end

---@param x ABI_RC.Scripting.Persistence.BasePersistentStorage: 
---@param y ABI_RC.Scripting.Persistence.BasePersistentStorage: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.BasePersistentStorage.op_Equality (x, y) return true end -- static

---@param x ABI_RC.Scripting.Persistence.BasePersistentStorage: 
---@param y ABI_RC.Scripting.Persistence.BasePersistentStorage: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.BasePersistentStorage.op_Inequality (x, y) return true end -- static

--- @class _CVRSpecial.PersistenceCollection
--- FIXME: Wrapped ABI_RC.Scripting.Persistence.PersistenceCollection for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field Private ABI_RC.Scripting.Persistence.PrivatePersistentStorage 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
---@field Public ABI_RC.Scripting.Persistence.PublicPersistentStorage 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
_CVRSpecial.PersistenceCollection = {}
_CVRSpecial.PersistenceCollection.Private = nil
_CVRSpecial.PersistenceCollection.Public = nil

---@param script MoonSharp.Interpreter.Script: 
---@param contentType ABI_RC.Core.CVRContentType: 
---@param assetGuid System.String: 
---@return ABI_RC.Scripting.Persistence.PublicPersistentStorageReadonly
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PersistenceCollection.GetPublicStorage (script, contentType, assetGuid) return nil end

---@param x ABI_RC.Scripting.Persistence.PersistenceCollection: 
---@param y ABI_RC.Scripting.Persistence.PersistenceCollection: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PersistenceCollection.op_Equality (x, y) return true end -- static

---@param x ABI_RC.Scripting.Persistence.PersistenceCollection: 
---@param y ABI_RC.Scripting.Persistence.PersistenceCollection: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PersistenceCollection.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PersistenceCollection.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PersistenceCollection.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PersistenceCollection.ToString () return "" end

--- @class _CVRSpecial.PrivatePersistentStorage
--- FIXME: Wrapped ABI_RC.Scripting.Persistence.PrivatePersistentStorage for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field CurrentSize System.Int32 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field IsEncrypted System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field HasData System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field Path System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field SizeAllowed System.Int32 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
_CVRSpecial.PrivatePersistentStorage = {}
_CVRSpecial.PrivatePersistentStorage.CurrentSize = 0
_CVRSpecial.PrivatePersistentStorage.IsEncrypted = true
_CVRSpecial.PrivatePersistentStorage.HasData = true
_CVRSpecial.PrivatePersistentStorage.Path = ""
_CVRSpecial.PrivatePersistentStorage.SizeAllowed = 0

---@param x ABI_RC.Scripting.Persistence.PrivatePersistentStorage: 
---@param y ABI_RC.Scripting.Persistence.PrivatePersistentStorage: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PrivatePersistentStorage.op_Equality (x, y) return true end -- static

---@param x ABI_RC.Scripting.Persistence.PrivatePersistentStorage: 
---@param y ABI_RC.Scripting.Persistence.PrivatePersistentStorage: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PrivatePersistentStorage.op_Inequality (x, y) return true end -- static

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.PrivatePersistentStorage.Clear () return end

---@param key System.String: 
---@return System.Nullable<System.Boolean>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PrivatePersistentStorage.GetBoolean (key) return nil end

---@param key System.String: 
---@return System.Nullable<System.Double>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PrivatePersistentStorage.GetNumber (key) return nil end

---@param key System.String: 
---@return System.String
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PrivatePersistentStorage.GetString (key) return "" end

---@param key System.String: 
---@return MoonSharp.Interpreter.Table
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PrivatePersistentStorage.GetTable (key) return nil end

---@param key System.String: 
---@return System.Boolean
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PrivatePersistentStorage.HasValue (key) return true end

---@param key System.String: 
---@param value System.Nullable<System.Boolean>: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.PrivatePersistentStorage.SetBoolean (key, value) return end

---@param key System.String: 
---@param value System.Nullable<System.Double>: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.PrivatePersistentStorage.SetNumber (key, value) return end

---@param key System.String: 
---@param value System.String: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.PrivatePersistentStorage.SetString (key, value) return end

---@param key System.String: 
---@param value MoonSharp.Interpreter.Table: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.PrivatePersistentStorage.SetTable (key, value) return end

--- @class _CVRSpecial.PublicPersistentStorage
--- FIXME: Wrapped ABI_RC.Scripting.Persistence.PublicPersistentStorage for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field CurrentSize System.Int32 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field IsEncrypted System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field HasData System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field Path System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field SizeAllowed System.Int32 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
_CVRSpecial.PublicPersistentStorage = {}
_CVRSpecial.PublicPersistentStorage.CurrentSize = 0
_CVRSpecial.PublicPersistentStorage.IsEncrypted = true
_CVRSpecial.PublicPersistentStorage.HasData = true
_CVRSpecial.PublicPersistentStorage.Path = ""
_CVRSpecial.PublicPersistentStorage.SizeAllowed = 0

---@param x ABI_RC.Scripting.Persistence.PublicPersistentStorage: 
---@param y ABI_RC.Scripting.Persistence.PublicPersistentStorage: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorage.op_Equality (x, y) return true end -- static

---@param x ABI_RC.Scripting.Persistence.PublicPersistentStorage: 
---@param y ABI_RC.Scripting.Persistence.PublicPersistentStorage: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorage.op_Inequality (x, y) return true end -- static

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.PublicPersistentStorage.Clear () return end

---@param key System.String: 
---@return System.Nullable<System.Boolean>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorage.GetBoolean (key) return nil end

---@param key System.String: 
---@return System.Nullable<System.Double>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorage.GetNumber (key) return nil end

---@param key System.String: 
---@return System.String
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorage.GetString (key) return "" end

---@param key System.String: 
---@return MoonSharp.Interpreter.Table
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorage.GetTable (key) return nil end

---@param key System.String: 
---@return System.Boolean
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorage.HasValue (key) return true end

---@param key System.String: 
---@param value System.Nullable<System.Boolean>: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.PublicPersistentStorage.SetBoolean (key, value) return end

---@param key System.String: 
---@param value System.Nullable<System.Double>: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.PublicPersistentStorage.SetNumber (key, value) return end

---@param key System.String: 
---@param value System.String: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.PublicPersistentStorage.SetString (key, value) return end

---@param key System.String: 
---@param value MoonSharp.Interpreter.Table: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.PublicPersistentStorage.SetTable (key, value) return end

--- @class _CVRSpecial.PublicPersistentStorageReadonly
--- FIXME: Wrapped ABI_RC.Scripting.Persistence.PublicPersistentStorageReadonly for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field HasData System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
_CVRSpecial.PublicPersistentStorageReadonly = {}
_CVRSpecial.PublicPersistentStorageReadonly.HasData = true

---@param key System.String: 
---@return System.Nullable<System.Boolean>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorageReadonly.GetBoolean (key) return nil end

---@param key System.String: 
---@return System.Nullable<System.Double>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorageReadonly.GetNumber (key) return nil end

---@param key System.String: 
---@return System.String
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorageReadonly.GetString (key) return "" end

---@param key System.String: 
---@return MoonSharp.Interpreter.Table
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorageReadonly.GetTable (key) return nil end

---@param key System.String: 
---@return System.Boolean
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorageReadonly.HasValue (key) return true end

---@param x ABI_RC.Scripting.Persistence.PublicPersistentStorageReadonly: 
---@param y ABI_RC.Scripting.Persistence.PublicPersistentStorageReadonly: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorageReadonly.op_Equality (x, y) return true end -- static

---@param x ABI_RC.Scripting.Persistence.PublicPersistentStorageReadonly: 
---@param y ABI_RC.Scripting.Persistence.PublicPersistentStorageReadonly: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorageReadonly.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorageReadonly.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorageReadonly.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PublicPersistentStorageReadonly.ToString () return "" end

--- @class _CVRSpecial.Avatar
--- FIXME: Wrapped ABI_RC.API.Avatar for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field AvatarID System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsHuman System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsLoaded System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Wearer ABI_RC.API.Player 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
_CVRSpecial.Avatar = {}
_CVRSpecial.Avatar.AvatarID = ""
_CVRSpecial.Avatar.IsHuman = true
_CVRSpecial.Avatar.IsLoaded = true
_CVRSpecial.Avatar.Wearer = nil

---@param humanBone UnityEngine.HumanBodyBones: 
---@return System.Nullable<UnityEngine.Vector3>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.Avatar.GetBonePosition (humanBone) return nil end

---@param humanBone UnityEngine.HumanBodyBones: 
---@return System.Nullable<System.ValueTuple<UnityEngine.Vector3, UnityEngine.Quaternion>>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.Avatar.GetBonePositionAndRotation (humanBone) return nil end

---@param humanBone UnityEngine.HumanBodyBones: 
---@return System.Nullable<UnityEngine.Quaternion>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.Avatar.GetBoneRotation (humanBone) return nil end

---@return System.Single
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.Avatar.GetHeight () return 0.0 end

---@return System.Single
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.Avatar.GetInitialHeight () return 0.0 end

---@param parameterName System.String: 
---@return System.Nullable<System.Boolean>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.Avatar.GetParameterAsBool (parameterName) return nil end

---@param parameterName System.String: 
---@return System.Nullable<System.Single>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.Avatar.GetParameterAsFloat (parameterName) return nil end

---@param parameterName System.String: 
---@return System.Nullable<System.Int32>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.Avatar.GetParameterAsInt (parameterName) return nil end

---@param humanBone UnityEngine.HumanBodyBones: 
---@return System.Boolean
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.Avatar.HasBone (humanBone) return true end

---@param parameterName System.String: 
---@return System.Boolean
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.Avatar.HasParameter (parameterName) return true end

---@param left ABI_RC.API.Avatar: 
---@param right ABI_RC.API.Avatar: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Avatar.op_Equality (left, right) return true end -- static

---@param left ABI_RC.API.Avatar: 
---@param right ABI_RC.API.Avatar: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Avatar.op_Inequality (left, right) return true end -- static

---@param parameterName System.String: 
---@param parameterValue System.Boolean: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.Avatar.SetParameter (parameterName, parameterValue) return end

---@param parameterName System.String: 
---@param parameterValue System.Int32: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.Avatar.SetParameter (parameterName, parameterValue) return end

---@param parameterName System.String: 
---@param parameterValue System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.Avatar.SetParameter (parameterName, parameterValue) return end

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Avatar.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Avatar.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Avatar.ToString () return "" end

--- @class _CVRSpecial.AvatarAPI
--- FIXME: Wrapped ABI_RC.API.AvatarAPI for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field CurrentAvatar ABI_RC.API.Avatar 
---@access_get AVATAR CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field LocalAvatar ABI_RC.API.Avatar 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
_CVRSpecial.AvatarAPI = {}
_CVRSpecial.AvatarAPI.CurrentAvatar = nil
_CVRSpecial.AvatarAPI.LocalAvatar = nil

---@param x ABI_RC.API.AvatarAPI: 
---@param y ABI_RC.API.AvatarAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.AvatarAPI.op_Equality (x, y) return true end -- static

---@param x ABI_RC.API.AvatarAPI: 
---@param y ABI_RC.API.AvatarAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.AvatarAPI.op_Inequality (x, y) return true end -- static

--- @class _CVRSpecial.DebugAPI
--- FIXME: Wrapped ABI_RC.API.DebugAPI for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field RuntimeGizmos ABI_RC.API.RuntimeGizmosAPI 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
_CVRSpecial.DebugAPI = {}
_CVRSpecial.DebugAPI.RuntimeGizmos = nil

---@param x ABI_RC.API.DebugAPI: 
---@param y ABI_RC.API.DebugAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.DebugAPI.op_Equality (x, y) return true end -- static

---@param x ABI_RC.API.DebugAPI: 
---@param y ABI_RC.API.DebugAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.DebugAPI.op_Inequality (x, y) return true end -- static

--- @class _CVRSpecial.InstancesAPI
--- FIXME: Wrapped ABI_RC.API.InstancesAPI for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field InstanceID System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field InstanceName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field InstancePrivacy System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsConnected System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsHomeInstance System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Ping System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
_CVRSpecial.InstancesAPI = {}
_CVRSpecial.InstancesAPI.InstanceID = ""
_CVRSpecial.InstancesAPI.InstanceName = ""
_CVRSpecial.InstancesAPI.InstancePrivacy = ""
_CVRSpecial.InstancesAPI.IsConnected = true
_CVRSpecial.InstancesAPI.IsHomeInstance = true
_CVRSpecial.InstancesAPI.Ping = 0

---@param x ABI_RC.API.InstancesAPI: 
---@param y ABI_RC.API.InstancesAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.InstancesAPI.op_Equality (x, y) return true end -- static

---@param x ABI_RC.API.InstancesAPI: 
---@param y ABI_RC.API.InstancesAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.InstancesAPI.op_Inequality (x, y) return true end -- static

--- @class _CVRSpecial.Player
--- FIXME: Wrapped ABI_RC.API.Player for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field Avatar ABI_RC.API.Avatar 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Core ABI_RC.API.Player.CoreParameters 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IKLeftPalmToThumbAxis System.Nullable<UnityEngine.Vector3> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IKLeftWristToPalmAxis System.Nullable<UnityEngine.Vector3> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IKRightPalmToThumbAxis System.Nullable<UnityEngine.Vector3> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IKRightWristToPalmAxis System.Nullable<UnityEngine.Vector3> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field ImmersionDepth System.Nullable<System.Single> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsAuthenticated System.Nullable<System.Boolean> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsFlightAllowed System.Nullable<System.Boolean> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsFlying System.Nullable<System.Boolean> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsFlyingWithNoClip System.Nullable<System.Boolean> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsImmobilized System.Nullable<System.Boolean> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsLocal System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsNameplateActive System.Nullable<System.Boolean> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsRemote System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsUsingVR System.Nullable<System.Boolean> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Spawnables System.Collections.Generic.List<ABI_RC.API.Spawnable> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field UserID System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Username System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
_CVRSpecial.Player = {}
_CVRSpecial.Player.Avatar = nil
_CVRSpecial.Player.Core = nil
_CVRSpecial.Player.IKLeftPalmToThumbAxis = nil
_CVRSpecial.Player.IKLeftWristToPalmAxis = nil
_CVRSpecial.Player.IKRightPalmToThumbAxis = nil
_CVRSpecial.Player.IKRightWristToPalmAxis = nil
_CVRSpecial.Player.ImmersionDepth = nil
_CVRSpecial.Player.IsAuthenticated = nil
_CVRSpecial.Player.IsFlightAllowed = nil
_CVRSpecial.Player.IsFlying = nil
_CVRSpecial.Player.IsFlyingWithNoClip = nil
_CVRSpecial.Player.IsImmobilized = nil
_CVRSpecial.Player.IsLocal = true
_CVRSpecial.Player.IsNameplateActive = nil
_CVRSpecial.Player.IsRemote = true
_CVRSpecial.Player.IsUsingVR = nil
_CVRSpecial.Player.Spawnables = []
_CVRSpecial.Player.UserID = ""
_CVRSpecial.Player.Username = ""

---@param force UnityEngine.Vector3: 
---@param forceMode UnityEngine.ForceMode: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.AddForce (force, forceMode) return end

---@return System.Nullable<UnityEngine.Vector3>
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetControllerVelocity () return nil end

---@return UnityEngine.Vector3
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetForward () return nil end

---@return UnityEngine.Vector3
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetGravity () return nil end

---@return UnityEngine.Vector3
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetGravityDirection () return nil end

---@return System.Nullable<System.Single>
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetHeadingOffset () return nil end

---@return System.Nullable<UnityEngine.Vector3>
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetNameplatePosition () return nil end

---@return System.Nullable<UnityEngine.Vector3>
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetPlaySpaceOffset () return nil end

---@return System.Nullable<System.Single>
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetPlaySpaceScale () return nil end

---@return UnityEngine.Vector3
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetPosition () return nil end

---@return UnityEngine.Quaternion
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetRotation () return nil end

---@return UnityEngine.Vector3
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetViewPointPosition () return nil end

---@return UnityEngine.Quaternion
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetViewPointRotation () return nil end

---@return UnityEngine.Vector3
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetVoicePointPosition () return nil end

---@return UnityEngine.Quaternion
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetVoicePointRotation () return nil end

---@param launchVelocity UnityEngine.Vector3: 
---@param overrideVerticalVelocity System.Boolean: 
---@param overrideLateralVelocity System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.LaunchCharacter (launchVelocity, overrideVerticalVelocity, overrideLateralVelocity) return end

---@param left ABI_RC.API.Player: 
---@param right ABI_RC.API.Player: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.op_Equality (left, right) return true end -- static

---@param left ABI_RC.API.Player: 
---@param right ABI_RC.API.Player: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.op_Inequality (left, right) return true end -- static

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.PauseGroundConstraint () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.ResetAllForces () return end

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.Player.Respawn () return end

---@param value System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.Player.SetBodyControlHeadWeight (value) return end

---@param value System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.Player.SetBodyControlLeftArmWeight (value) return end

---@param value System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.Player.SetBodyControlLeftLegWeight (value) return end

---@param value System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.Player.SetBodyControlLocomotionWeight (value) return end

---@param value System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.Player.SetBodyControlPelvisWeight (value) return end

---@param value System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.Player.SetBodyControlRightArmWeight (value) return end

---@param value System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.Player.SetBodyControlRightLegWeight (value) return end

---@param velocity UnityEngine.Vector3: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.SetControllerVelocity (velocity) return end

---@param flightEnable System.Boolean: 
---@param noClipEnabled System.Boolean: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.Player.SetFlight (flightEnable, noClipEnabled) return end

---@param isImmobilized System.Boolean: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.Player.SetImmobilized (isImmobilized) return end

---@param worldPosition UnityEngine.Vector3: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.SetPosition (worldPosition) return end

---@param worldRotation UnityEngine.Quaternion: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.SetRotation (worldRotation) return end

---@param avatarId System.String: 
---@return System.Nullable<System.Boolean>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL
function _CVRSpecial.Player.SwitchAvatar (avatarId) return nil end

---@param targetPos UnityEngine.Vector3: 
---@param interpolate System.Boolean: 
---@param updateGround System.Boolean: 
---@param preserveVelocity System.Boolean: 
---@param rotationDifference System.Nullable<UnityEngine.Quaternion>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.TeleportPlayerTo (targetPos, interpolate, updateGround, preserveVelocity, rotationDifference) return end

---@param targetPos UnityEngine.Vector3: 
---@param targetEulerRot UnityEngine.Vector3: 
---@param interpolate System.Boolean: 
---@param updateGround System.Boolean: 
---@param preserveVelocity System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.TeleportPlayerTo (targetPos, targetEulerRot, interpolate, updateGround, preserveVelocity) return end

---@param targetPos UnityEngine.Vector3: 
---@param targetRot UnityEngine.Quaternion: 
---@param interpolate System.Boolean: 
---@param updateGround System.Boolean: 
---@param preserveVelocity System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.TeleportPlayerTo (targetPos, targetRot, interpolate, updateGround, preserveVelocity) return end

---@param targetTransform UnityEngine.Transform: 
---@param interpolate System.Boolean: 
---@param updateGround System.Boolean: 
---@param preserveVelocity System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.TeleportPlayerTo (targetTransform, interpolate, updateGround, preserveVelocity) return end

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Player.ToString () return "" end

--- @class _CVRSpecial.CoreParameters
--- FIXME: Wrapped ABI_RC.API.Player+CoreParameters for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field CancelEmote System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Crouching System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field DistanceTo System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Emote System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Flying System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field GestureLeft System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field GestureLeftIdx System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field GestureRight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field GestureRightIdx System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Grounded System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field MovementX System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field MovementY System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Prone System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Sitting System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Swimming System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Toggle System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field VisemeIdx System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field VisemeLoudness System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
_CVRSpecial.CoreParameters = {}
_CVRSpecial.CoreParameters.CancelEmote = true
_CVRSpecial.CoreParameters.Crouching = true
_CVRSpecial.CoreParameters.DistanceTo = 0.0
_CVRSpecial.CoreParameters.Emote = 0
_CVRSpecial.CoreParameters.Flying = true
_CVRSpecial.CoreParameters.GestureLeft = 0.0
_CVRSpecial.CoreParameters.GestureLeftIdx = 0.0
_CVRSpecial.CoreParameters.GestureRight = 0.0
_CVRSpecial.CoreParameters.GestureRightIdx = 0.0
_CVRSpecial.CoreParameters.Grounded = true
_CVRSpecial.CoreParameters.MovementX = 0.0
_CVRSpecial.CoreParameters.MovementY = 0.0
_CVRSpecial.CoreParameters.Prone = true
_CVRSpecial.CoreParameters.Sitting = true
_CVRSpecial.CoreParameters.Swimming = true
_CVRSpecial.CoreParameters.Toggle = 0
_CVRSpecial.CoreParameters.VisemeIdx = 0
_CVRSpecial.CoreParameters.VisemeLoudness = 0.0

---@param x ABI_RC.API.Player.CoreParameters: 
---@param y ABI_RC.API.Player.CoreParameters: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.CoreParameters.op_Equality (x, y) return true end -- static

---@param x ABI_RC.API.Player.CoreParameters: 
---@param y ABI_RC.API.Player.CoreParameters: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.CoreParameters.op_Inequality (x, y) return true end -- static

--- @class _CVRSpecial.PlayerAPI
--- FIXME: Wrapped ABI_RC.API.PlayerAPI for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field AllPlayers System.Collections.Generic.List<ABI_RC.API.Player> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field LocalPlayer ABI_RC.API.Player 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field PlayerCount System.Int32 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field RemotePlayers System.Collections.Generic.List<ABI_RC.API.Player> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
_CVRSpecial.PlayerAPI = {}
_CVRSpecial.PlayerAPI.AllPlayers = []
_CVRSpecial.PlayerAPI.LocalPlayer = nil
_CVRSpecial.PlayerAPI.PlayerCount = 0
_CVRSpecial.PlayerAPI.RemotePlayers = []

---@param userId System.String: 
---@return ABI_RC.API.Player
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PlayerAPI.FindPlayerByUserId (userId) return nil end

---@param username System.String: 
---@return ABI_RC.API.Player
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PlayerAPI.FindPlayerByUsername (username) return nil end

---@param position UnityEngine.Vector3: 
---@return ABI_RC.API.Player
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PlayerAPI.GetClosestPlayer (position) return nil end

---@param userId System.String: 
---@return System.Boolean
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.PlayerAPI.IsFriendsWith (userId) return true end

---@param x ABI_RC.API.PlayerAPI: 
---@param y ABI_RC.API.PlayerAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PlayerAPI.op_Equality (x, y) return true end -- static

---@param x ABI_RC.API.PlayerAPI: 
---@param y ABI_RC.API.PlayerAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.PlayerAPI.op_Inequality (x, y) return true end -- static

--- @class _CVRSpecial.RuntimeGizmosAPI
--- FIXME: Wrapped ABI_RC.API.RuntimeGizmosAPI for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field Color UnityEngine.Color 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field Opacity System.Single 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
_CVRSpecial.RuntimeGizmosAPI = {}
_CVRSpecial.RuntimeGizmosAPI.Color = nil
_CVRSpecial.RuntimeGizmosAPI.Opacity = 0.0

---@param from UnityEngine.Vector3: 
---@param to UnityEngine.Vector3: 
---@param thickness System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawArrow (from, to, thickness) return end

---@param from UnityEngine.Vector3: 
---@param to UnityEngine.Vector3: 
---@param thickness System.Single: 
---@param color UnityEngine.Color: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawArrow (from, to, thickness, color) return end

---@param from UnityEngine.Vector3: 
---@param to UnityEngine.Vector3: 
---@param thickness System.Single: 
---@param color UnityEngine.Color: 
---@param opacity System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawArrow (from, to, thickness, color, opacity) return end

---@param collider UnityEngine.Collider: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawCollider (collider) return end

---@param collider UnityEngine.Collider: 
---@param color UnityEngine.Color: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawCollider (collider, color) return end

---@param collider UnityEngine.Collider: 
---@param color UnityEngine.Color: 
---@param opacity System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawCollider (collider, color, opacity) return end

---@param colliders UnityEngine.Collider[]: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawColliders (colliders) return end

---@param colliders UnityEngine.Collider[]: 
---@param color UnityEngine.Color: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawColliders (colliders, color) return end

---@param colliders UnityEngine.Collider[]: 
---@param color UnityEngine.Color: 
---@param opacity System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawColliders (colliders, color, opacity) return end

---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@param height System.Single: 
---@param radius System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawCone (position, rotation, height, radius) return end

---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@param height System.Single: 
---@param radius System.Single: 
---@param color UnityEngine.Color: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawCone (position, rotation, height, radius, color) return end

---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@param height System.Single: 
---@param radius System.Single: 
---@param color UnityEngine.Color: 
---@param opacity System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawCone (position, rotation, height, radius, color, opacity) return end

---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@param size UnityEngine.Vector3: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawCube (position, rotation, size) return end

---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@param size UnityEngine.Vector3: 
---@param color UnityEngine.Color: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawCube (position, rotation, size, color) return end

---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@param size UnityEngine.Vector3: 
---@param color UnityEngine.Color: 
---@param opacity System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawCube (position, rotation, size, color, opacity) return end

---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@param height System.Single: 
---@param radius System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawCylinder (position, rotation, height, radius) return end

---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@param height System.Single: 
---@param radius System.Single: 
---@param color UnityEngine.Color: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawCylinder (position, rotation, height, radius, color) return end

---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@param height System.Single: 
---@param radius System.Single: 
---@param color UnityEngine.Color: 
---@param opacity System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawCylinder (position, rotation, height, radius, color, opacity) return end

---@param from UnityEngine.Vector3: 
---@param to UnityEngine.Vector3: 
---@param thickness System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawLine (from, to, thickness) return end

---@param from UnityEngine.Vector3: 
---@param to UnityEngine.Vector3: 
---@param thickness System.Single: 
---@param color UnityEngine.Color: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawLine (from, to, thickness, color) return end

---@param from UnityEngine.Vector3: 
---@param to UnityEngine.Vector3: 
---@param thickness System.Single: 
---@param color UnityEngine.Color: 
---@param opacity System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawLine (from, to, thickness, color, opacity) return end

---@param mesh UnityEngine.Mesh: 
---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@param scale UnityEngine.Vector3: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawMesh (mesh, position, rotation, scale) return end

---@param mesh UnityEngine.Mesh: 
---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@param scale UnityEngine.Vector3: 
---@param color UnityEngine.Color: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawMesh (mesh, position, rotation, scale, color) return end

---@param mesh UnityEngine.Mesh: 
---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@param scale UnityEngine.Vector3: 
---@param color UnityEngine.Color: 
---@param opacity System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawMesh (mesh, position, rotation, scale, color, opacity) return end

---@param position UnityEngine.Vector3: 
---@param radius System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawSphere (position, radius) return end

---@param position UnityEngine.Vector3: 
---@param radius System.Single: 
---@param color UnityEngine.Color: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawSphere (position, radius, color) return end

---@param position UnityEngine.Vector3: 
---@param radius System.Single: 
---@param color UnityEngine.Color: 
---@param opacity System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawSphere (position, radius, color, opacity) return end

---@param position UnityEngine.Vector3: 
---@param text System.String: 
---@param size System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawText (position, text, size) return end

---@param position UnityEngine.Vector3: 
---@param text System.String: 
---@param size System.Single: 
---@param color UnityEngine.Color: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawText (position, text, size, color) return end

---@param position UnityEngine.Vector3: 
---@param text System.String: 
---@param size System.Single: 
---@param color UnityEngine.Color: 
---@param opacity System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.DrawText (position, text, size, color, opacity) return end

---@param x ABI_RC.API.RuntimeGizmosAPI: 
---@param y ABI_RC.API.RuntimeGizmosAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.op_Equality (x, y) return true end -- static

---@param x ABI_RC.API.RuntimeGizmosAPI: 
---@param y ABI_RC.API.RuntimeGizmosAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.RuntimeGizmosAPI.op_Inequality (x, y) return true end -- static

--- @class _CVRSpecial.Spawnable
--- FIXME: Wrapped ABI_RC.API.Spawnable for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field IsSpawnedByMe System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field RootGameObject UnityEngine.GameObject 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field RootTransform UnityEngine.Transform 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field SpawnableID System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field SpawnableInstanceID System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field Spawner ABI_RC.API.Player 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
_CVRSpecial.Spawnable = {}
_CVRSpecial.Spawnable.IsSpawnedByMe = true
_CVRSpecial.Spawnable.RootGameObject = nil
_CVRSpecial.Spawnable.RootTransform = nil
_CVRSpecial.Spawnable.SpawnableID = ""
_CVRSpecial.Spawnable.SpawnableInstanceID = ""
_CVRSpecial.Spawnable.Spawner = nil

---@param x ABI_RC.API.Spawnable: 
---@param y ABI_RC.API.Spawnable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Spawnable.op_Equality (x, y) return true end -- static

---@param x ABI_RC.API.Spawnable: 
---@param y ABI_RC.API.Spawnable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Spawnable.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Spawnable.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Spawnable.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.Spawnable.ToString () return "" end

--- @class _CVRSpecial.SpawnableAPI
--- FIXME: Wrapped ABI_RC.API.SpawnableAPI for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field AllSpawnables System.Collections.Generic.List<ABI_RC.API.Spawnable> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field MySpawnables System.Collections.Generic.List<ABI_RC.API.Spawnable> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field OthersSpawnables System.Collections.Generic.List<ABI_RC.API.Spawnable> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
_CVRSpecial.SpawnableAPI = {}
_CVRSpecial.SpawnableAPI.AllSpawnables = []
_CVRSpecial.SpawnableAPI.MySpawnables = []
_CVRSpecial.SpawnableAPI.OthersSpawnables = []

---@param x ABI_RC.API.SpawnableAPI: 
---@param y ABI_RC.API.SpawnableAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.SpawnableAPI.op_Equality (x, y) return true end -- static

---@param x ABI_RC.API.SpawnableAPI: 
---@param y ABI_RC.API.SpawnableAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.SpawnableAPI.op_Inequality (x, y) return true end -- static

--- @class _CVRSpecial.World
--- FIXME: Wrapped ABI_RC.API.World for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field WorldID System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
_CVRSpecial.World = {}
_CVRSpecial.World.WorldID = ""

---@param x ABI_RC.API.World: 
---@param y ABI_RC.API.World: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.World.op_Equality (x, y) return true end -- static

---@param x ABI_RC.API.World: 
---@param y ABI_RC.API.World: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.World.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.World.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.World.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.World.ToString () return "" end

--- @class _CVRSpecial.WorldAPI
--- FIXME: Wrapped ABI_RC.API.WorldAPI for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field CurrentWorld ABI_RC.API.World 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
_CVRSpecial.WorldAPI = {}
_CVRSpecial.WorldAPI.CurrentWorld = nil

---@param x ABI_RC.API.WorldAPI: 
---@param y ABI_RC.API.WorldAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.WorldAPI.op_Equality (x, y) return true end -- static

---@param x ABI_RC.API.WorldAPI: 
---@param y ABI_RC.API.WorldAPI: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function _CVRSpecial.WorldAPI.op_Inequality (x, y) return true end -- static
return _CVRSpecial
