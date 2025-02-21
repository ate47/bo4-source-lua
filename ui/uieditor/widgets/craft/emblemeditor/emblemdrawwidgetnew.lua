-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:75cb43180fc65bb6" ) --[[ @ 0]]
require( "x64:3b49b35877fd007c" ) --[[ @ 0]]

local f0_local0 = function ( f1_arg0, f1_arg1, f1_arg2 )
	if CoD.isPC then
		f1_arg0.m_preventFromBeingCurrentMouseFocus = true --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.EmblemDrawWidgetNew = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EmblemDrawWidgetNew.__defaultWidth = 540 --[[ @ 0]]
CoD.EmblemDrawWidgetNew.__defaultHeight = 540 --[[ @ 0]]
CoD.EmblemDrawWidgetNew.new = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4, f2_arg5, f2_arg6, f2_arg7, f2_arg8, f2_arg9 )
	local self = LUI.UIElement.new( f2_arg2, f2_arg3, f2_arg4, f2_arg5, f2_arg6, f2_arg7, f2_arg8, f2_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EmblemDrawWidgetNew ) --[[ @ 0]]
	self.id = "EmblemDrawWidgetNew" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f2_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BgImage01 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BgImage01:setAlpha( 0.5 ) --[[ @ 0]]
	BgImage01:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	BgImage01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	BgImage01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BgImage01:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( BgImage01 ) --[[ @ 0]]
	self.BgImage01 = BgImage01 --[[ @ 0]]
	
	local BgAdd = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BgAdd:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	BgAdd:setAlpha( 0 ) --[[ @ 0]]
	BgAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( BgAdd ) --[[ @ 0]]
	self.BgAdd = BgAdd --[[ @ 0]]
	
	local EditGrid = LUI.UIImage.new( 0, 0, 14, 526, 0, 0, 14, 526 ) --[[ @ 0]]
	EditGrid:setAlpha( 0 ) --[[ @ 0]]
	EditGrid:setImage( RegisterImage( @"uie_ui_menu_emblem_grid" ) ) --[[ @ 0]]
	self:addElement( EditGrid ) --[[ @ 0]]
	self.EditGrid = EditGrid --[[ @ 0]]
	
	local EditorDrawEmblemFocusable = nil --[[ @ 0]]
	
	EditorDrawEmblemFocusable = CoD.EditorDrawEmblemFocusable.new( f2_arg0, f2_arg1, 0, 1, 15, -15, 0, 1, 15, -15 ) --[[ @ 0]]
	self:addElement( EditorDrawEmblemFocusable ) --[[ @ 0]]
	self.EditorDrawEmblemFocusable = EditorDrawEmblemFocusable --[[ @ 0]]
	
	local f2_local5 = nil --[[ @ 0]]
	self.emblemDrawingArea = LUI.UIElement.createFake() --[[ @ 0]]
	
	local BMGoldBar = CoD.BM_GoldBarLarge.new( f2_arg0, f2_arg1, 0.5, 0.5, -270, 270, 0.5, 0.5, -29, 29 ) --[[ @ 0]]
	BMGoldBar:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BMGoldBar ) --[[ @ 0]]
	self.BMGoldBar = BMGoldBar --[[ @ 0]]
	
	local FrontendFrame02 = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrontendFrame02:setAlpha( 0.2 ) --[[ @ 0]]
	FrontendFrame02:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame02:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrame02:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame02:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrame02 ) --[[ @ 0]]
	self.FrontendFrame02 = FrontendFrame02 --[[ @ 0]]
	
	local FrontendFrame01 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	FrontendFrame01:setAlpha( 0.2 ) --[[ @ 0]]
	FrontendFrame01:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrame01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame01:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrame01 ) --[[ @ 0]]
	self.FrontendFrame01 = FrontendFrame01 --[[ @ 0]]
	
	local FrontendFrameSelected = LUI.UIImage.new( 0, 1, -4, 4, 0, 1, -4, 4 ) --[[ @ 0]]
	FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
	FrontendFrameSelected:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrontendFrameSelected:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrameSelected:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrameSelected:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrameSelected ) --[[ @ 0]]
	self.FrontendFrameSelected = FrontendFrameSelected --[[ @ 0]]
	
	local FrontendFrameSelectedGlow = LUI.UIImage.new( 0, 1, -12, 12, 0, 1, -12, 12 ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setupNineSliceShader( 40, 40 ) --[[ @ 0]]
	self:addElement( FrontendFrameSelectedGlow ) --[[ @ 0]]
	self.FrontendFrameSelectedGlow = FrontendFrameSelectedGlow --[[ @ 0]]
	
	local FrontendFocusPip = LUI.UIImage.new( 0, 1, -7, 7, 0, 1, -7, 7 ) --[[ @ 0]]
	FrontendFocusPip:setAlpha( 0 ) --[[ @ 0]]
	FrontendFocusPip:setScale( 1.06, 1.06 ) --[[ @ 0]]
	FrontendFocusPip:setImage( RegisterImage( @"uie_ui_menu_store_focus_pips" ) ) --[[ @ 0]]
	FrontendFocusPip:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFocusPip:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFocusPip:setupNineSliceShader( 52, 52 ) --[[ @ 0]]
	self:addElement( FrontendFocusPip ) --[[ @ 0]]
	self.FrontendFocusPip = FrontendFocusPip --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "BMClassified",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f2_arg1, "isLoot" ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, f2_arg1, "available" )
			end
		},
		{
			stateName = "Unfocusable",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "EmptySlot",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "EditMode",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "isLoot", true, function ( model )
		f2_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f2_arg0,
			controller = f2_arg1,
			modelValue = model:get(),
			modelName = "isLoot"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "available", true, function ( model )
		f2_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f2_arg0,
			controller = f2_arg1,
			modelValue = model:get(),
			modelName = "available"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	if CoD.isPC then
		EditorDrawEmblemFocusable.id = "EditorDrawEmblemFocusable" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if f0_local0 then
		f0_local0( self, f2_arg1, f2_arg0 ) --[[ @ 0]]
	end
	local f2_local12 = self --[[ @ 0]]
	f2_local12 = EditorDrawEmblemFocusable --[[ @ 0]]
	if IsPC() then
		CoD.PCUtility.CraftLockFocusOnDrag( f2_local12, f2_arg1, f2_arg0 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.EmblemDrawWidgetNew.__resetProperties = function ( f9_arg0 )
	f9_arg0.FrontendFrame01:completeAnimation() --[[ @ 0]]
	f9_arg0.FrontendFrame02:completeAnimation() --[[ @ 0]]
	f9_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
	f9_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
	f9_arg0.FrontendFocusPip:completeAnimation() --[[ @ 0]]
	f9_arg0.BgAdd:completeAnimation() --[[ @ 0]]
	f9_arg0.EditGrid:completeAnimation() --[[ @ 0]]
	f9_arg0.emblemDrawingArea:completeAnimation() --[[ @ 0]]
	f9_arg0.BMGoldBar:completeAnimation() --[[ @ 0]]
	f9_arg0.FrontendFrame01:setAlpha( 0.2 ) --[[ @ 0]]
	f9_arg0.FrontendFrame02:setAlpha( 0.2 ) --[[ @ 0]]
	f9_arg0.FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.FrontendFocusPip:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.FrontendFocusPip:setScale( 1.06, 1.06 ) --[[ @ 0]]
	f9_arg0.BgAdd:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.EditGrid:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.emblemDrawingArea:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.BMGoldBar:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.EmblemDrawWidgetNew.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		EditMode = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.BgAdd:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.BgAdd:setAlpha( 0.02 ) --[[ @ 0]]
				f11_arg0.BgAdd:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.BgAdd:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.BgAdd:completeAnimation() --[[ @ 0]]
			f11_arg0.BgAdd:setAlpha( 0 ) --[[ @ 0]]
			f11_local0( f11_arg0.BgAdd ) --[[ @ 0]]
			local f11_local1 = function ( f13_arg0 )
				f11_arg0.EditGrid:beginAnimation( 150 ) --[[ @ 0]]
				f11_arg0.EditGrid:setAlpha( 0.3 ) --[[ @ 0]]
				f11_arg0.EditGrid:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.EditGrid:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.EditGrid:completeAnimation() --[[ @ 0]]
			f11_arg0.EditGrid:setAlpha( 0 ) --[[ @ 0]]
			f11_local1( f11_arg0.EditGrid ) --[[ @ 0]]
			local f11_local2 = function ( f14_arg0 )
				f11_arg0.FrontendFrame02:beginAnimation( 150 ) --[[ @ 0]]
				f11_arg0.FrontendFrame02:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.FrontendFrame02:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.FrontendFrame02:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.FrontendFrame02:completeAnimation() --[[ @ 0]]
			f11_arg0.FrontendFrame02:setAlpha( 0.2 ) --[[ @ 0]]
			f11_local2( f11_arg0.FrontendFrame02 ) --[[ @ 0]]
			local f11_local3 = function ( f15_arg0 )
				f11_arg0.FrontendFrame01:beginAnimation( 150 ) --[[ @ 0]]
				f11_arg0.FrontendFrame01:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.FrontendFrame01:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.FrontendFrame01:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.FrontendFrame01:completeAnimation() --[[ @ 0]]
			f11_arg0.FrontendFrame01:setAlpha( 0.2 ) --[[ @ 0]]
			f11_local3( f11_arg0.FrontendFrame01 ) --[[ @ 0]]
			local f11_local4 = function ( f16_arg0 )
				f11_arg0.FrontendFrameSelected:beginAnimation( 150, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f11_arg0.FrontendFrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.FrontendFrameSelected:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.FrontendFrameSelected:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
			f11_arg0.FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f11_local4( f11_arg0.FrontendFrameSelected ) --[[ @ 0]]
			local f11_local5 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 150 ) --[[ @ 0]]
					f18_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0.FrontendFrameSelectedGlow:beginAnimation( 150 ) --[[ @ 0]]
				f11_arg0.FrontendFrameSelectedGlow:setAlpha( 0.2 ) --[[ @ 0]]
				f11_arg0.FrontendFrameSelectedGlow:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.FrontendFrameSelectedGlow:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
			f11_arg0.FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
			f11_local5( f11_arg0.FrontendFrameSelectedGlow ) --[[ @ 0]]
			local f11_local6 = function ( f19_arg0 )
				f11_arg0.FrontendFocusPip:beginAnimation( 150, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f11_arg0.FrontendFocusPip:setAlpha( 0.3 ) --[[ @ 0]]
				f11_arg0.FrontendFocusPip:setScale( 1, 1 ) --[[ @ 0]]
				f11_arg0.FrontendFocusPip:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.FrontendFocusPip:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.FrontendFocusPip:completeAnimation() --[[ @ 0]]
			f11_arg0.FrontendFocusPip:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.FrontendFocusPip:setScale( 1.06, 1.06 ) --[[ @ 0]]
			f11_local6( f11_arg0.FrontendFocusPip ) --[[ @ 0]]
		end
	},
	BMClassified = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f20_arg0.emblemDrawingArea:completeAnimation() --[[ @ 0]]
			f20_arg0.emblemDrawingArea:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.emblemDrawingArea ) --[[ @ 0]]
			f20_arg0.BMGoldBar:completeAnimation() --[[ @ 0]]
			f20_arg0.BMGoldBar:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.BMGoldBar ) --[[ @ 0]]
		end
	},
	Unfocusable = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f21_arg0.FrontendFrame02:completeAnimation() --[[ @ 0]]
			f21_arg0.FrontendFrame02:setAlpha( 0.2 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FrontendFrame02 ) --[[ @ 0]]
		end
	},
	EmptySlot = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f22_arg0.FrontendFrame02:completeAnimation() --[[ @ 0]]
			f22_arg0.FrontendFrame02:setAlpha( 0.2 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.FrontendFrame02 ) --[[ @ 0]]
		end
	},
	EditMode = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f23_arg0.BgAdd:completeAnimation() --[[ @ 0]]
			f23_arg0.BgAdd:setAlpha( 0.02 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.BgAdd ) --[[ @ 0]]
			f23_arg0.EditGrid:completeAnimation() --[[ @ 0]]
			f23_arg0.EditGrid:setAlpha( 0.3 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.EditGrid ) --[[ @ 0]]
			f23_arg0.FrontendFrame02:completeAnimation() --[[ @ 0]]
			f23_arg0.FrontendFrame02:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.FrontendFrame02 ) --[[ @ 0]]
			f23_arg0.FrontendFrame01:completeAnimation() --[[ @ 0]]
			f23_arg0.FrontendFrame01:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.FrontendFrame01 ) --[[ @ 0]]
			f23_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
			f23_arg0.FrontendFrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.FrontendFrameSelected ) --[[ @ 0]]
			f23_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
			f23_arg0.FrontendFrameSelectedGlow:setAlpha( 0.1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.FrontendFrameSelectedGlow ) --[[ @ 0]]
			f23_arg0.FrontendFocusPip:completeAnimation() --[[ @ 0]]
			f23_arg0.FrontendFocusPip:setAlpha( 0.3 ) --[[ @ 0]]
			f23_arg0.FrontendFocusPip:setScale( 1, 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.FrontendFocusPip ) --[[ @ 0]]
		end,
		DefaultState = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.BgAdd:beginAnimation( 100 ) --[[ @ 0]]
				f24_arg0.BgAdd:setAlpha( 0 ) --[[ @ 0]]
				f24_arg0.BgAdd:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.BgAdd:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.BgAdd:completeAnimation() --[[ @ 0]]
			f24_arg0.BgAdd:setAlpha( 0.02 ) --[[ @ 0]]
			f24_local0( f24_arg0.BgAdd ) --[[ @ 0]]
			local f24_local1 = function ( f26_arg0 )
				f24_arg0.FrontendFrame02:beginAnimation( 150 ) --[[ @ 0]]
				f24_arg0.FrontendFrame02:setAlpha( 0.2 ) --[[ @ 0]]
				f24_arg0.FrontendFrame02:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.FrontendFrame02:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.FrontendFrame02:completeAnimation() --[[ @ 0]]
			f24_arg0.FrontendFrame02:setAlpha( 1 ) --[[ @ 0]]
			f24_local1( f24_arg0.FrontendFrame02 ) --[[ @ 0]]
			local f24_local2 = function ( f27_arg0 )
				f24_arg0.FrontendFrame01:beginAnimation( 150 ) --[[ @ 0]]
				f24_arg0.FrontendFrame01:setAlpha( 0.2 ) --[[ @ 0]]
				f24_arg0.FrontendFrame01:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.FrontendFrame01:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.FrontendFrame01:completeAnimation() --[[ @ 0]]
			f24_arg0.FrontendFrame01:setAlpha( 1 ) --[[ @ 0]]
			f24_local2( f24_arg0.FrontendFrame01 ) --[[ @ 0]]
			local f24_local3 = function ( f28_arg0 )
				f24_arg0.FrontendFrameSelected:beginAnimation( 150, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f24_arg0.FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f24_arg0.FrontendFrameSelected:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.FrontendFrameSelected:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
			f24_arg0.FrontendFrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f24_local3( f24_arg0.FrontendFrameSelected ) --[[ @ 0]]
			local f24_local4 = function ( f29_arg0 )
				f24_arg0.FrontendFrameSelectedGlow:beginAnimation( 150 ) --[[ @ 0]]
				f24_arg0.FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
				f24_arg0.FrontendFrameSelectedGlow:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.FrontendFrameSelectedGlow:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
			f24_arg0.FrontendFrameSelectedGlow:setAlpha( 0.1 ) --[[ @ 0]]
			f24_local4( f24_arg0.FrontendFrameSelectedGlow ) --[[ @ 0]]
			local f24_local5 = function ( f30_arg0 )
				f24_arg0.FrontendFocusPip:beginAnimation( 150, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f24_arg0.FrontendFocusPip:setAlpha( 0 ) --[[ @ 0]]
				f24_arg0.FrontendFocusPip:setScale( 1.06, 1.06 ) --[[ @ 0]]
				f24_arg0.FrontendFocusPip:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.FrontendFocusPip:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.FrontendFocusPip:completeAnimation() --[[ @ 0]]
			f24_arg0.FrontendFocusPip:setAlpha( 0.3 ) --[[ @ 0]]
			f24_arg0.FrontendFocusPip:setScale( 1, 1 ) --[[ @ 0]]
			f24_local5( f24_arg0.FrontendFocusPip ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.EmblemDrawWidgetNew.__onClose = function ( f31_arg0 )
	f31_arg0.EditorDrawEmblemFocusable:close() --[[ @ 0]]
	f31_arg0.emblemDrawingArea:close() --[[ @ 0]]
	f31_arg0.BMGoldBar:close() --[[ @ 0]]
end
 --[[ @ 0]]
