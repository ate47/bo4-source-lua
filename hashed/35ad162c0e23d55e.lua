-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/aar_t8/summary/aarperformancebg" ) --[[ @ 0]]

CoD.AAREfficiencyWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AAREfficiencyWidget.__defaultWidth = 270 --[[ @ 0]]
CoD.AAREfficiencyWidget.__defaultHeight = 132 --[[ @ 0]]
CoD.AAREfficiencyWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AAREfficiencyWidget ) --[[ @ 0]]
	self.id = "AAREfficiencyWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PerformBg = CoD.AARPerformanceBg.new( f1_arg0, f1_arg1, 0, 0, 0, 270, 0, 0, 0, 132 ) --[[ @ 0]]
	self:addElement( PerformBg ) --[[ @ 0]]
	self.PerformBg = PerformBg --[[ @ 0]]
	
	local EfficiencyLabel = LUI.UIText.new( 0, 0, 16.5, 270.5, 0, 0, 12, 33 ) --[[ @ 0]]
	EfficiencyLabel:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	EfficiencyLabel:setAlpha( 0.2 ) --[[ @ 0]]
	EfficiencyLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"aar/efficiency" ) ) --[[ @ 0]]
	EfficiencyLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	EfficiencyLabel:setLetterSpacing( 2 ) --[[ @ 0]]
	EfficiencyLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	EfficiencyLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( EfficiencyLabel ) --[[ @ 0]]
	self.EfficiencyLabel = EfficiencyLabel --[[ @ 0]]
	
	local RevivesLabel = LUI.UIText.new( 0, 0, 56, 270, 0, 0, 43, 64 ) --[[ @ 0]]
	RevivesLabel:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	RevivesLabel:setAlpha( 0.25 ) --[[ @ 0]]
	RevivesLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"aar/revives" ) ) --[[ @ 0]]
	RevivesLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	RevivesLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	RevivesLabel:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( RevivesLabel ) --[[ @ 0]]
	self.RevivesLabel = RevivesLabel --[[ @ 0]]
	
	local Revives = LUI.UIText.new( 0, 0, 2.5, 46.5, 0, 0, 43, 64 ) --[[ @ 0]]
	Revives:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	Revives:setAlpha( 0.25 ) --[[ @ 0]]
	Revives:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Revives:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Revives:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Revives:linkToElementModel( self, "revives", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Revives:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Revives ) --[[ @ 0]]
	self.Revives = Revives --[[ @ 0]]
	
	local CleanUpLabel = LUI.UIText.new( 0, 0, 56, 270, 0, 0, 67, 88 ) --[[ @ 0]]
	CleanUpLabel:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	CleanUpLabel:setAlpha( 0.25 ) --[[ @ 0]]
	CleanUpLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_345C50B4E30324A4" ) ) --[[ @ 0]]
	CleanUpLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	CleanUpLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CleanUpLabel:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( CleanUpLabel ) --[[ @ 0]]
	self.CleanUpLabel = CleanUpLabel --[[ @ 0]]
	
	local CleanUp = LUI.UIText.new( 0, 0, 0.5, 46.5, 0, 0, 67, 88 ) --[[ @ 0]]
	CleanUp:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	CleanUp:setAlpha( 0.25 ) --[[ @ 0]]
	CleanUp:setTTF( "dinnext_regular" ) --[[ @ 0]]
	CleanUp:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	CleanUp:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	CleanUp:linkToElementModel( self, "cleanUps", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			CleanUp:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CleanUp ) --[[ @ 0]]
	self.CleanUp = CleanUp --[[ @ 0]]
	
	local UnfinishedDropsLabel = LUI.UIText.new( 0, 0, 56, 270, 0, 0, 91, 112 ) --[[ @ 0]]
	UnfinishedDropsLabel:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	UnfinishedDropsLabel:setAlpha( 0.25 ) --[[ @ 0]]
	UnfinishedDropsLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"aar/downs" ) ) --[[ @ 0]]
	UnfinishedDropsLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	UnfinishedDropsLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	UnfinishedDropsLabel:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( UnfinishedDropsLabel ) --[[ @ 0]]
	self.UnfinishedDropsLabel = UnfinishedDropsLabel --[[ @ 0]]
	
	local UnfinishedDrops = LUI.UIText.new( 0, 0, 0.5, 46.5, 0, 0, 91, 112 ) --[[ @ 0]]
	UnfinishedDrops:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	UnfinishedDrops:setAlpha( 0.25 ) --[[ @ 0]]
	UnfinishedDrops:setTTF( "dinnext_regular" ) --[[ @ 0]]
	UnfinishedDrops:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	UnfinishedDrops:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	UnfinishedDrops:linkToElementModel( self, "downs", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			UnfinishedDrops:setText( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( UnfinishedDrops ) --[[ @ 0]]
	self.UnfinishedDrops = UnfinishedDrops --[[ @ 0]]
	
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
CoD.AAREfficiencyWidget.__resetProperties = function ( f7_arg0 )
	f7_arg0.UnfinishedDrops:completeAnimation() --[[ @ 0]]
	f7_arg0.UnfinishedDropsLabel:completeAnimation() --[[ @ 0]]
	f7_arg0.CleanUp:completeAnimation() --[[ @ 0]]
	f7_arg0.CleanUpLabel:completeAnimation() --[[ @ 0]]
	f7_arg0.Revives:completeAnimation() --[[ @ 0]]
	f7_arg0.RevivesLabel:completeAnimation() --[[ @ 0]]
	f7_arg0.EfficiencyLabel:completeAnimation() --[[ @ 0]]
	f7_arg0.PerformBg:completeAnimation() --[[ @ 0]]
	f7_arg0.UnfinishedDrops:setAlpha( 0.25 ) --[[ @ 0]]
	f7_arg0.UnfinishedDropsLabel:setAlpha( 0.25 ) --[[ @ 0]]
	f7_arg0.CleanUp:setAlpha( 0.25 ) --[[ @ 0]]
	f7_arg0.CleanUpLabel:setAlpha( 0.25 ) --[[ @ 0]]
	f7_arg0.Revives:setAlpha( 0.25 ) --[[ @ 0]]
	f7_arg0.RevivesLabel:setAlpha( 0.25 ) --[[ @ 0]]
	f7_arg0.EfficiencyLabel:setAlpha( 0.2 ) --[[ @ 0]]
	f7_arg0.PerformBg:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AAREfficiencyWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Solo = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f9_arg0.PerformBg:completeAnimation() --[[ @ 0]]
			f9_arg0.PerformBg:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.PerformBg ) --[[ @ 0]]
			f9_arg0.EfficiencyLabel:completeAnimation() --[[ @ 0]]
			f9_arg0.EfficiencyLabel:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.EfficiencyLabel ) --[[ @ 0]]
			f9_arg0.RevivesLabel:completeAnimation() --[[ @ 0]]
			f9_arg0.RevivesLabel:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.RevivesLabel ) --[[ @ 0]]
			f9_arg0.Revives:completeAnimation() --[[ @ 0]]
			f9_arg0.Revives:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Revives ) --[[ @ 0]]
			f9_arg0.CleanUpLabel:completeAnimation() --[[ @ 0]]
			f9_arg0.CleanUpLabel:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.CleanUpLabel ) --[[ @ 0]]
			f9_arg0.CleanUp:completeAnimation() --[[ @ 0]]
			f9_arg0.CleanUp:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.CleanUp ) --[[ @ 0]]
			f9_arg0.UnfinishedDropsLabel:completeAnimation() --[[ @ 0]]
			f9_arg0.UnfinishedDropsLabel:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.UnfinishedDropsLabel ) --[[ @ 0]]
			f9_arg0.UnfinishedDrops:completeAnimation() --[[ @ 0]]
			f9_arg0.UnfinishedDrops:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.UnfinishedDrops ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AAREfficiencyWidget.__onClose = function ( f10_arg0 )
	f10_arg0.PerformBg:close() --[[ @ 0]]
	f10_arg0.Revives:close() --[[ @ 0]]
	f10_arg0.CleanUp:close() --[[ @ 0]]
	f10_arg0.UnfinishedDrops:close() --[[ @ 0]]
end
 --[[ @ 0]]
