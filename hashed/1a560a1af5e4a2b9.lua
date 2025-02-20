-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.Rush_playercard_position_indicator = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Rush_playercard_position_indicator.__defaultWidth = 15 --[[ @ 0]]
CoD.Rush_playercard_position_indicator.__defaultHeight = 36 --[[ @ 0]]
CoD.Rush_playercard_position_indicator.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Rush_playercard_position_indicator ) --[[ @ 0]]
	self.id = "Rush_playercard_position_indicator" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NumberBg = LUI.UIImage.new( 0, 0, -19.5, 25.5, 0, 0, -13, 47 ) --[[ @ 0]]
	NumberBg:setImage( RegisterImage( @"hash_675D661B612187DF" ) ) --[[ @ 0]]
	self:addElement( NumberBg ) --[[ @ 0]]
	self.NumberBg = NumberBg --[[ @ 0]]
	
	local PositionText = LUI.UIText.new( 0, 0, -1, 14, 0, 0, 7, 40 ) --[[ @ 0]]
	PositionText:setText( CoD.ZombieUtility.GetZombiesRushPositionForIndex( f1_arg1, 1 ) ) --[[ @ 0]]
	PositionText:setTTF( "skorzhen" ) --[[ @ 0]]
	PositionText:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	self:addElement( PositionText ) --[[ @ 0]]
	self.PositionText = PositionText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Show",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueGreaterThan( f1_arg1, "Clients.clientCount", 1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["Clients.clientCount"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "Clients.clientCount"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Rush_playercard_position_indicator.__resetProperties = function ( f4_arg0 )
	f4_arg0.PositionText:completeAnimation() --[[ @ 0]]
	f4_arg0.NumberBg:completeAnimation() --[[ @ 0]]
	f4_arg0.PositionText:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.NumberBg:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Rush_playercard_position_indicator.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.NumberBg:completeAnimation() --[[ @ 0]]
			f5_arg0.NumberBg:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.NumberBg ) --[[ @ 0]]
			f5_arg0.PositionText:completeAnimation() --[[ @ 0]]
			f5_arg0.PositionText:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.PositionText ) --[[ @ 0]]
		end
	},
	Show = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
