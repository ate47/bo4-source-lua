-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.CalloutItemText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CalloutItemText.__defaultWidth = 182 --[[ @ 0]]
CoD.CalloutItemText.__defaultHeight = 26 --[[ @ 0]]
CoD.CalloutItemText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CalloutItemText ) --[[ @ 0]]
	self.id = "CalloutItemText" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0.5, 0.5, -91, 91, 0, 0, 0, 26 ) --[[ @ 0]]
	Title:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Title:linkToElementModel( self, "text", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Title:setText( CoD.BaseUtility.LocalizeIfXHash( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "SocialCallout",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "isSocialCallout", 1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "isSocialCallout", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isSocialCallout"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CalloutItemText.__resetProperties = function ( f5_arg0 )
	f5_arg0.Title:completeAnimation() --[[ @ 0]]
	f5_arg0.Title:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CalloutItemText.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	SocialCallout = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.Title:completeAnimation() --[[ @ 0]]
			f7_arg0.Title:setRGB( ColorSet.PlayerGreen.r, ColorSet.PlayerGreen.g, ColorSet.PlayerGreen.b ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Title ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CalloutItemText.__onClose = function ( f8_arg0 )
	f8_arg0.Title:close() --[[ @ 0]]
end
 --[[ @ 0]]
