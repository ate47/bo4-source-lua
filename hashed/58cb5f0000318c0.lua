-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/craft/paintshop/paintshopchooseside" ) --[[ @ 0]]

CoD.EmblemEditorColorTypeHeader = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EmblemEditorColorTypeHeader.__defaultWidth = 1020 --[[ @ 0]]
CoD.EmblemEditorColorTypeHeader.__defaultHeight = 45 --[[ @ 0]]
CoD.EmblemEditorColorTypeHeader.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EmblemEditorColorTypeHeader ) --[[ @ 0]]
	self.id = "EmblemEditorColorTypeHeader" --[[ @ 0]]
	self.soundSet = "SelectColor" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local colorTypeHeader = CoD.PaintshopChooseSide.new( f1_arg0, f1_arg1, 0, 0, 0, 320, 0, 0, 0, 45 ) --[[ @ 0]]
	colorTypeHeader.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_21CFC542812AB4D9" ) ) --[[ @ 0]]
	self:addElement( colorTypeHeader ) --[[ @ 0]]
	self.colorTypeHeader = colorTypeHeader --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.EmblemEditorColorTypeHeader.__resetProperties = function ( f2_arg0 )
	f2_arg0.colorTypeHeader:completeAnimation() --[[ @ 0]]
	f2_arg0.colorTypeHeader:setLeftRight( 0, 0, 0, 320 ) --[[ @ 0]]
	f2_arg0.colorTypeHeader.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_21CFC542812AB4D9" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.EmblemEditorColorTypeHeader.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.colorTypeHeader:completeAnimation() --[[ @ 0]]
			f3_arg0.colorTypeHeader.text:completeAnimation() --[[ @ 0]]
			f3_arg0.colorTypeHeader:setLeftRight( 0, 0, 70, 390 ) --[[ @ 0]]
			f3_arg0.colorTypeHeader.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6C4976856521A15E" ) ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.colorTypeHeader ) --[[ @ 0]]
		end
	},
	Gradient = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.colorTypeHeader:completeAnimation() --[[ @ 0]]
			f4_arg0.colorTypeHeader.text:completeAnimation() --[[ @ 0]]
			f4_arg0.colorTypeHeader:setLeftRight( 0, 0, 70, 390 ) --[[ @ 0]]
			f4_arg0.colorTypeHeader.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6C4976856521A15E" ) ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.colorTypeHeader ) --[[ @ 0]]
		end
	},
	Solid = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.colorTypeHeader:completeAnimation() --[[ @ 0]]
			f5_arg0.colorTypeHeader:setLeftRight( 0, 0, 30, 350 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.colorTypeHeader ) --[[ @ 0]]
		end
	},
	Mixer = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.colorTypeHeader:completeAnimation() --[[ @ 0]]
			f6_arg0.colorTypeHeader.text:completeAnimation() --[[ @ 0]]
			f6_arg0.colorTypeHeader:setLeftRight( 0, 0, 70, 390 ) --[[ @ 0]]
			f6_arg0.colorTypeHeader.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_318A7DE2D378A687" ) ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.colorTypeHeader ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.EmblemEditorColorTypeHeader.__onClose = function ( f7_arg0 )
	f7_arg0.colorTypeHeader:close() --[[ @ 0]]
end
 --[[ @ 0]]
