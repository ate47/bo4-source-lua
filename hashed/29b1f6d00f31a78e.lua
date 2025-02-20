-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.ProneBlocked = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ProneBlocked.__defaultWidth = 1920 --[[ @ 0]]
CoD.ProneBlocked.__defaultHeight = 24 --[[ @ 0]]
CoD.ProneBlocked.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ProneBlocked ) --[[ @ 0]]
	self.id = "ProneBlocked" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local text = LUI.UIText.new( 0.5, 0.5, -960, 960, 0, 0, 0, 24 ) --[[ @ 0]]
	text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_487CB34E02DB6C32" ) ) --[[ @ 0]]
	text:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	text:setLetterSpacing( 1 ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	text:setBackingType( 2 ) --[[ @ 0]]
	text:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	text:setBackingAlpha( 0.62 ) --[[ @ 0]]
	text:setBackingXPadding( 12 ) --[[ @ 0]]
	text:setBackingYPadding( 2 ) --[[ @ 0]]
	self:addElement( text ) --[[ @ 0]]
	self.text = text --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				local f2_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_523CD9BAB9B9F4C8"] ) --[[ @ 0]]
				if not f2_local0 then
					f2_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"] ) --[[ @ 0]]
					if not f2_local0 then
						f2_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_47B52A87BC9AA4C7"] ) --[[ @ 0]]
						if not f2_local0 then
							f2_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_6668F0686232679"] ) --[[ @ 0]]
							if not f2_local0 then
								f2_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_33AEEAA452536E6E"] ) --[[ @ 0]]
								if not f2_local0 then
									f2_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_1999FA50941A83B"] ) --[[ @ 0]]
									if not f2_local0 then
										f2_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"] ) --[[ @ 0]]
										if not f2_local0 then
											f2_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"] ) --[[ @ 0]]
										end
									end
								end
							end
						end
					end
				end
				return f2_local0
			end
		},
		{
			stateName = "ProneBlocked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "HUDItems", "proneBlocked" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_523CD9BAB9B9F4C8"]], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_523CD9BAB9B9F4C8"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"]], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_47B52A87BC9AA4C7"]], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_47B52A87BC9AA4C7"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_6668F0686232679"]], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_6668F0686232679"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_33AEEAA452536E6E"]], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_33AEEAA452536E6E"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_1999FA50941A83B"]], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_1999FA50941A83B"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"]], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"]], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.proneBlocked, function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "proneBlocked"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ProneBlocked.__resetProperties = function ( f13_arg0 )
	f13_arg0.text:completeAnimation() --[[ @ 0]]
	f13_arg0.text:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_487CB34E02DB6C32" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ProneBlocked.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.text:completeAnimation() --[[ @ 0]]
			f14_arg0.text:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.text ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.text:completeAnimation() --[[ @ 0]]
			f15_arg0.text:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.text ) --[[ @ 0]]
		end
	},
	ProneBlocked = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.text:completeAnimation() --[[ @ 0]]
			f16_arg0.text:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.text ) --[[ @ 0]]
		end,
		DefaultState = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					local f19_local0 = function ( f20_arg0 )
						local f20_local0 = function ( f21_arg0 )
							local f21_local0 = function ( f22_arg0 )
								f22_arg0:beginAnimation( 380 ) --[[ @ 0]]
								f22_arg0:setAlpha( 0 ) --[[ @ 0]]
								f22_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f21_arg0:beginAnimation( 280 ) --[[ @ 0]]
							f21_arg0:setAlpha( 0.5 ) --[[ @ 0]]
							f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f20_arg0:beginAnimation( 279 ) --[[ @ 0]]
						f20_arg0:setAlpha( 1 ) --[[ @ 0]]
						f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f19_arg0:beginAnimation( 280 ) --[[ @ 0]]
					f19_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.text:beginAnimation( 280 ) --[[ @ 0]]
				f17_arg0.text:setAlpha( 1 ) --[[ @ 0]]
				f17_arg0.text:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.text:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.text:completeAnimation() --[[ @ 0]]
			f17_arg0.text:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_487CB34E02DB6C32" ) ) --[[ @ 0]]
			f17_local0( f17_arg0.text ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
