-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:73ecca05fa5114fd" ) --[[ @ 0]]

CoD.KillcamKilledByAttachments = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.KillcamKilledByAttachments.__defaultWidth = 375 --[[ @ 0]]
CoD.KillcamKilledByAttachments.__defaultHeight = 70 --[[ @ 0]]
CoD.KillcamKilledByAttachments.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.KillcamKilledByAttachments ) --[[ @ 0]]
	self.id = "KillcamKilledByAttachments" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local AttachmentsFirstThree = CoD.KillcamKilledByAttachmentsLine.new( f1_arg0, f1_arg1, 1, 1, -375, 0, 0, 0, 0, 35 ) --[[ @ 0]]
	AttachmentsFirstThree:mergeStateConditions( {
		{
			stateName = "ExtraAttachments",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	AttachmentsFirstThree:subscribeToGlobalModel( f1_arg1, "HUDItems", "killcamWeapon.attachment0", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			AttachmentsFirstThree.Attachment0.Attachment:setText( Engine[@"hash_4F9F1239CFD921FE"]( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AttachmentsFirstThree:subscribeToGlobalModel( f1_arg1, "HUDItems", "killcamWeapon.attachment1", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			AttachmentsFirstThree.Attachment1.Attachment:setText( Engine[@"hash_4F9F1239CFD921FE"]( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AttachmentsFirstThree:subscribeToGlobalModel( f1_arg1, "HUDItems", "killcamWeapon.attachment2", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			AttachmentsFirstThree.Attachment2.Attachment:setText( Engine[@"hash_4F9F1239CFD921FE"]( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AttachmentsFirstThree ) --[[ @ 0]]
	self.AttachmentsFirstThree = AttachmentsFirstThree --[[ @ 0]]
	
	local AttachmentsLastThree = CoD.KillcamKilledByAttachmentsLine.new( f1_arg0, f1_arg1, 1, 1, -375, 0, 0, 0, 35, 70 ) --[[ @ 0]]
	AttachmentsLastThree:mergeStateConditions( {
		{
			stateName = "ExtraAttachments",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	AttachmentsLastThree:subscribeToGlobalModel( f1_arg1, "HUDItems", "killcamWeapon.attachment3", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			AttachmentsLastThree.Attachment0.Attachment:setText( Engine[@"hash_4F9F1239CFD921FE"]( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AttachmentsLastThree:subscribeToGlobalModel( f1_arg1, "HUDItems", "killcamWeapon.attachment4", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			AttachmentsLastThree.Attachment1.Attachment:setText( Engine[@"hash_4F9F1239CFD921FE"]( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AttachmentsLastThree:subscribeToGlobalModel( f1_arg1, "HUDItems", "killcamWeapon.attachment5", function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			AttachmentsLastThree.Attachment2.Attachment:setText( Engine[@"hash_4F9F1239CFD921FE"]( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AttachmentsLastThree ) --[[ @ 0]]
	self.AttachmentsLastThree = AttachmentsLastThree --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HasExtraAttachments",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueNonEmptyString( f1_arg1, "HUDItems", "killcamWeapon.attachment3" )
			end
		},
		{
			stateName = "HasAttachments",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueNonEmptyString( f1_arg1, "HUDItems", "killcamWeapon.attachment0" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["killcamWeapon.attachment3"], function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "killcamWeapon.attachment3"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["killcamWeapon.attachment0"], function ( f13_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "killcamWeapon.attachment0"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.KillcamKilledByAttachments.__resetProperties = function ( f14_arg0 )
	f14_arg0.AttachmentsLastThree:completeAnimation() --[[ @ 0]]
	f14_arg0.AttachmentsFirstThree:completeAnimation() --[[ @ 0]]
	f14_arg0.AttachmentsLastThree:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.AttachmentsFirstThree:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.KillcamKilledByAttachments.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.AttachmentsFirstThree:completeAnimation() --[[ @ 0]]
			f15_arg0.AttachmentsFirstThree:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.AttachmentsFirstThree ) --[[ @ 0]]
			f15_arg0.AttachmentsLastThree:completeAnimation() --[[ @ 0]]
			f15_arg0.AttachmentsLastThree:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.AttachmentsLastThree ) --[[ @ 0]]
		end
	},
	HasExtraAttachments = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	HasAttachments = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.AttachmentsLastThree:completeAnimation() --[[ @ 0]]
			f17_arg0.AttachmentsLastThree:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.AttachmentsLastThree ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.KillcamKilledByAttachments.__onClose = function ( f18_arg0 )
	f18_arg0.AttachmentsFirstThree:close() --[[ @ 0]]
	f18_arg0.AttachmentsLastThree:close() --[[ @ 0]]
end
 --[[ @ 0]]
