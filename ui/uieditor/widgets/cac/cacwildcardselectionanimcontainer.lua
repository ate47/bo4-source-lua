-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.CACWildcardSelectionAnimContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CACWildcardSelectionAnimContainer.__defaultWidth = 84 --[[ @ 0]]
CoD.CACWildcardSelectionAnimContainer.__defaultHeight = 52 --[[ @ 0]]
CoD.CACWildcardSelectionAnimContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CACWildcardSelectionAnimContainer ) --[[ @ 0]]
	self.id = "CACWildcardSelectionAnimContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local UpgradePathBG = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, -4, 19 ) --[[ @ 0]]
	UpgradePathBG:setAlpha( 0.2 ) --[[ @ 0]]
	UpgradePathBG:setImage( RegisterImage( @"uie_ui_menu_cac_wildcard_selected_glow_edges" ) ) --[[ @ 0]]
	self:addElement( UpgradePathBG ) --[[ @ 0]]
	self.UpgradePathBG = UpgradePathBG --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CACWildcardSelectionAnimContainer.__resetProperties = function ( f2_arg0 )
	f2_arg0.UpgradePathBG:completeAnimation() --[[ @ 0]]
	f2_arg0.UpgradePathBG:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.UpgradePathBG:setAlpha( 0.2 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CACWildcardSelectionAnimContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 6000 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.02 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.UpgradePathBG:beginAnimation( 6000 ) --[[ @ 0]]
				f3_arg0.UpgradePathBG:setAlpha( 0.04 ) --[[ @ 0]]
				f3_arg0.UpgradePathBG:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.UpgradePathBG:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.UpgradePathBG:completeAnimation() --[[ @ 0]]
			f3_arg0.UpgradePathBG:setRGB( 0.97, 0.98, 0.85 ) --[[ @ 0]]
			f3_arg0.UpgradePathBG:setAlpha( 0.02 ) --[[ @ 0]]
			f3_local0( f3_arg0.UpgradePathBG ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
