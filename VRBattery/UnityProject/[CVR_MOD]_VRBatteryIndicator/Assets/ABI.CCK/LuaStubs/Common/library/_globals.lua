--- @meta
--[[
    This file describes global variables.
]]

--#region Modules

--- Load a module from the game.
---
--- Does NOT have filesystem access!
--- @param modname string The module ID
--- @return any|nil module The module, if found.  Returns nil if not found.
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
function require(modname)
    return nil
end

--#endregion


--#region Special Functions

--- Returns the type full name of a System object, Unity Object, API Object, or Wrapped Object from a Proxy.
--- Utilizes Unity's specific null check for Unity Objects to ensure accurate null validation.
---@param object any
---@return string|nil Returns the class type full name if not null, nil otherwise.
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function typeof (object) return nil end

--- Determines whether a given System object, Unity Object, or API Object (Like Player or Avatar) is null or not.
-- It uses Unity's specific null check for Unity Objects to ensure accurate validation.
---@param object any
---@return boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function IsValid (object) return true end

--- Attempt to cast from one type to another.
---
--- May explode.
--- @param input any
--- @param destType string The C# type you wish to cast to. Will be checked for access and automatically be wrapped for Lua.
--- @return any|nil output The requested cast of the object.  If this failed for any reason, nil.
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
function cast(input, destType)
    return nil
end

--#endregion


--#region MonoBehaviour

--- The game object we're parented to.
--- @type UnityEngine.GameObject
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
gameObject = nil

--- The gameobject's transform.
--- @type UnityEngine.Transform
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
transform = nil

--- The name of the script.
--- @type string
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
name = nil

--#endregion


--#region Lua Behaviour

--- The SHA256 hash of the script at the point this property was invoked, encoded to base64.
--- If the script has been changed at runtime, the hash will change.
--- Useful if you wish to check for integrity or use as an identifier.
--- **Please note that malicious users can modify this, so don't rely on it totally.**
---
--- @type string
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
Hash = nil


--- @type boolean
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
RunningOnServer = false

--- @type boolean
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
RunningOnClient = true


--- @type boolean
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
RunningInAvatar = true

--- @type boolean
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
RunningInProp = true

--- @type boolean
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
RunningInWorld = true


--- Defined when running on an Avatar. True for the avatar wearer. False for others.
--- @type boolean|nil
--- @access AVATAR CLIENT|SERVER LOCAL|REMOTE
IsWornByMe = nil

--- Defined when running on a Prop. True for the spawner. False for others.
--- @type boolean|nil
--- @access PROP CLIENT|SERVER LOCAL|REMOTE
IsSpawnedByMe = nil


--- A table of objects the editor linked to this script via the "Bound Objects" list.
--- @type table
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
BoundObjects = {}

--- Reference to the currently running script.
--- @type CVR.CCK.CVRLuaClientBehaviour
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
Script = nil

--#endregion


--#region APIs

--- Interface for interacting with the PlayerAPI
--- @type _CVRSpecial.PlayerAPI
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
PlayerAPI = nil

--- Interface for interacting with the InstancesAPI
--- @type _CVRSpecial.InstancesAPI
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
InstancesAPI = nil

--- Interface for interacting with the AvatarAPI
--- @type _CVRSpecial.AvatarAPI
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
AvatarAPI = nil

--- Interface for interacting with the entity's Storage
--- @type _CVRSpecial.PersistenceCollection
--- @access WORLD|PROP|AVATAR CLIENT|SERVER LOCAL|REMOTE
Storage = nil

--#endregion