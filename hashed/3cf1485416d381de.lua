-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/reticles/chargeshot/chargeshot_activeline" ) --[[ @ 0]]

CoD.ChargerShot_4corner_line = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ChargerShot_4corner_line.__defaultWidth = 441 --[[ @ 0]]
CoD.ChargerShot_4corner_line.__defaultHeight = 445 --[[ @ 0]]
CoD.ChargerShot_4corner_line.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ChargerShot_4corner_line ) --[[ @ 0]]
	self.id = "ChargerShot_4corner_line" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ChargeShotActiveLine3 = CoD.ChargeShot_ActiveLine.new( f1_arg0, f1_arg1, 0.5, 0.5, -221, -144, 0.5, 0.5, -223, -146 ) --[[ @ 0]]
	ChargeShotActiveLine3:setRGB( 0.29, 0.69, 0.95 ) --[[ @ 0]]
	self:addElement( ChargeShotActiveLine3 ) --[[ @ 0]]
	self.ChargeShotActiveLine3 = ChargeShotActiveLine3 --[[ @ 0]]
	
	local ChargeShotActiveLine1 = CoD.ChargeShot_ActiveLine.new( f1_arg0, f1_arg1, 0.5, 0.5, 144, 220, 0.5, 0.5, 146, 223 ) --[[ @ 0]]
	ChargeShotActiveLine1:setRGB( 0.29, 0.69, 0.95 ) --[[ @ 0]]
	ChargeShotActiveLine1:setXRot( -180 ) --[[ @ 0]]
	ChargeShotActiveLine1:setYRot( 180 ) --[[ @ 0]]
	self:addElement( ChargeShotActiveLine1 ) --[[ @ 0]]
	self.ChargeShotActiveLine1 = ChargeShotActiveLine1 --[[ @ 0]]
	
	local ChargeShotActiveLine10 = CoD.ChargeShot_ActiveLine.new( f1_arg0, f1_arg1, 0.5, 0.5, -220, -143, 0.5, 0.5, 146, 223 ) --[[ @ 0]]
	ChargeShotActiveLine10:setRGB( 0.29, 0.69, 0.95 ) --[[ @ 0]]
	ChargeShotActiveLine10:setXRot( 180 ) --[[ @ 0]]
	self:addElement( ChargeShotActiveLine10 ) --[[ @ 0]]
	self.ChargeShotActiveLine10 = ChargeShotActiveLine10 --[[ @ 0]]
	
	local ChargeShotActiveLine11 = CoD.ChargeShot_ActiveLine.new( f1_arg0, f1_arg1, 0.5, 0.5, 144, 220, 0.5, 0.5, -223, -146 ) --[[ @ 0]]
	ChargeShotActiveLine11:setRGB( 0.29, 0.69, 0.95 ) --[[ @ 0]]
	ChargeShotActiveLine11:setXRot( 180 ) --[[ @ 0]]
	ChargeShotActiveLine11:setZRot( 180 ) --[[ @ 0]]
	self:addElement( ChargeShotActiveLine11 ) --[[ @ 0]]
	self.ChargeShotActiveLine11 = ChargeShotActiveLine11 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ChargerShot_4corner_line.__resetProperties = function ( f2_arg0 )
	f2_arg0.ChargeShotActiveLine3:completeAnimation() --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine10:completeAnimation() --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine1:completeAnimation() --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine11:completeAnimation() --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine3:setLeftRight( 0.5, 0.5, -221, -144 ) --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine3:setTopBottom( 0.5, 0.5, -223, -146 ) --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine3:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine10:setLeftRight( 0.5, 0.5, -220, -143 ) --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine10:setTopBottom( 0.5, 0.5, 146, 223 ) --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine1:setLeftRight( 0.5, 0.5, 144, 220 ) --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine1:setTopBottom( 0.5, 0.5, 146, 223 ) --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine1:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine11:setLeftRight( 0.5, 0.5, 144, 220 ) --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine11:setTopBottom( 0.5, 0.5, -223, -146 ) --[[ @ 0]]
	f2_arg0.ChargeShotActiveLine11:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ChargerShot_4corner_line.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Fire = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.ChargeShotActiveLine3:beginAnimation( 50 ) --[[ @ 0]]
				f4_arg0.ChargeShotActiveLine3:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.ChargeShotActiveLine3:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine3:completeAnimation() --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine3:setLeftRight( 0.5, 0.5, -102, -25 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine3:setTopBottom( 0.5, 0.5, -95.5, -19.5 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine3:setAlpha( 1 ) --[[ @ 0]]
			f4_local0( f4_arg0.ChargeShotActiveLine3 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine1:beginAnimation( 390 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine1:setLeftRight( 0.5, 0.5, 21, 97 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine1:setTopBottom( 0.5, 0.5, 26, 103 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine1:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine1:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine1:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine10:beginAnimation( 110 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine10:setLeftRight( 0.5, 0.5, -102.5, -26.5 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine10:setTopBottom( 0.5, 0.5, 26.5, 102.5 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine10:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine10:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine11:beginAnimation( 390 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine11:setLeftRight( 0.5, 0.5, 21, 97 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine11:setTopBottom( 0.5, 0.5, -96, -19 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine11:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine11:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
			f4_arg0.ChargeShotActiveLine11:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
		end,
		Cancel = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ChargerShot_4corner_line.__onClose = function ( f7_arg0 )
	f7_arg0.ChargeShotActiveLine3:close() --[[ @ 0]]
	f7_arg0.ChargeShotActiveLine1:close() --[[ @ 0]]
	f7_arg0.ChargeShotActiveLine10:close() --[[ @ 0]]
	f7_arg0.ChargeShotActiveLine11:close() --[[ @ 0]]
end
 --[[ @ 0]]
