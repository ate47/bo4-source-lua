-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.ct_shared_warning = InheritFrom( CoD.Menu ) --[[ @ 0]]
CoD.ct_shared_warning.__stateMap = {
	"DefaultState",
	"warnHeal_fadeout",
	"warnHeal_timer_on",
	"warnHeal_timer_on_fadeout",
	"warnHeal",
	"warnHeal_cycle1",
	"warnHeal_cycle2",
	"warnHeal_timer_on_cycle1",
	"warnHeal_timer_on_cycle2"
} --[[ @ 0]]
LUI.createMenu.ct_shared_warning = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "ct_shared_warning", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.ct_shared_warning ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local backing = LUI.UIText.new( 0.5, 0.5, -960, 960, 0, 0, 262, 298 ) --[[ @ 0]]
	backing:setRGB( ColorSet.T8_FactionTier_Completed.r, ColorSet.T8_FactionTier_Completed.g, ColorSet.T8_FactionTier_Completed.b ) --[[ @ 0]]
	backing:setScale( 1, 0.8 ) --[[ @ 0]]
	backing:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_74FFE7411401D994" ) ) --[[ @ 0]]
	backing:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	backing:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	backing:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	backing:setBackingType( 2 ) --[[ @ 0]]
	backing:setBackingColor( ColorSet.ResistanceHigh.r, ColorSet.ResistanceHigh.g, ColorSet.ResistanceHigh.b ) --[[ @ 0]]
	backing:setBackingAlpha( 0.75 ) --[[ @ 0]]
	backing:setBackingYPadding( 8 ) --[[ @ 0]]
	backing:setBackingMaterial( LUI.UIImage.GetCachedMaterial( @"hash_19FC5C7009DD6875" ) ) --[[ @ 0]]
	self:addElement( backing ) --[[ @ 0]]
	self.backing = backing --[[ @ 0]]
	
	local textshadow = LUI.UIText.new( 0.5, 0.5, -959, 961, 0, 0, 263, 299 ) --[[ @ 0]]
	textshadow:setRGB( ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b ) --[[ @ 0]]
	textshadow:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5C6374AFE8C19B5D" ) ) --[[ @ 0]]
	textshadow:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	textshadow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	textshadow:setShaderVector( 0, 0.3, 0, 0, 0 ) --[[ @ 0]]
	textshadow:setShaderVector( 1, 0.3, 0, 0, 0 ) --[[ @ 0]]
	textshadow:setShaderVector( 2, 0.1, 0.1, 0.1, 0.85 ) --[[ @ 0]]
	textshadow:setLineSpacing( 12.5 ) --[[ @ 0]]
	textshadow:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	textshadow:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( textshadow ) --[[ @ 0]]
	self.textshadow = textshadow --[[ @ 0]]
	
	local text = LUI.UIText.new( 0.5, 0.5, -960, 960, 0, 0, 262, 298 ) --[[ @ 0]]
	text:setRGB( ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b ) --[[ @ 0]]
	text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5C6374AFE8C19B5D" ) ) --[[ @ 0]]
	text:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	text:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	text:setLineSpacing( 12.5 ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( text ) --[[ @ 0]]
	self.text = text --[[ @ 0]]
	
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ct_shared_warning.__resetProperties = function ( f2_arg0 )
	f2_arg0.text:completeAnimation() --[[ @ 0]]
	f2_arg0.backing:completeAnimation() --[[ @ 0]]
	f2_arg0.textshadow:completeAnimation() --[[ @ 0]]
	f2_arg0.text:setTopBottom( 0, 0, 262, 298 ) --[[ @ 0]]
	f2_arg0.text:setRGB( ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b ) --[[ @ 0]]
	f2_arg0.text:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.text:setXRot( 0 ) --[[ @ 0]]
	f2_arg0.text:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.backing:setTopBottom( 0, 0, 262, 298 ) --[[ @ 0]]
	f2_arg0.backing:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.textshadow:setTopBottom( 0, 0, 263, 299 ) --[[ @ 0]]
	f2_arg0.textshadow:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.textshadow:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ct_shared_warning.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				f3_arg0.backing:beginAnimation( 290 ) --[[ @ 0]]
				f3_arg0.backing:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.backing:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.backing:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.backing:completeAnimation() --[[ @ 0]]
			f3_arg0.backing:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.backing ) --[[ @ 0]]
			local f3_local1 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					f6_arg0:beginAnimation( 60 ) --[[ @ 0]]
					f6_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.textshadow:beginAnimation( 290 ) --[[ @ 0]]
				f3_arg0.textshadow:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.textshadow:setScale( 1.2, 1.2 ) --[[ @ 0]]
				f3_arg0.textshadow:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.textshadow:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.textshadow:completeAnimation() --[[ @ 0]]
			f3_arg0.textshadow:setTopBottom( 0, 0, 263, 299 ) --[[ @ 0]]
			f3_arg0.textshadow:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.textshadow:setScale( 0.01, 0.01 ) --[[ @ 0]]
			f3_local1( f3_arg0.textshadow ) --[[ @ 0]]
			local f3_local2 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					f8_arg0:beginAnimation( 60 ) --[[ @ 0]]
					f8_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.text:beginAnimation( 290 ) --[[ @ 0]]
				f3_arg0.text:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.text:setScale( 1.2, 1.2 ) --[[ @ 0]]
				f3_arg0.text:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.text:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.text:completeAnimation() --[[ @ 0]]
			f3_arg0.text:setTopBottom( 0, 0, 262, 298 ) --[[ @ 0]]
			f3_arg0.text:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
			f3_arg0.text:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.text:setScale( 0.01, 0.01 ) --[[ @ 0]]
			f3_local2( f3_arg0.text ) --[[ @ 0]]
		end
	},
	warnHeal_fadeout = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.backing:beginAnimation( 1000 ) --[[ @ 0]]
				f9_arg0.backing:setAlpha( 0 ) --[[ @ 0]]
				f9_arg0.backing:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.backing:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.backing:completeAnimation() --[[ @ 0]]
			f9_arg0.backing:setAlpha( 1 ) --[[ @ 0]]
			f9_local0( f9_arg0.backing ) --[[ @ 0]]
			f9_arg0.textshadow:beginAnimation( 1000 ) --[[ @ 0]]
			f9_arg0.textshadow:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.textshadow:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
			f9_arg0.textshadow:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			local f9_local1 = function ( f11_arg0 )
				f9_arg0.text:beginAnimation( 1000 ) --[[ @ 0]]
				f9_arg0.text:setAlpha( 0 ) --[[ @ 0]]
				f9_arg0.text:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.text:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.text:completeAnimation() --[[ @ 0]]
			f9_arg0.text:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
			f9_arg0.text:setAlpha( 1 ) --[[ @ 0]]
			f9_local1( f9_arg0.text ) --[[ @ 0]]
		end
	},
	warnHeal_timer_on = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.backing:beginAnimation( 290 ) --[[ @ 0]]
				f12_arg0.backing:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0.backing:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.backing:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.backing:completeAnimation() --[[ @ 0]]
			f12_arg0.backing:setTopBottom( 0, 0, 317, 353 ) --[[ @ 0]]
			f12_arg0.backing:setAlpha( 0 ) --[[ @ 0]]
			f12_local0( f12_arg0.backing ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					f15_arg0:beginAnimation( 60 ) --[[ @ 0]]
					f15_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.textshadow:beginAnimation( 290 ) --[[ @ 0]]
				f12_arg0.textshadow:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0.textshadow:setScale( 1.2, 1.2 ) --[[ @ 0]]
				f12_arg0.textshadow:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.textshadow:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.textshadow:completeAnimation() --[[ @ 0]]
			f12_arg0.textshadow:setTopBottom( 0, 0, 318, 354 ) --[[ @ 0]]
			f12_arg0.textshadow:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.textshadow:setScale( 0.01, 0.01 ) --[[ @ 0]]
			f12_local1( f12_arg0.textshadow ) --[[ @ 0]]
			local f12_local2 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					f17_arg0:beginAnimation( 60 ) --[[ @ 0]]
					f17_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.text:beginAnimation( 290 ) --[[ @ 0]]
				f12_arg0.text:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0.text:setScale( 1.2, 1.2 ) --[[ @ 0]]
				f12_arg0.text:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.text:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.text:completeAnimation() --[[ @ 0]]
			f12_arg0.text:setTopBottom( 0, 0, 317, 353 ) --[[ @ 0]]
			f12_arg0.text:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
			f12_arg0.text:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.text:setScale( 0.01, 0.01 ) --[[ @ 0]]
			f12_local2( f12_arg0.text ) --[[ @ 0]]
		end
	},
	warnHeal_timer_on_fadeout = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				f18_arg0.backing:beginAnimation( 1000 ) --[[ @ 0]]
				f18_arg0.backing:setAlpha( 0 ) --[[ @ 0]]
				f18_arg0.backing:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.backing:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.backing:completeAnimation() --[[ @ 0]]
			f18_arg0.backing:setTopBottom( 0, 0, 317, 353 ) --[[ @ 0]]
			f18_arg0.backing:setAlpha( 1 ) --[[ @ 0]]
			f18_local0( f18_arg0.backing ) --[[ @ 0]]
			local f18_local1 = function ( f20_arg0 )
				f18_arg0.textshadow:beginAnimation( 1000 ) --[[ @ 0]]
				f18_arg0.textshadow:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.textshadow:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.textshadow:completeAnimation() --[[ @ 0]]
			f18_arg0.textshadow:setTopBottom( 0, 0, 318, 354 ) --[[ @ 0]]
			f18_arg0.textshadow:setAlpha( 0 ) --[[ @ 0]]
			f18_local1( f18_arg0.textshadow ) --[[ @ 0]]
			local f18_local2 = function ( f21_arg0 )
				f18_arg0.text:beginAnimation( 1000 ) --[[ @ 0]]
				f18_arg0.text:setAlpha( 0 ) --[[ @ 0]]
				f18_arg0.text:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.text:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.text:completeAnimation() --[[ @ 0]]
			f18_arg0.text:setTopBottom( 0, 0, 317, 353 ) --[[ @ 0]]
			f18_arg0.text:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
			f18_arg0.text:setAlpha( 1 ) --[[ @ 0]]
			f18_local2( f18_arg0.text ) --[[ @ 0]]
		end
	},
	warnHeal = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.backing:beginAnimation( 290 ) --[[ @ 0]]
				f22_arg0.backing:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.backing:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.backing:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.backing:completeAnimation() --[[ @ 0]]
			f22_arg0.backing:setAlpha( 0 ) --[[ @ 0]]
			f22_local0( f22_arg0.backing ) --[[ @ 0]]
			local f22_local1 = function ( f24_arg0 )
				local f24_local0 = function ( f25_arg0 )
					f25_arg0:beginAnimation( 60 ) --[[ @ 0]]
					f25_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f25_arg0:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f22_arg0.textshadow:beginAnimation( 290 ) --[[ @ 0]]
				f22_arg0.textshadow:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.textshadow:setScale( 1.2, 1.2 ) --[[ @ 0]]
				f22_arg0.textshadow:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.textshadow:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.textshadow:completeAnimation() --[[ @ 0]]
			f22_arg0.textshadow:setTopBottom( 0, 0, 263, 299 ) --[[ @ 0]]
			f22_arg0.textshadow:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.textshadow:setScale( 0.01, 0.01 ) --[[ @ 0]]
			f22_local1( f22_arg0.textshadow ) --[[ @ 0]]
			local f22_local2 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					f27_arg0:beginAnimation( 60 ) --[[ @ 0]]
					f27_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f22_arg0.text:beginAnimation( 290 ) --[[ @ 0]]
				f22_arg0.text:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.text:setScale( 1.2, 1.2 ) --[[ @ 0]]
				f22_arg0.text:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.text:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.text:completeAnimation() --[[ @ 0]]
			f22_arg0.text:setTopBottom( 0, 0, 262, 298 ) --[[ @ 0]]
			f22_arg0.text:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
			f22_arg0.text:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.text:setScale( 0.01, 0.01 ) --[[ @ 0]]
			f22_local2( f22_arg0.text ) --[[ @ 0]]
		end
	},
	warnHeal_cycle1 = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f28_arg0.backing:completeAnimation() --[[ @ 0]]
			f28_arg0.backing:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.backing ) --[[ @ 0]]
			local f28_local0 = function ( f29_arg0 )
				local f29_local0 = function ( f30_arg0 )
					f30_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f30_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f30_arg0:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f28_arg0.textshadow:beginAnimation( 500 ) --[[ @ 0]]
				f28_arg0.textshadow:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f28_arg0.textshadow:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.textshadow:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.textshadow:completeAnimation() --[[ @ 0]]
			f28_arg0.textshadow:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.textshadow:setScale( 1, 1 ) --[[ @ 0]]
			f28_local0( f28_arg0.textshadow ) --[[ @ 0]]
			local f28_local1 = function ( f31_arg0 )
				local f31_local0 = function ( f32_arg0 )
					f32_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f32_arg0:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
					f32_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f32_arg0:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f28_arg0.text:beginAnimation( 500 ) --[[ @ 0]]
				f28_arg0.text:setRGB( ColorSet.White.r, ColorSet.White.g, ColorSet.White.b ) --[[ @ 0]]
				f28_arg0.text:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f28_arg0.text:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.text:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.text:completeAnimation() --[[ @ 0]]
			f28_arg0.text:setTopBottom( 0, 0, 262, 298 ) --[[ @ 0]]
			f28_arg0.text:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
			f28_arg0.text:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.text:setXRot( 0 ) --[[ @ 0]]
			f28_arg0.text:setScale( 1, 1 ) --[[ @ 0]]
			f28_local1( f28_arg0.text ) --[[ @ 0]]
		end
	},
	warnHeal_cycle2 = {
		DefaultClip = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f33_arg0.backing:completeAnimation() --[[ @ 0]]
			f33_arg0.backing:setAlpha( 1 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.backing ) --[[ @ 0]]
			local f33_local0 = function ( f34_arg0 )
				local f34_local0 = function ( f35_arg0 )
					f35_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f35_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f35_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.textshadow:beginAnimation( 500 ) --[[ @ 0]]
				f33_arg0.textshadow:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f33_arg0.textshadow:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.textshadow:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.textshadow:completeAnimation() --[[ @ 0]]
			f33_arg0.textshadow:setAlpha( 1 ) --[[ @ 0]]
			f33_arg0.textshadow:setScale( 1, 1 ) --[[ @ 0]]
			f33_local0( f33_arg0.textshadow ) --[[ @ 0]]
			local f33_local1 = function ( f36_arg0 )
				local f36_local0 = function ( f37_arg0 )
					f37_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f37_arg0:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
					f37_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f37_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.text:beginAnimation( 500 ) --[[ @ 0]]
				f33_arg0.text:setRGB( ColorSet.White.r, ColorSet.White.g, ColorSet.White.b ) --[[ @ 0]]
				f33_arg0.text:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f33_arg0.text:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.text:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.text:completeAnimation() --[[ @ 0]]
			f33_arg0.text:setTopBottom( 0, 0, 262, 298 ) --[[ @ 0]]
			f33_arg0.text:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
			f33_arg0.text:setAlpha( 1 ) --[[ @ 0]]
			f33_arg0.text:setXRot( 0 ) --[[ @ 0]]
			f33_arg0.text:setScale( 1, 1 ) --[[ @ 0]]
			f33_local1( f33_arg0.text ) --[[ @ 0]]
		end
	},
	warnHeal_timer_on_cycle1 = {
		DefaultClip = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f38_arg0.backing:completeAnimation() --[[ @ 0]]
			f38_arg0.backing:setTopBottom( 0, 0, 317, 353 ) --[[ @ 0]]
			f38_arg0.backing:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.backing ) --[[ @ 0]]
			local f38_local0 = function ( f39_arg0 )
				local f39_local0 = function ( f40_arg0 )
					f40_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f40_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f40_arg0:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f38_arg0.textshadow:beginAnimation( 500 ) --[[ @ 0]]
				f38_arg0.textshadow:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f38_arg0.textshadow:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.textshadow:registerEventHandler( "transition_complete_keyframe", f39_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.textshadow:completeAnimation() --[[ @ 0]]
			f38_arg0.textshadow:setTopBottom( 0, 0, 318, 354 ) --[[ @ 0]]
			f38_arg0.textshadow:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.textshadow:setScale( 1, 1 ) --[[ @ 0]]
			f38_local0( f38_arg0.textshadow ) --[[ @ 0]]
			local f38_local1 = function ( f41_arg0 )
				local f41_local0 = function ( f42_arg0 )
					f42_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f42_arg0:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
					f42_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f42_arg0:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f38_arg0.text:beginAnimation( 500 ) --[[ @ 0]]
				f38_arg0.text:setRGB( ColorSet.White.r, ColorSet.White.g, ColorSet.White.b ) --[[ @ 0]]
				f38_arg0.text:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f38_arg0.text:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.text:registerEventHandler( "transition_complete_keyframe", f41_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.text:completeAnimation() --[[ @ 0]]
			f38_arg0.text:setTopBottom( 0, 0, 317, 353 ) --[[ @ 0]]
			f38_arg0.text:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
			f38_arg0.text:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.text:setXRot( 0 ) --[[ @ 0]]
			f38_arg0.text:setScale( 1, 1 ) --[[ @ 0]]
			f38_local1( f38_arg0.text ) --[[ @ 0]]
		end
	},
	warnHeal_timer_on_cycle2 = {
		DefaultClip = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f43_arg0.backing:completeAnimation() --[[ @ 0]]
			f43_arg0.backing:setTopBottom( 0, 0, 317, 353 ) --[[ @ 0]]
			f43_arg0.backing:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.backing ) --[[ @ 0]]
			local f43_local0 = function ( f44_arg0 )
				local f44_local0 = function ( f45_arg0 )
					f45_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f45_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f45_arg0:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f43_arg0.textshadow:beginAnimation( 500 ) --[[ @ 0]]
				f43_arg0.textshadow:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f43_arg0.textshadow:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.textshadow:registerEventHandler( "transition_complete_keyframe", f44_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.textshadow:completeAnimation() --[[ @ 0]]
			f43_arg0.textshadow:setTopBottom( 0, 0, 318, 354 ) --[[ @ 0]]
			f43_arg0.textshadow:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.textshadow:setScale( 1, 1 ) --[[ @ 0]]
			f43_local0( f43_arg0.textshadow ) --[[ @ 0]]
			local f43_local1 = function ( f46_arg0 )
				local f46_local0 = function ( f47_arg0 )
					f47_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f47_arg0:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
					f47_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f47_arg0:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f43_arg0.text:beginAnimation( 500 ) --[[ @ 0]]
				f43_arg0.text:setRGB( ColorSet.White.r, ColorSet.White.g, ColorSet.White.b ) --[[ @ 0]]
				f43_arg0.text:setScale( 0.9, 0.9 ) --[[ @ 0]]
				f43_arg0.text:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.text:registerEventHandler( "transition_complete_keyframe", f46_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.text:completeAnimation() --[[ @ 0]]
			f43_arg0.text:setTopBottom( 0, 0, 317, 353 ) --[[ @ 0]]
			f43_arg0.text:setRGB( ColorSet.T8__GOLD.r, ColorSet.T8__GOLD.g, ColorSet.T8__GOLD.b ) --[[ @ 0]]
			f43_arg0.text:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.text:setXRot( 0 ) --[[ @ 0]]
			f43_arg0.text:setScale( 1, 1 ) --[[ @ 0]]
			f43_local1( f43_arg0.text ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ct_shared_warning.__onClose = function ( f48_arg0 )
	
end
 --[[ @ 0]]
