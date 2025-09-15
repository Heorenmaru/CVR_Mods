---@meta
-- AUTOMATICALLY GENERATED, DO NOT EDIT BY HAND
local CVR = {}
CVR.CCK = {}

--- FIXME: Wrapped ABI.CCK.Components.AnimatorDriver+AnimatorType for Lua and WASM
---@enum CVR.CCK.AnimatorType
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.AnimatorType = {}
CVR.CCK.AnimatorType.LocalAvatar = 0
CVR.CCK.AnimatorType.RemoteAvatar = 1
CVR.CCK.AnimatorType.Spawnable = 2
CVR.CCK.AnimatorType.MiscAnimator = 3

--- FIXME: Wrapped ABI.CCK.Components.BodyControlTask+BodyMask for Lua and WASM
---@enum CVR.CCK.BodyMask
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.BodyMask = {}
CVR.CCK.BodyMask.Head = 0
CVR.CCK.BodyMask.Pelvis = 1
CVR.CCK.BodyMask.LeftArm = 2
CVR.CCK.BodyMask.RightArm = 3
CVR.CCK.BodyMask.LeftLeg = 4
CVR.CCK.BodyMask.RightLeg = 5
CVR.CCK.BodyMask.Locomotion = 6

--- FIXME: Wrapped ABI.CCK.Components.CVRAdvancedAvatarSettingsTrigger+SampleDirection for Lua and WASM
---@enum CVR.CCK.SampleDirection
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.SampleDirection = {}
CVR.CCK.SampleDirection.XPositive = 0
CVR.CCK.SampleDirection.XNegative = 1
CVR.CCK.SampleDirection.YPositive = 2
CVR.CCK.SampleDirection.YNegative = 3
CVR.CCK.SampleDirection.ZPositive = 4
CVR.CCK.SampleDirection.ZNegative = 5

--- FIXME: Wrapped ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerTaskStay+UpdateMethod for Lua and WASM
---@enum CVR.CCK.UpdateMethod
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.UpdateMethod = {}
CVR.CCK.UpdateMethod.SetFromPosition = 1
CVR.CCK.UpdateMethod.Add = 2
CVR.CCK.UpdateMethod.Subtract = 3
CVR.CCK.UpdateMethod.SetFromDistance = 4
CVR.CCK.UpdateMethod.SetFromPointer = 5

--- FIXME: Wrapped ABI.CCK.Components.CVRAudioMaterialParser+AudioDataType for Lua and WASM
---@enum CVR.CCK.AudioDataType
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.AudioDataType = {}
CVR.CCK.AudioDataType.OutputData = 0
CVR.CCK.AudioDataType.SpectrumData = 1

--- FIXME: Wrapped ABI.CCK.Components.CombatSystem+RespawnBehavior for Lua and WASM
---@enum CVR.CCK.RespawnBehavior
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.RespawnBehavior = {}
CVR.CCK.RespawnBehavior.RespawnOnWorld = 0
CVR.CCK.RespawnBehavior.RespawnOnPoint = 1
CVR.CCK.RespawnBehavior.RespawnInPlace = 2
CVR.CCK.RespawnBehavior.None = 3

--- FIXME: Wrapped ABI.CCK.Components.CVRMaterialDriverTask+Type for Lua and WASM
---@enum CVR.CCK.Type
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.Type = {}
CVR.CCK.Type.Float = 0
CVR.CCK.Type.Vector4 = 1
CVR.CCK.Type.Color = 2

--- FIXME: Wrapped ABI.CCK.Components.CVRObjectSyncTask+TaskType for Lua and WASM
---@enum CVR.CCK.TaskType
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.TaskType = {}
CVR.CCK.TaskType.Position = 1
CVR.CCK.TaskType.Rotation = 2
CVR.CCK.TaskType.ActivityState = 3
CVR.CCK.TaskType.PickupOwner = 4
CVR.CCK.TaskType.AnimatorParameter = 5
CVR.CCK.TaskType.AnimatorAnimationProgress = 6
CVR.CCK.TaskType.VariableBufferValue = 7

--- FIXME: Wrapped ABI.CCK.Components.CVRParameterStream+ReferenceType for Lua and WASM
---@enum CVR.CCK.ReferenceType
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.ReferenceType = {}
CVR.CCK.ReferenceType.World = 0
CVR.CCK.ReferenceType.Avatar = 1
CVR.CCK.ReferenceType.Spawnable = 2

--- FIXME: Wrapped ABI.CCK.Components.CVRPickupObject+GripType for Lua and WASM
---@enum CVR.CCK.GripType
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.GripType = {}
CVR.CCK.GripType.Free = 1
CVR.CCK.GripType.Origin = 2

--- FIXME: Wrapped ABI.CCK.Components.CVRSpawnable+PropPrivacy for Lua and WASM
---@enum CVR.CCK.PropPrivacy
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.PropPrivacy = {}
CVR.CCK.PropPrivacy.everyone = 1
CVR.CCK.PropPrivacy.owner = 2

--- FIXME: Wrapped ABI.CCK.Components.CVRSpawnable+SpawnableType for Lua and WASM
---@enum CVR.CCK.SpawnableType
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.SpawnableType = {}
CVR.CCK.SpawnableType.StandaloneSpawnable = 0
CVR.CCK.SpawnableType.WorldSpawnable = 1

--- FIXME: Wrapped ABI.CCK.Components.CVRAssetInfo+AssetType for Lua and WASM
---@enum CVR.CCK.AssetType
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.AssetType = {}
CVR.CCK.AssetType.Avatar = 1
CVR.CCK.AssetType.World = 2
CVR.CCK.AssetType.Spawnable = 3

--- FIXME: Wrapped ABI.CCK.Components.CVRAttachment+AttachmentType for Lua and WASM
---@enum CVR.CCK.AttachmentType
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.AttachmentType = {}
CVR.CCK.AttachmentType.Bone = 1
CVR.CCK.AttachmentType.Tracker = 2
CVR.CCK.AttachmentType.SnappingPoint = 4

--- FIXME: Wrapped ABI.CCK.Components.CVRAttachment+BoneType for Lua and WASM
---@enum CVR.CCK.BoneType
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.BoneType = {}
CVR.CCK.BoneType.Hips = 1
CVR.CCK.BoneType.Spine = 2
CVR.CCK.BoneType.Chest = 4
CVR.CCK.BoneType.UpperChest = 8
CVR.CCK.BoneType.Neck = 16
CVR.CCK.BoneType.Head = 32
CVR.CCK.BoneType.LeftUpperLeg = 64
CVR.CCK.BoneType.LeftLowerLeg = 128
CVR.CCK.BoneType.LeftFoot = 256
CVR.CCK.BoneType.RightUpperLeg = 512
CVR.CCK.BoneType.RightLowerLeg = 1024
CVR.CCK.BoneType.RightFoot = 2048
CVR.CCK.BoneType.LeftShoulder = 4096
CVR.CCK.BoneType.LeftArm = 8192
CVR.CCK.BoneType.LeftForearm = 16384
CVR.CCK.BoneType.LeftHand = 32768
CVR.CCK.BoneType.RightShoulder = 65536
CVR.CCK.BoneType.RightArm = 131072
CVR.CCK.BoneType.RightForearm = 262144
CVR.CCK.BoneType.RightHand = 524288
CVR.CCK.BoneType.Root = 1048576

--- FIXME: Wrapped ABI.CCK.Components.CVRAttachment+TrackerType for Lua and WASM
---@enum CVR.CCK.TrackerType
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.TrackerType = {}
CVR.CCK.TrackerType.MainCamera = 1
CVR.CCK.TrackerType.RightHand = 2
CVR.CCK.TrackerType.LeftHand = 4
CVR.CCK.TrackerType.AdditionalTracker = 8

--- FIXME: Wrapped ABI.CCK.Components.CVRAvatar+CVRAvatarVoiceParent for Lua and WASM
---@enum CVR.CCK.CVRAvatarVoiceParent
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.CVRAvatarVoiceParent = {}
CVR.CCK.CVRAvatarVoiceParent.Head = 0
CVR.CCK.CVRAvatarVoiceParent.LeftHand = 2
CVR.CCK.CVRAvatarVoiceParent.RightHand = 3
CVR.CCK.CVRAvatarVoiceParent.Hips = 4

--- FIXME: Wrapped ABI.CCK.Components.CVRAvatar+CVRAvatarVisemeMode for Lua and WASM
---@enum CVR.CCK.CVRAvatarVisemeMode
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.CVRAvatarVisemeMode = {}
CVR.CCK.CVRAvatarVisemeMode.Visemes = 0
CVR.CCK.CVRAvatarVisemeMode.SingleBlendshape = 1
CVR.CCK.CVRAvatarVisemeMode.JawBone = 2

--- FIXME: Wrapped ABI.CCK.Components.CVRAvatarAdvancedTaggingEntry+Tags for Lua and WASM
---@enum CVR.CCK.Tags
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.Tags = {}
CVR.CCK.Tags.LoudAudio = 1
CVR.CCK.Tags.LongRangeAudio = 2
CVR.CCK.Tags.ScreenFx = 4
CVR.CCK.Tags.FlashingColors = 8
CVR.CCK.Tags.FlashingLights = 16
CVR.CCK.Tags.Violence = 32
CVR.CCK.Tags.Gore = 64
CVR.CCK.Tags.Suggestive = 128
CVR.CCK.Tags.Nudity = 256
CVR.CCK.Tags.Horror = 512

--- FIXME: Wrapped ABI.CCK.Components.CVRInteractableAction+ActionRegister for Lua and WASM
---@enum CVR.CCK.ActionRegister
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.ActionRegister = {}
CVR.CCK.ActionRegister.OnPickupGrab = 1
CVR.CCK.ActionRegister.OnPickupDrop = 2
CVR.CCK.ActionRegister.OnInteractDown = 3
CVR.CCK.ActionRegister.OnInteractUp = 4
CVR.CCK.ActionRegister.OnTriggerEnter = 5
CVR.CCK.ActionRegister.OnTriggerExit = 6
CVR.CCK.ActionRegister.OnColliderEnter = 7
CVR.CCK.ActionRegister.OnColliderExit = 8
CVR.CCK.ActionRegister.OnEnable = 9
CVR.CCK.ActionRegister.OnDisable = 10
CVR.CCK.ActionRegister.OnTimer = 11
CVR.CCK.ActionRegister.OnParticleHit = 12
CVR.CCK.ActionRegister.OnVariableBufferUpdate = 13
CVR.CCK.ActionRegister.OnVariableBufferComparision = 14
CVR.CCK.ActionRegister.OnCron = 15
CVR.CCK.ActionRegister.OnPointerEnter = 16
CVR.CCK.ActionRegister.OnWorldTrigger = 17
CVR.CCK.ActionRegister.OnCustomTrigger = 18
CVR.CCK.ActionRegister.OnInputDown = 19
CVR.CCK.ActionRegister.OnInputUp = 20
CVR.CCK.ActionRegister.OnAPFTrigger = 21
CVR.CCK.ActionRegister.OnAPFBoolChange = 22
CVR.CCK.ActionRegister.OnAPFIntChange = 23
CVR.CCK.ActionRegister.OnAPFFloatChange = 24
CVR.CCK.ActionRegister.OnHoverEnter = 25
CVR.CCK.ActionRegister.OnHoverExit = 26
CVR.CCK.ActionRegister.OnAPFStringChange = 27
CVR.CCK.ActionRegister.OnPointerExit = 28
CVR.CCK.ActionRegister.OnPlayerTriggerEnter = 29
CVR.CCK.ActionRegister.OnPlayerTriggerExit = 30
CVR.CCK.ActionRegister.OnPlayerColliderEnter = 31
CVR.CCK.ActionRegister.OnPlayerColliderExit = 32
CVR.CCK.ActionRegister.OnBecameVisible = 33
CVR.CCK.ActionRegister.OnBecameInvisible = 34
CVR.CCK.ActionRegister.OnStateMachineEnter = 35
CVR.CCK.ActionRegister.OnStateMachineExit = 36
CVR.CCK.ActionRegister.OnPickupUseDown = 37
CVR.CCK.ActionRegister.OnPickupUseUp = 38

--- FIXME: Wrapped ABI.CCK.Components.CVRInteractableAction+ExecutionType for Lua and WASM
---@enum CVR.CCK.ExecutionType
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.ExecutionType = {}
CVR.CCK.ExecutionType.LocalNotNetworked = 1
CVR.CCK.ExecutionType.GlobalNetworked = 2
CVR.CCK.ExecutionType.GlobalInstanceOwnerOnly = 3
CVR.CCK.ExecutionType.GlobalNetworkedBuffered = 4
CVR.CCK.ExecutionType.GlobalInstanceOwnerOnlyBuffered = 5
CVR.CCK.ExecutionType.GlobalNetworkedAllInstanceModerators = 6
CVR.CCK.ExecutionType.GlobalNetworkedAllInstanceModeratorsBuffered = 7

--- FIXME: Wrapped ABI.CCK.Components.CVRInteractableAction+InteractionFilter for Lua and WASM
---@enum CVR.CCK.InteractionFilter
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.InteractionFilter = {}
CVR.CCK.InteractionFilter.Global = 0
CVR.CCK.InteractionFilter.Looking = 1
CVR.CCK.InteractionFilter.Attached = 2
CVR.CCK.InteractionFilter.Held = 3
CVR.CCK.InteractionFilter.Sitting = 4

--- FIXME: Wrapped ABI.CCK.Components.CVRInteractableAction+InteractionInput for Lua and WASM
---@enum CVR.CCK.InteractionInput
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.InteractionInput = {}
CVR.CCK.InteractionInput.Alpha0 = 48
CVR.CCK.InteractionInput.Alpha1 = 49
CVR.CCK.InteractionInput.Alpha2 = 50
CVR.CCK.InteractionInput.Alpha3 = 51
CVR.CCK.InteractionInput.Alpha4 = 52
CVR.CCK.InteractionInput.Alpha5 = 53
CVR.CCK.InteractionInput.Alpha6 = 54
CVR.CCK.InteractionInput.Alpha7 = 55
CVR.CCK.InteractionInput.Alpha8 = 56
CVR.CCK.InteractionInput.Alpha9 = 57
CVR.CCK.InteractionInput.A = 97
CVR.CCK.InteractionInput.B = 98
CVR.CCK.InteractionInput.C = 99
CVR.CCK.InteractionInput.D = 100
CVR.CCK.InteractionInput.E = 101
CVR.CCK.InteractionInput.F = 102
CVR.CCK.InteractionInput.G = 103
CVR.CCK.InteractionInput.H = 104
CVR.CCK.InteractionInput.I = 105
CVR.CCK.InteractionInput.J = 106
CVR.CCK.InteractionInput.K = 107
CVR.CCK.InteractionInput.L = 108
CVR.CCK.InteractionInput.M = 109
CVR.CCK.InteractionInput.N = 110
CVR.CCK.InteractionInput.O = 111
CVR.CCK.InteractionInput.P = 112
CVR.CCK.InteractionInput.Q = 113
CVR.CCK.InteractionInput.R = 114
CVR.CCK.InteractionInput.S = 115
CVR.CCK.InteractionInput.T = 116
CVR.CCK.InteractionInput.U = 117
CVR.CCK.InteractionInput.V = 118
CVR.CCK.InteractionInput.W = 119
CVR.CCK.InteractionInput.X = 120
CVR.CCK.InteractionInput.Y = 121
CVR.CCK.InteractionInput.Z = 122
CVR.CCK.InteractionInput.InputHorizontalNegative = 10000
CVR.CCK.InteractionInput.InputHorizontalPositive = 10001
CVR.CCK.InteractionInput.InputVerticalNegative = 10002
CVR.CCK.InteractionInput.InputVerticalPositive = 10003
CVR.CCK.InteractionInput.InputJump = 10004
CVR.CCK.InteractionInput.InputAccelerate = 10005
CVR.CCK.InteractionInput.InputBrake = 10006
CVR.CCK.InteractionInput.InputLeftClick = 10007
CVR.CCK.InteractionInput.InputRightClick = 10008

--- FIXME: Wrapped ABI.CCK.Components.CVRInteractableAction+InteractionInputModifier for Lua and WASM
---@enum CVR.CCK.InteractionInputModifier
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.InteractionInputModifier = {}
CVR.CCK.InteractionInputModifier.LeftCtrl = 1
CVR.CCK.InteractionInputModifier.LeftShift = 2
CVR.CCK.InteractionInputModifier.LeftAlt = 4
CVR.CCK.InteractionInputModifier.RightCtrl = 8
CVR.CCK.InteractionInputModifier.RightShift = 16
CVR.CCK.InteractionInputModifier.RightAlt = 32

--- FIXME: Wrapped ABI.CCK.Components.CVRInteractableActionOperation+ActionType for Lua and WASM
---@enum CVR.CCK.ActionType
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.ActionType = {}
CVR.CCK.ActionType.SetGameObjectActive = 1
CVR.CCK.ActionType.SetComponentActive = 2
CVR.CCK.ActionType.SetAnimatorFloatValue = 3
CVR.CCK.ActionType.SetAnimatorBoolValue = 4
CVR.CCK.ActionType.SpawnObject = 5
CVR.CCK.ActionType.TeleportPlayer = 6
CVR.CCK.ActionType.TeleportObject = 7
CVR.CCK.ActionType.ToggleAnimatorBoolValue = 8
CVR.CCK.ActionType.SetAnimatorFloatRandom = 9
CVR.CCK.ActionType.SetAnimatorBoolRandom = 10
CVR.CCK.ActionType.SetAnimatorFloatByVar = 11
CVR.CCK.ActionType.VariableBufferArithmetic = 12
CVR.CCK.ActionType.DisplayWorldDetailPage = 13
CVR.CCK.ActionType.DisplayInstanceDetailPage = 14
CVR.CCK.ActionType.DisplayAvatarDetailPage = 15
CVR.CCK.ActionType.SitAtPosition = 16
CVR.CCK.ActionType.SetAnimatorIntValue = 17
CVR.CCK.ActionType.TriggerAnimatorTrigger = 18
CVR.CCK.ActionType.SetAnimatorIntRandom = 19
CVR.CCK.ActionType.SetAnimatorIntByVar = 20
CVR.CCK.ActionType.MethodCall = 21
CVR.CCK.ActionType.SetSpawnableValue = 22
CVR.CCK.ActionType.PlayAudio = 23
CVR.CCK.ActionType.StopAudio = 24
CVR.CCK.ActionType.SetAnimatorBoolByAPF = 25
CVR.CCK.ActionType.SetAnimatorIntByAPF = 26
CVR.CCK.ActionType.SetAnimatorFloatByAPF = 27
CVR.CCK.ActionType.SetVariableBufferByAPF = 28
CVR.CCK.ActionType.UpdateAPFTrigger = 29
CVR.CCK.ActionType.UpdateAPFBool = 30
CVR.CCK.ActionType.UpdateAPFInt = 31
CVR.CCK.ActionType.UpdateAPFFloat = 32
CVR.CCK.ActionType.UpdateAPFString = 33
CVR.CCK.ActionType.SetPropertyByApf = 34
CVR.CCK.ActionType.SetPropertyByValue = 35
CVR.CCK.ActionType.DeleteGameObject = 36
CVR.CCK.ActionType.DisplaySpawnableDetailPage = 37
CVR.CCK.ActionType.LuaFunctionCall = 38

--- FIXME: Wrapped ABI_RC.VideoPlayer.Scripts.VideoPlayerUtils+ControlPermission for Lua and WASM
---@enum CVR.CCK.ControlPermission
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.ControlPermission = {}
CVR.CCK.ControlPermission.Everyone = 0
CVR.CCK.ControlPermission.InstanceOwner = 1
CVR.CCK.ControlPermission.InstanceModerators = 2

--- FIXME: Wrapped ABI_RC.VideoPlayer.Scripts.VideoPlayerUtils+PlayerState for Lua and WASM
---@enum CVR.CCK.PlayerState
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
CVR.CCK.PlayerState = {}
CVR.CCK.PlayerState.NotPlaying = 0
CVR.CCK.PlayerState.Playing = 1
CVR.CCK.PlayerState.Paused = 2
CVR.CCK.PlayerState.Buffering = 3
CVR.CCK.PlayerState.Seeking = 4
CVR.CCK.PlayerState.Finished = 5

--- @class CVR.CCK.Health
--- Wrapped Health for Lua and Wasm
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorBaseAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorMaxAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorRegenerationCap System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorRegenerationDelay System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorRegenerationRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorRegenerationTimer System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field controlMode ABI.CCK.Scripts.Health.ControlMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field currentArmor System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field currentHealth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field currentShield System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field damageReceivedEvent UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthBaseAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthMaxAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthRegenerationCap System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthRegenerationDelay System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthRegenerationRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthRegenerationTimer System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isDown System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field RecentHits System.Collections.Generic.List<ABI.CCK.Components.Data.DamageHit> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field referenceID System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldBaseAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldMaxAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldRegenerationCap System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldRegenerationDelay System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldRegenerationRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldRegenerationTimer System.Single 
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
CVR.CCK.Health = {}
CVR.CCK.Health.armorBaseAmount = 0.0
CVR.CCK.Health.armorMaxAmount = 0.0
CVR.CCK.Health.armorRegenerationCap = 0.0
CVR.CCK.Health.armorRegenerationDelay = 0.0
CVR.CCK.Health.armorRegenerationRate = 0.0
CVR.CCK.Health.armorRegenerationTimer = 0.0
CVR.CCK.Health.controlMode = nil
CVR.CCK.Health.currentArmor = 0.0
CVR.CCK.Health.currentHealth = 0.0
CVR.CCK.Health.currentShield = 0.0
CVR.CCK.Health.damageReceivedEvent = nil
CVR.CCK.Health.healthBaseAmount = 0.0
CVR.CCK.Health.healthMaxAmount = 0.0
CVR.CCK.Health.healthRegenerationCap = 0.0
CVR.CCK.Health.healthRegenerationDelay = 0.0
CVR.CCK.Health.healthRegenerationRate = 0.0
CVR.CCK.Health.healthRegenerationTimer = 0.0
CVR.CCK.Health.isDown = true
CVR.CCK.Health.RecentHits = []
CVR.CCK.Health.referenceID = ""
CVR.CCK.Health.shieldBaseAmount = 0.0
CVR.CCK.Health.shieldMaxAmount = 0.0
CVR.CCK.Health.shieldRegenerationCap = 0.0
CVR.CCK.Health.shieldRegenerationDelay = 0.0
CVR.CCK.Health.shieldRegenerationRate = 0.0
CVR.CCK.Health.shieldRegenerationTimer = 0.0
CVR.CCK.Health.enabled = true
CVR.CCK.Health.isActiveAndEnabled = true
CVR.CCK.Health.gameObject = nil
CVR.CCK.Health.tag = ""
CVR.CCK.Health.transform = nil
CVR.CCK.Health.name = ""

---@param other UnityEngine.GameObject: 
---@param position UnityEngine.Vector3: 
---@param hitPosition System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.ApplyDamageFromLocation (other, position, hitPosition) return end

---@param damage ABI.CCK.Components.Damage: 
---@param location System.Nullable<UnityEngine.Vector3>: 
---@param hitPosition System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.DealDamage (damage, location, hitPosition) return end

---@param damage ABI.CCK.Components.Damage: 
---@param amount System.Single: 
---@param location System.Nullable<UnityEngine.Vector3>: 
---@param hitPosition System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.DealDamage (damage, amount, location, hitPosition) return end

---@param amount System.Single: 
---@param damageType ABI.CCK.Components.Damage.DamageType: 
---@param healthMultiplier System.Single: 
---@param armorMultiplier System.Single: 
---@param shieldMultiplier System.Single: 
---@param playerID System.String: 
---@param location System.Nullable<UnityEngine.Vector3>: 
---@param enableFalloff System.Boolean: 
---@param falloffDistance System.Single: 
---@param falloffCurve UnityEngine.AnimationCurve: 
---@param hitPosition System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.DealDamage (amount, damageType, healthMultiplier, armorMultiplier, shieldMultiplier, playerID, location, enableFalloff, falloffDistance, falloffCurve, hitPosition) return end

---@param amount System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.DealDamageManually (amount) return end

---@param damage ABI.CCK.Components.Damage: 
---@param position System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.DealDamageOverTime (damage, position) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.Down () return end

---@param playerID System.String: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.Down (playerID) return end

---@param other UnityEngine.GameObject: 
---@param particleCollisionEvents System.Collections.Generic.List<UnityEngine.ParticleCollisionEvent>: 
---@param particleSystem UnityEngine.ParticleSystem: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.OnParticleCollisionEv (other, particleCollisionEvents, particleSystem) return end

---@param offset System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.ResetDamageTimers (offset) return end

---@param x ABI.CCK.Scripts.Health: 
---@param y ABI.CCK.Scripts.Health: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Scripts.Health: 
---@param y ABI.CCK.Scripts.Health: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.ToString () return "" end

---@param exists ABI.CCK.Scripts.Health: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Health.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.AnimatorDriver
--- FIXME: Wrapped ABI.CCK.Components.AnimatorDriver for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animatorType ABI.CCK.Components.AnimatorDriver.AnimatorType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field EnterTasks System.Collections.Generic.List<ABI.CCK.Components.AnimatorDriverTask> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ExitTasks System.Collections.Generic.List<ABI.CCK.Components.AnimatorDriverTask> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field localOnly System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field playerSetup ABI_RC.Core.Player.PlayerSetup 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field puppetMaster ABI_RC.Core.Player.PuppetMaster 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spawnable ABI.CCK.Components.CVRSpawnable 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field name System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
CVR.CCK.AnimatorDriver = {}
CVR.CCK.AnimatorDriver.animatorType = nil
CVR.CCK.AnimatorDriver.EnterTasks = []
CVR.CCK.AnimatorDriver.ExitTasks = []
CVR.CCK.AnimatorDriver.localOnly = true
CVR.CCK.AnimatorDriver.playerSetup = nil
CVR.CCK.AnimatorDriver.puppetMaster = nil
CVR.CCK.AnimatorDriver.spawnable = nil
CVR.CCK.AnimatorDriver.name = ""

---@param x ABI.CCK.Components.AnimatorDriver: 
---@param y ABI.CCK.Components.AnimatorDriver: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.AnimatorDriver.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.AnimatorDriver: 
---@param y ABI.CCK.Components.AnimatorDriver: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.AnimatorDriver.op_Inequality (x, y) return true end -- static

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.AnimatorDriver.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.AnimatorDriver.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.AnimatorDriver.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.AnimatorDriver.ToString () return "" end

---@param exists ABI.CCK.Components.AnimatorDriver: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.AnimatorDriver.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.AnimatorDriverTask
--- FIXME: Wrapped ABI.CCK.Components.AnimatorDriverTask for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field aMax System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field aName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field aParamType ABI.CCK.Components.AnimatorDriverTask.ParameterType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field aType ABI.CCK.Components.AnimatorDriverTask.SourceType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field aValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field bMax System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field bName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field bParamType ABI.CCK.Components.AnimatorDriverTask.ParameterType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field bType ABI.CCK.Components.AnimatorDriverTask.SourceType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field bValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field op ABI.CCK.Components.AnimatorDriverTask.Operator 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetType ABI.CCK.Components.AnimatorDriverTask.ParameterType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.AnimatorDriverTask = {}
CVR.CCK.AnimatorDriverTask.aMax = 0.0
CVR.CCK.AnimatorDriverTask.aName = ""
CVR.CCK.AnimatorDriverTask.aParamType = nil
CVR.CCK.AnimatorDriverTask.aType = nil
CVR.CCK.AnimatorDriverTask.aValue = 0.0
CVR.CCK.AnimatorDriverTask.bMax = 0.0
CVR.CCK.AnimatorDriverTask.bName = ""
CVR.CCK.AnimatorDriverTask.bParamType = nil
CVR.CCK.AnimatorDriverTask.bType = nil
CVR.CCK.AnimatorDriverTask.bValue = 0.0
CVR.CCK.AnimatorDriverTask.op = nil
CVR.CCK.AnimatorDriverTask.targetName = ""
CVR.CCK.AnimatorDriverTask.targetType = nil

---@param animator UnityEngine.Animator: 
---@param driver ABI.CCK.Components.AnimatorDriver: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.AnimatorDriverTask.Execute (animator, driver) return end

---@param x ABI.CCK.Components.AnimatorDriverTask: 
---@param y ABI.CCK.Components.AnimatorDriverTask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.AnimatorDriverTask.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.AnimatorDriverTask: 
---@param y ABI.CCK.Components.AnimatorDriverTask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.AnimatorDriverTask.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.BodyControl
--- FIXME: Wrapped ABI.CCK.Components.BodyControl for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field EnterTasks System.Collections.Generic.List<ABI.CCK.Components.BodyControlTask> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ExitTasks System.Collections.Generic.List<ABI.CCK.Components.BodyControlTask> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field name System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
CVR.CCK.BodyControl = {}
CVR.CCK.BodyControl.EnterTasks = []
CVR.CCK.BodyControl.ExitTasks = []
CVR.CCK.BodyControl.name = ""

---@param x ABI.CCK.Components.BodyControl: 
---@param y ABI.CCK.Components.BodyControl: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.BodyControl.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.BodyControl: 
---@param y ABI.CCK.Components.BodyControl: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.BodyControl.op_Inequality (x, y) return true end -- static

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.BodyControl.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.BodyControl.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.BodyControl.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.BodyControl.ToString () return "" end

---@param exists ABI.CCK.Components.BodyControl: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.BodyControl.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.BodyControlTask
--- FIXME: Wrapped ABI.CCK.Components.BodyControlTask for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isBlend System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field target ABI.CCK.Components.BodyControlTask.BodyMask 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetWeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field transitionDuration System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.BodyControlTask = {}
CVR.CCK.BodyControlTask.isBlend = true
CVR.CCK.BodyControlTask.target = nil
CVR.CCK.BodyControlTask.targetWeight = 0.0
CVR.CCK.BodyControlTask.transitionDuration = 0.0

---@param animator UnityEngine.Animator: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.BodyControlTask.Execute (animator) return end

---@param x ABI.CCK.Components.BodyControlTask: 
---@param y ABI.CCK.Components.BodyControlTask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.BodyControlTask.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.BodyControlTask: 
---@param y ABI.CCK.Components.BodyControlTask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.BodyControlTask.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.CombatSystem
--- Wrapped CombatSystem for Lua and Wasm
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field DefaultDeathAnimation UnityEngine.AnimationClip 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field downedAnotherPlayerEvent UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field friendlyFire System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field hitAnotherPlayerEvent UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Instance ABI.CCK.Components.CombatSystem 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field playerDownedEvent UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field playerDownEvent UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field playerGotHitEvent UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field playerHitEvent UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field playerRespawnEvent UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field playerRevitalizeEvent UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field respawnBehavior ABI.CCK.Components.CombatSystem.RespawnBehavior 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field respawnPoint UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field respawnTime System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorBaseAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorMaxAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorRegenerationCap System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorRegenerationDelay System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorRegenerationRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorRegenerationTimer System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field controlMode ABI.CCK.Scripts.Health.ControlMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field currentArmor System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field currentHealth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field currentShield System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field damageReceivedEvent UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthBaseAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthMaxAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthRegenerationCap System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthRegenerationDelay System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthRegenerationRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthRegenerationTimer System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isDown System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field RecentHits System.Collections.Generic.List<ABI.CCK.Components.Data.DamageHit> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field referenceID System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldBaseAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldMaxAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldRegenerationCap System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldRegenerationDelay System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldRegenerationRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldRegenerationTimer System.Single 
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
CVR.CCK.CombatSystem = {}
CVR.CCK.CombatSystem.DefaultDeathAnimation = nil
CVR.CCK.CombatSystem.downedAnotherPlayerEvent = nil
CVR.CCK.CombatSystem.friendlyFire = true
CVR.CCK.CombatSystem.hitAnotherPlayerEvent = nil
CVR.CCK.CombatSystem.Instance = nil
CVR.CCK.CombatSystem.playerDownedEvent = nil
CVR.CCK.CombatSystem.playerDownEvent = nil
CVR.CCK.CombatSystem.playerGotHitEvent = nil
CVR.CCK.CombatSystem.playerHitEvent = nil
CVR.CCK.CombatSystem.playerRespawnEvent = nil
CVR.CCK.CombatSystem.playerRevitalizeEvent = nil
CVR.CCK.CombatSystem.respawnBehavior = nil
CVR.CCK.CombatSystem.respawnPoint = nil
CVR.CCK.CombatSystem.respawnTime = 0.0
CVR.CCK.CombatSystem.armorBaseAmount = 0.0
CVR.CCK.CombatSystem.armorMaxAmount = 0.0
CVR.CCK.CombatSystem.armorRegenerationCap = 0.0
CVR.CCK.CombatSystem.armorRegenerationDelay = 0.0
CVR.CCK.CombatSystem.armorRegenerationRate = 0.0
CVR.CCK.CombatSystem.armorRegenerationTimer = 0.0
CVR.CCK.CombatSystem.controlMode = nil
CVR.CCK.CombatSystem.currentArmor = 0.0
CVR.CCK.CombatSystem.currentHealth = 0.0
CVR.CCK.CombatSystem.currentShield = 0.0
CVR.CCK.CombatSystem.damageReceivedEvent = nil
CVR.CCK.CombatSystem.healthBaseAmount = 0.0
CVR.CCK.CombatSystem.healthMaxAmount = 0.0
CVR.CCK.CombatSystem.healthRegenerationCap = 0.0
CVR.CCK.CombatSystem.healthRegenerationDelay = 0.0
CVR.CCK.CombatSystem.healthRegenerationRate = 0.0
CVR.CCK.CombatSystem.healthRegenerationTimer = 0.0
CVR.CCK.CombatSystem.isDown = true
CVR.CCK.CombatSystem.RecentHits = []
CVR.CCK.CombatSystem.referenceID = ""
CVR.CCK.CombatSystem.shieldBaseAmount = 0.0
CVR.CCK.CombatSystem.shieldMaxAmount = 0.0
CVR.CCK.CombatSystem.shieldRegenerationCap = 0.0
CVR.CCK.CombatSystem.shieldRegenerationDelay = 0.0
CVR.CCK.CombatSystem.shieldRegenerationRate = 0.0
CVR.CCK.CombatSystem.shieldRegenerationTimer = 0.0
CVR.CCK.CombatSystem.enabled = true
CVR.CCK.CombatSystem.isActiveAndEnabled = true
CVR.CCK.CombatSystem.gameObject = nil
CVR.CCK.CombatSystem.tag = ""
CVR.CCK.CombatSystem.transform = nil
CVR.CCK.CombatSystem.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.Down () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.RespawnIfNecessary () return end

---@param x ABI.CCK.Components.CombatSystem: 
---@param y ABI.CCK.Components.CombatSystem: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CombatSystem: 
---@param y ABI.CCK.Components.CombatSystem: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.op_Inequality (x, y) return true end -- static

---@param other UnityEngine.GameObject: 
---@param position UnityEngine.Vector3: 
---@param hitPosition System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.ApplyDamageFromLocation (other, position, hitPosition) return end

---@param damage ABI.CCK.Components.Damage: 
---@param location System.Nullable<UnityEngine.Vector3>: 
---@param hitPosition System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.DealDamage (damage, location, hitPosition) return end

---@param damage ABI.CCK.Components.Damage: 
---@param amount System.Single: 
---@param location System.Nullable<UnityEngine.Vector3>: 
---@param hitPosition System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.DealDamage (damage, amount, location, hitPosition) return end

---@param amount System.Single: 
---@param damageType ABI.CCK.Components.Damage.DamageType: 
---@param healthMultiplier System.Single: 
---@param armorMultiplier System.Single: 
---@param shieldMultiplier System.Single: 
---@param playerID System.String: 
---@param location System.Nullable<UnityEngine.Vector3>: 
---@param enableFalloff System.Boolean: 
---@param falloffDistance System.Single: 
---@param falloffCurve UnityEngine.AnimationCurve: 
---@param hitPosition System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.DealDamage (amount, damageType, healthMultiplier, armorMultiplier, shieldMultiplier, playerID, location, enableFalloff, falloffDistance, falloffCurve, hitPosition) return end

---@param amount System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.DealDamageManually (amount) return end

---@param damage ABI.CCK.Components.Damage: 
---@param position System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.DealDamageOverTime (damage, position) return end

---@param playerID System.String: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.Down (playerID) return end

---@param other UnityEngine.GameObject: 
---@param particleCollisionEvents System.Collections.Generic.List<UnityEngine.ParticleCollisionEvent>: 
---@param particleSystem UnityEngine.ParticleSystem: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.OnParticleCollisionEv (other, particleCollisionEvents, particleSystem) return end

---@param offset System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.ResetDamageTimers (offset) return end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.ToString () return "" end

---@param exists ABI.CCK.Components.CombatSystem: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CombatSystem.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.ControlPoint
--- Wrapped ControlPoint for Lua and Wasm
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field captureBonusForMultiplePeople System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field captureTime System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gameInstanceController ABI.CCK.Components.GameInstanceController 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field recaptureDelay System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field referenceID System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field scorePerSecond System.Int32 
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
CVR.CCK.ControlPoint = {}
CVR.CCK.ControlPoint.captureBonusForMultiplePeople = true
CVR.CCK.ControlPoint.captureTime = 0.0
CVR.CCK.ControlPoint.gameInstanceController = nil
CVR.CCK.ControlPoint.recaptureDelay = 0.0
CVR.CCK.ControlPoint.referenceID = ""
CVR.CCK.ControlPoint.scorePerSecond = 0
CVR.CCK.ControlPoint.enabled = true
CVR.CCK.ControlPoint.isActiveAndEnabled = true
CVR.CCK.ControlPoint.gameObject = nil
CVR.CCK.ControlPoint.tag = ""
CVR.CCK.ControlPoint.transform = nil
CVR.CCK.ControlPoint.name = ""

---@param x ABI.CCK.Components.ControlPoint: 
---@param y ABI.CCK.Components.ControlPoint: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.ControlPoint: 
---@param y ABI.CCK.Components.ControlPoint: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.ToString () return "" end

---@param exists ABI.CCK.Components.ControlPoint: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ControlPoint.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRAction
--- Wrapped CVRAction for Lua and Wasm
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field actionName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field actionObjects UnityEngine.GameObject[] 
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
CVR.CCK.CVRAction = {}
CVR.CCK.CVRAction.actionName = ""
CVR.CCK.CVRAction.actionObjects = []
CVR.CCK.CVRAction.enabled = true
CVR.CCK.CVRAction.isActiveAndEnabled = true
CVR.CCK.CVRAction.gameObject = nil
CVR.CCK.CVRAction.tag = ""
CVR.CCK.CVRAction.transform = nil
CVR.CCK.CVRAction.name = ""

---@param x ABI.CCK.Components.CVRAction: 
---@param y ABI.CCK.Components.CVRAction: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRAction: 
---@param y ABI.CCK.Components.CVRAction: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.ToString () return "" end

---@param exists ABI.CCK.Components.CVRAction: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAction.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRAdvancedAvatarSettingsTrigger
--- FIXME: Wrapped ABI.CCK.Components.CVRAdvancedAvatarSettingsTrigger for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field allowedPointer System.Collections.Generic.List<ABI.CCK.Components.CVRPointer> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field allowedTypes System.String[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field allowParticleInteraction System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field areaOffset UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field areaSize UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field enterTasks System.Collections.Generic.List<ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerTask> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field exitTasks System.Collections.Generic.List<ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerTask> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isLocalInteractable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isNetworkInteractable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field sampleDirection ABI.CCK.Components.CVRAdvancedAvatarSettingsTrigger.SampleDirection 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field settingName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field settingValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field stayTasks System.Collections.Generic.List<ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerTaskStay> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useAdvancedTrigger System.Boolean 
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
CVR.CCK.CVRAdvancedAvatarSettingsTrigger = {}
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.allowedPointer = []
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.allowedTypes = []
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.allowParticleInteraction = true
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.areaOffset = nil
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.areaSize = nil
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.enterTasks = []
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.exitTasks = []
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.isLocalInteractable = true
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.isNetworkInteractable = true
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.sampleDirection = nil
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.settingName = ""
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.settingValue = 0.0
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.stayTasks = []
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.useAdvancedTrigger = true
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.enabled = true
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.isActiveAndEnabled = true
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.gameObject = nil
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.tag = ""
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.transform = nil
CVR.CCK.CVRAdvancedAvatarSettingsTrigger.name = ""

---Constructor for CVR.CCK.CVRAdvancedAvatarSettingsTrigger
---@return CVR.CCK.CVRAdvancedAvatarSettingsTrigger
function CVR.CCK.NewCVRAdvancedAvatarSettingsTrigger() end

---@param pointer ABI.CCK.Components.CVRPointer: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.EnterTrigger (pointer) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.EnterTrigger () return end

---@param pointer ABI.CCK.Components.CVRPointer: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.EnterTriggerParticle (pointer) return end

---@param pointer ABI.CCK.Components.CVRPointer: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.ExitTrigger (pointer) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.ExitTrigger () return end

---@param pointer ABI.CCK.Components.CVRPointer: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.ExitTriggerParticle (pointer) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.StayTrigger () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.Trigger () return end

---@param x ABI.CCK.Components.CVRAdvancedAvatarSettingsTrigger: 
---@param y ABI.CCK.Components.CVRAdvancedAvatarSettingsTrigger: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRAdvancedAvatarSettingsTrigger: 
---@param y ABI.CCK.Components.CVRAdvancedAvatarSettingsTrigger: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.ToString () return "" end

---@param exists ABI.CCK.Components.CVRAdvancedAvatarSettingsTrigger: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTrigger.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper
--- FIXME: Wrapped ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerHelper for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field triggers System.Collections.Generic.List<ABI.CCK.Components.CVRAdvancedAvatarSettingsTrigger> 
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
CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper = {}
CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.triggers = []
CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.enabled = true
CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.isActiveAndEnabled = true
CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.gameObject = nil
CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.tag = ""
CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.transform = nil
CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.name = ""

---Constructor for CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper
---@return CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper
function CVR.CCK.NewCVRAdvancedAvatarSettingsTriggerHelper() end

---@param i System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.onEnter (i) return end

---@param i System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.onExit (i) return end

---@param i System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.onStay (i) return end

---@param x ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerHelper: 
---@param y ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerHelper: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerHelper: 
---@param y ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerHelper: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.ToString () return "" end

---@param exists ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerHelper: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerHelper.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask
--- FIXME: Wrapped ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerTask for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field delay System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field holdTime System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PointerTimers System.Collections.Concurrent.ConcurrentDictionary<ABI.CCK.Components.CVRPointer, System.Single> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field settingName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field settingValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field updateMethod ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerTask.UpdateMethod 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask = {}
CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.delay = 0.0
CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.holdTime = 0.0
CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.PointerTimers = nil
CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.settingName = ""
CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.settingValue = 0.0
CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.updateMethod = nil

---Constructor for CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask
---@return CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask
function CVR.CCK.NewCVRAdvancedAvatarSettingsTriggerTask() end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.ClearSchedulerJob () return end

---@param pointer ABI.CCK.Components.CVRPointer: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.ExecuteTrigger (pointer) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.Trigger () return end

---@param pointer ABI.CCK.Components.CVRPointer: 
---@param exit System.Boolean: 
---@param time System.Single: 
---@param isExitTrigger System.Boolean: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.Trigger (pointer, exit, time, isExitTrigger) return true end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.TriggerDelayed () return end

---@param deltaTime System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.Update (deltaTime) return end

---@param x ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerTask: 
---@param y ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerTask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerTask: 
---@param y ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerTask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsTriggerTask.ToString () return "" end

--- @class CVR.CCK.CVRAdvancedAvatarSettingsTriggerTaskStay
--- FIXME: Wrapped ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerTaskStay for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field settingName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field updateMethod ABI.CCK.Components.CVRAdvancedAvatarSettingsTriggerTaskStay.UpdateMethod 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.CVRAdvancedAvatarSettingsTriggerTaskStay = {}
CVR.CCK.CVRAdvancedAvatarSettingsTriggerTaskStay.maxValue = 0.0
CVR.CCK.CVRAdvancedAvatarSettingsTriggerTaskStay.minValue = 0.0
CVR.CCK.CVRAdvancedAvatarSettingsTriggerTaskStay.settingName = ""
CVR.CCK.CVRAdvancedAvatarSettingsTriggerTaskStay.updateMethod = nil

---Constructor for CVR.CCK.CVRAdvancedAvatarSettingsTriggerTaskStay
---@return CVR.CCK.CVRAdvancedAvatarSettingsTriggerTaskStay
function CVR.CCK.NewCVRAdvancedAvatarSettingsTriggerTaskStay() end

--- @class CVR.CCK.CVRAnimatorDriver
--- FIXME: Wrapped ABI.CCK.Components.CVRAnimatorDriver for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animatorParameter01 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter02 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter03 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter04 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter05 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter06 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter07 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter08 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter09 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter10 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter11 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter12 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter13 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter14 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter15 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameter16 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field animatorParameters System.Collections.Generic.List<System.String> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animatorParameterType System.Collections.Generic.List<System.Int32> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animators System.Collections.Generic.List<UnityEngine.Animator> 
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
CVR.CCK.CVRAnimatorDriver = {}
CVR.CCK.CVRAnimatorDriver.animatorParameter01 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter02 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter03 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter04 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter05 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter06 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter07 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter08 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter09 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter10 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter11 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter12 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter13 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter14 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter15 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameter16 = 0.0
CVR.CCK.CVRAnimatorDriver.animatorParameters = []
CVR.CCK.CVRAnimatorDriver.animatorParameterType = []
CVR.CCK.CVRAnimatorDriver.animators = []
CVR.CCK.CVRAnimatorDriver.enabled = true
CVR.CCK.CVRAnimatorDriver.isActiveAndEnabled = true
CVR.CCK.CVRAnimatorDriver.gameObject = nil
CVR.CCK.CVRAnimatorDriver.tag = ""
CVR.CCK.CVRAnimatorDriver.transform = nil
CVR.CCK.CVRAnimatorDriver.name = ""

---Constructor for CVR.CCK.CVRAnimatorDriver
---@return CVR.CCK.CVRAnimatorDriver
function CVR.CCK.NewCVRAnimatorDriver() end

---@param x ABI.CCK.Components.CVRAnimatorDriver: 
---@param y ABI.CCK.Components.CVRAnimatorDriver: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRAnimatorDriver: 
---@param y ABI.CCK.Components.CVRAnimatorDriver: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.ToString () return "" end

---@param exists ABI.CCK.Components.CVRAnimatorDriver: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAnimatorDriver.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRAudioMaterialParser
--- FIXME: Wrapped ABI.CCK.Components.CVRAudioMaterialParser for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field audioDataType ABI.CCK.Components.CVRAudioMaterialParser.AudioDataType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field distanceParameterName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field dopplerParameterName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field fragmentParameterNameL1 System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field fragmentParameterNameL2 System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field fragmentParameterNameL3 System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field fragmentParameterNameL4 System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field fragmentParameterNameR1 System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field fragmentParameterNameR2 System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field fragmentParameterNameR3 System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field fragmentParameterNameR4 System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field fragmentSize System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field pitchParameterName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field processingMaterial UnityEngine.Material 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field sourceAudio UnityEngine.AudioSource 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field sourceAudioL UnityEngine.AudioSource 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field sourceAudioR UnityEngine.AudioSource 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spatialParameterName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field useSeparateAudioSources System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field volumeParameterName System.String 
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
CVR.CCK.CVRAudioMaterialParser = {}
CVR.CCK.CVRAudioMaterialParser.audioDataType = nil
CVR.CCK.CVRAudioMaterialParser.distanceParameterName = ""
CVR.CCK.CVRAudioMaterialParser.dopplerParameterName = ""
CVR.CCK.CVRAudioMaterialParser.fragmentParameterNameL1 = ""
CVR.CCK.CVRAudioMaterialParser.fragmentParameterNameL2 = ""
CVR.CCK.CVRAudioMaterialParser.fragmentParameterNameL3 = ""
CVR.CCK.CVRAudioMaterialParser.fragmentParameterNameL4 = ""
CVR.CCK.CVRAudioMaterialParser.fragmentParameterNameR1 = ""
CVR.CCK.CVRAudioMaterialParser.fragmentParameterNameR2 = ""
CVR.CCK.CVRAudioMaterialParser.fragmentParameterNameR3 = ""
CVR.CCK.CVRAudioMaterialParser.fragmentParameterNameR4 = ""
CVR.CCK.CVRAudioMaterialParser.fragmentSize = 0
CVR.CCK.CVRAudioMaterialParser.pitchParameterName = ""
CVR.CCK.CVRAudioMaterialParser.processingMaterial = nil
CVR.CCK.CVRAudioMaterialParser.sourceAudio = nil
CVR.CCK.CVRAudioMaterialParser.sourceAudioL = nil
CVR.CCK.CVRAudioMaterialParser.sourceAudioR = nil
CVR.CCK.CVRAudioMaterialParser.spatialParameterName = ""
CVR.CCK.CVRAudioMaterialParser.useSeparateAudioSources = true
CVR.CCK.CVRAudioMaterialParser.volumeParameterName = ""
CVR.CCK.CVRAudioMaterialParser.enabled = true
CVR.CCK.CVRAudioMaterialParser.isActiveAndEnabled = true
CVR.CCK.CVRAudioMaterialParser.gameObject = nil
CVR.CCK.CVRAudioMaterialParser.tag = ""
CVR.CCK.CVRAudioMaterialParser.transform = nil
CVR.CCK.CVRAudioMaterialParser.name = ""

---Constructor for CVR.CCK.CVRAudioMaterialParser
---@return CVR.CCK.CVRAudioMaterialParser
function CVR.CCK.NewCVRAudioMaterialParser() end

---@param x ABI.CCK.Components.CVRAudioMaterialParser: 
---@param y ABI.CCK.Components.CVRAudioMaterialParser: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRAudioMaterialParser: 
---@param y ABI.CCK.Components.CVRAudioMaterialParser: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.ToString () return "" end

---@param exists ABI.CCK.Components.CVRAudioMaterialParser: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioMaterialParser.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRBuilderSpawnable
--- FIXME: Wrapped ABI.CCK.Components.CVRBuilderSpawnable for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field allowGenerateTrigger System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field guid System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field instanceId System.String 
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
CVR.CCK.CVRBuilderSpawnable = {}
CVR.CCK.CVRBuilderSpawnable.allowGenerateTrigger = true
CVR.CCK.CVRBuilderSpawnable.guid = ""
CVR.CCK.CVRBuilderSpawnable.instanceId = ""
CVR.CCK.CVRBuilderSpawnable.enabled = true
CVR.CCK.CVRBuilderSpawnable.isActiveAndEnabled = true
CVR.CCK.CVRBuilderSpawnable.gameObject = nil
CVR.CCK.CVRBuilderSpawnable.tag = ""
CVR.CCK.CVRBuilderSpawnable.transform = nil
CVR.CCK.CVRBuilderSpawnable.name = ""

---@param x ABI.CCK.Components.CVRBuilderSpawnable: 
---@param y ABI.CCK.Components.CVRBuilderSpawnable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRBuilderSpawnable: 
---@param y ABI.CCK.Components.CVRBuilderSpawnable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.ToString () return "" end

---@param exists ABI.CCK.Components.CVRBuilderSpawnable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBuilderSpawnable.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRCustomRenderTextureUpdater
--- FIXME: Wrapped ABI.CCK.Components.CVRCustomRenderTextureUpdater for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field customRenderTexture UnityEngine.CustomRenderTexture 
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
CVR.CCK.CVRCustomRenderTextureUpdater = {}
CVR.CCK.CVRCustomRenderTextureUpdater.customRenderTexture = nil
CVR.CCK.CVRCustomRenderTextureUpdater.enabled = true
CVR.CCK.CVRCustomRenderTextureUpdater.isActiveAndEnabled = true
CVR.CCK.CVRCustomRenderTextureUpdater.gameObject = nil
CVR.CCK.CVRCustomRenderTextureUpdater.tag = ""
CVR.CCK.CVRCustomRenderTextureUpdater.transform = nil
CVR.CCK.CVRCustomRenderTextureUpdater.name = ""

---@param x ABI.CCK.Components.CVRCustomRenderTextureUpdater: 
---@param y ABI.CCK.Components.CVRCustomRenderTextureUpdater: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRCustomRenderTextureUpdater: 
---@param y ABI.CCK.Components.CVRCustomRenderTextureUpdater: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.ToString () return "" end

---@param exists ABI.CCK.Components.CVRCustomRenderTextureUpdater: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCustomRenderTextureUpdater.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRDistanceConstrain
--- FIXME: Wrapped ABI.CCK.Components.CVRDistanceConstrain for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field target UnityEngine.Transform 
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
CVR.CCK.CVRDistanceConstrain = {}
CVR.CCK.CVRDistanceConstrain.maxDistance = 0.0
CVR.CCK.CVRDistanceConstrain.minDistance = 0.0
CVR.CCK.CVRDistanceConstrain.target = nil
CVR.CCK.CVRDistanceConstrain.enabled = true
CVR.CCK.CVRDistanceConstrain.isActiveAndEnabled = true
CVR.CCK.CVRDistanceConstrain.gameObject = nil
CVR.CCK.CVRDistanceConstrain.tag = ""
CVR.CCK.CVRDistanceConstrain.transform = nil
CVR.CCK.CVRDistanceConstrain.name = ""

---@param x ABI.CCK.Components.CVRDistanceConstrain: 
---@param y ABI.CCK.Components.CVRDistanceConstrain: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRDistanceConstrain: 
---@param y ABI.CCK.Components.CVRDistanceConstrain: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.ToString () return "" end

---@param exists ABI.CCK.Components.CVRDistanceConstrain: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceConstrain.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRDistanceLod
--- FIXME: Wrapped ABI.CCK.Components.CVRDistanceLod for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field distance3D System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Groups System.Collections.Generic.List<ABI.CCK.Components.CVRDistanceLodGroup> 
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
CVR.CCK.CVRDistanceLod = {}
CVR.CCK.CVRDistanceLod.distance3D = true
CVR.CCK.CVRDistanceLod.Groups = []
CVR.CCK.CVRDistanceLod.enabled = true
CVR.CCK.CVRDistanceLod.isActiveAndEnabled = true
CVR.CCK.CVRDistanceLod.gameObject = nil
CVR.CCK.CVRDistanceLod.tag = ""
CVR.CCK.CVRDistanceLod.transform = nil
CVR.CCK.CVRDistanceLod.name = ""

---@param x ABI.CCK.Components.CVRDistanceLod: 
---@param y ABI.CCK.Components.CVRDistanceLod: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRDistanceLod: 
---@param y ABI.CCK.Components.CVRDistanceLod: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.ToString () return "" end

---@param exists ABI.CCK.Components.CVRDistanceLod: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLod.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRDistanceLodGroup
--- FIXME: Wrapped ABI.CCK.Components.CVRDistanceLodGroup for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field GameObject UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field MaxDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field MinDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.CVRDistanceLodGroup = {}
CVR.CCK.CVRDistanceLodGroup.GameObject = nil
CVR.CCK.CVRDistanceLodGroup.MaxDistance = 0.0
CVR.CCK.CVRDistanceLodGroup.MinDistance = 0.0

---Constructor for CVR.CCK.CVRDistanceLodGroup
---@return CVR.CCK.CVRDistanceLodGroup
function CVR.CCK.NewCVRDistanceLodGroup() end

---@param x ABI.CCK.Components.CVRDistanceLodGroup: 
---@param y ABI.CCK.Components.CVRDistanceLodGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLodGroup.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRDistanceLodGroup: 
---@param y ABI.CCK.Components.CVRDistanceLodGroup: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLodGroup.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLodGroup.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLodGroup.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRDistanceLodGroup.ToString () return "" end

--- @class CVR.CCK.CVRFaceTracking
--- FIXME: Wrapped ABI.CCK.Components.CVRFaceTracking for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field BlendShapeStrength System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field BlendShapeValues System.Single[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field enableOverdriveBlendShapes System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field FaceBlendShapes System.String[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field FaceMesh UnityEngine.SkinnedMeshRenderer 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isLocal System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LipSyncWasUpdated System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field UseFacialTracking System.Boolean 
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
CVR.CCK.CVRFaceTracking = {}
CVR.CCK.CVRFaceTracking.BlendShapeStrength = 0.0
CVR.CCK.CVRFaceTracking.BlendShapeValues = []
CVR.CCK.CVRFaceTracking.enableOverdriveBlendShapes = true
CVR.CCK.CVRFaceTracking.FaceBlendShapes = []
CVR.CCK.CVRFaceTracking.FaceMesh = nil
CVR.CCK.CVRFaceTracking.isLocal = true
CVR.CCK.CVRFaceTracking.LipSyncWasUpdated = true
CVR.CCK.CVRFaceTracking.UseFacialTracking = true
CVR.CCK.CVRFaceTracking.enabled = true
CVR.CCK.CVRFaceTracking.isActiveAndEnabled = true
CVR.CCK.CVRFaceTracking.gameObject = nil
CVR.CCK.CVRFaceTracking.tag = ""
CVR.CCK.CVRFaceTracking.transform = nil
CVR.CCK.CVRFaceTracking.name = ""

---@param x ABI.CCK.Components.CVRFaceTracking: 
---@param y ABI.CCK.Components.CVRFaceTracking: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRFaceTracking: 
---@param y ABI.CCK.Components.CVRFaceTracking: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.ToString () return "" end

---@param exists ABI.CCK.Components.CVRFaceTracking: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRFaceTracking.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRGlobalMaterialPropertyUpdater
--- FIXME: Wrapped ABI.CCK.Components.CVRGlobalMaterialPropertyUpdater for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field floatValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field floatValueAnimatable System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field integerValue System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field integerValueAnimatable System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field intValue System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field intValueAnimatable System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material UnityEngine.Material 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field propertyName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field propertyType ABI.CCK.Components.CVRGlobalMaterialPropertyUpdater.PropertyType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field vector4Value UnityEngine.Vector4 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field vector4ValueAnimatable UnityEngine.Vector4 
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
CVR.CCK.CVRGlobalMaterialPropertyUpdater = {}
CVR.CCK.CVRGlobalMaterialPropertyUpdater.floatValue = 0.0
CVR.CCK.CVRGlobalMaterialPropertyUpdater.floatValueAnimatable = 0.0
CVR.CCK.CVRGlobalMaterialPropertyUpdater.integerValue = 0
CVR.CCK.CVRGlobalMaterialPropertyUpdater.integerValueAnimatable = 0
CVR.CCK.CVRGlobalMaterialPropertyUpdater.intValue = 0
CVR.CCK.CVRGlobalMaterialPropertyUpdater.intValueAnimatable = 0
CVR.CCK.CVRGlobalMaterialPropertyUpdater.material = nil
CVR.CCK.CVRGlobalMaterialPropertyUpdater.propertyName = ""
CVR.CCK.CVRGlobalMaterialPropertyUpdater.propertyType = nil
CVR.CCK.CVRGlobalMaterialPropertyUpdater.vector4Value = nil
CVR.CCK.CVRGlobalMaterialPropertyUpdater.vector4ValueAnimatable = nil
CVR.CCK.CVRGlobalMaterialPropertyUpdater.enabled = true
CVR.CCK.CVRGlobalMaterialPropertyUpdater.isActiveAndEnabled = true
CVR.CCK.CVRGlobalMaterialPropertyUpdater.gameObject = nil
CVR.CCK.CVRGlobalMaterialPropertyUpdater.tag = ""
CVR.CCK.CVRGlobalMaterialPropertyUpdater.transform = nil
CVR.CCK.CVRGlobalMaterialPropertyUpdater.name = ""

---@param x ABI.CCK.Components.CVRGlobalMaterialPropertyUpdater: 
---@param y ABI.CCK.Components.CVRGlobalMaterialPropertyUpdater: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRGlobalMaterialPropertyUpdater: 
---@param y ABI.CCK.Components.CVRGlobalMaterialPropertyUpdater: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.ToString () return "" end

---@param exists ABI.CCK.Components.CVRGlobalMaterialPropertyUpdater: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalMaterialPropertyUpdater.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRGlobalShaderUpdater
--- FIXME: Wrapped ABI.CCK.Components.CVRGlobalShaderUpdater for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field CVR_CCK_Global_1 UnityEngine.Vector4 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field CVR_CCK_Global_2 UnityEngine.Vector4 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field CVR_CCK_Global_3 UnityEngine.Vector4 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field CVR_CCK_Global_4 UnityEngine.Vector4 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field propertyName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field renderTexture UnityEngine.RenderTexture 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field updateTexture System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field updateValues System.Boolean 
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
CVR.CCK.CVRGlobalShaderUpdater = {}
CVR.CCK.CVRGlobalShaderUpdater.CVR_CCK_Global_1 = nil
CVR.CCK.CVRGlobalShaderUpdater.CVR_CCK_Global_2 = nil
CVR.CCK.CVRGlobalShaderUpdater.CVR_CCK_Global_3 = nil
CVR.CCK.CVRGlobalShaderUpdater.CVR_CCK_Global_4 = nil
CVR.CCK.CVRGlobalShaderUpdater.propertyName = ""
CVR.CCK.CVRGlobalShaderUpdater.renderTexture = nil
CVR.CCK.CVRGlobalShaderUpdater.updateTexture = true
CVR.CCK.CVRGlobalShaderUpdater.updateValues = true
CVR.CCK.CVRGlobalShaderUpdater.enabled = true
CVR.CCK.CVRGlobalShaderUpdater.isActiveAndEnabled = true
CVR.CCK.CVRGlobalShaderUpdater.gameObject = nil
CVR.CCK.CVRGlobalShaderUpdater.tag = ""
CVR.CCK.CVRGlobalShaderUpdater.transform = nil
CVR.CCK.CVRGlobalShaderUpdater.name = ""

---@param x ABI.CCK.Components.CVRGlobalShaderUpdater: 
---@param y ABI.CCK.Components.CVRGlobalShaderUpdater: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRGlobalShaderUpdater: 
---@param y ABI.CCK.Components.CVRGlobalShaderUpdater: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.ToString () return "" end

---@param exists ABI.CCK.Components.CVRGlobalShaderUpdater: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRGlobalShaderUpdater.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRHapticAreaChest
--- FIXME: Wrapped ABI.CCK.Components.CVRHapticAreaChest for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field chestAreaSize UnityEngine.Vector3 
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
CVR.CCK.CVRHapticAreaChest = {}
CVR.CCK.CVRHapticAreaChest.chestAreaSize = nil
CVR.CCK.CVRHapticAreaChest.enabled = true
CVR.CCK.CVRHapticAreaChest.isActiveAndEnabled = true
CVR.CCK.CVRHapticAreaChest.gameObject = nil
CVR.CCK.CVRHapticAreaChest.tag = ""
CVR.CCK.CVRHapticAreaChest.transform = nil
CVR.CCK.CVRHapticAreaChest.name = ""

---@param x ABI.CCK.Components.CVRHapticAreaChest: 
---@param y ABI.CCK.Components.CVRHapticAreaChest: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRHapticAreaChest: 
---@param y ABI.CCK.Components.CVRHapticAreaChest: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.ToString () return "" end

---@param exists ABI.CCK.Components.CVRHapticAreaChest: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticAreaChest.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRHapticZone
--- FIXME: Wrapped ABI.CCK.Components.CVRHapticZone for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field bounds UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field center UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field enableOnEnter System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field enableOnExit System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field enableOnStay System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onEnterIntensity System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onExitIntensity System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onStayChance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onStayIntensity System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onStayTiming ABI.CCK.Components.CVRHapticZone.TriggerTiming 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field triggerForm ABI.CCK.Components.CVRHapticZone.TriggerForm 
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
CVR.CCK.CVRHapticZone = {}
CVR.CCK.CVRHapticZone.bounds = nil
CVR.CCK.CVRHapticZone.center = nil
CVR.CCK.CVRHapticZone.enableOnEnter = true
CVR.CCK.CVRHapticZone.enableOnExit = true
CVR.CCK.CVRHapticZone.enableOnStay = true
CVR.CCK.CVRHapticZone.onEnterIntensity = 0.0
CVR.CCK.CVRHapticZone.onExitIntensity = 0.0
CVR.CCK.CVRHapticZone.onStayChance = 0.0
CVR.CCK.CVRHapticZone.onStayIntensity = 0.0
CVR.CCK.CVRHapticZone.onStayTiming = nil
CVR.CCK.CVRHapticZone.triggerForm = nil
CVR.CCK.CVRHapticZone.enabled = true
CVR.CCK.CVRHapticZone.isActiveAndEnabled = true
CVR.CCK.CVRHapticZone.gameObject = nil
CVR.CCK.CVRHapticZone.tag = ""
CVR.CCK.CVRHapticZone.transform = nil
CVR.CCK.CVRHapticZone.name = ""

---@param x ABI.CCK.Components.CVRHapticZone: 
---@param y ABI.CCK.Components.CVRHapticZone: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRHapticZone: 
---@param y ABI.CCK.Components.CVRHapticZone: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.ToString () return "" end

---@param exists ABI.CCK.Components.CVRHapticZone: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRHapticZone.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.PhysicsInfluencer
--- FIXME: Wrapped ABI.CCK.Components.PhysicsInfluencer for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field airAngularDrag System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field airDrag System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field centerOfMass UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field density System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field enableBuoyancy System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field enableLocalGravity System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fluidAngularDrag System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fluidDrag System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field forceAlignUpright System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gentleAlignAxis UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gentleAlignSpeed System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gentleAlignStability System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gentleAlignUpright System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gravityFactor System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field volume System.Single 
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
CVR.CCK.PhysicsInfluencer = {}
CVR.CCK.PhysicsInfluencer.airAngularDrag = 0.0
CVR.CCK.PhysicsInfluencer.airDrag = 0.0
CVR.CCK.PhysicsInfluencer.centerOfMass = nil
CVR.CCK.PhysicsInfluencer.density = 0.0
CVR.CCK.PhysicsInfluencer.enableBuoyancy = true
CVR.CCK.PhysicsInfluencer.enableLocalGravity = true
CVR.CCK.PhysicsInfluencer.fluidAngularDrag = 0.0
CVR.CCK.PhysicsInfluencer.fluidDrag = 0.0
CVR.CCK.PhysicsInfluencer.forceAlignUpright = true
CVR.CCK.PhysicsInfluencer.gentleAlignAxis = nil
CVR.CCK.PhysicsInfluencer.gentleAlignSpeed = 0.0
CVR.CCK.PhysicsInfluencer.gentleAlignStability = 0.0
CVR.CCK.PhysicsInfluencer.gentleAlignUpright = true
CVR.CCK.PhysicsInfluencer.gravityFactor = 0.0
CVR.CCK.PhysicsInfluencer.volume = 0.0
CVR.CCK.PhysicsInfluencer.enabled = true
CVR.CCK.PhysicsInfluencer.isActiveAndEnabled = true
CVR.CCK.PhysicsInfluencer.gameObject = nil
CVR.CCK.PhysicsInfluencer.tag = ""
CVR.CCK.PhysicsInfluencer.transform = nil
CVR.CCK.PhysicsInfluencer.name = ""

---@return UnityEngine.Vector3
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetAppliedGravity () return nil end

---@return UnityEngine.Vector3
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetAppliedGravityDirection () return nil end

---@return System.Single
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetDepth () return 0.0 end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetSubmerged () return true end

---@return System.Single
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetTimeSinceEnter () return 0.0 end

---@return System.Single
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetTimeSinceExit () return 0.0 end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.UpdateDensity () return end

---@param x ABI.CCK.Components.PhysicsInfluencer: 
---@param y ABI.CCK.Components.PhysicsInfluencer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.PhysicsInfluencer: 
---@param y ABI.CCK.Components.PhysicsInfluencer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.ToString () return "" end

---@param exists ABI.CCK.Components.PhysicsInfluencer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PhysicsInfluencer.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRBaseLuaBehaviour
--- FIXME: Wrapped ABI.CCK.Components.CVRBaseLuaBehaviour for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field Globals MoonSharp.Interpreter.Table 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field Hash System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field HashBytes System.Byte[] 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field InstanceIDBytes System.Byte[] 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field IsScriptInitialized System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field PathArray System.String[] 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field ScriptName System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field TypeLabel System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.CVRBaseLuaBehaviour = {}
CVR.CCK.CVRBaseLuaBehaviour.Globals = nil
CVR.CCK.CVRBaseLuaBehaviour.Hash = ""
CVR.CCK.CVRBaseLuaBehaviour.HashBytes = []
CVR.CCK.CVRBaseLuaBehaviour.InstanceIDBytes = []
CVR.CCK.CVRBaseLuaBehaviour.IsScriptInitialized = true
CVR.CCK.CVRBaseLuaBehaviour.PathArray = []
CVR.CCK.CVRBaseLuaBehaviour.ScriptName = ""
CVR.CCK.CVRBaseLuaBehaviour.TypeLabel = ""
CVR.CCK.CVRBaseLuaBehaviour.enabled = true
CVR.CCK.CVRBaseLuaBehaviour.isActiveAndEnabled = true
CVR.CCK.CVRBaseLuaBehaviour.gameObject = nil
CVR.CCK.CVRBaseLuaBehaviour.tag = ""
CVR.CCK.CVRBaseLuaBehaviour.transform = nil
CVR.CCK.CVRBaseLuaBehaviour.name = ""

---@param globalFunctionName System.String: 
---@param args System.Object[]: 
---@return MoonSharp.Interpreter.DynValue
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.CallGlobalFunction (globalFunctionName, args) return nil end

---@param message System.String: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.Crash (message) return end

---@param message System.String: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.Destroy (message) return end

---@param variableName System.String: 
---@return System.Nullable<System.Boolean>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetGlobalBoolean (variableName) return nil end

---@param variableName System.String: 
---@return System.Nullable<System.Double>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetGlobalNumber (variableName) return nil end

---@param variableName System.String: 
---@return System.String
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetGlobalString (variableName) return "" end

---@param variableName System.String: 
---@return MoonSharp.Interpreter.Table
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetGlobalTable (variableName) return nil end

---@return System.String
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetObjectID () return "" end

---@return System.String
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetOwnerID () return "" end

---@return System.String
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetPath () return "" end

---@param x ABI.CCK.Components.CVRBaseLuaBehaviour: 
---@param y ABI.CCK.Components.CVRBaseLuaBehaviour: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRBaseLuaBehaviour: 
---@param y ABI.CCK.Components.CVRBaseLuaBehaviour: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.ToString () return "" end

---@param exists ABI.CCK.Components.CVRBaseLuaBehaviour: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBaseLuaBehaviour.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRLuaClientBehaviour
--- FIXME: Wrapped ABI.CCK.Components.CVRLuaClientBehaviour for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field TypeLabel System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field Globals MoonSharp.Interpreter.Table 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field Hash System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field HashBytes System.Byte[] 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field InstanceIDBytes System.Byte[] 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field IsScriptInitialized System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field PathArray System.String[] 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field ScriptName System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.CVRLuaClientBehaviour = {}
CVR.CCK.CVRLuaClientBehaviour.TypeLabel = ""
CVR.CCK.CVRLuaClientBehaviour.Globals = nil
CVR.CCK.CVRLuaClientBehaviour.Hash = ""
CVR.CCK.CVRLuaClientBehaviour.HashBytes = []
CVR.CCK.CVRLuaClientBehaviour.InstanceIDBytes = []
CVR.CCK.CVRLuaClientBehaviour.IsScriptInitialized = true
CVR.CCK.CVRLuaClientBehaviour.PathArray = []
CVR.CCK.CVRLuaClientBehaviour.ScriptName = ""
CVR.CCK.CVRLuaClientBehaviour.enabled = true
CVR.CCK.CVRLuaClientBehaviour.isActiveAndEnabled = true
CVR.CCK.CVRLuaClientBehaviour.gameObject = nil
CVR.CCK.CVRLuaClientBehaviour.tag = ""
CVR.CCK.CVRLuaClientBehaviour.transform = nil
CVR.CCK.CVRLuaClientBehaviour.name = ""

---@param x ABI.CCK.Components.CVRLuaClientBehaviour: 
---@param y ABI.CCK.Components.CVRLuaClientBehaviour: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRLuaClientBehaviour: 
---@param y ABI.CCK.Components.CVRLuaClientBehaviour: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.op_Inequality (x, y) return true end -- static

---@param globalFunctionName System.String: 
---@param args System.Object[]: 
---@return MoonSharp.Interpreter.DynValue
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.CallGlobalFunction (globalFunctionName, args) return nil end

---@param message System.String: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.Crash (message) return end

---@param message System.String: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.Destroy (message) return end

---@param variableName System.String: 
---@return System.Nullable<System.Boolean>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetGlobalBoolean (variableName) return nil end

---@param variableName System.String: 
---@return System.Nullable<System.Double>
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetGlobalNumber (variableName) return nil end

---@param variableName System.String: 
---@return System.String
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetGlobalString (variableName) return "" end

---@param variableName System.String: 
---@return MoonSharp.Interpreter.Table
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetGlobalTable (variableName) return nil end

---@return System.String
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetObjectID () return "" end

---@return System.String
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetOwnerID () return "" end

---@return System.String
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetPath () return "" end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.ToString () return "" end

---@param exists ABI.CCK.Components.CVRLuaClientBehaviour: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRLuaClientBehaviour.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRMaterialDriver
--- FIXME: Wrapped ABI.CCK.Components.CVRMaterialDriver for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material01W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material01X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material01Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material01Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material02W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material02X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material02Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material02Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material03W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material03X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material03Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material03Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material04W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material04X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material04Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material04Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material05W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material05X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material05Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material05Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material06W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material06X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material06Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material06Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material07W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material07X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material07Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material07Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material08W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material08X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material08Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material08Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material09W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material09X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material09Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material09Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material10W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material10X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material10Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material10Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material11W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material11X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material11Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material11Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material12W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material12X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material12Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material12Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material13W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material13X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material13Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material13Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material14W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material14X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material14Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material14Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material15W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material15X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material15Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material15Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material16W System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material16X System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material16Y System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field material16Z System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field tasks System.Collections.Generic.List<ABI.CCK.Components.CVRMaterialDriverTask> 
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
CVR.CCK.CVRMaterialDriver = {}
CVR.CCK.CVRMaterialDriver.material01W = 0.0
CVR.CCK.CVRMaterialDriver.material01X = 0.0
CVR.CCK.CVRMaterialDriver.material01Y = 0.0
CVR.CCK.CVRMaterialDriver.material01Z = 0.0
CVR.CCK.CVRMaterialDriver.material02W = 0.0
CVR.CCK.CVRMaterialDriver.material02X = 0.0
CVR.CCK.CVRMaterialDriver.material02Y = 0.0
CVR.CCK.CVRMaterialDriver.material02Z = 0.0
CVR.CCK.CVRMaterialDriver.material03W = 0.0
CVR.CCK.CVRMaterialDriver.material03X = 0.0
CVR.CCK.CVRMaterialDriver.material03Y = 0.0
CVR.CCK.CVRMaterialDriver.material03Z = 0.0
CVR.CCK.CVRMaterialDriver.material04W = 0.0
CVR.CCK.CVRMaterialDriver.material04X = 0.0
CVR.CCK.CVRMaterialDriver.material04Y = 0.0
CVR.CCK.CVRMaterialDriver.material04Z = 0.0
CVR.CCK.CVRMaterialDriver.material05W = 0.0
CVR.CCK.CVRMaterialDriver.material05X = 0.0
CVR.CCK.CVRMaterialDriver.material05Y = 0.0
CVR.CCK.CVRMaterialDriver.material05Z = 0.0
CVR.CCK.CVRMaterialDriver.material06W = 0.0
CVR.CCK.CVRMaterialDriver.material06X = 0.0
CVR.CCK.CVRMaterialDriver.material06Y = 0.0
CVR.CCK.CVRMaterialDriver.material06Z = 0.0
CVR.CCK.CVRMaterialDriver.material07W = 0.0
CVR.CCK.CVRMaterialDriver.material07X = 0.0
CVR.CCK.CVRMaterialDriver.material07Y = 0.0
CVR.CCK.CVRMaterialDriver.material07Z = 0.0
CVR.CCK.CVRMaterialDriver.material08W = 0.0
CVR.CCK.CVRMaterialDriver.material08X = 0.0
CVR.CCK.CVRMaterialDriver.material08Y = 0.0
CVR.CCK.CVRMaterialDriver.material08Z = 0.0
CVR.CCK.CVRMaterialDriver.material09W = 0.0
CVR.CCK.CVRMaterialDriver.material09X = 0.0
CVR.CCK.CVRMaterialDriver.material09Y = 0.0
CVR.CCK.CVRMaterialDriver.material09Z = 0.0
CVR.CCK.CVRMaterialDriver.material10W = 0.0
CVR.CCK.CVRMaterialDriver.material10X = 0.0
CVR.CCK.CVRMaterialDriver.material10Y = 0.0
CVR.CCK.CVRMaterialDriver.material10Z = 0.0
CVR.CCK.CVRMaterialDriver.material11W = 0.0
CVR.CCK.CVRMaterialDriver.material11X = 0.0
CVR.CCK.CVRMaterialDriver.material11Y = 0.0
CVR.CCK.CVRMaterialDriver.material11Z = 0.0
CVR.CCK.CVRMaterialDriver.material12W = 0.0
CVR.CCK.CVRMaterialDriver.material12X = 0.0
CVR.CCK.CVRMaterialDriver.material12Y = 0.0
CVR.CCK.CVRMaterialDriver.material12Z = 0.0
CVR.CCK.CVRMaterialDriver.material13W = 0.0
CVR.CCK.CVRMaterialDriver.material13X = 0.0
CVR.CCK.CVRMaterialDriver.material13Y = 0.0
CVR.CCK.CVRMaterialDriver.material13Z = 0.0
CVR.CCK.CVRMaterialDriver.material14W = 0.0
CVR.CCK.CVRMaterialDriver.material14X = 0.0
CVR.CCK.CVRMaterialDriver.material14Y = 0.0
CVR.CCK.CVRMaterialDriver.material14Z = 0.0
CVR.CCK.CVRMaterialDriver.material15W = 0.0
CVR.CCK.CVRMaterialDriver.material15X = 0.0
CVR.CCK.CVRMaterialDriver.material15Y = 0.0
CVR.CCK.CVRMaterialDriver.material15Z = 0.0
CVR.CCK.CVRMaterialDriver.material16W = 0.0
CVR.CCK.CVRMaterialDriver.material16X = 0.0
CVR.CCK.CVRMaterialDriver.material16Y = 0.0
CVR.CCK.CVRMaterialDriver.material16Z = 0.0
CVR.CCK.CVRMaterialDriver.tasks = []
CVR.CCK.CVRMaterialDriver.enabled = true
CVR.CCK.CVRMaterialDriver.isActiveAndEnabled = true
CVR.CCK.CVRMaterialDriver.gameObject = nil
CVR.CCK.CVRMaterialDriver.tag = ""
CVR.CCK.CVRMaterialDriver.transform = nil
CVR.CCK.CVRMaterialDriver.name = ""

---@param x ABI.CCK.Components.CVRMaterialDriver: 
---@param y ABI.CCK.Components.CVRMaterialDriver: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRMaterialDriver: 
---@param y ABI.CCK.Components.CVRMaterialDriver: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.ToString () return "" end

---@param exists ABI.CCK.Components.CVRMaterialDriver: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriver.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRMaterialDriverTask
--- FIXME: Wrapped ABI.CCK.Components.CVRMaterialDriverTask for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Index System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PropertyName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PropertyType ABI.CCK.Components.CVRMaterialDriverTask.Type 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Renderer UnityEngine.Renderer 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field RendererType System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field values UnityEngine.Vector4 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.CVRMaterialDriverTask = {}
CVR.CCK.CVRMaterialDriverTask.Index = 0
CVR.CCK.CVRMaterialDriverTask.PropertyName = ""
CVR.CCK.CVRMaterialDriverTask.PropertyType = nil
CVR.CCK.CVRMaterialDriverTask.Renderer = nil
CVR.CCK.CVRMaterialDriverTask.RendererType = ""
CVR.CCK.CVRMaterialDriverTask.values = nil

---@param x System.Single: 
---@param y System.Single: 
---@param z System.Single: 
---@param w System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriverTask.SetValue (x, y, z, w) return end

---@param x ABI.CCK.Components.CVRMaterialDriverTask: 
---@param y ABI.CCK.Components.CVRMaterialDriverTask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriverTask.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRMaterialDriverTask: 
---@param y ABI.CCK.Components.CVRMaterialDriverTask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialDriverTask.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.CVRMaterialUpdater
--- FIXME: Wrapped ABI.CCK.Components.CVRMaterialUpdater for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field updateType ABI.CCK.Components.CVRMaterialUpdater.UpdateType 
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
CVR.CCK.CVRMaterialUpdater = {}
CVR.CCK.CVRMaterialUpdater.updateType = nil
CVR.CCK.CVRMaterialUpdater.enabled = true
CVR.CCK.CVRMaterialUpdater.isActiveAndEnabled = true
CVR.CCK.CVRMaterialUpdater.gameObject = nil
CVR.CCK.CVRMaterialUpdater.tag = ""
CVR.CCK.CVRMaterialUpdater.transform = nil
CVR.CCK.CVRMaterialUpdater.name = ""

---@param x ABI.CCK.Components.CVRMaterialUpdater: 
---@param y ABI.CCK.Components.CVRMaterialUpdater: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRMaterialUpdater: 
---@param y ABI.CCK.Components.CVRMaterialUpdater: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.ToString () return "" end

---@param exists ABI.CCK.Components.CVRMaterialUpdater: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMaterialUpdater.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRMirror
--- FIXME: Wrapped CVRMirror for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field m_ClearFlags CVRMirror.MirrorClearFlags 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field m_ClipPlaneOffset System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field m_CustomColor UnityEngine.Color 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field m_CustomSkybox UnityEngine.Material 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field m_DisablePixelLights System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field m_framesNeededToUpdate System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field m_ignoreLegacyBehaviour System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field m_ReflectLayers UnityEngine.LayerMask 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field m_TextureSize System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field m_UseOcclusionCulling System.Boolean 
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
CVR.CCK.CVRMirror = {}
CVR.CCK.CVRMirror.m_ClearFlags = nil
CVR.CCK.CVRMirror.m_ClipPlaneOffset = 0.0
CVR.CCK.CVRMirror.m_CustomColor = nil
CVR.CCK.CVRMirror.m_CustomSkybox = nil
CVR.CCK.CVRMirror.m_DisablePixelLights = true
CVR.CCK.CVRMirror.m_framesNeededToUpdate = 0
CVR.CCK.CVRMirror.m_ignoreLegacyBehaviour = true
CVR.CCK.CVRMirror.m_ReflectLayers = nil
CVR.CCK.CVRMirror.m_TextureSize = 0
CVR.CCK.CVRMirror.m_UseOcclusionCulling = true
CVR.CCK.CVRMirror.enabled = true
CVR.CCK.CVRMirror.isActiveAndEnabled = true
CVR.CCK.CVRMirror.gameObject = nil
CVR.CCK.CVRMirror.tag = ""
CVR.CCK.CVRMirror.transform = nil
CVR.CCK.CVRMirror.name = ""

---@param oldEyePos UnityEngine.Vector3: 
---@return UnityEngine.Vector3
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.GetMirrorReflectionPosition (oldEyePos) return nil end

---@param x CVRMirror: 
---@param y CVRMirror: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.op_Equality (x, y) return true end -- static

---@param x CVRMirror: 
---@param y CVRMirror: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.ToString () return "" end

---@param exists CVRMirror: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMirror.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRMovementParent
--- FIXME: Wrapped ABI.CCK.Components.CVRMovementParent for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field applyForcesFromPlayers System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field fixedVelocity UnityEngine.Vector3 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field orientationMode ABI.CCK.Components.CVRMovementParent.OrientationMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field velocityInheritance ABI.CCK.Components.CVRMovementParent.VelocityInheritanceMode 
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
CVR.CCK.CVRMovementParent = {}
CVR.CCK.CVRMovementParent.applyForcesFromPlayers = true
CVR.CCK.CVRMovementParent.fixedVelocity = nil
CVR.CCK.CVRMovementParent.orientationMode = nil
CVR.CCK.CVRMovementParent.velocityInheritance = nil
CVR.CCK.CVRMovementParent.enabled = true
CVR.CCK.CVRMovementParent.isActiveAndEnabled = true
CVR.CCK.CVRMovementParent.gameObject = nil
CVR.CCK.CVRMovementParent.tag = ""
CVR.CCK.CVRMovementParent.transform = nil
CVR.CCK.CVRMovementParent.name = ""

---@param x ABI.CCK.Components.CVRMovementParent: 
---@param y ABI.CCK.Components.CVRMovementParent: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRMovementParent: 
---@param y ABI.CCK.Components.CVRMovementParent: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.ToString () return "" end

---@param exists ABI.CCK.Components.CVRMovementParent: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRMovementParent.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRNavController
--- FIXME: Wrapped ABI.CCK.Components.CVRNavController for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field navMeshAgent UnityEngine.AI.NavMeshAgent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field navTargetIndex System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field navTargetList UnityEngine.Transform[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field patrolEnabled System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field patrolPointCheckDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field patrolPointIndex System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field patrolPoints UnityEngine.Transform[] 
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
CVR.CCK.CVRNavController = {}
CVR.CCK.CVRNavController.navMeshAgent = nil
CVR.CCK.CVRNavController.navTargetIndex = 0
CVR.CCK.CVRNavController.navTargetList = []
CVR.CCK.CVRNavController.patrolEnabled = true
CVR.CCK.CVRNavController.patrolPointCheckDistance = 0.0
CVR.CCK.CVRNavController.patrolPointIndex = 0
CVR.CCK.CVRNavController.patrolPoints = []
CVR.CCK.CVRNavController.enabled = true
CVR.CCK.CVRNavController.isActiveAndEnabled = true
CVR.CCK.CVRNavController.gameObject = nil
CVR.CCK.CVRNavController.tag = ""
CVR.CCK.CVRNavController.transform = nil
CVR.CCK.CVRNavController.name = ""

---@param x ABI.CCK.Components.CVRNavController: 
---@param y ABI.CCK.Components.CVRNavController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRNavController: 
---@param y ABI.CCK.Components.CVRNavController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.ToString () return "" end

---@param exists ABI.CCK.Components.CVRNavController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRNavController.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRObjectCatalogCategory
--- FIXME: Wrapped ABI.CCK.Components.CVRObjectCatalogCategory for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field id System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field image UnityEngine.Texture2D 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field name System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.CVRObjectCatalogCategory = {}
CVR.CCK.CVRObjectCatalogCategory.id = ""
CVR.CCK.CVRObjectCatalogCategory.image = nil
CVR.CCK.CVRObjectCatalogCategory.name = ""

---Constructor for CVR.CCK.CVRObjectCatalogCategory
---@return CVR.CCK.CVRObjectCatalogCategory
function CVR.CCK.NewCVRObjectCatalogCategory() end

---@param x ABI.CCK.Components.CVRObjectCatalogCategory: 
---@param y ABI.CCK.Components.CVRObjectCatalogCategory: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectCatalogCategory.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRObjectCatalogCategory: 
---@param y ABI.CCK.Components.CVRObjectCatalogCategory: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectCatalogCategory.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.CVRObjectCatalogEntry
--- FIXME: Wrapped ABI.CCK.Components.CVRObjectCatalogEntry for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field categoryId System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field guid System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field name System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field prefab UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field preview UnityEngine.Texture2D 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.CVRObjectCatalogEntry = {}
CVR.CCK.CVRObjectCatalogEntry.categoryId = ""
CVR.CCK.CVRObjectCatalogEntry.guid = ""
CVR.CCK.CVRObjectCatalogEntry.name = ""
CVR.CCK.CVRObjectCatalogEntry.prefab = nil
CVR.CCK.CVRObjectCatalogEntry.preview = nil

---Constructor for CVR.CCK.CVRObjectCatalogEntry
---@return CVR.CCK.CVRObjectCatalogEntry
function CVR.CCK.NewCVRObjectCatalogEntry() end

---@param x ABI.CCK.Components.CVRObjectCatalogEntry: 
---@param y ABI.CCK.Components.CVRObjectCatalogEntry: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectCatalogEntry.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRObjectCatalogEntry: 
---@param y ABI.CCK.Components.CVRObjectCatalogEntry: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectCatalogEntry.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.CVRObjectLibrary
--- FIXME: Wrapped ABI.CCK.Components.CVRObjectLibrary for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field objectCatalogCategories System.Collections.Generic.List<ABI.CCK.Components.CVRObjectCatalogCategory> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field objectCatalogEntries System.Collections.Generic.List<ABI.CCK.Components.CVRObjectCatalogEntry> 
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
CVR.CCK.CVRObjectLibrary = {}
CVR.CCK.CVRObjectLibrary.objectCatalogCategories = []
CVR.CCK.CVRObjectLibrary.objectCatalogEntries = []
CVR.CCK.CVRObjectLibrary.enabled = true
CVR.CCK.CVRObjectLibrary.isActiveAndEnabled = true
CVR.CCK.CVRObjectLibrary.gameObject = nil
CVR.CCK.CVRObjectLibrary.tag = ""
CVR.CCK.CVRObjectLibrary.transform = nil
CVR.CCK.CVRObjectLibrary.name = ""

---@param x ABI.CCK.Components.CVRObjectLibrary: 
---@param y ABI.CCK.Components.CVRObjectLibrary: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRObjectLibrary: 
---@param y ABI.CCK.Components.CVRObjectLibrary: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.ToString () return "" end

---@param exists ABI.CCK.Components.CVRObjectLibrary: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectLibrary.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRObjectSync
--- FIXME: Wrapped ABI.CCK.Components.CVRObjectSync for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field guid System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field isPhysicsSynced System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field syncedBy System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field SyncedByMe System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field syncOwner System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field SyncType System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field tasks System.Collections.Generic.List<ABI.CCK.Components.CVRObjectSyncTask> 
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
CVR.CCK.CVRObjectSync = {}
CVR.CCK.CVRObjectSync.guid = ""
CVR.CCK.CVRObjectSync.isPhysicsSynced = true
CVR.CCK.CVRObjectSync.syncedBy = ""
CVR.CCK.CVRObjectSync.SyncedByMe = true
CVR.CCK.CVRObjectSync.syncOwner = ""
CVR.CCK.CVRObjectSync.SyncType = 0
CVR.CCK.CVRObjectSync.tasks = []
CVR.CCK.CVRObjectSync.enabled = true
CVR.CCK.CVRObjectSync.isActiveAndEnabled = true
CVR.CCK.CVRObjectSync.gameObject = nil
CVR.CCK.CVRObjectSync.tag = ""
CVR.CCK.CVRObjectSync.transform = nil
CVR.CCK.CVRObjectSync.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.ForceUpdate () return end

---@param sync_type System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.ForceUpdate (sync_type) return end

---@return ABI.CCK.Components.CVRSerializableObjectSync
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.getInitialObject () return nil end

---@return ABI.CCK.Components.CVRSerializableObjectSyncTask[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.getInitialTaskData () return [] end

---@param x ABI.CCK.Components.CVRObjectSync: 
---@param y ABI.CCK.Components.CVRObjectSync: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRObjectSync: 
---@param y ABI.CCK.Components.CVRObjectSync: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.ToString () return "" end

---@param exists ABI.CCK.Components.CVRObjectSync: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSync.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRObjectSyncTask
--- FIXME: Wrapped ABI.CCK.Components.CVRObjectSyncTask for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field component UnityEngine.Component 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field intVal System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field type ABI.CCK.Components.CVRObjectSyncTask.TaskType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
CVR.CCK.CVRObjectSyncTask = {}
CVR.CCK.CVRObjectSyncTask.component = nil
CVR.CCK.CVRObjectSyncTask.intVal = 0
CVR.CCK.CVRObjectSyncTask.type = nil

---@param x ABI.CCK.Components.CVRObjectSyncTask: 
---@param y ABI.CCK.Components.CVRObjectSyncTask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSyncTask.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRObjectSyncTask: 
---@param y ABI.CCK.Components.CVRObjectSyncTask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRObjectSyncTask.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.CVRParameterStream
--- FIXME: Wrapped ABI.CCK.Components.CVRParameterStream for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field attachment ABI.CCK.Components.CVRAttachment 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field avatar ABI.CCK.Components.CVRAvatar 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field deltaVelocity UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field entries System.Collections.Generic.List<ABI.CCK.Components.CVRParameterStreamEntry> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field influencer ABI.CCK.Components.PhysicsInfluencer 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field leg ABI.CCK.Components.CVRLeg 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field navMeshAgent UnityEngine.AI.NavMeshAgent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field objectHealth ABI.CCK.Components.ObjectHealth 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field objectSync ABI.CCK.Components.CVRObjectSync 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onlyUpdateWhenAttached System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onlyUpdateWhenControlled System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onlyUpdateWhenHeld System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onlyUpdateWhenOwner System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field pickup ABI.CCK.Components.CVRPickupObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field referenceType ABI.CCK.Components.CVRParameterStream.ReferenceType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field rigidBody UnityEngine.Rigidbody 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field seat ABI_RC.Core.InteractionSystem.CVRSeat 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spawnable ABI.CCK.Components.CVRSpawnable 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field wheelController ABI.CCK.Components.CVRWheelController 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field wheelHubController ABI.CCK.Components.CVRWheelHubController 
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
CVR.CCK.CVRParameterStream = {}
CVR.CCK.CVRParameterStream.attachment = nil
CVR.CCK.CVRParameterStream.avatar = nil
CVR.CCK.CVRParameterStream.deltaVelocity = nil
CVR.CCK.CVRParameterStream.entries = []
CVR.CCK.CVRParameterStream.influencer = nil
CVR.CCK.CVRParameterStream.leg = nil
CVR.CCK.CVRParameterStream.navMeshAgent = nil
CVR.CCK.CVRParameterStream.objectHealth = nil
CVR.CCK.CVRParameterStream.objectSync = nil
CVR.CCK.CVRParameterStream.onlyUpdateWhenAttached = true
CVR.CCK.CVRParameterStream.onlyUpdateWhenControlled = true
CVR.CCK.CVRParameterStream.onlyUpdateWhenHeld = true
CVR.CCK.CVRParameterStream.onlyUpdateWhenOwner = true
CVR.CCK.CVRParameterStream.pickup = nil
CVR.CCK.CVRParameterStream.referenceType = nil
CVR.CCK.CVRParameterStream.rigidBody = nil
CVR.CCK.CVRParameterStream.seat = nil
CVR.CCK.CVRParameterStream.spawnable = nil
CVR.CCK.CVRParameterStream.wheelController = nil
CVR.CCK.CVRParameterStream.wheelHubController = nil
CVR.CCK.CVRParameterStream.enabled = true
CVR.CCK.CVRParameterStream.isActiveAndEnabled = true
CVR.CCK.CVRParameterStream.gameObject = nil
CVR.CCK.CVRParameterStream.tag = ""
CVR.CCK.CVRParameterStream.transform = nil
CVR.CCK.CVRParameterStream.name = ""

---@param x ABI.CCK.Components.CVRParameterStream: 
---@param y ABI.CCK.Components.CVRParameterStream: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRParameterStream: 
---@param y ABI.CCK.Components.CVRParameterStream: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.ToString () return "" end

---@param exists ABI.CCK.Components.CVRParameterStream: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStream.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRParameterStreamEntry
--- FIXME: Wrapped ABI.CCK.Components.CVRParameterStreamEntry for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field applicationType ABI.CCK.Components.CVRParameterStreamEntry.ApplicationType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field parameterName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field parameterType UnityEngine.AnimatorControllerParameterType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field staticValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field staticValue2 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field staticValue3 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field staticValue4 System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field target UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field targetType ABI.CCK.Components.CVRParameterStreamEntry.TargetType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field type ABI.CCK.Components.CVRParameterStreamEntry.Type 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.CVRParameterStreamEntry = {}
CVR.CCK.CVRParameterStreamEntry.applicationType = nil
CVR.CCK.CVRParameterStreamEntry.parameterName = ""
CVR.CCK.CVRParameterStreamEntry.parameterType = nil
CVR.CCK.CVRParameterStreamEntry.staticValue = 0.0
CVR.CCK.CVRParameterStreamEntry.staticValue2 = 0.0
CVR.CCK.CVRParameterStreamEntry.staticValue3 = 0.0
CVR.CCK.CVRParameterStreamEntry.staticValue4 = 0.0
CVR.CCK.CVRParameterStreamEntry.target = nil
CVR.CCK.CVRParameterStreamEntry.targetType = nil
CVR.CCK.CVRParameterStreamEntry.type = nil

---@param stream ABI.CCK.Components.CVRParameterStream: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStreamEntry.Start (stream) return end

---@param x ABI.CCK.Components.CVRParameterStreamEntry: 
---@param y ABI.CCK.Components.CVRParameterStreamEntry: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStreamEntry.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRParameterStreamEntry: 
---@param y ABI.CCK.Components.CVRParameterStreamEntry: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParameterStreamEntry.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.CVRParticleSound
--- FIXME: Wrapped ABI.CCK.Components.CVRParticleSound for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field dieAudioSourceReference UnityEngine.AudioSource 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field diePlaybackVolume System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field dieSound UnityEngine.AudioClip[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxDieAudioPitch System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxSpawnAudioPitch System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minDieAudioPitch System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minSpawnAudioPitch System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field simulateSpeedOfSound System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spawnAudioSourceReference UnityEngine.AudioSource 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spawnPlaybackVolume System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spawnSound UnityEngine.AudioClip[] 
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
CVR.CCK.CVRParticleSound = {}
CVR.CCK.CVRParticleSound.dieAudioSourceReference = nil
CVR.CCK.CVRParticleSound.diePlaybackVolume = 0.0
CVR.CCK.CVRParticleSound.dieSound = []
CVR.CCK.CVRParticleSound.maxDieAudioPitch = 0.0
CVR.CCK.CVRParticleSound.maxSpawnAudioPitch = 0.0
CVR.CCK.CVRParticleSound.minDieAudioPitch = 0.0
CVR.CCK.CVRParticleSound.minSpawnAudioPitch = 0.0
CVR.CCK.CVRParticleSound.simulateSpeedOfSound = true
CVR.CCK.CVRParticleSound.spawnAudioSourceReference = nil
CVR.CCK.CVRParticleSound.spawnPlaybackVolume = 0.0
CVR.CCK.CVRParticleSound.spawnSound = []
CVR.CCK.CVRParticleSound.enabled = true
CVR.CCK.CVRParticleSound.isActiveAndEnabled = true
CVR.CCK.CVRParticleSound.gameObject = nil
CVR.CCK.CVRParticleSound.tag = ""
CVR.CCK.CVRParticleSound.transform = nil
CVR.CCK.CVRParticleSound.name = ""

---@param x ABI.CCK.Components.CVRParticleSound: 
---@param y ABI.CCK.Components.CVRParticleSound: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRParticleSound: 
---@param y ABI.CCK.Components.CVRParticleSound: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.ToString () return "" end

---@param exists ABI.CCK.Components.CVRParticleSound: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRParticleSound.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.Pickupable
--- FIXME: Wrapped ABI_RC.Core.InteractionSystem.Base.Pickupable for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field CanPickup System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field ControllerRay ABI_RC.Core.InteractionSystem.ControllerRay 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field DisallowTheft System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field GrabbedBy System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsAutoHold System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsGrabbedByMe System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsObjectPushPullAllowed System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsObjectRotationAllowed System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsObjectUseAllowed System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsPickedUp System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsPickupable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field IsUseDown System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field MaxGrabDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field MaxPushDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field RootTransform UnityEngine.Transform 
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
CVR.CCK.Pickupable = {}
CVR.CCK.Pickupable.CanPickup = true
CVR.CCK.Pickupable.ControllerRay = nil
CVR.CCK.Pickupable.DisallowTheft = true
CVR.CCK.Pickupable.GrabbedBy = ""
CVR.CCK.Pickupable.IsAutoHold = true
CVR.CCK.Pickupable.IsGrabbedByMe = true
CVR.CCK.Pickupable.IsObjectPushPullAllowed = true
CVR.CCK.Pickupable.IsObjectRotationAllowed = true
CVR.CCK.Pickupable.IsObjectUseAllowed = true
CVR.CCK.Pickupable.IsPickedUp = true
CVR.CCK.Pickupable.IsPickupable = true
CVR.CCK.Pickupable.IsUseDown = true
CVR.CCK.Pickupable.MaxGrabDistance = 0.0
CVR.CCK.Pickupable.MaxPushDistance = 0.0
CVR.CCK.Pickupable.RootTransform = nil
CVR.CCK.Pickupable.enabled = true
CVR.CCK.Pickupable.isActiveAndEnabled = true
CVR.CCK.Pickupable.gameObject = nil
CVR.CCK.Pickupable.tag = ""
CVR.CCK.Pickupable.transform = nil
CVR.CCK.Pickupable.name = ""

---@param sourceWorldPosition UnityEngine.Vector3: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.IsWithinGrabReach (sourceWorldPosition) return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.UseDown () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.UseUp () return true end

---@param x ABI_RC.Core.InteractionSystem.Base.Pickupable: 
---@param y ABI_RC.Core.InteractionSystem.Base.Pickupable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.op_Equality (x, y) return true end -- static

---@param x ABI_RC.Core.InteractionSystem.Base.Pickupable: 
---@param y ABI_RC.Core.InteractionSystem.Base.Pickupable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.ToString () return "" end

---@param exists ABI_RC.Core.InteractionSystem.Base.Pickupable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Pickupable.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRPickupObject
--- FIXME: Wrapped ABI.CCK.Components.CVRPickupObject for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field autoHold System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field CanPickup System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field collisionWithPlayer ABI.CCK.Components.CollisionWithPlayer 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field disableObjectPushPull System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field disallowTheft System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field DisallowTheft System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field GrabStartTime System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field gripOrigin UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gripType ABI.CCK.Components.CVRPickupObject.GripType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ikReference UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Initialized System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsAutoHold System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsObjectPushPullAllowed System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsObjectRotationAllowed System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsObjectUseAllowed System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsTelepathicGrabbed System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field LATEST_VERSION System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field MaxGrabDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field maximumGrabDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field MaxPushDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field moveMode ABI.CCK.Components.CVRPickupObject.MoveMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field RootTransform UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field snappingReferences System.Collections.Generic.List<ABI.CCK.Components.SnappingReference> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field teleTargetObject UnityEngine.GameObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field throwForceMinVelocity System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field throwForceMultiplier System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field updateWithPhysics System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field version System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ControllerRay ABI_RC.Core.InteractionSystem.ControllerRay 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field GrabbedBy System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsGrabbedByMe System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsPickedUp System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsPickupable System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field IsUseDown System.Boolean 
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
CVR.CCK.CVRPickupObject = {}
CVR.CCK.CVRPickupObject.autoHold = true
CVR.CCK.CVRPickupObject.CanPickup = true
CVR.CCK.CVRPickupObject.collisionWithPlayer = nil
CVR.CCK.CVRPickupObject.disableObjectPushPull = true
CVR.CCK.CVRPickupObject.disallowTheft = true
CVR.CCK.CVRPickupObject.DisallowTheft = true
CVR.CCK.CVRPickupObject.GrabStartTime = 0.0
CVR.CCK.CVRPickupObject.gripOrigin = nil
CVR.CCK.CVRPickupObject.gripType = nil
CVR.CCK.CVRPickupObject.ikReference = nil
CVR.CCK.CVRPickupObject.Initialized = true
CVR.CCK.CVRPickupObject.IsAutoHold = true
CVR.CCK.CVRPickupObject.IsObjectPushPullAllowed = true
CVR.CCK.CVRPickupObject.IsObjectRotationAllowed = true
CVR.CCK.CVRPickupObject.IsObjectUseAllowed = true
CVR.CCK.CVRPickupObject.IsTelepathicGrabbed = true
CVR.CCK.CVRPickupObject.LATEST_VERSION = 0
CVR.CCK.CVRPickupObject.MaxGrabDistance = 0.0
CVR.CCK.CVRPickupObject.maximumGrabDistance = 0.0
CVR.CCK.CVRPickupObject.MaxPushDistance = 0.0
CVR.CCK.CVRPickupObject.moveMode = nil
CVR.CCK.CVRPickupObject.RootTransform = nil
CVR.CCK.CVRPickupObject.snappingReferences = []
CVR.CCK.CVRPickupObject.teleTargetObject = nil
CVR.CCK.CVRPickupObject.throwForceMinVelocity = 0.0
CVR.CCK.CVRPickupObject.throwForceMultiplier = 0.0
CVR.CCK.CVRPickupObject.updateWithPhysics = true
CVR.CCK.CVRPickupObject.version = 0
CVR.CCK.CVRPickupObject.ControllerRay = nil
CVR.CCK.CVRPickupObject.GrabbedBy = ""
CVR.CCK.CVRPickupObject.IsGrabbedByMe = true
CVR.CCK.CVRPickupObject.IsPickedUp = true
CVR.CCK.CVRPickupObject.IsPickupable = true
CVR.CCK.CVRPickupObject.IsUseDown = true
CVR.CCK.CVRPickupObject.enabled = true
CVR.CCK.CVRPickupObject.isActiveAndEnabled = true
CVR.CCK.CVRPickupObject.gameObject = nil
CVR.CCK.CVRPickupObject.tag = ""
CVR.CCK.CVRPickupObject.transform = nil
CVR.CCK.CVRPickupObject.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.ForceRelease () return end

---@return System.Single
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.GetTimeSinceGrabStart () return 0.0 end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.ResetFlungStatus () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.ResetLocation () return end

---@param state System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.SetAutoHold (state) return end

---@param height System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.SetRespawnHeight (height) return end

---@param position UnityEngine.Vector3: 
---@param rotation UnityEngine.Quaternion: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.SetRespawnLocation (position, rotation) return end

---@param x ABI.CCK.Components.CVRPickupObject: 
---@param y ABI.CCK.Components.CVRPickupObject: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRPickupObject: 
---@param y ABI.CCK.Components.CVRPickupObject: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.op_Inequality (x, y) return true end -- static

---@param sourceWorldPosition UnityEngine.Vector3: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.IsWithinGrabReach (sourceWorldPosition) return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.UseDown () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.UseUp () return true end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.ToString () return "" end

---@param exists ABI.CCK.Components.CVRPickupObject: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPickupObject.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRPointer
--- FIXME: Wrapped ABI.CCK.Components.CVRPointer for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isInternalPointer System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field isLocalPointer System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field parentSpawnable ABI.CCK.Components.CVRSpawnable 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field pickup ABI.CCK.Components.CVRPickupObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field type System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field value System.Single 
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
CVR.CCK.CVRPointer = {}
CVR.CCK.CVRPointer.isInternalPointer = true
CVR.CCK.CVRPointer.isLocalPointer = true
CVR.CCK.CVRPointer.parentSpawnable = nil
CVR.CCK.CVRPointer.pickup = nil
CVR.CCK.CVRPointer.type = ""
CVR.CCK.CVRPointer.value = 0.0
CVR.CCK.CVRPointer.enabled = true
CVR.CCK.CVRPointer.isActiveAndEnabled = true
CVR.CCK.CVRPointer.gameObject = nil
CVR.CCK.CVRPointer.tag = ""
CVR.CCK.CVRPointer.transform = nil
CVR.CCK.CVRPointer.name = ""

---@param x ABI.CCK.Components.CVRPointer: 
---@param y ABI.CCK.Components.CVRPointer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRPointer: 
---@param y ABI.CCK.Components.CVRPointer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.ToString () return "" end

---@param exists ABI.CCK.Components.CVRPointer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPointer.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRPortalMarker
--- FIXME: Wrapped ABI.CCK.Components.CVRPortalMarker for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field worldGUID System.String 
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
CVR.CCK.CVRPortalMarker = {}
CVR.CCK.CVRPortalMarker.worldGUID = ""
CVR.CCK.CVRPortalMarker.enabled = true
CVR.CCK.CVRPortalMarker.isActiveAndEnabled = true
CVR.CCK.CVRPortalMarker.gameObject = nil
CVR.CCK.CVRPortalMarker.tag = ""
CVR.CCK.CVRPortalMarker.transform = nil
CVR.CCK.CVRPortalMarker.name = ""

---@param x ABI.CCK.Components.CVRPortalMarker: 
---@param y ABI.CCK.Components.CVRPortalMarker: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRPortalMarker: 
---@param y ABI.CCK.Components.CVRPortalMarker: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.ToString () return "" end

---@param exists ABI.CCK.Components.CVRPortalMarker: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRPortalMarker.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRSnappingPoint
--- FIXME: Wrapped ABI.CCK.Components.CVRSnappingPoint for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field distance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field type System.String 
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
CVR.CCK.CVRSnappingPoint = {}
CVR.CCK.CVRSnappingPoint.distance = 0.0
CVR.CCK.CVRSnappingPoint.type = ""
CVR.CCK.CVRSnappingPoint.enabled = true
CVR.CCK.CVRSnappingPoint.isActiveAndEnabled = true
CVR.CCK.CVRSnappingPoint.gameObject = nil
CVR.CCK.CVRSnappingPoint.tag = ""
CVR.CCK.CVRSnappingPoint.transform = nil
CVR.CCK.CVRSnappingPoint.name = ""

---@param x ABI.CCK.Components.CVRSnappingPoint: 
---@param y ABI.CCK.Components.CVRSnappingPoint: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRSnappingPoint: 
---@param y ABI.CCK.Components.CVRSnappingPoint: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.ToString () return "" end

---@param exists ABI.CCK.Components.CVRSnappingPoint: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSnappingPoint.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRSpawnable
--- Wrapped CVRSpawnable for Lua and Wasm
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ContentType ABI_RC.Core.CVRContentType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field currentIncomingSubSyncFloats System.Single[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field customData System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field guid System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field instanceId System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field isPhysicsSynced System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ObjectsToDestroy System.Collections.Generic.HashSet<UnityEngine.Object> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field ownerId System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field preGeneratedInstanceId System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field propPrivacy ABI.CCK.Components.CVRSpawnable.PropPrivacy 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field spawnableType ABI.CCK.Components.CVRSpawnable.SpawnableType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field SpawnedByFriend System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field SpawnedByMe System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field spawnHeight System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field subSyncs System.Collections.Generic.List<ABI.CCK.Components.CVRSpawnableSubSync> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field SyncType System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field syncValues System.Collections.Generic.List<ABI.CCK.Components.CVRSpawnableValue> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useAdditionalValues System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field usedParametersForSubSync System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field enabled System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
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
CVR.CCK.CVRSpawnable = {}
CVR.CCK.CVRSpawnable.ContentType = nil
CVR.CCK.CVRSpawnable.currentIncomingSubSyncFloats = []
CVR.CCK.CVRSpawnable.customData = ""
CVR.CCK.CVRSpawnable.guid = ""
CVR.CCK.CVRSpawnable.instanceId = ""
CVR.CCK.CVRSpawnable.isPhysicsSynced = true
CVR.CCK.CVRSpawnable.ObjectsToDestroy = nil
CVR.CCK.CVRSpawnable.ownerId = ""
CVR.CCK.CVRSpawnable.preGeneratedInstanceId = ""
CVR.CCK.CVRSpawnable.propPrivacy = nil
CVR.CCK.CVRSpawnable.spawnableType = nil
CVR.CCK.CVRSpawnable.SpawnedByFriend = true
CVR.CCK.CVRSpawnable.SpawnedByMe = true
CVR.CCK.CVRSpawnable.spawnHeight = 0.0
CVR.CCK.CVRSpawnable.subSyncs = []
CVR.CCK.CVRSpawnable.SyncType = 0
CVR.CCK.CVRSpawnable.syncValues = []
CVR.CCK.CVRSpawnable.useAdditionalValues = true
CVR.CCK.CVRSpawnable.usedParametersForSubSync = 0
CVR.CCK.CVRSpawnable.enabled = true
CVR.CCK.CVRSpawnable.isActiveAndEnabled = true
CVR.CCK.CVRSpawnable.gameObject = nil
CVR.CCK.CVRSpawnable.tag = ""
CVR.CCK.CVRSpawnable.transform = nil
CVR.CCK.CVRSpawnable.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.Delete () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.ForceUpdate () return end

---@param sync_type System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.ForceUpdate (sync_type) return end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.IsMine () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.IsSyncedByMe () return true end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.ResetInterpolationTime () return end

---@param index System.Int32: 
---@param value System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.SetValue (index, value) return end

---@param customFloats System.Single[]: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.UpdateMultiPurposeFloat (customFloats) return end

---@param name System.String: 
---@param value System.Single: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.UpdateValueIfNecessary (name, value) return true end

---@param x ABI.CCK.Components.CVRSpawnable: 
---@param y ABI.CCK.Components.CVRSpawnable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRSpawnable: 
---@param y ABI.CCK.Components.CVRSpawnable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.ToString () return "" end

---@param exists ABI.CCK.Components.CVRSpawnable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnable.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRSpawnableSubSync
--- Wrapped CVRSpawnableSubSync for Lua and Wasm
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field precision ABI.CCK.Components.CVRSpawnableSubSync.SyncPrecision 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field syncBoundary System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field syncedValues ABI.CCK.Components.CVRSpawnableSubSync.SyncFlags 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field transform UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.CVRSpawnableSubSync = {}
CVR.CCK.CVRSpawnableSubSync.precision = nil
CVR.CCK.CVRSpawnableSubSync.syncBoundary = 0.0
CVR.CCK.CVRSpawnableSubSync.syncedValues = nil
CVR.CCK.CVRSpawnableSubSync.transform = nil

---Constructor for CVR.CCK.CVRSpawnableSubSync
---@return CVR.CCK.CVRSpawnableSubSync
function CVR.CCK.NewCVRSpawnableSubSync() end

---@param x ABI.CCK.Components.CVRSpawnableSubSync: 
---@param y ABI.CCK.Components.CVRSpawnableSubSync: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableSubSync.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRSpawnableSubSync: 
---@param y ABI.CCK.Components.CVRSpawnableSubSync: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableSubSync.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableSubSync.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableSubSync.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableSubSync.ToString () return "" end

--- @class CVR.CCK.CVRSpawnableValue
--- Wrapped CVRSpawnableSubSync for Lua and Wasm
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animator UnityEngine.Animator 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animatorParameterName System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field animatorParameterType ABI.CCK.Components.CVRSpawnableValue.ParameterType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field currentValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field name System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field startValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field updatedBy ABI.CCK.Components.CVRSpawnableValue.UpdatedBy 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field updateMethod ABI.CCK.Components.CVRSpawnableValue.UpdateMethod 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.CVRSpawnableValue = {}
CVR.CCK.CVRSpawnableValue.animator = nil
CVR.CCK.CVRSpawnableValue.animatorParameterName = ""
CVR.CCK.CVRSpawnableValue.animatorParameterType = nil
CVR.CCK.CVRSpawnableValue.currentValue = 0.0
CVR.CCK.CVRSpawnableValue.name = ""
CVR.CCK.CVRSpawnableValue.startValue = 0.0
CVR.CCK.CVRSpawnableValue.updatedBy = nil
CVR.CCK.CVRSpawnableValue.updateMethod = nil

---Constructor for CVR.CCK.CVRSpawnableValue
---@return CVR.CCK.CVRSpawnableValue
function CVR.CCK.NewCVRSpawnableValue() end

---@param x ABI.CCK.Components.CVRSpawnableValue: 
---@param y ABI.CCK.Components.CVRSpawnableValue: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableValue.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRSpawnableValue: 
---@param y ABI.CCK.Components.CVRSpawnableValue: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableValue.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableValue.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableValue.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableValue.ToString () return "" end

--- @class CVR.CCK.CVRSpawnableMenuValue
--- Basically a tiny struct for holding menu data.
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field name System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field value System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.CVRSpawnableMenuValue = {}
CVR.CCK.CVRSpawnableMenuValue.name = ""
CVR.CCK.CVRSpawnableMenuValue.value = 0.0

---Constructor for CVR.CCK.CVRSpawnableMenuValue
---@return CVR.CCK.CVRSpawnableMenuValue
function CVR.CCK.NewCVRSpawnableMenuValue() end

---@param x ABI.CCK.Components.CVRSpawnableMenuValue: 
---@param y ABI.CCK.Components.CVRSpawnableMenuValue: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableMenuValue.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRSpawnableMenuValue: 
---@param y ABI.CCK.Components.CVRSpawnableMenuValue: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableMenuValue.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.CVRSpawnableTrigger
--- FIXME: Wrapped ABI.CCK.Components.CVRSpawnableTrigger for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field allowedTypes System.String[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field allowParticleInteraction System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field areaOffset UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field areaSize UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field enterTasks System.Collections.Generic.List<ABI.CCK.Components.CVRSpawnableTriggerTask> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field exitTasks System.Collections.Generic.List<ABI.CCK.Components.CVRSpawnableTriggerTask> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field sampleDirection ABI.CCK.Components.CVRSpawnableTrigger.SampleDirection 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field settingIndex System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field settingValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field stayTasks System.Collections.Generic.List<ABI.CCK.Components.CVRSpawnableTriggerTaskStay> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useAdvancedTrigger System.Boolean 
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
CVR.CCK.CVRSpawnableTrigger = {}
CVR.CCK.CVRSpawnableTrigger.allowedTypes = []
CVR.CCK.CVRSpawnableTrigger.allowParticleInteraction = true
CVR.CCK.CVRSpawnableTrigger.areaOffset = nil
CVR.CCK.CVRSpawnableTrigger.areaSize = nil
CVR.CCK.CVRSpawnableTrigger.enterTasks = []
CVR.CCK.CVRSpawnableTrigger.exitTasks = []
CVR.CCK.CVRSpawnableTrigger.sampleDirection = nil
CVR.CCK.CVRSpawnableTrigger.settingIndex = 0
CVR.CCK.CVRSpawnableTrigger.settingValue = 0.0
CVR.CCK.CVRSpawnableTrigger.stayTasks = []
CVR.CCK.CVRSpawnableTrigger.useAdvancedTrigger = true
CVR.CCK.CVRSpawnableTrigger.enabled = true
CVR.CCK.CVRSpawnableTrigger.isActiveAndEnabled = true
CVR.CCK.CVRSpawnableTrigger.gameObject = nil
CVR.CCK.CVRSpawnableTrigger.tag = ""
CVR.CCK.CVRSpawnableTrigger.transform = nil
CVR.CCK.CVRSpawnableTrigger.name = ""

---@param pointer ABI.CCK.Components.CVRPointer: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.EnterTrigger (pointer) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.EnterTrigger () return end

---@param pointer ABI.CCK.Components.CVRPointer: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.EnterTriggerParticle (pointer) return end

---@param pointer ABI.CCK.Components.CVRPointer: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.ExitTrigger (pointer) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.ExitTrigger () return end

---@param pointer ABI.CCK.Components.CVRPointer: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.ExitTriggerParticle (pointer) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.StayTrigger () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.Trigger () return end

---@param x ABI.CCK.Components.CVRSpawnableTrigger: 
---@param y ABI.CCK.Components.CVRSpawnableTrigger: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRSpawnableTrigger: 
---@param y ABI.CCK.Components.CVRSpawnableTrigger: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.ToString () return "" end

---@param exists ABI.CCK.Components.CVRSpawnableTrigger: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTrigger.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRSpawnableTriggerTask
--- FIXME: Wrapped ABI.CCK.Components.CVRSpawnableTriggerTask for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field delay System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field holdTime System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field settingIndex System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field settingValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spawnable ABI.CCK.Components.CVRSpawnable 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field updateMethod ABI.CCK.Components.CVRSpawnableTriggerTask.UpdateMethod 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.CVRSpawnableTriggerTask = {}
CVR.CCK.CVRSpawnableTriggerTask.delay = 0.0
CVR.CCK.CVRSpawnableTriggerTask.holdTime = 0.0
CVR.CCK.CVRSpawnableTriggerTask.settingIndex = 0
CVR.CCK.CVRSpawnableTriggerTask.settingValue = 0.0
CVR.CCK.CVRSpawnableTriggerTask.spawnable = nil
CVR.CCK.CVRSpawnableTriggerTask.updateMethod = nil

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTriggerTask.ClearSchedulerJob () return end

---@param pointer ABI.CCK.Components.CVRPointer: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTriggerTask.ExecuteTrigger (pointer) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTriggerTask.Trigger () return end

---@param pointer ABI.CCK.Components.CVRPointer: 
---@param exit System.Boolean: 
---@param time System.Single: 
---@param isExitTrigger System.Boolean: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTriggerTask.Trigger (pointer, exit, time, isExitTrigger) return true end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTriggerTask.TriggerDelayed () return end

---@param deltaTime System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTriggerTask.Update (deltaTime) return end

---@param x ABI.CCK.Components.CVRSpawnableTriggerTask: 
---@param y ABI.CCK.Components.CVRSpawnableTriggerTask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTriggerTask.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRSpawnableTriggerTask: 
---@param y ABI.CCK.Components.CVRSpawnableTriggerTask: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTriggerTask.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.CVRSpawnableTriggerTaskStay
--- FIXME: Wrapped ABI.CCK.Components.CVRSpawnableTriggerTaskStay for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field maxValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field minValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field settingIndex System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field spawnable ABI.CCK.Components.CVRSpawnable 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field updateMethod ABI.CCK.Components.CVRSpawnableTriggerTaskStay.UpdateMethod 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.CVRSpawnableTriggerTaskStay = {}
CVR.CCK.CVRSpawnableTriggerTaskStay.maxValue = 0.0
CVR.CCK.CVRSpawnableTriggerTaskStay.minValue = 0.0
CVR.CCK.CVRSpawnableTriggerTaskStay.settingIndex = 0
CVR.CCK.CVRSpawnableTriggerTaskStay.spawnable = nil
CVR.CCK.CVRSpawnableTriggerTaskStay.updateMethod = nil

---@param closestPoint UnityEngine.Vector3: 
---@param sampleDirection ABI.CCK.Components.CVRSpawnableTrigger.SampleDirection: 
---@param collider UnityEngine.Collider: 
---@param pointer ABI.CCK.Components.CVRPointer: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTriggerTaskStay.trigger (closestPoint, sampleDirection, collider, pointer) return end

---@param x ABI.CCK.Components.CVRSpawnableTriggerTaskStay: 
---@param y ABI.CCK.Components.CVRSpawnableTriggerTaskStay: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTriggerTaskStay.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRSpawnableTriggerTaskStay: 
---@param y ABI.CCK.Components.CVRSpawnableTriggerTaskStay: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSpawnableTriggerTaskStay.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.CVRAdvancedAvatarSettingsPointer
--- Wrapped CVRAdvancedAvatarSettingsPointer for Lua and Wasm
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isInternalPointer System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field isLocalPointer System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field parentSpawnable ABI.CCK.Components.CVRSpawnable 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field pickup ABI.CCK.Components.CVRPickupObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field type System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field value System.Single 
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
CVR.CCK.CVRAdvancedAvatarSettingsPointer = {}
CVR.CCK.CVRAdvancedAvatarSettingsPointer.isInternalPointer = true
CVR.CCK.CVRAdvancedAvatarSettingsPointer.isLocalPointer = true
CVR.CCK.CVRAdvancedAvatarSettingsPointer.parentSpawnable = nil
CVR.CCK.CVRAdvancedAvatarSettingsPointer.pickup = nil
CVR.CCK.CVRAdvancedAvatarSettingsPointer.type = ""
CVR.CCK.CVRAdvancedAvatarSettingsPointer.value = 0.0
CVR.CCK.CVRAdvancedAvatarSettingsPointer.enabled = true
CVR.CCK.CVRAdvancedAvatarSettingsPointer.isActiveAndEnabled = true
CVR.CCK.CVRAdvancedAvatarSettingsPointer.gameObject = nil
CVR.CCK.CVRAdvancedAvatarSettingsPointer.tag = ""
CVR.CCK.CVRAdvancedAvatarSettingsPointer.transform = nil
CVR.CCK.CVRAdvancedAvatarSettingsPointer.name = ""

---Constructor for CVR.CCK.CVRAdvancedAvatarSettingsPointer
---@return CVR.CCK.CVRAdvancedAvatarSettingsPointer
function CVR.CCK.NewCVRAdvancedAvatarSettingsPointer() end

---@param x ABI.CCK.Components.CVRAdvancedAvatarSettingsPointer: 
---@param y ABI.CCK.Components.CVRAdvancedAvatarSettingsPointer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRAdvancedAvatarSettingsPointer: 
---@param y ABI.CCK.Components.CVRAdvancedAvatarSettingsPointer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.ToString () return "" end

---@param exists ABI.CCK.Components.CVRAdvancedAvatarSettingsPointer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAdvancedAvatarSettingsPointer.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRToggleStatePointer
--- FIXME: Wrapped ABI.CCK.Components.CVRToggleStatePointer for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isInternalPointer System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field isLocalPointer System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field parentSpawnable ABI.CCK.Components.CVRSpawnable 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field pickup ABI.CCK.Components.CVRPickupObject 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field type System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field value System.Single 
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
CVR.CCK.CVRToggleStatePointer = {}
CVR.CCK.CVRToggleStatePointer.isInternalPointer = true
CVR.CCK.CVRToggleStatePointer.isLocalPointer = true
CVR.CCK.CVRToggleStatePointer.parentSpawnable = nil
CVR.CCK.CVRToggleStatePointer.pickup = nil
CVR.CCK.CVRToggleStatePointer.type = ""
CVR.CCK.CVRToggleStatePointer.value = 0.0
CVR.CCK.CVRToggleStatePointer.enabled = true
CVR.CCK.CVRToggleStatePointer.isActiveAndEnabled = true
CVR.CCK.CVRToggleStatePointer.gameObject = nil
CVR.CCK.CVRToggleStatePointer.tag = ""
CVR.CCK.CVRToggleStatePointer.transform = nil
CVR.CCK.CVRToggleStatePointer.name = ""

---@param x ABI.CCK.Components.CVRToggleStatePointer: 
---@param y ABI.CCK.Components.CVRToggleStatePointer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRToggleStatePointer: 
---@param y ABI.CCK.Components.CVRToggleStatePointer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.ToString () return "" end

---@param exists ABI.CCK.Components.CVRToggleStatePointer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStatePointer.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRToggleStateTrigger
--- FIXME: Wrapped ABI.CCK.Components.CVRToggleStateTrigger for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field areaOffset UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field areaSize UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field toggleStateID System.Int32 
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
CVR.CCK.CVRToggleStateTrigger = {}
CVR.CCK.CVRToggleStateTrigger.areaOffset = nil
CVR.CCK.CVRToggleStateTrigger.areaSize = nil
CVR.CCK.CVRToggleStateTrigger.toggleStateID = 0
CVR.CCK.CVRToggleStateTrigger.enabled = true
CVR.CCK.CVRToggleStateTrigger.isActiveAndEnabled = true
CVR.CCK.CVRToggleStateTrigger.gameObject = nil
CVR.CCK.CVRToggleStateTrigger.tag = ""
CVR.CCK.CVRToggleStateTrigger.transform = nil
CVR.CCK.CVRToggleStateTrigger.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.Trigger () return end

---@param x ABI.CCK.Components.CVRToggleStateTrigger: 
---@param y ABI.CCK.Components.CVRToggleStateTrigger: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRToggleStateTrigger: 
---@param y ABI.CCK.Components.CVRToggleStateTrigger: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.ToString () return "" end

---@param exists ABI.CCK.Components.CVRToggleStateTrigger: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRToggleStateTrigger.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.Damage
--- FIXME: Wrapped ABI.CCK.Components.Damage for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorMultiplier System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field damageAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field damageOverTimeAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field damageOverTimeContact System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field damageOverTimeDuration System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field damageType ABI.CCK.Components.Damage.DamageType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field enableFalloff System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field falloffCurve UnityEngine.AnimationCurve 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field falloffDistance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field falloffEffectDamageOverTime System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthMultiplier System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldMultiplier System.Single 
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
CVR.CCK.Damage = {}
CVR.CCK.Damage.armorMultiplier = 0.0
CVR.CCK.Damage.damageAmount = 0.0
CVR.CCK.Damage.damageOverTimeAmount = 0.0
CVR.CCK.Damage.damageOverTimeContact = true
CVR.CCK.Damage.damageOverTimeDuration = 0.0
CVR.CCK.Damage.damageType = nil
CVR.CCK.Damage.enableFalloff = true
CVR.CCK.Damage.falloffCurve = nil
CVR.CCK.Damage.falloffDistance = 0.0
CVR.CCK.Damage.falloffEffectDamageOverTime = true
CVR.CCK.Damage.healthMultiplier = 0.0
CVR.CCK.Damage.shieldMultiplier = 0.0
CVR.CCK.Damage.enabled = true
CVR.CCK.Damage.isActiveAndEnabled = true
CVR.CCK.Damage.gameObject = nil
CVR.CCK.Damage.tag = ""
CVR.CCK.Damage.transform = nil
CVR.CCK.Damage.name = ""

---@param x ABI.CCK.Components.Damage: 
---@param y ABI.CCK.Components.Damage: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.Damage: 
---@param y ABI.CCK.Components.Damage: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.ToString () return "" end

---@param exists ABI.CCK.Components.Damage: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Damage.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.FluidVolume
--- FIXME: Wrapped ABI.CCK.Components.FluidVolume for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field density System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field depth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field extend UnityEngine.Vector2 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field placeFromCenter System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field splashParticleSystem UnityEngine.ParticleSystem 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field streamAngle System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field streamStrength System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field streamType ABI.CCK.Components.FluidVolume.StreamType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field volumeType ABI.CCK.Components.FluidVolume.VolumeType 
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
CVR.CCK.FluidVolume = {}
CVR.CCK.FluidVolume.density = 0.0
CVR.CCK.FluidVolume.depth = 0.0
CVR.CCK.FluidVolume.extend = nil
CVR.CCK.FluidVolume.placeFromCenter = true
CVR.CCK.FluidVolume.splashParticleSystem = nil
CVR.CCK.FluidVolume.streamAngle = 0.0
CVR.CCK.FluidVolume.streamStrength = 0.0
CVR.CCK.FluidVolume.streamType = nil
CVR.CCK.FluidVolume.volumeType = nil
CVR.CCK.FluidVolume.enabled = true
CVR.CCK.FluidVolume.isActiveAndEnabled = true
CVR.CCK.FluidVolume.gameObject = nil
CVR.CCK.FluidVolume.tag = ""
CVR.CCK.FluidVolume.transform = nil
CVR.CCK.FluidVolume.name = ""

---@param position UnityEngine.Vector3: 
---@param size System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.CreateSplash (position, size) return end

---@return UnityEngine.Collider
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetMainCollider () return nil end

---@param pos UnityEngine.Vector3: 
---@return UnityEngine.Vector3
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetStreamForce (pos) return nil end

---@param point UnityEngine.Vector3: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.IsInside (point) return true end

---@param collider UnityEngine.Collider: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.IsMainTrigger (collider) return true end

---@param x ABI.CCK.Components.FluidVolume: 
---@param y ABI.CCK.Components.FluidVolume: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.FluidVolume: 
---@param y ABI.CCK.Components.FluidVolume: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.ToString () return "" end

---@param exists ABI.CCK.Components.FluidVolume: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.FluidVolume.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.ForceApplicator
--- FIXME: Wrapped ABI.CCK.Components.ForceApplicator for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field forceVector UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field onlyWhenSubmerged System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field strength System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field target UnityEngine.Rigidbody 
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
CVR.CCK.ForceApplicator = {}
CVR.CCK.ForceApplicator.forceVector = nil
CVR.CCK.ForceApplicator.onlyWhenSubmerged = true
CVR.CCK.ForceApplicator.strength = 0.0
CVR.CCK.ForceApplicator.target = nil
CVR.CCK.ForceApplicator.enabled = true
CVR.CCK.ForceApplicator.isActiveAndEnabled = true
CVR.CCK.ForceApplicator.gameObject = nil
CVR.CCK.ForceApplicator.tag = ""
CVR.CCK.ForceApplicator.transform = nil
CVR.CCK.ForceApplicator.name = ""

---@param x ABI.CCK.Components.ForceApplicator: 
---@param y ABI.CCK.Components.ForceApplicator: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.ForceApplicator: 
---@param y ABI.CCK.Components.ForceApplicator: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.ToString () return "" end

---@param exists ABI.CCK.Components.ForceApplicator: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ForceApplicator.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.GameInstanceController
--- FIXME: Wrapped ABI.CCK.Components.GameInstanceController for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field autoBalanceTeams System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field balanceTeamJoin System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field endCondition ABI.CCK.Components.GameInstanceController.EndCondition 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field endScore System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field endTime System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gameControllerType ABI.CCK.Components.GameInstanceController.GameControllerType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gameEnded UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gameStarted UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gameType ABI.CCK.Components.GameInstanceController.GameType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field readyPercentage System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field readyTimer System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field referenceID System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field roundEnded UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field roundStarted UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field roundsToWin System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ScoreBoardControllers System.Collections.Generic.List<ABI.CCK.Components.ScoreBoardController> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field teams System.Collections.Generic.List<ABI.CCK.Components.Team> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field useTeams System.Boolean 
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
CVR.CCK.GameInstanceController = {}
CVR.CCK.GameInstanceController.autoBalanceTeams = true
CVR.CCK.GameInstanceController.balanceTeamJoin = true
CVR.CCK.GameInstanceController.endCondition = nil
CVR.CCK.GameInstanceController.endScore = 0
CVR.CCK.GameInstanceController.endTime = 0
CVR.CCK.GameInstanceController.gameControllerType = nil
CVR.CCK.GameInstanceController.gameEnded = nil
CVR.CCK.GameInstanceController.gameStarted = nil
CVR.CCK.GameInstanceController.gameType = nil
CVR.CCK.GameInstanceController.readyPercentage = 0.0
CVR.CCK.GameInstanceController.readyTimer = 0
CVR.CCK.GameInstanceController.referenceID = ""
CVR.CCK.GameInstanceController.roundEnded = nil
CVR.CCK.GameInstanceController.roundStarted = nil
CVR.CCK.GameInstanceController.roundsToWin = 0
CVR.CCK.GameInstanceController.ScoreBoardControllers = []
CVR.CCK.GameInstanceController.teams = []
CVR.CCK.GameInstanceController.useTeams = true
CVR.CCK.GameInstanceController.enabled = true
CVR.CCK.GameInstanceController.isActiveAndEnabled = true
CVR.CCK.GameInstanceController.gameObject = nil
CVR.CCK.GameInstanceController.tag = ""
CVR.CCK.GameInstanceController.transform = nil
CVR.CCK.GameInstanceController.name = ""

---@param score System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.EnemyScore (score) return end

---@param winningTeam System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GameEnded (winningTeam) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GameStarted () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.JoinTeamAutoBalance () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.LeaveTeam () return end

---@param score System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.OwnScore (score) return end

---@param winningTeam System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.RoundEnded (winningTeam) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.RoundStarted () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.StartGame () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.ToggleReady () return end

---@param teamIndex System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.TryJoinTeam (teamIndex) return end

---@param gameState System.Int16: 
---@param timer System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.UpdateStatus (gameState, timer) return end

---@param team ABI.CCK.Components.Team: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.UpdateTeamList (team) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.UpdateTeamScores () return end

---@param x ABI.CCK.Components.GameInstanceController: 
---@param y ABI.CCK.Components.GameInstanceController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.GameInstanceController: 
---@param y ABI.CCK.Components.GameInstanceController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.ToString () return "" end

---@param exists ABI.CCK.Components.GameInstanceController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GameInstanceController.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.GravityZone
--- FIXME: Wrapped ABI.CCK.Components.GravityZone for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field center UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gravityDirection ABI.CCK.Components.GravityZone.GravityDirection 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gravityEffect ABI.CCK.Components.GravityZone.GravityEffect 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gravityFalloff UnityEngine.AnimationCurve 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gravityMix ABI.CCK.Components.GravityZone.GravityMix 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gravityType ABI.CCK.Components.GravityZone.GravityType 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field playerGravityAlignmentMode ABI_RC.Systems.Gravity.GravitySystem.PlayerAlignmentMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field playerGravityCustomAlignmentValue System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field priority System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field size UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field Strength System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field zoneShape ABI.CCK.Components.GravityZone.ZoneShape 
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
CVR.CCK.GravityZone = {}
CVR.CCK.GravityZone.center = nil
CVR.CCK.GravityZone.gravityDirection = nil
CVR.CCK.GravityZone.gravityEffect = nil
CVR.CCK.GravityZone.gravityFalloff = nil
CVR.CCK.GravityZone.gravityMix = nil
CVR.CCK.GravityZone.gravityType = nil
CVR.CCK.GravityZone.playerGravityAlignmentMode = nil
CVR.CCK.GravityZone.playerGravityCustomAlignmentValue = 0.0
CVR.CCK.GravityZone.priority = 0
CVR.CCK.GravityZone.size = nil
CVR.CCK.GravityZone.Strength = 0.0
CVR.CCK.GravityZone.zoneShape = nil
CVR.CCK.GravityZone.enabled = true
CVR.CCK.GravityZone.isActiveAndEnabled = true
CVR.CCK.GravityZone.gameObject = nil
CVR.CCK.GravityZone.tag = ""
CVR.CCK.GravityZone.transform = nil
CVR.CCK.GravityZone.name = ""

---@param gravityZoneCollider UnityEngine.Collider: 
---@param obj UnityEngine.GameObject: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.EnterCollider (gravityZoneCollider, obj) return end

---@param gravityZoneCollider UnityEngine.Collider: 
---@param obj UnityEngine.GameObject: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.ExitCollider (gravityZoneCollider, obj) return end

---@param obj UnityEngine.GameObject: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.ShouldAffect (obj) return true end

---@param x ABI.CCK.Components.GravityZone: 
---@param y ABI.CCK.Components.GravityZone: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.GravityZone: 
---@param y ABI.CCK.Components.GravityZone: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.ToString () return "" end

---@param exists ABI.CCK.Components.GravityZone: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GravityZone.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.GunController
--- FIXME: Wrapped ABI.CCK.Components.GunController for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ammoCapacity System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field emptyShootSounds System.Collections.Generic.List<UnityEngine.AudioClip> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field firingMode ABI.CCK.Components.GunController.FiringMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field firingRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field hitDetection ABI.CCK.Components.GunController.HitDetection 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field hitMask UnityEngine.LayerMask 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field lastPlayerFired System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field magazineSize System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field referenceID System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field reloadSounds System.Collections.Generic.List<UnityEngine.AudioClip> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field reloadTime System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shootSounds System.Collections.Generic.List<UnityEngine.AudioClip> 
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
CVR.CCK.GunController = {}
CVR.CCK.GunController.ammoCapacity = 0
CVR.CCK.GunController.emptyShootSounds = []
CVR.CCK.GunController.firingMode = nil
CVR.CCK.GunController.firingRate = 0.0
CVR.CCK.GunController.hitDetection = nil
CVR.CCK.GunController.hitMask = nil
CVR.CCK.GunController.lastPlayerFired = ""
CVR.CCK.GunController.magazineSize = 0
CVR.CCK.GunController.referenceID = ""
CVR.CCK.GunController.reloadSounds = []
CVR.CCK.GunController.reloadTime = 0.0
CVR.CCK.GunController.shootSounds = []
CVR.CCK.GunController.enabled = true
CVR.CCK.GunController.isActiveAndEnabled = true
CVR.CCK.GunController.gameObject = nil
CVR.CCK.GunController.tag = ""
CVR.CCK.GunController.transform = nil
CVR.CCK.GunController.name = ""

---@param sourceId System.String: 
---@param posX System.Single: 
---@param posY System.Single: 
---@param posZ System.Single: 
---@param rotX System.Single: 
---@param rotY System.Single: 
---@param rotZ System.Single: 
---@param type System.UInt16: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.executeNetworkFire (sourceId, posX, posY, posZ, rotX, rotY, rotZ, type) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.ExecuteReload () return end

---@param amount System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GrantMagazineAmmo (amount) return end

---@param amount System.Int32: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GrantReserveAmmo (amount) return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.Reload () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.Shoot () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.ShootDown () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.ShootUp () return end

---@param x ABI.CCK.Components.GunController: 
---@param y ABI.CCK.Components.GunController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.GunController: 
---@param y ABI.CCK.Components.GunController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.ToString () return "" end

---@param exists ABI.CCK.Components.GunController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.GunController.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.ObjectHealth
--- FIXME: Wrapped ABI.CCK.Components.ObjectHealth for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field ColliderIndex System.Collections.Generic.Dictionary<UnityEngine.Collider, ABI.CCK.Components.ObjectHealth> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field connectedGameInstance ABI.CCK.Components.GameInstanceController 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field downBehavior ABI.CCK.Components.ObjectHealth.DownBehavior 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field downEvent UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field inheritedID System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field respawnEvent UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field respawnPoint UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field respawnTime System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorBaseAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorMaxAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorRegenerationCap System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorRegenerationDelay System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorRegenerationRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field armorRegenerationTimer System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field controlMode ABI.CCK.Scripts.Health.ControlMode 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field currentArmor System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field currentHealth System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field currentShield System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field damageReceivedEvent UnityEngine.Events.UnityEvent 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthBaseAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthMaxAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthRegenerationCap System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthRegenerationDelay System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthRegenerationRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field healthRegenerationTimer System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field isDown System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field RecentHits System.Collections.Generic.List<ABI.CCK.Components.Data.DamageHit> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field referenceID System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldBaseAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldMaxAmount System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldRegenerationCap System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldRegenerationDelay System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldRegenerationRate System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field shieldRegenerationTimer System.Single 
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
CVR.CCK.ObjectHealth = {}
CVR.CCK.ObjectHealth.ColliderIndex = {}
CVR.CCK.ObjectHealth.connectedGameInstance = nil
CVR.CCK.ObjectHealth.downBehavior = nil
CVR.CCK.ObjectHealth.downEvent = nil
CVR.CCK.ObjectHealth.inheritedID = ""
CVR.CCK.ObjectHealth.respawnEvent = nil
CVR.CCK.ObjectHealth.respawnPoint = nil
CVR.CCK.ObjectHealth.respawnTime = 0.0
CVR.CCK.ObjectHealth.armorBaseAmount = 0.0
CVR.CCK.ObjectHealth.armorMaxAmount = 0.0
CVR.CCK.ObjectHealth.armorRegenerationCap = 0.0
CVR.CCK.ObjectHealth.armorRegenerationDelay = 0.0
CVR.CCK.ObjectHealth.armorRegenerationRate = 0.0
CVR.CCK.ObjectHealth.armorRegenerationTimer = 0.0
CVR.CCK.ObjectHealth.controlMode = nil
CVR.CCK.ObjectHealth.currentArmor = 0.0
CVR.CCK.ObjectHealth.currentHealth = 0.0
CVR.CCK.ObjectHealth.currentShield = 0.0
CVR.CCK.ObjectHealth.damageReceivedEvent = nil
CVR.CCK.ObjectHealth.healthBaseAmount = 0.0
CVR.CCK.ObjectHealth.healthMaxAmount = 0.0
CVR.CCK.ObjectHealth.healthRegenerationCap = 0.0
CVR.CCK.ObjectHealth.healthRegenerationDelay = 0.0
CVR.CCK.ObjectHealth.healthRegenerationRate = 0.0
CVR.CCK.ObjectHealth.healthRegenerationTimer = 0.0
CVR.CCK.ObjectHealth.isDown = true
CVR.CCK.ObjectHealth.RecentHits = []
CVR.CCK.ObjectHealth.referenceID = ""
CVR.CCK.ObjectHealth.shieldBaseAmount = 0.0
CVR.CCK.ObjectHealth.shieldMaxAmount = 0.0
CVR.CCK.ObjectHealth.shieldRegenerationCap = 0.0
CVR.CCK.ObjectHealth.shieldRegenerationDelay = 0.0
CVR.CCK.ObjectHealth.shieldRegenerationRate = 0.0
CVR.CCK.ObjectHealth.shieldRegenerationTimer = 0.0
CVR.CCK.ObjectHealth.enabled = true
CVR.CCK.ObjectHealth.isActiveAndEnabled = true
CVR.CCK.ObjectHealth.gameObject = nil
CVR.CCK.ObjectHealth.tag = ""
CVR.CCK.ObjectHealth.transform = nil
CVR.CCK.ObjectHealth.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.Down () return end

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.Respawn () return end

---@param x ABI.CCK.Components.ObjectHealth: 
---@param y ABI.CCK.Components.ObjectHealth: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.ObjectHealth: 
---@param y ABI.CCK.Components.ObjectHealth: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.op_Inequality (x, y) return true end -- static

---@param other UnityEngine.GameObject: 
---@param position UnityEngine.Vector3: 
---@param hitPosition System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.ApplyDamageFromLocation (other, position, hitPosition) return end

---@param damage ABI.CCK.Components.Damage: 
---@param location System.Nullable<UnityEngine.Vector3>: 
---@param hitPosition System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.DealDamage (damage, location, hitPosition) return end

---@param damage ABI.CCK.Components.Damage: 
---@param amount System.Single: 
---@param location System.Nullable<UnityEngine.Vector3>: 
---@param hitPosition System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.DealDamage (damage, amount, location, hitPosition) return end

---@param amount System.Single: 
---@param damageType ABI.CCK.Components.Damage.DamageType: 
---@param healthMultiplier System.Single: 
---@param armorMultiplier System.Single: 
---@param shieldMultiplier System.Single: 
---@param playerID System.String: 
---@param location System.Nullable<UnityEngine.Vector3>: 
---@param enableFalloff System.Boolean: 
---@param falloffDistance System.Single: 
---@param falloffCurve UnityEngine.AnimationCurve: 
---@param hitPosition System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.DealDamage (amount, damageType, healthMultiplier, armorMultiplier, shieldMultiplier, playerID, location, enableFalloff, falloffDistance, falloffCurve, hitPosition) return end

---@param amount System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.DealDamageManually (amount) return end

---@param damage ABI.CCK.Components.Damage: 
---@param position System.Nullable<UnityEngine.Vector3>: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.DealDamageOverTime (damage, position) return end

---@param playerID System.String: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.Down (playerID) return end

---@param other UnityEngine.GameObject: 
---@param particleCollisionEvents System.Collections.Generic.List<UnityEngine.ParticleCollisionEvent>: 
---@param particleSystem UnityEngine.ParticleSystem: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.OnParticleCollisionEv (other, particleCollisionEvents, particleSystem) return end

---@param offset System.Single: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.ResetDamageTimers (offset) return end

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.ToString () return "" end

---@param exists ABI.CCK.Components.ObjectHealth: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ObjectHealth.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.PlayerMaterialParser
--- FIXME: Wrapped ABI.CCK.Components.PlayerMaterialParser for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field playerChestPositions System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PlayerChestPositions UnityEngine.Vector4[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field playerHeadPositions System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PlayerHeadPositions UnityEngine.Vector4[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field playerHipPositions System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PlayerHipPositions UnityEngine.Vector4[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field playerLeftFootPositions System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PlayerLeftFootPositions UnityEngine.Vector4[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field playerLeftHandPositions System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PlayerLeftHandPositions UnityEngine.Vector4[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field PlayerMaxCapacity System.Int32 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field playerRightFootPositions System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PlayerRightFootPositions UnityEngine.Vector4[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field playerRightHandPositions System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PlayerRightHandPositions UnityEngine.Vector4[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field playerRootPositions System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field PlayerRootPositions UnityEngine.Vector4[] 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set NONE NONE NONE
---@field targetMaterial UnityEngine.Material 
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
CVR.CCK.PlayerMaterialParser = {}
CVR.CCK.PlayerMaterialParser.playerChestPositions = ""
CVR.CCK.PlayerMaterialParser.PlayerChestPositions = []
CVR.CCK.PlayerMaterialParser.playerHeadPositions = ""
CVR.CCK.PlayerMaterialParser.PlayerHeadPositions = []
CVR.CCK.PlayerMaterialParser.playerHipPositions = ""
CVR.CCK.PlayerMaterialParser.PlayerHipPositions = []
CVR.CCK.PlayerMaterialParser.playerLeftFootPositions = ""
CVR.CCK.PlayerMaterialParser.PlayerLeftFootPositions = []
CVR.CCK.PlayerMaterialParser.playerLeftHandPositions = ""
CVR.CCK.PlayerMaterialParser.PlayerLeftHandPositions = []
CVR.CCK.PlayerMaterialParser.PlayerMaxCapacity = 0
CVR.CCK.PlayerMaterialParser.playerRightFootPositions = ""
CVR.CCK.PlayerMaterialParser.PlayerRightFootPositions = []
CVR.CCK.PlayerMaterialParser.playerRightHandPositions = ""
CVR.CCK.PlayerMaterialParser.PlayerRightHandPositions = []
CVR.CCK.PlayerMaterialParser.playerRootPositions = ""
CVR.CCK.PlayerMaterialParser.PlayerRootPositions = []
CVR.CCK.PlayerMaterialParser.targetMaterial = nil
CVR.CCK.PlayerMaterialParser.enabled = true
CVR.CCK.PlayerMaterialParser.isActiveAndEnabled = true
CVR.CCK.PlayerMaterialParser.gameObject = nil
CVR.CCK.PlayerMaterialParser.tag = ""
CVR.CCK.PlayerMaterialParser.transform = nil
CVR.CCK.PlayerMaterialParser.name = ""

---@param x ABI.CCK.Components.PlayerMaterialParser: 
---@param y ABI.CCK.Components.PlayerMaterialParser: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.PlayerMaterialParser: 
---@param y ABI.CCK.Components.PlayerMaterialParser: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.ToString () return "" end

---@param exists ABI.CCK.Components.PlayerMaterialParser: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.PlayerMaterialParser.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.ScoreBoardController
--- FIXME: Wrapped ABI.CCK.Components.ScoreBoardController for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field gameInstanceController ABI.CCK.Components.GameInstanceController 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field roundStatus System.Collections.Generic.List<UnityEngine.UI.Text> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field roundTimers System.Collections.Generic.List<UnityEngine.UI.Text> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field teamElements System.Collections.Generic.List<ABI.CCK.Components.ScoreBoardDisplayElementsTeam> 
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
CVR.CCK.ScoreBoardController = {}
CVR.CCK.ScoreBoardController.gameInstanceController = nil
CVR.CCK.ScoreBoardController.roundStatus = []
CVR.CCK.ScoreBoardController.roundTimers = []
CVR.CCK.ScoreBoardController.teamElements = []
CVR.CCK.ScoreBoardController.enabled = true
CVR.CCK.ScoreBoardController.isActiveAndEnabled = true
CVR.CCK.ScoreBoardController.gameObject = nil
CVR.CCK.ScoreBoardController.tag = ""
CVR.CCK.ScoreBoardController.transform = nil
CVR.CCK.ScoreBoardController.name = ""

---@param x ABI.CCK.Components.ScoreBoardController: 
---@param y ABI.CCK.Components.ScoreBoardController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.ScoreBoardController: 
---@param y ABI.CCK.Components.ScoreBoardController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.ToString () return "" end

---@param exists ABI.CCK.Components.ScoreBoardController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardController.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.ScoreBoardDisplayElementsTeam
--- FIXME: Wrapped ABI.CCK.Components.ScoreBoardDisplayElementsTeam for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field playerLists System.Collections.Generic.List<UnityEngine.UI.Text> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field teamScore System.Collections.Generic.List<UnityEngine.UI.Text> 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.ScoreBoardDisplayElementsTeam = {}
CVR.CCK.ScoreBoardDisplayElementsTeam.playerLists = []
CVR.CCK.ScoreBoardDisplayElementsTeam.teamScore = []

---@param x ABI.CCK.Components.ScoreBoardDisplayElementsTeam: 
---@param y ABI.CCK.Components.ScoreBoardDisplayElementsTeam: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardDisplayElementsTeam.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.ScoreBoardDisplayElementsTeam: 
---@param y ABI.CCK.Components.ScoreBoardDisplayElementsTeam: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.ScoreBoardDisplayElementsTeam.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.SnappingReference
--- FIXME: Wrapped ABI.CCK.Components.SnappingReference for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field allowedType System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field distance System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field point ABI.CCK.Components.CVRSnappingPoint 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field referencePoint UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field target UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.SnappingReference = {}
CVR.CCK.SnappingReference.allowedType = ""
CVR.CCK.SnappingReference.distance = 0.0
CVR.CCK.SnappingReference.point = nil
CVR.CCK.SnappingReference.referencePoint = nil
CVR.CCK.SnappingReference.target = nil

---@param x ABI.CCK.Components.SnappingReference: 
---@param y ABI.CCK.Components.SnappingReference: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SnappingReference.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.SnappingReference: 
---@param y ABI.CCK.Components.SnappingReference: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SnappingReference.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.DamageHit
--- FIXME: Wrapped ABI.CCK.Components.Data.DamageHit for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field damage System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field origin UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field position UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.DamageHit = {}
CVR.CCK.DamageHit.damage = 0.0
CVR.CCK.DamageHit.origin = nil
CVR.CCK.DamageHit.position = nil

---@param x ABI.CCK.Components.Data.DamageHit: 
---@param y ABI.CCK.Components.Data.DamageHit: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.DamageHit.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.Data.DamageHit: 
---@param y ABI.CCK.Components.Data.DamageHit: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.DamageHit.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.CVRSharedPhysicsController
--- FIXME: Wrapped ABI.CCK.Components.CVRSharedPhysicsController for Lua and WASM
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
CVR.CCK.CVRSharedPhysicsController = {}
CVR.CCK.CVRSharedPhysicsController.enabled = true
CVR.CCK.CVRSharedPhysicsController.isActiveAndEnabled = true
CVR.CCK.CVRSharedPhysicsController.gameObject = nil
CVR.CCK.CVRSharedPhysicsController.tag = ""
CVR.CCK.CVRSharedPhysicsController.transform = nil
CVR.CCK.CVRSharedPhysicsController.name = ""

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetCurrentIsKinematic () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetCurrentUseGravity () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetDefaultIsKinematic () return true end

---@return ABI.CCK.Components.CollisionWithPlayer
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetDefaultPlayerCollisionMode () return nil end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetDefaultUseGravity () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.IsAttached () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.IsGravityAppliedByPhysicsInfluencer () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.IsPickedUp () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.IsPlayerCollisionDisabled () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.IsRemoteSynced () return true end

---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.IsRestoringPlayerCollision () return true end

---@param isKinematic System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.SetDefaultIsKinematic (isKinematic) return end

---@param collisionMode ABI.CCK.Components.CollisionWithPlayer: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.SetDefaultPlayerCollisionMode (collisionMode) return end

---@param useGravity System.Boolean: 
---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.SetDefaultUseGravity (useGravity) return end

---@param x ABI.CCK.Components.CVRSharedPhysicsController: 
---@param y ABI.CCK.Components.CVRSharedPhysicsController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRSharedPhysicsController: 
---@param y ABI.CCK.Components.CVRSharedPhysicsController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.ToString () return "" end

---@param exists ABI.CCK.Components.CVRSharedPhysicsController: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSharedPhysicsController.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRSkyboxManipulator
--- FIXME: Wrapped ABI.CCK.Components.CVRSkyboxManipulator for Lua and WASM
--- @access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field AlignToWorldSpace System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field CenterOnEye System.Single 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LocalPosition UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LocalRotation UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field LocalScale UnityEngine.Vector3 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field OriginTransform UnityEngine.Transform 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field SkyboxMaterial UnityEngine.Material 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field SkyboxMesh UnityEngine.Mesh 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field UseCustomSkyboxMaterial System.Boolean 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field UseCustomSkyboxMesh System.Boolean 
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
CVR.CCK.CVRSkyboxManipulator = {}
CVR.CCK.CVRSkyboxManipulator.AlignToWorldSpace = true
CVR.CCK.CVRSkyboxManipulator.CenterOnEye = 0.0
CVR.CCK.CVRSkyboxManipulator.LocalPosition = nil
CVR.CCK.CVRSkyboxManipulator.LocalRotation = nil
CVR.CCK.CVRSkyboxManipulator.LocalScale = nil
CVR.CCK.CVRSkyboxManipulator.OriginTransform = nil
CVR.CCK.CVRSkyboxManipulator.SkyboxMaterial = nil
CVR.CCK.CVRSkyboxManipulator.SkyboxMesh = nil
CVR.CCK.CVRSkyboxManipulator.UseCustomSkyboxMaterial = true
CVR.CCK.CVRSkyboxManipulator.UseCustomSkyboxMesh = true
CVR.CCK.CVRSkyboxManipulator.enabled = true
CVR.CCK.CVRSkyboxManipulator.isActiveAndEnabled = true
CVR.CCK.CVRSkyboxManipulator.gameObject = nil
CVR.CCK.CVRSkyboxManipulator.tag = ""
CVR.CCK.CVRSkyboxManipulator.transform = nil
CVR.CCK.CVRSkyboxManipulator.name = ""

---@return void
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.ForceUpdate () return end

---@param x ABI.CCK.Components.CVRSkyboxManipulator: 
---@param y ABI.CCK.Components.CVRSkyboxManipulator: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRSkyboxManipulator: 
---@param y ABI.CCK.Components.CVRSkyboxManipulator: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.ToString () return "" end

---@param exists ABI.CCK.Components.CVRSkyboxManipulator: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRSkyboxManipulator.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRBlitter
--- FIXME: Wrapped CVRBlitter for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field blitMaterial UnityEngine.Material 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field clearEveryFrame System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field destinationTexture UnityEngine.RenderTexture 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field originTexture UnityEngine.RenderTexture 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.CVRBlitter = {}
CVR.CCK.CVRBlitter.blitMaterial = nil
CVR.CCK.CVRBlitter.clearEveryFrame = true
CVR.CCK.CVRBlitter.destinationTexture = nil
CVR.CCK.CVRBlitter.originTexture = nil
CVR.CCK.CVRBlitter.enabled = true
CVR.CCK.CVRBlitter.isActiveAndEnabled = true
CVR.CCK.CVRBlitter.gameObject = nil
CVR.CCK.CVRBlitter.tag = ""
CVR.CCK.CVRBlitter.transform = nil
CVR.CCK.CVRBlitter.name = ""

---@param x CVRBlitter: 
---@param y CVRBlitter: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.op_Equality (x, y) return true end -- static

---@param x CVRBlitter: 
---@param y CVRBlitter: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.ToString () return "" end

---@param exists CVRBlitter: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRBlitter.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRAssetInfo
--- FIXME: Wrapped ABI.CCK.Components.CVRAssetInfo for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field cckVersion System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field objectId System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field type ABI.CCK.Components.CVRAssetInfo.AssetType 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field unityVersion System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.CVRAssetInfo = {}
CVR.CCK.CVRAssetInfo.cckVersion = ""
CVR.CCK.CVRAssetInfo.objectId = ""
CVR.CCK.CVRAssetInfo.type = nil
CVR.CCK.CVRAssetInfo.unityVersion = ""
CVR.CCK.CVRAssetInfo.enabled = true
CVR.CCK.CVRAssetInfo.isActiveAndEnabled = true
CVR.CCK.CVRAssetInfo.gameObject = nil
CVR.CCK.CVRAssetInfo.tag = ""
CVR.CCK.CVRAssetInfo.transform = nil
CVR.CCK.CVRAssetInfo.name = ""

---@param x ABI.CCK.Components.CVRAssetInfo: 
---@param y ABI.CCK.Components.CVRAssetInfo: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRAssetInfo: 
---@param y ABI.CCK.Components.CVRAssetInfo: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.ToString () return "" end

---@param exists ABI.CCK.Components.CVRAssetInfo: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAssetInfo.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRAttachment
--- FIXME: Wrapped ABI.CCK.Components.CVRAttachment for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field attachmentType ABI.CCK.Components.CVRAttachment.AttachmentType 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field boneType ABI.CCK.Components.CVRAttachment.BoneType 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field maxAttachmentDistance System.Single 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field normalizeBoneAttachment System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field positionOffset UnityEngine.Vector3 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field rotationOffset UnityEngine.Vector3 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field snappingPointTypes System.Collections.Generic.List<System.String> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field trackerType ABI.CCK.Components.CVRAttachment.TrackerType 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field useFixedPositionOffset System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field useFixedRotationOffset System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.CVRAttachment = {}
CVR.CCK.CVRAttachment.attachmentType = nil
CVR.CCK.CVRAttachment.boneType = nil
CVR.CCK.CVRAttachment.maxAttachmentDistance = 0.0
CVR.CCK.CVRAttachment.normalizeBoneAttachment = true
CVR.CCK.CVRAttachment.positionOffset = nil
CVR.CCK.CVRAttachment.rotationOffset = nil
CVR.CCK.CVRAttachment.snappingPointTypes = []
CVR.CCK.CVRAttachment.trackerType = nil
CVR.CCK.CVRAttachment.useFixedPositionOffset = true
CVR.CCK.CVRAttachment.useFixedRotationOffset = true
CVR.CCK.CVRAttachment.enabled = true
CVR.CCK.CVRAttachment.isActiveAndEnabled = true
CVR.CCK.CVRAttachment.gameObject = nil
CVR.CCK.CVRAttachment.tag = ""
CVR.CCK.CVRAttachment.transform = nil
CVR.CCK.CVRAttachment.name = ""

---@return System.Boolean
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAttachment.Attach () return true end

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAttachment.DeAttach () return end

---@return System.Boolean
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAttachment.IsAttached () return true end

---@param x ABI.CCK.Components.CVRAttachment: 
---@param y ABI.CCK.Components.CVRAttachment: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRAttachment: 
---@param y ABI.CCK.Components.CVRAttachment: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.ToString () return "" end

---@param exists ABI.CCK.Components.CVRAttachment: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAttachment.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRAudioDriver
--- FIXME: Wrapped ABI.CCK.Components.CVRAudioDriver for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field audioClips System.Collections.Generic.List<UnityEngine.AudioClip> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field audioSource UnityEngine.AudioSource 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field playOnSwitch System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field selectedAudioClip System.Int32 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.CVRAudioDriver = {}
CVR.CCK.CVRAudioDriver.audioClips = []
CVR.CCK.CVRAudioDriver.audioSource = nil
CVR.CCK.CVRAudioDriver.playOnSwitch = true
CVR.CCK.CVRAudioDriver.selectedAudioClip = 0
CVR.CCK.CVRAudioDriver.enabled = true
CVR.CCK.CVRAudioDriver.isActiveAndEnabled = true
CVR.CCK.CVRAudioDriver.gameObject = nil
CVR.CCK.CVRAudioDriver.tag = ""
CVR.CCK.CVRAudioDriver.transform = nil
CVR.CCK.CVRAudioDriver.name = ""

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.PlayNext () return end

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.PlayPrev () return end

---@param index System.Int32: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.PlaySound (index) return end

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.PlaySound () return end

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.SelectRandomSound () return end

---@param x ABI.CCK.Components.CVRAudioDriver: 
---@param y ABI.CCK.Components.CVRAudioDriver: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRAudioDriver: 
---@param y ABI.CCK.Components.CVRAudioDriver: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.ToString () return "" end

---@param exists ABI.CCK.Components.CVRAudioDriver: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAudioDriver.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRAvatar
--- FIXME: Wrapped ABI.CCK.Components.CVRAvatar for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field AssetInfo ABI.CCK.Components.CVRAssetInfo 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field blinkDuration UnityEngine.Vector2 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field blinkGap UnityEngine.Vector2 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field eyeMovementInterval UnityEngine.Vector2 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field faceTrackingComponents System.Collections.Generic.List<ABI.CCK.Components.CVRFaceTracking> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field leftGrabPointer UnityEngine.GameObject 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field leftIndexPointer UnityEngine.GameObject 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field mouthPointer UnityEngine.GameObject 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field overrides UnityEngine.AnimatorOverrideController 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field rightGrabPointer UnityEngine.GameObject 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field rightIndexPointer UnityEngine.GameObject 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field useBlinkBlendshapes System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field useEyeMovement System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field useVisemeLipsync System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field viewPosition UnityEngine.Vector3 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field visemeMode ABI.CCK.Components.CVRAvatar.CVRAvatarVisemeMode 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field voiceParent ABI.CCK.Components.CVRAvatar.CVRAvatarVoiceParent 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field voicePosition UnityEngine.Vector3 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field WornByFriend System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field WornByMe System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.CVRAvatar = {}
CVR.CCK.CVRAvatar.AssetInfo = nil
CVR.CCK.CVRAvatar.blinkDuration = nil
CVR.CCK.CVRAvatar.blinkGap = nil
CVR.CCK.CVRAvatar.eyeMovementInterval = nil
CVR.CCK.CVRAvatar.faceTrackingComponents = []
CVR.CCK.CVRAvatar.leftGrabPointer = nil
CVR.CCK.CVRAvatar.leftIndexPointer = nil
CVR.CCK.CVRAvatar.mouthPointer = nil
CVR.CCK.CVRAvatar.overrides = nil
CVR.CCK.CVRAvatar.rightGrabPointer = nil
CVR.CCK.CVRAvatar.rightIndexPointer = nil
CVR.CCK.CVRAvatar.useBlinkBlendshapes = true
CVR.CCK.CVRAvatar.useEyeMovement = true
CVR.CCK.CVRAvatar.useVisemeLipsync = true
CVR.CCK.CVRAvatar.viewPosition = nil
CVR.CCK.CVRAvatar.visemeMode = nil
CVR.CCK.CVRAvatar.voiceParent = nil
CVR.CCK.CVRAvatar.voicePosition = nil
CVR.CCK.CVRAvatar.WornByFriend = true
CVR.CCK.CVRAvatar.WornByMe = true
CVR.CCK.CVRAvatar.enabled = true
CVR.CCK.CVRAvatar.isActiveAndEnabled = true
CVR.CCK.CVRAvatar.gameObject = nil
CVR.CCK.CVRAvatar.tag = ""
CVR.CCK.CVRAvatar.transform = nil
CVR.CCK.CVRAvatar.name = ""

---@return UnityEngine.Vector3
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetViewRelativePosition () return nil end

---@return UnityEngine.Vector3
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetViewWorldPosition () return nil end

---@return UnityEngine.Vector3
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetVoiceWorldPosition () return nil end

---@param x ABI.CCK.Components.CVRAvatar: 
---@param y ABI.CCK.Components.CVRAvatar: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRAvatar: 
---@param y ABI.CCK.Components.CVRAvatar: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.ToString () return "" end

---@param exists ABI.CCK.Components.CVRAvatar: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatar.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRAvatarAdvancedTaggingEntry
--- FIXME: Wrapped ABI.CCK.Components.CVRAvatarAdvancedTaggingEntry for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field fallbackGameObject UnityEngine.GameObject 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field gameObject UnityEngine.GameObject 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field tags ABI.CCK.Components.CVRAvatarAdvancedTaggingEntry.Tags 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
CVR.CCK.CVRAvatarAdvancedTaggingEntry = {}
CVR.CCK.CVRAvatarAdvancedTaggingEntry.fallbackGameObject = nil
CVR.CCK.CVRAvatarAdvancedTaggingEntry.gameObject = nil
CVR.CCK.CVRAvatarAdvancedTaggingEntry.tags = nil

---@param x ABI.CCK.Components.CVRAvatarAdvancedTaggingEntry: 
---@param y ABI.CCK.Components.CVRAvatarAdvancedTaggingEntry: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarAdvancedTaggingEntry.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRAvatarAdvancedTaggingEntry: 
---@param y ABI.CCK.Components.CVRAvatarAdvancedTaggingEntry: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarAdvancedTaggingEntry.op_Inequality (x, y) return true end -- static

--- @class CVR.CCK.CVRAvatarPickupMarker
--- FIXME: Wrapped ABI.CCK.Components.CVRAvatarPickupMarker for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field avatarGuid System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.CVRAvatarPickupMarker = {}
CVR.CCK.CVRAvatarPickupMarker.avatarGuid = ""
CVR.CCK.CVRAvatarPickupMarker.enabled = true
CVR.CCK.CVRAvatarPickupMarker.isActiveAndEnabled = true
CVR.CCK.CVRAvatarPickupMarker.gameObject = nil
CVR.CCK.CVRAvatarPickupMarker.tag = ""
CVR.CCK.CVRAvatarPickupMarker.transform = nil
CVR.CCK.CVRAvatarPickupMarker.name = ""

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.ChangeAvatar () return end

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.ShowAvatarDetailsPage () return end

---@param guid System.String: 
---@return System.Boolean
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.TrySetGuid (guid) return true end

---@param x ABI.CCK.Components.CVRAvatarPickupMarker: 
---@param y ABI.CCK.Components.CVRAvatarPickupMarker: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRAvatarPickupMarker: 
---@param y ABI.CCK.Components.CVRAvatarPickupMarker: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.ToString () return "" end

---@param exists ABI.CCK.Components.CVRAvatarPickupMarker: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRAvatarPickupMarker.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.BoundObject
--- FIXME: Wrapped ABI.CCK.Components.CVRBaseLuaBehaviour+BoundObject for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field boundThing UnityEngine.Object 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@field name System.String 
---@access_get AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
---@access_set AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
CVR.CCK.BoundObject = {}
CVR.CCK.BoundObject.boundThing = nil
CVR.CCK.BoundObject.name = ""

--- @class CVR.CCK.CVRCameraHelper
--- FIXME: Wrapped ABI.CCK.Components.CVRCameraHelper for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.CVRCameraHelper = {}
CVR.CCK.CVRCameraHelper.enabled = true
CVR.CCK.CVRCameraHelper.isActiveAndEnabled = true
CVR.CCK.CVRCameraHelper.gameObject = nil
CVR.CCK.CVRCameraHelper.tag = ""
CVR.CCK.CVRCameraHelper.transform = nil
CVR.CCK.CVRCameraHelper.name = ""

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.TakeScreenshot () return end

---@param x ABI.CCK.Components.CVRCameraHelper: 
---@param y ABI.CCK.Components.CVRCameraHelper: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRCameraHelper: 
---@param y ABI.CCK.Components.CVRCameraHelper: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.ToString () return "" end

---@param exists ABI.CCK.Components.CVRCameraHelper: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRCameraHelper.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRInteractable
--- FIXME: Wrapped ABI.CCK.Components.CVRInteractable for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field actions System.Collections.Generic.List<ABI.CCK.Components.CVRInteractableAction> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field AllowMultipleInteractions System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field isAttached System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field isHeld System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsInteractable System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field isLookedAt System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field isSitting System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field tooltip System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field CanInteract System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field HoveringController ABI_RC.Core.InteractionSystem.ControllerRay 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field HoveringControllers System.Collections.Generic.List<ABI_RC.Core.InteractionSystem.ControllerRay> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field InteractingController ABI_RC.Core.InteractionSystem.ControllerRay 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field InteractingControllers System.Collections.Generic.List<ABI_RC.Core.InteractionSystem.ControllerRay> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsHovering System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsInteracting System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.CVRInteractable = {}
CVR.CCK.CVRInteractable.actions = []
CVR.CCK.CVRInteractable.AllowMultipleInteractions = true
CVR.CCK.CVRInteractable.isAttached = true
CVR.CCK.CVRInteractable.isHeld = true
CVR.CCK.CVRInteractable.IsInteractable = true
CVR.CCK.CVRInteractable.isLookedAt = true
CVR.CCK.CVRInteractable.isSitting = true
CVR.CCK.CVRInteractable.tooltip = ""
CVR.CCK.CVRInteractable.CanInteract = true
CVR.CCK.CVRInteractable.HoveringController = nil
CVR.CCK.CVRInteractable.HoveringControllers = []
CVR.CCK.CVRInteractable.InteractingController = nil
CVR.CCK.CVRInteractable.InteractingControllers = []
CVR.CCK.CVRInteractable.IsHovering = true
CVR.CCK.CVRInteractable.IsInteracting = true
CVR.CCK.CVRInteractable.enabled = true
CVR.CCK.CVRInteractable.isActiveAndEnabled = true
CVR.CCK.CVRInteractable.gameObject = nil
CVR.CCK.CVRInteractable.tag = ""
CVR.CCK.CVRInteractable.transform = nil
CVR.CCK.CVRInteractable.name = ""

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRInteractable.CustomTrigger () return end

---@param sourcePos UnityEngine.Vector3: 
---@return System.Boolean
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRInteractable.IsInteractableWithinRange (sourcePos) return true end

---@param x ABI.CCK.Components.CVRInteractable: 
---@param y ABI.CCK.Components.CVRInteractable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRInteractable: 
---@param y ABI.CCK.Components.CVRInteractable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.ToString () return "" end

---@param exists ABI.CCK.Components.CVRInteractable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractable.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRInteractableAction
--- FIXME: Wrapped ABI.CCK.Components.CVRInteractableAction for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field actionType ABI.CCK.Components.CVRInteractableAction.ActionRegister 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field additionalData ABI.CCK.Components.CVRInteractableActionData 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field allowedPointer System.Collections.Generic.List<ABI.CCK.Components.CVRPointer> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field allowedTypes System.Collections.Generic.List<System.String> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field boolVal System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field boolVal2 System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field delay System.Single 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field execType ABI.CCK.Components.CVRInteractableAction.ExecutionType 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field floatVal System.Single 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field floatVal2 System.Single 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field floatVal3 System.Single 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field interactionFilter ABI.CCK.Components.CVRInteractableAction.InteractionFilter 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field interactionInput ABI.CCK.Components.CVRInteractableAction.InteractionInput 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field interactionInputModifier ABI.CCK.Components.CVRInteractableAction.InteractionInputModifier 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field layerMask UnityEngine.LayerMask 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field operations System.Collections.Generic.List<ABI.CCK.Components.CVRInteractableActionOperation> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field parentInteractable ABI.CCK.Components.CVRInteractable 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field specificParticleSystems System.Collections.Generic.List<UnityEngine.ParticleSystem> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field stringVal System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field varBufferVal ABI.CCK.Components.CVRVariableBuffer 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field varBufferVal2 ABI.CCK.Components.CVRVariableBuffer 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
CVR.CCK.CVRInteractableAction = {}
CVR.CCK.CVRInteractableAction.actionType = nil
CVR.CCK.CVRInteractableAction.additionalData = nil
CVR.CCK.CVRInteractableAction.allowedPointer = []
CVR.CCK.CVRInteractableAction.allowedTypes = []
CVR.CCK.CVRInteractableAction.boolVal = true
CVR.CCK.CVRInteractableAction.boolVal2 = true
CVR.CCK.CVRInteractableAction.delay = 0.0
CVR.CCK.CVRInteractableAction.execType = nil
CVR.CCK.CVRInteractableAction.floatVal = 0.0
CVR.CCK.CVRInteractableAction.floatVal2 = 0.0
CVR.CCK.CVRInteractableAction.floatVal3 = 0.0
CVR.CCK.CVRInteractableAction.interactionFilter = nil
CVR.CCK.CVRInteractableAction.interactionInput = nil
CVR.CCK.CVRInteractableAction.interactionInputModifier = nil
CVR.CCK.CVRInteractableAction.layerMask = nil
CVR.CCK.CVRInteractableAction.operations = []
CVR.CCK.CVRInteractableAction.parentInteractable = nil
CVR.CCK.CVRInteractableAction.specificParticleSystems = []
CVR.CCK.CVRInteractableAction.stringVal = ""
CVR.CCK.CVRInteractableAction.varBufferVal = nil
CVR.CCK.CVRInteractableAction.varBufferVal2 = nil

---@param x ABI.CCK.Components.CVRInteractableAction: 
---@param y ABI.CCK.Components.CVRInteractableAction: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableAction.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRInteractableAction: 
---@param y ABI.CCK.Components.CVRInteractableAction: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableAction.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableAction.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableAction.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableAction.ToString () return "" end

--- @class CVR.CCK.CVRInteractableActionData
--- FIXME: Wrapped ABI.CCK.Components.CVRInteractableActionData for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field floats System.Collections.Generic.List<System.Single> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field set System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field variableBufferValue System.Single 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
CVR.CCK.CVRInteractableActionData = {}
CVR.CCK.CVRInteractableActionData.floats = []
CVR.CCK.CVRInteractableActionData.set = true
CVR.CCK.CVRInteractableActionData.variableBufferValue = 0.0

---@param x ABI.CCK.Components.CVRInteractableActionData: 
---@param y ABI.CCK.Components.CVRInteractableActionData: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableActionData.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRInteractableActionData: 
---@param y ABI.CCK.Components.CVRInteractableActionData: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableActionData.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableActionData.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableActionData.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableActionData.ToString () return "" end

--- @class CVR.CCK.CVRInteractableActionOperation
--- FIXME: Wrapped ABI.CCK.Components.CVRInteractableActionOperation for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field animationVal UnityEngine.AnimationClip 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field boolVal System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field boolVal2 System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field floatVal System.Single 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field floatVal2 System.Single 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field floatVal3 System.Single 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field floatVal4 System.Single 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field gameObjectVal UnityEngine.GameObject 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field stringVal System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field stringVal2 System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field stringVal3 System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field stringVal4 System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field targets System.Collections.Generic.List<UnityEngine.GameObject> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field type ABI.CCK.Components.CVRInteractableActionOperation.ActionType 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field varBufferVal ABI.CCK.Components.CVRVariableBuffer 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field varBufferVal2 ABI.CCK.Components.CVRVariableBuffer 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field varBufferVal3 ABI.CCK.Components.CVRVariableBuffer 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
CVR.CCK.CVRInteractableActionOperation = {}
CVR.CCK.CVRInteractableActionOperation.animationVal = nil
CVR.CCK.CVRInteractableActionOperation.boolVal = true
CVR.CCK.CVRInteractableActionOperation.boolVal2 = true
CVR.CCK.CVRInteractableActionOperation.floatVal = 0.0
CVR.CCK.CVRInteractableActionOperation.floatVal2 = 0.0
CVR.CCK.CVRInteractableActionOperation.floatVal3 = 0.0
CVR.CCK.CVRInteractableActionOperation.floatVal4 = 0.0
CVR.CCK.CVRInteractableActionOperation.gameObjectVal = nil
CVR.CCK.CVRInteractableActionOperation.stringVal = ""
CVR.CCK.CVRInteractableActionOperation.stringVal2 = ""
CVR.CCK.CVRInteractableActionOperation.stringVal3 = ""
CVR.CCK.CVRInteractableActionOperation.stringVal4 = ""
CVR.CCK.CVRInteractableActionOperation.targets = []
CVR.CCK.CVRInteractableActionOperation.type = nil
CVR.CCK.CVRInteractableActionOperation.varBufferVal = nil
CVR.CCK.CVRInteractableActionOperation.varBufferVal2 = nil
CVR.CCK.CVRInteractableActionOperation.varBufferVal3 = nil

---@param x ABI.CCK.Components.CVRInteractableActionOperation: 
---@param y ABI.CCK.Components.CVRInteractableActionOperation: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableActionOperation.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRInteractableActionOperation: 
---@param y ABI.CCK.Components.CVRInteractableActionOperation: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableActionOperation.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableActionOperation.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableActionOperation.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRInteractableActionOperation.ToString () return "" end

--- @class CVR.CCK.CVRVariableBuffer
--- FIXME: Wrapped ABI.CCK.Components.CVRVariableBuffer for Lua and WASM
--- @access WORLD CLIENT LOCAL|OTHER
---@field defaultValue System.Single 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field value System.Single 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.CVRVariableBuffer = {}
CVR.CCK.CVRVariableBuffer.defaultValue = 0.0
CVR.CCK.CVRVariableBuffer.value = 0.0
CVR.CCK.CVRVariableBuffer.enabled = true
CVR.CCK.CVRVariableBuffer.isActiveAndEnabled = true
CVR.CCK.CVRVariableBuffer.gameObject = nil
CVR.CCK.CVRVariableBuffer.tag = ""
CVR.CCK.CVRVariableBuffer.transform = nil
CVR.CCK.CVRVariableBuffer.name = ""

---@param valueToSet System.Single: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.SetValue (valueToSet) return end

---@param x ABI.CCK.Components.CVRVariableBuffer: 
---@param y ABI.CCK.Components.CVRVariableBuffer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRVariableBuffer: 
---@param y ABI.CCK.Components.CVRVariableBuffer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.ToString () return "" end

---@param exists ABI.CCK.Components.CVRVariableBuffer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVariableBuffer.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRVideoPlayer
--- FIXME: Wrapped ABI.CCK.Components.CVRVideoPlayer for Lua and WASM
--- @access WORLD CLIENT LOCAL|OTHER
---@field ControlPermission ABI_RC.VideoPlayer.Scripts.VideoPlayerUtils.ControlPermission 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field CurrentPlaylist ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylist 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field CurrentPlaylistVideo ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylistEntity 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field CurrentVideoUrl System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field entities System.Collections.Generic.List<ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylist> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsPlaying System.Nullable<System.Boolean> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field PlayerState System.Nullable<ABI_RC.VideoPlayer.Scripts.VideoPlayerUtils.PlayerState> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field Time System.Nullable<System.Double> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.CVRVideoPlayer = {}
CVR.CCK.CVRVideoPlayer.ControlPermission = nil
CVR.CCK.CVRVideoPlayer.CurrentPlaylist = nil
CVR.CCK.CVRVideoPlayer.CurrentPlaylistVideo = nil
CVR.CCK.CVRVideoPlayer.CurrentVideoUrl = ""
CVR.CCK.CVRVideoPlayer.entities = []
CVR.CCK.CVRVideoPlayer.IsPlaying = nil
CVR.CCK.CVRVideoPlayer.PlayerState = nil
CVR.CCK.CVRVideoPlayer.Time = nil
CVR.CCK.CVRVideoPlayer.enabled = true
CVR.CCK.CVRVideoPlayer.isActiveAndEnabled = true
CVR.CCK.CVRVideoPlayer.gameObject = nil
CVR.CCK.CVRVideoPlayer.tag = ""
CVR.CCK.CVRVideoPlayer.transform = nil
CVR.CCK.CVRVideoPlayer.name = ""

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.Next () return end

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.Pause () return end

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.Play () return end

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.Previous () return end

---@param url System.String: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.SetBuiltinWhitelistUrl (url) return end

---@param permission ABI_RC.VideoPlayer.Scripts.VideoPlayerUtils.ControlPermission: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.SetControlPermission (permission) return end

---@param time System.Double: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.SetTime (time) return end

---@param playlist ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylist: 
---@param video ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylistEntity: 
---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.SetVideo (playlist, video) return end

---@param x ABI.CCK.Components.CVRVideoPlayer: 
---@param y ABI.CCK.Components.CVRVideoPlayer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.CVRVideoPlayer: 
---@param y ABI.CCK.Components.CVRVideoPlayer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.ToString () return "" end

---@param exists ABI.CCK.Components.CVRVideoPlayer: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayer.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.SpawnablePickupMarker
--- FIXME: Wrapped ABI.CCK.Components.SpawnablePickupMarker for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field spawnableGuid System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.SpawnablePickupMarker = {}
CVR.CCK.SpawnablePickupMarker.spawnableGuid = ""
CVR.CCK.SpawnablePickupMarker.enabled = true
CVR.CCK.SpawnablePickupMarker.isActiveAndEnabled = true
CVR.CCK.SpawnablePickupMarker.gameObject = nil
CVR.CCK.SpawnablePickupMarker.tag = ""
CVR.CCK.SpawnablePickupMarker.transform = nil
CVR.CCK.SpawnablePickupMarker.name = ""

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.SelectSpawnableForSpawn () return end

---@return void
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.ShowSpawnableDetailsPage () return end

---@param guid System.String: 
---@return System.Boolean
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.TrySetGuid (guid) return true end

---@param x ABI.CCK.Components.SpawnablePickupMarker: 
---@param y ABI.CCK.Components.SpawnablePickupMarker: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.op_Equality (x, y) return true end -- static

---@param x ABI.CCK.Components.SpawnablePickupMarker: 
---@param y ABI.CCK.Components.SpawnablePickupMarker: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.ToString () return "" end

---@param exists ABI.CCK.Components.SpawnablePickupMarker: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.SpawnablePickupMarker.op_Implicit (exists) return true end -- static

--- @class CVR.CCK.CVRVideoPlayerPlaylist
--- FIXME: Wrapped ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylist for Lua and WASM
--- @access WORLD CLIENT LOCAL|OTHER
---@field playlistThumbnailTexture UnityEngine.Texture 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field playlistThumbnailUrl System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field playlistTitle System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field playlistVideos System.Collections.Generic.List<ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylistEntity> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
CVR.CCK.CVRVideoPlayerPlaylist = {}
CVR.CCK.CVRVideoPlayerPlaylist.playlistThumbnailTexture = nil
CVR.CCK.CVRVideoPlayerPlaylist.playlistThumbnailUrl = ""
CVR.CCK.CVRVideoPlayerPlaylist.playlistTitle = ""
CVR.CCK.CVRVideoPlayerPlaylist.playlistVideos = []

---@param x ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylist: 
---@param y ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylist: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayerPlaylist.op_Equality (x, y) return true end -- static

---@param x ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylist: 
---@param y ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylist: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayerPlaylist.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayerPlaylist.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayerPlaylist.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayerPlaylist.ToString () return "" end

--- @class CVR.CCK.CVRVideoPlayerPlaylistEntity
--- FIXME: Wrapped ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylistEntity for Lua and WASM
--- @access WORLD CLIENT LOCAL|OTHER
---@field creditsStartInSeconds System.Int32 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field introEndInSeconds System.Int32 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field isCollapsed System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field thumbnailUrl System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field videoTitle System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field videoUrl System.String 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field watched System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
CVR.CCK.CVRVideoPlayerPlaylistEntity = {}
CVR.CCK.CVRVideoPlayerPlaylistEntity.creditsStartInSeconds = 0
CVR.CCK.CVRVideoPlayerPlaylistEntity.introEndInSeconds = 0
CVR.CCK.CVRVideoPlayerPlaylistEntity.isCollapsed = true
CVR.CCK.CVRVideoPlayerPlaylistEntity.thumbnailUrl = ""
CVR.CCK.CVRVideoPlayerPlaylistEntity.videoTitle = ""
CVR.CCK.CVRVideoPlayerPlaylistEntity.videoUrl = ""
CVR.CCK.CVRVideoPlayerPlaylistEntity.watched = true

---@param x ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylistEntity: 
---@param y ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylistEntity: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayerPlaylistEntity.op_Equality (x, y) return true end -- static

---@param x ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylistEntity: 
---@param y ABI_RC.VideoPlayer.Scripts.CVRVideoPlayerPlaylistEntity: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayerPlaylistEntity.op_Inequality (x, y) return true end -- static

---@param obj System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayerPlaylistEntity.Equals (obj) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayerPlaylistEntity.GetHashCode () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.CVRVideoPlayerPlaylistEntity.ToString () return "" end

--- @class CVR.CCK.Interactable
--- FIXME: Wrapped ABI_RC.Core.InteractionSystem.Base.Interactable for Lua and WASM
--- @access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field AllowMultipleInteractions System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field CanInteract System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@field HoveringController ABI_RC.Core.InteractionSystem.ControllerRay 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field HoveringControllers System.Collections.Generic.List<ABI_RC.Core.InteractionSystem.ControllerRay> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field InteractingController ABI_RC.Core.InteractionSystem.ControllerRay 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field InteractingControllers System.Collections.Generic.List<ABI_RC.Core.InteractionSystem.ControllerRay> 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsHovering System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsInteractable System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
---@access_set NONE NONE NONE
---@field IsInteracting System.Boolean 
---@access_get AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
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
CVR.CCK.Interactable = {}
CVR.CCK.Interactable.AllowMultipleInteractions = true
CVR.CCK.Interactable.CanInteract = true
CVR.CCK.Interactable.HoveringController = nil
CVR.CCK.Interactable.HoveringControllers = []
CVR.CCK.Interactable.InteractingController = nil
CVR.CCK.Interactable.InteractingControllers = []
CVR.CCK.Interactable.IsHovering = true
CVR.CCK.Interactable.IsInteractable = true
CVR.CCK.Interactable.IsInteracting = true
CVR.CCK.Interactable.enabled = true
CVR.CCK.Interactable.isActiveAndEnabled = true
CVR.CCK.Interactable.gameObject = nil
CVR.CCK.Interactable.tag = ""
CVR.CCK.Interactable.transform = nil
CVR.CCK.Interactable.name = ""

---@param sourcePos UnityEngine.Vector3: 
---@return System.Boolean
---@access AVATAR|EVENT_WHITELIST|PROP|WORLD CLIENT LOCAL|OTHER
function CVR.CCK.Interactable.IsInteractableWithinRange (sourcePos) return true end

---@param x ABI_RC.Core.InteractionSystem.Base.Interactable: 
---@param y ABI_RC.Core.InteractionSystem.Base.Interactable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.op_Equality (x, y) return true end -- static

---@param x ABI_RC.Core.InteractionSystem.Base.Interactable: 
---@param y ABI_RC.Core.InteractionSystem.Base.Interactable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.op_Inequality (x, y) return true end -- static

---@param tag System.String: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.CompareTag (tag) return true end

---@param type System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.GetComponent (type) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.GetComponentInChildren (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.GetComponentInChildren (t) return nil end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.GetComponentInParent (t, includeInactive) return nil end

---@param t System.String: 
---@return UnityEngine.Component
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.GetComponentInParent (t) return nil end

---@param type System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.GetComponents (type) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.GetComponentsInChildren (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.GetComponentsInChildren (t) return [] end

---@param t System.String: 
---@param includeInactive System.Boolean: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.GetComponentsInParent (t, includeInactive) return [] end

---@param t System.String: 
---@return UnityEngine.Component[]
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.GetComponentsInParent (t) return [] end

---@param type System.String: 
---@param component System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.TryGetComponent (type, component) return true end

---@param other System.Object: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.Equals (other) return true end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.GetHashCode () return 0 end

---@return System.Int32
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.GetInstanceID () return 0 end

---@return System.String
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.ToString () return "" end

---@param exists ABI_RC.Core.InteractionSystem.Base.Interactable: 
---@return System.Boolean
---@access AVATAR|PROP|WORLD CLIENT|SERVER LOCAL|OTHER
function CVR.CCK.Interactable.op_Implicit (exists) return true end -- static
return CVR.CCK
