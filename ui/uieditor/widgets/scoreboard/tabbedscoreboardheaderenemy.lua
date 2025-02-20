-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.TabbedScoreboardHeaderEnemy = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabbedScoreboardHeaderEnemy.__defaultWidth = 740 --[[ @ 0]]
CoD.TabbedScoreboardHeaderEnemy.__defaultHeight = 133 --[[ @ 0]]
CoD.TabbedScoreboardHeaderEnemy.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabbedScoreboardHeaderEnemy ) --[[ @ 0]]
	self.id = "TabbedScoreboardHeaderEnemy" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local EnemeyBacking = LUI.UIImage.new( 0.5, 0.5, -332, 356, 0, 0, 0, 92 ) --[[ @ 0]]
	EnemeyBacking:setYRot( 180 ) --[[ @ 0]]
	EnemeyBacking:setImage( RegisterImage( @"hash_6F98FF610AB331DA" ) ) --[[ @ 0]]
	EnemeyBacking:subscribeToGlobalModel( f1_arg1, "Factions", "axisFactionColor", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			EnemeyBacking:setRGB( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( EnemeyBacking ) --[[ @ 0]]
	self.EnemeyBacking = EnemeyBacking --[[ @ 0]]
	
	local EnemeyBackingAnim = LUI.UIImage.new( 0.5, 0.5, -332, 356, 0, 0, 0, 92 ) --[[ @ 0]]
	EnemeyBackingAnim:setAlpha( 0.1 ) --[[ @ 0]]
	EnemeyBackingAnim:setYRot( 180 ) --[[ @ 0]]
	EnemeyBackingAnim:setImage( RegisterImage( @"hash_6F98FF610AB331DA" ) ) --[[ @ 0]]
	EnemeyBackingAnim:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	EnemeyBackingAnim:subscribeToGlobalModel( f1_arg1, "Factions", "axisFactionColor", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			EnemeyBackingAnim:setRGB( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( EnemeyBackingAnim ) --[[ @ 0]]
	self.EnemeyBackingAnim = EnemeyBackingAnim --[[ @ 0]]
	
	local EnemyBotLineGlowAnim = LUI.UIImage.new( 0, 0, 0, 740, 0, 0, 43, 133 ) --[[ @ 0]]
	EnemyBotLineGlowAnim:setAlpha( 0.5 ) --[[ @ 0]]
	EnemyBotLineGlowAnim:setYRot( 180 ) --[[ @ 0]]
	EnemyBotLineGlowAnim:setImage( RegisterImage( @"hash_429B69305A070EF5" ) ) --[[ @ 0]]
	EnemyBotLineGlowAnim:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	EnemyBotLineGlowAnim:subscribeToGlobalModel( f1_arg1, "Factions", "axisFactionColor", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			EnemyBotLineGlowAnim:setRGB( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( EnemyBotLineGlowAnim ) --[[ @ 0]]
	self.EnemyBotLineGlowAnim = EnemyBotLineGlowAnim --[[ @ 0]]
	
	local EnemyBotLine = LUI.UIImage.new( 0, 0, 36, 726, 0, 0, 83, 93 ) --[[ @ 0]]
	EnemyBotLine:setYRot( 180 ) --[[ @ 0]]
	EnemyBotLine:setImage( RegisterImage( @"hash_4CE30EC2995B2373" ) ) --[[ @ 0]]
	EnemyBotLine:subscribeToGlobalModel( f1_arg1, "Factions", "axisFactionColor", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			EnemyBotLine:setRGB( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( EnemyBotLine ) --[[ @ 0]]
	self.EnemyBotLine = EnemyBotLine --[[ @ 0]]
	
	local EnemyBotLineGlow = LUI.UIImage.new( 0, 0, 0, 740, 0, 0, 43, 133 ) --[[ @ 0]]
	EnemyBotLineGlow:setAlpha( 0.5 ) --[[ @ 0]]
	EnemyBotLineGlow:setYRot( 180 ) --[[ @ 0]]
	EnemyBotLineGlow:setImage( RegisterImage( @"hash_429B69305A070EF5" ) ) --[[ @ 0]]
	EnemyBotLineGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	EnemyBotLineGlow:subscribeToGlobalModel( f1_arg1, "Factions", "axisFactionColor", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			EnemyBotLineGlow:setRGB( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( EnemyBotLineGlow ) --[[ @ 0]]
	self.EnemyBotLineGlow = EnemyBotLineGlow --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.TabbedScoreboardHeaderEnemy.__resetProperties = function ( f7_arg0 )
	f7_arg0.EnemyBotLineGlowAnim:completeAnimation() --[[ @ 0]]
	f7_arg0.EnemeyBackingAnim:completeAnimation() --[[ @ 0]]
	f7_arg0.EnemyBotLineGlowAnim:setAlpha( 0.5 ) --[[ @ 0]]
	f7_arg0.EnemeyBackingAnim:setAlpha( 0.1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabbedScoreboardHeaderEnemy.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					local f10_local0 = function ( f11_arg0 )
						local f11_local0 = function ( f12_arg0 )
							f12_arg0:beginAnimation( 1000 ) --[[ @ 0]]
							f12_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f11_arg0:beginAnimation( 1100 ) --[[ @ 0]]
						f11_arg0:setAlpha( 0.1 ) --[[ @ 0]]
						f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f10_arg0:beginAnimation( 799 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.EnemeyBackingAnim:beginAnimation( 1100 ) --[[ @ 0]]
				f8_arg0.EnemeyBackingAnim:setAlpha( 0.8 ) --[[ @ 0]]
				f8_arg0.EnemeyBackingAnim:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.EnemeyBackingAnim:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.EnemeyBackingAnim:completeAnimation() --[[ @ 0]]
			f8_arg0.EnemeyBackingAnim:setAlpha( 0.1 ) --[[ @ 0]]
			f8_local0( f8_arg0.EnemeyBackingAnim ) --[[ @ 0]]
			local f8_local1 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					local f14_local0 = function ( f15_arg0 )
						local f15_local0 = function ( f16_arg0 )
							f16_arg0:beginAnimation( 1000 ) --[[ @ 0]]
							f16_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f15_arg0:beginAnimation( 1200 ) --[[ @ 0]]
						f15_arg0:setAlpha( 0 ) --[[ @ 0]]
						f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f14_arg0:beginAnimation( 599 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.EnemyBotLineGlowAnim:beginAnimation( 1200 ) --[[ @ 0]]
				f8_arg0.EnemyBotLineGlowAnim:setAlpha( 0.9 ) --[[ @ 0]]
				f8_arg0.EnemyBotLineGlowAnim:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.EnemyBotLineGlowAnim:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.EnemyBotLineGlowAnim:completeAnimation() --[[ @ 0]]
			f8_arg0.EnemyBotLineGlowAnim:setAlpha( 0 ) --[[ @ 0]]
			f8_local1( f8_arg0.EnemyBotLineGlowAnim ) --[[ @ 0]]
			f8_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.TabbedScoreboardHeaderEnemy.__onClose = function ( f17_arg0 )
	f17_arg0.EnemeyBacking:close() --[[ @ 0]]
	f17_arg0.EnemeyBackingAnim:close() --[[ @ 0]]
	f17_arg0.EnemyBotLineGlowAnim:close() --[[ @ 0]]
	f17_arg0.EnemyBotLine:close() --[[ @ 0]]
	f17_arg0.EnemyBotLineGlow:close() --[[ @ 0]]
end
 --[[ @ 0]]
