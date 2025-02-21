-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.veTransitionPrompt = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.veTransitionPrompt = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "veTransitionPrompt", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.veTransitionPrompt ) --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Prompt = LUI.UIText.new( 0, 0, 612, 1307, 0, 0, 926, 970 ) --[[ @ 0]]
	Prompt:setText( "" ) --[[ @ 0]]
	Prompt:setTTF( "default" ) --[[ @ 0]]
	Prompt:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Prompt:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Prompt ) --[[ @ 0]]
	self.Prompt = Prompt --[[ @ 0]]
	
	local Prompt2 = LUI.UIText.new( 0, 0, 612, 1307, 0, 0, 926, 970 ) --[[ @ 0]]
	Prompt2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_73524F3946846790" ) ) --[[ @ 0]]
	Prompt2:setTTF( "default" ) --[[ @ 0]]
	Prompt2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Prompt2:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Prompt2 ) --[[ @ 0]]
	self.Prompt2 = Prompt2 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "exterior",
			condition = function ( menu, element, event )
				return IsMenuModelValueEqualTo( menu, "isExterior", 1 )
			end
		},
		{
			stateName = "interior",
			condition = function ( menu, element, event )
				return IsMenuModelValueEqualTo( menu, "isInterior", 1 )
			end
		}
	} ) --[[ @ 0]]
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
CoD.veTransitionPrompt.__resetProperties = function ( f4_arg0 )
	f4_arg0.Prompt2:completeAnimation() --[[ @ 0]]
	f4_arg0.Prompt2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_73524F3946846790" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.veTransitionPrompt.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	exterior = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	interior = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.Prompt2:completeAnimation() --[[ @ 0]]
			f7_arg0.Prompt2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_607DA41F4105CA4E" ) ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Prompt2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.veTransitionPrompt.__onClose = function ( f8_arg0 )
	
end
 --[[ @ 0]]
