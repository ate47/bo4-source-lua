-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/aar/medalstab/medalpreviewwidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/aar/medalstab/medalsgriditem" ) --[[ @ 0]]
require( "x64:f00a10fc8301da2" ) --[[ @ 0]]
require( "x64:18540c1029b806a7" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]

CoD.MedalsTabInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MedalsTabInternal.__defaultWidth = 1920 --[[ @ 0]]
CoD.MedalsTabInternal.__defaultHeight = 772 --[[ @ 0]]
CoD.MedalsTabInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MedalsTabInternal ) --[[ @ 0]]
	self.id = "MedalsTabInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local AarMpBacking = CoD.AARCommonBacking.new( f1_arg0, f1_arg1, 0, 0, -40, 1960, 0.5, 0.5, -409, 427 ) --[[ @ 0]]
	AarMpBacking.Backer:setRGB( 0, 0, 0 ) --[[ @ 0]]
	AarMpBacking.Backer:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( AarMpBacking ) --[[ @ 0]]
	self.AarMpBacking = AarMpBacking --[[ @ 0]]
	
	local MedalPreviewWidget = CoD.MedalPreviewWidget.new( f1_arg0, f1_arg1, 0, 0, 86, 636, 0, 0, 25, 739 ) --[[ @ 0]]
	self:addElement( MedalPreviewWidget ) --[[ @ 0]]
	self.MedalPreviewWidget = MedalPreviewWidget --[[ @ 0]]
	
	local Line = LUI.UIImage.new( 0, 0, 670.5, 672.5, 0, 0, 23.5, 740.5 ) --[[ @ 0]]
	Line:setAlpha( 0.05 ) --[[ @ 0]]
	Line:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Line:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Line:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Line:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Line ) --[[ @ 0]]
	self.Line = Line --[[ @ 0]]
	
	local EmptyMedalRow3 = CoD.EmptyMedalRow.new( f1_arg0, f1_arg1, 0, 0, 708, 1826, 0, 0, 512, 739 ) --[[ @ 0]]
	EmptyMedalRow3:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( EmptyMedalRow3 ) --[[ @ 0]]
	self.EmptyMedalRow3 = EmptyMedalRow3 --[[ @ 0]]
	
	local EmptyMedalRow2 = CoD.EmptyMedalRow.new( f1_arg0, f1_arg1, 0, 0, 708, 1826, 0, 0, 270, 497 ) --[[ @ 0]]
	EmptyMedalRow2:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( EmptyMedalRow2 ) --[[ @ 0]]
	self.EmptyMedalRow2 = EmptyMedalRow2 --[[ @ 0]]
	
	local EmptyMedalRow1 = CoD.EmptyMedalRow.new( f1_arg0, f1_arg1, 0, 0, 708, 1826, 0, 0, 26, 253 ) --[[ @ 0]]
	EmptyMedalRow1:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( EmptyMedalRow1 ) --[[ @ 0]]
	self.EmptyMedalRow1 = EmptyMedalRow1 --[[ @ 0]]
	
	local MedalsGrid = LUI.UIList.new( f1_arg0, f1_arg1, 18, 0, nil, false, false, false, false ) --[[ @ 0]]
	MedalsGrid:setLeftRight( 0, 0, 708, 1822 ) --[[ @ 0]]
	MedalsGrid:setTopBottom( 0, 0, 26.5, 737.5 ) --[[ @ 0]]
	MedalsGrid:setWidgetType( CoD.MedalsGridItem ) --[[ @ 0]]
	MedalsGrid:setHorizontalCount( 4 ) --[[ @ 0]]
	MedalsGrid:setVerticalCount( 3 ) --[[ @ 0]]
	MedalsGrid:setSpacing( 18 ) --[[ @ 0]]
	MedalsGrid:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	MedalsGrid:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	MedalsGrid:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( MedalsGrid, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if IsCurrentMenu( menu, "Barracks_Medals" ) then
			CoD.PlayerStatsUtility.SetShowcaseMedal( controller, element ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsCurrentMenu( menu, "Barracks_Medals" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( MedalsGrid ) --[[ @ 0]]
	self.MedalsGrid = MedalsGrid --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoMedals",
			condition = function ( menu, element, event )
				return not ListElementHasElements( self.MedalsGrid )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "grid_updated", function ( f6_arg0, f6_arg1 )
		f6_arg1.menu = f6_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f6_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MedalsGrid.id = "MedalsGrid" --[[ @ 0]]
	self.__defaultFocus = MedalsGrid --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MedalsTabInternal.__resetProperties = function ( f7_arg0 )
	f7_arg0.MedalsGrid:completeAnimation() --[[ @ 0]]
	f7_arg0.Line:completeAnimation() --[[ @ 0]]
	f7_arg0.EmptyMedalRow1:completeAnimation() --[[ @ 0]]
	f7_arg0.EmptyMedalRow2:completeAnimation() --[[ @ 0]]
	f7_arg0.EmptyMedalRow3:completeAnimation() --[[ @ 0]]
	f7_arg0.MedalPreviewWidget:completeAnimation() --[[ @ 0]]
	f7_arg0.MedalsGrid:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.Line:setAlpha( 0.05 ) --[[ @ 0]]
	f7_arg0.EmptyMedalRow1:setAlpha( 0.5 ) --[[ @ 0]]
	f7_arg0.EmptyMedalRow2:setAlpha( 0.5 ) --[[ @ 0]]
	f7_arg0.EmptyMedalRow3:setAlpha( 0.5 ) --[[ @ 0]]
	f7_arg0.MedalPreviewWidget:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MedalsTabInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					f10_arg0:beginAnimation( 140, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f10_arg0:setAlpha( 1 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.MedalPreviewWidget:beginAnimation( 220 ) --[[ @ 0]]
				f8_arg0.MedalPreviewWidget:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.MedalPreviewWidget:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.MedalPreviewWidget:completeAnimation() --[[ @ 0]]
			f8_arg0.MedalPreviewWidget:setAlpha( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.MedalPreviewWidget ) --[[ @ 0]]
			local f8_local1 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					f12_arg0:beginAnimation( 99 ) --[[ @ 0]]
					f12_arg0:setAlpha( 0.18 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.Line:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.Line:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Line:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Line:completeAnimation() --[[ @ 0]]
			f8_arg0.Line:setAlpha( 0 ) --[[ @ 0]]
			f8_local1( f8_arg0.Line ) --[[ @ 0]]
			local f8_local2 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f14_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.EmptyMedalRow3:beginAnimation( 170 ) --[[ @ 0]]
				f8_arg0.EmptyMedalRow3:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.EmptyMedalRow3:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.EmptyMedalRow3:completeAnimation() --[[ @ 0]]
			f8_arg0.EmptyMedalRow3:setAlpha( 0 ) --[[ @ 0]]
			f8_local2( f8_arg0.EmptyMedalRow3 ) --[[ @ 0]]
			local f8_local3 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					f16_arg0:beginAnimation( 99 ) --[[ @ 0]]
					f16_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.EmptyMedalRow2:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.EmptyMedalRow2:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.EmptyMedalRow2:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.EmptyMedalRow2:completeAnimation() --[[ @ 0]]
			f8_arg0.EmptyMedalRow2:setAlpha( 0 ) --[[ @ 0]]
			f8_local3( f8_arg0.EmptyMedalRow2 ) --[[ @ 0]]
			local f8_local4 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f18_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.EmptyMedalRow1:beginAnimation( 130 ) --[[ @ 0]]
				f8_arg0.EmptyMedalRow1:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.EmptyMedalRow1:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.EmptyMedalRow1:completeAnimation() --[[ @ 0]]
			f8_arg0.EmptyMedalRow1:setAlpha( 0 ) --[[ @ 0]]
			f8_local4( f8_arg0.EmptyMedalRow1 ) --[[ @ 0]]
			local f8_local5 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					f20_arg0:beginAnimation( 149, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f20_arg0:setAlpha( 1 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.MedalsGrid:beginAnimation( 330 ) --[[ @ 0]]
				f8_arg0.MedalsGrid:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.MedalsGrid:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.MedalsGrid:completeAnimation() --[[ @ 0]]
			f8_arg0.MedalsGrid:setAlpha( 0 ) --[[ @ 0]]
			f8_local5( f8_arg0.MedalsGrid ) --[[ @ 0]]
		end
	},
	NoMedals = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f21_arg0.MedalPreviewWidget:completeAnimation() --[[ @ 0]]
			f21_arg0.MedalPreviewWidget:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.MedalPreviewWidget ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					f23_arg0:beginAnimation( 99 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f21_arg0.Line:beginAnimation( 150 ) --[[ @ 0]]
				f21_arg0.Line:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.Line:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.Line:completeAnimation() --[[ @ 0]]
			f21_arg0.Line:setAlpha( 0.18 ) --[[ @ 0]]
			f21_local0( f21_arg0.Line ) --[[ @ 0]]
			local f21_local1 = function ( f24_arg0 )
				local f24_local0 = function ( f25_arg0 )
					f25_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f25_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f25_arg0:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f21_arg0.EmptyMedalRow3:beginAnimation( 170 ) --[[ @ 0]]
				f21_arg0.EmptyMedalRow3:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.EmptyMedalRow3:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.EmptyMedalRow3:completeAnimation() --[[ @ 0]]
			f21_arg0.EmptyMedalRow3:setAlpha( 0 ) --[[ @ 0]]
			f21_local1( f21_arg0.EmptyMedalRow3 ) --[[ @ 0]]
			local f21_local2 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					f27_arg0:beginAnimation( 99 ) --[[ @ 0]]
					f27_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f21_arg0.EmptyMedalRow2:beginAnimation( 150 ) --[[ @ 0]]
				f21_arg0.EmptyMedalRow2:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.EmptyMedalRow2:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.EmptyMedalRow2:completeAnimation() --[[ @ 0]]
			f21_arg0.EmptyMedalRow2:setAlpha( 0 ) --[[ @ 0]]
			f21_local2( f21_arg0.EmptyMedalRow2 ) --[[ @ 0]]
			local f21_local3 = function ( f28_arg0 )
				local f28_local0 = function ( f29_arg0 )
					f29_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f29_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f29_arg0:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f21_arg0.EmptyMedalRow1:beginAnimation( 130 ) --[[ @ 0]]
				f21_arg0.EmptyMedalRow1:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.EmptyMedalRow1:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.EmptyMedalRow1:completeAnimation() --[[ @ 0]]
			f21_arg0.EmptyMedalRow1:setAlpha( 0 ) --[[ @ 0]]
			f21_local3( f21_arg0.EmptyMedalRow1 ) --[[ @ 0]]
			f21_arg0.MedalsGrid:completeAnimation() --[[ @ 0]]
			f21_arg0.MedalsGrid:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.MedalsGrid ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MedalsTabInternal.__onClose = function ( f30_arg0 )
	f30_arg0.AarMpBacking:close() --[[ @ 0]]
	f30_arg0.MedalPreviewWidget:close() --[[ @ 0]]
	f30_arg0.EmptyMedalRow3:close() --[[ @ 0]]
	f30_arg0.EmptyMedalRow2:close() --[[ @ 0]]
	f30_arg0.EmptyMedalRow1:close() --[[ @ 0]]
	f30_arg0.MedalsGrid:close() --[[ @ 0]]
end
 --[[ @ 0]]
