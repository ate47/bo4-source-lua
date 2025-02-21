-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.WarzoneInventoryCalloutGestureHintText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneInventoryCalloutGestureHintText.__defaultWidth = 470 --[[ @ 0]]
CoD.WarzoneInventoryCalloutGestureHintText.__defaultHeight = 18 --[[ @ 0]]
CoD.WarzoneInventoryCalloutGestureHintText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneInventoryCalloutGestureHintText ) --[[ @ 0]]
	self.id = "WarzoneInventoryCalloutGestureHintText" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local QuickLabel2 = LUI.UIText.new( 0, 0, -63, 195, 0, 0, 0, 18 ) --[[ @ 0]]
	QuickLabel2:setText( LocalizeToUpperString( @"hash_2141F3EAEF2341BB" ) ) --[[ @ 0]]
	QuickLabel2:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	QuickLabel2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	QuickLabel2:setShaderVector( 0, 0.6, 0, 0, 0 ) --[[ @ 0]]
	QuickLabel2:setShaderVector( 1, 0.3, 0, 0, 0 ) --[[ @ 0]]
	QuickLabel2:setShaderVector( 2, 0, 0, 0, 1 ) --[[ @ 0]]
	QuickLabel2:setLetterSpacing( 2 ) --[[ @ 0]]
	QuickLabel2:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	QuickLabel2:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( QuickLabel2 ) --[[ @ 0]]
	self.QuickLabel2 = QuickLabel2 --[[ @ 0]]
	
	local QuickLabel3 = LUI.UIText.new( 0, 0, 275, 526, 0, 0, 0, 18 ) --[[ @ 0]]
	QuickLabel3:setText( LocalizeToUpperString( @"hash_34A2541E3E7EACED" ) ) --[[ @ 0]]
	QuickLabel3:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	QuickLabel3:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	QuickLabel3:setShaderVector( 0, 0.6, 0, 0, 0 ) --[[ @ 0]]
	QuickLabel3:setShaderVector( 1, 0.3, 0, 0, 0 ) --[[ @ 0]]
	QuickLabel3:setShaderVector( 2, 0, 0, 0, 1 ) --[[ @ 0]]
	QuickLabel3:setLetterSpacing( 2 ) --[[ @ 0]]
	QuickLabel3:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	QuickLabel3:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( QuickLabel3 ) --[[ @ 0]]
	self.QuickLabel3 = QuickLabel3 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HasActivatedCallotusOrGestures",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarzoneInventoryCalloutGestureHintText.__resetProperties = function ( f3_arg0 )
	f3_arg0.QuickLabel2:completeAnimation() --[[ @ 0]]
	f3_arg0.QuickLabel3:completeAnimation() --[[ @ 0]]
	f3_arg0.QuickLabel2:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.QuickLabel3:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneInventoryCalloutGestureHintText.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					f6_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f6_arg0:setAlpha( 0 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.QuickLabel2:beginAnimation( 5000 ) --[[ @ 0]]
				f4_arg0.QuickLabel2:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.QuickLabel2:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.QuickLabel2:completeAnimation() --[[ @ 0]]
			f4_arg0.QuickLabel2:setAlpha( 1 ) --[[ @ 0]]
			f4_local0( f4_arg0.QuickLabel2 ) --[[ @ 0]]
			local f4_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					f8_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.QuickLabel3:beginAnimation( 5000 ) --[[ @ 0]]
				f4_arg0.QuickLabel3:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.QuickLabel3:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.QuickLabel3:completeAnimation() --[[ @ 0]]
			f4_arg0.QuickLabel3:setAlpha( 1 ) --[[ @ 0]]
			f4_local1( f4_arg0.QuickLabel3 ) --[[ @ 0]]
		end,
		HasActivatedCallotusOrGestures = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.QuickLabel2:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.QuickLabel2:setAlpha( 0 ) --[[ @ 0]]
				f9_arg0.QuickLabel2:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.QuickLabel2:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.QuickLabel2:completeAnimation() --[[ @ 0]]
			f9_arg0.QuickLabel2:setAlpha( 1 ) --[[ @ 0]]
			f9_local0( f9_arg0.QuickLabel2 ) --[[ @ 0]]
			local f9_local1 = function ( f11_arg0 )
				f9_arg0.QuickLabel3:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.QuickLabel3:setAlpha( 0 ) --[[ @ 0]]
				f9_arg0.QuickLabel3:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.QuickLabel3:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.QuickLabel3:completeAnimation() --[[ @ 0]]
			f9_arg0.QuickLabel3:setAlpha( 1 ) --[[ @ 0]]
			f9_local1( f9_arg0.QuickLabel3 ) --[[ @ 0]]
		end
	},
	HasActivatedCallotusOrGestures = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f12_arg0.QuickLabel2:completeAnimation() --[[ @ 0]]
			f12_arg0.QuickLabel2:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.QuickLabel2 ) --[[ @ 0]]
			f12_arg0.QuickLabel3:completeAnimation() --[[ @ 0]]
			f12_arg0.QuickLabel3:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.QuickLabel3 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
