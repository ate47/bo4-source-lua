-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/cac/restricteditemwarning" ) --[[ @ 0]]

CoD.LoadoutClassItemContainerZombie = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LoadoutClassItemContainerZombie.__defaultWidth = 300 --[[ @ 0]]
CoD.LoadoutClassItemContainerZombie.__defaultHeight = 200 --[[ @ 0]]
CoD.LoadoutClassItemContainerZombie.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LoadoutClassItemContainerZombie ) --[[ @ 0]]
	self.id = "LoadoutClassItemContainerZombie" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local LinePattern = LUI.UIImage.new( 0, 1, 7, -7, 0, 1, 17, -17 ) --[[ @ 0]]
	LinePattern:setAlpha( 0.5 ) --[[ @ 0]]
	LinePattern:setImage( RegisterImage( @"uie_ui_menu_zombies_cac_grunge_pattern" ) ) --[[ @ 0]]
	LinePattern:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	LinePattern:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	LinePattern:setupNineSliceShader( 256, 256 ) --[[ @ 0]]
	self:addElement( LinePattern ) --[[ @ 0]]
	self.LinePattern = LinePattern --[[ @ 0]]
	
	local Colorize = LUI.UIImage.new( 0, 1, 7, -7, 0, 1, 17, -17 ) --[[ @ 0]]
	Colorize:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
	Colorize:setAlpha( 0 ) --[[ @ 0]]
	Colorize:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	Colorize:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Colorize:setupNineSliceShader( 256, 256 ) --[[ @ 0]]
	self:addElement( Colorize ) --[[ @ 0]]
	self.Colorize = Colorize --[[ @ 0]]
	
	local LightFocus = LUI.UIImage.new( 0, 0, -7, 309, 1, 1, -204, -4 ) --[[ @ 0]]
	LightFocus:setAlpha( 0 ) --[[ @ 0]]
	LightFocus:setImage( RegisterImage( @"uie_ui_menu_zombies_cac_special_weapon_light_focus" ) ) --[[ @ 0]]
	self:addElement( LightFocus ) --[[ @ 0]]
	self.LightFocus = LightFocus --[[ @ 0]]
	
	local BracketsBottom = LUI.UIImage.new( 0, 0, -7, 309, 1, 1, -216, -3 ) --[[ @ 0]]
	BracketsBottom:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	BracketsBottom:setAlpha( 0.5 ) --[[ @ 0]]
	BracketsBottom:setImage( RegisterImage( @"hash_630489D9CBA3FA2" ) ) --[[ @ 0]]
	self:addElement( BracketsBottom ) --[[ @ 0]]
	self.BracketsBottom = BracketsBottom --[[ @ 0]]
	
	local BracketsTop = LUI.UIImage.new( 0, 0, -7, 309, 0, 0, -6, 207 ) --[[ @ 0]]
	BracketsTop:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	BracketsTop:setAlpha( 0.5 ) --[[ @ 0]]
	BracketsTop:setImage( RegisterImage( @"hash_3BB497F7936F10E4" ) ) --[[ @ 0]]
	self:addElement( BracketsTop ) --[[ @ 0]]
	self.BracketsTop = BracketsTop --[[ @ 0]]
	
	local DotsBottom = LUI.UIImage.new( 0, 0, -7, 309, 1, 1, -216, -3 ) --[[ @ 0]]
	DotsBottom:setRGB( 0.61, 0, 0 ) --[[ @ 0]]
	DotsBottom:setAlpha( 0.3 ) --[[ @ 0]]
	DotsBottom:setImage( RegisterImage( @"hash_608BA3F3B135CB71" ) ) --[[ @ 0]]
	self:addElement( DotsBottom ) --[[ @ 0]]
	self.DotsBottom = DotsBottom --[[ @ 0]]
	
	local DotsTop = LUI.UIImage.new( 0, 0, -7, 309, 0, 0, -6, 207 ) --[[ @ 0]]
	DotsTop:setRGB( 0.61, 0, 0 ) --[[ @ 0]]
	DotsTop:setAlpha( 0.3 ) --[[ @ 0]]
	DotsTop:setImage( RegisterImage( @"hash_46A5B4F2DD473905" ) ) --[[ @ 0]]
	self:addElement( DotsTop ) --[[ @ 0]]
	self.DotsTop = DotsTop --[[ @ 0]]
	
	local Bar = LUI.UIImage.new( 0, 0, -7, 309, 0, 0, -7, 17 ) --[[ @ 0]]
	Bar:setAlpha( 0.4 ) --[[ @ 0]]
	Bar:setImage( RegisterImage( @"uie_ui_menu_zombies_cac_special_weapon_bar" ) ) --[[ @ 0]]
	self:addElement( Bar ) --[[ @ 0]]
	self.Bar = Bar --[[ @ 0]]
	
	local BarFocus = LUI.UIImage.new( 0, 0, -7, 309, 0, 0, -7, 17 ) --[[ @ 0]]
	BarFocus:setAlpha( 0 ) --[[ @ 0]]
	BarFocus:setImage( RegisterImage( @"uie_ui_menu_zombies_cac_special_weapon_bar_focus" ) ) --[[ @ 0]]
	self:addElement( BarFocus ) --[[ @ 0]]
	self.BarFocus = BarFocus --[[ @ 0]]
	
	local itemImage = LUI.UIFixedAspectRatioImage.new( 0.5, 0.5, -56, 56, 0.5, 0.5, -54, 38 ) --[[ @ 0]]
	itemImage:setScale( 0.84, 0.84 ) --[[ @ 0]]
	itemImage:linkToElementModel( self, "image", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			itemImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( itemImage ) --[[ @ 0]]
	self.itemImage = itemImage --[[ @ 0]]
	
	local itemName = LUI.UIText.new( 0, 0, 16, 286, 1, 1, -41, -23 ) --[[ @ 0]]
	itemName:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	itemName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	itemName:setLetterSpacing( 4 ) --[[ @ 0]]
	itemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	itemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	itemName:linkToElementModel( self, "name", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			itemName:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( itemName ) --[[ @ 0]]
	self.itemName = itemName --[[ @ 0]]
	
	local loadoutName = LUI.UIText.new( 0, 0, 3, 195, 0, 0, -15, 0 ) --[[ @ 0]]
	loadoutName:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
	loadoutName:setAlpha( 0.8 ) --[[ @ 0]]
	loadoutName:setText( LocalizeToUpperString( @"hash_463E51BFF17859F1" ) ) --[[ @ 0]]
	loadoutName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	loadoutName:setLetterSpacing( 4 ) --[[ @ 0]]
	loadoutName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( loadoutName ) --[[ @ 0]]
	self.loadoutName = loadoutName --[[ @ 0]]
	
	local RestrictionIcon = CoD.RestrictedItemWarning.new( f1_arg0, f1_arg1, 0.5, 0.5, -30, 30, 0.5, 0.5, -29, 21 ) --[[ @ 0]]
	RestrictionIcon:linkToElementModel( self, nil, false, function ( model )
		RestrictionIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RestrictionIcon ) --[[ @ 0]]
	self.RestrictionIcon = RestrictionIcon --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LoadoutClassItemContainerZombie.__resetProperties = function ( f5_arg0 )
	f5_arg0.LightFocus:completeAnimation() --[[ @ 0]]
	f5_arg0.BracketsBottom:completeAnimation() --[[ @ 0]]
	f5_arg0.BracketsTop:completeAnimation() --[[ @ 0]]
	f5_arg0.BarFocus:completeAnimation() --[[ @ 0]]
	f5_arg0.Colorize:completeAnimation() --[[ @ 0]]
	f5_arg0.DotsTop:completeAnimation() --[[ @ 0]]
	f5_arg0.DotsBottom:completeAnimation() --[[ @ 0]]
	f5_arg0.loadoutName:completeAnimation() --[[ @ 0]]
	f5_arg0.itemName:completeAnimation() --[[ @ 0]]
	f5_arg0.LightFocus:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.BracketsBottom:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	f5_arg0.BracketsBottom:setAlpha( 0.5 ) --[[ @ 0]]
	f5_arg0.BracketsTop:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	f5_arg0.BracketsTop:setAlpha( 0.5 ) --[[ @ 0]]
	f5_arg0.BarFocus:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.Colorize:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.DotsTop:setRGB( 0.61, 0, 0 ) --[[ @ 0]]
	f5_arg0.DotsTop:setAlpha( 0.3 ) --[[ @ 0]]
	f5_arg0.DotsBottom:setRGB( 0.61, 0, 0 ) --[[ @ 0]]
	f5_arg0.DotsBottom:setAlpha( 0.3 ) --[[ @ 0]]
	f5_arg0.loadoutName:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
	f5_arg0.itemName:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LoadoutClassItemContainerZombie.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			f7_arg0.Colorize:completeAnimation() --[[ @ 0]]
			f7_arg0.Colorize:setAlpha( 0.02 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Colorize ) --[[ @ 0]]
			f7_arg0.LightFocus:completeAnimation() --[[ @ 0]]
			f7_arg0.LightFocus:setAlpha( 0.1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.LightFocus ) --[[ @ 0]]
			f7_arg0.BracketsBottom:completeAnimation() --[[ @ 0]]
			f7_arg0.BracketsBottom:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f7_arg0.BracketsBottom:setAlpha( 0.8 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.BracketsBottom ) --[[ @ 0]]
			f7_arg0.BracketsTop:completeAnimation() --[[ @ 0]]
			f7_arg0.BracketsTop:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f7_arg0.BracketsTop:setAlpha( 0.8 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.BracketsTop ) --[[ @ 0]]
			f7_arg0.DotsBottom:completeAnimation() --[[ @ 0]]
			f7_arg0.DotsBottom:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
			f7_arg0.DotsBottom:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.DotsBottom ) --[[ @ 0]]
			f7_arg0.DotsTop:completeAnimation() --[[ @ 0]]
			f7_arg0.DotsTop:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
			f7_arg0.DotsTop:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.DotsTop ) --[[ @ 0]]
			f7_arg0.BarFocus:completeAnimation() --[[ @ 0]]
			f7_arg0.BarFocus:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.BarFocus ) --[[ @ 0]]
			f7_arg0.itemName:completeAnimation() --[[ @ 0]]
			f7_arg0.itemName:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.itemName ) --[[ @ 0]]
			f7_arg0.loadoutName:completeAnimation() --[[ @ 0]]
			f7_arg0.loadoutName:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.loadoutName ) --[[ @ 0]]
		end,
		GainFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.Colorize:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.Colorize:setAlpha( 0.02 ) --[[ @ 0]]
				f8_arg0.Colorize:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Colorize:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Colorize:completeAnimation() --[[ @ 0]]
			f8_arg0.Colorize:setAlpha( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.Colorize ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.LightFocus:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.LightFocus:setAlpha( 0.1 ) --[[ @ 0]]
				f8_arg0.LightFocus:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.LightFocus:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.LightFocus:completeAnimation() --[[ @ 0]]
			f8_arg0.LightFocus:setAlpha( 0 ) --[[ @ 0]]
			f8_local1( f8_arg0.LightFocus ) --[[ @ 0]]
			local f8_local2 = function ( f11_arg0 )
				f8_arg0.BracketsBottom:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.BracketsBottom:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
				f8_arg0.BracketsBottom:setAlpha( 0.8 ) --[[ @ 0]]
				f8_arg0.BracketsBottom:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.BracketsBottom:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.BracketsBottom:completeAnimation() --[[ @ 0]]
			f8_arg0.BracketsBottom:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
			f8_arg0.BracketsBottom:setAlpha( 0.5 ) --[[ @ 0]]
			f8_local2( f8_arg0.BracketsBottom ) --[[ @ 0]]
			local f8_local3 = function ( f12_arg0 )
				f8_arg0.BracketsTop:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.BracketsTop:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
				f8_arg0.BracketsTop:setAlpha( 0.8 ) --[[ @ 0]]
				f8_arg0.BracketsTop:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.BracketsTop:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.BracketsTop:completeAnimation() --[[ @ 0]]
			f8_arg0.BracketsTop:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
			f8_arg0.BracketsTop:setAlpha( 0.5 ) --[[ @ 0]]
			f8_local3( f8_arg0.BracketsTop ) --[[ @ 0]]
			local f8_local4 = function ( f13_arg0 )
				f8_arg0.DotsBottom:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.DotsBottom:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
				f8_arg0.DotsBottom:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.DotsBottom:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.DotsBottom:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.DotsBottom:completeAnimation() --[[ @ 0]]
			f8_arg0.DotsBottom:setRGB( 0.61, 0, 0 ) --[[ @ 0]]
			f8_arg0.DotsBottom:setAlpha( 0.3 ) --[[ @ 0]]
			f8_local4( f8_arg0.DotsBottom ) --[[ @ 0]]
			local f8_local5 = function ( f14_arg0 )
				f8_arg0.DotsTop:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.DotsTop:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
				f8_arg0.DotsTop:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.DotsTop:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.DotsTop:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.DotsTop:completeAnimation() --[[ @ 0]]
			f8_arg0.DotsTop:setRGB( 0.61, 0, 0 ) --[[ @ 0]]
			f8_arg0.DotsTop:setAlpha( 0.3 ) --[[ @ 0]]
			f8_local5( f8_arg0.DotsTop ) --[[ @ 0]]
			local f8_local6 = function ( f15_arg0 )
				f8_arg0.BarFocus:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.BarFocus:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.BarFocus:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.BarFocus:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.BarFocus:completeAnimation() --[[ @ 0]]
			f8_arg0.BarFocus:setAlpha( 0 ) --[[ @ 0]]
			f8_local6( f8_arg0.BarFocus ) --[[ @ 0]]
			local f8_local7 = function ( f16_arg0 )
				f8_arg0.itemName:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.itemName:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
				f8_arg0.itemName:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.itemName:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.itemName:completeAnimation() --[[ @ 0]]
			f8_arg0.itemName:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
			f8_local7( f8_arg0.itemName ) --[[ @ 0]]
		end,
		LoseFocus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				f17_arg0.Colorize:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.Colorize:setAlpha( 0 ) --[[ @ 0]]
				f17_arg0.Colorize:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.Colorize:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.Colorize:completeAnimation() --[[ @ 0]]
			f17_arg0.Colorize:setAlpha( 0.02 ) --[[ @ 0]]
			f17_local0( f17_arg0.Colorize ) --[[ @ 0]]
			local f17_local1 = function ( f19_arg0 )
				f17_arg0.LightFocus:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.LightFocus:setAlpha( 0 ) --[[ @ 0]]
				f17_arg0.LightFocus:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.LightFocus:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.LightFocus:completeAnimation() --[[ @ 0]]
			f17_arg0.LightFocus:setAlpha( 0.1 ) --[[ @ 0]]
			f17_local1( f17_arg0.LightFocus ) --[[ @ 0]]
			local f17_local2 = function ( f20_arg0 )
				f17_arg0.BracketsBottom:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.BracketsBottom:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
				f17_arg0.BracketsBottom:setAlpha( 0.5 ) --[[ @ 0]]
				f17_arg0.BracketsBottom:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.BracketsBottom:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.BracketsBottom:completeAnimation() --[[ @ 0]]
			f17_arg0.BracketsBottom:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f17_arg0.BracketsBottom:setAlpha( 0.8 ) --[[ @ 0]]
			f17_local2( f17_arg0.BracketsBottom ) --[[ @ 0]]
			local f17_local3 = function ( f21_arg0 )
				f17_arg0.BracketsTop:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.BracketsTop:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
				f17_arg0.BracketsTop:setAlpha( 0.5 ) --[[ @ 0]]
				f17_arg0.BracketsTop:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.BracketsTop:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.BracketsTop:completeAnimation() --[[ @ 0]]
			f17_arg0.BracketsTop:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f17_arg0.BracketsTop:setAlpha( 0.8 ) --[[ @ 0]]
			f17_local3( f17_arg0.BracketsTop ) --[[ @ 0]]
			local f17_local4 = function ( f22_arg0 )
				f17_arg0.DotsBottom:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.DotsBottom:setRGB( 0.61, 0, 0 ) --[[ @ 0]]
				f17_arg0.DotsBottom:setAlpha( 0.3 ) --[[ @ 0]]
				f17_arg0.DotsBottom:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.DotsBottom:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.DotsBottom:completeAnimation() --[[ @ 0]]
			f17_arg0.DotsBottom:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
			f17_arg0.DotsBottom:setAlpha( 1 ) --[[ @ 0]]
			f17_local4( f17_arg0.DotsBottom ) --[[ @ 0]]
			local f17_local5 = function ( f23_arg0 )
				f17_arg0.DotsTop:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.DotsTop:setRGB( 0.61, 0, 0 ) --[[ @ 0]]
				f17_arg0.DotsTop:setAlpha( 0.3 ) --[[ @ 0]]
				f17_arg0.DotsTop:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.DotsTop:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.DotsTop:completeAnimation() --[[ @ 0]]
			f17_arg0.DotsTop:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
			f17_arg0.DotsTop:setAlpha( 1 ) --[[ @ 0]]
			f17_local5( f17_arg0.DotsTop ) --[[ @ 0]]
			local f17_local6 = function ( f24_arg0 )
				f17_arg0.BarFocus:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.BarFocus:setAlpha( 0 ) --[[ @ 0]]
				f17_arg0.BarFocus:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.BarFocus:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.BarFocus:completeAnimation() --[[ @ 0]]
			f17_arg0.BarFocus:setAlpha( 1 ) --[[ @ 0]]
			f17_local6( f17_arg0.BarFocus ) --[[ @ 0]]
			local f17_local7 = function ( f25_arg0 )
				f17_arg0.itemName:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.itemName:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
				f17_arg0.itemName:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.itemName:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.itemName:completeAnimation() --[[ @ 0]]
			f17_arg0.itemName:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
			f17_local7( f17_arg0.itemName ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LoadoutClassItemContainerZombie.__onClose = function ( f26_arg0 )
	f26_arg0.itemImage:close() --[[ @ 0]]
	f26_arg0.itemName:close() --[[ @ 0]]
	f26_arg0.RestrictionIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
