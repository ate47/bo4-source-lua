-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.ScoreboardPlayerWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreboardPlayerWidget.__defaultWidth = 86 --[[ @ 0]]
CoD.ScoreboardPlayerWidget.__defaultHeight = 60 --[[ @ 0]]
CoD.ScoreboardPlayerWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreboardPlayerWidget ) --[[ @ 0]]
	self.id = "ScoreboardPlayerWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BGBlue = LUI.UIImage.new( 0.5, 0.5, -43, 43, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	BGBlue:setAlpha( 0 ) --[[ @ 0]]
	BGBlue:setImage( RegisterImage( @"hash_2ED0AEB8D8F30C1D" ) ) --[[ @ 0]]
	BGBlue:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	BGBlue:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	BGBlue:subscribeToGlobalModel( f1_arg1, "Factions", "alliesFactionColor", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			BGBlue:setRGB( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BGBlue ) --[[ @ 0]]
	self.BGBlue = BGBlue --[[ @ 0]]
	
	local BGRed = LUI.UIImage.new( 0.5, 0.5, -43, 43, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	BGRed:setAlpha( 0 ) --[[ @ 0]]
	BGRed:setImage( RegisterImage( @"hash_2ED0AEB8D8F30C1D" ) ) --[[ @ 0]]
	BGRed:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	BGRed:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	BGRed:subscribeToGlobalModel( f1_arg1, "Factions", "axisFactionColor", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			BGRed:setRGB( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BGRed ) --[[ @ 0]]
	self.BGRed = BGRed --[[ @ 0]]
	
	local BGBueSelected = LUI.UIImage.new( 0.5, 0.5, -43, 43, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	BGBueSelected:setAlpha( 0 ) --[[ @ 0]]
	BGBueSelected:setImage( RegisterImage( @"hash_773562CFCEF8AD77" ) ) --[[ @ 0]]
	BGBueSelected:subscribeToGlobalModel( f1_arg1, "Factions", "alliesFactionColor", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			BGBueSelected:setRGB( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BGBueSelected ) --[[ @ 0]]
	self.BGBueSelected = BGBueSelected --[[ @ 0]]
	
	local BGBueOverlay = LUI.UIImage.new( 0.5, 0.5, -43, 43, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	BGBueOverlay:setAlpha( 0 ) --[[ @ 0]]
	BGBueOverlay:setImage( RegisterImage( @"hash_773562CFCEF8AD77" ) ) --[[ @ 0]]
	BGBueOverlay:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	BGBueOverlay:subscribeToGlobalModel( f1_arg1, "Factions", "alliesFactionColor", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			BGBueOverlay:setRGB( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BGBueOverlay ) --[[ @ 0]]
	self.BGBueOverlay = BGBueOverlay --[[ @ 0]]
	
	local BGRedSelected = LUI.UIImage.new( 0.5, 0.5, -43, 43, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	BGRedSelected:setAlpha( 0 ) --[[ @ 0]]
	BGRedSelected:setImage( RegisterImage( @"hash_773562CFCEF8AD77" ) ) --[[ @ 0]]
	BGRedSelected:subscribeToGlobalModel( f1_arg1, "Factions", "axisFactionColor", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			BGRedSelected:setRGB( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BGRedSelected ) --[[ @ 0]]
	self.BGRedSelected = BGRedSelected --[[ @ 0]]
	
	local BGRedOverlay = LUI.UIImage.new( 0.5, 0.5, -43, 43, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	BGRedOverlay:setAlpha( 0 ) --[[ @ 0]]
	BGRedOverlay:setImage( RegisterImage( @"hash_773562CFCEF8AD77" ) ) --[[ @ 0]]
	BGRedOverlay:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	BGRedOverlay:subscribeToGlobalModel( f1_arg1, "Factions", "axisFactionColor", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			BGRedOverlay:setRGB( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BGRedOverlay ) --[[ @ 0]]
	self.BGRedOverlay = BGRedOverlay --[[ @ 0]]
	
	local PlayerIcon = LUI.UIImage.new( 0, 0, -5, 93, 0, 0, -16.5, 69.5 ) --[[ @ 0]]
	PlayerIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	PlayerIcon:setShaderVector( 0, 0.05, 0.93, 0, 0 ) --[[ @ 0]]
	PlayerIcon:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	PlayerIcon:setShaderVector( 2, 0.19, 0.89, 0, 0 ) --[[ @ 0]]
	PlayerIcon:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	PlayerIcon:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	PlayerIcon:linkToElementModel( self, "scoreboard.characterIndex", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			PlayerIcon:setImage( RegisterImage( GetPositionDraftIconByIndex( f8_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlayerIcon ) --[[ @ 0]]
	self.PlayerIcon = PlayerIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Self",
			condition = function ( menu, element, event )
				return IsSelfClient( f1_arg1, element ) and not IsCodCaster( f1_arg1 )
			end
		},
		{
			stateName = "Enemy",
			condition = function ( menu, element, event )
				local f10_local0 --[[ @ 0]]
				if not CoD.ModelUtility.IsSelfModelValueEqualToSelfTeam( element, f1_arg1, "team" ) then
					f10_local0 = not IsCodCaster( f1_arg1 ) --[[ @ 0]]
				else
					f10_local0 = false --[[ @ 0]]
				end
				return f10_local0
			end
		},
		{
			stateName = "CodcasterTeam1",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "team", Enum[@"team_t"][@"team_allies"] ) and IsCodCaster( f1_arg1 )
			end
		},
		{
			stateName = "CodcasterTeam2",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "team", Enum[@"team_t"][@"team_axis"] ) and IsCodCaster( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "clientNum", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clientNum"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["factions.isCoDCaster"], function ( f14_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "factions.isCoDCaster"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "team", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "team"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ScoreboardPlayerWidget.__resetProperties = function ( f16_arg0 )
	f16_arg0.BGBlue:completeAnimation() --[[ @ 0]]
	f16_arg0.BGRed:completeAnimation() --[[ @ 0]]
	f16_arg0.BGBlue:setAlpha( 0 ) --[[ @ 0]]
	f16_arg0.BGRed:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScoreboardPlayerWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.BGBlue:completeAnimation() --[[ @ 0]]
			f17_arg0.BGBlue:setAlpha( 0.75 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.BGBlue ) --[[ @ 0]]
		end
	},
	Self = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.BGBlue:completeAnimation() --[[ @ 0]]
			f18_arg0.BGBlue:setAlpha( 0.75 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.BGBlue ) --[[ @ 0]]
		end
	},
	Enemy = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f19_arg0.BGRed:completeAnimation() --[[ @ 0]]
			f19_arg0.BGRed:setAlpha( 0.75 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.BGRed ) --[[ @ 0]]
		end
	},
	CodcasterTeam1 = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f20_arg0.BGBlue:completeAnimation() --[[ @ 0]]
			f20_arg0.BGBlue:setAlpha( 0.75 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.BGBlue ) --[[ @ 0]]
		end
	},
	CodcasterTeam2 = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f21_arg0.BGRed:completeAnimation() --[[ @ 0]]
			f21_arg0.BGRed:setAlpha( 0.75 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.BGRed ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ScoreboardPlayerWidget.__onClose = function ( f22_arg0 )
	f22_arg0.BGBlue:close() --[[ @ 0]]
	f22_arg0.BGRed:close() --[[ @ 0]]
	f22_arg0.BGBueSelected:close() --[[ @ 0]]
	f22_arg0.BGBueOverlay:close() --[[ @ 0]]
	f22_arg0.BGRedSelected:close() --[[ @ 0]]
	f22_arg0.BGRedOverlay:close() --[[ @ 0]]
	f22_arg0.PlayerIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
