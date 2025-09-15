---@meta
-- AUTOMATICALLY GENERATED, DO NOT EDIT BY HAND
local System = {}

--- @class System.Object
--- FIXME: Wrapped System.Object for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
System.Object = {}

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function System.Object.Equals (obj) return true end

---@param objA System.Object: 
---@param objB System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function System.Object.Equals (objA, objB) return true end -- static

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function System.Object.GetHashCode () return 0 end

---@param objA System.Object: 
---@param objB System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function System.Object.ReferenceEquals (objA, objB) return true end -- static

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function System.Object.ToString () return "" end

---@param x System.Object: 
---@param y System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function System.Object.op_Equality (x, y) return true end -- static

---@param x System.Object: 
---@param y System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function System.Object.op_Inequality (x, y) return true end -- static

--- @class System.ValueType
--- FIXME: Wrapped System.ValueType for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
System.ValueType = {}

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function System.ValueType.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function System.ValueType.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function System.ValueType.ToString () return "" end

---@param x System.ValueType: 
---@param y System.ValueType: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function System.ValueType.op_Equality (x, y) return true end -- static

---@param x System.ValueType: 
---@param y System.ValueType: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function System.ValueType.op_Inequality (x, y) return true end -- static
return System
