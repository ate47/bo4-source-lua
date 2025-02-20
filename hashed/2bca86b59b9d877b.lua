-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.ZM_SelfReviveCounter = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZM_SelfReviveCounter.__defaultWidth = 85 --[[ @ 0]]
CoD.ZM_SelfReviveCounter.__defaultHeight = 45 --[[ @ 0]]
CoD.ZM_SelfReviveCounter.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModelIfNotSet( f1_arg1, "ZMInventoryPersonal.self_revive_count", 0 ) --[[ @ 0]]
	self:setClass( CoD.ZM_SelfReviveCounter ) --[[ @ 0]]
	self.id = "ZM_SelfReviveCounter" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backer = LUI.UIImage.new( 0, 0, 13, 77, 0, 0, -9.5, 54.5 ) --[[ @ 0]]
	Backer:setImage( RegisterImage( @"hash_12A747EA6597C045" ) ) --[[ @ 0]]
	self:addElement( Backer ) --[[ @ 0]]
	self.Backer = Backer --[[ @ 0]]
	
	local HealthIcon = LUI.UIImage.new( 0, 0, 0, 45, 0, 0, 0, 45 ) --[[ @ 0]]
	HealthIcon:setAlpha( 0 ) --[[ @ 0]]
	HealthIcon:setImage( RegisterImage( @"hash_677AEC1394EC7604" ) ) --[[ @ 0]]
	self:addElement( HealthIcon ) --[[ @ 0]]
	self.HealthIcon = HealthIcon --[[ @ 0]]
	
	local ReviveCount = LUI.UIText.new( 0, 0, 25, 65, 0, 0, 8, 42 ) --[[ @ 0]]
	ReviveCount:setTTF( "skorzhen" ) --[[ @ 0]]
	ReviveCount:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	ReviveCount:setShaderVector( 0, 0.4, 0, 0, 0 ) --[[ @ 0]]
	ReviveCount:setShaderVector( 1, 0.1, 0, 0, 0 ) --[[ @ 0]]
	ReviveCount:setShaderVector( 2, 0, 0, 0, 0.8 ) --[[ @ 0]]
	ReviveCount:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	ReviveCount:subscribeToGlobalModel( f1_arg1, "ZMInventoryPersonal", "self_revive_count", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ReviveCount:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ReviveCount ) --[[ @ 0]]
	self.ReviveCount = ReviveCount --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueGreaterThan( f1_arg1, "ZMInventoryPersonal.self_revive_count", 0 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["ZMInventoryPersonal.self_revive_count"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "ZMInventoryPersonal.self_revive_count"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZM_SelfReviveCounter.__resetProperties = function ( f5_arg0 )
	f5_arg0.HealthIcon:completeAnimation() --[[ @ 0]]
	f5_arg0.ReviveCount:completeAnimation() --[[ @ 0]]
	f5_arg0.Backer:completeAnimation() --[[ @ 0]]
	f5_arg0.HealthIcon:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.ReviveCount:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.Backer:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZM_SelfReviveCounter.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f6_arg0.Backer:completeAnimation() --[[ @ 0]]
			f6_arg0.Backer:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Backer ) --[[ @ 0]]
			f6_arg0.HealthIcon:completeAnimation() --[[ @ 0]]
			f6_arg0.HealthIcon:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.HealthIcon ) --[[ @ 0]]
			f6_arg0.ReviveCount:completeAnimation() --[[ @ 0]]
			f6_arg0.ReviveCount:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.ReviveCount ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ZM_SelfReviveCounter.__onClose = function ( f8_arg0 )
	f8_arg0.ReviveCount:close() --[[ @ 0]]
end
 --[[ @ 0]]
