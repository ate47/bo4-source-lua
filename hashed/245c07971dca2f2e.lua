-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.codcaster_player_portrait_frames = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.codcaster_player_portrait_frames.__defaultWidth = 132 --[[ @ 0]]
CoD.codcaster_player_portrait_frames.__defaultHeight = 156 --[[ @ 0]]
CoD.codcaster_player_portrait_frames.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.codcaster_player_portrait_frames ) --[[ @ 0]]
	self.id = "codcaster_player_portrait_frames" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local frameLarge = LUI.UIImage.new( 0, 0, 0, 132, 0, 0, 0, 156 ) --[[ @ 0]]
	frameLarge:setAlpha( 0 ) --[[ @ 0]]
	frameLarge:setImage( RegisterImage( @"hash_5C8D12F1E779001C" ) ) --[[ @ 0]]
	frameLarge:linkToElementModel( self, "clientNum", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			frameLarge:setRGB( TeamColorFromPlayerIndex( f1_arg1, f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( frameLarge ) --[[ @ 0]]
	self.frameLarge = frameLarge --[[ @ 0]]
	
	local frameLargeDead = LUI.UIImage.new( 0, 0, 0, 132, 0, 0, 0, 156 ) --[[ @ 0]]
	frameLargeDead:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	frameLargeDead:setAlpha( 0 ) --[[ @ 0]]
	frameLargeDead:setImage( RegisterImage( @"hash_5C8D12F1E779001C" ) ) --[[ @ 0]]
	self:addElement( frameLargeDead ) --[[ @ 0]]
	self.frameLargeDead = frameLargeDead --[[ @ 0]]
	
	local frameMedium = LUI.UIImage.new( 0.5, 0.5, -66, 66, 0, 0, 0, 124 ) --[[ @ 0]]
	frameMedium:setAlpha( 0 ) --[[ @ 0]]
	frameMedium:setImage( RegisterImage( @"hash_1E36BFACD2F7ECBC" ) ) --[[ @ 0]]
	frameMedium:linkToElementModel( self, "clientNum", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			frameMedium:setRGB( TeamColorFromPlayerIndex( f1_arg1, f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( frameMedium ) --[[ @ 0]]
	self.frameMedium = frameMedium --[[ @ 0]]
	
	local frameMediumDead = LUI.UIImage.new( 0.5, 0.5, -66, 66, 0, 0, 0, 124 ) --[[ @ 0]]
	frameMediumDead:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	frameMediumDead:setAlpha( 0 ) --[[ @ 0]]
	frameMediumDead:setImage( RegisterImage( @"hash_1E36BFACD2F7ECBC" ) ) --[[ @ 0]]
	self:addElement( frameMediumDead ) --[[ @ 0]]
	self.frameMediumDead = frameMediumDead --[[ @ 0]]
	
	local frameSmall = LUI.UIImage.new( 0, 0, 0, 132, 0, 0, 0, 92 ) --[[ @ 0]]
	frameSmall:setImage( RegisterImage( @"hash_2CF38A5FC3EF32E4" ) ) --[[ @ 0]]
	frameSmall:linkToElementModel( self, "clientNum", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			frameSmall:setRGB( TeamColorFromPlayerIndex( f1_arg1, f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( frameSmall ) --[[ @ 0]]
	self.frameSmall = frameSmall --[[ @ 0]]
	
	local frameSmallDead = LUI.UIImage.new( 0, 0, 0, 132, 0, 0, 0, 92 ) --[[ @ 0]]
	frameSmallDead:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	frameSmallDead:setAlpha( 0 ) --[[ @ 0]]
	frameSmallDead:setImage( RegisterImage( @"hash_2CF38A5FC3EF32E4" ) ) --[[ @ 0]]
	self:addElement( frameSmallDead ) --[[ @ 0]]
	self.frameSmallDead = frameSmallDead --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "fullDead",
			condition = function ( menu, element, event )
				local f5_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_scorestreaks", 1 ) --[[ @ 0]]
				if f5_local0 then
					f5_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_stats", 1 ) --[[ @ 0]]
					if f5_local0 then
						if not CoD.HUDUtility.IsGameTypeEqualToString( "bounty" ) then
							f5_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "health.healthValue", 0 ) --[[ @ 0]]
						else
							f5_local0 = false --[[ @ 0]]
						end
					end
				end
				return f5_local0
			end
		},
		{
			stateName = "fullheistDead",
			condition = function ( menu, element, event )
				local f6_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_stats", 1 ) --[[ @ 0]]
				if f6_local0 then
					f6_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_scorestreaks", 1 ) --[[ @ 0]]
					if f6_local0 then
						f6_local0 = CoD.HUDUtility.IsGameTypeEqualToString( "bounty" ) --[[ @ 0]]
						if f6_local0 then
							f6_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "health.healthValue", 0 ) --[[ @ 0]]
						end
					end
				end
				return f6_local0
			end
		},
		{
			stateName = "mediumstreakDead",
			condition = function ( menu, element, event )
				local f7_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_scorestreaks", 1 ) --[[ @ 0]]
				if f7_local0 then
					f7_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_stats", 0 ) --[[ @ 0]]
					if f7_local0 then
						if not CoD.HUDUtility.IsGameTypeEqualToString( "bounty" ) then
							f7_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "health.healthValue", 0 ) --[[ @ 0]]
						else
							f7_local0 = false --[[ @ 0]]
						end
					end
				end
				return f7_local0
			end
		},
		{
			stateName = "mediuminfoDead",
			condition = function ( menu, element, event )
				local f8_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_stats", 1 ) --[[ @ 0]]
				if f8_local0 then
					f8_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_scorestreaks", 0 ) --[[ @ 0]]
					if f8_local0 then
						f8_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "health.healthValue", 0 ) --[[ @ 0]]
					end
				end
				return f8_local0
			end
		},
		{
			stateName = "full",
			condition = function ( menu, element, event )
				local f9_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_scorestreaks", 1 ) --[[ @ 0]]
				if f9_local0 then
					f9_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_stats", 1 ) --[[ @ 0]]
					if f9_local0 then
						f9_local0 = not CoD.HUDUtility.IsGameTypeEqualToString( "bounty" ) --[[ @ 0]]
					end
				end
				return f9_local0
			end
		},
		{
			stateName = "fullheist",
			condition = function ( menu, element, event )
				local f10_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_stats", 1 ) --[[ @ 0]]
				if f10_local0 then
					f10_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_scorestreaks", 1 ) --[[ @ 0]]
					if f10_local0 then
						f10_local0 = CoD.HUDUtility.IsGameTypeEqualToString( "bounty" ) --[[ @ 0]]
					end
				end
				return f10_local0
			end
		},
		{
			stateName = "mediumstreak",
			condition = function ( menu, element, event )
				local f11_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_scorestreaks", 1 ) --[[ @ 0]]
				if f11_local0 then
					f11_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_stats", 0 ) --[[ @ 0]]
					if f11_local0 then
						f11_local0 = not CoD.HUDUtility.IsGameTypeEqualToString( "bounty" ) --[[ @ 0]]
					end
				end
				return f11_local0
			end
		},
		{
			stateName = "mediuminfo",
			condition = function ( menu, element, event )
				return IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_stats", 1 ) and IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_portrait_scorestreaks", 0 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local7 = self --[[ @ 0]]
	local f1_local8 = self.subscribeToModel --[[ @ 0]]
	local f1_local9 = DataSources.CodCaster.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.profileSettingsUpdated, function ( f13_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "profileSettingsUpdated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "health.healthValue", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "health.healthValue"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.codcaster_player_portrait_frames.__resetProperties = function ( f15_arg0 )
	f15_arg0.frameSmall:completeAnimation() --[[ @ 0]]
	f15_arg0.frameLarge:completeAnimation() --[[ @ 0]]
	f15_arg0.frameLargeDead:completeAnimation() --[[ @ 0]]
	f15_arg0.frameMedium:completeAnimation() --[[ @ 0]]
	f15_arg0.frameMediumDead:completeAnimation() --[[ @ 0]]
	f15_arg0.frameSmall:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.frameLarge:setAlpha( 0 ) --[[ @ 0]]
	f15_arg0.frameLargeDead:setAlpha( 0 ) --[[ @ 0]]
	f15_arg0.frameMedium:setAlpha( 0 ) --[[ @ 0]]
	f15_arg0.frameMediumDead:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.codcaster_player_portrait_frames.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.frameSmall:completeAnimation() --[[ @ 0]]
			f16_arg0.frameSmall:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.frameSmall ) --[[ @ 0]]
		end
	},
	fullDead = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f17_arg0.frameLarge:completeAnimation() --[[ @ 0]]
			f17_arg0.frameLarge:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.frameLarge ) --[[ @ 0]]
			f17_arg0.frameLargeDead:completeAnimation() --[[ @ 0]]
			f17_arg0.frameLargeDead:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.frameLargeDead ) --[[ @ 0]]
			f17_arg0.frameSmall:completeAnimation() --[[ @ 0]]
			f17_arg0.frameSmall:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.frameSmall ) --[[ @ 0]]
		end
	},
	fullheistDead = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f18_arg0.frameMedium:completeAnimation() --[[ @ 0]]
			f18_arg0.frameMedium:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.frameMedium ) --[[ @ 0]]
			f18_arg0.frameMediumDead:completeAnimation() --[[ @ 0]]
			f18_arg0.frameMediumDead:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.frameMediumDead ) --[[ @ 0]]
			f18_arg0.frameSmall:completeAnimation() --[[ @ 0]]
			f18_arg0.frameSmall:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.frameSmall ) --[[ @ 0]]
		end
	},
	mediumstreakDead = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f19_arg0.frameMedium:completeAnimation() --[[ @ 0]]
			f19_arg0.frameMedium:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.frameMedium ) --[[ @ 0]]
			f19_arg0.frameMediumDead:completeAnimation() --[[ @ 0]]
			f19_arg0.frameMediumDead:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.frameMediumDead ) --[[ @ 0]]
			f19_arg0.frameSmall:completeAnimation() --[[ @ 0]]
			f19_arg0.frameSmall:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.frameSmall ) --[[ @ 0]]
		end
	},
	mediuminfoDead = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f20_arg0.frameMedium:completeAnimation() --[[ @ 0]]
			f20_arg0.frameMedium:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.frameMedium ) --[[ @ 0]]
			f20_arg0.frameMediumDead:completeAnimation() --[[ @ 0]]
			f20_arg0.frameMediumDead:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.frameMediumDead ) --[[ @ 0]]
			f20_arg0.frameSmall:completeAnimation() --[[ @ 0]]
			f20_arg0.frameSmall:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.frameSmall ) --[[ @ 0]]
		end
	},
	full = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f21_arg0.frameLarge:completeAnimation() --[[ @ 0]]
			f21_arg0.frameLarge:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.frameLarge ) --[[ @ 0]]
			f21_arg0.frameSmall:completeAnimation() --[[ @ 0]]
			f21_arg0.frameSmall:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.frameSmall ) --[[ @ 0]]
		end
	},
	fullheist = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f22_arg0.frameMedium:completeAnimation() --[[ @ 0]]
			f22_arg0.frameMedium:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.frameMedium ) --[[ @ 0]]
			f22_arg0.frameSmall:completeAnimation() --[[ @ 0]]
			f22_arg0.frameSmall:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.frameSmall ) --[[ @ 0]]
		end
	},
	mediumstreak = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f23_arg0.frameMedium:completeAnimation() --[[ @ 0]]
			f23_arg0.frameMedium:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.frameMedium ) --[[ @ 0]]
			f23_arg0.frameSmall:completeAnimation() --[[ @ 0]]
			f23_arg0.frameSmall:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.frameSmall ) --[[ @ 0]]
		end
	},
	mediuminfo = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f24_arg0.frameMedium:completeAnimation() --[[ @ 0]]
			f24_arg0.frameMedium:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.frameMedium ) --[[ @ 0]]
			f24_arg0.frameSmall:completeAnimation() --[[ @ 0]]
			f24_arg0.frameSmall:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.frameSmall ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.codcaster_player_portrait_frames.__onClose = function ( f25_arg0 )
	f25_arg0.frameLarge:close() --[[ @ 0]]
	f25_arg0.frameMedium:close() --[[ @ 0]]
	f25_arg0.frameSmall:close() --[[ @ 0]]
end
 --[[ @ 0]]
