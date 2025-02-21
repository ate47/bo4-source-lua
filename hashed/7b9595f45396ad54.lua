-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:3c77c8cd900dd009" ) --[[ @ 0]]

CoD.CallingCards_BlackMarket_CardWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_BlackMarket_CardWidget.__defaultWidth = 360 --[[ @ 0]]
CoD.CallingCards_BlackMarket_CardWidget.__defaultHeight = 90 --[[ @ 0]]
CoD.CallingCards_BlackMarket_CardWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_BlackMarket_CardWidget ) --[[ @ 0]]
	self.id = "CallingCards_BlackMarket_CardWidget" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CallingCards = CoD.CallingCards_BlackMarket_CardWidgetInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -180, 180, 0.5, 0.5, -45, 45 ) --[[ @ 0]]
	CallingCards:linkToElementModel( self, nil, false, function ( model )
		CallingCards:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CallingCards ) --[[ @ 0]]
	self.CallingCards = CallingCards --[[ @ 0]]
	
	CallingCards.id = "CallingCards" --[[ @ 0]]
	self.__defaultFocus = CallingCards --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_BlackMarket_CardWidget.__resetProperties = function ( f3_arg0 )
	f3_arg0.CallingCards:completeAnimation() --[[ @ 0]]
	f3_arg0.CallingCards:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_BlackMarket_CardWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.CallingCards:completeAnimation() --[[ @ 0]]
			f5_arg0.CallingCards:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.CallingCards ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.CallingCards:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.CallingCards:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f6_arg0.CallingCards:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.CallingCards:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.CallingCards:completeAnimation() --[[ @ 0]]
			f6_arg0.CallingCards:setScale( 1, 1 ) --[[ @ 0]]
			f6_local0( f6_arg0.CallingCards ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.CallingCards:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.CallingCards:setScale( 1, 1 ) --[[ @ 0]]
				f8_arg0.CallingCards:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.CallingCards:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.CallingCards:completeAnimation() --[[ @ 0]]
			f8_arg0.CallingCards:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f8_local0( f8_arg0.CallingCards ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CallingCards_BlackMarket_CardWidget.__onClose = function ( f10_arg0 )
	f10_arg0.CallingCards:close() --[[ @ 0]]
end
 --[[ @ 0]]
