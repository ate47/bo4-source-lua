-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/cac/chooseclassslideoutbacking" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/chooseclassslideoutinternal" ) --[[ @ 0]]

CoD.ChooseClassSlideOut = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ChooseClassSlideOut.__defaultWidth = 1920 --[[ @ 0]]
CoD.ChooseClassSlideOut.__defaultHeight = 600 --[[ @ 0]]
CoD.ChooseClassSlideOut.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ChooseClassSlideOut ) --[[ @ 0]]
	self.id = "ChooseClassSlideOut" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = CoD.ChooseClassSlideOutBacking.new( f1_arg0, f1_arg1, -0.1, 1.1, 0, 0, 1, 1, -600, 0 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local VerticalBGPattern2 = LUI.UIImage.new( 0.5, 0.5, -1152, 1152, 0, 0, -6, 36 ) --[[ @ 0]]
	VerticalBGPattern2:setAlpha( 0.02 ) --[[ @ 0]]
	VerticalBGPattern2:setImage( RegisterImage( @"uie_ui_menu_cac_vertical_pattern_bg" ) ) --[[ @ 0]]
	VerticalBGPattern2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	VerticalBGPattern2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	VerticalBGPattern2:setupNineSliceShader( 256, 256 ) --[[ @ 0]]
	self:addElement( VerticalBGPattern2 ) --[[ @ 0]]
	self.VerticalBGPattern2 = VerticalBGPattern2 --[[ @ 0]]
	
	local customClassInternal = CoD.ChooseClassSlideOutInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 1, 1, -600, 0 ) --[[ @ 0]]
	self:addElement( customClassInternal ) --[[ @ 0]]
	self.customClassInternal = customClassInternal --[[ @ 0]]
	
	customClassInternal.id = "customClassInternal" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local4 = self --[[ @ 0]]
	CoD.BaseUtility.SetUpPassCustomFunctionToChild( self, self.customClassInternal, f1_arg1, f1_arg0, "_chooseClass" ) --[[ @ 0]]
	f1_local4 = Backing --[[ @ 0]]
	if IsPC() then
		SizeToWidthOfScreen( f1_local4, f1_arg1 ) --[[ @ 0]]
	elseif IsSplitscreenAndInGame( f1_arg1 ) then
		SizeToWidthOfScreen( f1_local4, f1_arg1 ) --[[ @ 0]]
	end
	f1_local4 = VerticalBGPattern2 --[[ @ 0]]
	if IsPC() then
		SizeToWidthOfScreen( f1_local4, f1_arg1 ) --[[ @ 0]]
	elseif IsSplitscreenAndInGame( f1_arg1 ) then
		SizeToWidthOfScreen( f1_local4, f1_arg1 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.ChooseClassSlideOut.__resetProperties = function ( f2_arg0 )
	f2_arg0.customClassInternal:completeAnimation() --[[ @ 0]]
	f2_arg0.customClassInternal:setLeftRight( 0.5, 0.5, -960, 960 ) --[[ @ 0]]
	f2_arg0.customClassInternal:setTopBottom( 1, 1, -600, 0 ) --[[ @ 0]]
	f2_arg0.customClassInternal:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ChooseClassSlideOut.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Open = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.customClassInternal:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.customClassInternal:setLeftRight( 0, 0, 64.5, 814.5 ) --[[ @ 0]]
				f4_arg0.customClassInternal:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.customClassInternal:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.customClassInternal:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.customClassInternal:completeAnimation() --[[ @ 0]]
			f4_arg0.customClassInternal:setLeftRight( 0, 0, -774.5, -24.5 ) --[[ @ 0]]
			f4_arg0.customClassInternal:setTopBottom( 0, 0, 0, 848 ) --[[ @ 0]]
			f4_arg0.customClassInternal:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.customClassInternal ) --[[ @ 0]]
		end
	},
	Open = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.customClassInternal:completeAnimation() --[[ @ 0]]
			f6_arg0.customClassInternal:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.customClassInternal ) --[[ @ 0]]
		end,
		Close = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.customClassInternal:beginAnimation( 200 ) --[[ @ 0]]
				f7_arg0.customClassInternal:setLeftRight( 0.5, 0.5, -774.5, 1145.5 ) --[[ @ 0]]
				f7_arg0.customClassInternal:setAlpha( 0 ) --[[ @ 0]]
				f7_arg0.customClassInternal:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.customClassInternal:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.customClassInternal:completeAnimation() --[[ @ 0]]
			f7_arg0.customClassInternal:setLeftRight( 0, 0, 64.5, 814.5 ) --[[ @ 0]]
			f7_arg0.customClassInternal:setTopBottom( 0, 0, 0, 848 ) --[[ @ 0]]
			f7_arg0.customClassInternal:setAlpha( 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.customClassInternal ) --[[ @ 0]]
		end
	},
	Close = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.customClassInternal:completeAnimation() --[[ @ 0]]
			f9_arg0.customClassInternal:setLeftRight( 0, 0, -774.5, -24.5 ) --[[ @ 0]]
			f9_arg0.customClassInternal:setTopBottom( 0, 0, 0, 848 ) --[[ @ 0]]
			f9_arg0.customClassInternal:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.customClassInternal ) --[[ @ 0]]
		end,
		Open = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.customClassInternal:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.customClassInternal:setLeftRight( 0.5, 0.5, 64.5, 1984.5 ) --[[ @ 0]]
				f10_arg0.customClassInternal:setAlpha( 1 ) --[[ @ 0]]
				f10_arg0.customClassInternal:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.customClassInternal:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.customClassInternal:completeAnimation() --[[ @ 0]]
			f10_arg0.customClassInternal:setLeftRight( 0, 0, -774.5, -24.5 ) --[[ @ 0]]
			f10_arg0.customClassInternal:setTopBottom( 0, 0, 0, 848 ) --[[ @ 0]]
			f10_arg0.customClassInternal:setAlpha( 0 ) --[[ @ 0]]
			f10_local0( f10_arg0.customClassInternal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ChooseClassSlideOut.__onClose = function ( f12_arg0 )
	f12_arg0.Backing:close() --[[ @ 0]]
	f12_arg0.VerticalBGPattern2:close() --[[ @ 0]]
	f12_arg0.customClassInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
