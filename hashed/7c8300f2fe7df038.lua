-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/aar_t8/summary/aarperformancebg" ) --[[ @ 0]]

CoD.AARKillsWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARKillsWidget.__defaultWidth = 415 --[[ @ 0]]
CoD.AARKillsWidget.__defaultHeight = 132 --[[ @ 0]]
CoD.AARKillsWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARKillsWidget ) --[[ @ 0]]
	self.id = "AARKillsWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PerformBg = CoD.AARPerformanceBg.new( f1_arg0, f1_arg1, 0, 0, 0, 415, 0, 0, 0, 132 ) --[[ @ 0]]
	self:addElement( PerformBg ) --[[ @ 0]]
	self.PerformBg = PerformBg --[[ @ 0]]
	
	local KillsLabel = LUI.UIText.new( 0, 0, 18, 311, 0, 0, 12, 33 ) --[[ @ 0]]
	KillsLabel:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	KillsLabel:setAlpha( 0.2 ) --[[ @ 0]]
	KillsLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"aar/kills" ) ) --[[ @ 0]]
	KillsLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	KillsLabel:setLetterSpacing( 2 ) --[[ @ 0]]
	KillsLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	KillsLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( KillsLabel ) --[[ @ 0]]
	self.KillsLabel = KillsLabel --[[ @ 0]]
	
	local KillsGlow = LUI.UIText.new( 0, 0, 21, 200, 0, 0, 42, 122 ) --[[ @ 0]]
	KillsGlow:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	KillsGlow:setAlpha( 0.4 ) --[[ @ 0]]
	KillsGlow:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	KillsGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	KillsGlow:setShaderVector( 0, 0.3, 0, 0, 0 ) --[[ @ 0]]
	KillsGlow:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	KillsGlow:setShaderVector( 2, 1, 0, 0, 0.8 ) --[[ @ 0]]
	KillsGlow:setLetterSpacing( 2 ) --[[ @ 0]]
	KillsGlow:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	KillsGlow:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	KillsGlow:linkToElementModel( self, "kills", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			KillsGlow:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( KillsGlow ) --[[ @ 0]]
	self.KillsGlow = KillsGlow --[[ @ 0]]
	
	local Kills = LUI.UIText.new( 0, 0, 21, 200, 0, 0, 42, 122 ) --[[ @ 0]]
	Kills:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	Kills:setAlpha( 0.8 ) --[[ @ 0]]
	Kills:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Kills:setLetterSpacing( 2 ) --[[ @ 0]]
	Kills:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Kills:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Kills:linkToElementModel( self, "kills", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Kills:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Kills ) --[[ @ 0]]
	self.Kills = Kills --[[ @ 0]]
	
	local FinishesLabel = LUI.UIText.new( 0, 0, 170, 425, 0, 0, 57, 78 ) --[[ @ 0]]
	FinishesLabel:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	FinishesLabel:setAlpha( 0.25 ) --[[ @ 0]]
	FinishesLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_25BBC8944B6945C7" ) ) --[[ @ 0]]
	FinishesLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	FinishesLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	FinishesLabel:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( FinishesLabel ) --[[ @ 0]]
	self.FinishesLabel = FinishesLabel --[[ @ 0]]
	
	local Finishes = LUI.UIText.new( 0, 0, 104.5, 164.5, 0, 0, 57, 78 ) --[[ @ 0]]
	Finishes:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	Finishes:setAlpha( 0.25 ) --[[ @ 0]]
	Finishes:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Finishes:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Finishes:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Finishes:linkToElementModel( self, "finishes", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Finishes:setText( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Finishes ) --[[ @ 0]]
	self.Finishes = Finishes --[[ @ 0]]
	
	local DistanceKillLabel = LUI.UIText.new( 0, 0, 170, 425, 0, 0, 83, 104 ) --[[ @ 0]]
	DistanceKillLabel:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	DistanceKillLabel:setAlpha( 0.25 ) --[[ @ 0]]
	DistanceKillLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_384EAC91CFC17A55" ) ) --[[ @ 0]]
	DistanceKillLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	DistanceKillLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	DistanceKillLabel:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( DistanceKillLabel ) --[[ @ 0]]
	self.DistanceKillLabel = DistanceKillLabel --[[ @ 0]]
	
	local DistanceKill = LUI.UIText.new( 0, 0, 30.5, 164.5, 0, 0, 83, 104 ) --[[ @ 0]]
	DistanceKill:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	DistanceKill:setAlpha( 0.25 ) --[[ @ 0]]
	DistanceKill:setTTF( "dinnext_regular" ) --[[ @ 0]]
	DistanceKill:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	DistanceKill:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	DistanceKill:linkToElementModel( self, "longestDistanceKill", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			DistanceKill:setText( LocalizeStringWithParameter( @"menu/distance_m", UnitsToMeters( f5_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DistanceKill ) --[[ @ 0]]
	self.DistanceKill = DistanceKill --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Solo",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "gametype", @"warzone_solo" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "gametype", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "gametype"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARKillsWidget.__resetProperties = function ( f8_arg0 )
	f8_arg0.KillsGlow:completeAnimation() --[[ @ 0]]
	f8_arg0.DistanceKill:completeAnimation() --[[ @ 0]]
	f8_arg0.DistanceKillLabel:completeAnimation() --[[ @ 0]]
	f8_arg0.Finishes:completeAnimation() --[[ @ 0]]
	f8_arg0.FinishesLabel:completeAnimation() --[[ @ 0]]
	f8_arg0.KillsGlow:setAlpha( 0.4 ) --[[ @ 0]]
	f8_arg0.DistanceKill:setTopBottom( 0, 0, 83, 104 ) --[[ @ 0]]
	f8_arg0.DistanceKillLabel:setTopBottom( 0, 0, 83, 104 ) --[[ @ 0]]
	f8_arg0.Finishes:setAlpha( 0.25 ) --[[ @ 0]]
	f8_arg0.FinishesLabel:setAlpha( 0.25 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARKillsWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						f12_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f11_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.KillsGlow:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f9_arg0.KillsGlow:setAlpha( 0.55 ) --[[ @ 0]]
				f9_arg0.KillsGlow:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.KillsGlow:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.KillsGlow:completeAnimation() --[[ @ 0]]
			f9_arg0.KillsGlow:setAlpha( 0.4 ) --[[ @ 0]]
			f9_local0( f9_arg0.KillsGlow ) --[[ @ 0]]
			f9_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	Solo = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f13_arg0.FinishesLabel:completeAnimation() --[[ @ 0]]
			f13_arg0.FinishesLabel:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.FinishesLabel ) --[[ @ 0]]
			f13_arg0.Finishes:completeAnimation() --[[ @ 0]]
			f13_arg0.Finishes:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Finishes ) --[[ @ 0]]
			f13_arg0.DistanceKillLabel:completeAnimation() --[[ @ 0]]
			f13_arg0.DistanceKillLabel:setTopBottom( 0, 0, 62, 83 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.DistanceKillLabel ) --[[ @ 0]]
			f13_arg0.DistanceKill:completeAnimation() --[[ @ 0]]
			f13_arg0.DistanceKill:setTopBottom( 0, 0, 62, 83 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.DistanceKill ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARKillsWidget.__onClose = function ( f14_arg0 )
	f14_arg0.PerformBg:close() --[[ @ 0]]
	f14_arg0.KillsGlow:close() --[[ @ 0]]
	f14_arg0.Kills:close() --[[ @ 0]]
	f14_arg0.Finishes:close() --[[ @ 0]]
	f14_arg0.DistanceKill:close() --[[ @ 0]]
end
 --[[ @ 0]]
