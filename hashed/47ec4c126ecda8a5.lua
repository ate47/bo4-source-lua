-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:57ff987c19dcb981" ) --[[ @ 0]]

CoD.CombatTrainingSkirmishPreview = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CombatTrainingSkirmishPreview.__defaultWidth = 487 --[[ @ 0]]
CoD.CombatTrainingSkirmishPreview.__defaultHeight = 130 --[[ @ 0]]
CoD.CombatTrainingSkirmishPreview.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CombatTrainingSkirmishPreview ) --[[ @ 0]]
	self.id = "CombatTrainingSkirmishPreview" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local MapImage = LUI.UIImage.new( 0.5, 0.5, -243.5, 243.5, 1, 1, -130, 0 ) --[[ @ 0]]
	MapImage:linkToElementModel( self, "map", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			MapImage:setImage( RegisterImage( CoD.MapUtility.MapNameToMapImage( f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MapImage ) --[[ @ 0]]
	self.MapImage = MapImage --[[ @ 0]]
	
	local GametypeImage = LUI.UIImage.new( 1, 1, -150, 0, 1, 1, -130, 20 ) --[[ @ 0]]
	GametypeImage:linkToElementModel( self, "gametype", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			GametypeImage:setImage( RegisterImage( GameTypeToImage( f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GametypeImage ) --[[ @ 0]]
	self.GametypeImage = GametypeImage --[[ @ 0]]
	
	local NamesBacking = CoD.CombatTrainingSkirmishNames.new( f1_arg0, f1_arg1, 0, 0, 0, 234, 1, 1, -93, 0 ) --[[ @ 0]]
	NamesBacking:linkToElementModel( self, nil, false, function ( model )
		NamesBacking:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( NamesBacking ) --[[ @ 0]]
	self.NamesBacking = NamesBacking --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CombatTrainingSkirmishPreview.__onClose = function ( f5_arg0 )
	f5_arg0.MapImage:close() --[[ @ 0]]
	f5_arg0.GametypeImage:close() --[[ @ 0]]
	f5_arg0.NamesBacking:close() --[[ @ 0]]
end
 --[[ @ 0]]
