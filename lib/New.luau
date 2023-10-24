local Type = require(script.Parent.Type)
type Prop<T> = T?
type e = Type.Element
local Export = {}
export type Instance_PropMap = {
	["Archivable"]: Prop<boolean>,
	["$Archivable"]: ((boolean) -> ())?,
	["$ClassName"]: ((string) -> ())?,
	["Name"]: Prop<string>,
	["$Name"]: ((string) -> ())?,
	["Parent"]: Prop<Instance>,
	["$Parent"]: ((Instance) -> ())?,
	["RobloxLocked"]: Prop<boolean>,
	["$RobloxLocked"]: ((boolean) -> ())?,
	["SourceAssetId"]: Prop<number>,
	["$SourceAssetId"]: ((number) -> ())?,
	["@AncestryChanged"]: ((child: Instance, parent: Instance) -> ())?,
	["@AttributeChanged"]: ((attribute: string) -> ())?,
	["@Changed"]: ((property: string) -> ())?,
	["@ChildAdded"]: ((child: Instance) -> ())?,
	["@ChildRemoved"]: ((child: Instance) -> ())?,
	["@DescendantAdded"]: ((descendant: Instance) -> ())?,
	["@DescendantRemoving"]: ((descendant: Instance) -> ())?,
	["@Destroying"]: (() -> ())?,
}
export type AccessoryDescription_PropMap = Instance_PropMap & {
	["AccessoryType"]: Prop<Enum.AccessoryType>,
	["$AccessoryType"]: ((Enum.AccessoryType) -> ())?,
	["AssetId"]: Prop<number>,
	["$AssetId"]: ((number) -> ())?,
	["Instance"]: Prop<Instance>,
	["$Instance"]: ((Instance) -> ())?,
	["IsLayered"]: Prop<boolean>,
	["$IsLayered"]: ((boolean) -> ())?,
	["Order"]: Prop<number>,
	["$Order"]: ((number) -> ())?,
	["Puffiness"]: Prop<number>,
	["$Puffiness"]: ((number) -> ())?,
}
Export.AccessoryDescription = function(Props: AccessoryDescription_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AccessoryDescription", PropMap = Props, ChildMap = Children or {} }
end
export type Accoutrement_PropMap = Instance_PropMap & {
	["AttachmentForward"]: Prop<Vector3>,
	["$AttachmentForward"]: ((Vector3) -> ())?,
	["AttachmentPoint"]: Prop<CFrame>,
	["$AttachmentPoint"]: ((CFrame) -> ())?,
	["AttachmentPos"]: Prop<Vector3>,
	["$AttachmentPos"]: ((Vector3) -> ())?,
	["AttachmentRight"]: Prop<Vector3>,
	["$AttachmentRight"]: ((Vector3) -> ())?,
	["AttachmentUp"]: Prop<Vector3>,
	["$AttachmentUp"]: ((Vector3) -> ())?,
}
Export.Accoutrement = function(Props: Accoutrement_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Accoutrement", PropMap = Props, ChildMap = Children or {} }
end
export type Accessory_PropMap = Accoutrement_PropMap & {
	["AccessoryType"]: Prop<Enum.AccessoryType>,
	["$AccessoryType"]: ((Enum.AccessoryType) -> ())?,
}
Export.Accessory = function(Props: Accessory_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Accessory", PropMap = Props, ChildMap = Children or {} }
end
export type AdPortal_PropMap =
	Instance_PropMap
	& { ["$PortalVersion"]: ((number) -> ())?, ["$Status"]: ((Enum.AdUnitStatus) -> ())? }
Export.AdPortal = function(Props: AdPortal_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AdPortal", PropMap = Props, ChildMap = Children or {} }
end
export type AdvancedDragger_PropMap = Instance_PropMap & {}
Export.AdvancedDragger = function(Props: AdvancedDragger_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AdvancedDragger", PropMap = Props, ChildMap = Children or {} }
end
export type Animation_PropMap = Instance_PropMap & { ["AnimationId"]: Prop<string>, ["$AnimationId"]: ((string) -> ())? }
Export.Animation = function(Props: Animation_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Animation", PropMap = Props, ChildMap = Children or {} }
end
export type AnimationClip_PropMap = Instance_PropMap & {
	["Guid"]: Prop<string>,
	["$Guid"]: ((string) -> ())?,
	["Loop"]: Prop<boolean>,
	["$Loop"]: ((boolean) -> ())?,
	["Priority"]: Prop<Enum.AnimationPriority>,
	["$Priority"]: ((Enum.AnimationPriority) -> ())?,
}
export type CurveAnimation_PropMap = AnimationClip_PropMap & {}
Export.CurveAnimation = function(Props: CurveAnimation_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "CurveAnimation", PropMap = Props, ChildMap = Children or {} }
end
export type KeyframeSequence_PropMap =
	AnimationClip_PropMap
	& { ["AuthoredHipHeight"]: Prop<number>, ["$AuthoredHipHeight"]: ((number) -> ())? }
Export.KeyframeSequence = function(Props: KeyframeSequence_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "KeyframeSequence", PropMap = Props, ChildMap = Children or {} }
end
export type AnimationController_PropMap = Instance_PropMap & {}
Export.AnimationController = function(Props: AnimationController_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AnimationController", PropMap = Props, ChildMap = Children or {} }
end
export type AnimationRigData_PropMap = Instance_PropMap & {}
Export.AnimationRigData = function(Props: AnimationRigData_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AnimationRigData", PropMap = Props, ChildMap = Children or {} }
end
export type Animator_PropMap = Instance_PropMap & {
	["$EvaluationThrottled"]: ((boolean) -> ())?,
	["PreferLodEnabled"]: Prop<boolean>,
	["$PreferLodEnabled"]: ((boolean) -> ())?,
	["$RootMotion"]: ((CFrame) -> ())?,
	["$RootMotionWeight"]: ((number) -> ())?,
	["@AnimationPlayed"]: ((animationTrack: AnimationTrack) -> ())?,
	["@AnimationPlayedCoreScript"]: ((animationTrack: AnimationTrack) -> ())?,
	["@AnimationStreamTrackPlayed"]: ((animationTrack: AnimationStreamTrack) -> ())?,
}
Export.Animator = function(Props: Animator_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Animator", PropMap = Props, ChildMap = Children or {} }
end
export type Atmosphere_PropMap = Instance_PropMap & {
	["Color"]: Prop<Color3>,
	["$Color"]: ((Color3) -> ())?,
	["Decay"]: Prop<Color3>,
	["$Decay"]: ((Color3) -> ())?,
	["Density"]: Prop<number>,
	["$Density"]: ((number) -> ())?,
	["Glare"]: Prop<number>,
	["$Glare"]: ((number) -> ())?,
	["Haze"]: Prop<number>,
	["$Haze"]: ((number) -> ())?,
	["Offset"]: Prop<number>,
	["$Offset"]: ((number) -> ())?,
}
Export.Atmosphere = function(Props: Atmosphere_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Atmosphere", PropMap = Props, ChildMap = Children or {} }
end
export type Attachment_PropMap = Instance_PropMap & {
	["Axis"]: Prop<Vector3>,
	["$Axis"]: ((Vector3) -> ())?,
	["CFrame"]: Prop<CFrame>,
	["$CFrame"]: ((CFrame) -> ())?,
	["Orientation"]: Prop<Vector3>,
	["$Orientation"]: ((Vector3) -> ())?,
	["Position"]: Prop<Vector3>,
	["$Position"]: ((Vector3) -> ())?,
	["SecondaryAxis"]: Prop<Vector3>,
	["$SecondaryAxis"]: ((Vector3) -> ())?,
	["Visible"]: Prop<boolean>,
	["$Visible"]: ((boolean) -> ())?,
	["WorldAxis"]: Prop<Vector3>,
	["$WorldAxis"]: ((Vector3) -> ())?,
	["WorldCFrame"]: Prop<CFrame>,
	["$WorldCFrame"]: ((CFrame) -> ())?,
	["WorldOrientation"]: Prop<Vector3>,
	["$WorldOrientation"]: ((Vector3) -> ())?,
	["WorldPosition"]: Prop<Vector3>,
	["$WorldPosition"]: ((Vector3) -> ())?,
	["WorldSecondaryAxis"]: Prop<Vector3>,
	["$WorldSecondaryAxis"]: ((Vector3) -> ())?,
}
Export.Attachment = function(Props: Attachment_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Attachment", PropMap = Props, ChildMap = Children or {} }
end
export type Bone_PropMap = Attachment_PropMap & {
	["Transform"]: Prop<CFrame>,
	["$Transform"]: ((CFrame) -> ())?,
	["$TransformedCFrame"]: ((CFrame) -> ())?,
	["$TransformedWorldCFrame"]: ((CFrame) -> ())?,
}
Export.Bone = function(Props: Bone_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Bone", PropMap = Props, ChildMap = Children or {} }
end
export type AudioAnalyzer_PropMap =
	Instance_PropMap
	& { ["$PeakLevel"]: ((number) -> ())?, ["$RmsLevel"]: ((number) -> ())? }
Export.AudioAnalyzer = function(Props: AudioAnalyzer_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioAnalyzer", PropMap = Props, ChildMap = Children or {} }
end
export type AudioChorus_PropMap = Instance_PropMap & {
	["Depth"]: Prop<number>,
	["$Depth"]: ((number) -> ())?,
	["Mix"]: Prop<number>,
	["$Mix"]: ((number) -> ())?,
	["Rate"]: Prop<number>,
	["$Rate"]: ((number) -> ())?,
}
Export.AudioChorus = function(Props: AudioChorus_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioChorus", PropMap = Props, ChildMap = Children or {} }
end
export type AudioCompressor_PropMap = Instance_PropMap & {
	["Attack"]: Prop<number>,
	["$Attack"]: ((number) -> ())?,
	["MakeupGain"]: Prop<number>,
	["$MakeupGain"]: ((number) -> ())?,
	["Ratio"]: Prop<number>,
	["$Ratio"]: ((number) -> ())?,
	["Release"]: Prop<number>,
	["$Release"]: ((number) -> ())?,
	["Threshold"]: Prop<number>,
	["$Threshold"]: ((number) -> ())?,
}
Export.AudioCompressor = function(Props: AudioCompressor_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioCompressor", PropMap = Props, ChildMap = Children or {} }
end
export type AudioDeviceInput_PropMap = Instance_PropMap & {
	["AccessType"]: Prop<Enum.AccessModifierType>,
	["$AccessType"]: ((Enum.AccessModifierType) -> ())?,
	["Active"]: Prop<boolean>,
	["$Active"]: ((boolean) -> ())?,
	["$IsReady"]: ((boolean) -> ())?,
	["Muted"]: Prop<boolean>,
	["$Muted"]: ((boolean) -> ())?,
	["Player"]: Prop<Player>,
	["$Player"]: ((Player) -> ())?,
}
Export.AudioDeviceInput = function(Props: AudioDeviceInput_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioDeviceInput", PropMap = Props, ChildMap = Children or {} }
end
export type AudioDeviceOutput_PropMap = Instance_PropMap & { ["Player"]: Prop<Player>, ["$Player"]: ((Player) -> ())? }
Export.AudioDeviceOutput = function(Props: AudioDeviceOutput_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioDeviceOutput", PropMap = Props, ChildMap = Children or {} }
end
export type AudioDistortion_PropMap = Instance_PropMap & { ["Level"]: Prop<number>, ["$Level"]: ((number) -> ())? }
Export.AudioDistortion = function(Props: AudioDistortion_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioDistortion", PropMap = Props, ChildMap = Children or {} }
end
export type AudioEcho_PropMap = Instance_PropMap & {
	["DelayTime"]: Prop<number>,
	["$DelayTime"]: ((number) -> ())?,
	["DryLevel"]: Prop<number>,
	["$DryLevel"]: ((number) -> ())?,
	["Feedback"]: Prop<number>,
	["$Feedback"]: ((number) -> ())?,
	["WetLevel"]: Prop<number>,
	["$WetLevel"]: ((number) -> ())?,
}
Export.AudioEcho = function(Props: AudioEcho_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioEcho", PropMap = Props, ChildMap = Children or {} }
end
export type AudioEmitter_PropMap =
	Instance_PropMap
	& { ["AudioInteractionGroup"]: Prop<string>, ["$AudioInteractionGroup"]: ((string) -> ())? }
Export.AudioEmitter = function(Props: AudioEmitter_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioEmitter", PropMap = Props, ChildMap = Children or {} }
end
export type AudioEqualizer_PropMap = Instance_PropMap & {
	["HighGain"]: Prop<number>,
	["$HighGain"]: ((number) -> ())?,
	["LowGain"]: Prop<number>,
	["$LowGain"]: ((number) -> ())?,
	["MidGain"]: Prop<number>,
	["$MidGain"]: ((number) -> ())?,
	["MidRange"]: Prop<NumberRange>,
	["$MidRange"]: ((NumberRange) -> ())?,
}
Export.AudioEqualizer = function(Props: AudioEqualizer_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioEqualizer", PropMap = Props, ChildMap = Children or {} }
end
export type AudioFader_PropMap = Instance_PropMap & { ["Volume"]: Prop<number>, ["$Volume"]: ((number) -> ())? }
Export.AudioFader = function(Props: AudioFader_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioFader", PropMap = Props, ChildMap = Children or {} }
end
export type AudioFlanger_PropMap = Instance_PropMap & {
	["Depth"]: Prop<number>,
	["$Depth"]: ((number) -> ())?,
	["Mix"]: Prop<number>,
	["$Mix"]: ((number) -> ())?,
	["Rate"]: Prop<number>,
	["$Rate"]: ((number) -> ())?,
}
Export.AudioFlanger = function(Props: AudioFlanger_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioFlanger", PropMap = Props, ChildMap = Children or {} }
end
export type AudioListener_PropMap = Instance_PropMap & {
	["AudioInteractionGroup"]: Prop<string>,
	["$AudioInteractionGroup"]: ((string) -> ())?,
}
Export.AudioListener = function(Props: AudioListener_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioListener", PropMap = Props, ChildMap = Children or {} }
end
export type AudioPitchShifter_PropMap = Instance_PropMap & { ["Pitch"]: Prop<number>, ["$Pitch"]: ((number) -> ())? }
Export.AudioPitchShifter = function(Props: AudioPitchShifter_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioPitchShifter", PropMap = Props, ChildMap = Children or {} }
end
export type AudioPlayer_PropMap = Instance_PropMap & {
	["AssetId"]: Prop<string>,
	["$AssetId"]: ((string) -> ())?,
	["AutoLoad"]: Prop<boolean>,
	["$AutoLoad"]: ((boolean) -> ())?,
	["IsPlaying"]: Prop<boolean>,
	["$IsPlaying"]: ((boolean) -> ())?,
	["$IsReady"]: ((boolean) -> ())?,
	["LoopRegion"]: Prop<NumberRange>,
	["$LoopRegion"]: ((NumberRange) -> ())?,
	["Looping"]: Prop<boolean>,
	["$Looping"]: ((boolean) -> ())?,
	["PlaybackRegion"]: Prop<NumberRange>,
	["$PlaybackRegion"]: ((NumberRange) -> ())?,
	["PlaybackSpeed"]: Prop<number>,
	["$PlaybackSpeed"]: ((number) -> ())?,
	["$TimeLength"]: ((number) -> ())?,
	["TimePosition"]: Prop<number>,
	["$TimePosition"]: ((number) -> ())?,
}
Export.AudioPlayer = function(Props: AudioPlayer_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioPlayer", PropMap = Props, ChildMap = Children or {} }
end
export type AudioReverb_PropMap = Instance_PropMap & {
	["DecayRatio"]: Prop<number>,
	["$DecayRatio"]: ((number) -> ())?,
	["DecayTime"]: Prop<number>,
	["$DecayTime"]: ((number) -> ())?,
	["Density"]: Prop<number>,
	["$Density"]: ((number) -> ())?,
	["Diffusion"]: Prop<number>,
	["$Diffusion"]: ((number) -> ())?,
	["DryLevel"]: Prop<number>,
	["$DryLevel"]: ((number) -> ())?,
	["EarlyDelayTime"]: Prop<number>,
	["$EarlyDelayTime"]: ((number) -> ())?,
	["HighCutFrequency"]: Prop<number>,
	["$HighCutFrequency"]: ((number) -> ())?,
	["LateDelayTime"]: Prop<number>,
	["$LateDelayTime"]: ((number) -> ())?,
	["LowShelfFrequency"]: Prop<number>,
	["$LowShelfFrequency"]: ((number) -> ())?,
	["LowShelfGain"]: Prop<number>,
	["$LowShelfGain"]: ((number) -> ())?,
	["ReferenceFrequency"]: Prop<number>,
	["$ReferenceFrequency"]: ((number) -> ())?,
	["WetLevel"]: Prop<number>,
	["$WetLevel"]: ((number) -> ())?,
}
Export.AudioReverb = function(Props: AudioReverb_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioReverb", PropMap = Props, ChildMap = Children or {} }
end
export type AudioSearchParams_PropMap = Instance_PropMap & {
	["Album"]: Prop<string>,
	["$Album"]: ((string) -> ())?,
	["Artist"]: Prop<string>,
	["$Artist"]: ((string) -> ())?,
	["AudioSubType"]: Prop<Enum.AudioSubType>,
	["$AudioSubType"]: ((Enum.AudioSubType) -> ())?,
	["MaxDuration"]: Prop<number>,
	["$MaxDuration"]: ((number) -> ())?,
	["MinDuration"]: Prop<number>,
	["$MinDuration"]: ((number) -> ())?,
	["SearchKeyword"]: Prop<string>,
	["$SearchKeyword"]: ((string) -> ())?,
	["Tag"]: Prop<string>,
	["$Tag"]: ((string) -> ())?,
	["Title"]: Prop<string>,
	["$Title"]: ((string) -> ())?,
}
Export.AudioSearchParams = function(Props: AudioSearchParams_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AudioSearchParams", PropMap = Props, ChildMap = Children or {} }
end
export type Backpack_PropMap = Instance_PropMap & {}
Export.Backpack = function(Props: Backpack_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Backpack", PropMap = Props, ChildMap = Children or {} }
end
export type BaseWrap_PropMap = Instance_PropMap & {
	["CageMeshId"]: Prop<string>,
	["$CageMeshId"]: ((string) -> ())?,
	["CageOrigin"]: Prop<CFrame>,
	["$CageOrigin"]: ((CFrame) -> ())?,
	["$CageOriginWorld"]: ((CFrame) -> ())?,
	["ImportOrigin"]: Prop<CFrame>,
	["$ImportOrigin"]: ((CFrame) -> ())?,
	["$ImportOriginWorld"]: ((CFrame) -> ())?,
}
export type WrapLayer_PropMap = BaseWrap_PropMap & {
	["AutoSkin"]: Prop<Enum.WrapLayerAutoSkin>,
	["$AutoSkin"]: ((Enum.WrapLayerAutoSkin) -> ())?,
	["BindOffset"]: Prop<CFrame>,
	["$BindOffset"]: ((CFrame) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["Order"]: Prop<number>,
	["$Order"]: ((number) -> ())?,
	["Puffiness"]: Prop<number>,
	["$Puffiness"]: ((number) -> ())?,
	["ReferenceMeshId"]: Prop<string>,
	["$ReferenceMeshId"]: ((string) -> ())?,
	["ReferenceOrigin"]: Prop<CFrame>,
	["$ReferenceOrigin"]: ((CFrame) -> ())?,
	["$ReferenceOriginWorld"]: ((CFrame) -> ())?,
	["ShrinkFactor"]: Prop<number>,
	["$ShrinkFactor"]: ((number) -> ())?,
}
Export.WrapLayer = function(Props: WrapLayer_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "WrapLayer", PropMap = Props, ChildMap = Children or {} }
end
export type WrapTarget_PropMap = BaseWrap_PropMap & { ["Stiffness"]: Prop<number>, ["$Stiffness"]: ((number) -> ())? }
Export.WrapTarget = function(Props: WrapTarget_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "WrapTarget", PropMap = Props, ChildMap = Children or {} }
end
export type Beam_PropMap = Instance_PropMap & {
	["Attachment0"]: Prop<Attachment>,
	["$Attachment0"]: ((Attachment) -> ())?,
	["Attachment1"]: Prop<Attachment>,
	["$Attachment1"]: ((Attachment) -> ())?,
	["Brightness"]: Prop<number>,
	["$Brightness"]: ((number) -> ())?,
	["Color"]: Prop<ColorSequence>,
	["$Color"]: ((ColorSequence) -> ())?,
	["CurveSize0"]: Prop<number>,
	["$CurveSize0"]: ((number) -> ())?,
	["CurveSize1"]: Prop<number>,
	["$CurveSize1"]: ((number) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["FaceCamera"]: Prop<boolean>,
	["$FaceCamera"]: ((boolean) -> ())?,
	["LightEmission"]: Prop<number>,
	["$LightEmission"]: ((number) -> ())?,
	["LightInfluence"]: Prop<number>,
	["$LightInfluence"]: ((number) -> ())?,
	["Segments"]: Prop<number>,
	["$Segments"]: ((number) -> ())?,
	["Texture"]: Prop<string>,
	["$Texture"]: ((string) -> ())?,
	["TextureLength"]: Prop<number>,
	["$TextureLength"]: ((number) -> ())?,
	["TextureMode"]: Prop<Enum.TextureMode>,
	["$TextureMode"]: ((Enum.TextureMode) -> ())?,
	["TextureSpeed"]: Prop<number>,
	["$TextureSpeed"]: ((number) -> ())?,
	["Transparency"]: Prop<NumberSequence>,
	["$Transparency"]: ((NumberSequence) -> ())?,
	["Width0"]: Prop<number>,
	["$Width0"]: ((number) -> ())?,
	["Width1"]: Prop<number>,
	["$Width1"]: ((number) -> ())?,
	["ZOffset"]: Prop<number>,
	["$ZOffset"]: ((number) -> ())?,
}
Export.Beam = function(Props: Beam_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Beam", PropMap = Props, ChildMap = Children or {} }
end
export type BindableEvent_PropMap = Instance_PropMap & { ["@Event"]: ((arguments: any) -> ())? }
Export.BindableEvent = function(Props: BindableEvent_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BindableEvent", PropMap = Props, ChildMap = Children or {} }
end
export type BindableFunction_PropMap = Instance_PropMap & {}
Export.BindableFunction = function(Props: BindableFunction_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BindableFunction", PropMap = Props, ChildMap = Children or {} }
end
export type BodyPartDescription_PropMap = Instance_PropMap & {
	["AssetId"]: Prop<number>,
	["$AssetId"]: ((number) -> ())?,
	["BodyPart"]: Prop<Enum.BodyPart>,
	["$BodyPart"]: ((Enum.BodyPart) -> ())?,
	["Color"]: Prop<Color3>,
	["$Color"]: ((Color3) -> ())?,
	["Instance"]: Prop<Instance>,
	["$Instance"]: ((Instance) -> ())?,
}
Export.BodyPartDescription = function(Props: BodyPartDescription_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BodyPartDescription", PropMap = Props, ChildMap = Children or {} }
end
export type Breakpoint_PropMap = Instance_PropMap & {
	["Condition"]: Prop<string>,
	["$Condition"]: ((string) -> ())?,
	["ContinueExecution"]: Prop<boolean>,
	["$ContinueExecution"]: ((boolean) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["$Id"]: ((number) -> ())?,
	["$Line"]: ((number) -> ())?,
	["LogMessage"]: Prop<string>,
	["$LogMessage"]: ((string) -> ())?,
	["$MetaBreakpointId"]: ((number) -> ())?,
	["RemoveOnHit"]: Prop<boolean>,
	["$RemoveOnHit"]: ((boolean) -> ())?,
	["$Script"]: ((string) -> ())?,
	["$Valid"]: ((boolean) -> ())?,
	["$Verified"]: ((boolean) -> ())?,
}
Export.Breakpoint = function(Props: Breakpoint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Breakpoint", PropMap = Props, ChildMap = Children or {} }
end
export type BubbleChatMessageProperties_PropMap = Instance_PropMap & {
	["BackgroundColor3"]: Prop<Color3>,
	["$BackgroundColor3"]: ((Color3) -> ())?,
	["BackgroundTransparency"]: Prop<number>,
	["$BackgroundTransparency"]: ((number) -> ())?,
	["FontFace"]: Prop<Font>,
	["$FontFace"]: ((Font) -> ())?,
	["TailVisible"]: Prop<boolean>,
	["$TailVisible"]: ((boolean) -> ())?,
	["TextColor3"]: Prop<Color3>,
	["$TextColor3"]: ((Color3) -> ())?,
	["TextSize"]: Prop<number>,
	["$TextSize"]: ((number) -> ())?,
}
Export.BubbleChatMessageProperties = function(Props: BubbleChatMessageProperties_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BubbleChatMessageProperties", PropMap = Props, ChildMap = Children
		or {} }
end
export type Camera_PropMap = Instance_PropMap & {
	["CFrame"]: Prop<CFrame>,
	["$CFrame"]: ((CFrame) -> ())?,
	["CameraSubject"]: Prop<Instance>,
	["$CameraSubject"]: ((Instance) -> ())?,
	["CameraType"]: Prop<Enum.CameraType>,
	["$CameraType"]: ((Enum.CameraType) -> ())?,
	["DiagonalFieldOfView"]: Prop<number>,
	["$DiagonalFieldOfView"]: ((number) -> ())?,
	["FieldOfView"]: Prop<number>,
	["$FieldOfView"]: ((number) -> ())?,
	["FieldOfViewMode"]: Prop<Enum.FieldOfViewMode>,
	["$FieldOfViewMode"]: ((Enum.FieldOfViewMode) -> ())?,
	["Focus"]: Prop<CFrame>,
	["$Focus"]: ((CFrame) -> ())?,
	["HeadLocked"]: Prop<boolean>,
	["$HeadLocked"]: ((boolean) -> ())?,
	["HeadScale"]: Prop<number>,
	["$HeadScale"]: ((number) -> ())?,
	["MaxAxisFieldOfView"]: Prop<number>,
	["$MaxAxisFieldOfView"]: ((number) -> ())?,
	["$NearPlaneZ"]: ((number) -> ())?,
	["VRTiltAndRollEnabled"]: Prop<boolean>,
	["$VRTiltAndRollEnabled"]: ((boolean) -> ())?,
	["$ViewportSize"]: ((Vector2) -> ())?,
	["@FirstPersonTransition"]: ((entering: boolean) -> ())?,
	["@InterpolationFinished"]: (() -> ())?,
}
Export.Camera = function(Props: Camera_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Camera", PropMap = Props, ChildMap = Children or {} }
end
export type CharacterAppearance_PropMap = Instance_PropMap & {}
export type BodyColors_PropMap = CharacterAppearance_PropMap & {
	["HeadColor"]: Prop<BrickColor>,
	["$HeadColor"]: ((BrickColor) -> ())?,
	["HeadColor3"]: Prop<Color3>,
	["$HeadColor3"]: ((Color3) -> ())?,
	["LeftArmColor"]: Prop<BrickColor>,
	["$LeftArmColor"]: ((BrickColor) -> ())?,
	["LeftArmColor3"]: Prop<Color3>,
	["$LeftArmColor3"]: ((Color3) -> ())?,
	["LeftLegColor"]: Prop<BrickColor>,
	["$LeftLegColor"]: ((BrickColor) -> ())?,
	["LeftLegColor3"]: Prop<Color3>,
	["$LeftLegColor3"]: ((Color3) -> ())?,
	["RightArmColor"]: Prop<BrickColor>,
	["$RightArmColor"]: ((BrickColor) -> ())?,
	["RightArmColor3"]: Prop<Color3>,
	["$RightArmColor3"]: ((Color3) -> ())?,
	["RightLegColor"]: Prop<BrickColor>,
	["$RightLegColor"]: ((BrickColor) -> ())?,
	["RightLegColor3"]: Prop<Color3>,
	["$RightLegColor3"]: ((Color3) -> ())?,
	["TorsoColor"]: Prop<BrickColor>,
	["$TorsoColor"]: ((BrickColor) -> ())?,
	["TorsoColor3"]: Prop<Color3>,
	["$TorsoColor3"]: ((Color3) -> ())?,
}
Export.BodyColors = function(Props: BodyColors_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BodyColors", PropMap = Props, ChildMap = Children or {} }
end
export type CharacterMesh_PropMap = CharacterAppearance_PropMap & {
	["BaseTextureId"]: Prop<number>,
	["$BaseTextureId"]: ((number) -> ())?,
	["BodyPart"]: Prop<Enum.BodyPart>,
	["$BodyPart"]: ((Enum.BodyPart) -> ())?,
	["MeshId"]: Prop<number>,
	["$MeshId"]: ((number) -> ())?,
	["OverlayTextureId"]: Prop<number>,
	["$OverlayTextureId"]: ((number) -> ())?,
}
Export.CharacterMesh = function(Props: CharacterMesh_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "CharacterMesh", PropMap = Props, ChildMap = Children or {} }
end
export type Clothing_PropMap = CharacterAppearance_PropMap & { ["Color3"]: Prop<Color3>, ["$Color3"]: ((Color3) -> ())? }
export type Pants_PropMap = Clothing_PropMap & { ["PantsTemplate"]: Prop<string>, ["$PantsTemplate"]: ((string) -> ())? }
Export.Pants = function(Props: Pants_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Pants", PropMap = Props, ChildMap = Children or {} }
end
export type Shirt_PropMap = Clothing_PropMap & { ["ShirtTemplate"]: Prop<string>, ["$ShirtTemplate"]: ((string) -> ())? }
Export.Shirt = function(Props: Shirt_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Shirt", PropMap = Props, ChildMap = Children or {} }
end
export type ShirtGraphic_PropMap = CharacterAppearance_PropMap & {
	["Color3"]: Prop<Color3>,
	["$Color3"]: ((Color3) -> ())?,
	["Graphic"]: Prop<string>,
	["$Graphic"]: ((string) -> ())?,
}
Export.ShirtGraphic = function(Props: ShirtGraphic_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ShirtGraphic", PropMap = Props, ChildMap = Children or {} }
end
export type ClickDetector_PropMap = Instance_PropMap & {
	["CursorIcon"]: Prop<string>,
	["$CursorIcon"]: ((string) -> ())?,
	["MaxActivationDistance"]: Prop<number>,
	["$MaxActivationDistance"]: ((number) -> ())?,
	["@MouseClick"]: ((playerWhoClicked: Player) -> ())?,
	["@MouseHoverEnter"]: ((playerWhoHovered: Player) -> ())?,
	["@MouseHoverLeave"]: ((playerWhoHovered: Player) -> ())?,
	["@RightMouseClick"]: ((playerWhoClicked: Player) -> ())?,
}
Export.ClickDetector = function(Props: ClickDetector_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ClickDetector", PropMap = Props, ChildMap = Children or {} }
end
export type DragDetector_PropMap = ClickDetector_PropMap & {
	["ActivatedCursorIcon"]: Prop<string>,
	["$ActivatedCursorIcon"]: ((string) -> ())?,
	["ApplyAtCenterOfMass"]: Prop<boolean>,
	["$ApplyAtCenterOfMass"]: ((boolean) -> ())?,
	["Axis"]: Prop<Vector3>,
	["$Axis"]: ((Vector3) -> ())?,
	["DragFrame"]: Prop<CFrame>,
	["$DragFrame"]: ((CFrame) -> ())?,
	["DragStyle"]: Prop<Enum.DragDetectorDragStyle>,
	["$DragStyle"]: ((Enum.DragDetectorDragStyle) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["GamepadModeSwitchKeyCode"]: Prop<Enum.KeyCode>,
	["$GamepadModeSwitchKeyCode"]: ((Enum.KeyCode) -> ())?,
	["KeyboardModeSwitchKeyCode"]: Prop<Enum.KeyCode>,
	["$KeyboardModeSwitchKeyCode"]: ((Enum.KeyCode) -> ())?,
	["MaxDragAngle"]: Prop<number>,
	["$MaxDragAngle"]: ((number) -> ())?,
	["MaxDragTranslation"]: Prop<Vector3>,
	["$MaxDragTranslation"]: ((Vector3) -> ())?,
	["MaxForce"]: Prop<number>,
	["$MaxForce"]: ((number) -> ())?,
	["MaxTorque"]: Prop<number>,
	["$MaxTorque"]: ((number) -> ())?,
	["MinDragAngle"]: Prop<number>,
	["$MinDragAngle"]: ((number) -> ())?,
	["MinDragTranslation"]: Prop<Vector3>,
	["$MinDragTranslation"]: ((Vector3) -> ())?,
	["Orientation"]: Prop<Vector3>,
	["$Orientation"]: ((Vector3) -> ())?,
	["ReferenceInstance"]: Prop<Instance>,
	["$ReferenceInstance"]: ((Instance) -> ())?,
	["ResponseStyle"]: Prop<Enum.DragDetectorResponseStyle>,
	["$ResponseStyle"]: ((Enum.DragDetectorResponseStyle) -> ())?,
	["Responsiveness"]: Prop<number>,
	["$Responsiveness"]: ((number) -> ())?,
	["RunLocally"]: Prop<boolean>,
	["$RunLocally"]: ((boolean) -> ())?,
	["SecondaryAxis"]: Prop<Vector3>,
	["$SecondaryAxis"]: ((Vector3) -> ())?,
	["TrackballRadialPullFactor"]: Prop<number>,
	["$TrackballRadialPullFactor"]: ((number) -> ())?,
	["TrackballRollFactor"]: Prop<number>,
	["$TrackballRollFactor"]: ((number) -> ())?,
	["VRSwitchKeyCode"]: Prop<Enum.KeyCode>,
	["$VRSwitchKeyCode"]: ((Enum.KeyCode) -> ())?,
	["WorldAxis"]: Prop<Vector3>,
	["$WorldAxis"]: ((Vector3) -> ())?,
	["WorldSecondaryAxis"]: Prop<Vector3>,
	["$WorldSecondaryAxis"]: ((Vector3) -> ())?,
	["@DragContinue"]: ((
		playerWhoDragged: Player,
		cursorRay: Ray,
		viewFrame: CFrame,
		vrInputFrame: CFrame?,
		isModeSwitchKeyDown: boolean
	) -> ())?,
	["@DragEnd"]: ((playerWhoDragged: Player) -> ())?,
	["@DragStart"]: ((
		playerWhoDragged: Player,
		cursorRay: Ray,
		viewFrame: CFrame,
		hitFrame: CFrame,
		clickedPart: BasePart,
		vrInputFrame: CFrame?,
		isModeSwitchKeyDown: boolean
	) -> ())?,
}
Export.DragDetector = function(Props: DragDetector_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "DragDetector", PropMap = Props, ChildMap = Children or {} }
end
export type Clouds_PropMap = Instance_PropMap & {
	["Color"]: Prop<Color3>,
	["$Color"]: ((Color3) -> ())?,
	["Cover"]: Prop<number>,
	["$Cover"]: ((number) -> ())?,
	["Density"]: Prop<number>,
	["$Density"]: ((number) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
}
Export.Clouds = function(Props: Clouds_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Clouds", PropMap = Props, ChildMap = Children or {} }
end
export type Configuration_PropMap = Instance_PropMap & {}
Export.Configuration = function(Props: Configuration_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Configuration", PropMap = Props, ChildMap = Children or {} }
end
export type Constraint_PropMap = Instance_PropMap & {
	["$Active"]: ((boolean) -> ())?,
	["Attachment0"]: Prop<Attachment>,
	["$Attachment0"]: ((Attachment) -> ())?,
	["Attachment1"]: Prop<Attachment>,
	["$Attachment1"]: ((Attachment) -> ())?,
	["Color"]: Prop<BrickColor>,
	["$Color"]: ((BrickColor) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["Visible"]: Prop<boolean>,
	["$Visible"]: ((boolean) -> ())?,
}
export type AlignOrientation_PropMap = Constraint_PropMap & {
	["AlignType"]: Prop<Enum.AlignType>,
	["$AlignType"]: ((Enum.AlignType) -> ())?,
	["CFrame"]: Prop<CFrame>,
	["$CFrame"]: ((CFrame) -> ())?,
	["LookAtPosition"]: Prop<Vector3>,
	["$LookAtPosition"]: ((Vector3) -> ())?,
	["MaxAngularVelocity"]: Prop<number>,
	["$MaxAngularVelocity"]: ((number) -> ())?,
	["MaxTorque"]: Prop<number>,
	["$MaxTorque"]: ((number) -> ())?,
	["Mode"]: Prop<Enum.OrientationAlignmentMode>,
	["$Mode"]: ((Enum.OrientationAlignmentMode) -> ())?,
	["PrimaryAxis"]: Prop<Vector3>,
	["$PrimaryAxis"]: ((Vector3) -> ())?,
	["PrimaryAxisOnly"]: Prop<boolean>,
	["$PrimaryAxisOnly"]: ((boolean) -> ())?,
	["ReactionTorqueEnabled"]: Prop<boolean>,
	["$ReactionTorqueEnabled"]: ((boolean) -> ())?,
	["Responsiveness"]: Prop<number>,
	["$Responsiveness"]: ((number) -> ())?,
	["RigidityEnabled"]: Prop<boolean>,
	["$RigidityEnabled"]: ((boolean) -> ())?,
	["SecondaryAxis"]: Prop<Vector3>,
	["$SecondaryAxis"]: ((Vector3) -> ())?,
}
Export.AlignOrientation = function(Props: AlignOrientation_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AlignOrientation", PropMap = Props, ChildMap = Children or {} }
end
export type AlignPosition_PropMap = Constraint_PropMap & {
	["ApplyAtCenterOfMass"]: Prop<boolean>,
	["$ApplyAtCenterOfMass"]: ((boolean) -> ())?,
	["ForceLimitMode"]: Prop<Enum.ForceLimitMode>,
	["$ForceLimitMode"]: ((Enum.ForceLimitMode) -> ())?,
	["ForceRelativeTo"]: Prop<Enum.ActuatorRelativeTo>,
	["$ForceRelativeTo"]: ((Enum.ActuatorRelativeTo) -> ())?,
	["MaxAxesForce"]: Prop<Vector3>,
	["$MaxAxesForce"]: ((Vector3) -> ())?,
	["MaxForce"]: Prop<number>,
	["$MaxForce"]: ((number) -> ())?,
	["MaxVelocity"]: Prop<number>,
	["$MaxVelocity"]: ((number) -> ())?,
	["Mode"]: Prop<Enum.PositionAlignmentMode>,
	["$Mode"]: ((Enum.PositionAlignmentMode) -> ())?,
	["Position"]: Prop<Vector3>,
	["$Position"]: ((Vector3) -> ())?,
	["ReactionForceEnabled"]: Prop<boolean>,
	["$ReactionForceEnabled"]: ((boolean) -> ())?,
	["Responsiveness"]: Prop<number>,
	["$Responsiveness"]: ((number) -> ())?,
	["RigidityEnabled"]: Prop<boolean>,
	["$RigidityEnabled"]: ((boolean) -> ())?,
}
Export.AlignPosition = function(Props: AlignPosition_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AlignPosition", PropMap = Props, ChildMap = Children or {} }
end
export type AngularVelocity_PropMap = Constraint_PropMap & {
	["AngularVelocity"]: Prop<Vector3>,
	["$AngularVelocity"]: ((Vector3) -> ())?,
	["MaxTorque"]: Prop<number>,
	["$MaxTorque"]: ((number) -> ())?,
	["ReactionTorqueEnabled"]: Prop<boolean>,
	["$ReactionTorqueEnabled"]: ((boolean) -> ())?,
	["RelativeTo"]: Prop<Enum.ActuatorRelativeTo>,
	["$RelativeTo"]: ((Enum.ActuatorRelativeTo) -> ())?,
}
Export.AngularVelocity = function(Props: AngularVelocity_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AngularVelocity", PropMap = Props, ChildMap = Children or {} }
end
export type AnimationConstraint_PropMap = Constraint_PropMap & {
	["IsKinematic"]: Prop<boolean>,
	["$IsKinematic"]: ((boolean) -> ())?,
	["MaxForce"]: Prop<number>,
	["$MaxForce"]: ((number) -> ())?,
	["MaxTorque"]: Prop<number>,
	["$MaxTorque"]: ((number) -> ())?,
	["Transform"]: Prop<CFrame>,
	["$Transform"]: ((CFrame) -> ())?,
}
Export.AnimationConstraint = function(Props: AnimationConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AnimationConstraint", PropMap = Props, ChildMap = Children or {} }
end
export type BallSocketConstraint_PropMap = Constraint_PropMap & {
	["LimitsEnabled"]: Prop<boolean>,
	["$LimitsEnabled"]: ((boolean) -> ())?,
	["MaxFrictionTorque"]: Prop<number>,
	["$MaxFrictionTorque"]: ((number) -> ())?,
	["Radius"]: Prop<number>,
	["$Radius"]: ((number) -> ())?,
	["Restitution"]: Prop<number>,
	["$Restitution"]: ((number) -> ())?,
	["TwistLimitsEnabled"]: Prop<boolean>,
	["$TwistLimitsEnabled"]: ((boolean) -> ())?,
	["TwistLowerAngle"]: Prop<number>,
	["$TwistLowerAngle"]: ((number) -> ())?,
	["TwistUpperAngle"]: Prop<number>,
	["$TwistUpperAngle"]: ((number) -> ())?,
	["UpperAngle"]: Prop<number>,
	["$UpperAngle"]: ((number) -> ())?,
}
Export.BallSocketConstraint = function(Props: BallSocketConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BallSocketConstraint", PropMap = Props, ChildMap = Children or {} }
end
export type HingeConstraint_PropMap = Constraint_PropMap & {
	["ActuatorType"]: Prop<Enum.ActuatorType>,
	["$ActuatorType"]: ((Enum.ActuatorType) -> ())?,
	["AngularResponsiveness"]: Prop<number>,
	["$AngularResponsiveness"]: ((number) -> ())?,
	["AngularSpeed"]: Prop<number>,
	["$AngularSpeed"]: ((number) -> ())?,
	["AngularVelocity"]: Prop<number>,
	["$AngularVelocity"]: ((number) -> ())?,
	["$CurrentAngle"]: ((number) -> ())?,
	["LimitsEnabled"]: Prop<boolean>,
	["$LimitsEnabled"]: ((boolean) -> ())?,
	["LowerAngle"]: Prop<number>,
	["$LowerAngle"]: ((number) -> ())?,
	["MotorMaxAcceleration"]: Prop<number>,
	["$MotorMaxAcceleration"]: ((number) -> ())?,
	["MotorMaxTorque"]: Prop<number>,
	["$MotorMaxTorque"]: ((number) -> ())?,
	["Radius"]: Prop<number>,
	["$Radius"]: ((number) -> ())?,
	["Restitution"]: Prop<number>,
	["$Restitution"]: ((number) -> ())?,
	["ServoMaxTorque"]: Prop<number>,
	["$ServoMaxTorque"]: ((number) -> ())?,
	["TargetAngle"]: Prop<number>,
	["$TargetAngle"]: ((number) -> ())?,
	["UpperAngle"]: Prop<number>,
	["$UpperAngle"]: ((number) -> ())?,
}
Export.HingeConstraint = function(Props: HingeConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "HingeConstraint", PropMap = Props, ChildMap = Children or {} }
end
export type LineForce_PropMap = Constraint_PropMap & {
	["ApplyAtCenterOfMass"]: Prop<boolean>,
	["$ApplyAtCenterOfMass"]: ((boolean) -> ())?,
	["InverseSquareLaw"]: Prop<boolean>,
	["$InverseSquareLaw"]: ((boolean) -> ())?,
	["Magnitude"]: Prop<number>,
	["$Magnitude"]: ((number) -> ())?,
	["MaxForce"]: Prop<number>,
	["$MaxForce"]: ((number) -> ())?,
	["ReactionForceEnabled"]: Prop<boolean>,
	["$ReactionForceEnabled"]: ((boolean) -> ())?,
}
Export.LineForce = function(Props: LineForce_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "LineForce", PropMap = Props, ChildMap = Children or {} }
end
export type LinearVelocity_PropMap = Constraint_PropMap & {
	["ForceLimitMode"]: Prop<Enum.ForceLimitMode>,
	["$ForceLimitMode"]: ((Enum.ForceLimitMode) -> ())?,
	["ForceLimitsEnabled"]: Prop<boolean>,
	["$ForceLimitsEnabled"]: ((boolean) -> ())?,
	["LineDirection"]: Prop<Vector3>,
	["$LineDirection"]: ((Vector3) -> ())?,
	["LineVelocity"]: Prop<number>,
	["$LineVelocity"]: ((number) -> ())?,
	["MaxAxesForce"]: Prop<Vector3>,
	["$MaxAxesForce"]: ((Vector3) -> ())?,
	["MaxForce"]: Prop<number>,
	["$MaxForce"]: ((number) -> ())?,
	["MaxPlanarAxesForce"]: Prop<Vector2>,
	["$MaxPlanarAxesForce"]: ((Vector2) -> ())?,
	["PlaneVelocity"]: Prop<Vector2>,
	["$PlaneVelocity"]: ((Vector2) -> ())?,
	["PrimaryTangentAxis"]: Prop<Vector3>,
	["$PrimaryTangentAxis"]: ((Vector3) -> ())?,
	["RelativeTo"]: Prop<Enum.ActuatorRelativeTo>,
	["$RelativeTo"]: ((Enum.ActuatorRelativeTo) -> ())?,
	["SecondaryTangentAxis"]: Prop<Vector3>,
	["$SecondaryTangentAxis"]: ((Vector3) -> ())?,
	["VectorVelocity"]: Prop<Vector3>,
	["$VectorVelocity"]: ((Vector3) -> ())?,
	["VelocityConstraintMode"]: Prop<Enum.VelocityConstraintMode>,
	["$VelocityConstraintMode"]: ((Enum.VelocityConstraintMode) -> ())?,
}
Export.LinearVelocity = function(Props: LinearVelocity_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "LinearVelocity", PropMap = Props, ChildMap = Children or {} }
end
export type PlaneConstraint_PropMap = Constraint_PropMap & {}
Export.PlaneConstraint = function(Props: PlaneConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "PlaneConstraint", PropMap = Props, ChildMap = Children or {} }
end
export type RigidConstraint_PropMap = Constraint_PropMap & {}
Export.RigidConstraint = function(Props: RigidConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "RigidConstraint", PropMap = Props, ChildMap = Children or {} }
end
export type RodConstraint_PropMap = Constraint_PropMap & {
	["$CurrentDistance"]: ((number) -> ())?,
	["Length"]: Prop<number>,
	["$Length"]: ((number) -> ())?,
	["LimitAngle0"]: Prop<number>,
	["$LimitAngle0"]: ((number) -> ())?,
	["LimitAngle1"]: Prop<number>,
	["$LimitAngle1"]: ((number) -> ())?,
	["LimitsEnabled"]: Prop<boolean>,
	["$LimitsEnabled"]: ((boolean) -> ())?,
	["Thickness"]: Prop<number>,
	["$Thickness"]: ((number) -> ())?,
}
Export.RodConstraint = function(Props: RodConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "RodConstraint", PropMap = Props, ChildMap = Children or {} }
end
export type RopeConstraint_PropMap = Constraint_PropMap & {
	["$CurrentDistance"]: ((number) -> ())?,
	["Length"]: Prop<number>,
	["$Length"]: ((number) -> ())?,
	["Restitution"]: Prop<number>,
	["$Restitution"]: ((number) -> ())?,
	["Thickness"]: Prop<number>,
	["$Thickness"]: ((number) -> ())?,
	["WinchEnabled"]: Prop<boolean>,
	["$WinchEnabled"]: ((boolean) -> ())?,
	["WinchForce"]: Prop<number>,
	["$WinchForce"]: ((number) -> ())?,
	["WinchResponsiveness"]: Prop<number>,
	["$WinchResponsiveness"]: ((number) -> ())?,
	["WinchSpeed"]: Prop<number>,
	["$WinchSpeed"]: ((number) -> ())?,
	["WinchTarget"]: Prop<number>,
	["$WinchTarget"]: ((number) -> ())?,
}
Export.RopeConstraint = function(Props: RopeConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "RopeConstraint", PropMap = Props, ChildMap = Children or {} }
end
export type SlidingBallConstraint_PropMap = Constraint_PropMap & {
	["ActuatorType"]: Prop<Enum.ActuatorType>,
	["$ActuatorType"]: ((Enum.ActuatorType) -> ())?,
	["$CurrentPosition"]: ((number) -> ())?,
	["LimitsEnabled"]: Prop<boolean>,
	["$LimitsEnabled"]: ((boolean) -> ())?,
	["LinearResponsiveness"]: Prop<number>,
	["$LinearResponsiveness"]: ((number) -> ())?,
	["LowerLimit"]: Prop<number>,
	["$LowerLimit"]: ((number) -> ())?,
	["MotorMaxAcceleration"]: Prop<number>,
	["$MotorMaxAcceleration"]: ((number) -> ())?,
	["MotorMaxForce"]: Prop<number>,
	["$MotorMaxForce"]: ((number) -> ())?,
	["Restitution"]: Prop<number>,
	["$Restitution"]: ((number) -> ())?,
	["ServoMaxForce"]: Prop<number>,
	["$ServoMaxForce"]: ((number) -> ())?,
	["Size"]: Prop<number>,
	["$Size"]: ((number) -> ())?,
	["Speed"]: Prop<number>,
	["$Speed"]: ((number) -> ())?,
	["TargetPosition"]: Prop<number>,
	["$TargetPosition"]: ((number) -> ())?,
	["UpperLimit"]: Prop<number>,
	["$UpperLimit"]: ((number) -> ())?,
	["Velocity"]: Prop<number>,
	["$Velocity"]: ((number) -> ())?,
}
export type CylindricalConstraint_PropMap = SlidingBallConstraint_PropMap & {
	["AngularActuatorType"]: Prop<Enum.ActuatorType>,
	["$AngularActuatorType"]: ((Enum.ActuatorType) -> ())?,
	["AngularLimitsEnabled"]: Prop<boolean>,
	["$AngularLimitsEnabled"]: ((boolean) -> ())?,
	["AngularResponsiveness"]: Prop<number>,
	["$AngularResponsiveness"]: ((number) -> ())?,
	["AngularRestitution"]: Prop<number>,
	["$AngularRestitution"]: ((number) -> ())?,
	["AngularSpeed"]: Prop<number>,
	["$AngularSpeed"]: ((number) -> ())?,
	["AngularVelocity"]: Prop<number>,
	["$AngularVelocity"]: ((number) -> ())?,
	["$CurrentAngle"]: ((number) -> ())?,
	["InclinationAngle"]: Prop<number>,
	["$InclinationAngle"]: ((number) -> ())?,
	["LowerAngle"]: Prop<number>,
	["$LowerAngle"]: ((number) -> ())?,
	["MotorMaxAngularAcceleration"]: Prop<number>,
	["$MotorMaxAngularAcceleration"]: ((number) -> ())?,
	["MotorMaxTorque"]: Prop<number>,
	["$MotorMaxTorque"]: ((number) -> ())?,
	["RotationAxisVisible"]: Prop<boolean>,
	["$RotationAxisVisible"]: ((boolean) -> ())?,
	["ServoMaxTorque"]: Prop<number>,
	["$ServoMaxTorque"]: ((number) -> ())?,
	["TargetAngle"]: Prop<number>,
	["$TargetAngle"]: ((number) -> ())?,
	["UpperAngle"]: Prop<number>,
	["$UpperAngle"]: ((number) -> ())?,
	["$WorldRotationAxis"]: ((Vector3) -> ())?,
}
Export.CylindricalConstraint = function(Props: CylindricalConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "CylindricalConstraint", PropMap = Props, ChildMap = Children
		or {} }
end
export type PrismaticConstraint_PropMap = SlidingBallConstraint_PropMap & {}
Export.PrismaticConstraint = function(Props: PrismaticConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "PrismaticConstraint", PropMap = Props, ChildMap = Children or {} }
end
export type SpringConstraint_PropMap = Constraint_PropMap & {
	["Coils"]: Prop<number>,
	["$Coils"]: ((number) -> ())?,
	["$CurrentLength"]: ((number) -> ())?,
	["Damping"]: Prop<number>,
	["$Damping"]: ((number) -> ())?,
	["FreeLength"]: Prop<number>,
	["$FreeLength"]: ((number) -> ())?,
	["LimitsEnabled"]: Prop<boolean>,
	["$LimitsEnabled"]: ((boolean) -> ())?,
	["MaxForce"]: Prop<number>,
	["$MaxForce"]: ((number) -> ())?,
	["MaxLength"]: Prop<number>,
	["$MaxLength"]: ((number) -> ())?,
	["MinLength"]: Prop<number>,
	["$MinLength"]: ((number) -> ())?,
	["Radius"]: Prop<number>,
	["$Radius"]: ((number) -> ())?,
	["Stiffness"]: Prop<number>,
	["$Stiffness"]: ((number) -> ())?,
	["Thickness"]: Prop<number>,
	["$Thickness"]: ((number) -> ())?,
}
Export.SpringConstraint = function(Props: SpringConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SpringConstraint", PropMap = Props, ChildMap = Children or {} }
end
export type Torque_PropMap = Constraint_PropMap & {
	["RelativeTo"]: Prop<Enum.ActuatorRelativeTo>,
	["$RelativeTo"]: ((Enum.ActuatorRelativeTo) -> ())?,
	["Torque"]: Prop<Vector3>,
	["$Torque"]: ((Vector3) -> ())?,
}
Export.Torque = function(Props: Torque_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Torque", PropMap = Props, ChildMap = Children or {} }
end
export type TorsionSpringConstraint_PropMap = Constraint_PropMap & {
	["Coils"]: Prop<number>,
	["$Coils"]: ((number) -> ())?,
	["$CurrentAngle"]: ((number) -> ())?,
	["Damping"]: Prop<number>,
	["$Damping"]: ((number) -> ())?,
	["LimitsEnabled"]: Prop<boolean>,
	["$LimitsEnabled"]: ((boolean) -> ())?,
	["MaxAngle"]: Prop<number>,
	["$MaxAngle"]: ((number) -> ())?,
	["MaxTorque"]: Prop<number>,
	["$MaxTorque"]: ((number) -> ())?,
	["Radius"]: Prop<number>,
	["$Radius"]: ((number) -> ())?,
	["Restitution"]: Prop<number>,
	["$Restitution"]: ((number) -> ())?,
	["Stiffness"]: Prop<number>,
	["$Stiffness"]: ((number) -> ())?,
}
Export.TorsionSpringConstraint = function(Props: TorsionSpringConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TorsionSpringConstraint", PropMap = Props, ChildMap = Children
		or {} }
end
export type UniversalConstraint_PropMap = Constraint_PropMap & {
	["LimitsEnabled"]: Prop<boolean>,
	["$LimitsEnabled"]: ((boolean) -> ())?,
	["MaxAngle"]: Prop<number>,
	["$MaxAngle"]: ((number) -> ())?,
	["Radius"]: Prop<number>,
	["$Radius"]: ((number) -> ())?,
	["Restitution"]: Prop<number>,
	["$Restitution"]: ((number) -> ())?,
}
Export.UniversalConstraint = function(Props: UniversalConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UniversalConstraint", PropMap = Props, ChildMap = Children or {} }
end
export type VectorForce_PropMap = Constraint_PropMap & {
	["ApplyAtCenterOfMass"]: Prop<boolean>,
	["$ApplyAtCenterOfMass"]: ((boolean) -> ())?,
	["Force"]: Prop<Vector3>,
	["$Force"]: ((Vector3) -> ())?,
	["RelativeTo"]: Prop<Enum.ActuatorRelativeTo>,
	["$RelativeTo"]: ((Enum.ActuatorRelativeTo) -> ())?,
}
Export.VectorForce = function(Props: VectorForce_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "VectorForce", PropMap = Props, ChildMap = Children or {} }
end
export type Controller_PropMap = Instance_PropMap & { ["@ButtonChanged"]: ((button: Enum.Button) -> ())? }
export type HumanoidController_PropMap = Controller_PropMap & {}
Export.HumanoidController = function(Props: HumanoidController_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "HumanoidController", PropMap = Props, ChildMap = Children or {} }
end
export type SkateboardController_PropMap = Controller_PropMap & {
	["$Steer"]: ((number) -> ())?,
	["$Throttle"]: ((number) -> ())?,
	["@AxisChanged"]: ((axis: string) -> ())?,
}
Export.SkateboardController = function(Props: SkateboardController_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SkateboardController", PropMap = Props, ChildMap = Children or {} }
end
export type VehicleController_PropMap = Controller_PropMap & {}
Export.VehicleController = function(Props: VehicleController_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "VehicleController", PropMap = Props, ChildMap = Children or {} }
end
export type ControllerBase_PropMap = Instance_PropMap & {
	["$Active"]: ((boolean) -> ())?,
	["BalanceRigidityEnabled"]: Prop<boolean>,
	["$BalanceRigidityEnabled"]: ((boolean) -> ())?,
	["MoveSpeedFactor"]: Prop<number>,
	["$MoveSpeedFactor"]: ((number) -> ())?,
}
export type AirController_PropMap = ControllerBase_PropMap & {
	["BalanceMaxTorque"]: Prop<number>,
	["$BalanceMaxTorque"]: ((number) -> ())?,
	["BalanceSpeed"]: Prop<number>,
	["$BalanceSpeed"]: ((number) -> ())?,
	["LinearImpulse"]: Prop<Vector3>,
	["$LinearImpulse"]: ((Vector3) -> ())?,
	["MaintainAngularMomentum"]: Prop<boolean>,
	["$MaintainAngularMomentum"]: ((boolean) -> ())?,
	["MaintainLinearMomentum"]: Prop<boolean>,
	["$MaintainLinearMomentum"]: ((boolean) -> ())?,
	["MoveMaxForce"]: Prop<number>,
	["$MoveMaxForce"]: ((number) -> ())?,
	["TurnMaxTorque"]: Prop<number>,
	["$TurnMaxTorque"]: ((number) -> ())?,
	["TurnSpeedFactor"]: Prop<number>,
	["$TurnSpeedFactor"]: ((number) -> ())?,
}
Export.AirController = function(Props: AirController_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AirController", PropMap = Props, ChildMap = Children or {} }
end
export type ClimbController_PropMap = ControllerBase_PropMap & {
	["AccelerationTime"]: Prop<number>,
	["$AccelerationTime"]: ((number) -> ())?,
	["BalanceMaxTorque"]: Prop<number>,
	["$BalanceMaxTorque"]: ((number) -> ())?,
	["BalanceSpeed"]: Prop<number>,
	["$BalanceSpeed"]: ((number) -> ())?,
	["MoveMaxForce"]: Prop<number>,
	["$MoveMaxForce"]: ((number) -> ())?,
}
Export.ClimbController = function(Props: ClimbController_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ClimbController", PropMap = Props, ChildMap = Children or {} }
end
export type GroundController_PropMap = ControllerBase_PropMap & {
	["AccelerationLean"]: Prop<number>,
	["$AccelerationLean"]: ((number) -> ())?,
	["AccelerationTime"]: Prop<number>,
	["$AccelerationTime"]: ((number) -> ())?,
	["BalanceMaxTorque"]: Prop<number>,
	["$BalanceMaxTorque"]: ((number) -> ())?,
	["BalanceSpeed"]: Prop<number>,
	["$BalanceSpeed"]: ((number) -> ())?,
	["DecelerationTime"]: Prop<number>,
	["$DecelerationTime"]: ((number) -> ())?,
	["Friction"]: Prop<number>,
	["$Friction"]: ((number) -> ())?,
	["FrictionWeight"]: Prop<number>,
	["$FrictionWeight"]: ((number) -> ())?,
	["GroundOffset"]: Prop<number>,
	["$GroundOffset"]: ((number) -> ())?,
	["StandForce"]: Prop<number>,
	["$StandForce"]: ((number) -> ())?,
	["StandSpeed"]: Prop<number>,
	["$StandSpeed"]: ((number) -> ())?,
	["TurnSpeedFactor"]: Prop<number>,
	["$TurnSpeedFactor"]: ((number) -> ())?,
}
Export.GroundController = function(Props: GroundController_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "GroundController", PropMap = Props, ChildMap = Children or {} }
end
export type SwimController_PropMap = ControllerBase_PropMap & {
	["AccelerationTime"]: Prop<number>,
	["$AccelerationTime"]: ((number) -> ())?,
	["PitchMaxTorque"]: Prop<number>,
	["$PitchMaxTorque"]: ((number) -> ())?,
	["PitchSpeedFactor"]: Prop<number>,
	["$PitchSpeedFactor"]: ((number) -> ())?,
	["RollMaxTorque"]: Prop<number>,
	["$RollMaxTorque"]: ((number) -> ())?,
	["RollSpeedFactor"]: Prop<number>,
	["$RollSpeedFactor"]: ((number) -> ())?,
}
Export.SwimController = function(Props: SwimController_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SwimController", PropMap = Props, ChildMap = Children or {} }
end
export type ControllerManager_PropMap = Instance_PropMap & {
	["ActiveController"]: Prop<ControllerBase>,
	["$ActiveController"]: ((ControllerBase) -> ())?,
	["BaseMoveSpeed"]: Prop<number>,
	["$BaseMoveSpeed"]: ((number) -> ())?,
	["BaseTurnSpeed"]: Prop<number>,
	["$BaseTurnSpeed"]: ((number) -> ())?,
	["ClimbSensor"]: Prop<ControllerSensor>,
	["$ClimbSensor"]: ((ControllerSensor) -> ())?,
	["FacingDirection"]: Prop<Vector3>,
	["$FacingDirection"]: ((Vector3) -> ())?,
	["GroundSensor"]: Prop<ControllerSensor>,
	["$GroundSensor"]: ((ControllerSensor) -> ())?,
	["MovingDirection"]: Prop<Vector3>,
	["$MovingDirection"]: ((Vector3) -> ())?,
	["RootPart"]: Prop<BasePart>,
	["$RootPart"]: ((BasePart) -> ())?,
}
Export.ControllerManager = function(Props: ControllerManager_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ControllerManager", PropMap = Props, ChildMap = Children or {} }
end
export type DataModelMesh_PropMap = Instance_PropMap & {
	["Offset"]: Prop<Vector3>,
	["$Offset"]: ((Vector3) -> ())?,
	["Scale"]: Prop<Vector3>,
	["$Scale"]: ((Vector3) -> ())?,
	["VertexColor"]: Prop<Vector3>,
	["$VertexColor"]: ((Vector3) -> ())?,
}
export type BevelMesh_PropMap = DataModelMesh_PropMap & {}
export type BlockMesh_PropMap = BevelMesh_PropMap & {}
Export.BlockMesh = function(Props: BlockMesh_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BlockMesh", PropMap = Props, ChildMap = Children or {} }
end
export type DynamicMesh_PropMap =
	DataModelMesh_PropMap
	& { ["MeshVersion"]: Prop<number>, ["$MeshVersion"]: ((number) -> ())? }
Export.DynamicMesh = function(Props: DynamicMesh_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "DynamicMesh", PropMap = Props, ChildMap = Children or {} }
end
export type FileMesh_PropMap = DataModelMesh_PropMap & {
	["MeshId"]: Prop<string>,
	["$MeshId"]: ((string) -> ())?,
	["TextureId"]: Prop<string>,
	["$TextureId"]: ((string) -> ())?,
}
Export.FileMesh = function(Props: FileMesh_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "FileMesh", PropMap = Props, ChildMap = Children or {} }
end
export type SpecialMesh_PropMap =
	FileMesh_PropMap
	& { ["MeshType"]: Prop<Enum.MeshType>, ["$MeshType"]: ((Enum.MeshType) -> ())? }
Export.SpecialMesh = function(Props: SpecialMesh_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SpecialMesh", PropMap = Props, ChildMap = Children or {} }
end
export type DataStoreGetOptions_PropMap =
	Instance_PropMap
	& { ["UseCache"]: Prop<boolean>, ["$UseCache"]: ((boolean) -> ())? }
Export.DataStoreGetOptions = function(Props: DataStoreGetOptions_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "DataStoreGetOptions", PropMap = Props, ChildMap = Children or {} }
end
export type DataStoreIncrementOptions_PropMap = Instance_PropMap & {}
Export.DataStoreIncrementOptions = function(Props: DataStoreIncrementOptions_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "DataStoreIncrementOptions", PropMap = Props, ChildMap = Children
		or {} }
end
export type DataStoreOptions_PropMap =
	Instance_PropMap
	& { ["AllScopes"]: Prop<boolean>, ["$AllScopes"]: ((boolean) -> ())? }
Export.DataStoreOptions = function(Props: DataStoreOptions_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "DataStoreOptions", PropMap = Props, ChildMap = Children or {} }
end
export type DataStoreSetOptions_PropMap = Instance_PropMap & {}
Export.DataStoreSetOptions = function(Props: DataStoreSetOptions_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "DataStoreSetOptions", PropMap = Props, ChildMap = Children or {} }
end
export type DebuggerWatch_PropMap = Instance_PropMap & { ["Expression"]: Prop<string>, ["$Expression"]: ((string) -> ())? }
Export.DebuggerWatch = function(Props: DebuggerWatch_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "DebuggerWatch", PropMap = Props, ChildMap = Children or {} }
end
export type Dialog_PropMap = Instance_PropMap & {
	["BehaviorType"]: Prop<Enum.DialogBehaviorType>,
	["$BehaviorType"]: ((Enum.DialogBehaviorType) -> ())?,
	["ConversationDistance"]: Prop<number>,
	["$ConversationDistance"]: ((number) -> ())?,
	["GoodbyeChoiceActive"]: Prop<boolean>,
	["$GoodbyeChoiceActive"]: ((boolean) -> ())?,
	["GoodbyeDialog"]: Prop<string>,
	["$GoodbyeDialog"]: ((string) -> ())?,
	["InUse"]: Prop<boolean>,
	["$InUse"]: ((boolean) -> ())?,
	["InitialPrompt"]: Prop<string>,
	["$InitialPrompt"]: ((string) -> ())?,
	["Purpose"]: Prop<Enum.DialogPurpose>,
	["$Purpose"]: ((Enum.DialogPurpose) -> ())?,
	["Tone"]: Prop<Enum.DialogTone>,
	["$Tone"]: ((Enum.DialogTone) -> ())?,
	["TriggerDistance"]: Prop<number>,
	["$TriggerDistance"]: ((number) -> ())?,
	["TriggerOffset"]: Prop<Vector3>,
	["$TriggerOffset"]: ((Vector3) -> ())?,
	["@DialogChoiceSelected"]: ((player: Instance, dialogChoice: Instance) -> ())?,
}
Export.Dialog = function(Props: Dialog_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Dialog", PropMap = Props, ChildMap = Children or {} }
end
export type DialogChoice_PropMap = Instance_PropMap & {
	["GoodbyeChoiceActive"]: Prop<boolean>,
	["$GoodbyeChoiceActive"]: ((boolean) -> ())?,
	["GoodbyeDialog"]: Prop<string>,
	["$GoodbyeDialog"]: ((string) -> ())?,
	["ResponseDialog"]: Prop<string>,
	["$ResponseDialog"]: ((string) -> ())?,
	["UserDialog"]: Prop<string>,
	["$UserDialog"]: ((string) -> ())?,
}
Export.DialogChoice = function(Props: DialogChoice_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "DialogChoice", PropMap = Props, ChildMap = Children or {} }
end
export type Dragger_PropMap = Instance_PropMap & {}
Export.Dragger = function(Props: Dragger_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Dragger", PropMap = Props, ChildMap = Children or {} }
end
export type DynamicImage_PropMap = Instance_PropMap & { ["Size"]: Prop<Vector2>, ["$Size"]: ((Vector2) -> ())? }
Export.DynamicImage = function(Props: DynamicImage_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "DynamicImage", PropMap = Props, ChildMap = Children or {} }
end
export type EulerRotationCurve_PropMap = Instance_PropMap & {
	["RotationOrder"]: Prop<Enum.RotationOrder>,
	["$RotationOrder"]: ((Enum.RotationOrder) -> ())?,
}
Export.EulerRotationCurve = function(Props: EulerRotationCurve_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "EulerRotationCurve", PropMap = Props, ChildMap = Children or {} }
end
export type ExperienceInviteOptions_PropMap = Instance_PropMap & {
	["InviteMessageId"]: Prop<string>,
	["$InviteMessageId"]: ((string) -> ())?,
	["InviteUser"]: Prop<number>,
	["$InviteUser"]: ((number) -> ())?,
	["LaunchData"]: Prop<string>,
	["$LaunchData"]: ((string) -> ())?,
	["PromptMessage"]: Prop<string>,
	["$PromptMessage"]: ((string) -> ())?,
}
Export.ExperienceInviteOptions = function(Props: ExperienceInviteOptions_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ExperienceInviteOptions", PropMap = Props, ChildMap = Children
		or {} }
end
export type Explosion_PropMap = Instance_PropMap & {
	["BlastPressure"]: Prop<number>,
	["$BlastPressure"]: ((number) -> ())?,
	["BlastRadius"]: Prop<number>,
	["$BlastRadius"]: ((number) -> ())?,
	["DestroyJointRadiusPercent"]: Prop<number>,
	["$DestroyJointRadiusPercent"]: ((number) -> ())?,
	["ExplosionType"]: Prop<Enum.ExplosionType>,
	["$ExplosionType"]: ((Enum.ExplosionType) -> ())?,
	["Position"]: Prop<Vector3>,
	["$Position"]: ((Vector3) -> ())?,
	["TimeScale"]: Prop<number>,
	["$TimeScale"]: ((number) -> ())?,
	["Visible"]: Prop<boolean>,
	["$Visible"]: ((boolean) -> ())?,
	["@Hit"]: ((part: BasePart, distance: number) -> ())?,
}
Export.Explosion = function(Props: Explosion_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Explosion", PropMap = Props, ChildMap = Children or {} }
end
export type FaceControls_PropMap = Instance_PropMap & {
	["ChinRaiser"]: Prop<number>,
	["$ChinRaiser"]: ((number) -> ())?,
	["ChinRaiserUpperLip"]: Prop<number>,
	["$ChinRaiserUpperLip"]: ((number) -> ())?,
	["Corrugator"]: Prop<number>,
	["$Corrugator"]: ((number) -> ())?,
	["EyesLookDown"]: Prop<number>,
	["$EyesLookDown"]: ((number) -> ())?,
	["EyesLookLeft"]: Prop<number>,
	["$EyesLookLeft"]: ((number) -> ())?,
	["EyesLookRight"]: Prop<number>,
	["$EyesLookRight"]: ((number) -> ())?,
	["EyesLookUp"]: Prop<number>,
	["$EyesLookUp"]: ((number) -> ())?,
	["FlatPucker"]: Prop<number>,
	["$FlatPucker"]: ((number) -> ())?,
	["Funneler"]: Prop<number>,
	["$Funneler"]: ((number) -> ())?,
	["JawDrop"]: Prop<number>,
	["$JawDrop"]: ((number) -> ())?,
	["JawLeft"]: Prop<number>,
	["$JawLeft"]: ((number) -> ())?,
	["JawRight"]: Prop<number>,
	["$JawRight"]: ((number) -> ())?,
	["LeftBrowLowerer"]: Prop<number>,
	["$LeftBrowLowerer"]: ((number) -> ())?,
	["LeftCheekPuff"]: Prop<number>,
	["$LeftCheekPuff"]: ((number) -> ())?,
	["LeftCheekRaiser"]: Prop<number>,
	["$LeftCheekRaiser"]: ((number) -> ())?,
	["LeftDimpler"]: Prop<number>,
	["$LeftDimpler"]: ((number) -> ())?,
	["LeftEyeClosed"]: Prop<number>,
	["$LeftEyeClosed"]: ((number) -> ())?,
	["LeftEyeUpperLidRaiser"]: Prop<number>,
	["$LeftEyeUpperLidRaiser"]: ((number) -> ())?,
	["LeftInnerBrowRaiser"]: Prop<number>,
	["$LeftInnerBrowRaiser"]: ((number) -> ())?,
	["LeftLipCornerDown"]: Prop<number>,
	["$LeftLipCornerDown"]: ((number) -> ())?,
	["LeftLipCornerPuller"]: Prop<number>,
	["$LeftLipCornerPuller"]: ((number) -> ())?,
	["LeftLipStretcher"]: Prop<number>,
	["$LeftLipStretcher"]: ((number) -> ())?,
	["LeftLowerLipDepressor"]: Prop<number>,
	["$LeftLowerLipDepressor"]: ((number) -> ())?,
	["LeftNoseWrinkler"]: Prop<number>,
	["$LeftNoseWrinkler"]: ((number) -> ())?,
	["LeftOuterBrowRaiser"]: Prop<number>,
	["$LeftOuterBrowRaiser"]: ((number) -> ())?,
	["LeftUpperLipRaiser"]: Prop<number>,
	["$LeftUpperLipRaiser"]: ((number) -> ())?,
	["LipPresser"]: Prop<number>,
	["$LipPresser"]: ((number) -> ())?,
	["LipsTogether"]: Prop<number>,
	["$LipsTogether"]: ((number) -> ())?,
	["LowerLipSuck"]: Prop<number>,
	["$LowerLipSuck"]: ((number) -> ())?,
	["MouthLeft"]: Prop<number>,
	["$MouthLeft"]: ((number) -> ())?,
	["MouthRight"]: Prop<number>,
	["$MouthRight"]: ((number) -> ())?,
	["Pucker"]: Prop<number>,
	["$Pucker"]: ((number) -> ())?,
	["RightBrowLowerer"]: Prop<number>,
	["$RightBrowLowerer"]: ((number) -> ())?,
	["RightCheekPuff"]: Prop<number>,
	["$RightCheekPuff"]: ((number) -> ())?,
	["RightCheekRaiser"]: Prop<number>,
	["$RightCheekRaiser"]: ((number) -> ())?,
	["RightDimpler"]: Prop<number>,
	["$RightDimpler"]: ((number) -> ())?,
	["RightEyeClosed"]: Prop<number>,
	["$RightEyeClosed"]: ((number) -> ())?,
	["RightEyeUpperLidRaiser"]: Prop<number>,
	["$RightEyeUpperLidRaiser"]: ((number) -> ())?,
	["RightInnerBrowRaiser"]: Prop<number>,
	["$RightInnerBrowRaiser"]: ((number) -> ())?,
	["RightLipCornerDown"]: Prop<number>,
	["$RightLipCornerDown"]: ((number) -> ())?,
	["RightLipCornerPuller"]: Prop<number>,
	["$RightLipCornerPuller"]: ((number) -> ())?,
	["RightLipStretcher"]: Prop<number>,
	["$RightLipStretcher"]: ((number) -> ())?,
	["RightLowerLipDepressor"]: Prop<number>,
	["$RightLowerLipDepressor"]: ((number) -> ())?,
	["RightNoseWrinkler"]: Prop<number>,
	["$RightNoseWrinkler"]: ((number) -> ())?,
	["RightOuterBrowRaiser"]: Prop<number>,
	["$RightOuterBrowRaiser"]: ((number) -> ())?,
	["RightUpperLipRaiser"]: Prop<number>,
	["$RightUpperLipRaiser"]: ((number) -> ())?,
	["TongueDown"]: Prop<number>,
	["$TongueDown"]: ((number) -> ())?,
	["TongueOut"]: Prop<number>,
	["$TongueOut"]: ((number) -> ())?,
	["TongueUp"]: Prop<number>,
	["$TongueUp"]: ((number) -> ())?,
	["UpperLipSuck"]: Prop<number>,
	["$UpperLipSuck"]: ((number) -> ())?,
}
Export.FaceControls = function(Props: FaceControls_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "FaceControls", PropMap = Props, ChildMap = Children or {} }
end
export type FaceInstance_PropMap =
	Instance_PropMap
	& { ["Face"]: Prop<Enum.NormalId>, ["$Face"]: ((Enum.NormalId) -> ())? }
export type Decal_PropMap = FaceInstance_PropMap & {
	["Color3"]: Prop<Color3>,
	["$Color3"]: ((Color3) -> ())?,
	["LocalTransparencyModifier"]: Prop<number>,
	["$LocalTransparencyModifier"]: ((number) -> ())?,
	["Texture"]: Prop<string>,
	["$Texture"]: ((string) -> ())?,
	["Transparency"]: Prop<number>,
	["$Transparency"]: ((number) -> ())?,
	["ZIndex"]: Prop<number>,
	["$ZIndex"]: ((number) -> ())?,
}
Export.Decal = function(Props: Decal_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Decal", PropMap = Props, ChildMap = Children or {} }
end
export type Texture_PropMap = Decal_PropMap & {
	["OffsetStudsU"]: Prop<number>,
	["$OffsetStudsU"]: ((number) -> ())?,
	["OffsetStudsV"]: Prop<number>,
	["$OffsetStudsV"]: ((number) -> ())?,
	["StudsPerTileU"]: Prop<number>,
	["$StudsPerTileU"]: ((number) -> ())?,
	["StudsPerTileV"]: Prop<number>,
	["$StudsPerTileV"]: ((number) -> ())?,
}
Export.Texture = function(Props: Texture_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Texture", PropMap = Props, ChildMap = Children or {} }
end
export type Fire_PropMap = Instance_PropMap & {
	["Color"]: Prop<Color3>,
	["$Color"]: ((Color3) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["Heat"]: Prop<number>,
	["$Heat"]: ((number) -> ())?,
	["SecondaryColor"]: Prop<Color3>,
	["$SecondaryColor"]: ((Color3) -> ())?,
	["Size"]: Prop<number>,
	["$Size"]: ((number) -> ())?,
	["TimeScale"]: Prop<number>,
	["$TimeScale"]: ((number) -> ())?,
}
Export.Fire = function(Props: Fire_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Fire", PropMap = Props, ChildMap = Children or {} }
end
export type FloatCurve_PropMap = Instance_PropMap & { ["$Length"]: ((number) -> ())? }
Export.FloatCurve = function(Props: FloatCurve_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "FloatCurve", PropMap = Props, ChildMap = Children or {} }
end
export type FlyweightService_PropMap = Instance_PropMap & {}
Export.FlyweightService = function(Props: FlyweightService_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "FlyweightService", PropMap = Props, ChildMap = Children or {} }
end
export type CSGDictionaryService_PropMap = FlyweightService_PropMap & {}
Export.CSGDictionaryService = function(Props: CSGDictionaryService_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "CSGDictionaryService", PropMap = Props, ChildMap = Children or {} }
end
export type NonReplicatedCSGDictionaryService_PropMap = FlyweightService_PropMap & {}
Export.NonReplicatedCSGDictionaryService = function(
	Props: NonReplicatedCSGDictionaryService_PropMap,
	Children: { [string]: e }?
): e
	return {
		Type = "Create" :: "Create",
		ClassName = "NonReplicatedCSGDictionaryService",
		PropMap = Props,
		ChildMap = Children or {},
	}
end
export type Folder_PropMap = Instance_PropMap & {}
Export.Folder = function(Props: Folder_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Folder", PropMap = Props, ChildMap = Children or {} }
end
export type ForceField_PropMap = Instance_PropMap & { ["Visible"]: Prop<boolean>, ["$Visible"]: ((boolean) -> ())? }
Export.ForceField = function(Props: ForceField_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ForceField", PropMap = Props, ChildMap = Children or {} }
end
export type GetTextBoundsParams_PropMap = Instance_PropMap & {
	["Font"]: Prop<Font>,
	["$Font"]: ((Font) -> ())?,
	["Size"]: Prop<number>,
	["$Size"]: ((number) -> ())?,
	["Text"]: Prop<string>,
	["$Text"]: ((string) -> ())?,
	["Width"]: Prop<number>,
	["$Width"]: ((number) -> ())?,
}
Export.GetTextBoundsParams = function(Props: GetTextBoundsParams_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "GetTextBoundsParams", PropMap = Props, ChildMap = Children or {} }
end
export type GuiBase_PropMap = Instance_PropMap & {}
export type GuiBase2d_PropMap = GuiBase_PropMap & {
	["$AbsolutePosition"]: ((Vector2) -> ())?,
	["$AbsoluteRotation"]: ((number) -> ())?,
	["$AbsoluteSize"]: ((Vector2) -> ())?,
	["AutoLocalize"]: Prop<boolean>,
	["$AutoLocalize"]: ((boolean) -> ())?,
	["$ClippedRect"]: ((Rect) -> ())?,
	["$IsNotOccluded"]: ((boolean) -> ())?,
	["$RawRect2D"]: ((Rect) -> ())?,
	["RootLocalizationTable"]: Prop<LocalizationTable>,
	["$RootLocalizationTable"]: ((LocalizationTable) -> ())?,
	["SelectionBehaviorDown"]: Prop<Enum.SelectionBehavior>,
	["$SelectionBehaviorDown"]: ((Enum.SelectionBehavior) -> ())?,
	["SelectionBehaviorLeft"]: Prop<Enum.SelectionBehavior>,
	["$SelectionBehaviorLeft"]: ((Enum.SelectionBehavior) -> ())?,
	["SelectionBehaviorRight"]: Prop<Enum.SelectionBehavior>,
	["$SelectionBehaviorRight"]: ((Enum.SelectionBehavior) -> ())?,
	["SelectionBehaviorUp"]: Prop<Enum.SelectionBehavior>,
	["$SelectionBehaviorUp"]: ((Enum.SelectionBehavior) -> ())?,
	["SelectionGroup"]: Prop<boolean>,
	["$SelectionGroup"]: ((boolean) -> ())?,
	["$TotalGroupScale"]: ((number) -> ())?,
	["@SelectionChanged"]: ((amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ())?,
}
export type GuiObject_PropMap = GuiBase2d_PropMap & {
	["Active"]: Prop<boolean>,
	["$Active"]: ((boolean) -> ())?,
	["AnchorPoint"]: Prop<Vector2>,
	["$AnchorPoint"]: ((Vector2) -> ())?,
	["AutomaticSize"]: Prop<Enum.AutomaticSize>,
	["$AutomaticSize"]: ((Enum.AutomaticSize) -> ())?,
	["BackgroundColor3"]: Prop<Color3>,
	["$BackgroundColor3"]: ((Color3) -> ())?,
	["BackgroundTransparency"]: Prop<number>,
	["$BackgroundTransparency"]: ((number) -> ())?,
	["BorderColor3"]: Prop<Color3>,
	["$BorderColor3"]: ((Color3) -> ())?,
	["BorderMode"]: Prop<Enum.BorderMode>,
	["$BorderMode"]: ((Enum.BorderMode) -> ())?,
	["BorderSizePixel"]: Prop<number>,
	["$BorderSizePixel"]: ((number) -> ())?,
	["ClipsDescendants"]: Prop<boolean>,
	["$ClipsDescendants"]: ((boolean) -> ())?,
	["$GuiState"]: ((Enum.GuiState) -> ())?,
	["Interactable"]: Prop<boolean>,
	["$Interactable"]: ((boolean) -> ())?,
	["LayoutOrder"]: Prop<number>,
	["$LayoutOrder"]: ((number) -> ())?,
	["NextSelectionDown"]: Prop<GuiObject>,
	["$NextSelectionDown"]: ((GuiObject) -> ())?,
	["NextSelectionLeft"]: Prop<GuiObject>,
	["$NextSelectionLeft"]: ((GuiObject) -> ())?,
	["NextSelectionRight"]: Prop<GuiObject>,
	["$NextSelectionRight"]: ((GuiObject) -> ())?,
	["NextSelectionUp"]: Prop<GuiObject>,
	["$NextSelectionUp"]: ((GuiObject) -> ())?,
	["Position"]: Prop<UDim2>,
	["$Position"]: ((UDim2) -> ())?,
	["Rotation"]: Prop<number>,
	["$Rotation"]: ((number) -> ())?,
	["Selectable"]: Prop<boolean>,
	["$Selectable"]: ((boolean) -> ())?,
	["SelectionImageObject"]: Prop<GuiObject>,
	["$SelectionImageObject"]: ((GuiObject) -> ())?,
	["SelectionOrder"]: Prop<number>,
	["$SelectionOrder"]: ((number) -> ())?,
	["Size"]: Prop<UDim2>,
	["$Size"]: ((UDim2) -> ())?,
	["SizeConstraint"]: Prop<Enum.SizeConstraint>,
	["$SizeConstraint"]: ((Enum.SizeConstraint) -> ())?,
	["Transparency"]: Prop<number>,
	["$Transparency"]: ((number) -> ())?,
	["Visible"]: Prop<boolean>,
	["$Visible"]: ((boolean) -> ())?,
	["ZIndex"]: Prop<number>,
	["$ZIndex"]: ((number) -> ())?,
	["@InputBegan"]: ((input: InputObject) -> ())?,
	["@InputChanged"]: ((input: InputObject) -> ())?,
	["@InputEnded"]: ((input: InputObject) -> ())?,
	["@MouseEnter"]: ((x: number, y: number) -> ())?,
	["@MouseLeave"]: ((x: number, y: number) -> ())?,
	["@MouseMoved"]: ((x: number, y: number) -> ())?,
	["@MouseWheelBackward"]: ((x: number, y: number) -> ())?,
	["@MouseWheelForward"]: ((x: number, y: number) -> ())?,
	["@SelectionGained"]: (() -> ())?,
	["@SelectionLost"]: (() -> ())?,
	["@TouchLongPress"]: ((touchPositions: { any }, state: Enum.UserInputState) -> ())?,
	["@TouchPan"]: ((
		touchPositions: { any },
		totalTranslation: Vector2,
		velocity: Vector2,
		state: Enum.UserInputState
	) -> ())?,
	["@TouchPinch"]: ((touchPositions: { any }, scale: number, velocity: number, state: Enum.UserInputState) -> ())?,
	["@TouchRotate"]: ((touchPositions: { any }, rotation: number, velocity: number, state: Enum.UserInputState) -> ())?,
	["@TouchSwipe"]: ((swipeDirection: Enum.SwipeDirection, numberOfTouches: number) -> ())?,
	["@TouchTap"]: ((touchPositions: { any }) -> ())?,
}
export type CanvasGroup_PropMap = GuiObject_PropMap & {
	["GroupColor3"]: Prop<Color3>,
	["$GroupColor3"]: ((Color3) -> ())?,
	["GroupTransparency"]: Prop<number>,
	["$GroupTransparency"]: ((number) -> ())?,
}
Export.CanvasGroup = function(Props: CanvasGroup_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "CanvasGroup", PropMap = Props, ChildMap = Children or {} }
end
export type Frame_PropMap =
	GuiObject_PropMap
	& { ["Style"]: Prop<Enum.FrameStyle>, ["$Style"]: ((Enum.FrameStyle) -> ())? }
Export.Frame = function(Props: Frame_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Frame", PropMap = Props, ChildMap = Children or {} }
end
export type GuiButton_PropMap = GuiObject_PropMap & {
	["AutoButtonColor"]: Prop<boolean>,
	["$AutoButtonColor"]: ((boolean) -> ())?,
	["Modal"]: Prop<boolean>,
	["$Modal"]: ((boolean) -> ())?,
	["Selected"]: Prop<boolean>,
	["$Selected"]: ((boolean) -> ())?,
	["Style"]: Prop<Enum.ButtonStyle>,
	["$Style"]: ((Enum.ButtonStyle) -> ())?,
	["@Activated"]: ((inputObject: InputObject, clickCount: number) -> ())?,
	["@MouseButton1Click"]: (() -> ())?,
	["@MouseButton1Down"]: ((x: number, y: number) -> ())?,
	["@MouseButton1Up"]: ((x: number, y: number) -> ())?,
	["@MouseButton2Click"]: (() -> ())?,
	["@MouseButton2Down"]: ((x: number, y: number) -> ())?,
	["@MouseButton2Up"]: ((x: number, y: number) -> ())?,
}
export type ImageButton_PropMap = GuiButton_PropMap & {
	["$ContentImageSize"]: ((Vector2) -> ())?,
	["HoverImage"]: Prop<string>,
	["$HoverImage"]: ((string) -> ())?,
	["Image"]: Prop<string>,
	["$Image"]: ((string) -> ())?,
	["ImageColor3"]: Prop<Color3>,
	["$ImageColor3"]: ((Color3) -> ())?,
	["ImageRectOffset"]: Prop<Vector2>,
	["$ImageRectOffset"]: ((Vector2) -> ())?,
	["ImageRectSize"]: Prop<Vector2>,
	["$ImageRectSize"]: ((Vector2) -> ())?,
	["ImageTransparency"]: Prop<number>,
	["$ImageTransparency"]: ((number) -> ())?,
	["$IsLoaded"]: ((boolean) -> ())?,
	["PressedImage"]: Prop<string>,
	["$PressedImage"]: ((string) -> ())?,
	["ResampleMode"]: Prop<Enum.ResamplerMode>,
	["$ResampleMode"]: ((Enum.ResamplerMode) -> ())?,
	["ScaleType"]: Prop<Enum.ScaleType>,
	["$ScaleType"]: ((Enum.ScaleType) -> ())?,
	["SliceCenter"]: Prop<Rect>,
	["$SliceCenter"]: ((Rect) -> ())?,
	["SliceScale"]: Prop<number>,
	["$SliceScale"]: ((number) -> ())?,
	["TileSize"]: Prop<UDim2>,
	["$TileSize"]: ((UDim2) -> ())?,
}
Export.ImageButton = function(Props: ImageButton_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ImageButton", PropMap = Props, ChildMap = Children or {} }
end
export type TextButton_PropMap = GuiButton_PropMap & {
	["$ContentText"]: ((string) -> ())?,
	["Font"]: Prop<Enum.Font>,
	["$Font"]: ((Enum.Font) -> ())?,
	["FontFace"]: Prop<Font>,
	["$FontFace"]: ((Font) -> ())?,
	["LineHeight"]: Prop<number>,
	["$LineHeight"]: ((number) -> ())?,
	["$LocalizedText"]: ((string) -> ())?,
	["MaxVisibleGraphemes"]: Prop<number>,
	["$MaxVisibleGraphemes"]: ((number) -> ())?,
	["RichText"]: Prop<boolean>,
	["$RichText"]: ((boolean) -> ())?,
	["Text"]: Prop<string>,
	["$Text"]: ((string) -> ())?,
	["$TextBounds"]: ((Vector2) -> ())?,
	["TextColor3"]: Prop<Color3>,
	["$TextColor3"]: ((Color3) -> ())?,
	["TextDirection"]: Prop<Enum.TextDirection>,
	["$TextDirection"]: ((Enum.TextDirection) -> ())?,
	["$TextFits"]: ((boolean) -> ())?,
	["TextScaled"]: Prop<boolean>,
	["$TextScaled"]: ((boolean) -> ())?,
	["TextSize"]: Prop<number>,
	["$TextSize"]: ((number) -> ())?,
	["TextStrokeColor3"]: Prop<Color3>,
	["$TextStrokeColor3"]: ((Color3) -> ())?,
	["TextStrokeTransparency"]: Prop<number>,
	["$TextStrokeTransparency"]: ((number) -> ())?,
	["TextTransparency"]: Prop<number>,
	["$TextTransparency"]: ((number) -> ())?,
	["TextTruncate"]: Prop<Enum.TextTruncate>,
	["$TextTruncate"]: ((Enum.TextTruncate) -> ())?,
	["TextWrapped"]: Prop<boolean>,
	["$TextWrapped"]: ((boolean) -> ())?,
	["TextXAlignment"]: Prop<Enum.TextXAlignment>,
	["$TextXAlignment"]: ((Enum.TextXAlignment) -> ())?,
	["TextYAlignment"]: Prop<Enum.TextYAlignment>,
	["$TextYAlignment"]: ((Enum.TextYAlignment) -> ())?,
}
Export.TextButton = function(Props: TextButton_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TextButton", PropMap = Props, ChildMap = Children or {} }
end
export type GuiLabel_PropMap = GuiObject_PropMap & {}
export type ImageLabel_PropMap = GuiLabel_PropMap & {
	["$ContentImageSize"]: ((Vector2) -> ())?,
	["Image"]: Prop<string>,
	["$Image"]: ((string) -> ())?,
	["ImageColor3"]: Prop<Color3>,
	["$ImageColor3"]: ((Color3) -> ())?,
	["ImageRectOffset"]: Prop<Vector2>,
	["$ImageRectOffset"]: ((Vector2) -> ())?,
	["ImageRectSize"]: Prop<Vector2>,
	["$ImageRectSize"]: ((Vector2) -> ())?,
	["ImageTransparency"]: Prop<number>,
	["$ImageTransparency"]: ((number) -> ())?,
	["$IsLoaded"]: ((boolean) -> ())?,
	["ResampleMode"]: Prop<Enum.ResamplerMode>,
	["$ResampleMode"]: ((Enum.ResamplerMode) -> ())?,
	["ScaleType"]: Prop<Enum.ScaleType>,
	["$ScaleType"]: ((Enum.ScaleType) -> ())?,
	["SliceCenter"]: Prop<Rect>,
	["$SliceCenter"]: ((Rect) -> ())?,
	["SliceScale"]: Prop<number>,
	["$SliceScale"]: ((number) -> ())?,
	["TileSize"]: Prop<UDim2>,
	["$TileSize"]: ((UDim2) -> ())?,
}
Export.ImageLabel = function(Props: ImageLabel_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ImageLabel", PropMap = Props, ChildMap = Children or {} }
end
export type TextLabel_PropMap = GuiLabel_PropMap & {
	["$ContentText"]: ((string) -> ())?,
	["Font"]: Prop<Enum.Font>,
	["$Font"]: ((Enum.Font) -> ())?,
	["FontFace"]: Prop<Font>,
	["$FontFace"]: ((Font) -> ())?,
	["LineHeight"]: Prop<number>,
	["$LineHeight"]: ((number) -> ())?,
	["$LocalizedText"]: ((string) -> ())?,
	["MaxVisibleGraphemes"]: Prop<number>,
	["$MaxVisibleGraphemes"]: ((number) -> ())?,
	["RichText"]: Prop<boolean>,
	["$RichText"]: ((boolean) -> ())?,
	["Text"]: Prop<string>,
	["$Text"]: ((string) -> ())?,
	["$TextBounds"]: ((Vector2) -> ())?,
	["TextColor3"]: Prop<Color3>,
	["$TextColor3"]: ((Color3) -> ())?,
	["TextDirection"]: Prop<Enum.TextDirection>,
	["$TextDirection"]: ((Enum.TextDirection) -> ())?,
	["$TextFits"]: ((boolean) -> ())?,
	["TextScaled"]: Prop<boolean>,
	["$TextScaled"]: ((boolean) -> ())?,
	["TextSize"]: Prop<number>,
	["$TextSize"]: ((number) -> ())?,
	["TextStrokeColor3"]: Prop<Color3>,
	["$TextStrokeColor3"]: ((Color3) -> ())?,
	["TextStrokeTransparency"]: Prop<number>,
	["$TextStrokeTransparency"]: ((number) -> ())?,
	["TextTransparency"]: Prop<number>,
	["$TextTransparency"]: ((number) -> ())?,
	["TextTruncate"]: Prop<Enum.TextTruncate>,
	["$TextTruncate"]: ((Enum.TextTruncate) -> ())?,
	["TextWrapped"]: Prop<boolean>,
	["$TextWrapped"]: ((boolean) -> ())?,
	["TextXAlignment"]: Prop<Enum.TextXAlignment>,
	["$TextXAlignment"]: ((Enum.TextXAlignment) -> ())?,
	["TextYAlignment"]: Prop<Enum.TextYAlignment>,
	["$TextYAlignment"]: ((Enum.TextYAlignment) -> ())?,
}
Export.TextLabel = function(Props: TextLabel_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TextLabel", PropMap = Props, ChildMap = Children or {} }
end
export type ScrollingFrame_PropMap = GuiObject_PropMap & {
	["$AbsoluteCanvasSize"]: ((Vector2) -> ())?,
	["$AbsoluteWindowSize"]: ((Vector2) -> ())?,
	["AutomaticCanvasSize"]: Prop<Enum.AutomaticSize>,
	["$AutomaticCanvasSize"]: ((Enum.AutomaticSize) -> ())?,
	["BottomImage"]: Prop<string>,
	["$BottomImage"]: ((string) -> ())?,
	["CanvasPosition"]: Prop<Vector2>,
	["$CanvasPosition"]: ((Vector2) -> ())?,
	["CanvasSize"]: Prop<UDim2>,
	["$CanvasSize"]: ((UDim2) -> ())?,
	["ElasticBehavior"]: Prop<Enum.ElasticBehavior>,
	["$ElasticBehavior"]: ((Enum.ElasticBehavior) -> ())?,
	["$HorizontalBarRect"]: ((Rect) -> ())?,
	["HorizontalScrollBarInset"]: Prop<Enum.ScrollBarInset>,
	["$HorizontalScrollBarInset"]: ((Enum.ScrollBarInset) -> ())?,
	["$MaxCanvasPosition"]: ((Vector2) -> ())?,
	["MidImage"]: Prop<string>,
	["$MidImage"]: ((string) -> ())?,
	["ScrollBarImageColor3"]: Prop<Color3>,
	["$ScrollBarImageColor3"]: ((Color3) -> ())?,
	["ScrollBarImageTransparency"]: Prop<number>,
	["$ScrollBarImageTransparency"]: ((number) -> ())?,
	["ScrollBarThickness"]: Prop<number>,
	["$ScrollBarThickness"]: ((number) -> ())?,
	["ScrollVelocity"]: Prop<Vector2>,
	["$ScrollVelocity"]: ((Vector2) -> ())?,
	["ScrollingDirection"]: Prop<Enum.ScrollingDirection>,
	["$ScrollingDirection"]: ((Enum.ScrollingDirection) -> ())?,
	["ScrollingEnabled"]: Prop<boolean>,
	["$ScrollingEnabled"]: ((boolean) -> ())?,
	["TopImage"]: Prop<string>,
	["$TopImage"]: ((string) -> ())?,
	["$VerticalBarRect"]: ((Rect) -> ())?,
	["VerticalScrollBarInset"]: Prop<Enum.ScrollBarInset>,
	["$VerticalScrollBarInset"]: ((Enum.ScrollBarInset) -> ())?,
	["VerticalScrollBarPosition"]: Prop<Enum.VerticalScrollBarPosition>,
	["$VerticalScrollBarPosition"]: ((Enum.VerticalScrollBarPosition) -> ())?,
}
Export.ScrollingFrame = function(Props: ScrollingFrame_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ScrollingFrame", PropMap = Props, ChildMap = Children or {} }
end
export type TextBox_PropMap = GuiObject_PropMap & {
	["ClearTextOnFocus"]: Prop<boolean>,
	["$ClearTextOnFocus"]: ((boolean) -> ())?,
	["$ContentText"]: ((string) -> ())?,
	["CursorPosition"]: Prop<number>,
	["$CursorPosition"]: ((number) -> ())?,
	["Font"]: Prop<Enum.Font>,
	["$Font"]: ((Enum.Font) -> ())?,
	["FontFace"]: Prop<Font>,
	["$FontFace"]: ((Font) -> ())?,
	["LineHeight"]: Prop<number>,
	["$LineHeight"]: ((number) -> ())?,
	["ManualFocusRelease"]: Prop<boolean>,
	["$ManualFocusRelease"]: ((boolean) -> ())?,
	["MaxVisibleGraphemes"]: Prop<number>,
	["$MaxVisibleGraphemes"]: ((number) -> ())?,
	["MultiLine"]: Prop<boolean>,
	["$MultiLine"]: ((boolean) -> ())?,
	["OverlayNativeInput"]: Prop<boolean>,
	["$OverlayNativeInput"]: ((boolean) -> ())?,
	["PlaceholderColor3"]: Prop<Color3>,
	["$PlaceholderColor3"]: ((Color3) -> ())?,
	["PlaceholderText"]: Prop<string>,
	["$PlaceholderText"]: ((string) -> ())?,
	["ReturnKeyType"]: Prop<Enum.ReturnKeyType>,
	["$ReturnKeyType"]: ((Enum.ReturnKeyType) -> ())?,
	["RichText"]: Prop<boolean>,
	["$RichText"]: ((boolean) -> ())?,
	["SelectionStart"]: Prop<number>,
	["$SelectionStart"]: ((number) -> ())?,
	["ShowNativeInput"]: Prop<boolean>,
	["$ShowNativeInput"]: ((boolean) -> ())?,
	["Text"]: Prop<string>,
	["$Text"]: ((string) -> ())?,
	["$TextBounds"]: ((Vector2) -> ())?,
	["TextColor3"]: Prop<Color3>,
	["$TextColor3"]: ((Color3) -> ())?,
	["TextDirection"]: Prop<Enum.TextDirection>,
	["$TextDirection"]: ((Enum.TextDirection) -> ())?,
	["TextEditable"]: Prop<boolean>,
	["$TextEditable"]: ((boolean) -> ())?,
	["$TextFits"]: ((boolean) -> ())?,
	["TextInputType"]: Prop<Enum.TextInputType>,
	["$TextInputType"]: ((Enum.TextInputType) -> ())?,
	["TextScaled"]: Prop<boolean>,
	["$TextScaled"]: ((boolean) -> ())?,
	["TextSize"]: Prop<number>,
	["$TextSize"]: ((number) -> ())?,
	["TextStrokeColor3"]: Prop<Color3>,
	["$TextStrokeColor3"]: ((Color3) -> ())?,
	["TextStrokeTransparency"]: Prop<number>,
	["$TextStrokeTransparency"]: ((number) -> ())?,
	["TextTransparency"]: Prop<number>,
	["$TextTransparency"]: ((number) -> ())?,
	["TextTruncate"]: Prop<Enum.TextTruncate>,
	["$TextTruncate"]: ((Enum.TextTruncate) -> ())?,
	["TextWrapped"]: Prop<boolean>,
	["$TextWrapped"]: ((boolean) -> ())?,
	["TextXAlignment"]: Prop<Enum.TextXAlignment>,
	["$TextXAlignment"]: ((Enum.TextXAlignment) -> ())?,
	["TextYAlignment"]: Prop<Enum.TextYAlignment>,
	["$TextYAlignment"]: ((Enum.TextYAlignment) -> ())?,
	["@FocusLost"]: ((enterPressed: boolean, inputThatCausedFocusLoss: InputObject) -> ())?,
	["@Focused"]: (() -> ())?,
	["@ReturnPressedFromOnScreenKeyboard"]: (() -> ())?,
}
Export.TextBox = function(Props: TextBox_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TextBox", PropMap = Props, ChildMap = Children or {} }
end
export type VideoFrame_PropMap = GuiObject_PropMap & {
	["$IsLoaded"]: ((boolean) -> ())?,
	["Looped"]: Prop<boolean>,
	["$Looped"]: ((boolean) -> ())?,
	["Playing"]: Prop<boolean>,
	["$Playing"]: ((boolean) -> ())?,
	["$Resolution"]: ((Vector2) -> ())?,
	["$TimeLength"]: ((number) -> ())?,
	["TimePosition"]: Prop<number>,
	["$TimePosition"]: ((number) -> ())?,
	["Video"]: Prop<string>,
	["$Video"]: ((string) -> ())?,
	["Volume"]: Prop<number>,
	["$Volume"]: ((number) -> ())?,
	["@DidLoop"]: ((video: string) -> ())?,
	["@Ended"]: ((video: string) -> ())?,
	["@Loaded"]: ((video: string) -> ())?,
	["@Paused"]: ((video: string) -> ())?,
	["@Played"]: ((video: string) -> ())?,
}
Export.VideoFrame = function(Props: VideoFrame_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "VideoFrame", PropMap = Props, ChildMap = Children or {} }
end
export type ViewportFrame_PropMap = GuiObject_PropMap & {
	["Ambient"]: Prop<Color3>,
	["$Ambient"]: ((Color3) -> ())?,
	["CurrentCamera"]: Prop<Camera>,
	["$CurrentCamera"]: ((Camera) -> ())?,
	["ImageColor3"]: Prop<Color3>,
	["$ImageColor3"]: ((Color3) -> ())?,
	["ImageTransparency"]: Prop<number>,
	["$ImageTransparency"]: ((number) -> ())?,
	["IsMirrored"]: Prop<boolean>,
	["$IsMirrored"]: ((boolean) -> ())?,
	["LightColor"]: Prop<Color3>,
	["$LightColor"]: ((Color3) -> ())?,
	["LightDirection"]: Prop<Vector3>,
	["$LightDirection"]: ((Vector3) -> ())?,
}
Export.ViewportFrame = function(Props: ViewportFrame_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ViewportFrame", PropMap = Props, ChildMap = Children or {} }
end
export type LayerCollector_PropMap = GuiBase2d_PropMap & {
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["ResetOnSpawn"]: Prop<boolean>,
	["$ResetOnSpawn"]: ((boolean) -> ())?,
	["ZIndexBehavior"]: Prop<Enum.ZIndexBehavior>,
	["$ZIndexBehavior"]: ((Enum.ZIndexBehavior) -> ())?,
}
export type BillboardGui_PropMap = LayerCollector_PropMap & {
	["Active"]: Prop<boolean>,
	["$Active"]: ((boolean) -> ())?,
	["Adornee"]: Prop<Instance>,
	["$Adornee"]: ((Instance) -> ())?,
	["AlwaysOnTop"]: Prop<boolean>,
	["$AlwaysOnTop"]: ((boolean) -> ())?,
	["Brightness"]: Prop<number>,
	["$Brightness"]: ((number) -> ())?,
	["ClipsDescendants"]: Prop<boolean>,
	["$ClipsDescendants"]: ((boolean) -> ())?,
	["$CurrentDistance"]: ((number) -> ())?,
	["DistanceLowerLimit"]: Prop<number>,
	["$DistanceLowerLimit"]: ((number) -> ())?,
	["DistanceStep"]: Prop<number>,
	["$DistanceStep"]: ((number) -> ())?,
	["DistanceUpperLimit"]: Prop<number>,
	["$DistanceUpperLimit"]: ((number) -> ())?,
	["ExtentsOffset"]: Prop<Vector3>,
	["$ExtentsOffset"]: ((Vector3) -> ())?,
	["ExtentsOffsetWorldSpace"]: Prop<Vector3>,
	["$ExtentsOffsetWorldSpace"]: ((Vector3) -> ())?,
	["LightInfluence"]: Prop<number>,
	["$LightInfluence"]: ((number) -> ())?,
	["MaxDistance"]: Prop<number>,
	["$MaxDistance"]: ((number) -> ())?,
	["PlayerToHideFrom"]: Prop<Instance>,
	["$PlayerToHideFrom"]: ((Instance) -> ())?,
	["Size"]: Prop<UDim2>,
	["$Size"]: ((UDim2) -> ())?,
	["SizeOffset"]: Prop<Vector2>,
	["$SizeOffset"]: ((Vector2) -> ())?,
	["StudsOffset"]: Prop<Vector3>,
	["$StudsOffset"]: ((Vector3) -> ())?,
	["StudsOffsetWorldSpace"]: Prop<Vector3>,
	["$StudsOffsetWorldSpace"]: ((Vector3) -> ())?,
}
Export.BillboardGui = function(Props: BillboardGui_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BillboardGui", PropMap = Props, ChildMap = Children or {} }
end
export type ScreenGui_PropMap = LayerCollector_PropMap & {
	["ClipToDeviceSafeArea"]: Prop<boolean>,
	["$ClipToDeviceSafeArea"]: ((boolean) -> ())?,
	["DisplayOrder"]: Prop<number>,
	["$DisplayOrder"]: ((number) -> ())?,
	["IgnoreGuiInset"]: Prop<boolean>,
	["$IgnoreGuiInset"]: ((boolean) -> ())?,
	["OnTopOfCoreBlur"]: Prop<boolean>,
	["$OnTopOfCoreBlur"]: ((boolean) -> ())?,
	["SafeAreaCompatibility"]: Prop<Enum.SafeAreaCompatibility>,
	["$SafeAreaCompatibility"]: ((Enum.SafeAreaCompatibility) -> ())?,
	["ScreenInsets"]: Prop<Enum.ScreenInsets>,
	["$ScreenInsets"]: ((Enum.ScreenInsets) -> ())?,
}
Export.ScreenGui = function(Props: ScreenGui_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ScreenGui", PropMap = Props, ChildMap = Children or {} }
end
export type SurfaceGuiBase_PropMap = LayerCollector_PropMap & {
	["Active"]: Prop<boolean>,
	["$Active"]: ((boolean) -> ())?,
	["Adornee"]: Prop<Instance>,
	["$Adornee"]: ((Instance) -> ())?,
	["Face"]: Prop<Enum.NormalId>,
	["$Face"]: ((Enum.NormalId) -> ())?,
}
export type AdGui_PropMap = SurfaceGuiBase_PropMap & {
	["AdShape"]: Prop<Enum.AdShape>,
	["$AdShape"]: ((Enum.AdShape) -> ())?,
	["EnableVideoAds"]: Prop<boolean>,
	["$EnableVideoAds"]: ((boolean) -> ())?,
	["FallbackImage"]: Prop<string>,
	["$FallbackImage"]: ((string) -> ())?,
	["$Status"]: ((Enum.AdUnitStatus) -> ())?,
}
Export.AdGui = function(Props: AdGui_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "AdGui", PropMap = Props, ChildMap = Children or {} }
end
export type SurfaceGui_PropMap = SurfaceGuiBase_PropMap & {
	["AlwaysOnTop"]: Prop<boolean>,
	["$AlwaysOnTop"]: ((boolean) -> ())?,
	["Brightness"]: Prop<number>,
	["$Brightness"]: ((number) -> ())?,
	["CanvasSize"]: Prop<Vector2>,
	["$CanvasSize"]: ((Vector2) -> ())?,
	["ClipsDescendants"]: Prop<boolean>,
	["$ClipsDescendants"]: ((boolean) -> ())?,
	["HorizontalCurvature"]: Prop<number>,
	["$HorizontalCurvature"]: ((number) -> ())?,
	["LightInfluence"]: Prop<number>,
	["$LightInfluence"]: ((number) -> ())?,
	["MaxDistance"]: Prop<number>,
	["$MaxDistance"]: ((number) -> ())?,
	["PixelsPerStud"]: Prop<number>,
	["$PixelsPerStud"]: ((number) -> ())?,
	["Shape"]: Prop<Enum.SurfaceGuiShape>,
	["$Shape"]: ((Enum.SurfaceGuiShape) -> ())?,
	["SizingMode"]: Prop<Enum.SurfaceGuiSizingMode>,
	["$SizingMode"]: ((Enum.SurfaceGuiSizingMode) -> ())?,
	["ToolPunchThroughDistance"]: Prop<number>,
	["$ToolPunchThroughDistance"]: ((number) -> ())?,
	["ZOffset"]: Prop<number>,
	["$ZOffset"]: ((number) -> ())?,
}
Export.SurfaceGui = function(Props: SurfaceGui_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SurfaceGui", PropMap = Props, ChildMap = Children or {} }
end
export type GuiBase3d_PropMap = GuiBase_PropMap & {
	["Color3"]: Prop<Color3>,
	["$Color3"]: ((Color3) -> ())?,
	["Transparency"]: Prop<number>,
	["$Transparency"]: ((number) -> ())?,
	["Visible"]: Prop<boolean>,
	["$Visible"]: ((boolean) -> ())?,
}
export type InstanceAdornment_PropMap =
	GuiBase3d_PropMap
	& { ["Adornee"]: Prop<Instance>, ["$Adornee"]: ((Instance) -> ())? }
export type SelectionBox_PropMap = InstanceAdornment_PropMap & {
	["LineThickness"]: Prop<number>,
	["$LineThickness"]: ((number) -> ())?,
	["StudioSelectionBox"]: Prop<boolean>,
	["$StudioSelectionBox"]: ((boolean) -> ())?,
	["SurfaceColor3"]: Prop<Color3>,
	["$SurfaceColor3"]: ((Color3) -> ())?,
	["SurfaceTransparency"]: Prop<number>,
	["$SurfaceTransparency"]: ((number) -> ())?,
}
Export.SelectionBox = function(Props: SelectionBox_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SelectionBox", PropMap = Props, ChildMap = Children or {} }
end
export type PVAdornment_PropMap =
	GuiBase3d_PropMap
	& { ["Adornee"]: Prop<PVInstance>, ["$Adornee"]: ((PVInstance) -> ())? }
export type HandleAdornment_PropMap = PVAdornment_PropMap & {
	["AdornCullingMode"]: Prop<Enum.AdornCullingMode>,
	["$AdornCullingMode"]: ((Enum.AdornCullingMode) -> ())?,
	["AlwaysOnTop"]: Prop<boolean>,
	["$AlwaysOnTop"]: ((boolean) -> ())?,
	["CFrame"]: Prop<CFrame>,
	["$CFrame"]: ((CFrame) -> ())?,
	["SizeRelativeOffset"]: Prop<Vector3>,
	["$SizeRelativeOffset"]: ((Vector3) -> ())?,
	["ZIndex"]: Prop<number>,
	["$ZIndex"]: ((number) -> ())?,
	["@MouseButton1Down"]: (() -> ())?,
	["@MouseButton1Up"]: (() -> ())?,
	["@MouseEnter"]: (() -> ())?,
	["@MouseLeave"]: (() -> ())?,
}
export type BoxHandleAdornment_PropMap =
	HandleAdornment_PropMap
	& { ["Size"]: Prop<Vector3>, ["$Size"]: ((Vector3) -> ())? }
Export.BoxHandleAdornment = function(Props: BoxHandleAdornment_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BoxHandleAdornment", PropMap = Props, ChildMap = Children or {} }
end
export type ConeHandleAdornment_PropMap = HandleAdornment_PropMap & {
	["Height"]: Prop<number>,
	["$Height"]: ((number) -> ())?,
	["Radius"]: Prop<number>,
	["$Radius"]: ((number) -> ())?,
}
Export.ConeHandleAdornment = function(Props: ConeHandleAdornment_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ConeHandleAdornment", PropMap = Props, ChildMap = Children or {} }
end
export type CylinderHandleAdornment_PropMap = HandleAdornment_PropMap & {
	["Angle"]: Prop<number>,
	["$Angle"]: ((number) -> ())?,
	["Height"]: Prop<number>,
	["$Height"]: ((number) -> ())?,
	["InnerRadius"]: Prop<number>,
	["$InnerRadius"]: ((number) -> ())?,
	["Radius"]: Prop<number>,
	["$Radius"]: ((number) -> ())?,
}
Export.CylinderHandleAdornment = function(Props: CylinderHandleAdornment_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "CylinderHandleAdornment", PropMap = Props, ChildMap = Children
		or {} }
end
export type ImageHandleAdornment_PropMap = HandleAdornment_PropMap & {
	["Image"]: Prop<string>,
	["$Image"]: ((string) -> ())?,
	["Size"]: Prop<Vector2>,
	["$Size"]: ((Vector2) -> ())?,
}
Export.ImageHandleAdornment = function(Props: ImageHandleAdornment_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ImageHandleAdornment", PropMap = Props, ChildMap = Children or {} }
end
export type LineHandleAdornment_PropMap = HandleAdornment_PropMap & {
	["Length"]: Prop<number>,
	["$Length"]: ((number) -> ())?,
	["Thickness"]: Prop<number>,
	["$Thickness"]: ((number) -> ())?,
}
Export.LineHandleAdornment = function(Props: LineHandleAdornment_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "LineHandleAdornment", PropMap = Props, ChildMap = Children or {} }
end
export type SphereHandleAdornment_PropMap =
	HandleAdornment_PropMap
	& { ["Radius"]: Prop<number>, ["$Radius"]: ((number) -> ())? }
Export.SphereHandleAdornment = function(Props: SphereHandleAdornment_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SphereHandleAdornment", PropMap = Props, ChildMap = Children
		or {} }
end
export type WireframeHandleAdornment_PropMap =
	HandleAdornment_PropMap
	& { ["Scale"]: Prop<Vector3>, ["$Scale"]: ((Vector3) -> ())? }
Export.WireframeHandleAdornment = function(Props: WireframeHandleAdornment_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "WireframeHandleAdornment", PropMap = Props, ChildMap = Children
		or {} }
end
export type ParabolaAdornment_PropMap = PVAdornment_PropMap & {
	["A"]: Prop<number>,
	["$A"]: ((number) -> ())?,
	["B"]: Prop<number>,
	["$B"]: ((number) -> ())?,
	["C"]: Prop<number>,
	["$C"]: ((number) -> ())?,
	["Range"]: Prop<number>,
	["$Range"]: ((number) -> ())?,
	["Thickness"]: Prop<number>,
	["$Thickness"]: ((number) -> ())?,
}
Export.ParabolaAdornment = function(Props: ParabolaAdornment_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ParabolaAdornment", PropMap = Props, ChildMap = Children or {} }
end
export type SelectionSphere_PropMap = PVAdornment_PropMap & {
	["SurfaceColor3"]: Prop<Color3>,
	["$SurfaceColor3"]: ((Color3) -> ())?,
	["SurfaceTransparency"]: Prop<number>,
	["$SurfaceTransparency"]: ((number) -> ())?,
}
Export.SelectionSphere = function(Props: SelectionSphere_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SelectionSphere", PropMap = Props, ChildMap = Children or {} }
end
export type PartAdornment_PropMap = GuiBase3d_PropMap & { ["Adornee"]: Prop<BasePart>, ["$Adornee"]: ((BasePart) -> ())? }
export type HandlesBase_PropMap = PartAdornment_PropMap & {}
export type ArcHandles_PropMap = HandlesBase_PropMap & {
	["Axes"]: Prop<Axes>,
	["$Axes"]: ((Axes) -> ())?,
	["@MouseButton1Down"]: ((axis: Enum.Axis) -> ())?,
	["@MouseButton1Up"]: ((axis: Enum.Axis) -> ())?,
	["@MouseDrag"]: ((axis: Enum.Axis, relativeAngle: number, deltaRadius: number) -> ())?,
	["@MouseEnter"]: ((axis: Enum.Axis) -> ())?,
	["@MouseLeave"]: ((axis: Enum.Axis) -> ())?,
}
Export.ArcHandles = function(Props: ArcHandles_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ArcHandles", PropMap = Props, ChildMap = Children or {} }
end
export type Handles_PropMap = HandlesBase_PropMap & {
	["Faces"]: Prop<Faces>,
	["$Faces"]: ((Faces) -> ())?,
	["Style"]: Prop<Enum.HandlesStyle>,
	["$Style"]: ((Enum.HandlesStyle) -> ())?,
	["@MouseButton1Down"]: ((face: Enum.NormalId) -> ())?,
	["@MouseButton1Up"]: ((face: Enum.NormalId) -> ())?,
	["@MouseDrag"]: ((face: Enum.NormalId, distance: number) -> ())?,
	["@MouseEnter"]: ((face: Enum.NormalId) -> ())?,
	["@MouseLeave"]: ((face: Enum.NormalId) -> ())?,
}
Export.Handles = function(Props: Handles_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Handles", PropMap = Props, ChildMap = Children or {} }
end
export type SurfaceSelection_PropMap = PartAdornment_PropMap & {
	["TargetSurface"]: Prop<Enum.NormalId>,
	["$TargetSurface"]: ((Enum.NormalId) -> ())?,
}
Export.SurfaceSelection = function(Props: SurfaceSelection_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SurfaceSelection", PropMap = Props, ChildMap = Children or {} }
end
export type HeightmapImporterService_PropMap = Instance_PropMap & {
	["@ColormapHasUnknownPixels"]: (() -> ())?,
	["@ProgressUpdate"]: ((progressRatio: number, operation: string) -> ())?,
}
Export.HeightmapImporterService = function(Props: HeightmapImporterService_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "HeightmapImporterService", PropMap = Props, ChildMap = Children
		or {} }
end
export type HiddenSurfaceRemovalAsset_PropMap = Instance_PropMap & {}
Export.HiddenSurfaceRemovalAsset = function(Props: HiddenSurfaceRemovalAsset_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "HiddenSurfaceRemovalAsset", PropMap = Props, ChildMap = Children
		or {} }
end
export type Highlight_PropMap = Instance_PropMap & {
	["Adornee"]: Prop<Instance>,
	["$Adornee"]: ((Instance) -> ())?,
	["DepthMode"]: Prop<Enum.HighlightDepthMode>,
	["$DepthMode"]: ((Enum.HighlightDepthMode) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["FillColor"]: Prop<Color3>,
	["$FillColor"]: ((Color3) -> ())?,
	["FillTransparency"]: Prop<number>,
	["$FillTransparency"]: ((number) -> ())?,
	["LineThickness"]: Prop<number>,
	["$LineThickness"]: ((number) -> ())?,
	["OutlineColor"]: Prop<Color3>,
	["$OutlineColor"]: ((Color3) -> ())?,
	["OutlineTransparency"]: Prop<number>,
	["$OutlineTransparency"]: ((number) -> ())?,
	["ReservedId"]: Prop<Enum.ReservedHighlightId>,
	["$ReservedId"]: ((Enum.ReservedHighlightId) -> ())?,
}
Export.Highlight = function(Props: Highlight_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Highlight", PropMap = Props, ChildMap = Children or {} }
end
export type Humanoid_PropMap = Instance_PropMap & {
	["AutoJumpEnabled"]: Prop<boolean>,
	["$AutoJumpEnabled"]: ((boolean) -> ())?,
	["AutoRotate"]: Prop<boolean>,
	["$AutoRotate"]: ((boolean) -> ())?,
	["AutomaticScalingEnabled"]: Prop<boolean>,
	["$AutomaticScalingEnabled"]: ((boolean) -> ())?,
	["BreakJointsOnDeath"]: Prop<boolean>,
	["$BreakJointsOnDeath"]: ((boolean) -> ())?,
	["CameraOffset"]: Prop<Vector3>,
	["$CameraOffset"]: ((Vector3) -> ())?,
	["DisplayDistanceType"]: Prop<Enum.HumanoidDisplayDistanceType>,
	["$DisplayDistanceType"]: ((Enum.HumanoidDisplayDistanceType) -> ())?,
	["DisplayName"]: Prop<string>,
	["$DisplayName"]: ((string) -> ())?,
	["EvaluateStateMachine"]: Prop<boolean>,
	["$EvaluateStateMachine"]: ((boolean) -> ())?,
	["$FloorMaterial"]: ((Enum.Material) -> ())?,
	["Health"]: Prop<number>,
	["$Health"]: ((number) -> ())?,
	["HealthDisplayDistance"]: Prop<number>,
	["$HealthDisplayDistance"]: ((number) -> ())?,
	["HealthDisplayType"]: Prop<Enum.HumanoidHealthDisplayType>,
	["$HealthDisplayType"]: ((Enum.HumanoidHealthDisplayType) -> ())?,
	["HipHeight"]: Prop<number>,
	["$HipHeight"]: ((number) -> ())?,
	["InternalDisplayName"]: Prop<string>,
	["$InternalDisplayName"]: ((string) -> ())?,
	["Jump"]: Prop<boolean>,
	["$Jump"]: ((boolean) -> ())?,
	["JumpHeight"]: Prop<number>,
	["$JumpHeight"]: ((number) -> ())?,
	["JumpPower"]: Prop<number>,
	["$JumpPower"]: ((number) -> ())?,
	["MaxHealth"]: Prop<number>,
	["$MaxHealth"]: ((number) -> ())?,
	["MaxSlopeAngle"]: Prop<number>,
	["$MaxSlopeAngle"]: ((number) -> ())?,
	["$MoveDirection"]: ((Vector3) -> ())?,
	["NameDisplayDistance"]: Prop<number>,
	["$NameDisplayDistance"]: ((number) -> ())?,
	["NameOcclusion"]: Prop<Enum.NameOcclusion>,
	["$NameOcclusion"]: ((Enum.NameOcclusion) -> ())?,
	["PlatformStand"]: Prop<boolean>,
	["$PlatformStand"]: ((boolean) -> ())?,
	["RequiresNeck"]: Prop<boolean>,
	["$RequiresNeck"]: ((boolean) -> ())?,
	["RigType"]: Prop<Enum.HumanoidRigType>,
	["$RigType"]: ((Enum.HumanoidRigType) -> ())?,
	["$RootPart"]: ((BasePart) -> ())?,
	["$SeatPart"]: ((BasePart) -> ())?,
	["Sit"]: Prop<boolean>,
	["$Sit"]: ((boolean) -> ())?,
	["TargetPoint"]: Prop<Vector3>,
	["$TargetPoint"]: ((Vector3) -> ())?,
	["UseJumpPower"]: Prop<boolean>,
	["$UseJumpPower"]: ((boolean) -> ())?,
	["WalkSpeed"]: Prop<number>,
	["$WalkSpeed"]: ((number) -> ())?,
	["WalkToPart"]: Prop<BasePart>,
	["$WalkToPart"]: ((BasePart) -> ())?,
	["WalkToPoint"]: Prop<Vector3>,
	["$WalkToPoint"]: ((Vector3) -> ())?,
	["@Climbing"]: ((speed: number) -> ())?,
	["@ClusterCompositionFinished"]: (() -> ())?,
	["@Died"]: (() -> ())?,
	["@EmoteTriggered"]: ((success: boolean, animationTrack: AnimationTrack) -> ())?,
	["@FallingDown"]: ((active: boolean) -> ())?,
	["@FreeFalling"]: ((active: boolean) -> ())?,
	["@GettingUp"]: ((active: boolean) -> ())?,
	["@HealthChanged"]: ((health: number) -> ())?,
	["@Jumping"]: ((active: boolean) -> ())?,
	["@MoveToFinished"]: ((reached: boolean) -> ())?,
	["@PlatformStanding"]: ((active: boolean) -> ())?,
	["@Ragdoll"]: ((active: boolean) -> ())?,
	["@Running"]: ((speed: number) -> ())?,
	["@Seated"]: ((active: boolean, currentSeatPart: BasePart) -> ())?,
	["@StateChanged"]: ((old: Enum.HumanoidStateType, new: Enum.HumanoidStateType) -> ())?,
	["@StateEnabledChanged"]: ((state: Enum.HumanoidStateType, isEnabled: boolean) -> ())?,
	["@Strafing"]: ((active: boolean) -> ())?,
	["@Swimming"]: ((speed: number) -> ())?,
	["@Touched"]: ((touchingPart: BasePart, humanoidPart: BasePart) -> ())?,
}
Export.Humanoid = function(Props: Humanoid_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Humanoid", PropMap = Props, ChildMap = Children or {} }
end
export type HumanoidDescription_PropMap = Instance_PropMap & {
	["BackAccessory"]: Prop<string>,
	["$BackAccessory"]: ((string) -> ())?,
	["BodyTypeScale"]: Prop<number>,
	["$BodyTypeScale"]: ((number) -> ())?,
	["ClimbAnimation"]: Prop<number>,
	["$ClimbAnimation"]: ((number) -> ())?,
	["DepthScale"]: Prop<number>,
	["$DepthScale"]: ((number) -> ())?,
	["Face"]: Prop<number>,
	["$Face"]: ((number) -> ())?,
	["FaceAccessory"]: Prop<string>,
	["$FaceAccessory"]: ((string) -> ())?,
	["FallAnimation"]: Prop<number>,
	["$FallAnimation"]: ((number) -> ())?,
	["FrontAccessory"]: Prop<string>,
	["$FrontAccessory"]: ((string) -> ())?,
	["GraphicTShirt"]: Prop<number>,
	["$GraphicTShirt"]: ((number) -> ())?,
	["HairAccessory"]: Prop<string>,
	["$HairAccessory"]: ((string) -> ())?,
	["HatAccessory"]: Prop<string>,
	["$HatAccessory"]: ((string) -> ())?,
	["Head"]: Prop<number>,
	["$Head"]: ((number) -> ())?,
	["HeadColor"]: Prop<Color3>,
	["$HeadColor"]: ((Color3) -> ())?,
	["HeadScale"]: Prop<number>,
	["$HeadScale"]: ((number) -> ())?,
	["HeightScale"]: Prop<number>,
	["$HeightScale"]: ((number) -> ())?,
	["IdleAnimation"]: Prop<number>,
	["$IdleAnimation"]: ((number) -> ())?,
	["JumpAnimation"]: Prop<number>,
	["$JumpAnimation"]: ((number) -> ())?,
	["LeftArm"]: Prop<number>,
	["$LeftArm"]: ((number) -> ())?,
	["LeftArmColor"]: Prop<Color3>,
	["$LeftArmColor"]: ((Color3) -> ())?,
	["LeftLeg"]: Prop<number>,
	["$LeftLeg"]: ((number) -> ())?,
	["LeftLegColor"]: Prop<Color3>,
	["$LeftLegColor"]: ((Color3) -> ())?,
	["MoodAnimation"]: Prop<number>,
	["$MoodAnimation"]: ((number) -> ())?,
	["NeckAccessory"]: Prop<string>,
	["$NeckAccessory"]: ((string) -> ())?,
	["NumberEmotesLoaded"]: Prop<number>,
	["$NumberEmotesLoaded"]: ((number) -> ())?,
	["Pants"]: Prop<number>,
	["$Pants"]: ((number) -> ())?,
	["ProportionScale"]: Prop<number>,
	["$ProportionScale"]: ((number) -> ())?,
	["RightArm"]: Prop<number>,
	["$RightArm"]: ((number) -> ())?,
	["RightArmColor"]: Prop<Color3>,
	["$RightArmColor"]: ((Color3) -> ())?,
	["RightLeg"]: Prop<number>,
	["$RightLeg"]: ((number) -> ())?,
	["RightLegColor"]: Prop<Color3>,
	["$RightLegColor"]: ((Color3) -> ())?,
	["RunAnimation"]: Prop<number>,
	["$RunAnimation"]: ((number) -> ())?,
	["Shirt"]: Prop<number>,
	["$Shirt"]: ((number) -> ())?,
	["ShouldersAccessory"]: Prop<string>,
	["$ShouldersAccessory"]: ((string) -> ())?,
	["SwimAnimation"]: Prop<number>,
	["$SwimAnimation"]: ((number) -> ())?,
	["Torso"]: Prop<number>,
	["$Torso"]: ((number) -> ())?,
	["TorsoColor"]: Prop<Color3>,
	["$TorsoColor"]: ((Color3) -> ())?,
	["WaistAccessory"]: Prop<string>,
	["$WaistAccessory"]: ((string) -> ())?,
	["WalkAnimation"]: Prop<number>,
	["$WalkAnimation"]: ((number) -> ())?,
	["WidthScale"]: Prop<number>,
	["$WidthScale"]: ((number) -> ())?,
	["@EmotesChanged"]: ((newEmotes: { [any]: any }) -> ())?,
	["@EquippedEmotesChanged"]: ((newEquippedEmotes: { any }) -> ())?,
}
Export.HumanoidDescription = function(Props: HumanoidDescription_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "HumanoidDescription", PropMap = Props, ChildMap = Children or {} }
end
export type IKControl_PropMap = Instance_PropMap & {
	["ChainRoot"]: Prop<Instance>,
	["$ChainRoot"]: ((Instance) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["EndEffector"]: Prop<Instance>,
	["$EndEffector"]: ((Instance) -> ())?,
	["EndEffectorOffset"]: Prop<CFrame>,
	["$EndEffectorOffset"]: ((CFrame) -> ())?,
	["Offset"]: Prop<CFrame>,
	["$Offset"]: ((CFrame) -> ())?,
	["Pole"]: Prop<Instance>,
	["$Pole"]: ((Instance) -> ())?,
	["Priority"]: Prop<number>,
	["$Priority"]: ((number) -> ())?,
	["SmoothTime"]: Prop<number>,
	["$SmoothTime"]: ((number) -> ())?,
	["Target"]: Prop<Instance>,
	["$Target"]: ((Instance) -> ())?,
	["Type"]: Prop<Enum.IKControlType>,
	["$Type"]: ((Enum.IKControlType) -> ())?,
	["Weight"]: Prop<number>,
	["$Weight"]: ((number) -> ())?,
}
Export.IKControl = function(Props: IKControl_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "IKControl", PropMap = Props, ChildMap = Children or {} }
end
export type JointInstance_PropMap = Instance_PropMap & {
	["$Active"]: ((boolean) -> ())?,
	["C0"]: Prop<CFrame>,
	["$C0"]: ((CFrame) -> ())?,
	["C1"]: Prop<CFrame>,
	["$C1"]: ((CFrame) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["Part0"]: Prop<BasePart>,
	["$Part0"]: ((BasePart) -> ())?,
	["Part1"]: Prop<BasePart>,
	["$Part1"]: ((BasePart) -> ())?,
}
export type Motor_PropMap = JointInstance_PropMap & {
	["CurrentAngle"]: Prop<number>,
	["$CurrentAngle"]: ((number) -> ())?,
	["DesiredAngle"]: Prop<number>,
	["$DesiredAngle"]: ((number) -> ())?,
	["MaxVelocity"]: Prop<number>,
	["$MaxVelocity"]: ((number) -> ())?,
}
Export.Motor = function(Props: Motor_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Motor", PropMap = Props, ChildMap = Children or {} }
end
export type Motor6D_PropMap = Motor_PropMap & { ["Transform"]: Prop<CFrame>, ["$Transform"]: ((CFrame) -> ())? }
Export.Motor6D = function(Props: Motor6D_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Motor6D", PropMap = Props, ChildMap = Children or {} }
end
export type VelocityMotor_PropMap = JointInstance_PropMap & {
	["CurrentAngle"]: Prop<number>,
	["$CurrentAngle"]: ((number) -> ())?,
	["DesiredAngle"]: Prop<number>,
	["$DesiredAngle"]: ((number) -> ())?,
	["Hole"]: Prop<Hole>,
	["$Hole"]: ((Hole) -> ())?,
	["MaxVelocity"]: Prop<number>,
	["$MaxVelocity"]: ((number) -> ())?,
}
Export.VelocityMotor = function(Props: VelocityMotor_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "VelocityMotor", PropMap = Props, ChildMap = Children or {} }
end
export type Weld_PropMap = JointInstance_PropMap & {}
Export.Weld = function(Props: Weld_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Weld", PropMap = Props, ChildMap = Children or {} }
end
export type Keyframe_PropMap = Instance_PropMap & { ["Time"]: Prop<number>, ["$Time"]: ((number) -> ())? }
Export.Keyframe = function(Props: Keyframe_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Keyframe", PropMap = Props, ChildMap = Children or {} }
end
export type KeyframeMarker_PropMap = Instance_PropMap & { ["Value"]: Prop<string>, ["$Value"]: ((string) -> ())? }
Export.KeyframeMarker = function(Props: KeyframeMarker_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "KeyframeMarker", PropMap = Props, ChildMap = Children or {} }
end
export type Light_PropMap = Instance_PropMap & {
	["Brightness"]: Prop<number>,
	["$Brightness"]: ((number) -> ())?,
	["Color"]: Prop<Color3>,
	["$Color"]: ((Color3) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["Shadows"]: Prop<boolean>,
	["$Shadows"]: ((boolean) -> ())?,
}
export type PointLight_PropMap = Light_PropMap & { ["Range"]: Prop<number>, ["$Range"]: ((number) -> ())? }
Export.PointLight = function(Props: PointLight_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "PointLight", PropMap = Props, ChildMap = Children or {} }
end
export type SpotLight_PropMap = Light_PropMap & {
	["Angle"]: Prop<number>,
	["$Angle"]: ((number) -> ())?,
	["Face"]: Prop<Enum.NormalId>,
	["$Face"]: ((Enum.NormalId) -> ())?,
	["Range"]: Prop<number>,
	["$Range"]: ((number) -> ())?,
}
Export.SpotLight = function(Props: SpotLight_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SpotLight", PropMap = Props, ChildMap = Children or {} }
end
export type SurfaceLight_PropMap = Light_PropMap & {
	["Angle"]: Prop<number>,
	["$Angle"]: ((number) -> ())?,
	["Face"]: Prop<Enum.NormalId>,
	["$Face"]: ((Enum.NormalId) -> ())?,
	["Range"]: Prop<number>,
	["$Range"]: ((number) -> ())?,
}
Export.SurfaceLight = function(Props: SurfaceLight_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SurfaceLight", PropMap = Props, ChildMap = Children or {} }
end
export type LocalizationTable_PropMap =
	Instance_PropMap
	& { ["SourceLocaleId"]: Prop<string>, ["$SourceLocaleId"]: ((string) -> ())? }
Export.LocalizationTable = function(Props: LocalizationTable_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "LocalizationTable", PropMap = Props, ChildMap = Children or {} }
end
export type LuaSourceContainer_PropMap =
	Instance_PropMap
	& { ["RuntimeSource"]: Prop<string>, ["$RuntimeSource"]: ((string) -> ())? }
export type BaseScript_PropMap = LuaSourceContainer_PropMap & {
	["Disabled"]: Prop<boolean>,
	["$Disabled"]: ((boolean) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["LinkedSource"]: Prop<string>,
	["$LinkedSource"]: ((string) -> ())?,
	["RunContext"]: Prop<Enum.RunContext>,
	["$RunContext"]: ((Enum.RunContext) -> ())?,
}
export type Script_PropMap = BaseScript_PropMap & { ["Source"]: Prop<string>, ["$Source"]: ((string) -> ())? }
Export.Script = function(Props: Script_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Script", PropMap = Props, ChildMap = Children or {} }
end
export type LocalScript_PropMap = Script_PropMap & {}
Export.LocalScript = function(Props: LocalScript_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "LocalScript", PropMap = Props, ChildMap = Children or {} }
end
export type ModuleScript_PropMap = LuaSourceContainer_PropMap & {
	["LinkedSource"]: Prop<string>,
	["$LinkedSource"]: ((string) -> ())?,
	["Source"]: Prop<string>,
	["$Source"]: ((string) -> ())?,
}
Export.ModuleScript = function(Props: ModuleScript_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ModuleScript", PropMap = Props, ChildMap = Children or {} }
end
export type MarkerCurve_PropMap = Instance_PropMap & { ["$Length"]: ((number) -> ())? }
Export.MarkerCurve = function(Props: MarkerCurve_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "MarkerCurve", PropMap = Props, ChildMap = Children or {} }
end
export type MaterialVariant_PropMap = Instance_PropMap & {
	["BaseMaterial"]: Prop<Enum.Material>,
	["$BaseMaterial"]: ((Enum.Material) -> ())?,
	["ColorMap"]: Prop<string>,
	["$ColorMap"]: ((string) -> ())?,
	["CustomPhysicalProperties"]: Prop<PhysicalProperties>,
	["$CustomPhysicalProperties"]: ((PhysicalProperties) -> ())?,
	["MaterialPattern"]: Prop<Enum.MaterialPattern>,
	["$MaterialPattern"]: ((Enum.MaterialPattern) -> ())?,
	["MetalnessMap"]: Prop<string>,
	["$MetalnessMap"]: ((string) -> ())?,
	["NormalMap"]: Prop<string>,
	["$NormalMap"]: ((string) -> ())?,
	["RoughnessMap"]: Prop<string>,
	["$RoughnessMap"]: ((string) -> ())?,
	["StudsPerTile"]: Prop<number>,
	["$StudsPerTile"]: ((number) -> ())?,
}
Export.MaterialVariant = function(Props: MaterialVariant_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "MaterialVariant", PropMap = Props, ChildMap = Children or {} }
end
export type MemoryStoreService_PropMap = Instance_PropMap & {}
Export.MemoryStoreService = function(Props: MemoryStoreService_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "MemoryStoreService", PropMap = Props, ChildMap = Children or {} }
end
export type NoCollisionConstraint_PropMap = Instance_PropMap & {
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["Part0"]: Prop<BasePart>,
	["$Part0"]: ((BasePart) -> ())?,
	["Part1"]: Prop<BasePart>,
	["$Part1"]: ((BasePart) -> ())?,
}
Export.NoCollisionConstraint = function(Props: NoCollisionConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "NoCollisionConstraint", PropMap = Props, ChildMap = Children
		or {} }
end
export type OperationTree_PropMap = Instance_PropMap & {}
Export.OperationTree = function(Props: OperationTree_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "OperationTree", PropMap = Props, ChildMap = Children or {} }
end
export type PVInstance_PropMap = Instance_PropMap & {}
export type BasePart_PropMap = PVInstance_PropMap & {
	["Anchored"]: Prop<boolean>,
	["$Anchored"]: ((boolean) -> ())?,
	["AssemblyAngularVelocity"]: Prop<Vector3>,
	["$AssemblyAngularVelocity"]: ((Vector3) -> ())?,
	["$AssemblyCenterOfMass"]: ((Vector3) -> ())?,
	["AssemblyLinearVelocity"]: Prop<Vector3>,
	["$AssemblyLinearVelocity"]: ((Vector3) -> ())?,
	["$AssemblyMass"]: ((number) -> ())?,
	["$AssemblyRootPart"]: ((BasePart) -> ())?,
	["BackSurface"]: Prop<Enum.SurfaceType>,
	["$BackSurface"]: ((Enum.SurfaceType) -> ())?,
	["BottomSurface"]: Prop<Enum.SurfaceType>,
	["$BottomSurface"]: ((Enum.SurfaceType) -> ())?,
	["BrickColor"]: Prop<BrickColor>,
	["$BrickColor"]: ((BrickColor) -> ())?,
	["CFrame"]: Prop<CFrame>,
	["$CFrame"]: ((CFrame) -> ())?,
	["CanCollide"]: Prop<boolean>,
	["$CanCollide"]: ((boolean) -> ())?,
	["CanQuery"]: Prop<boolean>,
	["$CanQuery"]: ((boolean) -> ())?,
	["CanTouch"]: Prop<boolean>,
	["$CanTouch"]: ((boolean) -> ())?,
	["CastShadow"]: Prop<boolean>,
	["$CastShadow"]: ((boolean) -> ())?,
	["$CenterOfMass"]: ((Vector3) -> ())?,
	["CollisionGroup"]: Prop<string>,
	["$CollisionGroup"]: ((string) -> ())?,
	["Color"]: Prop<Color3>,
	["$Color"]: ((Color3) -> ())?,
	["$CurrentPhysicalProperties"]: ((PhysicalProperties) -> ())?,
	["CustomPhysicalProperties"]: Prop<PhysicalProperties>,
	["$CustomPhysicalProperties"]: ((PhysicalProperties) -> ())?,
	["EnableFluidForces"]: Prop<boolean>,
	["$EnableFluidForces"]: ((boolean) -> ())?,
	["$ExtentsCFrame"]: ((CFrame) -> ())?,
	["$ExtentsSize"]: ((Vector3) -> ())?,
	["FrontSurface"]: Prop<Enum.SurfaceType>,
	["$FrontSurface"]: ((Enum.SurfaceType) -> ())?,
	["LeftSurface"]: Prop<Enum.SurfaceType>,
	["$LeftSurface"]: ((Enum.SurfaceType) -> ())?,
	["LocalTransparencyModifier"]: Prop<number>,
	["$LocalTransparencyModifier"]: ((number) -> ())?,
	["Locked"]: Prop<boolean>,
	["$Locked"]: ((boolean) -> ())?,
	["$Mass"]: ((number) -> ())?,
	["Massless"]: Prop<boolean>,
	["$Massless"]: ((boolean) -> ())?,
	["Material"]: Prop<Enum.Material>,
	["$Material"]: ((Enum.Material) -> ())?,
	["MaterialVariant"]: Prop<string>,
	["$MaterialVariant"]: ((string) -> ())?,
	["Orientation"]: Prop<Vector3>,
	["$Orientation"]: ((Vector3) -> ())?,
	["PivotOffset"]: Prop<CFrame>,
	["$PivotOffset"]: ((CFrame) -> ())?,
	["Position"]: Prop<Vector3>,
	["$Position"]: ((Vector3) -> ())?,
	["$ReceiveAge"]: ((number) -> ())?,
	["Reflectance"]: Prop<number>,
	["$Reflectance"]: ((number) -> ())?,
	["$ResizeIncrement"]: ((number) -> ())?,
	["$ResizeableFaces"]: ((Faces) -> ())?,
	["RightSurface"]: Prop<Enum.SurfaceType>,
	["$RightSurface"]: ((Enum.SurfaceType) -> ())?,
	["RootPriority"]: Prop<number>,
	["$RootPriority"]: ((number) -> ())?,
	["Rotation"]: Prop<Vector3>,
	["$Rotation"]: ((Vector3) -> ())?,
	["Size"]: Prop<Vector3>,
	["$Size"]: ((Vector3) -> ())?,
	["TopSurface"]: Prop<Enum.SurfaceType>,
	["$TopSurface"]: ((Enum.SurfaceType) -> ())?,
	["Transparency"]: Prop<number>,
	["$Transparency"]: ((number) -> ())?,
	["@TouchEnded"]: ((otherPart: BasePart) -> ())?,
	["@Touched"]: ((otherPart: BasePart) -> ())?,
}
export type CornerWedgePart_PropMap = BasePart_PropMap & {}
Export.CornerWedgePart = function(Props: CornerWedgePart_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "CornerWedgePart", PropMap = Props, ChildMap = Children or {} }
end
export type FormFactorPart_PropMap = BasePart_PropMap & {}
export type Part_PropMap =
	FormFactorPart_PropMap
	& { ["Shape"]: Prop<Enum.PartType>, ["$Shape"]: ((Enum.PartType) -> ())? }
Export.Part = function(Props: Part_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Part", PropMap = Props, ChildMap = Children or {} }
end
export type Seat_PropMap =
	Part_PropMap
	& { ["Disabled"]: Prop<boolean>, ["$Disabled"]: ((boolean) -> ())?, ["$Occupant"]: ((Humanoid) -> ())? }
Export.Seat = function(Props: Seat_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Seat", PropMap = Props, ChildMap = Children or {} }
end
export type SpawnLocation_PropMap = Part_PropMap & {
	["AllowTeamChangeOnTouch"]: Prop<boolean>,
	["$AllowTeamChangeOnTouch"]: ((boolean) -> ())?,
	["Duration"]: Prop<number>,
	["$Duration"]: ((number) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["Neutral"]: Prop<boolean>,
	["$Neutral"]: ((boolean) -> ())?,
	["TeamColor"]: Prop<BrickColor>,
	["$TeamColor"]: ((BrickColor) -> ())?,
}
Export.SpawnLocation = function(Props: SpawnLocation_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SpawnLocation", PropMap = Props, ChildMap = Children or {} }
end
export type WedgePart_PropMap = FormFactorPart_PropMap & {}
Export.WedgePart = function(Props: WedgePart_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "WedgePart", PropMap = Props, ChildMap = Children or {} }
end
export type TriangleMeshPart_PropMap = BasePart_PropMap & {
	["CollisionFidelity"]: Prop<Enum.CollisionFidelity>,
	["$CollisionFidelity"]: ((Enum.CollisionFidelity) -> ())?,
	["$MeshSize"]: ((Vector3) -> ())?,
}
export type MeshPart_PropMap = TriangleMeshPart_PropMap & {
	["DoubleSided"]: Prop<boolean>,
	["$DoubleSided"]: ((boolean) -> ())?,
	["HasJointOffset"]: Prop<boolean>,
	["$HasJointOffset"]: ((boolean) -> ())?,
	["HasSkinnedMesh"]: Prop<boolean>,
	["$HasSkinnedMesh"]: ((boolean) -> ())?,
	["JointOffset"]: Prop<Vector3>,
	["$JointOffset"]: ((Vector3) -> ())?,
	["MeshId"]: Prop<string>,
	["$MeshId"]: ((string) -> ())?,
	["RenderFidelity"]: Prop<Enum.RenderFidelity>,
	["$RenderFidelity"]: ((Enum.RenderFidelity) -> ())?,
	["TextureID"]: Prop<string>,
	["$TextureID"]: ((string) -> ())?,
}
Export.MeshPart = function(Props: MeshPart_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "MeshPart", PropMap = Props, ChildMap = Children or {} }
end
export type PartOperation_PropMap = TriangleMeshPart_PropMap & {
	["RenderFidelity"]: Prop<Enum.RenderFidelity>,
	["$RenderFidelity"]: ((Enum.RenderFidelity) -> ())?,
	["SmoothingAngle"]: Prop<number>,
	["$SmoothingAngle"]: ((number) -> ())?,
	["$TriangleCount"]: ((number) -> ())?,
	["UsePartColor"]: Prop<boolean>,
	["$UsePartColor"]: ((boolean) -> ())?,
}
Export.PartOperation = function(Props: PartOperation_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "PartOperation", PropMap = Props, ChildMap = Children or {} }
end
export type IntersectOperation_PropMap = PartOperation_PropMap & {}
Export.IntersectOperation = function(Props: IntersectOperation_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "IntersectOperation", PropMap = Props, ChildMap = Children or {} }
end
export type NegateOperation_PropMap = PartOperation_PropMap & {}
Export.NegateOperation = function(Props: NegateOperation_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "NegateOperation", PropMap = Props, ChildMap = Children or {} }
end
export type UnionOperation_PropMap = PartOperation_PropMap & {}
Export.UnionOperation = function(Props: UnionOperation_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UnionOperation", PropMap = Props, ChildMap = Children or {} }
end
export type TrussPart_PropMap = BasePart_PropMap & { ["Style"]: Prop<Enum.Style>, ["$Style"]: ((Enum.Style) -> ())? }
Export.TrussPart = function(Props: TrussPart_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TrussPart", PropMap = Props, ChildMap = Children or {} }
end
export type VehicleSeat_PropMap = BasePart_PropMap & {
	["$AreHingesDetected"]: ((number) -> ())?,
	["Disabled"]: Prop<boolean>,
	["$Disabled"]: ((boolean) -> ())?,
	["HeadsUpDisplay"]: Prop<boolean>,
	["$HeadsUpDisplay"]: ((boolean) -> ())?,
	["MaxSpeed"]: Prop<number>,
	["$MaxSpeed"]: ((number) -> ())?,
	["$Occupant"]: ((Humanoid) -> ())?,
	["Steer"]: Prop<number>,
	["$Steer"]: ((number) -> ())?,
	["SteerFloat"]: Prop<number>,
	["$SteerFloat"]: ((number) -> ())?,
	["Throttle"]: Prop<number>,
	["$Throttle"]: ((number) -> ())?,
	["ThrottleFloat"]: Prop<number>,
	["$ThrottleFloat"]: ((number) -> ())?,
	["Torque"]: Prop<number>,
	["$Torque"]: ((number) -> ())?,
	["TurnSpeed"]: Prop<number>,
	["$TurnSpeed"]: ((number) -> ())?,
}
Export.VehicleSeat = function(Props: VehicleSeat_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "VehicleSeat", PropMap = Props, ChildMap = Children or {} }
end
export type Model_PropMap = PVInstance_PropMap & {
	["LevelOfDetail"]: Prop<Enum.ModelLevelOfDetail>,
	["$LevelOfDetail"]: ((Enum.ModelLevelOfDetail) -> ())?,
	["ModelStreamingMode"]: Prop<Enum.ModelStreamingMode>,
	["$ModelStreamingMode"]: ((Enum.ModelStreamingMode) -> ())?,
	["PrimaryPart"]: Prop<BasePart>,
	["$PrimaryPart"]: ((BasePart) -> ())?,
	["WorldPivot"]: Prop<CFrame>,
	["$WorldPivot"]: ((CFrame) -> ())?,
}
Export.Model = function(Props: Model_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Model", PropMap = Props, ChildMap = Children or {} }
end
export type Actor_PropMap = Model_PropMap & {}
Export.Actor = function(Props: Actor_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Actor", PropMap = Props, ChildMap = Children or {} }
end
export type BackpackItem_PropMap = Model_PropMap & { ["TextureId"]: Prop<string>, ["$TextureId"]: ((string) -> ())? }
export type Tool_PropMap = BackpackItem_PropMap & {
	["CanBeDropped"]: Prop<boolean>,
	["$CanBeDropped"]: ((boolean) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["Grip"]: Prop<CFrame>,
	["$Grip"]: ((CFrame) -> ())?,
	["GripForward"]: Prop<Vector3>,
	["$GripForward"]: ((Vector3) -> ())?,
	["GripPos"]: Prop<Vector3>,
	["$GripPos"]: ((Vector3) -> ())?,
	["GripRight"]: Prop<Vector3>,
	["$GripRight"]: ((Vector3) -> ())?,
	["GripUp"]: Prop<Vector3>,
	["$GripUp"]: ((Vector3) -> ())?,
	["ManualActivationOnly"]: Prop<boolean>,
	["$ManualActivationOnly"]: ((boolean) -> ())?,
	["RequiresHandle"]: Prop<boolean>,
	["$RequiresHandle"]: ((boolean) -> ())?,
	["ToolTip"]: Prop<string>,
	["$ToolTip"]: ((string) -> ())?,
	["@Activated"]: (() -> ())?,
	["@Deactivated"]: (() -> ())?,
	["@Equipped"]: ((mouse: Mouse) -> ())?,
	["@Unequipped"]: (() -> ())?,
}
Export.Tool = function(Props: Tool_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Tool", PropMap = Props, ChildMap = Children or {} }
end
export type WorldRoot_PropMap = Model_PropMap & {}
export type WorldModel_PropMap = WorldRoot_PropMap & {}
Export.WorldModel = function(Props: WorldModel_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "WorldModel", PropMap = Props, ChildMap = Children or {} }
end
export type PartOperationAsset_PropMap = Instance_PropMap & {}
Export.PartOperationAsset = function(Props: PartOperationAsset_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "PartOperationAsset", PropMap = Props, ChildMap = Children or {} }
end
export type ParticleEmitter_PropMap = Instance_PropMap & {
	["Acceleration"]: Prop<Vector3>,
	["$Acceleration"]: ((Vector3) -> ())?,
	["Brightness"]: Prop<number>,
	["$Brightness"]: ((number) -> ())?,
	["Color"]: Prop<ColorSequence>,
	["$Color"]: ((ColorSequence) -> ())?,
	["Drag"]: Prop<number>,
	["$Drag"]: ((number) -> ())?,
	["EmissionDirection"]: Prop<Enum.NormalId>,
	["$EmissionDirection"]: ((Enum.NormalId) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["FlipbookFramerate"]: Prop<NumberRange>,
	["$FlipbookFramerate"]: ((NumberRange) -> ())?,
	["FlipbookIncompatible"]: Prop<string>,
	["$FlipbookIncompatible"]: ((string) -> ())?,
	["FlipbookLayout"]: Prop<Enum.ParticleFlipbookLayout>,
	["$FlipbookLayout"]: ((Enum.ParticleFlipbookLayout) -> ())?,
	["FlipbookMode"]: Prop<Enum.ParticleFlipbookMode>,
	["$FlipbookMode"]: ((Enum.ParticleFlipbookMode) -> ())?,
	["FlipbookStartRandom"]: Prop<boolean>,
	["$FlipbookStartRandom"]: ((boolean) -> ())?,
	["Lifetime"]: Prop<NumberRange>,
	["$Lifetime"]: ((NumberRange) -> ())?,
	["LightEmission"]: Prop<number>,
	["$LightEmission"]: ((number) -> ())?,
	["LightInfluence"]: Prop<number>,
	["$LightInfluence"]: ((number) -> ())?,
	["LockedToPart"]: Prop<boolean>,
	["$LockedToPart"]: ((boolean) -> ())?,
	["Orientation"]: Prop<Enum.ParticleOrientation>,
	["$Orientation"]: ((Enum.ParticleOrientation) -> ())?,
	["Rate"]: Prop<number>,
	["$Rate"]: ((number) -> ())?,
	["RotSpeed"]: Prop<NumberRange>,
	["$RotSpeed"]: ((NumberRange) -> ())?,
	["Rotation"]: Prop<NumberRange>,
	["$Rotation"]: ((NumberRange) -> ())?,
	["Shape"]: Prop<Enum.ParticleEmitterShape>,
	["$Shape"]: ((Enum.ParticleEmitterShape) -> ())?,
	["ShapeInOut"]: Prop<Enum.ParticleEmitterShapeInOut>,
	["$ShapeInOut"]: ((Enum.ParticleEmitterShapeInOut) -> ())?,
	["ShapePartial"]: Prop<number>,
	["$ShapePartial"]: ((number) -> ())?,
	["ShapeStyle"]: Prop<Enum.ParticleEmitterShapeStyle>,
	["$ShapeStyle"]: ((Enum.ParticleEmitterShapeStyle) -> ())?,
	["Size"]: Prop<NumberSequence>,
	["$Size"]: ((NumberSequence) -> ())?,
	["Speed"]: Prop<NumberRange>,
	["$Speed"]: ((NumberRange) -> ())?,
	["SpreadAngle"]: Prop<Vector2>,
	["$SpreadAngle"]: ((Vector2) -> ())?,
	["Squash"]: Prop<NumberSequence>,
	["$Squash"]: ((NumberSequence) -> ())?,
	["Texture"]: Prop<string>,
	["$Texture"]: ((string) -> ())?,
	["TimeScale"]: Prop<number>,
	["$TimeScale"]: ((number) -> ())?,
	["Transparency"]: Prop<NumberSequence>,
	["$Transparency"]: ((NumberSequence) -> ())?,
	["VelocityInheritance"]: Prop<number>,
	["$VelocityInheritance"]: ((number) -> ())?,
	["WindAffectsDrag"]: Prop<boolean>,
	["$WindAffectsDrag"]: ((boolean) -> ())?,
	["ZOffset"]: Prop<number>,
	["$ZOffset"]: ((number) -> ())?,
}
Export.ParticleEmitter = function(Props: ParticleEmitter_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ParticleEmitter", PropMap = Props, ChildMap = Children or {} }
end
export type PathfindingLink_PropMap = Instance_PropMap & {
	["Attachment0"]: Prop<Attachment>,
	["$Attachment0"]: ((Attachment) -> ())?,
	["Attachment1"]: Prop<Attachment>,
	["$Attachment1"]: ((Attachment) -> ())?,
	["IsBidirectional"]: Prop<boolean>,
	["$IsBidirectional"]: ((boolean) -> ())?,
	["Label"]: Prop<string>,
	["$Label"]: ((string) -> ())?,
}
Export.PathfindingLink = function(Props: PathfindingLink_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "PathfindingLink", PropMap = Props, ChildMap = Children or {} }
end
export type PathfindingModifier_PropMap = Instance_PropMap & {
	["Label"]: Prop<string>,
	["$Label"]: ((string) -> ())?,
	["PassThrough"]: Prop<boolean>,
	["$PassThrough"]: ((boolean) -> ())?,
}
Export.PathfindingModifier = function(Props: PathfindingModifier_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "PathfindingModifier", PropMap = Props, ChildMap = Children or {} }
end
export type Player_PropMap = Instance_PropMap & {
	["$AccountAge"]: ((number) -> ())?,
	["AutoJumpEnabled"]: Prop<boolean>,
	["$AutoJumpEnabled"]: ((boolean) -> ())?,
	["CameraMaxZoomDistance"]: Prop<number>,
	["$CameraMaxZoomDistance"]: ((number) -> ())?,
	["CameraMinZoomDistance"]: Prop<number>,
	["$CameraMinZoomDistance"]: ((number) -> ())?,
	["CameraMode"]: Prop<Enum.CameraMode>,
	["$CameraMode"]: ((Enum.CameraMode) -> ())?,
	["CanLoadCharacterAppearance"]: Prop<boolean>,
	["$CanLoadCharacterAppearance"]: ((boolean) -> ())?,
	["Character"]: Prop<Model>,
	["$Character"]: ((Model) -> ())?,
	["CharacterAppearanceId"]: Prop<number>,
	["$CharacterAppearanceId"]: ((number) -> ())?,
	["$ChatMode"]: ((Enum.ChatMode) -> ())?,
	["DevCameraOcclusionMode"]: Prop<Enum.DevCameraOcclusionMode>,
	["$DevCameraOcclusionMode"]: ((Enum.DevCameraOcclusionMode) -> ())?,
	["DevComputerCameraMode"]: Prop<Enum.DevComputerCameraMovementMode>,
	["$DevComputerCameraMode"]: ((Enum.DevComputerCameraMovementMode) -> ())?,
	["DevComputerMovementMode"]: Prop<Enum.DevComputerMovementMode>,
	["$DevComputerMovementMode"]: ((Enum.DevComputerMovementMode) -> ())?,
	["DevEnableMouseLock"]: Prop<boolean>,
	["$DevEnableMouseLock"]: ((boolean) -> ())?,
	["DevTouchCameraMode"]: Prop<Enum.DevTouchCameraMovementMode>,
	["$DevTouchCameraMode"]: ((Enum.DevTouchCameraMovementMode) -> ())?,
	["DevTouchMovementMode"]: Prop<Enum.DevTouchMovementMode>,
	["$DevTouchMovementMode"]: ((Enum.DevTouchMovementMode) -> ())?,
	["DisplayName"]: Prop<string>,
	["$DisplayName"]: ((string) -> ())?,
	["$FollowUserId"]: ((number) -> ())?,
	["GameplayPaused"]: Prop<boolean>,
	["$GameplayPaused"]: ((boolean) -> ())?,
	["$Guest"]: ((boolean) -> ())?,
	["HasVerifiedBadge"]: Prop<boolean>,
	["$HasVerifiedBadge"]: ((boolean) -> ())?,
	["HealthDisplayDistance"]: Prop<number>,
	["$HealthDisplayDistance"]: ((number) -> ())?,
	["$LocaleId"]: ((string) -> ())?,
	["MaximumSimulationRadius"]: Prop<number>,
	["$MaximumSimulationRadius"]: ((number) -> ())?,
	["$MembershipType"]: ((Enum.MembershipType) -> ())?,
	["NameDisplayDistance"]: Prop<number>,
	["$NameDisplayDistance"]: ((number) -> ())?,
	["Neutral"]: Prop<boolean>,
	["$Neutral"]: ((boolean) -> ())?,
	["OsPlatform"]: Prop<string>,
	["$OsPlatform"]: ((string) -> ())?,
	["PlatformName"]: Prop<string>,
	["$PlatformName"]: ((string) -> ())?,
	["ReplicationFocus"]: Prop<Instance>,
	["$ReplicationFocus"]: ((Instance) -> ())?,
	["RespawnLocation"]: Prop<SpawnLocation>,
	["$RespawnLocation"]: ((SpawnLocation) -> ())?,
	["SimulationRadius"]: Prop<number>,
	["$SimulationRadius"]: ((number) -> ())?,
	["Team"]: Prop<Team>,
	["$Team"]: ((Team) -> ())?,
	["TeamColor"]: Prop<BrickColor>,
	["$TeamColor"]: ((BrickColor) -> ())?,
	["$Teleported"]: ((boolean) -> ())?,
	["TeleportedIn"]: Prop<boolean>,
	["$TeleportedIn"]: ((boolean) -> ())?,
	["$UnfilteredChat"]: ((boolean) -> ())?,
	["UserId"]: Prop<number>,
	["$UserId"]: ((number) -> ())?,
	["VRDevice"]: Prop<string>,
	["$VRDevice"]: ((string) -> ())?,
	["VREnabled"]: Prop<boolean>,
	["$VREnabled"]: ((boolean) -> ())?,
	["@CharacterAdded"]: ((character: Model) -> ())?,
	["@CharacterAppearanceLoaded"]: ((character: Model) -> ())?,
	["@CharacterRemoving"]: ((character: Model) -> ())?,
	["@Chatted"]: ((message: string, recipient: Player) -> ())?,
	["@FriendStatusChanged"]: ((player: Player, friendStatus: Enum.FriendStatus) -> ())?,
	["@Idled"]: ((time: number) -> ())?,
	["@OnTeleport"]: ((teleportState: Enum.TeleportState, placeId: number, spawnName: string) -> ())?,
	["@SimulationRadiusChanged"]: ((radius: number) -> ())?,
}
Export.Player = function(Props: Player_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Player", PropMap = Props, ChildMap = Children or {} }
end
export type PluginAction_PropMap = Instance_PropMap & {
	["$ActionId"]: ((string) -> ())?,
	["$AllowBinding"]: ((boolean) -> ())?,
	["Checked"]: Prop<boolean>,
	["$Checked"]: ((boolean) -> ())?,
	["DefaultShortcut"]: Prop<string>,
	["$DefaultShortcut"]: ((string) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["$StatusTip"]: ((string) -> ())?,
	["$Text"]: ((string) -> ())?,
	["@Triggered"]: (() -> ())?,
}
Export.PluginAction = function(Props: PluginAction_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "PluginAction", PropMap = Props, ChildMap = Children or {} }
end
export type PluginCapabilities_PropMap =
	Instance_PropMap
	& { ["Manifest"]: Prop<string>, ["$Manifest"]: ((string) -> ())? }
Export.PluginCapabilities = function(Props: PluginCapabilities_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "PluginCapabilities", PropMap = Props, ChildMap = Children or {} }
end
export type PoseBase_PropMap = Instance_PropMap & {
	["EasingDirection"]: Prop<Enum.PoseEasingDirection>,
	["$EasingDirection"]: ((Enum.PoseEasingDirection) -> ())?,
	["EasingStyle"]: Prop<Enum.PoseEasingStyle>,
	["$EasingStyle"]: ((Enum.PoseEasingStyle) -> ())?,
	["Weight"]: Prop<number>,
	["$Weight"]: ((number) -> ())?,
}
export type NumberPose_PropMap = PoseBase_PropMap & { ["Value"]: Prop<number>, ["$Value"]: ((number) -> ())? }
Export.NumberPose = function(Props: NumberPose_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "NumberPose", PropMap = Props, ChildMap = Children or {} }
end
export type Pose_PropMap = PoseBase_PropMap & { ["CFrame"]: Prop<CFrame>, ["$CFrame"]: ((CFrame) -> ())? }
Export.Pose = function(Props: Pose_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Pose", PropMap = Props, ChildMap = Children or {} }
end
export type PostEffect_PropMap = Instance_PropMap & { ["Enabled"]: Prop<boolean>, ["$Enabled"]: ((boolean) -> ())? }
export type BloomEffect_PropMap = PostEffect_PropMap & {
	["Intensity"]: Prop<number>,
	["$Intensity"]: ((number) -> ())?,
	["Size"]: Prop<number>,
	["$Size"]: ((number) -> ())?,
	["Threshold"]: Prop<number>,
	["$Threshold"]: ((number) -> ())?,
}
Export.BloomEffect = function(Props: BloomEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BloomEffect", PropMap = Props, ChildMap = Children or {} }
end
export type BlurEffect_PropMap = PostEffect_PropMap & { ["Size"]: Prop<number>, ["$Size"]: ((number) -> ())? }
Export.BlurEffect = function(Props: BlurEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BlurEffect", PropMap = Props, ChildMap = Children or {} }
end
export type ColorCorrectionEffect_PropMap = PostEffect_PropMap & {
	["Brightness"]: Prop<number>,
	["$Brightness"]: ((number) -> ())?,
	["Contrast"]: Prop<number>,
	["$Contrast"]: ((number) -> ())?,
	["Saturation"]: Prop<number>,
	["$Saturation"]: ((number) -> ())?,
	["TintColor"]: Prop<Color3>,
	["$TintColor"]: ((Color3) -> ())?,
}
Export.ColorCorrectionEffect = function(Props: ColorCorrectionEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ColorCorrectionEffect", PropMap = Props, ChildMap = Children
		or {} }
end
export type DepthOfFieldEffect_PropMap = PostEffect_PropMap & {
	["FarIntensity"]: Prop<number>,
	["$FarIntensity"]: ((number) -> ())?,
	["FocusDistance"]: Prop<number>,
	["$FocusDistance"]: ((number) -> ())?,
	["InFocusRadius"]: Prop<number>,
	["$InFocusRadius"]: ((number) -> ())?,
	["NearIntensity"]: Prop<number>,
	["$NearIntensity"]: ((number) -> ())?,
}
Export.DepthOfFieldEffect = function(Props: DepthOfFieldEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "DepthOfFieldEffect", PropMap = Props, ChildMap = Children or {} }
end
export type SunRaysEffect_PropMap = PostEffect_PropMap & {
	["Intensity"]: Prop<number>,
	["$Intensity"]: ((number) -> ())?,
	["Spread"]: Prop<number>,
	["$Spread"]: ((number) -> ())?,
}
Export.SunRaysEffect = function(Props: SunRaysEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SunRaysEffect", PropMap = Props, ChildMap = Children or {} }
end
export type ProximityPrompt_PropMap = Instance_PropMap & {
	["ActionText"]: Prop<string>,
	["$ActionText"]: ((string) -> ())?,
	["AutoLocalize"]: Prop<boolean>,
	["$AutoLocalize"]: ((boolean) -> ())?,
	["ClickablePrompt"]: Prop<boolean>,
	["$ClickablePrompt"]: ((boolean) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["Exclusivity"]: Prop<Enum.ProximityPromptExclusivity>,
	["$Exclusivity"]: ((Enum.ProximityPromptExclusivity) -> ())?,
	["GamepadKeyCode"]: Prop<Enum.KeyCode>,
	["$GamepadKeyCode"]: ((Enum.KeyCode) -> ())?,
	["HoldDuration"]: Prop<number>,
	["$HoldDuration"]: ((number) -> ())?,
	["KeyboardKeyCode"]: Prop<Enum.KeyCode>,
	["$KeyboardKeyCode"]: ((Enum.KeyCode) -> ())?,
	["MaxActivationDistance"]: Prop<number>,
	["$MaxActivationDistance"]: ((number) -> ())?,
	["ObjectText"]: Prop<string>,
	["$ObjectText"]: ((string) -> ())?,
	["RequiresLineOfSight"]: Prop<boolean>,
	["$RequiresLineOfSight"]: ((boolean) -> ())?,
	["RootLocalizationTable"]: Prop<LocalizationTable>,
	["$RootLocalizationTable"]: ((LocalizationTable) -> ())?,
	["Style"]: Prop<Enum.ProximityPromptStyle>,
	["$Style"]: ((Enum.ProximityPromptStyle) -> ())?,
	["UIOffset"]: Prop<Vector2>,
	["$UIOffset"]: ((Vector2) -> ())?,
	["@PromptButtonHoldBegan"]: ((playerWhoTriggered: Player) -> ())?,
	["@PromptButtonHoldEnded"]: ((playerWhoTriggered: Player) -> ())?,
	["@PromptHidden"]: (() -> ())?,
	["@PromptShown"]: ((inputType: Enum.ProximityPromptInputType) -> ())?,
	["@TriggerEnded"]: ((playerWhoTriggered: Player) -> ())?,
	["@Triggered"]: ((playerWhoTriggered: Player) -> ())?,
}
Export.ProximityPrompt = function(Props: ProximityPrompt_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ProximityPrompt", PropMap = Props, ChildMap = Children or {} }
end
export type ProximityPromptService_PropMap = Instance_PropMap & {
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["MaxPromptsVisible"]: Prop<number>,
	["$MaxPromptsVisible"]: ((number) -> ())?,
	["@PromptButtonHoldBegan"]: ((prompt: ProximityPrompt, playerWhoTriggered: Player) -> ())?,
	["@PromptButtonHoldEnded"]: ((prompt: ProximityPrompt, playerWhoTriggered: Player) -> ())?,
	["@PromptHidden"]: ((prompt: ProximityPrompt) -> ())?,
	["@PromptShown"]: ((prompt: ProximityPrompt, inputType: Enum.ProximityPromptInputType) -> ())?,
	["@PromptTriggerEnded"]: ((prompt: ProximityPrompt, playerWhoTriggered: Player) -> ())?,
	["@PromptTriggered"]: ((prompt: ProximityPrompt, playerWhoTriggered: Player) -> ())?,
}
Export.ProximityPromptService = function(Props: ProximityPromptService_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ProximityPromptService", PropMap = Props, ChildMap = Children
		or {} }
end
export type ReflectionMetadata_PropMap = Instance_PropMap & {}
Export.ReflectionMetadata = function(Props: ReflectionMetadata_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ReflectionMetadata", PropMap = Props, ChildMap = Children or {} }
end
export type ReflectionMetadataCallbacks_PropMap = Instance_PropMap & {}
Export.ReflectionMetadataCallbacks = function(Props: ReflectionMetadataCallbacks_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ReflectionMetadataCallbacks", PropMap = Props, ChildMap = Children
		or {} }
end
export type ReflectionMetadataClasses_PropMap = Instance_PropMap & {}
Export.ReflectionMetadataClasses = function(Props: ReflectionMetadataClasses_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ReflectionMetadataClasses", PropMap = Props, ChildMap = Children
		or {} }
end
export type ReflectionMetadataEnums_PropMap = Instance_PropMap & {}
Export.ReflectionMetadataEnums = function(Props: ReflectionMetadataEnums_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ReflectionMetadataEnums", PropMap = Props, ChildMap = Children
		or {} }
end
export type ReflectionMetadataEvents_PropMap = Instance_PropMap & {}
Export.ReflectionMetadataEvents = function(Props: ReflectionMetadataEvents_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ReflectionMetadataEvents", PropMap = Props, ChildMap = Children
		or {} }
end
export type ReflectionMetadataFunctions_PropMap = Instance_PropMap & {}
Export.ReflectionMetadataFunctions = function(Props: ReflectionMetadataFunctions_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ReflectionMetadataFunctions", PropMap = Props, ChildMap = Children
		or {} }
end
export type ReflectionMetadataItem_PropMap = Instance_PropMap & {
	["Browsable"]: Prop<boolean>,
	["$Browsable"]: ((boolean) -> ())?,
	["ClassCategory"]: Prop<string>,
	["$ClassCategory"]: ((string) -> ())?,
	["ClientOnly"]: Prop<boolean>,
	["$ClientOnly"]: ((boolean) -> ())?,
	["Constraint"]: Prop<string>,
	["$Constraint"]: ((string) -> ())?,
	["Deprecated"]: Prop<boolean>,
	["$Deprecated"]: ((boolean) -> ())?,
	["EditingDisabled"]: Prop<boolean>,
	["$EditingDisabled"]: ((boolean) -> ())?,
	["EditorType"]: Prop<string>,
	["$EditorType"]: ((string) -> ())?,
	["FFlag"]: Prop<string>,
	["$FFlag"]: ((string) -> ())?,
	["IsBackend"]: Prop<boolean>,
	["$IsBackend"]: ((boolean) -> ())?,
	["PropertyOrder"]: Prop<number>,
	["$PropertyOrder"]: ((number) -> ())?,
	["ScriptContext"]: Prop<string>,
	["$ScriptContext"]: ((string) -> ())?,
	["ServerOnly"]: Prop<boolean>,
	["$ServerOnly"]: ((boolean) -> ())?,
	["SliderScaling"]: Prop<string>,
	["$SliderScaling"]: ((string) -> ())?,
	["UIMaximum"]: Prop<number>,
	["$UIMaximum"]: ((number) -> ())?,
	["UIMinimum"]: Prop<number>,
	["$UIMinimum"]: ((number) -> ())?,
	["UINumTicks"]: Prop<number>,
	["$UINumTicks"]: ((number) -> ())?,
}
export type ReflectionMetadataClass_PropMap = ReflectionMetadataItem_PropMap & {
	["ExplorerImageIndex"]: Prop<number>,
	["$ExplorerImageIndex"]: ((number) -> ())?,
	["ExplorerOrder"]: Prop<number>,
	["$ExplorerOrder"]: ((number) -> ())?,
	["Insertable"]: Prop<boolean>,
	["$Insertable"]: ((boolean) -> ())?,
	["PreferredParent"]: Prop<string>,
	["$PreferredParent"]: ((string) -> ())?,
	["ServiceVisibility"]: Prop<Enum.ServiceVisibility>,
	["$ServiceVisibility"]: ((Enum.ServiceVisibility) -> ())?,
}
Export.ReflectionMetadataClass = function(Props: ReflectionMetadataClass_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ReflectionMetadataClass", PropMap = Props, ChildMap = Children
		or {} }
end
export type ReflectionMetadataEnum_PropMap = ReflectionMetadataItem_PropMap & {}
Export.ReflectionMetadataEnum = function(Props: ReflectionMetadataEnum_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ReflectionMetadataEnum", PropMap = Props, ChildMap = Children
		or {} }
end
export type ReflectionMetadataEnumItem_PropMap = ReflectionMetadataItem_PropMap & {}
Export.ReflectionMetadataEnumItem = function(Props: ReflectionMetadataEnumItem_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ReflectionMetadataEnumItem", PropMap = Props, ChildMap = Children
		or {} }
end
export type ReflectionMetadataMember_PropMap = ReflectionMetadataItem_PropMap & {}
Export.ReflectionMetadataMember = function(Props: ReflectionMetadataMember_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ReflectionMetadataMember", PropMap = Props, ChildMap = Children
		or {} }
end
export type ReflectionMetadataProperties_PropMap = Instance_PropMap & {}
Export.ReflectionMetadataProperties = function(
	Props: ReflectionMetadataProperties_PropMap,
	Children: { [string]: e }?
): e
	return { Type = "Create" :: "Create", ClassName = "ReflectionMetadataProperties", PropMap = Props, ChildMap = Children
		or {} }
end
export type ReflectionMetadataYieldFunctions_PropMap = Instance_PropMap & {}
Export.ReflectionMetadataYieldFunctions = function(
	Props: ReflectionMetadataYieldFunctions_PropMap,
	Children: { [string]: e }?
): e
	return { Type = "Create" :: "Create", ClassName = "ReflectionMetadataYieldFunctions", PropMap = Props, ChildMap = Children
		or {} }
end
export type RemoteEvent_PropMap = Instance_PropMap & {
	["@OnClientEvent"]: ((arguments: any) -> ())?,
	["@OnServerEvent"]: ((player: Player, arguments: any) -> ())?,
}
Export.RemoteEvent = function(Props: RemoteEvent_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "RemoteEvent", PropMap = Props, ChildMap = Children or {} }
end
export type RemoteFunction_PropMap = Instance_PropMap & {}
Export.RemoteFunction = function(Props: RemoteFunction_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "RemoteFunction", PropMap = Props, ChildMap = Children or {} }
end
export type RenderingTest_PropMap = Instance_PropMap & {
	["CFrame"]: Prop<CFrame>,
	["$CFrame"]: ((CFrame) -> ())?,
	["ComparisonDiffThreshold"]: Prop<number>,
	["$ComparisonDiffThreshold"]: ((number) -> ())?,
	["ComparisonMethod"]: Prop<Enum.RenderingTestComparisonMethod>,
	["$ComparisonMethod"]: ((Enum.RenderingTestComparisonMethod) -> ())?,
	["ComparisonPsnrThreshold"]: Prop<number>,
	["$ComparisonPsnrThreshold"]: ((number) -> ())?,
	["Description"]: Prop<string>,
	["$Description"]: ((string) -> ())?,
	["FieldOfView"]: Prop<number>,
	["$FieldOfView"]: ((number) -> ())?,
	["Orientation"]: Prop<Vector3>,
	["$Orientation"]: ((Vector3) -> ())?,
	["PerfTest"]: Prop<boolean>,
	["$PerfTest"]: ((boolean) -> ())?,
	["Position"]: Prop<Vector3>,
	["$Position"]: ((Vector3) -> ())?,
	["QualityLevel"]: Prop<number>,
	["$QualityLevel"]: ((number) -> ())?,
	["ShouldSkip"]: Prop<boolean>,
	["$ShouldSkip"]: ((boolean) -> ())?,
	["Ticket"]: Prop<string>,
	["$Ticket"]: ((string) -> ())?,
	["Timeout"]: Prop<number>,
	["$Timeout"]: ((number) -> ())?,
}
Export.RenderingTest = function(Props: RenderingTest_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "RenderingTest", PropMap = Props, ChildMap = Children or {} }
end
export type RotationCurve_PropMap = Instance_PropMap & { ["$Length"]: ((number) -> ())? }
Export.RotationCurve = function(Props: RotationCurve_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "RotationCurve", PropMap = Props, ChildMap = Children or {} }
end
export type SensorBase_PropMap = Instance_PropMap & {
	["UpdateType"]: Prop<Enum.SensorUpdateType>,
	["$UpdateType"]: ((Enum.SensorUpdateType) -> ())?,
	["@OnSensorOutputChanged"]: (() -> ())?,
}
export type BuoyancySensor_PropMap = SensorBase_PropMap & {
	["FullySubmerged"]: Prop<boolean>,
	["$FullySubmerged"]: ((boolean) -> ())?,
	["TouchingSurface"]: Prop<boolean>,
	["$TouchingSurface"]: ((boolean) -> ())?,
}
Export.BuoyancySensor = function(Props: BuoyancySensor_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BuoyancySensor", PropMap = Props, ChildMap = Children or {} }
end
export type ControllerSensor_PropMap = SensorBase_PropMap & {}
export type ControllerPartSensor_PropMap = ControllerSensor_PropMap & {
	["HitFrame"]: Prop<CFrame>,
	["$HitFrame"]: ((CFrame) -> ())?,
	["HitNormal"]: Prop<Vector3>,
	["$HitNormal"]: ((Vector3) -> ())?,
	["SearchDistance"]: Prop<number>,
	["$SearchDistance"]: ((number) -> ())?,
	["SensedPart"]: Prop<BasePart>,
	["$SensedPart"]: ((BasePart) -> ())?,
	["SensorMode"]: Prop<Enum.SensorMode>,
	["$SensorMode"]: ((Enum.SensorMode) -> ())?,
}
Export.ControllerPartSensor = function(Props: ControllerPartSensor_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ControllerPartSensor", PropMap = Props, ChildMap = Children or {} }
end
export type Sky_PropMap = Instance_PropMap & {
	["CelestialBodiesShown"]: Prop<boolean>,
	["$CelestialBodiesShown"]: ((boolean) -> ())?,
	["MoonAngularSize"]: Prop<number>,
	["$MoonAngularSize"]: ((number) -> ())?,
	["MoonTextureId"]: Prop<string>,
	["$MoonTextureId"]: ((string) -> ())?,
	["SkyboxBk"]: Prop<string>,
	["$SkyboxBk"]: ((string) -> ())?,
	["SkyboxDn"]: Prop<string>,
	["$SkyboxDn"]: ((string) -> ())?,
	["SkyboxFt"]: Prop<string>,
	["$SkyboxFt"]: ((string) -> ())?,
	["SkyboxLf"]: Prop<string>,
	["$SkyboxLf"]: ((string) -> ())?,
	["SkyboxRt"]: Prop<string>,
	["$SkyboxRt"]: ((string) -> ())?,
	["SkyboxUp"]: Prop<string>,
	["$SkyboxUp"]: ((string) -> ())?,
	["StarCount"]: Prop<number>,
	["$StarCount"]: ((number) -> ())?,
	["SunAngularSize"]: Prop<number>,
	["$SunAngularSize"]: ((number) -> ())?,
	["SunTextureId"]: Prop<string>,
	["$SunTextureId"]: ((string) -> ())?,
}
Export.Sky = function(Props: Sky_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Sky", PropMap = Props, ChildMap = Children or {} }
end
export type Smoke_PropMap = Instance_PropMap & {
	["Color"]: Prop<Color3>,
	["$Color"]: ((Color3) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["Opacity"]: Prop<number>,
	["$Opacity"]: ((number) -> ())?,
	["RiseVelocity"]: Prop<number>,
	["$RiseVelocity"]: ((number) -> ())?,
	["Size"]: Prop<number>,
	["$Size"]: ((number) -> ())?,
	["TimeScale"]: Prop<number>,
	["$TimeScale"]: ((number) -> ())?,
}
Export.Smoke = function(Props: Smoke_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Smoke", PropMap = Props, ChildMap = Children or {} }
end
export type Sound_PropMap = Instance_PropMap & {
	["$ChannelCount"]: ((number) -> ())?,
	["EmitterSize"]: Prop<number>,
	["$EmitterSize"]: ((number) -> ())?,
	["$IsLoaded"]: ((boolean) -> ())?,
	["$IsPaused"]: ((boolean) -> ())?,
	["$IsPlaying"]: ((boolean) -> ())?,
	["$IsSpatial"]: ((boolean) -> ())?,
	["LoopRegion"]: Prop<NumberRange>,
	["$LoopRegion"]: ((NumberRange) -> ())?,
	["Looped"]: Prop<boolean>,
	["$Looped"]: ((boolean) -> ())?,
	["MaxDistance"]: Prop<number>,
	["$MaxDistance"]: ((number) -> ())?,
	["MinDistance"]: Prop<number>,
	["$MinDistance"]: ((number) -> ())?,
	["PlayOnRemove"]: Prop<boolean>,
	["$PlayOnRemove"]: ((boolean) -> ())?,
	["$PlaybackLoudness"]: ((number) -> ())?,
	["PlaybackRegion"]: Prop<NumberRange>,
	["$PlaybackRegion"]: ((NumberRange) -> ())?,
	["PlaybackRegionsEnabled"]: Prop<boolean>,
	["$PlaybackRegionsEnabled"]: ((boolean) -> ())?,
	["PlaybackSpeed"]: Prop<number>,
	["$PlaybackSpeed"]: ((number) -> ())?,
	["Playing"]: Prop<boolean>,
	["$Playing"]: ((boolean) -> ())?,
	["$RollOffGain"]: ((number) -> ())?,
	["RollOffMaxDistance"]: Prop<number>,
	["$RollOffMaxDistance"]: ((number) -> ())?,
	["RollOffMinDistance"]: Prop<number>,
	["$RollOffMinDistance"]: ((number) -> ())?,
	["RollOffMode"]: Prop<Enum.RollOffMode>,
	["$RollOffMode"]: ((Enum.RollOffMode) -> ())?,
	["SoundGroup"]: Prop<SoundGroup>,
	["$SoundGroup"]: ((SoundGroup) -> ())?,
	["SoundId"]: Prop<string>,
	["$SoundId"]: ((string) -> ())?,
	["$TimeLength"]: ((number) -> ())?,
	["TimePosition"]: Prop<number>,
	["$TimePosition"]: ((number) -> ())?,
	["UsageContextPermission"]: Prop<Enum.UsageContext>,
	["$UsageContextPermission"]: ((Enum.UsageContext) -> ())?,
	["Volume"]: Prop<number>,
	["$Volume"]: ((number) -> ())?,
	["@DidLoop"]: ((soundId: string, numOfTimesLooped: number) -> ())?,
	["@Ended"]: ((soundId: string) -> ())?,
	["@Loaded"]: ((soundId: string) -> ())?,
	["@Paused"]: ((soundId: string) -> ())?,
	["@Played"]: ((soundId: string) -> ())?,
	["@Resumed"]: ((soundId: string) -> ())?,
	["@Stopped"]: ((soundId: string) -> ())?,
}
Export.Sound = function(Props: Sound_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Sound", PropMap = Props, ChildMap = Children or {} }
end
export type SoundEffect_PropMap = Instance_PropMap & {
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["Priority"]: Prop<number>,
	["$Priority"]: ((number) -> ())?,
}
export type ChorusSoundEffect_PropMap = SoundEffect_PropMap & {
	["Depth"]: Prop<number>,
	["$Depth"]: ((number) -> ())?,
	["Mix"]: Prop<number>,
	["$Mix"]: ((number) -> ())?,
	["Rate"]: Prop<number>,
	["$Rate"]: ((number) -> ())?,
}
Export.ChorusSoundEffect = function(Props: ChorusSoundEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ChorusSoundEffect", PropMap = Props, ChildMap = Children or {} }
end
export type CompressorSoundEffect_PropMap = SoundEffect_PropMap & {
	["Attack"]: Prop<number>,
	["$Attack"]: ((number) -> ())?,
	["GainMakeup"]: Prop<number>,
	["$GainMakeup"]: ((number) -> ())?,
	["Ratio"]: Prop<number>,
	["$Ratio"]: ((number) -> ())?,
	["Release"]: Prop<number>,
	["$Release"]: ((number) -> ())?,
	["SideChain"]: Prop<Instance>,
	["$SideChain"]: ((Instance) -> ())?,
	["Threshold"]: Prop<number>,
	["$Threshold"]: ((number) -> ())?,
}
Export.CompressorSoundEffect = function(Props: CompressorSoundEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "CompressorSoundEffect", PropMap = Props, ChildMap = Children
		or {} }
end
export type DistortionSoundEffect_PropMap =
	SoundEffect_PropMap
	& { ["Level"]: Prop<number>, ["$Level"]: ((number) -> ())? }
Export.DistortionSoundEffect = function(Props: DistortionSoundEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "DistortionSoundEffect", PropMap = Props, ChildMap = Children
		or {} }
end
export type EchoSoundEffect_PropMap = SoundEffect_PropMap & {
	["Delay"]: Prop<number>,
	["$Delay"]: ((number) -> ())?,
	["DryLevel"]: Prop<number>,
	["$DryLevel"]: ((number) -> ())?,
	["Feedback"]: Prop<number>,
	["$Feedback"]: ((number) -> ())?,
	["WetLevel"]: Prop<number>,
	["$WetLevel"]: ((number) -> ())?,
}
Export.EchoSoundEffect = function(Props: EchoSoundEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "EchoSoundEffect", PropMap = Props, ChildMap = Children or {} }
end
export type EqualizerSoundEffect_PropMap = SoundEffect_PropMap & {
	["HighGain"]: Prop<number>,
	["$HighGain"]: ((number) -> ())?,
	["LowGain"]: Prop<number>,
	["$LowGain"]: ((number) -> ())?,
	["MidGain"]: Prop<number>,
	["$MidGain"]: ((number) -> ())?,
}
Export.EqualizerSoundEffect = function(Props: EqualizerSoundEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "EqualizerSoundEffect", PropMap = Props, ChildMap = Children or {} }
end
export type FlangeSoundEffect_PropMap = SoundEffect_PropMap & {
	["Depth"]: Prop<number>,
	["$Depth"]: ((number) -> ())?,
	["Mix"]: Prop<number>,
	["$Mix"]: ((number) -> ())?,
	["Rate"]: Prop<number>,
	["$Rate"]: ((number) -> ())?,
}
Export.FlangeSoundEffect = function(Props: FlangeSoundEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "FlangeSoundEffect", PropMap = Props, ChildMap = Children or {} }
end
export type PitchShiftSoundEffect_PropMap =
	SoundEffect_PropMap
	& { ["Octave"]: Prop<number>, ["$Octave"]: ((number) -> ())? }
Export.PitchShiftSoundEffect = function(Props: PitchShiftSoundEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "PitchShiftSoundEffect", PropMap = Props, ChildMap = Children
		or {} }
end
export type ReverbSoundEffect_PropMap = SoundEffect_PropMap & {
	["DecayTime"]: Prop<number>,
	["$DecayTime"]: ((number) -> ())?,
	["Density"]: Prop<number>,
	["$Density"]: ((number) -> ())?,
	["Diffusion"]: Prop<number>,
	["$Diffusion"]: ((number) -> ())?,
	["DryLevel"]: Prop<number>,
	["$DryLevel"]: ((number) -> ())?,
	["WetLevel"]: Prop<number>,
	["$WetLevel"]: ((number) -> ())?,
}
Export.ReverbSoundEffect = function(Props: ReverbSoundEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ReverbSoundEffect", PropMap = Props, ChildMap = Children or {} }
end
export type TremoloSoundEffect_PropMap = SoundEffect_PropMap & {
	["Depth"]: Prop<number>,
	["$Depth"]: ((number) -> ())?,
	["Duty"]: Prop<number>,
	["$Duty"]: ((number) -> ())?,
	["Frequency"]: Prop<number>,
	["$Frequency"]: ((number) -> ())?,
}
Export.TremoloSoundEffect = function(Props: TremoloSoundEffect_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TremoloSoundEffect", PropMap = Props, ChildMap = Children or {} }
end
export type SoundGroup_PropMap = Instance_PropMap & { ["Volume"]: Prop<number>, ["$Volume"]: ((number) -> ())? }
Export.SoundGroup = function(Props: SoundGroup_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SoundGroup", PropMap = Props, ChildMap = Children or {} }
end
export type Sparkles_PropMap = Instance_PropMap & {
	["Color"]: Prop<Color3>,
	["$Color"]: ((Color3) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["SparkleColor"]: Prop<Color3>,
	["$SparkleColor"]: ((Color3) -> ())?,
	["TimeScale"]: Prop<number>,
	["$TimeScale"]: ((number) -> ())?,
}
Export.Sparkles = function(Props: Sparkles_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Sparkles", PropMap = Props, ChildMap = Children or {} }
end
export type StandalonePluginScripts_PropMap = Instance_PropMap & {}
Export.StandalonePluginScripts = function(Props: StandalonePluginScripts_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "StandalonePluginScripts", PropMap = Props, ChildMap = Children
		or {} }
end
export type StarterGear_PropMap = Instance_PropMap & {}
Export.StarterGear = function(Props: StarterGear_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "StarterGear", PropMap = Props, ChildMap = Children or {} }
end
export type StudioAttachment_PropMap = Instance_PropMap & {
	["AutoHideParent"]: Prop<boolean>,
	["$AutoHideParent"]: ((boolean) -> ())?,
	["IsArrowVisible"]: Prop<boolean>,
	["$IsArrowVisible"]: ((boolean) -> ())?,
	["Offset"]: Prop<Vector2>,
	["$Offset"]: ((Vector2) -> ())?,
	["SourceAnchorPoint"]: Prop<Vector2>,
	["$SourceAnchorPoint"]: ((Vector2) -> ())?,
	["TargetAnchorPoint"]: Prop<Vector2>,
	["$TargetAnchorPoint"]: ((Vector2) -> ())?,
}
Export.StudioAttachment = function(Props: StudioAttachment_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "StudioAttachment", PropMap = Props, ChildMap = Children or {} }
end
export type StudioCallout_PropMap = Instance_PropMap & {
	["AnchorPoint"]: Prop<Vector2>,
	["$AnchorPoint"]: ((Vector2) -> ())?,
	["IsArrowVisible"]: Prop<boolean>,
	["$IsArrowVisible"]: ((boolean) -> ())?,
	["IsNextVisible"]: Prop<boolean>,
	["$IsNextVisible"]: ((boolean) -> ())?,
	["RowName"]: Prop<string>,
	["$RowName"]: ((string) -> ())?,
	["Text"]: Prop<string>,
	["$Text"]: ((string) -> ())?,
	["Title"]: Prop<string>,
	["$Title"]: ((string) -> ())?,
}
Export.StudioCallout = function(Props: StudioCallout_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "StudioCallout", PropMap = Props, ChildMap = Children or {} }
end
export type StyleBase_PropMap = Instance_PropMap & { ["@StyleRulesChanged"]: (() -> ())? }
export type StyleRule_PropMap = StyleBase_PropMap & {
	["Selector"]: Prop<string>,
	["$Selector"]: ((string) -> ())?,
	["$SelectorError"]: ((string) -> ())?,
	["@StyleRulePropertyChanged"]: ((styleProperty: string) -> ())?,
}
Export.StyleRule = function(Props: StyleRule_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "StyleRule", PropMap = Props, ChildMap = Children or {} }
end
export type StyleSheet_PropMap = StyleBase_PropMap & {}
Export.StyleSheet = function(Props: StyleSheet_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "StyleSheet", PropMap = Props, ChildMap = Children or {} }
end
export type StyleDerive_PropMap =
	Instance_PropMap
	& { ["StyleSheet"]: Prop<StyleSheet>, ["$StyleSheet"]: ((StyleSheet) -> ())? }
Export.StyleDerive = function(Props: StyleDerive_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "StyleDerive", PropMap = Props, ChildMap = Children or {} }
end
export type StyleLink_PropMap =
	Instance_PropMap
	& { ["StyleSheet"]: Prop<StyleSheet>, ["$StyleSheet"]: ((StyleSheet) -> ())? }
Export.StyleLink = function(Props: StyleLink_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "StyleLink", PropMap = Props, ChildMap = Children or {} }
end
export type SurfaceAppearance_PropMap = Instance_PropMap & {
	["AlphaMode"]: Prop<Enum.AlphaMode>,
	["$AlphaMode"]: ((Enum.AlphaMode) -> ())?,
	["ColorMap"]: Prop<string>,
	["$ColorMap"]: ((string) -> ())?,
	["MetalnessMap"]: Prop<string>,
	["$MetalnessMap"]: ((string) -> ())?,
	["NormalMap"]: Prop<string>,
	["$NormalMap"]: ((string) -> ())?,
	["RoughnessMap"]: Prop<string>,
	["$RoughnessMap"]: ((string) -> ())?,
	["TexturePack"]: Prop<string>,
	["$TexturePack"]: ((string) -> ())?,
}
Export.SurfaceAppearance = function(Props: SurfaceAppearance_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "SurfaceAppearance", PropMap = Props, ChildMap = Children or {} }
end
export type Team_PropMap = Instance_PropMap & {
	["AutoAssignable"]: Prop<boolean>,
	["$AutoAssignable"]: ((boolean) -> ())?,
	["ChildOrder"]: Prop<number>,
	["$ChildOrder"]: ((number) -> ())?,
	["TeamColor"]: Prop<BrickColor>,
	["$TeamColor"]: ((BrickColor) -> ())?,
	["@PlayerAdded"]: ((player: Player) -> ())?,
	["@PlayerRemoved"]: ((player: Player) -> ())?,
}
Export.Team = function(Props: Team_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Team", PropMap = Props, ChildMap = Children or {} }
end
export type TeleportOptions_PropMap = Instance_PropMap & {
	["ReservedServerAccessCode"]: Prop<string>,
	["$ReservedServerAccessCode"]: ((string) -> ())?,
	["ServerInstanceId"]: Prop<string>,
	["$ServerInstanceId"]: ((string) -> ())?,
	["ShouldReserveServer"]: Prop<boolean>,
	["$ShouldReserveServer"]: ((boolean) -> ())?,
}
Export.TeleportOptions = function(Props: TeleportOptions_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TeleportOptions", PropMap = Props, ChildMap = Children or {} }
end
export type TerrainDetail_PropMap = Instance_PropMap & {
	["ColorMap"]: Prop<string>,
	["$ColorMap"]: ((string) -> ())?,
	["Face"]: Prop<Enum.TerrainFace>,
	["$Face"]: ((Enum.TerrainFace) -> ())?,
	["MaterialPattern"]: Prop<Enum.MaterialPattern>,
	["$MaterialPattern"]: ((Enum.MaterialPattern) -> ())?,
	["MetalnessMap"]: Prop<string>,
	["$MetalnessMap"]: ((string) -> ())?,
	["NormalMap"]: Prop<string>,
	["$NormalMap"]: ((string) -> ())?,
	["RoughnessMap"]: Prop<string>,
	["$RoughnessMap"]: ((string) -> ())?,
	["StudsPerTile"]: Prop<number>,
	["$StudsPerTile"]: ((number) -> ())?,
}
Export.TerrainDetail = function(Props: TerrainDetail_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TerrainDetail", PropMap = Props, ChildMap = Children or {} }
end
export type TerrainRegion_PropMap = Instance_PropMap & { ["$SizeInCells"]: ((Vector3) -> ())? }
Export.TerrainRegion = function(Props: TerrainRegion_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TerrainRegion", PropMap = Props, ChildMap = Children or {} }
end
export type TestService_PropMap = Instance_PropMap & {
	["AutoRuns"]: Prop<boolean>,
	["$AutoRuns"]: ((boolean) -> ())?,
	["Description"]: Prop<string>,
	["$Description"]: ((string) -> ())?,
	["$ErrorCount"]: ((number) -> ())?,
	["ExecuteWithStudioRun"]: Prop<boolean>,
	["$ExecuteWithStudioRun"]: ((boolean) -> ())?,
	["Is30FpsThrottleEnabled"]: Prop<boolean>,
	["$Is30FpsThrottleEnabled"]: ((boolean) -> ())?,
	["IsPhysicsEnvironmentalThrottled"]: Prop<boolean>,
	["$IsPhysicsEnvironmentalThrottled"]: ((boolean) -> ())?,
	["IsSleepAllowed"]: Prop<boolean>,
	["$IsSleepAllowed"]: ((boolean) -> ())?,
	["NumberOfPlayers"]: Prop<number>,
	["$NumberOfPlayers"]: ((number) -> ())?,
	["SimulateSecondsLag"]: Prop<number>,
	["$SimulateSecondsLag"]: ((number) -> ())?,
	["$TestCount"]: ((number) -> ())?,
	["Timeout"]: Prop<number>,
	["$Timeout"]: ((number) -> ())?,
	["$WarnCount"]: ((number) -> ())?,
	["@ServerCollectConditionalResult"]: ((condition: boolean, text: string, script: Instance, line: number) -> ())?,
	["@ServerCollectResult"]: ((text: string, script: Instance, line: number) -> ())?,
}
Export.TestService = function(Props: TestService_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TestService", PropMap = Props, ChildMap = Children or {} }
end
export type TextChannel_PropMap = Instance_PropMap & { ["@MessageReceived"]: ((incomingMessage: TextChatMessage) -> ())? }
Export.TextChannel = function(Props: TextChannel_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TextChannel", PropMap = Props, ChildMap = Children or {} }
end
export type TextChatCommand_PropMap = Instance_PropMap & {
	["AutocompleteVisible"]: Prop<boolean>,
	["$AutocompleteVisible"]: ((boolean) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["PrimaryAlias"]: Prop<string>,
	["$PrimaryAlias"]: ((string) -> ())?,
	["SecondaryAlias"]: Prop<string>,
	["$SecondaryAlias"]: ((string) -> ())?,
	["@Triggered"]: ((originTextSource: TextSource, unfilteredText: string) -> ())?,
}
Export.TextChatCommand = function(Props: TextChatCommand_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TextChatCommand", PropMap = Props, ChildMap = Children or {} }
end
export type TextChatMessageProperties_PropMap = Instance_PropMap & {
	["PrefixText"]: Prop<string>,
	["$PrefixText"]: ((string) -> ())?,
	["Text"]: Prop<string>,
	["$Text"]: ((string) -> ())?,
	["Translation"]: Prop<string>,
	["$Translation"]: ((string) -> ())?,
}
Export.TextChatMessageProperties = function(Props: TextChatMessageProperties_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TextChatMessageProperties", PropMap = Props, ChildMap = Children
		or {} }
end
export type TrackerStreamAnimation_PropMap = Instance_PropMap & {}
Export.TrackerStreamAnimation = function(Props: TrackerStreamAnimation_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "TrackerStreamAnimation", PropMap = Props, ChildMap = Children
		or {} }
end
export type Trail_PropMap = Instance_PropMap & {
	["Attachment0"]: Prop<Attachment>,
	["$Attachment0"]: ((Attachment) -> ())?,
	["Attachment1"]: Prop<Attachment>,
	["$Attachment1"]: ((Attachment) -> ())?,
	["Brightness"]: Prop<number>,
	["$Brightness"]: ((number) -> ())?,
	["Color"]: Prop<ColorSequence>,
	["$Color"]: ((ColorSequence) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["FaceCamera"]: Prop<boolean>,
	["$FaceCamera"]: ((boolean) -> ())?,
	["Lifetime"]: Prop<number>,
	["$Lifetime"]: ((number) -> ())?,
	["LightEmission"]: Prop<number>,
	["$LightEmission"]: ((number) -> ())?,
	["LightInfluence"]: Prop<number>,
	["$LightInfluence"]: ((number) -> ())?,
	["MaxLength"]: Prop<number>,
	["$MaxLength"]: ((number) -> ())?,
	["MinLength"]: Prop<number>,
	["$MinLength"]: ((number) -> ())?,
	["Texture"]: Prop<string>,
	["$Texture"]: ((string) -> ())?,
	["TextureLength"]: Prop<number>,
	["$TextureLength"]: ((number) -> ())?,
	["TextureMode"]: Prop<Enum.TextureMode>,
	["$TextureMode"]: ((Enum.TextureMode) -> ())?,
	["Transparency"]: Prop<NumberSequence>,
	["$Transparency"]: ((NumberSequence) -> ())?,
	["WidthScale"]: Prop<NumberSequence>,
	["$WidthScale"]: ((NumberSequence) -> ())?,
}
Export.Trail = function(Props: Trail_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Trail", PropMap = Props, ChildMap = Children or {} }
end
export type TweenBase_PropMap = Instance_PropMap & {
	["$PlaybackState"]: ((Enum.PlaybackState) -> ())?,
	["@Completed"]: ((playbackState: Enum.PlaybackState) -> ())?,
}
export type Tween_PropMap =
	TweenBase_PropMap
	& { ["$Instance"]: ((Instance) -> ())?, ["$TweenInfo"]: ((TweenInfo) -> ())? }
Export.Tween = function(Props: Tween_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Tween", PropMap = Props, ChildMap = Children or {} }
end
export type UIBase_PropMap = Instance_PropMap & {}
export type UIComponent_PropMap = UIBase_PropMap & {}
export type UIConstraint_PropMap = UIComponent_PropMap & {}
export type UIAspectRatioConstraint_PropMap = UIConstraint_PropMap & {
	["AspectRatio"]: Prop<number>,
	["$AspectRatio"]: ((number) -> ())?,
	["AspectType"]: Prop<Enum.AspectType>,
	["$AspectType"]: ((Enum.AspectType) -> ())?,
	["DominantAxis"]: Prop<Enum.DominantAxis>,
	["$DominantAxis"]: ((Enum.DominantAxis) -> ())?,
}
Export.UIAspectRatioConstraint = function(Props: UIAspectRatioConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UIAspectRatioConstraint", PropMap = Props, ChildMap = Children
		or {} }
end
export type UISizeConstraint_PropMap = UIConstraint_PropMap & {
	["MaxSize"]: Prop<Vector2>,
	["$MaxSize"]: ((Vector2) -> ())?,
	["MinSize"]: Prop<Vector2>,
	["$MinSize"]: ((Vector2) -> ())?,
}
Export.UISizeConstraint = function(Props: UISizeConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UISizeConstraint", PropMap = Props, ChildMap = Children or {} }
end
export type UITextSizeConstraint_PropMap = UIConstraint_PropMap & {
	["MaxTextSize"]: Prop<number>,
	["$MaxTextSize"]: ((number) -> ())?,
	["MinTextSize"]: Prop<number>,
	["$MinTextSize"]: ((number) -> ())?,
}
Export.UITextSizeConstraint = function(Props: UITextSizeConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UITextSizeConstraint", PropMap = Props, ChildMap = Children or {} }
end
export type UICorner_PropMap = UIComponent_PropMap & { ["CornerRadius"]: Prop<UDim>, ["$CornerRadius"]: ((UDim) -> ())? }
Export.UICorner = function(Props: UICorner_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UICorner", PropMap = Props, ChildMap = Children or {} }
end
export type UIFlexItem_PropMap = UIComponent_PropMap & {
	["FlexMode"]: Prop<Enum.UIFlexMode>,
	["$FlexMode"]: ((Enum.UIFlexMode) -> ())?,
	["GrowRatio"]: Prop<number>,
	["$GrowRatio"]: ((number) -> ())?,
	["ItemLineAlignment"]: Prop<Enum.ItemLineAlignment>,
	["$ItemLineAlignment"]: ((Enum.ItemLineAlignment) -> ())?,
	["ShrinkRatio"]: Prop<number>,
	["$ShrinkRatio"]: ((number) -> ())?,
}
Export.UIFlexItem = function(Props: UIFlexItem_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UIFlexItem", PropMap = Props, ChildMap = Children or {} }
end
export type UIGradient_PropMap = UIComponent_PropMap & {
	["Color"]: Prop<ColorSequence>,
	["$Color"]: ((ColorSequence) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["Offset"]: Prop<Vector2>,
	["$Offset"]: ((Vector2) -> ())?,
	["Rotation"]: Prop<number>,
	["$Rotation"]: ((number) -> ())?,
	["Transparency"]: Prop<NumberSequence>,
	["$Transparency"]: ((NumberSequence) -> ())?,
}
Export.UIGradient = function(Props: UIGradient_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UIGradient", PropMap = Props, ChildMap = Children or {} }
end
export type UILayout_PropMap = UIComponent_PropMap & {}
export type UIGridStyleLayout_PropMap = UILayout_PropMap & {
	["$AbsoluteContentSize"]: ((Vector2) -> ())?,
	["FillDirection"]: Prop<Enum.FillDirection>,
	["$FillDirection"]: ((Enum.FillDirection) -> ())?,
	["HorizontalAlignment"]: Prop<Enum.HorizontalAlignment>,
	["$HorizontalAlignment"]: ((Enum.HorizontalAlignment) -> ())?,
	["SortOrder"]: Prop<Enum.SortOrder>,
	["$SortOrder"]: ((Enum.SortOrder) -> ())?,
	["VerticalAlignment"]: Prop<Enum.VerticalAlignment>,
	["$VerticalAlignment"]: ((Enum.VerticalAlignment) -> ())?,
}
export type UIGridLayout_PropMap = UIGridStyleLayout_PropMap & {
	["$AbsoluteCellCount"]: ((Vector2) -> ())?,
	["$AbsoluteCellSize"]: ((Vector2) -> ())?,
	["CellPadding"]: Prop<UDim2>,
	["$CellPadding"]: ((UDim2) -> ())?,
	["CellSize"]: Prop<UDim2>,
	["$CellSize"]: ((UDim2) -> ())?,
	["FillDirectionMaxCells"]: Prop<number>,
	["$FillDirectionMaxCells"]: ((number) -> ())?,
	["StartCorner"]: Prop<Enum.StartCorner>,
	["$StartCorner"]: ((Enum.StartCorner) -> ())?,
}
Export.UIGridLayout = function(Props: UIGridLayout_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UIGridLayout", PropMap = Props, ChildMap = Children or {} }
end
export type UIListLayout_PropMap = UIGridStyleLayout_PropMap & {
	["HorizontalFlex"]: Prop<Enum.UIFlexAlignment>,
	["$HorizontalFlex"]: ((Enum.UIFlexAlignment) -> ())?,
	["ItemLineAlignment"]: Prop<Enum.ItemLineAlignment>,
	["$ItemLineAlignment"]: ((Enum.ItemLineAlignment) -> ())?,
	["Padding"]: Prop<UDim>,
	["$Padding"]: ((UDim) -> ())?,
	["VerticalFlex"]: Prop<Enum.UIFlexAlignment>,
	["$VerticalFlex"]: ((Enum.UIFlexAlignment) -> ())?,
	["Wraps"]: Prop<boolean>,
	["$Wraps"]: ((boolean) -> ())?,
}
Export.UIListLayout = function(Props: UIListLayout_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UIListLayout", PropMap = Props, ChildMap = Children or {} }
end
export type UIPageLayout_PropMap = UIGridStyleLayout_PropMap & {
	["Animated"]: Prop<boolean>,
	["$Animated"]: ((boolean) -> ())?,
	["Circular"]: Prop<boolean>,
	["$Circular"]: ((boolean) -> ())?,
	["$CurrentPage"]: ((GuiObject) -> ())?,
	["EasingDirection"]: Prop<Enum.EasingDirection>,
	["$EasingDirection"]: ((Enum.EasingDirection) -> ())?,
	["EasingStyle"]: Prop<Enum.EasingStyle>,
	["$EasingStyle"]: ((Enum.EasingStyle) -> ())?,
	["GamepadInputEnabled"]: Prop<boolean>,
	["$GamepadInputEnabled"]: ((boolean) -> ())?,
	["Padding"]: Prop<UDim>,
	["$Padding"]: ((UDim) -> ())?,
	["ScrollWheelInputEnabled"]: Prop<boolean>,
	["$ScrollWheelInputEnabled"]: ((boolean) -> ())?,
	["TouchInputEnabled"]: Prop<boolean>,
	["$TouchInputEnabled"]: ((boolean) -> ())?,
	["TweenTime"]: Prop<number>,
	["$TweenTime"]: ((number) -> ())?,
	["@PageEnter"]: ((page: Instance) -> ())?,
	["@PageLeave"]: ((page: Instance) -> ())?,
	["@Stopped"]: ((currentPage: Instance) -> ())?,
}
Export.UIPageLayout = function(Props: UIPageLayout_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UIPageLayout", PropMap = Props, ChildMap = Children or {} }
end
export type UITableLayout_PropMap = UIGridStyleLayout_PropMap & {
	["FillEmptySpaceColumns"]: Prop<boolean>,
	["$FillEmptySpaceColumns"]: ((boolean) -> ())?,
	["FillEmptySpaceRows"]: Prop<boolean>,
	["$FillEmptySpaceRows"]: ((boolean) -> ())?,
	["MajorAxis"]: Prop<Enum.TableMajorAxis>,
	["$MajorAxis"]: ((Enum.TableMajorAxis) -> ())?,
	["Padding"]: Prop<UDim2>,
	["$Padding"]: ((UDim2) -> ())?,
}
Export.UITableLayout = function(Props: UITableLayout_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UITableLayout", PropMap = Props, ChildMap = Children or {} }
end
export type UIPadding_PropMap = UIComponent_PropMap & {
	["PaddingBottom"]: Prop<UDim>,
	["$PaddingBottom"]: ((UDim) -> ())?,
	["PaddingLeft"]: Prop<UDim>,
	["$PaddingLeft"]: ((UDim) -> ())?,
	["PaddingRight"]: Prop<UDim>,
	["$PaddingRight"]: ((UDim) -> ())?,
	["PaddingTop"]: Prop<UDim>,
	["$PaddingTop"]: ((UDim) -> ())?,
}
Export.UIPadding = function(Props: UIPadding_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UIPadding", PropMap = Props, ChildMap = Children or {} }
end
export type UIScale_PropMap = UIComponent_PropMap & { ["Scale"]: Prop<number>, ["$Scale"]: ((number) -> ())? }
Export.UIScale = function(Props: UIScale_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UIScale", PropMap = Props, ChildMap = Children or {} }
end
export type UIStroke_PropMap = UIComponent_PropMap & {
	["ApplyStrokeMode"]: Prop<Enum.ApplyStrokeMode>,
	["$ApplyStrokeMode"]: ((Enum.ApplyStrokeMode) -> ())?,
	["Color"]: Prop<Color3>,
	["$Color"]: ((Color3) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["LineJoinMode"]: Prop<Enum.LineJoinMode>,
	["$LineJoinMode"]: ((Enum.LineJoinMode) -> ())?,
	["Thickness"]: Prop<number>,
	["$Thickness"]: ((number) -> ())?,
	["Transparency"]: Prop<number>,
	["$Transparency"]: ((number) -> ())?,
}
Export.UIStroke = function(Props: UIStroke_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UIStroke", PropMap = Props, ChildMap = Children or {} }
end
export type UserNotification_PropMap = Instance_PropMap & {
	["$Id"]: ((string) -> ())?,
	["Payload"]: Prop<UserNotificationPayload>,
	["$Payload"]: ((UserNotificationPayload) -> ())?,
}
Export.UserNotification = function(Props: UserNotification_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UserNotification", PropMap = Props, ChildMap = Children or {} }
end
export type UserNotificationPayload_PropMap = Instance_PropMap & {
	["AnalyticsData"]: Prop<UserNotificationPayloadAnalyticsData>,
	["$AnalyticsData"]: ((UserNotificationPayloadAnalyticsData) -> ())?,
	["JoinExperience"]: Prop<UserNotificationPayloadJoinExperience>,
	["$JoinExperience"]: ((UserNotificationPayloadJoinExperience) -> ())?,
	["MessageId"]: Prop<string>,
	["$MessageId"]: ((string) -> ())?,
	["Type"]: Prop<string>,
	["$Type"]: ((string) -> ())?,
}
Export.UserNotificationPayload = function(Props: UserNotificationPayload_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "UserNotificationPayload", PropMap = Props, ChildMap = Children
		or {} }
end
export type UserNotificationPayloadAnalyticsData_PropMap =
	Instance_PropMap
	& { ["Category"]: Prop<string>, ["$Category"]: ((string) -> ())? }
Export.UserNotificationPayloadAnalyticsData = function(
	Props: UserNotificationPayloadAnalyticsData_PropMap,
	Children: { [string]: e }?
): e
	return {
		Type = "Create" :: "Create",
		ClassName = "UserNotificationPayloadAnalyticsData",
		PropMap = Props,
		ChildMap = Children or {},
	}
end
export type UserNotificationPayloadJoinExperience_PropMap = Instance_PropMap & {
	["LaunchData"]: Prop<string>,
	["$LaunchData"]: ((string) -> ())?,
}
Export.UserNotificationPayloadJoinExperience = function(
	Props: UserNotificationPayloadJoinExperience_PropMap,
	Children: { [string]: e }?
): e
	return {
		Type = "Create" :: "Create",
		ClassName = "UserNotificationPayloadJoinExperience",
		PropMap = Props,
		ChildMap = Children or {},
	}
end
export type UserNotificationPayloadParameterValue_PropMap = Instance_PropMap & {
	["Int64Value"]: Prop<number>,
	["$Int64Value"]: ((number) -> ())?,
	["StringValue"]: Prop<string>,
	["$StringValue"]: ((string) -> ())?,
}
Export.UserNotificationPayloadParameterValue = function(
	Props: UserNotificationPayloadParameterValue_PropMap,
	Children: { [string]: e }?
): e
	return {
		Type = "Create" :: "Create",
		ClassName = "UserNotificationPayloadParameterValue",
		PropMap = Props,
		ChildMap = Children or {},
	}
end
export type ValueBase_PropMap = Instance_PropMap & {}
export type BinaryStringValue_PropMap = ValueBase_PropMap & { ["@Changed"]: ((value: string) -> ())? }
Export.BinaryStringValue = function(Props: BinaryStringValue_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BinaryStringValue", PropMap = Props, ChildMap = Children or {} }
end
export type BoolValue_PropMap = ValueBase_PropMap & {
	["Value"]: Prop<boolean>,
	["$Value"]: ((boolean) -> ())?,
	["@Changed"]: ((value: boolean) -> ())?,
}
Export.BoolValue = function(Props: BoolValue_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BoolValue", PropMap = Props, ChildMap = Children or {} }
end
export type BrickColorValue_PropMap = ValueBase_PropMap & {
	["Value"]: Prop<BrickColor>,
	["$Value"]: ((BrickColor) -> ())?,
	["@Changed"]: ((value: BrickColor) -> ())?,
}
Export.BrickColorValue = function(Props: BrickColorValue_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "BrickColorValue", PropMap = Props, ChildMap = Children or {} }
end
export type CFrameValue_PropMap = ValueBase_PropMap & {
	["Value"]: Prop<CFrame>,
	["$Value"]: ((CFrame) -> ())?,
	["@Changed"]: ((value: CFrame) -> ())?,
}
Export.CFrameValue = function(Props: CFrameValue_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "CFrameValue", PropMap = Props, ChildMap = Children or {} }
end
export type Color3Value_PropMap = ValueBase_PropMap & {
	["Value"]: Prop<Color3>,
	["$Value"]: ((Color3) -> ())?,
	["@Changed"]: ((value: Color3) -> ())?,
}
Export.Color3Value = function(Props: Color3Value_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Color3Value", PropMap = Props, ChildMap = Children or {} }
end
export type IntValue_PropMap =
	ValueBase_PropMap
	& { ["Value"]: Prop<number>, ["$Value"]: ((number) -> ())?, ["@Changed"]: ((value: number) -> ())? }
Export.IntValue = function(Props: IntValue_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "IntValue", PropMap = Props, ChildMap = Children or {} }
end
export type NumberValue_PropMap = ValueBase_PropMap & {
	["Value"]: Prop<number>,
	["$Value"]: ((number) -> ())?,
	["@Changed"]: ((value: number) -> ())?,
}
Export.NumberValue = function(Props: NumberValue_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "NumberValue", PropMap = Props, ChildMap = Children or {} }
end
export type ObjectValue_PropMap = ValueBase_PropMap & {
	["Value"]: Prop<Instance>,
	["$Value"]: ((Instance) -> ())?,
	["@Changed"]: ((value: Instance) -> ())?,
}
Export.ObjectValue = function(Props: ObjectValue_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "ObjectValue", PropMap = Props, ChildMap = Children or {} }
end
export type RayValue_PropMap =
	ValueBase_PropMap
	& { ["Value"]: Prop<Ray>, ["$Value"]: ((Ray) -> ())?, ["@Changed"]: ((value: Ray) -> ())? }
Export.RayValue = function(Props: RayValue_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "RayValue", PropMap = Props, ChildMap = Children or {} }
end
export type StringValue_PropMap = ValueBase_PropMap & {
	["Value"]: Prop<string>,
	["$Value"]: ((string) -> ())?,
	["@Changed"]: ((value: string) -> ())?,
}
Export.StringValue = function(Props: StringValue_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "StringValue", PropMap = Props, ChildMap = Children or {} }
end
export type Vector3Value_PropMap = ValueBase_PropMap & {
	["Value"]: Prop<Vector3>,
	["$Value"]: ((Vector3) -> ())?,
	["@Changed"]: ((value: Vector3) -> ())?,
}
Export.Vector3Value = function(Props: Vector3Value_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Vector3Value", PropMap = Props, ChildMap = Children or {} }
end
export type Vector3Curve_PropMap = Instance_PropMap & {}
Export.Vector3Curve = function(Props: Vector3Curve_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Vector3Curve", PropMap = Props, ChildMap = Children or {} }
end
export type VirtualInputManager_PropMap = Instance_PropMap & {
	["AdditionalLuaState"]: Prop<string>,
	["$AdditionalLuaState"]: ((string) -> ())?,
	["@PlaybackCompleted"]: ((additionalLuaState: string) -> ())?,
	["@RecordingCompleted"]: ((result: string) -> ())?,
}
Export.VirtualInputManager = function(Props: VirtualInputManager_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "VirtualInputManager", PropMap = Props, ChildMap = Children or {} }
end
export type WeldConstraint_PropMap = Instance_PropMap & {
	["$Active"]: ((boolean) -> ())?,
	["Enabled"]: Prop<boolean>,
	["$Enabled"]: ((boolean) -> ())?,
	["Part0"]: Prop<BasePart>,
	["$Part0"]: ((BasePart) -> ())?,
	["Part1"]: Prop<BasePart>,
	["$Part1"]: ((BasePart) -> ())?,
}
Export.WeldConstraint = function(Props: WeldConstraint_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "WeldConstraint", PropMap = Props, ChildMap = Children or {} }
end
export type Wire_PropMap = Instance_PropMap & {
	["$Connected"]: ((boolean) -> ())?,
	["SourceInstance"]: Prop<Instance>,
	["$SourceInstance"]: ((Instance) -> ())?,
	["SourceName"]: Prop<string>,
	["$SourceName"]: ((string) -> ())?,
	["TargetInstance"]: Prop<Instance>,
	["$TargetInstance"]: ((Instance) -> ())?,
	["TargetName"]: Prop<string>,
	["$TargetName"]: ((string) -> ())?,
}
Export.Wire = function(Props: Wire_PropMap, Children: { [string]: e }?): e
	return { Type = "Create" :: "Create", ClassName = "Wire", PropMap = Props, ChildMap = Children or {} }
end
return Export
