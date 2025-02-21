-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:6fdb58b739b97895" ) --[[ @ 0]]

CoD.PC_Battlenet_AddFriend_Information = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_Battlenet_AddFriend_Information.__defaultWidth = 30 --[[ @ 0]]
CoD.PC_Battlenet_AddFriend_Information.__defaultHeight = 30 --[[ @ 0]]
CoD.PC_Battlenet_AddFriend_Information.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_Battlenet_AddFriend_Information ) --[[ @ 0]]
	self.id = "PC_Battlenet_AddFriend_Information" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BGInfo = LUI.UIImage.new( 1, 1, -30, 0, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	BGInfo:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BGInfo ) --[[ @ 0]]
	self.BGInfo = BGInfo --[[ @ 0]]
	
	local DotPattern = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	DotPattern:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	self:addElement( DotPattern ) --[[ @ 0]]
	self.DotPattern = DotPattern --[[ @ 0]]
	
	local Dots = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Dots:setAlpha( 0.05 ) --[[ @ 0]]
	Dots:setImage( RegisterImage( @"uie_ui_menu_common_repeat_dot_pattern" ) ) --[[ @ 0]]
	Dots:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	Dots:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Dots:setupNineSliceShader( 18, 18 ) --[[ @ 0]]
	self:addElement( Dots ) --[[ @ 0]]
	self.Dots = Dots --[[ @ 0]]
	
	local Border = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Border:setAlpha( 0.5 ) --[[ @ 0]]
	Border:setImage( RegisterImage( @"hash_415BB65132BCEED9" ) ) --[[ @ 0]]
	Border:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	Border:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Border:setupNineSliceShader( 10, 10 ) --[[ @ 0]]
	self:addElement( Border ) --[[ @ 0]]
	self.Border = Border --[[ @ 0]]
	
	local glow = LUI.UIImage.new( -0.1, 1.1, 0, 0, -0.1, 1.1, 0, 0 ) --[[ @ 0]]
	glow:setAlpha( 0 ) --[[ @ 0]]
	glow:setImage( RegisterImage( @"uie_korea_igrperks_glow" ) ) --[[ @ 0]]
	self:addElement( glow ) --[[ @ 0]]
	self.glow = glow --[[ @ 0]]
	
	local Information = LUI.UIImage.new( 0.5, 0.5, -10, 10, 0.5, 0.5, -10, 10 ) --[[ @ 0]]
	Information:setImage( RegisterImage( @"uie_ui_icon_information" ) ) --[[ @ 0]]
	self:addElement( Information ) --[[ @ 0]]
	self.Information = Information --[[ @ 0]]
	
	local InformationDescriptionText = CoD.PC_Battlenet_AddFriend_Information_Description.new( f1_arg0, f1_arg1, 0, 0, 44, 374, 0, 0, -35, 75 ) --[[ @ 0]]
	InformationDescriptionText:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( InformationDescriptionText ) --[[ @ 0]]
	self.InformationDescriptionText = InformationDescriptionText --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_Battlenet_AddFriend_Information.__resetProperties = function ( f2_arg0 )
	f2_arg0.Information:completeAnimation() --[[ @ 0]]
	f2_arg0.Border:completeAnimation() --[[ @ 0]]
	f2_arg0.glow:completeAnimation() --[[ @ 0]]
	f2_arg0.InformationDescriptionText:completeAnimation() --[[ @ 0]]
	f2_arg0.Information:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.Border:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.Border:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.glow:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
	f2_arg0.InformationDescriptionText:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_Battlenet_AddFriend_Information.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f4_arg0.Border:completeAnimation() --[[ @ 0]]
			f4_arg0.Border:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f4_arg0.Border:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Border ) --[[ @ 0]]
			f4_arg0.glow:completeAnimation() --[[ @ 0]]
			f4_arg0.glow:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.glow ) --[[ @ 0]]
			f4_arg0.Information:completeAnimation() --[[ @ 0]]
			f4_arg0.Information:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Information ) --[[ @ 0]]
			f4_arg0.InformationDescriptionText:completeAnimation() --[[ @ 0]]
			f4_arg0.InformationDescriptionText:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.InformationDescriptionText ) --[[ @ 0]]
		end,
		GainFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				f5_arg0.Border:beginAnimation( 200 ) --[[ @ 0]]
				f5_arg0.Border:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
				f5_arg0.Border:setAlpha( 1 ) --[[ @ 0]]
				f5_arg0.Border:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.Border:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.Border:completeAnimation() --[[ @ 0]]
			f5_arg0.Border:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f5_arg0.Border:setAlpha( 0.5 ) --[[ @ 0]]
			f5_local0( f5_arg0.Border ) --[[ @ 0]]
			local f5_local1 = function ( f7_arg0 )
				f5_arg0.glow:beginAnimation( 200 ) --[[ @ 0]]
				f5_arg0.glow:setAlpha( 1 ) --[[ @ 0]]
				f5_arg0.glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
				f5_arg0.glow:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.glow:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.glow:completeAnimation() --[[ @ 0]]
			f5_arg0.glow:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
			f5_local1( f5_arg0.glow ) --[[ @ 0]]
			local f5_local2 = function ( f8_arg0 )
				f5_arg0.Information:beginAnimation( 200 ) --[[ @ 0]]
				f5_arg0.Information:setRGB( 0, 0, 0 ) --[[ @ 0]]
				f5_arg0.Information:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.Information:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.Information:completeAnimation() --[[ @ 0]]
			f5_arg0.Information:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f5_local2( f5_arg0.Information ) --[[ @ 0]]
			local f5_local3 = function ( f9_arg0 )
				f5_arg0.InformationDescriptionText:beginAnimation( 200 ) --[[ @ 0]]
				f5_arg0.InformationDescriptionText:setAlpha( 1 ) --[[ @ 0]]
				f5_arg0.InformationDescriptionText:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.InformationDescriptionText:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.InformationDescriptionText:completeAnimation() --[[ @ 0]]
			f5_arg0.InformationDescriptionText:setAlpha( 0 ) --[[ @ 0]]
			f5_local3( f5_arg0.InformationDescriptionText ) --[[ @ 0]]
		end,
		LoseFocus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.Border:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.Border:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f10_arg0.Border:setAlpha( 0.5 ) --[[ @ 0]]
				f10_arg0.Border:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.Border:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.Border:completeAnimation() --[[ @ 0]]
			f10_arg0.Border:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f10_arg0.Border:setAlpha( 1 ) --[[ @ 0]]
			f10_local0( f10_arg0.Border ) --[[ @ 0]]
			local f10_local1 = function ( f12_arg0 )
				f10_arg0.glow:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.glow:setAlpha( 0 ) --[[ @ 0]]
				f10_arg0.glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
				f10_arg0.glow:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.glow:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.glow:completeAnimation() --[[ @ 0]]
			f10_arg0.glow:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
			f10_local1( f10_arg0.glow ) --[[ @ 0]]
			local f10_local2 = function ( f13_arg0 )
				f10_arg0.Information:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.Information:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f10_arg0.Information:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.Information:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.Information:completeAnimation() --[[ @ 0]]
			f10_arg0.Information:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f10_local2( f10_arg0.Information ) --[[ @ 0]]
			local f10_local3 = function ( f14_arg0 )
				f10_arg0.InformationDescriptionText:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.InformationDescriptionText:setAlpha( 0 ) --[[ @ 0]]
				f10_arg0.InformationDescriptionText:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.InformationDescriptionText:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.InformationDescriptionText:completeAnimation() --[[ @ 0]]
			f10_arg0.InformationDescriptionText:setAlpha( 1 ) --[[ @ 0]]
			f10_local3( f10_arg0.InformationDescriptionText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_Battlenet_AddFriend_Information.__onClose = function ( f15_arg0 )
	f15_arg0.InformationDescriptionText:close() --[[ @ 0]]
end
 --[[ @ 0]]
