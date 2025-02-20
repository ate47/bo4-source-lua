-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/aar_t8/rewards/aarclassrewarditempreview" ) --[[ @ 0]]
require( "ui/uieditor/widgets/aar_t8/rewards/aarrewardbrackets" ) --[[ @ 0]]
require( "x64:7377569138f4cdb9" ) --[[ @ 0]]

CoD.AARClassRewardPreview = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARClassRewardPreview.__defaultWidth = 380 --[[ @ 0]]
CoD.AARClassRewardPreview.__defaultHeight = 440 --[[ @ 0]]
CoD.AARClassRewardPreview.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARClassRewardPreview ) --[[ @ 0]]
	self.id = "AARClassRewardPreview" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
	Backing:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Primary = LUI.UIFixedAspectRatioImage.new( 0, 0, 19, 228, 0, 0, 22.5, 86.5 ) --[[ @ 0]]
	Primary:linkToElementModel( self, "primaryImage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Primary:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Primary ) --[[ @ 0]]
	self.Primary = Primary --[[ @ 0]]
	
	local Secondary = LUI.UIFixedAspectRatioImage.new( 0, 0, 226.5, 358.5, 0, 0, 22.5, 86.5 ) --[[ @ 0]]
	Secondary:linkToElementModel( self, "secondaryImage", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Secondary:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Secondary ) --[[ @ 0]]
	self.Secondary = Secondary --[[ @ 0]]
	
	local Perks = LUI.UIList.new( f1_arg0, f1_arg1, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	Perks:setLeftRight( 0, 0, 31, 347 ) --[[ @ 0]]
	Perks:setTopBottom( 0, 0, 206, 270 ) --[[ @ 0]]
	Perks:setWidgetType( CoD.AARClassRewardItemPreview ) --[[ @ 0]]
	Perks:setHorizontalCount( 4 ) --[[ @ 0]]
	Perks:setSpacing( 20 ) --[[ @ 0]]
	Perks:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Perks:linkToElementModel( self, "perksDataSource", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Perks:setDataSource( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Perks ) --[[ @ 0]]
	self.Perks = Perks --[[ @ 0]]
	
	local Wildcards = LUI.UIList.new( f1_arg0, f1_arg1, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	Wildcards:setLeftRight( 0, 0, 31, 347 ) --[[ @ 0]]
	Wildcards:setTopBottom( 0, 0, 297.5, 361.5 ) --[[ @ 0]]
	Wildcards:setWidgetType( CoD.AARClassRewardItemPreview ) --[[ @ 0]]
	Wildcards:setHorizontalCount( 4 ) --[[ @ 0]]
	Wildcards:setSpacing( 20 ) --[[ @ 0]]
	Wildcards:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Wildcards:linkToElementModel( self, "wildcardsDataSource", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Wildcards:setDataSource( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Wildcards ) --[[ @ 0]]
	self.Wildcards = Wildcards --[[ @ 0]]
	
	local Grenade = CoD.AARRewardsEquipmentRow.new( f1_arg0, f1_arg1, 0, 0, 31, 181, 0, 0, 114, 178 ) --[[ @ 0]]
	Grenade:linkToElementModel( self, nil, false, function ( model )
		Grenade:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Grenade ) --[[ @ 0]]
	self.Grenade = Grenade --[[ @ 0]]
	
	local rewardTitle = LUI.UIText.new( 0, 0, 17, 383, 0, 0, 383, 404 ) --[[ @ 0]]
	rewardTitle:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	rewardTitle:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	rewardTitle:setLetterSpacing( 4 ) --[[ @ 0]]
	rewardTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	rewardTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	rewardTitle:linkToElementModel( self, "reward1Title", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			rewardTitle:setText( LocalizeToUpperString( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( rewardTitle ) --[[ @ 0]]
	self.rewardTitle = rewardTitle --[[ @ 0]]
	
	local rewardDesc = LUI.UIText.new( 0, 0, 17, 383, 0, 0, 409, 427 ) --[[ @ 0]]
	rewardDesc:setRGB( 0.75, 0.75, 0.75 ) --[[ @ 0]]
	rewardDesc:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	rewardDesc:setLetterSpacing( 1 ) --[[ @ 0]]
	rewardDesc:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	rewardDesc:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	rewardDesc:linkToElementModel( self, "reward1Desc", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			rewardDesc:setText( LocalizeToUpperString( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( rewardDesc ) --[[ @ 0]]
	self.rewardDesc = rewardDesc --[[ @ 0]]
	
	local Corner = CoD.AARRewardBrackets.new( f1_arg0, f1_arg1, 0, 0, -1, 381, 0, 0, -1, 440 ) --[[ @ 0]]
	Corner:setAlpha( 0.4 ) --[[ @ 0]]
	self:addElement( Corner ) --[[ @ 0]]
	self.Corner = Corner --[[ @ 0]]
	
	local Linker = LUI.UIImage.new( 0, 0, 187, 189, 0, 0, 108.5, 458.5 ) --[[ @ 0]]
	Linker:setAlpha( 0.18 ) --[[ @ 0]]
	Linker:setZRot( 90 ) --[[ @ 0]]
	Linker:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Linker:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Linker:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Linker:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Linker ) --[[ @ 0]]
	self.Linker = Linker --[[ @ 0]]
	
	local Linker2 = LUI.UIImage.new( 0, 0, 187, 189, 0, 0, 16.5, 366.5 ) --[[ @ 0]]
	Linker2:setAlpha( 0.18 ) --[[ @ 0]]
	Linker2:setZRot( 90 ) --[[ @ 0]]
	Linker2:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Linker2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Linker2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Linker2:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Linker2 ) --[[ @ 0]]
	self.Linker2 = Linker2 --[[ @ 0]]
	
	local Linker3 = LUI.UIImage.new( 0, 0, 187, 189, 0, 0, -80.5, 269.5 ) --[[ @ 0]]
	Linker3:setAlpha( 0.18 ) --[[ @ 0]]
	Linker3:setZRot( 90 ) --[[ @ 0]]
	Linker3:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Linker3:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Linker3:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Linker3:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Linker3 ) --[[ @ 0]]
	self.Linker3 = Linker3 --[[ @ 0]]
	
	Perks.id = "Perks" --[[ @ 0]]
	Wildcards.id = "Wildcards" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARClassRewardPreview.__onClose = function ( f9_arg0 )
	f9_arg0.Primary:close() --[[ @ 0]]
	f9_arg0.Secondary:close() --[[ @ 0]]
	f9_arg0.Perks:close() --[[ @ 0]]
	f9_arg0.Wildcards:close() --[[ @ 0]]
	f9_arg0.Grenade:close() --[[ @ 0]]
	f9_arg0.rewardTitle:close() --[[ @ 0]]
	f9_arg0.rewardDesc:close() --[[ @ 0]]
	f9_arg0.Corner:close() --[[ @ 0]]
end
 --[[ @ 0]]
