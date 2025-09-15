---@meta
-- AUTOMATICALLY GENERATED, DO NOT EDIT BY HAND
local CVR = {}
CVR.Network = {}

--- @class CVR.Network.OutgoingScriptNetworkMessage
--- Safe, checked interfaces for an outgoing ScriptNetworkMessage.
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.Network.OutgoingScriptNetworkMessage = {}

---@param recipients System.String[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.SendTo (recipients) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.SendToAll () return end

---@param arg System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteBool (arg) return end

---@param args System.Boolean[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteBoolArray (args) return end

---@param arg System.Byte: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteByte (arg) return end

---@param args System.Byte[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteByteArray (args) return end

---@param arg System.String: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteChar (arg) return end

---@param arg System.Char: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteChar (arg) return end

---@param arg System.String: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteCharArray (arg) return end

---@param args System.Char[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteCharArray (args) return end

---@param arg System.Double: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteDouble (arg) return end

---@param args System.Double[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteDoubleArray (args) return end

---@param arg System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteFloat (arg) return end

---@param args System.Single[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteFloatArray (args) return end

---@param arg System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteInt (arg) return end

---@param args System.Int32[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteIntArray (args) return end

---@param arg System.Int64: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteLong (arg) return end

---@param args System.Int64[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteLongArray (args) return end

---@param arg System.Int16: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteShort (arg) return end

---@param args System.Int16[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteShortArray (args) return end

---@param arg System.SByte: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteSignedByte (arg) return end

---@param args System.SByte[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteSignedByteArray (args) return end

---@param arg System.String: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteString (arg) return end

---@param args System.String[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteStringArray (args) return end

---@param arg System.UInt32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteUnsignedInt (arg) return end

---@param args System.UInt32[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteUnsignedIntArray (args) return end

---@param arg System.UInt64: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteUnsignedLong (arg) return end

---@param args System.UInt64[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteUnsignedLongArray (args) return end

---@param arg System.UInt16: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteUnsignedShort (arg) return end

---@param args System.UInt16[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.WriteUnsignedShortArray (args) return end

---@param x ABI.Scripting.CVRSTL.Common.CVR.Network.OutgoingScriptNetworkMessage: 
---@param y ABI.Scripting.CVRSTL.Common.CVR.Network.OutgoingScriptNetworkMessage: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.op_Equality (x, y) return true end -- static

---@param x ABI.Scripting.CVRSTL.Common.CVR.Network.OutgoingScriptNetworkMessage: 
---@param y ABI.Scripting.CVRSTL.Common.CVR.Network.OutgoingScriptNetworkMessage: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.OutgoingScriptNetworkMessage.ToString () return "" end

--- @class CVR.Network.IncomingScriptNetworkMessage
--- Safe, checked interfaces for an incoming ScriptNetworkMessage.
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field AddressingPolicy ABI_RC.Scripting.ScriptNetwork.ScriptNetworkAddressingPolicy 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field InstanceID ABI_RC.Scripting.ScriptNetwork.ScriptInstanceID The ID of the script instance that sent this message, to allow other scripts to differentiate between each separate instance of a script.  For example, if two props spawn with the same scripts, each script in each prop will still have different instance IDs. These are generated by the game.
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field ScriptID ABI_RC.Scripting.ScriptNetwork.ScriptID The ID of the script type that sent this message.  This can be thought of as the "species" of the script, like "human" or "bear".  Each compiled script must be uniquely identified by one, so it may be useful to include your name or use a GUID.
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Sender System.String Which client sent this, if any.
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field SenderIsLocal System.Boolean If we sent this message to ourselves.
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ShallBroadcast System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field TargetInstances ABI_RC.Scripting.ScriptNetwork.ScriptInstanceID[] If our policy is Addressed, the list of receiving ScriptInstanceIDs.
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field TargetScripts ABI_RC.Scripting.ScriptNetwork.ScriptID[] If our policy is Addressed, the list of receiving ScriptIDs.
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
CVR.Network.IncomingScriptNetworkMessage = {}
CVR.Network.IncomingScriptNetworkMessage.AddressingPolicy = nil
CVR.Network.IncomingScriptNetworkMessage.InstanceID = nil
CVR.Network.IncomingScriptNetworkMessage.ScriptID = nil
CVR.Network.IncomingScriptNetworkMessage.Sender = ""
CVR.Network.IncomingScriptNetworkMessage.SenderIsLocal = true
CVR.Network.IncomingScriptNetworkMessage.ShallBroadcast = true
CVR.Network.IncomingScriptNetworkMessage.TargetInstances = []
CVR.Network.IncomingScriptNetworkMessage.TargetScripts = []

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadBool () return true end

---@return System.Boolean[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadBoolArray () return [] end

---Read an 8-bit unsigned integer from the stream.
---@return System.Byte
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadByte () return 0 end

---Read an array of 8-bit unsigned integers from the stream.
---@return System.Byte[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadByteArray () return [] end

---Read a UTF-8-encoded character from the stream.
---@return System.Char
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadChar () return nil end

---Read an array of UTF-8-encoded characters from the stream.
---@return System.Char[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadCharArray () return [] end

---@return System.Double
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadDouble () return 0.0 end

---@return System.Double[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadDoubleArray () return [] end

---@return System.Single
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadFloat () return 0.0 end

---@return System.Single[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadFloatArray () return [] end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadInt () return 0 end

---@return System.Int32[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadIntArray () return [] end

---@return System.Int64
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadLong () return 0 end

---@return System.Int64[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadLongArray () return [] end

---@return UnityEngine.Quaternion
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadQuaternion () return nil end

---@return UnityEngine.Quaternion[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadQuaternionArray () return [] end

---@return System.Int16
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadShort () return 0 end

---@return System.Int16[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadShortArray () return [] end

---Read an 8-bit signed integer from the stream.
---@return System.SByte
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadSignedByte () return 0 end

---Read an array of 8-bit signed integers from the stream.
---@return System.SByte[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadSignedByteArray () return [] end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadString () return "" end

---@return System.String[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadStringArray () return [] end

---@return System.UInt32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadUnsignedInt () return 0 end

---@return System.UInt32[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadUnsignedIntArray () return [] end

---@return System.UInt64
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadUnsignedLong () return 0 end

---@return System.UInt64[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadUnsignedLongArray () return [] end

---@return System.UInt16
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadUnsignedShort () return 0 end

---@return System.UInt16[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadUnsignedShortArray () return [] end

---@return UnityEngine.Vector3
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadVector3 () return nil end

---@return UnityEngine.Vector3[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ReadVector3Array () return [] end

---@param x ABI.Scripting.CVRSTL.Common.CVR.Network.IncomingScriptNetworkMessage: 
---@param y ABI.Scripting.CVRSTL.Common.CVR.Network.IncomingScriptNetworkMessage: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.op_Equality (x, y) return true end -- static

---@param x ABI.Scripting.CVRSTL.Common.CVR.Network.IncomingScriptNetworkMessage: 
---@param y ABI.Scripting.CVRSTL.Common.CVR.Network.IncomingScriptNetworkMessage: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.Network.IncomingScriptNetworkMessage.ToString () return "" end
return CVR.Network
