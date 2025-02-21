-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.vhud_gunship_button_all = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_gunship_button_all.__defaultWidth = 1058 --[[ @ 0]]
CoD.vhud_gunship_button_all.__defaultHeight = 287 --[[ @ 0]]
CoD.vhud_gunship_button_all.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_gunship_button_all ) --[[ @ 0]]
	self.id = "vhud_gunship_button_all" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local buttonBacking01 = LUI.UIImage.new( 0, 0, 216, 414, 0, 0, 236.5, 278.5 ) --[[ @ 0]]
	buttonBacking01:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_bg" ) ) --[[ @ 0]]
	self:addElement( buttonBacking01 ) --[[ @ 0]]
	self.buttonBacking01 = buttonBacking01 --[[ @ 0]]
	
	local buttonBacking02 = LUI.UIImage.new( 0, 0, 645, 843, 0, 0, 236.5, 278.5 ) --[[ @ 0]]
	buttonBacking02:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_bg" ) ) --[[ @ 0]]
	self:addElement( buttonBacking02 ) --[[ @ 0]]
	self.buttonBacking02 = buttonBacking02 --[[ @ 0]]
	
	local buttonFrame01 = LUI.UIImage.new( 0, 0, 216, 414, 0, 0, 235, 287 ) --[[ @ 0]]
	buttonFrame01:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_container" ) ) --[[ @ 0]]
	buttonFrame01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	buttonFrame01:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonFrame01 ) --[[ @ 0]]
	self.buttonFrame01 = buttonFrame01 --[[ @ 0]]
	
	local buttonFrame02 = LUI.UIImage.new( 0, 0, 645, 843, 0, 0, 235, 287 ) --[[ @ 0]]
	buttonFrame02:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_container" ) ) --[[ @ 0]]
	buttonFrame02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	buttonFrame02:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonFrame02 ) --[[ @ 0]]
	self.buttonFrame02 = buttonFrame02 --[[ @ 0]]
	
	local buttonLinks = LUI.UIImage.new( 0, 0, 312, 746, 0, 0, 0, 220 ) --[[ @ 0]]
	buttonLinks:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_link" ) ) --[[ @ 0]]
	buttonLinks:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	buttonLinks:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonLinks ) --[[ @ 0]]
	self.buttonLinks = buttonLinks --[[ @ 0]]
	
	local buttonEmpty01 = LUI.UIImage.new( 0, 0, 429, 629, 0, 0, 235.5, 279.5 ) --[[ @ 0]]
	buttonEmpty01:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_other" ) ) --[[ @ 0]]
	buttonEmpty01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	buttonEmpty01:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonEmpty01 ) --[[ @ 0]]
	self.buttonEmpty01 = buttonEmpty01 --[[ @ 0]]
	
	local buttonEmpty02 = LUI.UIImage.new( 0, 0, 858, 1058, 0, 0, 184.5, 228.5 ) --[[ @ 0]]
	buttonEmpty02:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_other" ) ) --[[ @ 0]]
	buttonEmpty02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	buttonEmpty02:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonEmpty02 ) --[[ @ 0]]
	self.buttonEmpty02 = buttonEmpty02 --[[ @ 0]]
	
	local buttonEmpty03 = LUI.UIImage.new( 0, 0, 0, 200, 0, 0, 184.5, 228.5 ) --[[ @ 0]]
	buttonEmpty03:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_ctrl_button_other" ) ) --[[ @ 0]]
	buttonEmpty03:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	buttonEmpty03:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonEmpty03 ) --[[ @ 0]]
	self.buttonEmpty03 = buttonEmpty03 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Codcaster",
			condition = function ( menu, element, event )
				return IsCodCaster( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local9 = self --[[ @ 0]]
	local f1_local10 = self.subscribeToModel --[[ @ 0]]
	local f1_local11 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["factions.isCoDCaster"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "factions.isCoDCaster"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_gunship_button_all.__resetProperties = function ( f4_arg0 )
	f4_arg0.buttonFrame02:completeAnimation() --[[ @ 0]]
	f4_arg0.buttonBacking02:completeAnimation() --[[ @ 0]]
	f4_arg0.buttonFrame01:completeAnimation() --[[ @ 0]]
	f4_arg0.buttonBacking01:completeAnimation() --[[ @ 0]]
	f4_arg0.buttonFrame02:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.buttonBacking02:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.buttonFrame01:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.buttonBacking01:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_gunship_button_all.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Codcaster = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f6_arg0.buttonBacking01:completeAnimation() --[[ @ 0]]
			f6_arg0.buttonBacking01:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.buttonBacking01 ) --[[ @ 0]]
			f6_arg0.buttonBacking02:completeAnimation() --[[ @ 0]]
			f6_arg0.buttonBacking02:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.buttonBacking02 ) --[[ @ 0]]
			f6_arg0.buttonFrame01:completeAnimation() --[[ @ 0]]
			f6_arg0.buttonFrame01:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.buttonFrame01 ) --[[ @ 0]]
			f6_arg0.buttonFrame02:completeAnimation() --[[ @ 0]]
			f6_arg0.buttonFrame02:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.buttonFrame02 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
