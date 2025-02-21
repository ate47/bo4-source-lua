-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:30ec9c426ad19318" ) --[[ @ 0]]
require( "x64:19c845e427b3e350" ) --[[ @ 0]]
require( "x64:13d7fd4fcd481d79" ) --[[ @ 0]]
require( "x64:6764072a8b023151" ) --[[ @ 0]]

CoD.FinalKillcamWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FinalKillcamWidget.__defaultWidth = 1920 --[[ @ 0]]
CoD.FinalKillcamWidget.__defaultHeight = 1080 --[[ @ 0]]
CoD.FinalKillcamWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	if IsCampaign() then
		CoD.GameEndScoreUtility.SetupGameEndScoreWidget( self, f1_arg1 ) --[[ @ 0]]
	end
	self:setClass( CoD.FinalKillcamWidget ) --[[ @ 0]]
	self.id = "FinalKillcamWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PlayerInfo = CoD.FinalKillcamPlayerInfo.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 1, 1, -120, 35 ) --[[ @ 0]]
	PlayerInfo:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( PlayerInfo ) --[[ @ 0]]
	self.PlayerInfo = PlayerInfo --[[ @ 0]]
	
	local CODGradientBacking = CoD.CODCasterTeamBaseGradient.new( f1_arg0, f1_arg1, 0, 0, -9, 1945, 0, 0, 932, 1092 ) --[[ @ 0]]
	CODGradientBacking:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CODGradientBacking ) --[[ @ 0]]
	self.CODGradientBacking = CODGradientBacking --[[ @ 0]]
	
	local blurbackplate = LUI.UIImage.new( -0.05, 1.05, 0, 0, 0, 0, -4.5, 1355.5 ) --[[ @ 0]]
	blurbackplate:setRGB( 0, 0, 0 ) --[[ @ 0]]
	blurbackplate:setAlpha( 0 ) --[[ @ 0]]
	blurbackplate:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blurbackplate:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blurbackplate ) --[[ @ 0]]
	self.blurbackplate = blurbackplate --[[ @ 0]]
	
	local BlackForeground = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BlackForeground:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackForeground:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BlackForeground ) --[[ @ 0]]
	self.BlackForeground = BlackForeground --[[ @ 0]]
	
	local topbarblack = LUI.UIImage.new( -0.05, 1.05, 0, 0, 0, 0, 1, 119 ) --[[ @ 0]]
	topbarblack:setRGB( 0, 0, 0 ) --[[ @ 0]]
	topbarblack:setAlpha( 0 ) --[[ @ 0]]
	topbarblack:setImage( RegisterImage( @"hash_5128E65A576FCBB8" ) ) --[[ @ 0]]
	self:addElement( topbarblack ) --[[ @ 0]]
	self.topbarblack = topbarblack --[[ @ 0]]
	
	local killcamTitle = CoD.PLayOfTheMatchTitle.new( f1_arg0, f1_arg1, 0.5, 0.5, -949, -167, 0, 0, 5, 105 ) --[[ @ 0]]
	killcamTitle:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( killcamTitle ) --[[ @ 0]]
	self.killcamTitle = killcamTitle --[[ @ 0]]
	
	local AttackerPlayerCard = CoD.PlayOfTheMatchCallingCard.new( f1_arg0, f1_arg1, 0.5, 0.5, -962, -368, 1, 1, -181, -1 ) --[[ @ 0]]
	AttackerPlayerCard:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( AttackerPlayerCard ) --[[ @ 0]]
	self.AttackerPlayerCard = AttackerPlayerCard --[[ @ 0]]
	
	AttackerPlayerCard.id = "AttackerPlayerCard" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FinalKillcamWidget.__resetProperties = function ( f2_arg0 )
	f2_arg0.PlayerInfo:completeAnimation() --[[ @ 0]]
	f2_arg0.topbarblack:completeAnimation() --[[ @ 0]]
	f2_arg0.blurbackplate:completeAnimation() --[[ @ 0]]
	f2_arg0.CODGradientBacking:completeAnimation() --[[ @ 0]]
	f2_arg0.killcamTitle:completeAnimation() --[[ @ 0]]
	f2_arg0.AttackerPlayerCard:completeAnimation() --[[ @ 0]]
	f2_arg0.BlackForeground:completeAnimation() --[[ @ 0]]
	f2_arg0.PlayerInfo:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.PlayerInfo:setTopBottom( 1, 1, -120, 35 ) --[[ @ 0]]
	f2_arg0.PlayerInfo:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.topbarblack:setTopBottom( 0, 0, 1, 119 ) --[[ @ 0]]
	f2_arg0.topbarblack:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.blurbackplate:setTopBottom( 0, 0, -4.5, 1355.5 ) --[[ @ 0]]
	f2_arg0.blurbackplate:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.CODGradientBacking:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.killcamTitle:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.killcamTitle:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.AttackerPlayerCard:setTopBottom( 1, 1, -181, -1 ) --[[ @ 0]]
	f2_arg0.AttackerPlayerCard:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.AttackerPlayerCard:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.BlackForeground:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FinalKillcamWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f3_arg0.PlayerInfo:completeAnimation() --[[ @ 0]]
			f3_arg0.PlayerInfo:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.PlayerInfo ) --[[ @ 0]]
			f3_arg0.topbarblack:completeAnimation() --[[ @ 0]]
			f3_arg0.topbarblack:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.topbarblack ) --[[ @ 0]]
		end
	},
	FinalKillcam = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					f6_arg0:beginAnimation( 520 ) --[[ @ 0]]
					f6_arg0:setTopBottom( 1, 1, -146, 9 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.PlayerInfo:beginAnimation( 590 ) --[[ @ 0]]
				f4_arg0.PlayerInfo:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.PlayerInfo:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.PlayerInfo:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.PlayerInfo:completeAnimation() --[[ @ 0]]
			f4_arg0.PlayerInfo:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f4_arg0.PlayerInfo:setTopBottom( 1, 1, 8, 163 ) --[[ @ 0]]
			f4_arg0.PlayerInfo:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.PlayerInfo ) --[[ @ 0]]
			local f4_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					f8_arg0:beginAnimation( 480 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.CODGradientBacking:beginAnimation( 1110 ) --[[ @ 0]]
				f4_arg0.CODGradientBacking:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.CODGradientBacking:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.CODGradientBacking:completeAnimation() --[[ @ 0]]
			f4_arg0.CODGradientBacking:setAlpha( 0 ) --[[ @ 0]]
			f4_local1( f4_arg0.CODGradientBacking ) --[[ @ 0]]
			local f4_local2 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					f10_arg0:beginAnimation( 520, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f10_arg0:setTopBottom( 0, 0, -4.5, 95.5 ) --[[ @ 0]]
					f10_arg0:setAlpha( 1 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.blurbackplate:beginAnimation( 590 ) --[[ @ 0]]
				f4_arg0.blurbackplate:setAlpha( 0.55 ) --[[ @ 0]]
				f4_arg0.blurbackplate:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.blurbackplate:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.blurbackplate:completeAnimation() --[[ @ 0]]
			f4_arg0.blurbackplate:setTopBottom( 0, 0, -125.5, -7.5 ) --[[ @ 0]]
			f4_arg0.blurbackplate:setAlpha( 0 ) --[[ @ 0]]
			f4_local2( f4_arg0.blurbackplate ) --[[ @ 0]]
			local f4_local3 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					f12_arg0:beginAnimation( 520, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f12_arg0:setTopBottom( 0, 0, -4, 95 ) --[[ @ 0]]
					f12_arg0:setAlpha( 0.97 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.topbarblack:beginAnimation( 590 ) --[[ @ 0]]
				f4_arg0.topbarblack:setAlpha( 0.53 ) --[[ @ 0]]
				f4_arg0.topbarblack:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.topbarblack:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.topbarblack:completeAnimation() --[[ @ 0]]
			f4_arg0.topbarblack:setTopBottom( 0, 0, -125.5, -7.5 ) --[[ @ 0]]
			f4_arg0.topbarblack:setAlpha( 0 ) --[[ @ 0]]
			f4_local3( f4_arg0.topbarblack ) --[[ @ 0]]
			local f4_local4 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 19, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f14_arg0:setAlpha( 1 ) --[[ @ 0]]
					f14_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0:beginAnimation( 159, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f13_arg0:setAlpha( 0.97 ) --[[ @ 0]]
				f13_arg0:setScale( 0.95, 0.95 ) --[[ @ 0]]
				f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.killcamTitle:beginAnimation( 1110 ) --[[ @ 0]]
			f4_arg0.killcamTitle:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.killcamTitle:setScale( 2, 2 ) --[[ @ 0]]
			f4_arg0.killcamTitle:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
			f4_arg0.killcamTitle:registerEventHandler( "transition_complete_keyframe", f4_local4 ) --[[ @ 0]]
			local f4_local5 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					local f16_local0 = function ( f17_arg0 )
						f17_arg0:beginAnimation( 139 ) --[[ @ 0]]
						f17_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f16_arg0:beginAnimation( 20 ) --[[ @ 0]]
					f16_arg0:setAlpha( 1 ) --[[ @ 0]]
					f16_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0:beginAnimation( 159 ) --[[ @ 0]]
				f15_arg0:setAlpha( 0.89 ) --[[ @ 0]]
				f15_arg0:setScale( 0.95, 0.95 ) --[[ @ 0]]
				f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.AttackerPlayerCard:beginAnimation( 1270 ) --[[ @ 0]]
			f4_arg0.AttackerPlayerCard:setTopBottom( 1, 1, -151, 29 ) --[[ @ 0]]
			f4_arg0.AttackerPlayerCard:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.AttackerPlayerCard:setScale( 2, 2 ) --[[ @ 0]]
			f4_arg0.AttackerPlayerCard:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
			f4_arg0.AttackerPlayerCard:registerEventHandler( "transition_complete_keyframe", f4_local5 ) --[[ @ 0]]
		end,
		End = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				f18_arg0.BlackForeground:beginAnimation( 1000 ) --[[ @ 0]]
				f18_arg0.BlackForeground:setAlpha( 1 ) --[[ @ 0]]
				f18_arg0.BlackForeground:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.BlackForeground:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.BlackForeground:completeAnimation() --[[ @ 0]]
			f18_arg0.BlackForeground:setAlpha( 0 ) --[[ @ 0]]
			f18_local0( f18_arg0.BlackForeground ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.FinalKillcamWidget.__onClose = function ( f20_arg0 )
	f20_arg0.PlayerInfo:close() --[[ @ 0]]
	f20_arg0.CODGradientBacking:close() --[[ @ 0]]
	f20_arg0.killcamTitle:close() --[[ @ 0]]
	f20_arg0.AttackerPlayerCard:close() --[[ @ 0]]
end
 --[[ @ 0]]
