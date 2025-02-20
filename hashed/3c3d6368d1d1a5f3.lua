-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:222274b778e2450e" ) --[[ @ 0]]

CoD.BM_BountyBundleItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BM_BountyBundleItem.__defaultWidth = 100 --[[ @ 0]]
CoD.BM_BountyBundleItem.__defaultHeight = 112 --[[ @ 0]]
CoD.BM_BountyBundleItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BM_BountyBundleItem ) --[[ @ 0]]
	self.id = "BM_BountyBundleItem" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BMBountyBundleItemInternal = CoD.BM_BountyBundleItemInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -50, 50, 0.5, 0.5, -56, 56 ) --[[ @ 0]]
	BMBountyBundleItemInternal:linkToElementModel( self, nil, false, function ( model )
		BMBountyBundleItemInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( BMBountyBundleItemInternal ) --[[ @ 0]]
	self.BMBountyBundleItemInternal = BMBountyBundleItemInternal --[[ @ 0]]
	
	local FrontendFrame01 = LUI.UIImage.new( 0, 1, -3, 3, 0, 1, -1, 1 ) --[[ @ 0]]
	FrontendFrame01:setAlpha( 0.4 ) --[[ @ 0]]
	FrontendFrame01:setImage( RegisterImage( @"uie_ui_menu_store_element_frame" ) ) --[[ @ 0]]
	FrontendFrame01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	FrontendFrame01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame01:setupNineSliceShader( 12, 164 ) --[[ @ 0]]
	self:addElement( FrontendFrame01 ) --[[ @ 0]]
	self.FrontendFrame01 = FrontendFrame01 --[[ @ 0]]
	
	BMBountyBundleItemInternal.id = "BMBountyBundleItemInternal" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BM_BountyBundleItem.__resetProperties = function ( f3_arg0 )
	f3_arg0.FrontendFrame01:completeAnimation() --[[ @ 0]]
	f3_arg0.BMBountyBundleItemInternal:completeAnimation() --[[ @ 0]]
	f3_arg0.FrontendFrame01:setScale( 1, 1 ) --[[ @ 0]]
	f3_arg0.BMBountyBundleItemInternal:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BM_BountyBundleItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.BMBountyBundleItemInternal:completeAnimation() --[[ @ 0]]
			f5_arg0.BMBountyBundleItemInternal:setScale( 1.06, 1.06 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.BMBountyBundleItemInternal ) --[[ @ 0]]
			f5_arg0.FrontendFrame01:completeAnimation() --[[ @ 0]]
			f5_arg0.FrontendFrame01:setScale( 1.06, 1.06 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.FrontendFrame01 ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.BMBountyBundleItemInternal:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.BMBountyBundleItemInternal:setScale( 1.06, 1.06 ) --[[ @ 0]]
				f6_arg0.BMBountyBundleItemInternal:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.BMBountyBundleItemInternal:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.BMBountyBundleItemInternal:completeAnimation() --[[ @ 0]]
			f6_arg0.BMBountyBundleItemInternal:setScale( 1, 1 ) --[[ @ 0]]
			f6_local0( f6_arg0.BMBountyBundleItemInternal ) --[[ @ 0]]
			local f6_local1 = function ( f8_arg0 )
				f6_arg0.FrontendFrame01:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.FrontendFrame01:setScale( 1.06, 1.06 ) --[[ @ 0]]
				f6_arg0.FrontendFrame01:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.FrontendFrame01:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.FrontendFrame01:completeAnimation() --[[ @ 0]]
			f6_arg0.FrontendFrame01:setScale( 1, 1 ) --[[ @ 0]]
			f6_local1( f6_arg0.FrontendFrame01 ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.BMBountyBundleItemInternal:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.BMBountyBundleItemInternal:setScale( 1, 1 ) --[[ @ 0]]
				f9_arg0.BMBountyBundleItemInternal:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.BMBountyBundleItemInternal:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.BMBountyBundleItemInternal:completeAnimation() --[[ @ 0]]
			f9_arg0.BMBountyBundleItemInternal:setScale( 1.06, 1.06 ) --[[ @ 0]]
			f9_local0( f9_arg0.BMBountyBundleItemInternal ) --[[ @ 0]]
			local f9_local1 = function ( f11_arg0 )
				f9_arg0.FrontendFrame01:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.FrontendFrame01:setScale( 1, 1 ) --[[ @ 0]]
				f9_arg0.FrontendFrame01:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.FrontendFrame01:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.FrontendFrame01:completeAnimation() --[[ @ 0]]
			f9_arg0.FrontendFrame01:setScale( 1.06, 1.06 ) --[[ @ 0]]
			f9_local1( f9_arg0.FrontendFrame01 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.BM_BountyBundleItem.__onClose = function ( f12_arg0 )
	f12_arg0.BMBountyBundleItemInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
