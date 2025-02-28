-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.IcePickHackFlavorTextItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.IcePickHackFlavorTextItem.__defaultWidth = 248 --[[ @ 0]]
CoD.IcePickHackFlavorTextItem.__defaultHeight = 21 --[[ @ 0]]
CoD.IcePickHackFlavorTextItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Bottom ) --[[ @ 0]]
	self:setClass( CoD.IcePickHackFlavorTextItem ) --[[ @ 0]]
	self.id = "IcePickHackFlavorTextItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local HackText = LUI.UIText.new( 0, 0, 4, 249, 0, 0, 3, 21 ) --[[ @ 0]]
	HackText:setRGB( 0.49, 0.85, 1 ) --[[ @ 0]]
	HackText:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	HackText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	HackText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	HackText:linkToElementModel( self, "hackingText", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			HackText:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HackText ) --[[ @ 0]]
	self.HackText = HackText --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.IcePickHackFlavorTextItem.__resetProperties = function ( f3_arg0 )
	f3_arg0.HackText:completeAnimation() --[[ @ 0]]
	f3_arg0.HackText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.IcePickHackFlavorTextItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Intro = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				f5_arg0.HackText:beginAnimation( 100 ) --[[ @ 0]]
				f5_arg0.HackText:setAlpha( 1 ) --[[ @ 0]]
				f5_arg0.HackText:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.HackText:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.HackText:completeAnimation() --[[ @ 0]]
			f5_arg0.HackText:setAlpha( 0 ) --[[ @ 0]]
			f5_local0( f5_arg0.HackText ) --[[ @ 0]]
		end,
		Expired = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.HackText:beginAnimation( 100 ) --[[ @ 0]]
				f7_arg0.HackText:setAlpha( 0 ) --[[ @ 0]]
				f7_arg0.HackText:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.HackText:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.HackText:completeAnimation() --[[ @ 0]]
			f7_arg0.HackText:setAlpha( 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.HackText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.IcePickHackFlavorTextItem.__onClose = function ( f9_arg0 )
	f9_arg0.HackText:close() --[[ @ 0]]
end
 --[[ @ 0]]
