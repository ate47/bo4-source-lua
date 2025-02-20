-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.AARWinLoseHistory = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARWinLoseHistory.__defaultWidth = 124 --[[ @ 0]]
CoD.AARWinLoseHistory.__defaultHeight = 236 --[[ @ 0]]
CoD.AARWinLoseHistory.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARWinLoseHistory ) --[[ @ 0]]
	self.id = "AARWinLoseHistory" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Bar = LUI.UIImage.new( 0, 0, 0, 124, 0, 0, -0.5, 117.5 ) --[[ @ 0]]
	Bar:setZRot( 180 ) --[[ @ 0]]
	Bar:setImage( RegisterImage( @"uie_ui_menu_aar_stat_bar_grad" ) ) --[[ @ 0]]
	self:addElement( Bar ) --[[ @ 0]]
	self.Bar = Bar --[[ @ 0]]
	
	local BarAdd = LUI.UIImage.new( 0, 0, 0, 124, 0, 0, -0.5, 117.5 ) --[[ @ 0]]
	BarAdd:setAlpha( 0.5 ) --[[ @ 0]]
	BarAdd:setZRot( 180 ) --[[ @ 0]]
	BarAdd:setImage( RegisterImage( @"uie_ui_menu_aar_stat_bar_grad" ) ) --[[ @ 0]]
	BarAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	BarAdd:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BarAdd ) --[[ @ 0]]
	self.BarAdd = BarAdd --[[ @ 0]]
	
	local Text = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -66.5, -51.5 ) --[[ @ 0]]
	Text:setRGB( 0, 0.7, 0.85 ) --[[ @ 0]]
	Text:setText( LocalizeToUpperString( @"hash_BCD9AEC3F8CFEBE" ) ) --[[ @ 0]]
	Text:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Text:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	Text:setLetterSpacing( 4 ) --[[ @ 0]]
	Text:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Text:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Text ) --[[ @ 0]]
	self.Text = Text --[[ @ 0]]
	
	local TextAdd = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -66.5, -51.5 ) --[[ @ 0]]
	TextAdd:setRGB( 0, 0.7, 0.85 ) --[[ @ 0]]
	TextAdd:setText( LocalizeToUpperString( @"hash_BCD9AEC3F8CFEBE" ) ) --[[ @ 0]]
	TextAdd:setTTF( "dinnext_regular" ) --[[ @ 0]]
	TextAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_3336C1AE82B1520A" ) ) --[[ @ 0]]
	TextAdd:setLetterSpacing( 4 ) --[[ @ 0]]
	TextAdd:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	TextAdd:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( TextAdd ) --[[ @ 0]]
	self.TextAdd = TextAdd --[[ @ 0]]
	
	local InValidNormal = LUI.UIImage.new( 0, 0, 14, 110, 0, 0, 22, 214 ) --[[ @ 0]]
	InValidNormal:setAlpha( 0 ) --[[ @ 0]]
	InValidNormal:setImage( RegisterImage( @"uie_ui_menu_aar_perform_nodata" ) ) --[[ @ 0]]
	self:addElement( InValidNormal ) --[[ @ 0]]
	self.InValidNormal = InValidNormal --[[ @ 0]]
	
	local InValidAdd = LUI.UIImage.new( 0, 0, 14, 110, 0, 0, 22, 214 ) --[[ @ 0]]
	InValidAdd:setAlpha( 0 ) --[[ @ 0]]
	InValidAdd:setImage( RegisterImage( @"uie_ui_menu_aar_perform_nodata" ) ) --[[ @ 0]]
	InValidAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( InValidAdd ) --[[ @ 0]]
	self.InValidAdd = InValidAdd --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "InValid",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "valid", 0 )
			end
		},
		{
			stateName = "Lose",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "outcome", @"loss" )
			end
		},
		{
			stateName = "Draw",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "outcome", @"draw" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "valid", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "valid"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "outcome", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "outcome"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARWinLoseHistory.__resetProperties = function ( f7_arg0 )
	f7_arg0.InValidAdd:completeAnimation() --[[ @ 0]]
	f7_arg0.InValidNormal:completeAnimation() --[[ @ 0]]
	f7_arg0.TextAdd:completeAnimation() --[[ @ 0]]
	f7_arg0.BarAdd:completeAnimation() --[[ @ 0]]
	f7_arg0.Bar:completeAnimation() --[[ @ 0]]
	f7_arg0.Text:completeAnimation() --[[ @ 0]]
	f7_arg0.InValidAdd:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.InValidNormal:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.TextAdd:setTopBottom( 0.5, 0.5, -66.5, -51.5 ) --[[ @ 0]]
	f7_arg0.TextAdd:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.TextAdd:setText( LocalizeToUpperString( @"hash_BCD9AEC3F8CFEBE" ) ) --[[ @ 0]]
	f7_arg0.BarAdd:setAlpha( 0.5 ) --[[ @ 0]]
	f7_arg0.Bar:setTopBottom( 0, 0, -0.5, 117.5 ) --[[ @ 0]]
	f7_arg0.Bar:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f7_arg0.Bar:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.Bar:setZRot( 180 ) --[[ @ 0]]
	f7_arg0.Text:setTopBottom( 0.5, 0.5, -66.5, -51.5 ) --[[ @ 0]]
	f7_arg0.Text:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.Text:setText( LocalizeToUpperString( @"hash_BCD9AEC3F8CFEBE" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARWinLoseHistory.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f8_arg0.Bar:completeAnimation() --[[ @ 0]]
			f8_arg0.Bar:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Bar ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					local f10_local0 = function ( f11_arg0 )
						f11_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f11_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f10_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f10_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.BarAdd:beginAnimation( 1000 ) --[[ @ 0]]
				f8_arg0.BarAdd:setAlpha( 0.9 ) --[[ @ 0]]
				f8_arg0.BarAdd:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.BarAdd:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.BarAdd:completeAnimation() --[[ @ 0]]
			f8_arg0.BarAdd:setAlpha( 0.5 ) --[[ @ 0]]
			f8_local0( f8_arg0.BarAdd ) --[[ @ 0]]
			local f8_local1 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					local f13_local0 = function ( f14_arg0 )
						f14_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f14_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f13_arg0:beginAnimation( 1000, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
					f13_arg0:setAlpha( 0.9 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.TextAdd:beginAnimation( 1000, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f8_arg0.TextAdd:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.TextAdd:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.TextAdd:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.TextAdd:completeAnimation() --[[ @ 0]]
			f8_arg0.TextAdd:setAlpha( 0.9 ) --[[ @ 0]]
			f8_local1( f8_arg0.TextAdd ) --[[ @ 0]]
			f8_arg0.InValidNormal:completeAnimation() --[[ @ 0]]
			f8_arg0.InValidNormal:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.InValidNormal ) --[[ @ 0]]
			f8_arg0.InValidAdd:completeAnimation() --[[ @ 0]]
			f8_arg0.InValidAdd:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.InValidAdd ) --[[ @ 0]]
			f8_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	InValid = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f15_arg0.Bar:completeAnimation() --[[ @ 0]]
			f15_arg0.Bar:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Bar ) --[[ @ 0]]
			f15_arg0.BarAdd:completeAnimation() --[[ @ 0]]
			f15_arg0.BarAdd:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.BarAdd ) --[[ @ 0]]
			f15_arg0.Text:completeAnimation() --[[ @ 0]]
			f15_arg0.Text:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Text ) --[[ @ 0]]
			f15_arg0.TextAdd:completeAnimation() --[[ @ 0]]
			f15_arg0.TextAdd:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.TextAdd ) --[[ @ 0]]
			f15_arg0.InValidNormal:completeAnimation() --[[ @ 0]]
			f15_arg0.InValidNormal:setAlpha( 0.05 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.InValidNormal ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					f17_arg0:beginAnimation( 2000, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
					f17_arg0:setAlpha( 0 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.InValidAdd:beginAnimation( 2000, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f15_arg0.InValidAdd:setAlpha( 0.05 ) --[[ @ 0]]
				f15_arg0.InValidAdd:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.InValidAdd:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.InValidAdd:completeAnimation() --[[ @ 0]]
			f15_arg0.InValidAdd:setAlpha( 0 ) --[[ @ 0]]
			f15_local0( f15_arg0.InValidAdd ) --[[ @ 0]]
			f15_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	Lose = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f18_arg0.Bar:completeAnimation() --[[ @ 0]]
			f18_arg0.Bar:setTopBottom( 0, 0, 116.5, 234.5 ) --[[ @ 0]]
			f18_arg0.Bar:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f18_arg0.Bar:setAlpha( 0.2 ) --[[ @ 0]]
			f18_arg0.Bar:setZRot( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Bar ) --[[ @ 0]]
			f18_arg0.BarAdd:completeAnimation() --[[ @ 0]]
			f18_arg0.BarAdd:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.BarAdd ) --[[ @ 0]]
			f18_arg0.Text:completeAnimation() --[[ @ 0]]
			f18_arg0.Text:setTopBottom( 0.5, 0.5, 52.5, 67.5 ) --[[ @ 0]]
			f18_arg0.Text:setAlpha( 0.3 ) --[[ @ 0]]
			f18_arg0.Text:setText( LocalizeToUpperString( @"hash_FD9D91DD463FA49" ) ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Text ) --[[ @ 0]]
			f18_arg0.TextAdd:completeAnimation() --[[ @ 0]]
			f18_arg0.TextAdd:setTopBottom( 0.5, 0.5, 52.5, 67.5 ) --[[ @ 0]]
			f18_arg0.TextAdd:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.TextAdd:setText( LocalizeToUpperString( @"hash_FD9D91DD463FA49" ) ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.TextAdd ) --[[ @ 0]]
		end
	},
	Draw = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f19_arg0.Bar:completeAnimation() --[[ @ 0]]
			f19_arg0.Bar:setTopBottom( 0, 0, 116.5, 234.5 ) --[[ @ 0]]
			f19_arg0.Bar:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f19_arg0.Bar:setAlpha( 0.2 ) --[[ @ 0]]
			f19_arg0.Bar:setZRot( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Bar ) --[[ @ 0]]
			f19_arg0.BarAdd:completeAnimation() --[[ @ 0]]
			f19_arg0.BarAdd:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.BarAdd ) --[[ @ 0]]
			f19_arg0.Text:completeAnimation() --[[ @ 0]]
			f19_arg0.Text:setTopBottom( 0.5, 0.5, 52.5, 67.5 ) --[[ @ 0]]
			f19_arg0.Text:setAlpha( 0.3 ) --[[ @ 0]]
			f19_arg0.Text:setText( LocalizeToUpperString( @"hash_5F8F9DBF6F19D92" ) ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Text ) --[[ @ 0]]
			f19_arg0.TextAdd:completeAnimation() --[[ @ 0]]
			f19_arg0.TextAdd:setTopBottom( 0.5, 0.5, 52.5, 67.5 ) --[[ @ 0]]
			f19_arg0.TextAdd:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.TextAdd:setText( LocalizeToUpperString( @"hash_5F8F9DBF6F19D92" ) ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.TextAdd ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
