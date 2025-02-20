-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:46dc36905fd0797a" ) --[[ @ 0]]

CoD.ZMInvQuests = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMInvQuests.__defaultWidth = 241 --[[ @ 0]]
CoD.ZMInvQuests.__defaultHeight = 330 --[[ @ 0]]
CoD.ZMInvQuests.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.ZMInventoryUtility.SetupMapInventoryQuests( self, f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.ZMInvQuests ) --[[ @ 0]]
	self.id = "ZMInvQuests" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Quest1 = CoD.ZMInvQuestItemsContainer.new( f1_arg0, f1_arg1, 0.5, 0.5, -120.5, 120.5, 0.5, 0.5, 99, 179 ) --[[ @ 0]]
	self:addElement( Quest1 ) --[[ @ 0]]
	self.Quest1 = Quest1 --[[ @ 0]]
	
	local Quest2 = CoD.ZMInvQuestItemsContainer.new( f1_arg0, f1_arg1, 0.5, 0.5, -120.5, 120.5, 0.5, 0.5, 11, 91 ) --[[ @ 0]]
	Quest2.Quest.ItemsPhase0:setDataSource( "ZMInventoryQuest2" ) --[[ @ 0]]
	Quest2.Quest.ItemsPhase1:setDataSource( "ZMInventoryQuest2" ) --[[ @ 0]]
	Quest2.Quest.ItemsPhase2:setDataSource( "ZMInventoryQuest2" ) --[[ @ 0]]
	Quest2.Quest.ItemsPhase3:setDataSource( "ZMInventoryQuest2" ) --[[ @ 0]]
	self:addElement( Quest2 ) --[[ @ 0]]
	self.Quest2 = Quest2 --[[ @ 0]]
	
	local Quest3 = CoD.ZMInvQuestItemsContainer.new( f1_arg0, f1_arg1, 0.5, 0.5, -120.5, 120.5, 0.5, 0.5, -77, 3 ) --[[ @ 0]]
	Quest3.Quest.ItemsPhase0:setDataSource( "ZMInventoryQuest3" ) --[[ @ 0]]
	Quest3.Quest.ItemsPhase1:setDataSource( "ZMInventoryQuest3" ) --[[ @ 0]]
	Quest3.Quest.ItemsPhase2:setDataSource( "ZMInventoryQuest3" ) --[[ @ 0]]
	Quest3.Quest.ItemsPhase3:setDataSource( "ZMInventoryQuest3" ) --[[ @ 0]]
	self:addElement( Quest3 ) --[[ @ 0]]
	self.Quest3 = Quest3 --[[ @ 0]]
	
	local Quest4 = CoD.ZMInvQuestItemsContainer.new( f1_arg0, f1_arg1, 0.5, 0.5, -120.5, 120.5, 0.5, 0.5, -165, -85 ) --[[ @ 0]]
	Quest4.Quest.ItemsPhase0:setDataSource( "ZMInventoryQuest4" ) --[[ @ 0]]
	Quest4.Quest.ItemsPhase1:setDataSource( "ZMInventoryQuest4" ) --[[ @ 0]]
	Quest4.Quest.ItemsPhase2:setDataSource( "ZMInventoryQuest4" ) --[[ @ 0]]
	Quest4.Quest.ItemsPhase3:setDataSource( "ZMInventoryQuest4" ) --[[ @ 0]]
	self:addElement( Quest4 ) --[[ @ 0]]
	self.Quest4 = Quest4 --[[ @ 0]]
	
	local CornerTop = LUI.UIImage.new( 1, 1, -41, 4, 0, 0, -4, 41 ) --[[ @ 0]]
	CornerTop:setImage( RegisterImage( @"uie_zm_hud_inventory_framecorner" ) ) --[[ @ 0]]
	self:addElement( CornerTop ) --[[ @ 0]]
	self.CornerTop = CornerTop --[[ @ 0]]
	
	local CornerBot = LUI.UIImage.new( 1, 1, -41, 4, 0, 0, 302, 347 ) --[[ @ 0]]
	CornerBot:setXRot( 180 ) --[[ @ 0]]
	CornerBot:setImage( RegisterImage( @"uie_zm_hud_inventory_framecorner" ) ) --[[ @ 0]]
	self:addElement( CornerBot ) --[[ @ 0]]
	self.CornerBot = CornerBot --[[ @ 0]]
	
	local DividerTop = LUI.UIImage.new( 1, 1, -35, 35, 0, 0, 121, 135 ) --[[ @ 0]]
	DividerTop:setZRot( 90 ) --[[ @ 0]]
	DividerTop:setImage( RegisterImage( @"uie_zm_hud_inventory_framedivider_horizontal" ) ) --[[ @ 0]]
	self:addElement( DividerTop ) --[[ @ 0]]
	self.DividerTop = DividerTop --[[ @ 0]]
	
	local DividerBot = LUI.UIImage.new( 1, 1, -35, 35, 0, 0, 208, 222 ) --[[ @ 0]]
	DividerBot:setZRot( 90 ) --[[ @ 0]]
	DividerBot:setImage( RegisterImage( @"uie_zm_hud_inventory_framedivider_horizontal" ) ) --[[ @ 0]]
	self:addElement( DividerBot ) --[[ @ 0]]
	self.DividerBot = DividerBot --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsAnyGameType( f1_arg1, "zstandard" )
			end
		},
		{
			stateName = "FourQuests",
			condition = function ( menu, element, event )
				return CoD.ZMInventoryUtility.DoesQuestHaveItems( 4 )
			end
		},
		{
			stateName = "ThreeQuests",
			condition = function ( menu, element, event )
				return CoD.ZMInventoryUtility.DoesQuestHaveItems( 3 )
			end
		},
		{
			stateName = "TwoQuests",
			condition = function ( menu, element, event )
				return CoD.ZMInventoryUtility.DoesQuestHaveItems( 2 )
			end
		},
		{
			stateName = "OneQuest",
			condition = function ( menu, element, event )
				return CoD.ZMInventoryUtility.DoesQuestHaveItems( 1 )
			end
		}
	} ) --[[ @ 0]]
	Quest1.id = "Quest1" --[[ @ 0]]
	Quest2.id = "Quest2" --[[ @ 0]]
	Quest3.id = "Quest3" --[[ @ 0]]
	Quest4.id = "Quest4" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local9 = self --[[ @ 0]]
	CoD.ZMInventoryUtility.SetQuestModels( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ZMInvQuests.__resetProperties = function ( f7_arg0 )
	f7_arg0.DividerBot:completeAnimation() --[[ @ 0]]
	f7_arg0.DividerTop:completeAnimation() --[[ @ 0]]
	f7_arg0.CornerBot:completeAnimation() --[[ @ 0]]
	f7_arg0.CornerTop:completeAnimation() --[[ @ 0]]
	f7_arg0.Quest4:completeAnimation() --[[ @ 0]]
	f7_arg0.Quest3:completeAnimation() --[[ @ 0]]
	f7_arg0.Quest2:completeAnimation() --[[ @ 0]]
	f7_arg0.Quest1:completeAnimation() --[[ @ 0]]
	f7_arg0.DividerBot:setTopBottom( 0, 0, 208, 222 ) --[[ @ 0]]
	f7_arg0.DividerBot:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.DividerTop:setTopBottom( 0, 0, 121, 135 ) --[[ @ 0]]
	f7_arg0.DividerTop:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.CornerBot:setTopBottom( 0, 0, 302, 347 ) --[[ @ 0]]
	f7_arg0.CornerBot:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.CornerTop:setTopBottom( 0, 0, -4, 41 ) --[[ @ 0]]
	f7_arg0.CornerTop:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.Quest4:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.Quest3:setTopBottom( 0.5, 0.5, -77, 3 ) --[[ @ 0]]
	f7_arg0.Quest3:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.Quest2:setTopBottom( 0.5, 0.5, 11, 91 ) --[[ @ 0]]
	f7_arg0.Quest2:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.Quest1:setTopBottom( 0.5, 0.5, 99, 179 ) --[[ @ 0]]
	f7_arg0.Quest1:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMInvQuests.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f8_arg0.Quest1:completeAnimation() --[[ @ 0]]
			f8_arg0.Quest1:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Quest1 ) --[[ @ 0]]
			f8_arg0.Quest2:completeAnimation() --[[ @ 0]]
			f8_arg0.Quest2:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Quest2 ) --[[ @ 0]]
			f8_arg0.Quest3:completeAnimation() --[[ @ 0]]
			f8_arg0.Quest3:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Quest3 ) --[[ @ 0]]
			f8_arg0.Quest4:completeAnimation() --[[ @ 0]]
			f8_arg0.Quest4:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Quest4 ) --[[ @ 0]]
			f8_arg0.CornerTop:completeAnimation() --[[ @ 0]]
			f8_arg0.CornerTop:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.CornerTop ) --[[ @ 0]]
			f8_arg0.CornerBot:completeAnimation() --[[ @ 0]]
			f8_arg0.CornerBot:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.CornerBot ) --[[ @ 0]]
			f8_arg0.DividerTop:completeAnimation() --[[ @ 0]]
			f8_arg0.DividerTop:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.DividerTop ) --[[ @ 0]]
			f8_arg0.DividerBot:completeAnimation() --[[ @ 0]]
			f8_arg0.DividerBot:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.DividerBot ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f9_arg0.Quest1:completeAnimation() --[[ @ 0]]
			f9_arg0.Quest1:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Quest1 ) --[[ @ 0]]
			f9_arg0.Quest2:completeAnimation() --[[ @ 0]]
			f9_arg0.Quest2:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Quest2 ) --[[ @ 0]]
			f9_arg0.Quest3:completeAnimation() --[[ @ 0]]
			f9_arg0.Quest3:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Quest3 ) --[[ @ 0]]
			f9_arg0.Quest4:completeAnimation() --[[ @ 0]]
			f9_arg0.Quest4:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Quest4 ) --[[ @ 0]]
			f9_arg0.CornerTop:completeAnimation() --[[ @ 0]]
			f9_arg0.CornerTop:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.CornerTop ) --[[ @ 0]]
			f9_arg0.CornerBot:completeAnimation() --[[ @ 0]]
			f9_arg0.CornerBot:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.CornerBot ) --[[ @ 0]]
			f9_arg0.DividerTop:completeAnimation() --[[ @ 0]]
			f9_arg0.DividerTop:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.DividerTop ) --[[ @ 0]]
			f9_arg0.DividerBot:completeAnimation() --[[ @ 0]]
			f9_arg0.DividerBot:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.DividerBot ) --[[ @ 0]]
		end
	},
	FourQuests = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	ThreeQuests = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f11_arg0.Quest1:completeAnimation() --[[ @ 0]]
			f11_arg0.Quest1:setTopBottom( 0.5, 0.5, 56, 136 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Quest1 ) --[[ @ 0]]
			f11_arg0.Quest2:completeAnimation() --[[ @ 0]]
			f11_arg0.Quest2:setTopBottom( 0.5, 0.5, -32, 48 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Quest2 ) --[[ @ 0]]
			f11_arg0.Quest3:completeAnimation() --[[ @ 0]]
			f11_arg0.Quest3:setTopBottom( 0.5, 0.5, -120, -40 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Quest3 ) --[[ @ 0]]
			f11_arg0.Quest4:completeAnimation() --[[ @ 0]]
			f11_arg0.Quest4:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Quest4 ) --[[ @ 0]]
			f11_arg0.CornerTop:completeAnimation() --[[ @ 0]]
			f11_arg0.CornerTop:setTopBottom( 0, 0, 40, 85 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.CornerTop ) --[[ @ 0]]
			f11_arg0.CornerBot:completeAnimation() --[[ @ 0]]
			f11_arg0.CornerBot:setTopBottom( 0, 0, 259, 304 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.CornerBot ) --[[ @ 0]]
			f11_arg0.DividerTop:completeAnimation() --[[ @ 0]]
			f11_arg0.DividerTop:setTopBottom( 0, 0, 78, 92 ) --[[ @ 0]]
			f11_arg0.DividerTop:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.DividerTop ) --[[ @ 0]]
			f11_arg0.DividerBot:completeAnimation() --[[ @ 0]]
			f11_arg0.DividerBot:setTopBottom( 0, 0, 165, 179 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.DividerBot ) --[[ @ 0]]
		end
	},
	TwoQuests = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f12_arg0.Quest1:completeAnimation() --[[ @ 0]]
			f12_arg0.Quest1:setTopBottom( 0.5, 0.5, 0, 80 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Quest1 ) --[[ @ 0]]
			f12_arg0.Quest2:completeAnimation() --[[ @ 0]]
			f12_arg0.Quest2:setTopBottom( 0.5, 0.5, -88, -8 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Quest2 ) --[[ @ 0]]
			f12_arg0.Quest3:completeAnimation() --[[ @ 0]]
			f12_arg0.Quest3:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Quest3 ) --[[ @ 0]]
			f12_arg0.Quest4:completeAnimation() --[[ @ 0]]
			f12_arg0.Quest4:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Quest4 ) --[[ @ 0]]
			f12_arg0.CornerTop:completeAnimation() --[[ @ 0]]
			f12_arg0.CornerTop:setTopBottom( 0, 0, 72, 117 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.CornerTop ) --[[ @ 0]]
			f12_arg0.CornerBot:completeAnimation() --[[ @ 0]]
			f12_arg0.CornerBot:setTopBottom( 0, 0, 203, 248 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.CornerBot ) --[[ @ 0]]
			f12_arg0.DividerTop:completeAnimation() --[[ @ 0]]
			f12_arg0.DividerTop:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.DividerTop ) --[[ @ 0]]
			f12_arg0.DividerBot:completeAnimation() --[[ @ 0]]
			f12_arg0.DividerBot:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.DividerBot ) --[[ @ 0]]
		end
	},
	OneQuest = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f13_arg0.Quest1:completeAnimation() --[[ @ 0]]
			f13_arg0.Quest1:setTopBottom( 0.5, 0.5, -40, 40 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Quest1 ) --[[ @ 0]]
			f13_arg0.Quest2:completeAnimation() --[[ @ 0]]
			f13_arg0.Quest2:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Quest2 ) --[[ @ 0]]
			f13_arg0.Quest3:completeAnimation() --[[ @ 0]]
			f13_arg0.Quest3:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Quest3 ) --[[ @ 0]]
			f13_arg0.Quest4:completeAnimation() --[[ @ 0]]
			f13_arg0.Quest4:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Quest4 ) --[[ @ 0]]
			f13_arg0.CornerTop:completeAnimation() --[[ @ 0]]
			f13_arg0.CornerTop:setTopBottom( 0, 0, 120, 165 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.CornerTop ) --[[ @ 0]]
			f13_arg0.CornerBot:completeAnimation() --[[ @ 0]]
			f13_arg0.CornerBot:setTopBottom( 0, 0, 165, 210 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.CornerBot ) --[[ @ 0]]
			f13_arg0.DividerTop:completeAnimation() --[[ @ 0]]
			f13_arg0.DividerTop:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.DividerTop ) --[[ @ 0]]
			f13_arg0.DividerBot:completeAnimation() --[[ @ 0]]
			f13_arg0.DividerBot:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.DividerBot ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ZMInvQuests.__onClose = function ( f14_arg0 )
	f14_arg0.Quest1:close() --[[ @ 0]]
	f14_arg0.Quest2:close() --[[ @ 0]]
	f14_arg0.Quest3:close() --[[ @ 0]]
	f14_arg0.Quest4:close() --[[ @ 0]]
end
 --[[ @ 0]]
