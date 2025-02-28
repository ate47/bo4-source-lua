-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:4606418af42696c8" ) --[[ @ 0]]

CoD.ArchivesVideoButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArchivesVideoButton.__defaultWidth = 510 --[[ @ 0]]
CoD.ArchivesVideoButton.__defaultHeight = 42 --[[ @ 0]]
CoD.ArchivesVideoButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArchivesVideoButton ) --[[ @ 0]]
	self.id = "ArchivesVideoButton" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ArchivesVideoButtonInternal = CoD.ArchivesVideoButtonInternal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ArchivesVideoButtonInternal.ButtonFrame.FocusGlow:setScale( 1, 0.8 ) --[[ @ 0]]
	ArchivesVideoButtonInternal:linkToElementModel( self, nil, false, function ( model )
		ArchivesVideoButtonInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ArchivesVideoButtonInternal ) --[[ @ 0]]
	self.ArchivesVideoButtonInternal = ArchivesVideoButtonInternal --[[ @ 0]]
	
	local ButtonText = LUI.UIText.new( 0.5, 0.5, -245, 245, 0.5, 0.5, -10, 10 ) --[[ @ 0]]
	ButtonText:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ButtonText:setAlpha( 0 ) --[[ @ 0]]
	ButtonText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ButtonText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ButtonText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	ButtonText:linkToElementModel( self, "title", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ButtonText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ButtonText ) --[[ @ 0]]
	self.ButtonText = ButtonText --[[ @ 0]]
	
	local MatureContentText = LUI.UIText.new( 0, 1, 5, -5, 0, 0, 5, 38 ) --[[ @ 0]]
	MatureContentText:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
	MatureContentText:setAlpha( 0 ) --[[ @ 0]]
	MatureContentText:setText( LocalizeToUpperString( @"hash_C52F8F8D0D51561" ) ) --[[ @ 0]]
	MatureContentText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	MatureContentText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	MatureContentText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( MatureContentText ) --[[ @ 0]]
	self.MatureContentText = MatureContentText --[[ @ 0]]
	
	local lockImage = LUI.UIImage.new( 1, 1, -55, -5, 0.5, 0.5, -25, 25 ) --[[ @ 0]]
	lockImage:setAlpha( 0 ) --[[ @ 0]]
	lockImage:setScale( 0.6, 0.6 ) --[[ @ 0]]
	lockImage:setImage( RegisterImage( @"uie_ui_icon_global_lock" ) ) --[[ @ 0]]
	self:addElement( lockImage ) --[[ @ 0]]
	self.lockImage = lockImage --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "MatureContentFiltered",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( self, f1_arg1, "matureContent" ) and not CoD.CTUtility.IsMatureContent( f1_arg1 )
			end
		},
		{
			stateName = "Classified",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( self, f1_arg1, "unlocked" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "matureContent", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "matureContent"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local5 = self --[[ @ 0]]
	local f1_local6 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["storageGlobalRoot.user_settings"], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "storageGlobalRoot.user_settings"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "unlocked", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "unlocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ArchivesVideoButtonInternal.id = "ArchivesVideoButtonInternal" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ArchivesVideoButton.__resetProperties = function ( f9_arg0 )
	f9_arg0.lockImage:completeAnimation() --[[ @ 0]]
	f9_arg0.ArchivesVideoButtonInternal:completeAnimation() --[[ @ 0]]
	f9_arg0.ButtonText:completeAnimation() --[[ @ 0]]
	f9_arg0.MatureContentText:completeAnimation() --[[ @ 0]]
	f9_arg0.lockImage:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.lockImage:setScale( 0.6, 0.6 ) --[[ @ 0]]
	f9_arg0.ArchivesVideoButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
	f9_arg0.ArchivesVideoButtonInternal.ButtonText:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.ButtonText:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.ButtonText:setScale( 1, 1 ) --[[ @ 0]]
	f9_arg0.MatureContentText:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ArchivesVideoButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f11_arg0.ArchivesVideoButtonInternal:completeAnimation() --[[ @ 0]]
			f11_arg0.ArchivesVideoButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.ArchivesVideoButtonInternal ) --[[ @ 0]]
			f11_arg0.ButtonText:completeAnimation() --[[ @ 0]]
			f11_arg0.ButtonText:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.ButtonText ) --[[ @ 0]]
			f11_arg0.lockImage:completeAnimation() --[[ @ 0]]
			f11_arg0.lockImage:setScale( 0.63, 0.63 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.lockImage ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.ArchivesVideoButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.ArchivesVideoButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f12_arg0.ArchivesVideoButtonInternal:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.ArchivesVideoButtonInternal:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.ArchivesVideoButtonInternal:completeAnimation() --[[ @ 0]]
			f12_arg0.ArchivesVideoButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
			f12_local0( f12_arg0.ArchivesVideoButtonInternal ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				f12_arg0.ButtonText:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.ButtonText:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f12_arg0.ButtonText:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.ButtonText:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.ButtonText:completeAnimation() --[[ @ 0]]
			f12_arg0.ButtonText:setScale( 1, 1 ) --[[ @ 0]]
			f12_local1( f12_arg0.ButtonText ) --[[ @ 0]]
			local f12_local2 = function ( f15_arg0 )
				f12_arg0.lockImage:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.lockImage:setScale( 0.63, 0.63 ) --[[ @ 0]]
				f12_arg0.lockImage:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.lockImage:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.lockImage:completeAnimation() --[[ @ 0]]
			f12_arg0.lockImage:setScale( 0.6, 0.6 ) --[[ @ 0]]
			f12_local2( f12_arg0.lockImage ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.ArchivesVideoButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f16_arg0.ArchivesVideoButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
				f16_arg0.ArchivesVideoButtonInternal:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.ArchivesVideoButtonInternal:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.ArchivesVideoButtonInternal:completeAnimation() --[[ @ 0]]
			f16_arg0.ArchivesVideoButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f16_local0( f16_arg0.ArchivesVideoButtonInternal ) --[[ @ 0]]
			local f16_local1 = function ( f18_arg0 )
				f16_arg0.ButtonText:beginAnimation( 200 ) --[[ @ 0]]
				f16_arg0.ButtonText:setScale( 1, 1 ) --[[ @ 0]]
				f16_arg0.ButtonText:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.ButtonText:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.ButtonText:completeAnimation() --[[ @ 0]]
			f16_arg0.ButtonText:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f16_local1( f16_arg0.ButtonText ) --[[ @ 0]]
			local f16_local2 = function ( f19_arg0 )
				f16_arg0.lockImage:beginAnimation( 200 ) --[[ @ 0]]
				f16_arg0.lockImage:setScale( 0.6, 0.6 ) --[[ @ 0]]
				f16_arg0.lockImage:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.lockImage:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.lockImage:completeAnimation() --[[ @ 0]]
			f16_arg0.lockImage:setScale( 0.63, 0.63 ) --[[ @ 0]]
			f16_local2( f16_arg0.lockImage ) --[[ @ 0]]
		end
	},
	MatureContentFiltered = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f20_arg0.ArchivesVideoButtonInternal:completeAnimation() --[[ @ 0]]
			f20_arg0.ArchivesVideoButtonInternal.ButtonText:completeAnimation() --[[ @ 0]]
			f20_arg0.ArchivesVideoButtonInternal.ButtonText:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.ArchivesVideoButtonInternal ) --[[ @ 0]]
			f20_arg0.ButtonText:completeAnimation() --[[ @ 0]]
			f20_arg0.ButtonText:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.ButtonText ) --[[ @ 0]]
			f20_arg0.MatureContentText:completeAnimation() --[[ @ 0]]
			f20_arg0.MatureContentText:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.MatureContentText ) --[[ @ 0]]
			f20_arg0.lockImage:completeAnimation() --[[ @ 0]]
			f20_arg0.lockImage:setAlpha( 0.2 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.lockImage ) --[[ @ 0]]
		end
	},
	Classified = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f21_arg0.lockImage:completeAnimation() --[[ @ 0]]
			f21_arg0.lockImage:setAlpha( 0.2 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.lockImage ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ArchivesVideoButton.__onClose = function ( f22_arg0 )
	f22_arg0.ArchivesVideoButtonInternal:close() --[[ @ 0]]
	f22_arg0.ButtonText:close() --[[ @ 0]]
end
 --[[ @ 0]]
