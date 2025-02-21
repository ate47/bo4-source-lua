-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:4868c97f4f4173f9" ) --[[ @ 0]]
require( "x64:3dd2971a6510d135" ) --[[ @ 0]]

CoD.LaboratoryListItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LaboratoryListItem.__defaultWidth = 150 --[[ @ 0]]
CoD.LaboratoryListItem.__defaultHeight = 150 --[[ @ 0]]
CoD.LaboratoryListItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LaboratoryListItem ) --[[ @ 0]]
	self.id = "LaboratoryListItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Description = CoD.LaboratoryOfferNameAndDescription.new( f1_arg0, f1_arg1, 0, 0, 25, 460, 0, 0, 176, 218 ) --[[ @ 0]]
	Description:setAlpha( 0 ) --[[ @ 0]]
	Description:linkToElementModel( self, nil, false, function ( model )
		Description:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Description:linkToElementModel( self, "labelName", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Description.name:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Description ) --[[ @ 0]]
	self.Description = Description --[[ @ 0]]
	
	local Corner = LUI.UIImage.new( 0.5, 0.5, -10.5, 10.5, 0, 0, 153, 170 ) --[[ @ 0]]
	Corner:setAlpha( 0 ) --[[ @ 0]]
	Corner:setImage( RegisterImage( @"uie_zm_hud_cornerdecoration_half" ) ) --[[ @ 0]]
	self:addElement( Corner ) --[[ @ 0]]
	self.Corner = Corner --[[ @ 0]]
	
	local LaboratoryListItemInternal = CoD.LaboratoryListItemInternal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	LaboratoryListItemInternal:linkToElementModel( self, nil, false, function ( model )
		LaboratoryListItemInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LaboratoryListItemInternal ) --[[ @ 0]]
	self.LaboratoryListItemInternal = LaboratoryListItemInternal --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Middle",
			condition = function ( menu, element, event )
				return CoD.GridAndListUtility.IsElementAtColumnIndex( element, 2 )
			end
		},
		{
			stateName = "Right",
			condition = function ( menu, element, event )
				return CoD.GridAndListUtility.IsElementAtColumnIndex( element, 3 )
			end
		}
	} ) --[[ @ 0]]
	LaboratoryListItemInternal.id = "LaboratoryListItemInternal" --[[ @ 0]]
	self.__defaultFocus = LaboratoryListItemInternal --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LaboratoryListItem.__resetProperties = function ( f7_arg0 )
	f7_arg0.Description:completeAnimation() --[[ @ 0]]
	f7_arg0.LaboratoryListItemInternal:completeAnimation() --[[ @ 0]]
	f7_arg0.Corner:completeAnimation() --[[ @ 0]]
	f7_arg0.Description:setLeftRight( 0, 0, 25, 460 ) --[[ @ 0]]
	f7_arg0.Description:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.LaboratoryListItemInternal:setScale( 1, 1 ) --[[ @ 0]]
	f7_arg0.Corner:setLeftRight( 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	f7_arg0.Corner:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LaboratoryListItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.Description:completeAnimation() --[[ @ 0]]
			f8_arg0.Description:setLeftRight( 0, 0, 25, 460 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Description ) --[[ @ 0]]
		end,
		ChildFocus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f9_arg0.Description:completeAnimation() --[[ @ 0]]
			f9_arg0.Description:setLeftRight( 0, 0, 25, 460 ) --[[ @ 0]]
			f9_arg0.Description:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Description ) --[[ @ 0]]
			f9_arg0.Corner:completeAnimation() --[[ @ 0]]
			f9_arg0.Corner:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Corner ) --[[ @ 0]]
			f9_arg0.LaboratoryListItemInternal:completeAnimation() --[[ @ 0]]
			f9_arg0.LaboratoryListItemInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.LaboratoryListItemInternal ) --[[ @ 0]]
		end,
		ChildGainFocus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.Description:beginAnimation( 100 ) --[[ @ 0]]
				f10_arg0.Description:setAlpha( 1 ) --[[ @ 0]]
				f10_arg0.Description:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.Description:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.Description:completeAnimation() --[[ @ 0]]
			f10_arg0.Description:setLeftRight( 0, 0, 25, 460 ) --[[ @ 0]]
			f10_arg0.Description:setAlpha( 0 ) --[[ @ 0]]
			f10_local0( f10_arg0.Description ) --[[ @ 0]]
			local f10_local1 = function ( f12_arg0 )
				f10_arg0.Corner:beginAnimation( 150 ) --[[ @ 0]]
				f10_arg0.Corner:setAlpha( 1 ) --[[ @ 0]]
				f10_arg0.Corner:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.Corner:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.Corner:completeAnimation() --[[ @ 0]]
			f10_arg0.Corner:setAlpha( 0 ) --[[ @ 0]]
			f10_local1( f10_arg0.Corner ) --[[ @ 0]]
			local f10_local2 = function ( f13_arg0 )
				f10_arg0.LaboratoryListItemInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f10_arg0.LaboratoryListItemInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f10_arg0.LaboratoryListItemInternal:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.LaboratoryListItemInternal:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.LaboratoryListItemInternal:completeAnimation() --[[ @ 0]]
			f10_arg0.LaboratoryListItemInternal:setScale( 1, 1 ) --[[ @ 0]]
			f10_local2( f10_arg0.LaboratoryListItemInternal ) --[[ @ 0]]
		end,
		ChildLoseFocus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f14_arg0.Description:beginAnimation( 100 ) --[[ @ 0]]
				f14_arg0.Description:setAlpha( 0 ) --[[ @ 0]]
				f14_arg0.Description:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.Description:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.Description:completeAnimation() --[[ @ 0]]
			f14_arg0.Description:setLeftRight( 0, 0, 25, 460 ) --[[ @ 0]]
			f14_arg0.Description:setAlpha( 1 ) --[[ @ 0]]
			f14_local0( f14_arg0.Description ) --[[ @ 0]]
			local f14_local1 = function ( f16_arg0 )
				f14_arg0.Corner:beginAnimation( 150 ) --[[ @ 0]]
				f14_arg0.Corner:setAlpha( 0 ) --[[ @ 0]]
				f14_arg0.Corner:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.Corner:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.Corner:completeAnimation() --[[ @ 0]]
			f14_arg0.Corner:setAlpha( 1 ) --[[ @ 0]]
			f14_local1( f14_arg0.Corner ) --[[ @ 0]]
			local f14_local2 = function ( f17_arg0 )
				f14_arg0.LaboratoryListItemInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f14_arg0.LaboratoryListItemInternal:setScale( 1, 1 ) --[[ @ 0]]
				f14_arg0.LaboratoryListItemInternal:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.LaboratoryListItemInternal:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.LaboratoryListItemInternal:completeAnimation() --[[ @ 0]]
			f14_arg0.LaboratoryListItemInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f14_local2( f14_arg0.LaboratoryListItemInternal ) --[[ @ 0]]
		end
	},
	Middle = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f18_arg0.Description:completeAnimation() --[[ @ 0]]
			f18_arg0.Description:setLeftRight( 0.5, 0.5, -217.5, 217.5 ) --[[ @ 0]]
			f18_arg0.Description:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Description ) --[[ @ 0]]
			f18_arg0.Corner:completeAnimation() --[[ @ 0]]
			f18_arg0.Corner:setLeftRight( 0, 0, 64.5, 85.5 ) --[[ @ 0]]
			f18_arg0.Corner:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Corner ) --[[ @ 0]]
		end,
		ChildFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f19_arg0.Description:completeAnimation() --[[ @ 0]]
			f19_arg0.Description:setLeftRight( 0.5, 0.5, -217.5, 217.5 ) --[[ @ 0]]
			f19_arg0.Description:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Description ) --[[ @ 0]]
			f19_arg0.Corner:completeAnimation() --[[ @ 0]]
			f19_arg0.Corner:setLeftRight( 0, 0, 64.5, 85.5 ) --[[ @ 0]]
			f19_arg0.Corner:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Corner ) --[[ @ 0]]
			f19_arg0.LaboratoryListItemInternal:completeAnimation() --[[ @ 0]]
			f19_arg0.LaboratoryListItemInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.LaboratoryListItemInternal ) --[[ @ 0]]
		end,
		ChildGainFocus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f20_local0 = function ( f21_arg0 )
				f20_arg0.Description:beginAnimation( 100 ) --[[ @ 0]]
				f20_arg0.Description:setAlpha( 1 ) --[[ @ 0]]
				f20_arg0.Description:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.Description:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.Description:completeAnimation() --[[ @ 0]]
			f20_arg0.Description:setLeftRight( 0.5, 0.5, -217.5, 217.5 ) --[[ @ 0]]
			f20_arg0.Description:setAlpha( 0 ) --[[ @ 0]]
			f20_local0( f20_arg0.Description ) --[[ @ 0]]
			local f20_local1 = function ( f22_arg0 )
				f20_arg0.Corner:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.Corner:setAlpha( 1 ) --[[ @ 0]]
				f20_arg0.Corner:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.Corner:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.Corner:completeAnimation() --[[ @ 0]]
			f20_arg0.Corner:setLeftRight( 0, 0, 64.5, 85.5 ) --[[ @ 0]]
			f20_arg0.Corner:setAlpha( 0 ) --[[ @ 0]]
			f20_local1( f20_arg0.Corner ) --[[ @ 0]]
			local f20_local2 = function ( f23_arg0 )
				f20_arg0.LaboratoryListItemInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f20_arg0.LaboratoryListItemInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f20_arg0.LaboratoryListItemInternal:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.LaboratoryListItemInternal:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.LaboratoryListItemInternal:completeAnimation() --[[ @ 0]]
			f20_arg0.LaboratoryListItemInternal:setScale( 1, 1 ) --[[ @ 0]]
			f20_local2( f20_arg0.LaboratoryListItemInternal ) --[[ @ 0]]
		end,
		ChildLoseFocus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.Description:beginAnimation( 100 ) --[[ @ 0]]
				f24_arg0.Description:setAlpha( 0 ) --[[ @ 0]]
				f24_arg0.Description:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.Description:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.Description:completeAnimation() --[[ @ 0]]
			f24_arg0.Description:setLeftRight( 0.5, 0.5, -215, 215 ) --[[ @ 0]]
			f24_arg0.Description:setAlpha( 1 ) --[[ @ 0]]
			f24_local0( f24_arg0.Description ) --[[ @ 0]]
			local f24_local1 = function ( f26_arg0 )
				f24_arg0.Corner:beginAnimation( 150 ) --[[ @ 0]]
				f24_arg0.Corner:setAlpha( 0 ) --[[ @ 0]]
				f24_arg0.Corner:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.Corner:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.Corner:completeAnimation() --[[ @ 0]]
			f24_arg0.Corner:setLeftRight( 0, 0, 64.5, 85.5 ) --[[ @ 0]]
			f24_arg0.Corner:setAlpha( 1 ) --[[ @ 0]]
			f24_local1( f24_arg0.Corner ) --[[ @ 0]]
			local f24_local2 = function ( f27_arg0 )
				f24_arg0.LaboratoryListItemInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f24_arg0.LaboratoryListItemInternal:setScale( 1, 1 ) --[[ @ 0]]
				f24_arg0.LaboratoryListItemInternal:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.LaboratoryListItemInternal:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.LaboratoryListItemInternal:completeAnimation() --[[ @ 0]]
			f24_arg0.LaboratoryListItemInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f24_local2( f24_arg0.LaboratoryListItemInternal ) --[[ @ 0]]
		end
	},
	Right = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f28_arg0.Description:completeAnimation() --[[ @ 0]]
			f28_arg0.Description:setLeftRight( 1, 1, -460, -25 ) --[[ @ 0]]
			f28_arg0.Description:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Description ) --[[ @ 0]]
			f28_arg0.Corner:completeAnimation() --[[ @ 0]]
			f28_arg0.Corner:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Corner ) --[[ @ 0]]
		end,
		ChildFocus = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f29_arg0.Description:completeAnimation() --[[ @ 0]]
			f29_arg0.Description:setLeftRight( 1, 1, -460, -25 ) --[[ @ 0]]
			f29_arg0.Description:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.Description ) --[[ @ 0]]
			f29_arg0.Corner:completeAnimation() --[[ @ 0]]
			f29_arg0.Corner:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.Corner ) --[[ @ 0]]
			f29_arg0.LaboratoryListItemInternal:completeAnimation() --[[ @ 0]]
			f29_arg0.LaboratoryListItemInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.LaboratoryListItemInternal ) --[[ @ 0]]
		end,
		ChildGainFocus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				f30_arg0.Description:beginAnimation( 100 ) --[[ @ 0]]
				f30_arg0.Description:setAlpha( 1 ) --[[ @ 0]]
				f30_arg0.Description:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.Description:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.Description:completeAnimation() --[[ @ 0]]
			f30_arg0.Description:setLeftRight( 1, 1, -460, -25 ) --[[ @ 0]]
			f30_arg0.Description:setAlpha( 0 ) --[[ @ 0]]
			f30_local0( f30_arg0.Description ) --[[ @ 0]]
			local f30_local1 = function ( f32_arg0 )
				f30_arg0.Corner:beginAnimation( 150 ) --[[ @ 0]]
				f30_arg0.Corner:setAlpha( 1 ) --[[ @ 0]]
				f30_arg0.Corner:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.Corner:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.Corner:completeAnimation() --[[ @ 0]]
			f30_arg0.Corner:setAlpha( 0 ) --[[ @ 0]]
			f30_local1( f30_arg0.Corner ) --[[ @ 0]]
			local f30_local2 = function ( f33_arg0 )
				f30_arg0.LaboratoryListItemInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f30_arg0.LaboratoryListItemInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f30_arg0.LaboratoryListItemInternal:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.LaboratoryListItemInternal:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.LaboratoryListItemInternal:completeAnimation() --[[ @ 0]]
			f30_arg0.LaboratoryListItemInternal:setScale( 1, 1 ) --[[ @ 0]]
			f30_local2( f30_arg0.LaboratoryListItemInternal ) --[[ @ 0]]
		end,
		ChildLoseFocus = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f34_local0 = function ( f35_arg0 )
				f34_arg0.Description:beginAnimation( 100 ) --[[ @ 0]]
				f34_arg0.Description:setAlpha( 0 ) --[[ @ 0]]
				f34_arg0.Description:registerEventHandler( "interrupted_keyframe", f34_arg0.clipInterrupted ) --[[ @ 0]]
				f34_arg0.Description:registerEventHandler( "transition_complete_keyframe", f34_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f34_arg0.Description:completeAnimation() --[[ @ 0]]
			f34_arg0.Description:setLeftRight( 1, 1, -460, -25 ) --[[ @ 0]]
			f34_arg0.Description:setAlpha( 1 ) --[[ @ 0]]
			f34_local0( f34_arg0.Description ) --[[ @ 0]]
			local f34_local1 = function ( f36_arg0 )
				f34_arg0.Corner:beginAnimation( 150 ) --[[ @ 0]]
				f34_arg0.Corner:setAlpha( 0 ) --[[ @ 0]]
				f34_arg0.Corner:registerEventHandler( "interrupted_keyframe", f34_arg0.clipInterrupted ) --[[ @ 0]]
				f34_arg0.Corner:registerEventHandler( "transition_complete_keyframe", f34_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f34_arg0.Corner:completeAnimation() --[[ @ 0]]
			f34_arg0.Corner:setAlpha( 1 ) --[[ @ 0]]
			f34_local1( f34_arg0.Corner ) --[[ @ 0]]
			local f34_local2 = function ( f37_arg0 )
				f34_arg0.LaboratoryListItemInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f34_arg0.LaboratoryListItemInternal:setScale( 1, 1 ) --[[ @ 0]]
				f34_arg0.LaboratoryListItemInternal:registerEventHandler( "interrupted_keyframe", f34_arg0.clipInterrupted ) --[[ @ 0]]
				f34_arg0.LaboratoryListItemInternal:registerEventHandler( "transition_complete_keyframe", f34_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f34_arg0.LaboratoryListItemInternal:completeAnimation() --[[ @ 0]]
			f34_arg0.LaboratoryListItemInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f34_local2( f34_arg0.LaboratoryListItemInternal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LaboratoryListItem.__onClose = function ( f38_arg0 )
	f38_arg0.Description:close() --[[ @ 0]]
	f38_arg0.LaboratoryListItemInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
