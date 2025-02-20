-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
CoD.KillcamNemesisArrow = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.KillcamNemesisArrow.__defaultWidth = 150 --[[ @ 0]]
CoD.KillcamNemesisArrow.__defaultHeight = 58 --[[ @ 0]]
CoD.KillcamNemesisArrow.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.KillcamNemesisArrow ) --[[ @ 0]]
	self.id = "KillcamNemesisArrow" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local arrowTopR01 = LUI.UIImage.new( 0, 0, 126, 147, 0, 0, 7, 52 ) --[[ @ 0]]
	arrowTopR01:setAlpha( 0.5 ) --[[ @ 0]]
	arrowTopR01:setScale( 1, 0.6 ) --[[ @ 0]]
	arrowTopR01:setImage( RegisterImage( @"hash_4C0988BF8D5576A0" ) ) --[[ @ 0]]
	self:addElement( arrowTopR01 ) --[[ @ 0]]
	self.arrowTopR01 = arrowTopR01 --[[ @ 0]]
	
	local arrowTopR02 = LUI.UIImage.new( 0, 0, 143, 164, 0, 0, 7, 52 ) --[[ @ 0]]
	arrowTopR02:setAlpha( 0.2 ) --[[ @ 0]]
	arrowTopR02:setScale( 1, 0.6 ) --[[ @ 0]]
	arrowTopR02:setImage( RegisterImage( @"hash_4C0988BF8D5576A0" ) ) --[[ @ 0]]
	self:addElement( arrowTopR02 ) --[[ @ 0]]
	self.arrowTopR02 = arrowTopR02 --[[ @ 0]]
	
	local arrowTopR03 = LUI.UIImage.new( 0, 0, 160, 181, 0, 0, 7, 52 ) --[[ @ 0]]
	arrowTopR03:setAlpha( 0.1 ) --[[ @ 0]]
	arrowTopR03:setScale( 1, 0.6 ) --[[ @ 0]]
	arrowTopR03:setImage( RegisterImage( @"hash_4C0988BF8D5576A0" ) ) --[[ @ 0]]
	self:addElement( arrowTopR03 ) --[[ @ 0]]
	self.arrowTopR03 = arrowTopR03 --[[ @ 0]]
	
	local arrowTopL01 = LUI.UIImage.new( 0, 0, 2, 23, 0, 0, 7, 52 ) --[[ @ 0]]
	arrowTopL01:setAlpha( 0.5 ) --[[ @ 0]]
	arrowTopL01:setZRot( 180 ) --[[ @ 0]]
	arrowTopL01:setScale( 1, 0.6 ) --[[ @ 0]]
	arrowTopL01:setImage( RegisterImage( @"hash_4C0988BF8D5576A0" ) ) --[[ @ 0]]
	self:addElement( arrowTopL01 ) --[[ @ 0]]
	self.arrowTopL01 = arrowTopL01 --[[ @ 0]]
	
	local arrowTopL02 = LUI.UIImage.new( 0, 0, -15, 6, 0, 0, 7, 52 ) --[[ @ 0]]
	arrowTopL02:setAlpha( 0.2 ) --[[ @ 0]]
	arrowTopL02:setZRot( 180 ) --[[ @ 0]]
	arrowTopL02:setScale( 1, 0.6 ) --[[ @ 0]]
	arrowTopL02:setImage( RegisterImage( @"hash_4C0988BF8D5576A0" ) ) --[[ @ 0]]
	self:addElement( arrowTopL02 ) --[[ @ 0]]
	self.arrowTopL02 = arrowTopL02 --[[ @ 0]]
	
	local arrowTopL03 = LUI.UIImage.new( 0, 0, -32, -11, 0, 0, 7, 52 ) --[[ @ 0]]
	arrowTopL03:setAlpha( 0.1 ) --[[ @ 0]]
	arrowTopL03:setZRot( 180 ) --[[ @ 0]]
	arrowTopL03:setScale( 1, 0.6 ) --[[ @ 0]]
	arrowTopL03:setImage( RegisterImage( @"hash_4C0988BF8D5576A0" ) ) --[[ @ 0]]
	self:addElement( arrowTopL03 ) --[[ @ 0]]
	self.arrowTopL03 = arrowTopL03 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Killcam",
			condition = function ( menu, element, event )
				local f2_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"] ) --[[ @ 0]]
				if f2_local0 then
					if not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_5A77EB9347BE4DFF"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_11CDCB451655ABCF"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_54828BED794DA0A5"] ) then
						f2_local0 = not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"] ) --[[ @ 0]]
					else
						f2_local0 = false --[[ @ 0]]
					end
				end
				return f2_local0
			end
		},
		{
			stateName = "FinalKillcam",
			condition = function ( menu, element, event )
				local f3_local0 --[[ @ 0]]
				if not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_5A77EB9347BE4DFF"] ) then
					f3_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_11CDCB451655ABCF"] ) --[[ @ 0]]
					if f3_local0 then
						if not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_54828BED794DA0A5"] ) then
							f3_local0 = not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"] ) --[[ @ 0]]
						else
							f3_local0 = false --[[ @ 0]]
						end
					end
				else
					f3_local0 = false --[[ @ 0]]
				end
				return f3_local0
			end
		},
		{
			stateName = "RoundEndingKillcam",
			condition = function ( menu, element, event )
				local f4_local0 --[[ @ 0]]
				if not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_5A77EB9347BE4DFF"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_11CDCB451655ABCF"] ) then
					f4_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_54828BED794DA0A5"] ) --[[ @ 0]]
					if f4_local0 then
						f4_local0 = not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"] ) --[[ @ 0]]
					end
				else
					f4_local0 = false --[[ @ 0]]
				end
				return f4_local0
			end
		},
		{
			stateName = "NemesisKillcam",
			condition = function ( menu, element, event )
				local f5_local0 --[[ @ 0]]
				if not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"] ) then
					f5_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_5A77EB9347BE4DFF"] ) --[[ @ 0]]
					if f5_local0 then
						if not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_11CDCB451655ABCF"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_54828BED794DA0A5"] ) then
							f5_local0 = not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"] ) --[[ @ 0]]
						else
							f5_local0 = false --[[ @ 0]]
						end
					end
				else
					f5_local0 = false --[[ @ 0]]
				end
				return f5_local0
			end
		},
		{
			stateName = "PlayOfTheMatch",
			condition = function ( menu, element, event )
				local f6_local0 --[[ @ 0]]
				if not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_5A77EB9347BE4DFF"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_11CDCB451655ABCF"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_54828BED794DA0A5"] ) then
					f6_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"] ) --[[ @ 0]]
				else
					f6_local0 = false --[[ @ 0]]
				end
				return f6_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local7 = self --[[ @ 0]]
	local f1_local8 = self.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"]], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_5A77EB9347BE4DFF"]], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_5A77EB9347BE4DFF"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_11CDCB451655ABCF"]], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_11CDCB451655ABCF"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_54828BED794DA0A5"]], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_54828BED794DA0A5"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"]], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.KillcamNemesisArrow.__resetProperties = function ( f12_arg0 )
	f12_arg0.arrowTopR01:completeAnimation() --[[ @ 0]]
	f12_arg0.arrowTopL01:completeAnimation() --[[ @ 0]]
	f12_arg0.arrowTopL03:completeAnimation() --[[ @ 0]]
	f12_arg0.arrowTopL02:completeAnimation() --[[ @ 0]]
	f12_arg0.arrowTopR03:completeAnimation() --[[ @ 0]]
	f12_arg0.arrowTopR02:completeAnimation() --[[ @ 0]]
	f12_arg0.arrowTopR01:setAlpha( 0.5 ) --[[ @ 0]]
	f12_arg0.arrowTopL01:setAlpha( 0.5 ) --[[ @ 0]]
	f12_arg0.arrowTopL03:setAlpha( 0.1 ) --[[ @ 0]]
	f12_arg0.arrowTopL02:setAlpha( 0.2 ) --[[ @ 0]]
	f12_arg0.arrowTopR03:setAlpha( 0.1 ) --[[ @ 0]]
	f12_arg0.arrowTopR02:setAlpha( 0.2 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.KillcamNemesisArrow.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f13_arg0.arrowTopR01:completeAnimation() --[[ @ 0]]
			f13_arg0.arrowTopR01:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.arrowTopR01 ) --[[ @ 0]]
			f13_arg0.arrowTopR02:completeAnimation() --[[ @ 0]]
			f13_arg0.arrowTopR02:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.arrowTopR02 ) --[[ @ 0]]
			f13_arg0.arrowTopR03:completeAnimation() --[[ @ 0]]
			f13_arg0.arrowTopR03:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.arrowTopR03 ) --[[ @ 0]]
			f13_arg0.arrowTopL01:completeAnimation() --[[ @ 0]]
			f13_arg0.arrowTopL01:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.arrowTopL01 ) --[[ @ 0]]
			f13_arg0.arrowTopL02:completeAnimation() --[[ @ 0]]
			f13_arg0.arrowTopL02:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.arrowTopL02 ) --[[ @ 0]]
			f13_arg0.arrowTopL03:completeAnimation() --[[ @ 0]]
			f13_arg0.arrowTopL03:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.arrowTopL03 ) --[[ @ 0]]
		end
	},
	Killcam = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					f16_arg0:beginAnimation( 299, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f16_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f14_arg0.arrowTopR01:beginAnimation( 600 ) --[[ @ 0]]
				f14_arg0.arrowTopR01:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.arrowTopR01:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.arrowTopR01:completeAnimation() --[[ @ 0]]
			f14_arg0.arrowTopR01:setAlpha( 0 ) --[[ @ 0]]
			f14_local0( f14_arg0.arrowTopR01 ) --[[ @ 0]]
			local f14_local1 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f18_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f14_arg0.arrowTopR02:beginAnimation( 300 ) --[[ @ 0]]
				f14_arg0.arrowTopR02:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.arrowTopR02:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.arrowTopR02:completeAnimation() --[[ @ 0]]
			f14_arg0.arrowTopR02:setAlpha( 0 ) --[[ @ 0]]
			f14_local1( f14_arg0.arrowTopR02 ) --[[ @ 0]]
			local f14_local2 = function ( f19_arg0 )
				f14_arg0.arrowTopR03:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f14_arg0.arrowTopR03:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.arrowTopR03:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.arrowTopR03:completeAnimation() --[[ @ 0]]
			f14_arg0.arrowTopR03:setAlpha( 0.1 ) --[[ @ 0]]
			f14_local2( f14_arg0.arrowTopR03 ) --[[ @ 0]]
			local f14_local3 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					f21_arg0:beginAnimation( 299, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f21_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f14_arg0.arrowTopL01:beginAnimation( 600 ) --[[ @ 0]]
				f14_arg0.arrowTopL01:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.arrowTopL01:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.arrowTopL01:completeAnimation() --[[ @ 0]]
			f14_arg0.arrowTopL01:setAlpha( 0 ) --[[ @ 0]]
			f14_local3( f14_arg0.arrowTopL01 ) --[[ @ 0]]
			local f14_local4 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					f23_arg0:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f23_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f14_arg0.arrowTopL02:beginAnimation( 300 ) --[[ @ 0]]
				f14_arg0.arrowTopL02:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.arrowTopL02:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.arrowTopL02:completeAnimation() --[[ @ 0]]
			f14_arg0.arrowTopL02:setAlpha( 0 ) --[[ @ 0]]
			f14_local4( f14_arg0.arrowTopL02 ) --[[ @ 0]]
			local f14_local5 = function ( f24_arg0 )
				f14_arg0.arrowTopL03:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f14_arg0.arrowTopL03:setAlpha( 0.1 ) --[[ @ 0]]
				f14_arg0.arrowTopL03:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.arrowTopL03:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.arrowTopL03:completeAnimation() --[[ @ 0]]
			f14_arg0.arrowTopL03:setAlpha( 0 ) --[[ @ 0]]
			f14_local5( f14_arg0.arrowTopL03 ) --[[ @ 0]]
			f14_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	FinalKillcam = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					f27_arg0:beginAnimation( 299, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f27_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f25_arg0.arrowTopR01:beginAnimation( 600 ) --[[ @ 0]]
				f25_arg0.arrowTopR01:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.arrowTopR01:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.arrowTopR01:completeAnimation() --[[ @ 0]]
			f25_arg0.arrowTopR01:setAlpha( 0 ) --[[ @ 0]]
			f25_local0( f25_arg0.arrowTopR01 ) --[[ @ 0]]
			local f25_local1 = function ( f28_arg0 )
				local f28_local0 = function ( f29_arg0 )
					f29_arg0:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f29_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f29_arg0:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f25_arg0.arrowTopR02:beginAnimation( 300 ) --[[ @ 0]]
				f25_arg0.arrowTopR02:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.arrowTopR02:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.arrowTopR02:completeAnimation() --[[ @ 0]]
			f25_arg0.arrowTopR02:setAlpha( 0 ) --[[ @ 0]]
			f25_local1( f25_arg0.arrowTopR02 ) --[[ @ 0]]
			local f25_local2 = function ( f30_arg0 )
				f25_arg0.arrowTopR03:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f25_arg0.arrowTopR03:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.arrowTopR03:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.arrowTopR03:completeAnimation() --[[ @ 0]]
			f25_arg0.arrowTopR03:setAlpha( 0.1 ) --[[ @ 0]]
			f25_local2( f25_arg0.arrowTopR03 ) --[[ @ 0]]
			local f25_local3 = function ( f31_arg0 )
				local f31_local0 = function ( f32_arg0 )
					f32_arg0:beginAnimation( 299, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f32_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f32_arg0:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f25_arg0.arrowTopL01:beginAnimation( 600 ) --[[ @ 0]]
				f25_arg0.arrowTopL01:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.arrowTopL01:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.arrowTopL01:completeAnimation() --[[ @ 0]]
			f25_arg0.arrowTopL01:setAlpha( 0 ) --[[ @ 0]]
			f25_local3( f25_arg0.arrowTopL01 ) --[[ @ 0]]
			local f25_local4 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					f34_arg0:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f34_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f25_arg0.arrowTopL02:beginAnimation( 300 ) --[[ @ 0]]
				f25_arg0.arrowTopL02:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.arrowTopL02:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.arrowTopL02:completeAnimation() --[[ @ 0]]
			f25_arg0.arrowTopL02:setAlpha( 0 ) --[[ @ 0]]
			f25_local4( f25_arg0.arrowTopL02 ) --[[ @ 0]]
			local f25_local5 = function ( f35_arg0 )
				f25_arg0.arrowTopL03:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f25_arg0.arrowTopL03:setAlpha( 0.1 ) --[[ @ 0]]
				f25_arg0.arrowTopL03:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.arrowTopL03:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.arrowTopL03:completeAnimation() --[[ @ 0]]
			f25_arg0.arrowTopL03:setAlpha( 0 ) --[[ @ 0]]
			f25_local5( f25_arg0.arrowTopL03 ) --[[ @ 0]]
		end
	},
	RoundEndingKillcam = {
		DefaultClip = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f36_local0 = function ( f37_arg0 )
				local f37_local0 = function ( f38_arg0 )
					f38_arg0:beginAnimation( 299, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f38_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f38_arg0:registerEventHandler( "transition_complete_keyframe", f36_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f36_arg0.arrowTopR01:beginAnimation( 600 ) --[[ @ 0]]
				f36_arg0.arrowTopR01:registerEventHandler( "interrupted_keyframe", f36_arg0.clipInterrupted ) --[[ @ 0]]
				f36_arg0.arrowTopR01:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f36_arg0.arrowTopR01:completeAnimation() --[[ @ 0]]
			f36_arg0.arrowTopR01:setAlpha( 0 ) --[[ @ 0]]
			f36_local0( f36_arg0.arrowTopR01 ) --[[ @ 0]]
			local f36_local1 = function ( f39_arg0 )
				local f39_local0 = function ( f40_arg0 )
					f40_arg0:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f40_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f40_arg0:registerEventHandler( "transition_complete_keyframe", f36_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f36_arg0.arrowTopR02:beginAnimation( 300 ) --[[ @ 0]]
				f36_arg0.arrowTopR02:registerEventHandler( "interrupted_keyframe", f36_arg0.clipInterrupted ) --[[ @ 0]]
				f36_arg0.arrowTopR02:registerEventHandler( "transition_complete_keyframe", f39_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f36_arg0.arrowTopR02:completeAnimation() --[[ @ 0]]
			f36_arg0.arrowTopR02:setAlpha( 0 ) --[[ @ 0]]
			f36_local1( f36_arg0.arrowTopR02 ) --[[ @ 0]]
			local f36_local2 = function ( f41_arg0 )
				f36_arg0.arrowTopR03:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f36_arg0.arrowTopR03:registerEventHandler( "interrupted_keyframe", f36_arg0.clipInterrupted ) --[[ @ 0]]
				f36_arg0.arrowTopR03:registerEventHandler( "transition_complete_keyframe", f36_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f36_arg0.arrowTopR03:completeAnimation() --[[ @ 0]]
			f36_arg0.arrowTopR03:setAlpha( 0.1 ) --[[ @ 0]]
			f36_local2( f36_arg0.arrowTopR03 ) --[[ @ 0]]
			local f36_local3 = function ( f42_arg0 )
				local f42_local0 = function ( f43_arg0 )
					f43_arg0:beginAnimation( 299, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f43_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f43_arg0:registerEventHandler( "transition_complete_keyframe", f36_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f36_arg0.arrowTopL01:beginAnimation( 600 ) --[[ @ 0]]
				f36_arg0.arrowTopL01:registerEventHandler( "interrupted_keyframe", f36_arg0.clipInterrupted ) --[[ @ 0]]
				f36_arg0.arrowTopL01:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f36_arg0.arrowTopL01:completeAnimation() --[[ @ 0]]
			f36_arg0.arrowTopL01:setAlpha( 0 ) --[[ @ 0]]
			f36_local3( f36_arg0.arrowTopL01 ) --[[ @ 0]]
			local f36_local4 = function ( f44_arg0 )
				local f44_local0 = function ( f45_arg0 )
					f45_arg0:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f45_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f45_arg0:registerEventHandler( "transition_complete_keyframe", f36_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f36_arg0.arrowTopL02:beginAnimation( 300 ) --[[ @ 0]]
				f36_arg0.arrowTopL02:registerEventHandler( "interrupted_keyframe", f36_arg0.clipInterrupted ) --[[ @ 0]]
				f36_arg0.arrowTopL02:registerEventHandler( "transition_complete_keyframe", f44_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f36_arg0.arrowTopL02:completeAnimation() --[[ @ 0]]
			f36_arg0.arrowTopL02:setAlpha( 0 ) --[[ @ 0]]
			f36_local4( f36_arg0.arrowTopL02 ) --[[ @ 0]]
			local f36_local5 = function ( f46_arg0 )
				f36_arg0.arrowTopL03:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f36_arg0.arrowTopL03:setAlpha( 0.1 ) --[[ @ 0]]
				f36_arg0.arrowTopL03:registerEventHandler( "interrupted_keyframe", f36_arg0.clipInterrupted ) --[[ @ 0]]
				f36_arg0.arrowTopL03:registerEventHandler( "transition_complete_keyframe", f36_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f36_arg0.arrowTopL03:completeAnimation() --[[ @ 0]]
			f36_arg0.arrowTopL03:setAlpha( 0 ) --[[ @ 0]]
			f36_local5( f36_arg0.arrowTopL03 ) --[[ @ 0]]
		end
	},
	NemesisKillcam = {
		DefaultClip = function ( f47_arg0, f47_arg1 )
			f47_arg0:__resetProperties() --[[ @ 0]]
			f47_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f47_local0 = function ( f48_arg0 )
				local f48_local0 = function ( f49_arg0 )
					f49_arg0:beginAnimation( 299, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f49_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f49_arg0:registerEventHandler( "transition_complete_keyframe", f47_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f47_arg0.arrowTopR01:beginAnimation( 600 ) --[[ @ 0]]
				f47_arg0.arrowTopR01:registerEventHandler( "interrupted_keyframe", f47_arg0.clipInterrupted ) --[[ @ 0]]
				f47_arg0.arrowTopR01:registerEventHandler( "transition_complete_keyframe", f48_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f47_arg0.arrowTopR01:completeAnimation() --[[ @ 0]]
			f47_arg0.arrowTopR01:setAlpha( 0 ) --[[ @ 0]]
			f47_local0( f47_arg0.arrowTopR01 ) --[[ @ 0]]
			local f47_local1 = function ( f50_arg0 )
				local f50_local0 = function ( f51_arg0 )
					f51_arg0:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f51_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f51_arg0:registerEventHandler( "transition_complete_keyframe", f47_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f47_arg0.arrowTopR02:beginAnimation( 300 ) --[[ @ 0]]
				f47_arg0.arrowTopR02:registerEventHandler( "interrupted_keyframe", f47_arg0.clipInterrupted ) --[[ @ 0]]
				f47_arg0.arrowTopR02:registerEventHandler( "transition_complete_keyframe", f50_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f47_arg0.arrowTopR02:completeAnimation() --[[ @ 0]]
			f47_arg0.arrowTopR02:setAlpha( 0 ) --[[ @ 0]]
			f47_local1( f47_arg0.arrowTopR02 ) --[[ @ 0]]
			local f47_local2 = function ( f52_arg0 )
				f47_arg0.arrowTopR03:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f47_arg0.arrowTopR03:registerEventHandler( "interrupted_keyframe", f47_arg0.clipInterrupted ) --[[ @ 0]]
				f47_arg0.arrowTopR03:registerEventHandler( "transition_complete_keyframe", f47_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f47_arg0.arrowTopR03:completeAnimation() --[[ @ 0]]
			f47_arg0.arrowTopR03:setAlpha( 0.1 ) --[[ @ 0]]
			f47_local2( f47_arg0.arrowTopR03 ) --[[ @ 0]]
			local f47_local3 = function ( f53_arg0 )
				local f53_local0 = function ( f54_arg0 )
					f54_arg0:beginAnimation( 299, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f54_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f54_arg0:registerEventHandler( "transition_complete_keyframe", f47_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f47_arg0.arrowTopL01:beginAnimation( 600 ) --[[ @ 0]]
				f47_arg0.arrowTopL01:registerEventHandler( "interrupted_keyframe", f47_arg0.clipInterrupted ) --[[ @ 0]]
				f47_arg0.arrowTopL01:registerEventHandler( "transition_complete_keyframe", f53_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f47_arg0.arrowTopL01:completeAnimation() --[[ @ 0]]
			f47_arg0.arrowTopL01:setAlpha( 0 ) --[[ @ 0]]
			f47_local3( f47_arg0.arrowTopL01 ) --[[ @ 0]]
			local f47_local4 = function ( f55_arg0 )
				local f55_local0 = function ( f56_arg0 )
					f56_arg0:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f56_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f56_arg0:registerEventHandler( "transition_complete_keyframe", f47_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f47_arg0.arrowTopL02:beginAnimation( 300 ) --[[ @ 0]]
				f47_arg0.arrowTopL02:registerEventHandler( "interrupted_keyframe", f47_arg0.clipInterrupted ) --[[ @ 0]]
				f47_arg0.arrowTopL02:registerEventHandler( "transition_complete_keyframe", f55_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f47_arg0.arrowTopL02:completeAnimation() --[[ @ 0]]
			f47_arg0.arrowTopL02:setAlpha( 0 ) --[[ @ 0]]
			f47_local4( f47_arg0.arrowTopL02 ) --[[ @ 0]]
			local f47_local5 = function ( f57_arg0 )
				f47_arg0.arrowTopL03:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f47_arg0.arrowTopL03:setAlpha( 0.1 ) --[[ @ 0]]
				f47_arg0.arrowTopL03:registerEventHandler( "interrupted_keyframe", f47_arg0.clipInterrupted ) --[[ @ 0]]
				f47_arg0.arrowTopL03:registerEventHandler( "transition_complete_keyframe", f47_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f47_arg0.arrowTopL03:completeAnimation() --[[ @ 0]]
			f47_arg0.arrowTopL03:setAlpha( 0 ) --[[ @ 0]]
			f47_local5( f47_arg0.arrowTopL03 ) --[[ @ 0]]
		end
	},
	PlayOfTheMatch = {
		DefaultClip = function ( f58_arg0, f58_arg1 )
			f58_arg0:__resetProperties() --[[ @ 0]]
			f58_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f58_local0 = function ( f59_arg0 )
				local f59_local0 = function ( f60_arg0 )
					f60_arg0:beginAnimation( 299, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f60_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f60_arg0:registerEventHandler( "transition_complete_keyframe", f58_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f58_arg0.arrowTopR01:beginAnimation( 600 ) --[[ @ 0]]
				f58_arg0.arrowTopR01:registerEventHandler( "interrupted_keyframe", f58_arg0.clipInterrupted ) --[[ @ 0]]
				f58_arg0.arrowTopR01:registerEventHandler( "transition_complete_keyframe", f59_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f58_arg0.arrowTopR01:completeAnimation() --[[ @ 0]]
			f58_arg0.arrowTopR01:setAlpha( 0 ) --[[ @ 0]]
			f58_local0( f58_arg0.arrowTopR01 ) --[[ @ 0]]
			local f58_local1 = function ( f61_arg0 )
				local f61_local0 = function ( f62_arg0 )
					f62_arg0:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f62_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f62_arg0:registerEventHandler( "transition_complete_keyframe", f58_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f58_arg0.arrowTopR02:beginAnimation( 300 ) --[[ @ 0]]
				f58_arg0.arrowTopR02:registerEventHandler( "interrupted_keyframe", f58_arg0.clipInterrupted ) --[[ @ 0]]
				f58_arg0.arrowTopR02:registerEventHandler( "transition_complete_keyframe", f61_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f58_arg0.arrowTopR02:completeAnimation() --[[ @ 0]]
			f58_arg0.arrowTopR02:setAlpha( 0 ) --[[ @ 0]]
			f58_local1( f58_arg0.arrowTopR02 ) --[[ @ 0]]
			local f58_local2 = function ( f63_arg0 )
				f58_arg0.arrowTopR03:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f58_arg0.arrowTopR03:registerEventHandler( "interrupted_keyframe", f58_arg0.clipInterrupted ) --[[ @ 0]]
				f58_arg0.arrowTopR03:registerEventHandler( "transition_complete_keyframe", f58_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f58_arg0.arrowTopR03:completeAnimation() --[[ @ 0]]
			f58_arg0.arrowTopR03:setAlpha( 0.1 ) --[[ @ 0]]
			f58_local2( f58_arg0.arrowTopR03 ) --[[ @ 0]]
			local f58_local3 = function ( f64_arg0 )
				local f64_local0 = function ( f65_arg0 )
					f65_arg0:beginAnimation( 299, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f65_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f65_arg0:registerEventHandler( "transition_complete_keyframe", f58_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f58_arg0.arrowTopL01:beginAnimation( 600 ) --[[ @ 0]]
				f58_arg0.arrowTopL01:registerEventHandler( "interrupted_keyframe", f58_arg0.clipInterrupted ) --[[ @ 0]]
				f58_arg0.arrowTopL01:registerEventHandler( "transition_complete_keyframe", f64_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f58_arg0.arrowTopL01:completeAnimation() --[[ @ 0]]
			f58_arg0.arrowTopL01:setAlpha( 0 ) --[[ @ 0]]
			f58_local3( f58_arg0.arrowTopL01 ) --[[ @ 0]]
			local f58_local4 = function ( f66_arg0 )
				local f66_local0 = function ( f67_arg0 )
					f67_arg0:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f67_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f67_arg0:registerEventHandler( "transition_complete_keyframe", f58_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f58_arg0.arrowTopL02:beginAnimation( 300 ) --[[ @ 0]]
				f58_arg0.arrowTopL02:registerEventHandler( "interrupted_keyframe", f58_arg0.clipInterrupted ) --[[ @ 0]]
				f58_arg0.arrowTopL02:registerEventHandler( "transition_complete_keyframe", f66_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f58_arg0.arrowTopL02:completeAnimation() --[[ @ 0]]
			f58_arg0.arrowTopL02:setAlpha( 0 ) --[[ @ 0]]
			f58_local4( f58_arg0.arrowTopL02 ) --[[ @ 0]]
			local f58_local5 = function ( f68_arg0 )
				f58_arg0.arrowTopL03:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f58_arg0.arrowTopL03:setAlpha( 0.1 ) --[[ @ 0]]
				f58_arg0.arrowTopL03:registerEventHandler( "interrupted_keyframe", f58_arg0.clipInterrupted ) --[[ @ 0]]
				f58_arg0.arrowTopL03:registerEventHandler( "transition_complete_keyframe", f58_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f58_arg0.arrowTopL03:completeAnimation() --[[ @ 0]]
			f58_arg0.arrowTopL03:setAlpha( 0 ) --[[ @ 0]]
			f58_local5( f58_arg0.arrowTopL03 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
