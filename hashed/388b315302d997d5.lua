-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:5eab40f398bbf5a3" ) --[[ @ 0]]

CoD.AbilityCallout = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AbilityCallout.__defaultWidth = 300 --[[ @ 0]]
CoD.AbilityCallout.__defaultHeight = 75 --[[ @ 0]]
CoD.AbilityCallout.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AbilityCallout ) --[[ @ 0]]
	self.id = "AbilityCallout" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ClanTag = CoD.AbilityCallout_Internal.new( f1_arg0, f1_arg1, 0, 0, 0, 300, 0, 0, 0, 75 ) --[[ @ 0]]
	ClanTag:linkToElementModel( self, nil, false, function ( model )
		ClanTag:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ClanTag ) --[[ @ 0]]
	self.ClanTag = ClanTag --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AbilityCallout.__resetProperties = function ( f3_arg0 )
	f3_arg0.ClanTag:completeAnimation() --[[ @ 0]]
	f3_arg0.ClanTag:setLeftRight( 0, 0, 0, 300 ) --[[ @ 0]]
	f3_arg0.ClanTag:setTopBottom( 0, 0, 0, 75 ) --[[ @ 0]]
	f3_arg0.ClanTag:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AbilityCallout.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.ClanTag:completeAnimation() --[[ @ 0]]
			f4_arg0.ClanTag:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.ClanTag ) --[[ @ 0]]
		end,
		Activate = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					local f7_local0 = function ( f8_arg0 )
						f8_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f8_arg0:setAlpha( 0 ) --[[ @ 0]]
						f8_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f7_arg0:beginAnimation( 5000 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.ClanTag:beginAnimation( 250 ) --[[ @ 0]]
				f5_arg0.ClanTag:setLeftRight( 0, 0, 0, 300 ) --[[ @ 0]]
				f5_arg0.ClanTag:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.ClanTag:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.ClanTag:completeAnimation() --[[ @ 0]]
			f5_arg0.ClanTag:setLeftRight( 0, 0, -300, 0 ) --[[ @ 0]]
			f5_arg0.ClanTag:setTopBottom( 0, 0, 0, 75 ) --[[ @ 0]]
			f5_arg0.ClanTag:setAlpha( 1 ) --[[ @ 0]]
			f5_local0( f5_arg0.ClanTag ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AbilityCallout.__onClose = function ( f9_arg0 )
	f9_arg0.ClanTag:close() --[[ @ 0]]
end
 --[[ @ 0]]
