-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.SpawnRegionAutoSpawn = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpawnRegionAutoSpawn.__defaultWidth = 80 --[[ @ 0]]
CoD.SpawnRegionAutoSpawn.__defaultHeight = 80 --[[ @ 0]]
CoD.SpawnRegionAutoSpawn.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SpawnRegionAutoSpawn ) --[[ @ 0]]
	self.id = "SpawnRegionAutoSpawn" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DangerBacking = LUI.UIImage.new( 0, 0, -16.5, 96.5, 0, 0, 66, 90 ) --[[ @ 0]]
	DangerBacking:setRGB( 0.1, 0.1, 0.1 ) --[[ @ 0]]
	DangerBacking:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( DangerBacking ) --[[ @ 0]]
	self.DangerBacking = DangerBacking --[[ @ 0]]
	
	local DangerText = LUI.UIText.new( 0, 0, -39.5, 119.5, 0, 0, 68, 88 ) --[[ @ 0]]
	DangerText:setRGB( 1, 0, 0 ) --[[ @ 0]]
	DangerText:setAlpha( 0 ) --[[ @ 0]]
	DangerText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_357915A72383BA7C" ) ) --[[ @ 0]]
	DangerText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	DangerText:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	DangerText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( DangerText ) --[[ @ 0]]
	self.DangerText = DangerText --[[ @ 0]]
	
	local iconFrameBacking = LUI.UIImage.new( 0, 0, 16, 64, 0, 0, 16, 64 ) --[[ @ 0]]
	iconFrameBacking:setAlpha( 0 ) --[[ @ 0]]
	iconFrameBacking:setImage( RegisterImage( @"uie_ui_hud_selectspawn_point_bg" ) ) --[[ @ 0]]
	self:addElement( iconFrameBacking ) --[[ @ 0]]
	self.iconFrameBacking = iconFrameBacking --[[ @ 0]]
	
	local iconFrameSelected = LUI.UIImage.new( 0, 0, 16, 64, 0, 0, 16, 64 ) --[[ @ 0]]
	iconFrameSelected:setAlpha( 0 ) --[[ @ 0]]
	iconFrameSelected:setImage( RegisterImage( @"uie_ui_hud_selectspawn_point_pulse" ) ) --[[ @ 0]]
	self:addElement( iconFrameSelected ) --[[ @ 0]]
	self.iconFrameSelected = iconFrameSelected --[[ @ 0]]
	
	local iconFrame = LUI.UIImage.new( 0, 0, 16, 64, 0, 0, 16, 64 ) --[[ @ 0]]
	iconFrame:setAlpha( 0 ) --[[ @ 0]]
	iconFrame:setImage( RegisterImage( @"uie_ui_hud_selectspawn_point_boundary" ) ) --[[ @ 0]]
	iconFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( iconFrame ) --[[ @ 0]]
	self.iconFrame = iconFrame --[[ @ 0]]
	
	local AutoSpawnIcon = LUI.UIImage.new( 0, 0, 16, 64, 0, 0, 16, 64 ) --[[ @ 0]]
	AutoSpawnIcon:setImage( RegisterImage( @"uie_ui_hud_selectspawn_point_icon" ) ) --[[ @ 0]]
	self:addElement( AutoSpawnIcon ) --[[ @ 0]]
	self.AutoSpawnIcon = AutoSpawnIcon --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SpawnRegionAutoSpawn.__resetProperties = function ( f2_arg0 )
	f2_arg0.iconFrame:completeAnimation() --[[ @ 0]]
	f2_arg0.iconFrameSelected:completeAnimation() --[[ @ 0]]
	f2_arg0.iconFrameBacking:completeAnimation() --[[ @ 0]]
	f2_arg0.iconFrame:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.iconFrameSelected:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.iconFrameBacking:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SpawnRegionAutoSpawn.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f3_arg0.iconFrameBacking:completeAnimation() --[[ @ 0]]
			f3_arg0.iconFrameBacking:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.iconFrameBacking ) --[[ @ 0]]
			f3_arg0.iconFrameSelected:completeAnimation() --[[ @ 0]]
			f3_arg0.iconFrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.iconFrameSelected ) --[[ @ 0]]
			f3_arg0.iconFrame:completeAnimation() --[[ @ 0]]
			f3_arg0.iconFrame:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.iconFrame ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
