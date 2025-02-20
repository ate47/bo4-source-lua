-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:64753e4c4133046d" ) --[[ @ 0]]

CoD.SpecialistOutfitItemEntry = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpecialistOutfitItemEntry.__defaultWidth = 69 --[[ @ 0]]
CoD.SpecialistOutfitItemEntry.__defaultHeight = 69 --[[ @ 0]]
CoD.SpecialistOutfitItemEntry.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SpecialistOutfitItemEntry ) --[[ @ 0]]
	self.id = "SpecialistOutfitItemEntry" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FrontendFrameGlow = CoD.SpecialistOutfitItemEntry_Internal.new( f1_arg0, f1_arg1, 0, 0, 0, 69, 0, 0, 0, 69 ) --[[ @ 0]]
	FrontendFrameGlow:linkToElementModel( self, nil, false, function ( model )
		FrontendFrameGlow:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( FrontendFrameGlow ) --[[ @ 0]]
	self.FrontendFrameGlow = FrontendFrameGlow --[[ @ 0]]
	
	FrontendFrameGlow.id = "FrontendFrameGlow" --[[ @ 0]]
	self.__defaultFocus = FrontendFrameGlow --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SpecialistOutfitItemEntry.__resetProperties = function ( f3_arg0 )
	f3_arg0.FrontendFrameGlow:completeAnimation() --[[ @ 0]]
	f3_arg0.FrontendFrameGlow:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SpecialistOutfitItemEntry.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.FrontendFrameGlow:completeAnimation() --[[ @ 0]]
			f4_arg0.FrontendFrameGlow:setScale( 0.95, 0.95 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.FrontendFrameGlow ) --[[ @ 0]]
		end,
		ChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.FrontendFrameGlow:completeAnimation() --[[ @ 0]]
			f5_arg0.FrontendFrameGlow:setScale( 1.03, 1.03 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.FrontendFrameGlow ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.FrontendFrameGlow:beginAnimation( 150 ) --[[ @ 0]]
				f6_arg0.FrontendFrameGlow:setScale( 1.03, 1.03 ) --[[ @ 0]]
				f6_arg0.FrontendFrameGlow:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.FrontendFrameGlow:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.FrontendFrameGlow:completeAnimation() --[[ @ 0]]
			f6_arg0.FrontendFrameGlow:setScale( 0.95, 0.95 ) --[[ @ 0]]
			f6_local0( f6_arg0.FrontendFrameGlow ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.FrontendFrameGlow:beginAnimation( 100 ) --[[ @ 0]]
				f8_arg0.FrontendFrameGlow:setScale( 0.95, 0.95 ) --[[ @ 0]]
				f8_arg0.FrontendFrameGlow:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FrontendFrameGlow:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FrontendFrameGlow:completeAnimation() --[[ @ 0]]
			f8_arg0.FrontendFrameGlow:setScale( 1.03, 1.03 ) --[[ @ 0]]
			f8_local0( f8_arg0.FrontendFrameGlow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SpecialistOutfitItemEntry.__onClose = function ( f10_arg0 )
	f10_arg0.FrontendFrameGlow:close() --[[ @ 0]]
end
 --[[ @ 0]]
