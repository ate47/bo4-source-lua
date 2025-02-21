-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:34422213aec30beb" ) --[[ @ 0]]

CoD.WZTeamScoreboardStatBoxes = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZTeamScoreboardStatBoxes.__defaultWidth = 569 --[[ @ 0]]
CoD.WZTeamScoreboardStatBoxes.__defaultHeight = 60 --[[ @ 0]]
CoD.WZTeamScoreboardStatBoxes.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZTeamScoreboardStatBoxes ) --[[ @ 0]]
	self.id = "WZTeamScoreboardStatBoxes" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StatBox1 = CoD.WZTeamScoreboard_ColumnStatBox.new( f1_arg0, f1_arg1, 0, 0, 0, 140, 0, 0, 0, 60 ) --[[ @ 0]]
	StatBox1:linkToElementModel( self, nil, false, function ( model )
		StatBox1:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StatBox1:linkToElementModel( self, "scoreboard.col1", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			StatBox1.Value:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StatBox1 ) --[[ @ 0]]
	self.StatBox1 = StatBox1 --[[ @ 0]]
	
	local StatBox2 = CoD.WZTeamScoreboard_ColumnStatBox.new( f1_arg0, f1_arg1, 0, 0, 143, 283, 0, 0, 0, 60 ) --[[ @ 0]]
	StatBox2:linkToElementModel( self, nil, false, function ( model )
		StatBox2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StatBox2:linkToElementModel( self, "scoreboard.col2", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			StatBox2.Value:setText( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StatBox2 ) --[[ @ 0]]
	self.StatBox2 = StatBox2 --[[ @ 0]]
	
	local StatBox3 = CoD.WZTeamScoreboard_ColumnStatBox.new( f1_arg0, f1_arg1, 0, 0, 286, 426, 0, 0, 0, 60 ) --[[ @ 0]]
	StatBox3:linkToElementModel( self, nil, false, function ( model )
		StatBox3:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StatBox3:linkToElementModel( self, "scoreboard.col3", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			StatBox3.Value:setText( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StatBox3 ) --[[ @ 0]]
	self.StatBox3 = StatBox3 --[[ @ 0]]
	
	local StatBoxDeposit = CoD.WZTeamScoreboard_ColumnStatBox.new( f1_arg0, f1_arg1, 0, 0, 429, 569, 0, 0, 0, 60 ) --[[ @ 0]]
	StatBoxDeposit:setAlpha( 0 ) --[[ @ 0]]
	StatBoxDeposit:linkToElementModel( self, nil, false, function ( model )
		StatBoxDeposit:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StatBoxDeposit:linkToElementModel( self, "scoreboard.footer7", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			StatBoxDeposit.Value:setText( f9_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StatBoxDeposit ) --[[ @ 0]]
	self.StatBoxDeposit = StatBoxDeposit --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Deposit",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsGameTypeEqualToString( "warzone_deposit" )
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WZTeamScoreboardStatBoxes.__resetProperties = function ( f11_arg0 )
	f11_arg0.StatBoxDeposit:completeAnimation() --[[ @ 0]]
	f11_arg0.StatBox2:completeAnimation() --[[ @ 0]]
	f11_arg0.StatBox3:completeAnimation() --[[ @ 0]]
	f11_arg0.StatBoxDeposit:setLeftRight( 0, 0, 429, 569 ) --[[ @ 0]]
	f11_arg0.StatBoxDeposit:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.StatBox2:setLeftRight( 0, 0, 143, 283 ) --[[ @ 0]]
	f11_arg0.StatBox3:setLeftRight( 0, 0, 286, 426 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WZTeamScoreboardStatBoxes.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Deposit = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f13_arg0.StatBox2:completeAnimation() --[[ @ 0]]
			f13_arg0.StatBox2:setLeftRight( 0, 0, 286, 426 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.StatBox2 ) --[[ @ 0]]
			f13_arg0.StatBox3:completeAnimation() --[[ @ 0]]
			f13_arg0.StatBox3:setLeftRight( 0, 0, 429, 569 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.StatBox3 ) --[[ @ 0]]
			f13_arg0.StatBoxDeposit:completeAnimation() --[[ @ 0]]
			f13_arg0.StatBoxDeposit:setLeftRight( 0, 0, 143, 283 ) --[[ @ 0]]
			f13_arg0.StatBoxDeposit:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.StatBoxDeposit ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WZTeamScoreboardStatBoxes.__onClose = function ( f14_arg0 )
	f14_arg0.StatBox1:close() --[[ @ 0]]
	f14_arg0.StatBox2:close() --[[ @ 0]]
	f14_arg0.StatBox3:close() --[[ @ 0]]
	f14_arg0.StatBoxDeposit:close() --[[ @ 0]]
end
 --[[ @ 0]]
