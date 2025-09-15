---@meta
-- AUTOMATICALLY GENERATED, DO NOT EDIT BY HAND
local UnityEngine = {}
UnityEngine.UI = {}

--- @class UnityEngine.UI.AnimationTriggers
--- FIXME: Wrapped UnityEngine.UI.AnimationTriggers for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field disabledTrigger System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field highlightedTrigger System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field normalTrigger System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field pressedTrigger System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field selectedTrigger System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
UnityEngine.UI.AnimationTriggers = {}
UnityEngine.UI.AnimationTriggers.disabledTrigger = ""
UnityEngine.UI.AnimationTriggers.highlightedTrigger = ""
UnityEngine.UI.AnimationTriggers.normalTrigger = ""
UnityEngine.UI.AnimationTriggers.pressedTrigger = ""
UnityEngine.UI.AnimationTriggers.selectedTrigger = ""

---Constructor for UnityEngine.UI.AnimationTriggers
---@return UnityEngine.UI.AnimationTriggers
function UnityEngine.UI.NewAnimationTriggers() end

---@param x UnityEngine.UI.AnimationTriggers: 
---@param y UnityEngine.UI.AnimationTriggers: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.AnimationTriggers.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.AnimationTriggers: 
---@param y UnityEngine.UI.AnimationTriggers: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.AnimationTriggers.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.AnimationTriggers.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.AnimationTriggers.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.AnimationTriggers.ToString () return "" end

--- @class UnityEngine.UI.UIBehaviour
--- FIXME: Wrapped UnityEngine.EventSystems.UIBehaviour for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
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
UnityEngine.UI.UIBehaviour = {}
UnityEngine.UI.UIBehaviour.enabled = true
UnityEngine.UI.UIBehaviour.isActiveAndEnabled = true
UnityEngine.UI.UIBehaviour.gameObject = nil
UnityEngine.UI.UIBehaviour.tag = ""
UnityEngine.UI.UIBehaviour.transform = nil
UnityEngine.UI.UIBehaviour.name = ""

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.IsDestroyed () return true end

---@param x UnityEngine.EventSystems.UIBehaviour: 
---@param y UnityEngine.EventSystems.UIBehaviour: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.op_Equality (x, y) return true end -- static

---@param x UnityEngine.EventSystems.UIBehaviour: 
---@param y UnityEngine.EventSystems.UIBehaviour: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.ToString () return "" end

---@param exists UnityEngine.EventSystems.UIBehaviour: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.UIBehaviour.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.CanvasScaler
--- FIXME: Wrapped UnityEngine.UI.CanvasScaler for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field defaultSpriteDPI System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field dynamicPixelsPerUnit System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fallbackScreenDPI System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field matchWidthOrHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field physicalUnit UnityEngine.UI.CanvasScaler.Unit 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field referencePixelsPerUnit System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field referenceResolution UnityEngine.Vector2 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field scaleFactor System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field screenMatchMode UnityEngine.UI.CanvasScaler.ScreenMatchMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field uiScaleMode UnityEngine.UI.CanvasScaler.ScaleMode 
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
UnityEngine.UI.CanvasScaler = {}
UnityEngine.UI.CanvasScaler.defaultSpriteDPI = 0.0
UnityEngine.UI.CanvasScaler.dynamicPixelsPerUnit = 0.0
UnityEngine.UI.CanvasScaler.fallbackScreenDPI = 0.0
UnityEngine.UI.CanvasScaler.matchWidthOrHeight = 0.0
UnityEngine.UI.CanvasScaler.physicalUnit = nil
UnityEngine.UI.CanvasScaler.referencePixelsPerUnit = 0.0
UnityEngine.UI.CanvasScaler.referenceResolution = nil
UnityEngine.UI.CanvasScaler.scaleFactor = 0.0
UnityEngine.UI.CanvasScaler.screenMatchMode = nil
UnityEngine.UI.CanvasScaler.uiScaleMode = nil
UnityEngine.UI.CanvasScaler.enabled = true
UnityEngine.UI.CanvasScaler.isActiveAndEnabled = true
UnityEngine.UI.CanvasScaler.gameObject = nil
UnityEngine.UI.CanvasScaler.tag = ""
UnityEngine.UI.CanvasScaler.transform = nil
UnityEngine.UI.CanvasScaler.name = ""

---@param x UnityEngine.UI.CanvasScaler: 
---@param y UnityEngine.UI.CanvasScaler: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.CanvasScaler: 
---@param y UnityEngine.UI.CanvasScaler: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.op_Inequality (x, y) return true end -- static

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.ToString () return "" end

---@param exists UnityEngine.UI.CanvasScaler: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.CanvasScaler.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.FontData
--- FIXME: Wrapped UnityEngine.UI.FontData for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field alignByGeometry System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field alignment UnityEngine.TextAnchor 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field bestFit System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field defaultFontData UnityEngine.UI.FontData 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field font UnityEngine.Font 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fontSize System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fontStyle UnityEngine.FontStyle 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field horizontalOverflow UnityEngine.HorizontalWrapMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field lineSpacing System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxSize System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minSize System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field richText System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field verticalOverflow UnityEngine.VerticalWrapMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
UnityEngine.UI.FontData = {}
UnityEngine.UI.FontData.alignByGeometry = true
UnityEngine.UI.FontData.alignment = nil
UnityEngine.UI.FontData.bestFit = true
UnityEngine.UI.FontData.defaultFontData = nil
UnityEngine.UI.FontData.font = nil
UnityEngine.UI.FontData.fontSize = 0
UnityEngine.UI.FontData.fontStyle = nil
UnityEngine.UI.FontData.horizontalOverflow = nil
UnityEngine.UI.FontData.lineSpacing = 0.0
UnityEngine.UI.FontData.maxSize = 0
UnityEngine.UI.FontData.minSize = 0
UnityEngine.UI.FontData.richText = true
UnityEngine.UI.FontData.verticalOverflow = nil

---Constructor for UnityEngine.UI.FontData
---@return UnityEngine.UI.FontData
function UnityEngine.UI.NewFontData() end

---@param x UnityEngine.UI.FontData: 
---@param y UnityEngine.UI.FontData: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.FontData.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.FontData: 
---@param y UnityEngine.UI.FontData: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.FontData.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.FontData.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.FontData.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.FontData.ToString () return "" end

--- @class UnityEngine.UI.BaseRaycaster
--- FIXME: Wrapped UnityEngine.EventSystems.BaseRaycaster for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field eventCamera UnityEngine.Camera 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field renderOrderPriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field rootRaycaster UnityEngine.EventSystems.BaseRaycaster 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field sortOrderPriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
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
UnityEngine.UI.BaseRaycaster = {}
UnityEngine.UI.BaseRaycaster.eventCamera = nil
UnityEngine.UI.BaseRaycaster.renderOrderPriority = 0
UnityEngine.UI.BaseRaycaster.rootRaycaster = nil
UnityEngine.UI.BaseRaycaster.sortOrderPriority = 0
UnityEngine.UI.BaseRaycaster.enabled = true
UnityEngine.UI.BaseRaycaster.isActiveAndEnabled = true
UnityEngine.UI.BaseRaycaster.gameObject = nil
UnityEngine.UI.BaseRaycaster.tag = ""
UnityEngine.UI.BaseRaycaster.transform = nil
UnityEngine.UI.BaseRaycaster.name = ""

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@param resultAppendList System.Collections.Generic.List<UnityEngine.EventSystems.RaycastResult>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.Raycast (eventData, resultAppendList) return end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.ToString () return "" end

---@param x UnityEngine.EventSystems.BaseRaycaster: 
---@param y UnityEngine.EventSystems.BaseRaycaster: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.op_Equality (x, y) return true end -- static

---@param x UnityEngine.EventSystems.BaseRaycaster: 
---@param y UnityEngine.EventSystems.BaseRaycaster: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.op_Inequality (x, y) return true end -- static

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.GetInstanceID () return 0 end

---@param exists UnityEngine.EventSystems.BaseRaycaster: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseRaycaster.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.GraphicRaycaster
--- FIXME: Wrapped UnityEngine.UI.GraphicRaycaster for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field blockingMask UnityEngine.LayerMask 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field blockingObjects UnityEngine.UI.GraphicRaycaster.BlockingObjects 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field eventCamera UnityEngine.Camera 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field ignoreReversedGraphics System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field renderOrderPriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field sortOrderPriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field rootRaycaster UnityEngine.EventSystems.BaseRaycaster 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
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
UnityEngine.UI.GraphicRaycaster = {}
UnityEngine.UI.GraphicRaycaster.blockingMask = nil
UnityEngine.UI.GraphicRaycaster.blockingObjects = nil
UnityEngine.UI.GraphicRaycaster.eventCamera = nil
UnityEngine.UI.GraphicRaycaster.ignoreReversedGraphics = true
UnityEngine.UI.GraphicRaycaster.renderOrderPriority = 0
UnityEngine.UI.GraphicRaycaster.sortOrderPriority = 0
UnityEngine.UI.GraphicRaycaster.rootRaycaster = nil
UnityEngine.UI.GraphicRaycaster.enabled = true
UnityEngine.UI.GraphicRaycaster.isActiveAndEnabled = true
UnityEngine.UI.GraphicRaycaster.gameObject = nil
UnityEngine.UI.GraphicRaycaster.tag = ""
UnityEngine.UI.GraphicRaycaster.transform = nil
UnityEngine.UI.GraphicRaycaster.name = ""

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@param resultAppendList System.Collections.Generic.List<UnityEngine.EventSystems.RaycastResult>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.Raycast (eventData, resultAppendList) return end

---@param x UnityEngine.UI.GraphicRaycaster: 
---@param y UnityEngine.UI.GraphicRaycaster: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.GraphicRaycaster: 
---@param y UnityEngine.UI.GraphicRaycaster: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.op_Inequality (x, y) return true end -- static

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.ToString () return "" end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.GetInstanceID () return 0 end

---@param exists UnityEngine.UI.GraphicRaycaster: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GraphicRaycaster.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.Graphic
--- Wrapped Graphic for Lua and Wasm
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field canvas UnityEngine.Canvas 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field canvasRenderer UnityEngine.CanvasRenderer 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field color UnityEngine.Color 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field depth System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field mainTexture UnityEngine.Texture 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field raycastPadding UnityEngine.Vector4 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field raycastTarget System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field rectTransform UnityEngine.RectTransform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
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
UnityEngine.UI.Graphic = {}
UnityEngine.UI.Graphic.canvas = nil
UnityEngine.UI.Graphic.canvasRenderer = nil
UnityEngine.UI.Graphic.color = nil
UnityEngine.UI.Graphic.depth = 0
UnityEngine.UI.Graphic.mainTexture = nil
UnityEngine.UI.Graphic.raycastPadding = nil
UnityEngine.UI.Graphic.raycastTarget = true
UnityEngine.UI.Graphic.rectTransform = nil
UnityEngine.UI.Graphic.enabled = true
UnityEngine.UI.Graphic.isActiveAndEnabled = true
UnityEngine.UI.Graphic.gameObject = nil
UnityEngine.UI.Graphic.tag = ""
UnityEngine.UI.Graphic.transform = nil
UnityEngine.UI.Graphic.name = ""

---@param alpha System.Single: 
---@param duration System.Single: 
---@param ignoreTimeScale System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.CrossFadeAlpha (alpha, duration, ignoreTimeScale) return end

---@param targetColor UnityEngine.Color: 
---@param duration System.Single: 
---@param ignoreTimeScale System.Boolean: 
---@param useAlpha System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.CrossFadeColor (targetColor, duration, ignoreTimeScale, useAlpha) return end

---@param targetColor UnityEngine.Color: 
---@param duration System.Single: 
---@param ignoreTimeScale System.Boolean: 
---@param useAlpha System.Boolean: 
---@param useRGB System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.CrossFadeColor (targetColor, duration, ignoreTimeScale, useAlpha, useRGB) return end

---@return UnityEngine.Rect
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.GetPixelAdjustedRect () return nil end

---@param point UnityEngine.Vector2: 
---@return UnityEngine.Vector2
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.PixelAdjustPoint (point) return nil end

---@param sp UnityEngine.Vector2: 
---@param eventCamera UnityEngine.Camera: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.Raycast (sp, eventCamera) return true end

---@param x UnityEngine.UI.Graphic: 
---@param y UnityEngine.UI.Graphic: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.Graphic: 
---@param y UnityEngine.UI.Graphic: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.op_Inequality (x, y) return true end -- static

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.ToString () return "" end

---@param exists UnityEngine.UI.Graphic: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Graphic.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.MaskableGraphic
--- Wrapped MaskableGraphic for Lua and Wasm
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isMaskingGraphic System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maskable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field canvas UnityEngine.Canvas 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field canvasRenderer UnityEngine.CanvasRenderer 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field color UnityEngine.Color 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field depth System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field mainTexture UnityEngine.Texture 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field raycastPadding UnityEngine.Vector4 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field raycastTarget System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field rectTransform UnityEngine.RectTransform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
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
UnityEngine.UI.MaskableGraphic = {}
UnityEngine.UI.MaskableGraphic.isMaskingGraphic = true
UnityEngine.UI.MaskableGraphic.maskable = true
UnityEngine.UI.MaskableGraphic.canvas = nil
UnityEngine.UI.MaskableGraphic.canvasRenderer = nil
UnityEngine.UI.MaskableGraphic.color = nil
UnityEngine.UI.MaskableGraphic.depth = 0
UnityEngine.UI.MaskableGraphic.mainTexture = nil
UnityEngine.UI.MaskableGraphic.raycastPadding = nil
UnityEngine.UI.MaskableGraphic.raycastTarget = true
UnityEngine.UI.MaskableGraphic.rectTransform = nil
UnityEngine.UI.MaskableGraphic.enabled = true
UnityEngine.UI.MaskableGraphic.isActiveAndEnabled = true
UnityEngine.UI.MaskableGraphic.gameObject = nil
UnityEngine.UI.MaskableGraphic.tag = ""
UnityEngine.UI.MaskableGraphic.transform = nil
UnityEngine.UI.MaskableGraphic.name = ""

---@param clipRect UnityEngine.Rect: 
---@param validRect System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.Cull (clipRect, validRect) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.RecalculateClipping () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.RecalculateMasking () return end

---@param clipRect UnityEngine.Rect: 
---@param validRect System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.SetClipRect (clipRect, validRect) return end

---@param clipSoftness UnityEngine.Vector2: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.SetClipSoftness (clipSoftness) return end

---@param x UnityEngine.UI.MaskableGraphic: 
---@param y UnityEngine.UI.MaskableGraphic: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.MaskableGraphic: 
---@param y UnityEngine.UI.MaskableGraphic: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.op_Inequality (x, y) return true end -- static

---@param alpha System.Single: 
---@param duration System.Single: 
---@param ignoreTimeScale System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.CrossFadeAlpha (alpha, duration, ignoreTimeScale) return end

---@param targetColor UnityEngine.Color: 
---@param duration System.Single: 
---@param ignoreTimeScale System.Boolean: 
---@param useAlpha System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.CrossFadeColor (targetColor, duration, ignoreTimeScale, useAlpha) return end

---@param targetColor UnityEngine.Color: 
---@param duration System.Single: 
---@param ignoreTimeScale System.Boolean: 
---@param useAlpha System.Boolean: 
---@param useRGB System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.CrossFadeColor (targetColor, duration, ignoreTimeScale, useAlpha, useRGB) return end

---@return UnityEngine.Rect
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.GetPixelAdjustedRect () return nil end

---@param point UnityEngine.Vector2: 
---@return UnityEngine.Vector2
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.PixelAdjustPoint (point) return nil end

---@param sp UnityEngine.Vector2: 
---@param eventCamera UnityEngine.Camera: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.Raycast (sp, eventCamera) return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.ToString () return "" end

---@param exists UnityEngine.UI.MaskableGraphic: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.MaskableGraphic.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.Text
--- FIXME: Wrapped UnityEngine.UI.Text for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field alignByGeometry System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field alignment UnityEngine.TextAnchor 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field cachedTextGenerator UnityEngine.TextGenerator 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field cachedTextGeneratorForLayout UnityEngine.TextGenerator 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field flexibleHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field flexibleWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field font UnityEngine.Font 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fontSize System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fontStyle UnityEngine.FontStyle 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field horizontalOverflow UnityEngine.HorizontalWrapMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field layoutPriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field lineSpacing System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field mainTexture UnityEngine.Texture 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field pixelsPerUnit System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field preferredHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field preferredWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field resizeTextForBestFit System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field resizeTextMaxSize System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field resizeTextMinSize System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field supportRichText System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field text System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field verticalOverflow UnityEngine.VerticalWrapMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isMaskingGraphic System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maskable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field canvas UnityEngine.Canvas 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field canvasRenderer UnityEngine.CanvasRenderer 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field color UnityEngine.Color 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field depth System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field raycastPadding UnityEngine.Vector4 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field raycastTarget System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field rectTransform UnityEngine.RectTransform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
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
UnityEngine.UI.Text = {}
UnityEngine.UI.Text.alignByGeometry = true
UnityEngine.UI.Text.alignment = nil
UnityEngine.UI.Text.cachedTextGenerator = nil
UnityEngine.UI.Text.cachedTextGeneratorForLayout = nil
UnityEngine.UI.Text.flexibleHeight = 0.0
UnityEngine.UI.Text.flexibleWidth = 0.0
UnityEngine.UI.Text.font = nil
UnityEngine.UI.Text.fontSize = 0
UnityEngine.UI.Text.fontStyle = nil
UnityEngine.UI.Text.horizontalOverflow = nil
UnityEngine.UI.Text.layoutPriority = 0
UnityEngine.UI.Text.lineSpacing = 0.0
UnityEngine.UI.Text.mainTexture = nil
UnityEngine.UI.Text.minHeight = 0.0
UnityEngine.UI.Text.minWidth = 0.0
UnityEngine.UI.Text.pixelsPerUnit = 0.0
UnityEngine.UI.Text.preferredHeight = 0.0
UnityEngine.UI.Text.preferredWidth = 0.0
UnityEngine.UI.Text.resizeTextForBestFit = true
UnityEngine.UI.Text.resizeTextMaxSize = 0
UnityEngine.UI.Text.resizeTextMinSize = 0
UnityEngine.UI.Text.supportRichText = true
UnityEngine.UI.Text.text = ""
UnityEngine.UI.Text.verticalOverflow = nil
UnityEngine.UI.Text.isMaskingGraphic = true
UnityEngine.UI.Text.maskable = true
UnityEngine.UI.Text.canvas = nil
UnityEngine.UI.Text.canvasRenderer = nil
UnityEngine.UI.Text.color = nil
UnityEngine.UI.Text.depth = 0
UnityEngine.UI.Text.raycastPadding = nil
UnityEngine.UI.Text.raycastTarget = true
UnityEngine.UI.Text.rectTransform = nil
UnityEngine.UI.Text.enabled = true
UnityEngine.UI.Text.isActiveAndEnabled = true
UnityEngine.UI.Text.gameObject = nil
UnityEngine.UI.Text.tag = ""
UnityEngine.UI.Text.transform = nil
UnityEngine.UI.Text.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.CalculateLayoutInputHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.CalculateLayoutInputVertical () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.FontTextureChanged () return end

---@param extents UnityEngine.Vector2: 
---@return UnityEngine.TextGenerationSettings
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetGenerationSettings (extents) return nil end

---@param anchor UnityEngine.TextAnchor: 
---@return UnityEngine.Vector2
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetTextAnchorPivot (anchor) return nil end -- static

---@param x UnityEngine.UI.Text: 
---@param y UnityEngine.UI.Text: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.Text: 
---@param y UnityEngine.UI.Text: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.op_Inequality (x, y) return true end -- static

---@param clipRect UnityEngine.Rect: 
---@param validRect System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.Cull (clipRect, validRect) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.RecalculateClipping () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.RecalculateMasking () return end

---@param clipRect UnityEngine.Rect: 
---@param validRect System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.SetClipRect (clipRect, validRect) return end

---@param clipSoftness UnityEngine.Vector2: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.SetClipSoftness (clipSoftness) return end

---@param alpha System.Single: 
---@param duration System.Single: 
---@param ignoreTimeScale System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.CrossFadeAlpha (alpha, duration, ignoreTimeScale) return end

---@param targetColor UnityEngine.Color: 
---@param duration System.Single: 
---@param ignoreTimeScale System.Boolean: 
---@param useAlpha System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.CrossFadeColor (targetColor, duration, ignoreTimeScale, useAlpha) return end

---@param targetColor UnityEngine.Color: 
---@param duration System.Single: 
---@param ignoreTimeScale System.Boolean: 
---@param useAlpha System.Boolean: 
---@param useRGB System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.CrossFadeColor (targetColor, duration, ignoreTimeScale, useAlpha, useRGB) return end

---@return UnityEngine.Rect
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetPixelAdjustedRect () return nil end

---@param point UnityEngine.Vector2: 
---@return UnityEngine.Vector2
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.PixelAdjustPoint (point) return nil end

---@param sp UnityEngine.Vector2: 
---@param eventCamera UnityEngine.Camera: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.Raycast (sp, eventCamera) return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.ToString () return "" end

---@param exists UnityEngine.UI.Text: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Text.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.BaseMeshEffect
--- FIXME: Wrapped UnityEngine.UI.BaseMeshEffect for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
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
UnityEngine.UI.BaseMeshEffect = {}
UnityEngine.UI.BaseMeshEffect.enabled = true
UnityEngine.UI.BaseMeshEffect.isActiveAndEnabled = true
UnityEngine.UI.BaseMeshEffect.gameObject = nil
UnityEngine.UI.BaseMeshEffect.tag = ""
UnityEngine.UI.BaseMeshEffect.transform = nil
UnityEngine.UI.BaseMeshEffect.name = ""

---@param mesh UnityEngine.Mesh: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.ModifyMesh (mesh) return end

---@param vh UnityEngine.UI.VertexHelper: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.ModifyMesh (vh) return end

---@param x UnityEngine.UI.BaseMeshEffect: 
---@param y UnityEngine.UI.BaseMeshEffect: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.BaseMeshEffect: 
---@param y UnityEngine.UI.BaseMeshEffect: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.op_Inequality (x, y) return true end -- static

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.ToString () return "" end

---@param exists UnityEngine.UI.BaseMeshEffect: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.BaseMeshEffect.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.Shadow
--- FIXME: Wrapped UnityEngine.UI.Shadow for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field effectColor UnityEngine.Color 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field effectDistance UnityEngine.Vector2 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useGraphicAlpha System.Boolean 
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
UnityEngine.UI.Shadow = {}
UnityEngine.UI.Shadow.effectColor = nil
UnityEngine.UI.Shadow.effectDistance = nil
UnityEngine.UI.Shadow.useGraphicAlpha = true
UnityEngine.UI.Shadow.enabled = true
UnityEngine.UI.Shadow.isActiveAndEnabled = true
UnityEngine.UI.Shadow.gameObject = nil
UnityEngine.UI.Shadow.tag = ""
UnityEngine.UI.Shadow.transform = nil
UnityEngine.UI.Shadow.name = ""

---@param vh UnityEngine.UI.VertexHelper: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.ModifyMesh (vh) return end

---@param x UnityEngine.UI.Shadow: 
---@param y UnityEngine.UI.Shadow: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.Shadow: 
---@param y UnityEngine.UI.Shadow: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.op_Inequality (x, y) return true end -- static

---@param mesh UnityEngine.Mesh: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.ModifyMesh (mesh) return end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.ToString () return "" end

---@param exists UnityEngine.UI.Shadow: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Shadow.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.Mask
--- FIXME: Wrapped UnityEngine.UI.Mask for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field graphic UnityEngine.UI.Graphic 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field rectTransform UnityEngine.RectTransform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field showMaskGraphic System.Boolean 
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
UnityEngine.UI.Mask = {}
UnityEngine.UI.Mask.graphic = nil
UnityEngine.UI.Mask.rectTransform = nil
UnityEngine.UI.Mask.showMaskGraphic = true
UnityEngine.UI.Mask.enabled = true
UnityEngine.UI.Mask.isActiveAndEnabled = true
UnityEngine.UI.Mask.gameObject = nil
UnityEngine.UI.Mask.tag = ""
UnityEngine.UI.Mask.transform = nil
UnityEngine.UI.Mask.name = ""

---@param baseMaterial UnityEngine.Material: 
---@return UnityEngine.Material
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.GetModifiedMaterial (baseMaterial) return nil end

---@param sp UnityEngine.Vector2: 
---@param eventCamera UnityEngine.Camera: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.IsRaycastLocationValid (sp, eventCamera) return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.MaskEnabled () return true end

---@param x UnityEngine.UI.Mask: 
---@param y UnityEngine.UI.Mask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.Mask: 
---@param y UnityEngine.UI.Mask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.op_Inequality (x, y) return true end -- static

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.ToString () return "" end

---@param exists UnityEngine.UI.Mask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Mask.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.Image
--- FIXME: Wrapped UnityEngine.UI.Image for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field alphaHitTestMinimumThreshold System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field defaultETC1GraphicMaterial UnityEngine.Material 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field fillAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fillCenter System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fillClockwise System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fillMethod UnityEngine.UI.Image.FillMethod 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fillOrigin System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flexibleHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field flexibleWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field hasBorder System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field layoutPriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field mainTexture UnityEngine.Texture 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field overrideSprite UnityEngine.Sprite 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field pixelsPerUnit System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field pixelsPerUnitMultiplier System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field preferredHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field preferredWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field preserveAspect System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field sprite UnityEngine.Sprite 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field type UnityEngine.UI.Image.Type 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useSpriteMesh System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isMaskingGraphic System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maskable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field canvas UnityEngine.Canvas 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field canvasRenderer UnityEngine.CanvasRenderer 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field color UnityEngine.Color 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field depth System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field raycastPadding UnityEngine.Vector4 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field raycastTarget System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field rectTransform UnityEngine.RectTransform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
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
UnityEngine.UI.Image = {}
UnityEngine.UI.Image.alphaHitTestMinimumThreshold = 0.0
UnityEngine.UI.Image.defaultETC1GraphicMaterial = nil
UnityEngine.UI.Image.fillAmount = 0.0
UnityEngine.UI.Image.fillCenter = true
UnityEngine.UI.Image.fillClockwise = true
UnityEngine.UI.Image.fillMethod = nil
UnityEngine.UI.Image.fillOrigin = 0
UnityEngine.UI.Image.flexibleHeight = 0.0
UnityEngine.UI.Image.flexibleWidth = 0.0
UnityEngine.UI.Image.hasBorder = true
UnityEngine.UI.Image.layoutPriority = 0
UnityEngine.UI.Image.mainTexture = nil
UnityEngine.UI.Image.minHeight = 0.0
UnityEngine.UI.Image.minWidth = 0.0
UnityEngine.UI.Image.overrideSprite = nil
UnityEngine.UI.Image.pixelsPerUnit = 0.0
UnityEngine.UI.Image.pixelsPerUnitMultiplier = 0.0
UnityEngine.UI.Image.preferredHeight = 0.0
UnityEngine.UI.Image.preferredWidth = 0.0
UnityEngine.UI.Image.preserveAspect = true
UnityEngine.UI.Image.sprite = nil
UnityEngine.UI.Image.type = nil
UnityEngine.UI.Image.useSpriteMesh = true
UnityEngine.UI.Image.isMaskingGraphic = true
UnityEngine.UI.Image.maskable = true
UnityEngine.UI.Image.canvas = nil
UnityEngine.UI.Image.canvasRenderer = nil
UnityEngine.UI.Image.color = nil
UnityEngine.UI.Image.depth = 0
UnityEngine.UI.Image.raycastPadding = nil
UnityEngine.UI.Image.raycastTarget = true
UnityEngine.UI.Image.rectTransform = nil
UnityEngine.UI.Image.enabled = true
UnityEngine.UI.Image.isActiveAndEnabled = true
UnityEngine.UI.Image.gameObject = nil
UnityEngine.UI.Image.tag = ""
UnityEngine.UI.Image.transform = nil
UnityEngine.UI.Image.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.CalculateLayoutInputHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.CalculateLayoutInputVertical () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.DisableSpriteOptimizations () return end

---@param screenPoint UnityEngine.Vector2: 
---@param eventCamera UnityEngine.Camera: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.IsRaycastLocationValid (screenPoint, eventCamera) return true end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.OnAfterDeserialize () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.OnBeforeSerialize () return end

---@param x UnityEngine.UI.Image: 
---@param y UnityEngine.UI.Image: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.Image: 
---@param y UnityEngine.UI.Image: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.op_Inequality (x, y) return true end -- static

---@param clipRect UnityEngine.Rect: 
---@param validRect System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.Cull (clipRect, validRect) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.RecalculateClipping () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.RecalculateMasking () return end

---@param clipRect UnityEngine.Rect: 
---@param validRect System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.SetClipRect (clipRect, validRect) return end

---@param clipSoftness UnityEngine.Vector2: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.SetClipSoftness (clipSoftness) return end

---@param alpha System.Single: 
---@param duration System.Single: 
---@param ignoreTimeScale System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.CrossFadeAlpha (alpha, duration, ignoreTimeScale) return end

---@param targetColor UnityEngine.Color: 
---@param duration System.Single: 
---@param ignoreTimeScale System.Boolean: 
---@param useAlpha System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.CrossFadeColor (targetColor, duration, ignoreTimeScale, useAlpha) return end

---@param targetColor UnityEngine.Color: 
---@param duration System.Single: 
---@param ignoreTimeScale System.Boolean: 
---@param useAlpha System.Boolean: 
---@param useRGB System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.CrossFadeColor (targetColor, duration, ignoreTimeScale, useAlpha, useRGB) return end

---@return UnityEngine.Rect
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.GetPixelAdjustedRect () return nil end

---@param point UnityEngine.Vector2: 
---@return UnityEngine.Vector2
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.PixelAdjustPoint (point) return nil end

---@param sp UnityEngine.Vector2: 
---@param eventCamera UnityEngine.Camera: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.Raycast (sp, eventCamera) return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.ToString () return "" end

---@param exists UnityEngine.UI.Image: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Image.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.Outline
--- FIXME: Wrapped UnityEngine.UI.Outline for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field effectColor UnityEngine.Color 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field effectDistance UnityEngine.Vector2 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useGraphicAlpha System.Boolean 
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
UnityEngine.UI.Outline = {}
UnityEngine.UI.Outline.effectColor = nil
UnityEngine.UI.Outline.effectDistance = nil
UnityEngine.UI.Outline.useGraphicAlpha = true
UnityEngine.UI.Outline.enabled = true
UnityEngine.UI.Outline.isActiveAndEnabled = true
UnityEngine.UI.Outline.gameObject = nil
UnityEngine.UI.Outline.tag = ""
UnityEngine.UI.Outline.transform = nil
UnityEngine.UI.Outline.name = ""

---@param vh UnityEngine.UI.VertexHelper: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.ModifyMesh (vh) return end

---@param x UnityEngine.UI.Outline: 
---@param y UnityEngine.UI.Outline: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.Outline: 
---@param y UnityEngine.UI.Outline: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.op_Inequality (x, y) return true end -- static

---@param mesh UnityEngine.Mesh: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.ModifyMesh (mesh) return end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.ToString () return "" end

---@param exists UnityEngine.UI.Outline: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Outline.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.LayoutElement
--- FIXME: Wrapped UnityEngine.UI.LayoutElement for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flexibleHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flexibleWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ignoreLayout System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field layoutPriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field preferredHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field preferredWidth System.Single 
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
UnityEngine.UI.LayoutElement = {}
UnityEngine.UI.LayoutElement.flexibleHeight = 0.0
UnityEngine.UI.LayoutElement.flexibleWidth = 0.0
UnityEngine.UI.LayoutElement.ignoreLayout = true
UnityEngine.UI.LayoutElement.layoutPriority = 0
UnityEngine.UI.LayoutElement.minHeight = 0.0
UnityEngine.UI.LayoutElement.minWidth = 0.0
UnityEngine.UI.LayoutElement.preferredHeight = 0.0
UnityEngine.UI.LayoutElement.preferredWidth = 0.0
UnityEngine.UI.LayoutElement.enabled = true
UnityEngine.UI.LayoutElement.isActiveAndEnabled = true
UnityEngine.UI.LayoutElement.gameObject = nil
UnityEngine.UI.LayoutElement.tag = ""
UnityEngine.UI.LayoutElement.transform = nil
UnityEngine.UI.LayoutElement.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.CalculateLayoutInputHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.CalculateLayoutInputVertical () return end

---@param x UnityEngine.UI.LayoutElement: 
---@param y UnityEngine.UI.LayoutElement: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.LayoutElement: 
---@param y UnityEngine.UI.LayoutElement: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.op_Inequality (x, y) return true end -- static

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.ToString () return "" end

---@param exists UnityEngine.UI.LayoutElement: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutElement.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.LayoutGroup
--- FIXME: Wrapped UnityEngine.UI.LayoutGroup for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childAlignment UnityEngine.TextAnchor 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flexibleHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field flexibleWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field layoutPriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field padding UnityEngine.RectOffset 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field preferredHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field preferredWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
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
UnityEngine.UI.LayoutGroup = {}
UnityEngine.UI.LayoutGroup.childAlignment = nil
UnityEngine.UI.LayoutGroup.flexibleHeight = 0.0
UnityEngine.UI.LayoutGroup.flexibleWidth = 0.0
UnityEngine.UI.LayoutGroup.layoutPriority = 0
UnityEngine.UI.LayoutGroup.minHeight = 0.0
UnityEngine.UI.LayoutGroup.minWidth = 0.0
UnityEngine.UI.LayoutGroup.padding = nil
UnityEngine.UI.LayoutGroup.preferredHeight = 0.0
UnityEngine.UI.LayoutGroup.preferredWidth = 0.0
UnityEngine.UI.LayoutGroup.enabled = true
UnityEngine.UI.LayoutGroup.isActiveAndEnabled = true
UnityEngine.UI.LayoutGroup.gameObject = nil
UnityEngine.UI.LayoutGroup.tag = ""
UnityEngine.UI.LayoutGroup.transform = nil
UnityEngine.UI.LayoutGroup.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.CalculateLayoutInputHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.CalculateLayoutInputVertical () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.SetLayoutHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.SetLayoutVertical () return end

---@param x UnityEngine.UI.LayoutGroup: 
---@param y UnityEngine.UI.LayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.LayoutGroup: 
---@param y UnityEngine.UI.LayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.op_Inequality (x, y) return true end -- static

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.ToString () return "" end

---@param exists UnityEngine.UI.LayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.LayoutGroup.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.GridLayoutGroup
--- FIXME: Wrapped UnityEngine.UI.GridLayoutGroup for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field cellSize UnityEngine.Vector2 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field constraint UnityEngine.UI.GridLayoutGroup.Constraint 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field constraintCount System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spacing UnityEngine.Vector2 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field startAxis UnityEngine.UI.GridLayoutGroup.Axis 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field startCorner UnityEngine.UI.GridLayoutGroup.Corner 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childAlignment UnityEngine.TextAnchor 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flexibleHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field flexibleWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field layoutPriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field padding UnityEngine.RectOffset 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field preferredHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field preferredWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
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
UnityEngine.UI.GridLayoutGroup = {}
UnityEngine.UI.GridLayoutGroup.cellSize = nil
UnityEngine.UI.GridLayoutGroup.constraint = nil
UnityEngine.UI.GridLayoutGroup.constraintCount = 0
UnityEngine.UI.GridLayoutGroup.spacing = nil
UnityEngine.UI.GridLayoutGroup.startAxis = nil
UnityEngine.UI.GridLayoutGroup.startCorner = nil
UnityEngine.UI.GridLayoutGroup.childAlignment = nil
UnityEngine.UI.GridLayoutGroup.flexibleHeight = 0.0
UnityEngine.UI.GridLayoutGroup.flexibleWidth = 0.0
UnityEngine.UI.GridLayoutGroup.layoutPriority = 0
UnityEngine.UI.GridLayoutGroup.minHeight = 0.0
UnityEngine.UI.GridLayoutGroup.minWidth = 0.0
UnityEngine.UI.GridLayoutGroup.padding = nil
UnityEngine.UI.GridLayoutGroup.preferredHeight = 0.0
UnityEngine.UI.GridLayoutGroup.preferredWidth = 0.0
UnityEngine.UI.GridLayoutGroup.enabled = true
UnityEngine.UI.GridLayoutGroup.isActiveAndEnabled = true
UnityEngine.UI.GridLayoutGroup.gameObject = nil
UnityEngine.UI.GridLayoutGroup.tag = ""
UnityEngine.UI.GridLayoutGroup.transform = nil
UnityEngine.UI.GridLayoutGroup.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.CalculateLayoutInputHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.CalculateLayoutInputVertical () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.SetLayoutHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.SetLayoutVertical () return end

---@param x UnityEngine.UI.GridLayoutGroup: 
---@param y UnityEngine.UI.GridLayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.GridLayoutGroup: 
---@param y UnityEngine.UI.GridLayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.op_Inequality (x, y) return true end -- static

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.ToString () return "" end

---@param exists UnityEngine.UI.GridLayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.GridLayoutGroup.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.HorizontalOrVerticalLayoutGroup
--- FIXME: Wrapped UnityEngine.UI.HorizontalOrVerticalLayoutGroup for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childControlHeight System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childControlWidth System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childForceExpandHeight System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childForceExpandWidth System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childScaleHeight System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childScaleWidth System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field reverseArrangement System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spacing System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childAlignment UnityEngine.TextAnchor 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flexibleHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field flexibleWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field layoutPriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field padding UnityEngine.RectOffset 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field preferredHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field preferredWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
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
UnityEngine.UI.HorizontalOrVerticalLayoutGroup = {}
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.childControlHeight = true
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.childControlWidth = true
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.childForceExpandHeight = true
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.childForceExpandWidth = true
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.childScaleHeight = true
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.childScaleWidth = true
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.reverseArrangement = true
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.spacing = 0.0
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.childAlignment = nil
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.flexibleHeight = 0.0
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.flexibleWidth = 0.0
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.layoutPriority = 0
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.minHeight = 0.0
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.minWidth = 0.0
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.padding = nil
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.preferredHeight = 0.0
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.preferredWidth = 0.0
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.enabled = true
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.isActiveAndEnabled = true
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.gameObject = nil
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.tag = ""
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.transform = nil
UnityEngine.UI.HorizontalOrVerticalLayoutGroup.name = ""

---@param x UnityEngine.UI.HorizontalOrVerticalLayoutGroup: 
---@param y UnityEngine.UI.HorizontalOrVerticalLayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.HorizontalOrVerticalLayoutGroup: 
---@param y UnityEngine.UI.HorizontalOrVerticalLayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.op_Inequality (x, y) return true end -- static

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.CalculateLayoutInputHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.CalculateLayoutInputVertical () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.SetLayoutHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.SetLayoutVertical () return end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.ToString () return "" end

---@param exists UnityEngine.UI.HorizontalOrVerticalLayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalOrVerticalLayoutGroup.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.HorizontalLayoutGroup
--- FIXME: Wrapped UnityEngine.UI.HorizontalLayoutGroup for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childControlHeight System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childControlWidth System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childForceExpandHeight System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childForceExpandWidth System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childScaleHeight System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childScaleWidth System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field reverseArrangement System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spacing System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childAlignment UnityEngine.TextAnchor 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flexibleHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field flexibleWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field layoutPriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field padding UnityEngine.RectOffset 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field preferredHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field preferredWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
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
UnityEngine.UI.HorizontalLayoutGroup = {}
UnityEngine.UI.HorizontalLayoutGroup.childControlHeight = true
UnityEngine.UI.HorizontalLayoutGroup.childControlWidth = true
UnityEngine.UI.HorizontalLayoutGroup.childForceExpandHeight = true
UnityEngine.UI.HorizontalLayoutGroup.childForceExpandWidth = true
UnityEngine.UI.HorizontalLayoutGroup.childScaleHeight = true
UnityEngine.UI.HorizontalLayoutGroup.childScaleWidth = true
UnityEngine.UI.HorizontalLayoutGroup.reverseArrangement = true
UnityEngine.UI.HorizontalLayoutGroup.spacing = 0.0
UnityEngine.UI.HorizontalLayoutGroup.childAlignment = nil
UnityEngine.UI.HorizontalLayoutGroup.flexibleHeight = 0.0
UnityEngine.UI.HorizontalLayoutGroup.flexibleWidth = 0.0
UnityEngine.UI.HorizontalLayoutGroup.layoutPriority = 0
UnityEngine.UI.HorizontalLayoutGroup.minHeight = 0.0
UnityEngine.UI.HorizontalLayoutGroup.minWidth = 0.0
UnityEngine.UI.HorizontalLayoutGroup.padding = nil
UnityEngine.UI.HorizontalLayoutGroup.preferredHeight = 0.0
UnityEngine.UI.HorizontalLayoutGroup.preferredWidth = 0.0
UnityEngine.UI.HorizontalLayoutGroup.enabled = true
UnityEngine.UI.HorizontalLayoutGroup.isActiveAndEnabled = true
UnityEngine.UI.HorizontalLayoutGroup.gameObject = nil
UnityEngine.UI.HorizontalLayoutGroup.tag = ""
UnityEngine.UI.HorizontalLayoutGroup.transform = nil
UnityEngine.UI.HorizontalLayoutGroup.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.CalculateLayoutInputHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.CalculateLayoutInputVertical () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.SetLayoutHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.SetLayoutVertical () return end

---@param x UnityEngine.UI.HorizontalLayoutGroup: 
---@param y UnityEngine.UI.HorizontalLayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.HorizontalLayoutGroup: 
---@param y UnityEngine.UI.HorizontalLayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.op_Inequality (x, y) return true end -- static

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.ToString () return "" end

---@param exists UnityEngine.UI.HorizontalLayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.HorizontalLayoutGroup.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.ToggleGroup
--- FIXME: Wrapped UnityEngine.UI.ToggleGroup for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field allowSwitchOff System.Boolean 
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
UnityEngine.UI.ToggleGroup = {}
UnityEngine.UI.ToggleGroup.allowSwitchOff = true
UnityEngine.UI.ToggleGroup.enabled = true
UnityEngine.UI.ToggleGroup.isActiveAndEnabled = true
UnityEngine.UI.ToggleGroup.gameObject = nil
UnityEngine.UI.ToggleGroup.tag = ""
UnityEngine.UI.ToggleGroup.transform = nil
UnityEngine.UI.ToggleGroup.name = ""

---@return System.Collections.Generic.IEnumerable<UnityEngine.UI.Toggle>
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.ActiveToggles () return nil end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.AnyTogglesOn () return true end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.EnsureValidState () return end

---@return UnityEngine.UI.Toggle
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.GetFirstActiveToggle () return nil end

---@param toggle UnityEngine.UI.Toggle: 
---@param sendCallback System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.NotifyToggleOn (toggle, sendCallback) return end

---@param toggle UnityEngine.UI.Toggle: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.RegisterToggle (toggle) return end

---@param sendCallback System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.SetAllTogglesOff (sendCallback) return end

---@param toggle UnityEngine.UI.Toggle: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.UnregisterToggle (toggle) return end

---@param x UnityEngine.UI.ToggleGroup: 
---@param y UnityEngine.UI.ToggleGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.ToggleGroup: 
---@param y UnityEngine.UI.ToggleGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.op_Inequality (x, y) return true end -- static

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.ToString () return "" end

---@param exists UnityEngine.UI.ToggleGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.ToggleGroup.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.VerticalLayoutGroup
--- FIXME: Wrapped UnityEngine.UI.VerticalLayoutGroup for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childControlHeight System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childControlWidth System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childForceExpandHeight System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childForceExpandWidth System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childScaleHeight System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childScaleWidth System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field reverseArrangement System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spacing System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field childAlignment UnityEngine.TextAnchor 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flexibleHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field flexibleWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field layoutPriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field padding UnityEngine.RectOffset 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field preferredHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field preferredWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
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
UnityEngine.UI.VerticalLayoutGroup = {}
UnityEngine.UI.VerticalLayoutGroup.childControlHeight = true
UnityEngine.UI.VerticalLayoutGroup.childControlWidth = true
UnityEngine.UI.VerticalLayoutGroup.childForceExpandHeight = true
UnityEngine.UI.VerticalLayoutGroup.childForceExpandWidth = true
UnityEngine.UI.VerticalLayoutGroup.childScaleHeight = true
UnityEngine.UI.VerticalLayoutGroup.childScaleWidth = true
UnityEngine.UI.VerticalLayoutGroup.reverseArrangement = true
UnityEngine.UI.VerticalLayoutGroup.spacing = 0.0
UnityEngine.UI.VerticalLayoutGroup.childAlignment = nil
UnityEngine.UI.VerticalLayoutGroup.flexibleHeight = 0.0
UnityEngine.UI.VerticalLayoutGroup.flexibleWidth = 0.0
UnityEngine.UI.VerticalLayoutGroup.layoutPriority = 0
UnityEngine.UI.VerticalLayoutGroup.minHeight = 0.0
UnityEngine.UI.VerticalLayoutGroup.minWidth = 0.0
UnityEngine.UI.VerticalLayoutGroup.padding = nil
UnityEngine.UI.VerticalLayoutGroup.preferredHeight = 0.0
UnityEngine.UI.VerticalLayoutGroup.preferredWidth = 0.0
UnityEngine.UI.VerticalLayoutGroup.enabled = true
UnityEngine.UI.VerticalLayoutGroup.isActiveAndEnabled = true
UnityEngine.UI.VerticalLayoutGroup.gameObject = nil
UnityEngine.UI.VerticalLayoutGroup.tag = ""
UnityEngine.UI.VerticalLayoutGroup.transform = nil
UnityEngine.UI.VerticalLayoutGroup.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.CalculateLayoutInputHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.CalculateLayoutInputVertical () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.SetLayoutHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.SetLayoutVertical () return end

---@param x UnityEngine.UI.VerticalLayoutGroup: 
---@param y UnityEngine.UI.VerticalLayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.VerticalLayoutGroup: 
---@param y UnityEngine.UI.VerticalLayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.op_Inequality (x, y) return true end -- static

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.IsActive () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.IsDestroyed () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.ToString () return "" end

---@param exists UnityEngine.UI.VerticalLayoutGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.VerticalLayoutGroup.op_Implicit (exists) return true end -- static

--- @class UnityEngine.UI.Selectable
--- FIXME: Wrapped UnityEngine.UI.Selectable for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field allSelectableCount System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field allSelectablesArray UnityEngine.UI.Selectable[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animationTriggers UnityEngine.UI.AnimationTriggers 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animator UnityEngine.Animator 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field colors UnityEngine.UI.ColorBlock 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field image UnityEngine.UI.Image 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field interactable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field navigation UnityEngine.UI.Navigation 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spriteState UnityEngine.UI.SpriteState 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetGraphic UnityEngine.UI.Graphic 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field transition UnityEngine.UI.Selectable.Transition 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
UnityEngine.UI.Selectable = {}
UnityEngine.UI.Selectable.allSelectableCount = 0
UnityEngine.UI.Selectable.allSelectablesArray = []
UnityEngine.UI.Selectable.animationTriggers = nil
UnityEngine.UI.Selectable.animator = nil
UnityEngine.UI.Selectable.colors = nil
UnityEngine.UI.Selectable.image = nil
UnityEngine.UI.Selectable.interactable = true
UnityEngine.UI.Selectable.navigation = nil
UnityEngine.UI.Selectable.spriteState = nil
UnityEngine.UI.Selectable.targetGraphic = nil
UnityEngine.UI.Selectable.transition = nil

---@param selectables UnityEngine.UI.Selectable[]: 
---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.AllSelectablesNoAlloc (selectables) return 0 end -- static

---@param dir UnityEngine.Vector3: 
---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.FindSelectable (dir) return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.FindSelectableOnDown () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.FindSelectableOnLeft () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.FindSelectableOnRight () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.FindSelectableOnUp () return nil end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.IsInteractable () return true end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.OnDeselect (eventData) return end

---@param eventData UnityEngine.EventSystems.AxisEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.OnMove (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.OnPointerDown (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.OnPointerEnter (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.OnPointerExit (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.OnPointerUp (eventData) return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.OnSelect (eventData) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.Select () return end

---@param x UnityEngine.UI.Selectable: 
---@param y UnityEngine.UI.Selectable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.Selectable: 
---@param y UnityEngine.UI.Selectable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Selectable.op_Inequality (x, y) return true end -- static

--- @class UnityEngine.UI.Button
--- FIXME: Wrapped UnityEngine.UI.Button for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onClick UnityEngine.UI.Button.ButtonClickedEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animationTriggers UnityEngine.UI.AnimationTriggers 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animator UnityEngine.Animator 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field colors UnityEngine.UI.ColorBlock 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field image UnityEngine.UI.Image 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field interactable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field navigation UnityEngine.UI.Navigation 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spriteState UnityEngine.UI.SpriteState 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetGraphic UnityEngine.UI.Graphic 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field transition UnityEngine.UI.Selectable.Transition 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
UnityEngine.UI.Button = {}
UnityEngine.UI.Button.onClick = nil
UnityEngine.UI.Button.animationTriggers = nil
UnityEngine.UI.Button.animator = nil
UnityEngine.UI.Button.colors = nil
UnityEngine.UI.Button.image = nil
UnityEngine.UI.Button.interactable = true
UnityEngine.UI.Button.navigation = nil
UnityEngine.UI.Button.spriteState = nil
UnityEngine.UI.Button.targetGraphic = nil
UnityEngine.UI.Button.transition = nil

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.OnPointerClick (eventData) return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.OnSubmit (eventData) return end

---@param x UnityEngine.UI.Button: 
---@param y UnityEngine.UI.Button: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.Button: 
---@param y UnityEngine.UI.Button: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.op_Inequality (x, y) return true end -- static

---@param dir UnityEngine.Vector3: 
---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.FindSelectable (dir) return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.FindSelectableOnDown () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.FindSelectableOnLeft () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.FindSelectableOnRight () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.FindSelectableOnUp () return nil end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.IsInteractable () return true end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.OnDeselect (eventData) return end

---@param eventData UnityEngine.EventSystems.AxisEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.OnMove (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.OnPointerDown (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.OnPointerEnter (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.OnPointerExit (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.OnPointerUp (eventData) return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.OnSelect (eventData) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Button.Select () return end

--- @class UnityEngine.UI.Dropdown
--- FIXME: Wrapped UnityEngine.UI.Dropdown for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field alphaFadeSpeed System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field captionImage UnityEngine.UI.Image 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field captionText UnityEngine.UI.Text 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field itemImage UnityEngine.UI.Image 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field itemText UnityEngine.UI.Text 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onValueChanged UnityEngine.UI.Dropdown.DropdownEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field options System.Collections.Generic.List<UnityEngine.UI.Dropdown.OptionData> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field template UnityEngine.RectTransform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field value System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animationTriggers UnityEngine.UI.AnimationTriggers 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animator UnityEngine.Animator 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field colors UnityEngine.UI.ColorBlock 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field image UnityEngine.UI.Image 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field interactable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field navigation UnityEngine.UI.Navigation 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spriteState UnityEngine.UI.SpriteState 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetGraphic UnityEngine.UI.Graphic 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field transition UnityEngine.UI.Selectable.Transition 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
UnityEngine.UI.Dropdown = {}
UnityEngine.UI.Dropdown.alphaFadeSpeed = 0.0
UnityEngine.UI.Dropdown.captionImage = nil
UnityEngine.UI.Dropdown.captionText = nil
UnityEngine.UI.Dropdown.itemImage = nil
UnityEngine.UI.Dropdown.itemText = nil
UnityEngine.UI.Dropdown.onValueChanged = nil
UnityEngine.UI.Dropdown.options = []
UnityEngine.UI.Dropdown.template = nil
UnityEngine.UI.Dropdown.value = 0
UnityEngine.UI.Dropdown.animationTriggers = nil
UnityEngine.UI.Dropdown.animator = nil
UnityEngine.UI.Dropdown.colors = nil
UnityEngine.UI.Dropdown.image = nil
UnityEngine.UI.Dropdown.interactable = true
UnityEngine.UI.Dropdown.navigation = nil
UnityEngine.UI.Dropdown.spriteState = nil
UnityEngine.UI.Dropdown.targetGraphic = nil
UnityEngine.UI.Dropdown.transition = nil

---@param options System.Collections.Generic.List<UnityEngine.UI.Dropdown.OptionData>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.AddOptions (options) return end

---@param options System.Collections.Generic.List<System.String>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.AddOptions (options) return end

---@param options System.Collections.Generic.List<UnityEngine.Sprite>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.AddOptions (options) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.ClearOptions () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.Hide () return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.OnCancel (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.OnPointerClick (eventData) return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.OnSubmit (eventData) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.RefreshShownValue () return end

---@param input System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.SetValueWithoutNotify (input) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.Show () return end

---@param x UnityEngine.UI.Dropdown: 
---@param y UnityEngine.UI.Dropdown: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.Dropdown: 
---@param y UnityEngine.UI.Dropdown: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.op_Inequality (x, y) return true end -- static

---@param dir UnityEngine.Vector3: 
---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.FindSelectable (dir) return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.FindSelectableOnDown () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.FindSelectableOnLeft () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.FindSelectableOnRight () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.FindSelectableOnUp () return nil end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.IsInteractable () return true end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.OnDeselect (eventData) return end

---@param eventData UnityEngine.EventSystems.AxisEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.OnMove (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.OnPointerDown (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.OnPointerEnter (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.OnPointerExit (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.OnPointerUp (eventData) return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.OnSelect (eventData) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Dropdown.Select () return end

--- @class UnityEngine.UI.Scrollbar
--- FIXME: Wrapped UnityEngine.UI.Scrollbar for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field direction UnityEngine.UI.Scrollbar.Direction 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field handleRect UnityEngine.RectTransform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field numberOfSteps System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onValueChanged UnityEngine.UI.Scrollbar.ScrollEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field size System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field value System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animationTriggers UnityEngine.UI.AnimationTriggers 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animator UnityEngine.Animator 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field colors UnityEngine.UI.ColorBlock 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field image UnityEngine.UI.Image 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field interactable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field navigation UnityEngine.UI.Navigation 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spriteState UnityEngine.UI.SpriteState 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetGraphic UnityEngine.UI.Graphic 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field transition UnityEngine.UI.Selectable.Transition 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
UnityEngine.UI.Scrollbar = {}
UnityEngine.UI.Scrollbar.direction = nil
UnityEngine.UI.Scrollbar.handleRect = nil
UnityEngine.UI.Scrollbar.numberOfSteps = 0
UnityEngine.UI.Scrollbar.onValueChanged = nil
UnityEngine.UI.Scrollbar.size = 0.0
UnityEngine.UI.Scrollbar.value = 0.0
UnityEngine.UI.Scrollbar.animationTriggers = nil
UnityEngine.UI.Scrollbar.animator = nil
UnityEngine.UI.Scrollbar.colors = nil
UnityEngine.UI.Scrollbar.image = nil
UnityEngine.UI.Scrollbar.interactable = true
UnityEngine.UI.Scrollbar.navigation = nil
UnityEngine.UI.Scrollbar.spriteState = nil
UnityEngine.UI.Scrollbar.targetGraphic = nil
UnityEngine.UI.Scrollbar.transition = nil

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.FindSelectableOnDown () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.FindSelectableOnLeft () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.FindSelectableOnRight () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.FindSelectableOnUp () return nil end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.GraphicUpdateComplete () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.LayoutComplete () return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.OnBeginDrag (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.OnDrag (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.OnInitializePotentialDrag (eventData) return end

---@param eventData UnityEngine.EventSystems.AxisEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.OnMove (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.OnPointerDown (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.OnPointerUp (eventData) return end

---@param executing UnityEngine.UI.CanvasUpdate: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.Rebuild (executing) return end

---@param direction UnityEngine.UI.Scrollbar.Direction: 
---@param includeRectLayouts System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.SetDirection (direction, includeRectLayouts) return end

---@param input System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.SetValueWithoutNotify (input) return end

---@param x UnityEngine.UI.Scrollbar: 
---@param y UnityEngine.UI.Scrollbar: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.Scrollbar: 
---@param y UnityEngine.UI.Scrollbar: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.op_Inequality (x, y) return true end -- static

---@param dir UnityEngine.Vector3: 
---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.FindSelectable (dir) return nil end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.IsInteractable () return true end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.OnDeselect (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.OnPointerEnter (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.OnPointerExit (eventData) return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.OnSelect (eventData) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Scrollbar.Select () return end

--- @class UnityEngine.UI.Slider
--- FIXME: Wrapped UnityEngine.UI.Slider for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field direction UnityEngine.UI.Slider.Direction 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fillRect UnityEngine.RectTransform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field handleRect UnityEngine.RectTransform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field normalizedValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onValueChanged UnityEngine.UI.Slider.SliderEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field value System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field wholeNumbers System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animationTriggers UnityEngine.UI.AnimationTriggers 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animator UnityEngine.Animator 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field colors UnityEngine.UI.ColorBlock 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field image UnityEngine.UI.Image 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field interactable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field navigation UnityEngine.UI.Navigation 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spriteState UnityEngine.UI.SpriteState 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetGraphic UnityEngine.UI.Graphic 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field transition UnityEngine.UI.Selectable.Transition 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
UnityEngine.UI.Slider = {}
UnityEngine.UI.Slider.direction = nil
UnityEngine.UI.Slider.fillRect = nil
UnityEngine.UI.Slider.handleRect = nil
UnityEngine.UI.Slider.maxValue = 0.0
UnityEngine.UI.Slider.minValue = 0.0
UnityEngine.UI.Slider.normalizedValue = 0.0
UnityEngine.UI.Slider.onValueChanged = nil
UnityEngine.UI.Slider.value = 0.0
UnityEngine.UI.Slider.wholeNumbers = true
UnityEngine.UI.Slider.animationTriggers = nil
UnityEngine.UI.Slider.animator = nil
UnityEngine.UI.Slider.colors = nil
UnityEngine.UI.Slider.image = nil
UnityEngine.UI.Slider.interactable = true
UnityEngine.UI.Slider.navigation = nil
UnityEngine.UI.Slider.spriteState = nil
UnityEngine.UI.Slider.targetGraphic = nil
UnityEngine.UI.Slider.transition = nil

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.FindSelectableOnDown () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.FindSelectableOnLeft () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.FindSelectableOnRight () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.FindSelectableOnUp () return nil end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.GraphicUpdateComplete () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.LayoutComplete () return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.OnDrag (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.OnInitializePotentialDrag (eventData) return end

---@param eventData UnityEngine.EventSystems.AxisEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.OnMove (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.OnPointerDown (eventData) return end

---@param executing UnityEngine.UI.CanvasUpdate: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.Rebuild (executing) return end

---@param direction UnityEngine.UI.Slider.Direction: 
---@param includeRectLayouts System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.SetDirection (direction, includeRectLayouts) return end

---@param input System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.SetValueWithoutNotify (input) return end

---@param x UnityEngine.UI.Slider: 
---@param y UnityEngine.UI.Slider: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.Slider: 
---@param y UnityEngine.UI.Slider: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.op_Inequality (x, y) return true end -- static

---@param dir UnityEngine.Vector3: 
---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.FindSelectable (dir) return nil end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.IsInteractable () return true end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.OnDeselect (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.OnPointerEnter (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.OnPointerExit (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.OnPointerUp (eventData) return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.OnSelect (eventData) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Slider.Select () return end

--- @class UnityEngine.UI.Toggle
--- FIXME: Wrapped UnityEngine.UI.Toggle for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field graphic UnityEngine.UI.Graphic 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field group UnityEngine.UI.ToggleGroup 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isOn System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onValueChanged UnityEngine.UI.Toggle.ToggleEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field toggleTransition UnityEngine.UI.Toggle.ToggleTransition 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animationTriggers UnityEngine.UI.AnimationTriggers 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animator UnityEngine.Animator 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field colors UnityEngine.UI.ColorBlock 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field image UnityEngine.UI.Image 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field interactable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field navigation UnityEngine.UI.Navigation 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spriteState UnityEngine.UI.SpriteState 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetGraphic UnityEngine.UI.Graphic 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field transition UnityEngine.UI.Selectable.Transition 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
UnityEngine.UI.Toggle = {}
UnityEngine.UI.Toggle.graphic = nil
UnityEngine.UI.Toggle.group = nil
UnityEngine.UI.Toggle.isOn = true
UnityEngine.UI.Toggle.onValueChanged = nil
UnityEngine.UI.Toggle.toggleTransition = nil
UnityEngine.UI.Toggle.animationTriggers = nil
UnityEngine.UI.Toggle.animator = nil
UnityEngine.UI.Toggle.colors = nil
UnityEngine.UI.Toggle.image = nil
UnityEngine.UI.Toggle.interactable = true
UnityEngine.UI.Toggle.navigation = nil
UnityEngine.UI.Toggle.spriteState = nil
UnityEngine.UI.Toggle.targetGraphic = nil
UnityEngine.UI.Toggle.transition = nil

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.GraphicUpdateComplete () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.LayoutComplete () return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.OnPointerClick (eventData) return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.OnSubmit (eventData) return end

---@param executing UnityEngine.UI.CanvasUpdate: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.Rebuild (executing) return end

---@param value System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.SetIsOnWithoutNotify (value) return end

---@param x UnityEngine.UI.Toggle: 
---@param y UnityEngine.UI.Toggle: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.Toggle: 
---@param y UnityEngine.UI.Toggle: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.op_Inequality (x, y) return true end -- static

---@param dir UnityEngine.Vector3: 
---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.FindSelectable (dir) return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.FindSelectableOnDown () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.FindSelectableOnLeft () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.FindSelectableOnRight () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.FindSelectableOnUp () return nil end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.IsInteractable () return true end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.OnDeselect (eventData) return end

---@param eventData UnityEngine.EventSystems.AxisEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.OnMove (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.OnPointerDown (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.OnPointerEnter (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.OnPointerExit (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.OnPointerUp (eventData) return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.OnSelect (eventData) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.Toggle.Select () return end

--- @class UnityEngine.UI.InputField
--- FIXME: Wrapped UnityEngine.UI.InputField for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field asteriskChar System.Char 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field caretBlinkRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field caretColor UnityEngine.Color 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field caretPosition System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field caretWidth System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field characterLimit System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field characterValidation UnityEngine.UI.InputField.CharacterValidation 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field contentType UnityEngine.UI.InputField.ContentType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field customCaretColor System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field flexibleHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field flexibleWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field inputType UnityEngine.UI.InputField.InputType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isFocused System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field keyboardType UnityEngine.TouchScreenKeyboardType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field layoutPriority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field lineType UnityEngine.UI.InputField.LineType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field minWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field multiLine System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field onEndEdit UnityEngine.UI.InputField.EndEditEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onSubmit UnityEngine.UI.InputField.SubmitEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onValidateInput UnityEngine.UI.InputField.OnValidateInput 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onValueChanged UnityEngine.UI.InputField.OnChangeEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field placeholder UnityEngine.UI.Graphic 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field preferredHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field preferredWidth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field readOnly System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field selectionAnchorPosition System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field selectionColor UnityEngine.Color 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field selectionFocusPosition System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shouldActivateOnSelect System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shouldHideMobileInput System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field text System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field textComponent UnityEngine.UI.Text 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field touchScreenKeyboard UnityEngine.TouchScreenKeyboard 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field wasCanceled System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animationTriggers UnityEngine.UI.AnimationTriggers 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animator UnityEngine.Animator 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field colors UnityEngine.UI.ColorBlock 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field image UnityEngine.UI.Image 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field interactable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field navigation UnityEngine.UI.Navigation 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spriteState UnityEngine.UI.SpriteState 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetGraphic UnityEngine.UI.Graphic 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field transition UnityEngine.UI.Selectable.Transition 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
UnityEngine.UI.InputField = {}
UnityEngine.UI.InputField.asteriskChar = nil
UnityEngine.UI.InputField.caretBlinkRate = 0.0
UnityEngine.UI.InputField.caretColor = nil
UnityEngine.UI.InputField.caretPosition = 0
UnityEngine.UI.InputField.caretWidth = 0
UnityEngine.UI.InputField.characterLimit = 0
UnityEngine.UI.InputField.characterValidation = nil
UnityEngine.UI.InputField.contentType = nil
UnityEngine.UI.InputField.customCaretColor = true
UnityEngine.UI.InputField.flexibleHeight = 0.0
UnityEngine.UI.InputField.flexibleWidth = 0.0
UnityEngine.UI.InputField.inputType = nil
UnityEngine.UI.InputField.isFocused = true
UnityEngine.UI.InputField.keyboardType = nil
UnityEngine.UI.InputField.layoutPriority = 0
UnityEngine.UI.InputField.lineType = nil
UnityEngine.UI.InputField.minHeight = 0.0
UnityEngine.UI.InputField.minWidth = 0.0
UnityEngine.UI.InputField.multiLine = true
UnityEngine.UI.InputField.onEndEdit = nil
UnityEngine.UI.InputField.onSubmit = nil
UnityEngine.UI.InputField.onValidateInput = nil
UnityEngine.UI.InputField.onValueChanged = nil
UnityEngine.UI.InputField.placeholder = nil
UnityEngine.UI.InputField.preferredHeight = 0.0
UnityEngine.UI.InputField.preferredWidth = 0.0
UnityEngine.UI.InputField.readOnly = true
UnityEngine.UI.InputField.selectionAnchorPosition = 0
UnityEngine.UI.InputField.selectionColor = nil
UnityEngine.UI.InputField.selectionFocusPosition = 0
UnityEngine.UI.InputField.shouldActivateOnSelect = true
UnityEngine.UI.InputField.shouldHideMobileInput = true
UnityEngine.UI.InputField.text = ""
UnityEngine.UI.InputField.textComponent = nil
UnityEngine.UI.InputField.touchScreenKeyboard = nil
UnityEngine.UI.InputField.wasCanceled = true
UnityEngine.UI.InputField.animationTriggers = nil
UnityEngine.UI.InputField.animator = nil
UnityEngine.UI.InputField.colors = nil
UnityEngine.UI.InputField.image = nil
UnityEngine.UI.InputField.interactable = true
UnityEngine.UI.InputField.navigation = nil
UnityEngine.UI.InputField.spriteState = nil
UnityEngine.UI.InputField.targetGraphic = nil
UnityEngine.UI.InputField.transition = nil

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.ActivateInputField () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.CalculateLayoutInputHorizontal () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.CalculateLayoutInputVertical () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.DeactivateInputField () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.ForceLabelUpdate () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.GraphicUpdateComplete () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.LayoutComplete () return end

---@param shift System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.MoveTextEnd (shift) return end

---@param shift System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.MoveTextStart (shift) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.OnBeginDrag (eventData) return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.OnDeselect (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.OnDrag (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.OnEndDrag (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.OnPointerClick (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.OnPointerDown (eventData) return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.OnSelect (eventData) return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.OnSubmit (eventData) return end

---@param eventData UnityEngine.EventSystems.BaseEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.OnUpdateSelected (eventData) return end

---@param e UnityEngine.Event: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.ProcessEvent (e) return end

---@param update UnityEngine.UI.CanvasUpdate: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.Rebuild (update) return end

---@param input System.String: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.SetTextWithoutNotify (input) return end

---@param x UnityEngine.UI.InputField: 
---@param y UnityEngine.UI.InputField: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.op_Equality (x, y) return true end -- static

---@param x UnityEngine.UI.InputField: 
---@param y UnityEngine.UI.InputField: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.op_Inequality (x, y) return true end -- static

---@param dir UnityEngine.Vector3: 
---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.FindSelectable (dir) return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.FindSelectableOnDown () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.FindSelectableOnLeft () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.FindSelectableOnRight () return nil end

---@return UnityEngine.UI.Selectable
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.FindSelectableOnUp () return nil end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.IsInteractable () return true end

---@param eventData UnityEngine.EventSystems.AxisEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.OnMove (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.OnPointerEnter (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.OnPointerExit (eventData) return end

---@param eventData UnityEngine.EventSystems.PointerEventData: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.OnPointerUp (eventData) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function UnityEngine.UI.InputField.Select () return end
return UnityEngine.UI
