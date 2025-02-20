-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.TabbedScoreboardColHeaders = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabbedScoreboardColHeaders.__defaultWidth = 246 --[[ @ 0]]
CoD.TabbedScoreboardColHeaders.__defaultHeight = 40 --[[ @ 0]]
CoD.TabbedScoreboardColHeaders.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabbedScoreboardColHeaders ) --[[ @ 0]]
	self.id = "TabbedScoreboardColHeaders" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local LeftCol = LUI.UIText.new( 0, 0, -5, 87, 0.5, 0.5, -9, 6 ) --[[ @ 0]]
	LeftCol:setRGB( 0.7, 0.7, 0.7 ) --[[ @ 0]]
	LeftCol:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6A75180BC7FDA8F5" ) ) --[[ @ 0]]
	LeftCol:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	LeftCol:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	LeftCol:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	self:addElement( LeftCol ) --[[ @ 0]]
	self.LeftCol = LeftCol --[[ @ 0]]
	
	local MidCol = LUI.UIText.new( 0, 0, 77, 169, 0.5, 0.5, -9, 6 ) --[[ @ 0]]
	MidCol:setRGB( 0.7, 0.7, 0.7 ) --[[ @ 0]]
	MidCol:setText( "" ) --[[ @ 0]]
	MidCol:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	MidCol:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	MidCol:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	self:addElement( MidCol ) --[[ @ 0]]
	self.MidCol = MidCol --[[ @ 0]]
	
	local RightCol = LUI.UIText.new( 0, 0, 159, 251, 0.5, 0.5, -9, 6 ) --[[ @ 0]]
	RightCol:setRGB( 0.7, 0.7, 0.7 ) --[[ @ 0]]
	RightCol:setText( "" ) --[[ @ 0]]
	RightCol:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	RightCol:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	RightCol:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	self:addElement( RightCol ) --[[ @ 0]]
	self.RightCol = RightCol --[[ @ 0]]
	
	local FFACol = LUI.UIText.new( 0, 0, 241, 333, 0.5, 0.5, -9, 6 ) --[[ @ 0]]
	FFACol:setRGB( 0.7, 0.7, 0.7 ) --[[ @ 0]]
	FFACol:setAlpha( 0 ) --[[ @ 0]]
	FFACol:setText( "" ) --[[ @ 0]]
	FFACol:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	FFACol:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	FFACol:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	self:addElement( FFACol ) --[[ @ 0]]
	self.FFACol = FFACol --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "VisibleFFA",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "scoreboardInfo.activeTab", CoD.HUDUtility.GameStatusMode.MODE_SHOW_SCORES ) and not IsGametypeTeambased()
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "scoreboardInfo.activeTab", CoD.HUDUtility.GameStatusMode.MODE_SHOW_SCORES )
			end
		}
	} ) --[[ @ 0]]
	local f1_local5 = self --[[ @ 0]]
	local f1_local6 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["scoreboardInfo.activeTab"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "scoreboardInfo.activeTab"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local6 = self --[[ @ 0]]
	if not IsGametypeTeambased() then
		CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.LeftCol, 0 ) --[[ @ 0]]
		CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.MidCol, 1 ) --[[ @ 0]]
		CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.RightCol, 2 ) --[[ @ 0]]
		CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.FFACol, 3 ) --[[ @ 0]]
	else
		CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.LeftCol, 0 ) --[[ @ 0]]
		CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.MidCol, 1 ) --[[ @ 0]]
		CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.RightCol, 2 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.TabbedScoreboardColHeaders.__resetProperties = function ( f5_arg0 )
	f5_arg0.LeftCol:completeAnimation() --[[ @ 0]]
	f5_arg0.FFACol:completeAnimation() --[[ @ 0]]
	f5_arg0.LeftCol:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.FFACol:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabbedScoreboardColHeaders.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.LeftCol:completeAnimation() --[[ @ 0]]
			f6_arg0.LeftCol:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.LeftCol ) --[[ @ 0]]
		end
	},
	VisibleFFA = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.FFACol:completeAnimation() --[[ @ 0]]
			f7_arg0.FFACol:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FFACol ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.TabbedScoreboardColHeaders.__onClose = function ( f9_arg0 )
	f9_arg0.LeftCol:close() --[[ @ 0]]
	f9_arg0.MidCol:close() --[[ @ 0]]
	f9_arg0.RightCol:close() --[[ @ 0]]
	f9_arg0.FFACol:close() --[[ @ 0]]
end
 --[[ @ 0]]
