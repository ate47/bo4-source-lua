-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.ZMPerkVaporModifierFrame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMPerkVaporModifierFrame.__defaultWidth = 72 --[[ @ 0]]
CoD.ZMPerkVaporModifierFrame.__defaultHeight = 72 --[[ @ 0]]
CoD.ZMPerkVaporModifierFrame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMPerkVaporModifierFrame ) --[[ @ 0]]
	self.id = "ZMPerkVaporModifierFrame" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Frame = LUI.UIImage.new( 0, 0, 0, 72, 0, 0, 0, 72 ) --[[ @ 0]]
	Frame:setImage( RegisterImage( @"hash_6BE87F41005A7725" ) ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local Frame2 = LUI.UIImage.new( 0, 0, 0, 72, 0, 0, 0, 72 ) --[[ @ 0]]
	Frame2:setAlpha( 0.75 ) --[[ @ 0]]
	Frame2:setImage( RegisterImage( @"hash_6BE87F41005A7725" ) ) --[[ @ 0]]
	Frame2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Frame2 ) --[[ @ 0]]
	self.Frame2 = Frame2 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Active",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isLastAltar" ) and not CoD.ModelUtility.IsSelfModelValueNilOrZero( element, f1_arg1, "modifierActive" )
			end
		},
		{
			stateName = "Inactive",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isLastAltar" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "isLastAltar", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isLastAltar"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "modifierActive", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "modifierActive"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMPerkVaporModifierFrame.__resetProperties = function ( f6_arg0 )
	f6_arg0.Frame:completeAnimation() --[[ @ 0]]
	f6_arg0.Frame2:completeAnimation() --[[ @ 0]]
	f6_arg0.Frame:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.Frame2:setAlpha( 0.75 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMPerkVaporModifierFrame.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.Frame:completeAnimation() --[[ @ 0]]
			f7_arg0.Frame:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Frame ) --[[ @ 0]]
			f7_arg0.Frame2:completeAnimation() --[[ @ 0]]
			f7_arg0.Frame2:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Frame2 ) --[[ @ 0]]
		end
	},
	Active = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					f10_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f10_arg0:setAlpha( 1 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.Frame:beginAnimation( 4000 ) --[[ @ 0]]
				f8_arg0.Frame:setAlpha( 0.25 ) --[[ @ 0]]
				f8_arg0.Frame:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Frame:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Frame:completeAnimation() --[[ @ 0]]
			f8_arg0.Frame:setAlpha( 1 ) --[[ @ 0]]
			f8_local0( f8_arg0.Frame ) --[[ @ 0]]
			local f8_local1 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					f12_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f12_arg0:setAlpha( 0.75 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.Frame2:beginAnimation( 4000 ) --[[ @ 0]]
				f8_arg0.Frame2:setAlpha( 0.25 ) --[[ @ 0]]
				f8_arg0.Frame2:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Frame2:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Frame2:completeAnimation() --[[ @ 0]]
			f8_arg0.Frame2:setAlpha( 0.75 ) --[[ @ 0]]
			f8_local1( f8_arg0.Frame2 ) --[[ @ 0]]
			f8_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	Inactive = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f13_arg0.Frame:completeAnimation() --[[ @ 0]]
			f13_arg0.Frame:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Frame ) --[[ @ 0]]
			f13_arg0.Frame2:completeAnimation() --[[ @ 0]]
			f13_arg0.Frame2:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Frame2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
