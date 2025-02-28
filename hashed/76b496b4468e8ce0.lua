-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.KillcamKilledByAttachmentLabel = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.KillcamKilledByAttachmentLabel.__defaultWidth = 125 --[[ @ 0]]
CoD.KillcamKilledByAttachmentLabel.__defaultHeight = 18 --[[ @ 0]]
CoD.KillcamKilledByAttachmentLabel.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 6, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.KillcamKilledByAttachmentLabel ) --[[ @ 0]]
	self.id = "KillcamKilledByAttachmentLabel" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Plus = LUI.UIText.new( 0, 0, 0, 9, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	Plus:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"mp/plus" ) ) --[[ @ 0]]
	Plus:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Plus:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Plus ) --[[ @ 0]]
	self.Plus = Plus --[[ @ 0]]
	
	local Attachment = LUI.UIText.new( 0, 0, 15, 219, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	Attachment:setText( "" ) --[[ @ 0]]
	Attachment:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Attachment:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Attachment:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( Attachment, "setText", function ( element, controller )
		UpdateSelfState( self, f1_arg1 ) --[[ @ 0]]
		RecalculateScaleToElementWidth( self, self ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Attachment ) --[[ @ 0]]
	self.Attachment = Attachment --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not ElementHasText( self, "Attachment" )
			end
		},
		{
			stateName = "HidePlus",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local3 = self --[[ @ 0]]
	if IsCurrentLanguageReversed() then
		ReverseChildrenOrder( self ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.KillcamKilledByAttachmentLabel.__resetProperties = function ( f5_arg0 )
	f5_arg0.Plus:completeAnimation() --[[ @ 0]]
	f5_arg0.Attachment:completeAnimation() --[[ @ 0]]
	f5_arg0.Plus:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.Attachment:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.KillcamKilledByAttachmentLabel.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.Plus:completeAnimation() --[[ @ 0]]
			f7_arg0.Plus:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Plus ) --[[ @ 0]]
			f7_arg0.Attachment:completeAnimation() --[[ @ 0]]
			f7_arg0.Attachment:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Attachment ) --[[ @ 0]]
		end
	},
	HidePlus = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.Plus:completeAnimation() --[[ @ 0]]
			f8_arg0.Plus:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Plus ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
