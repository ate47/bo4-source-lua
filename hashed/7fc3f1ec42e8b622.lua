-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.ZMPerkVaporDeadshotCountList = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMPerkVaporDeadshotCountList.__defaultWidth = 42 --[[ @ 0]]
CoD.ZMPerkVaporDeadshotCountList.__defaultHeight = 44 --[[ @ 0]]
CoD.ZMPerkVaporDeadshotCountList.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMPerkVaporDeadshotCountList ) --[[ @ 0]]
	self.id = "ZMPerkVaporDeadshotCountList" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DeadshotImage = LUI.UIImage.new( 0, 0, 0, 42, 0, 0, 1, 45 ) --[[ @ 0]]
	DeadshotImage:setScale( 0.98, 0.98 ) --[[ @ 0]]
	DeadshotImage:setImage( RegisterImage( @"hash_2DAEC19BEE29BC0D" ) ) --[[ @ 0]]
	self:addElement( DeadshotImage ) --[[ @ 0]]
	self.DeadshotImage = DeadshotImage --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 0, 0, 42, 0, 0, 28, 42 ) --[[ @ 0]]
	Image:setRGB( 0.76, 0, 0 ) --[[ @ 0]]
	Image:setScale( 0.95, 0.95 ) --[[ @ 0]]
	Image:setImage( RegisterImage( @"hash_2F2AF0AD55B5460E" ) ) --[[ @ 0]]
	Image:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	Image:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Image:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	Image:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local Image2 = LUI.UIImage.new( 0, 0, 0, 42, 0, 0, 21, 27 ) --[[ @ 0]]
	Image2:setRGB( 0.76, 0, 0 ) --[[ @ 0]]
	Image2:setScale( 0.95, 0.95 ) --[[ @ 0]]
	Image2:setImage( RegisterImage( @"hash_2F2AF0AD55B5460E" ) ) --[[ @ 0]]
	Image2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	Image2:setShaderVector( 0, 0, 0.55, 0, 0 ) --[[ @ 0]]
	Image2:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	Image2:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Image2 ) --[[ @ 0]]
	self.Image2 = Image2 --[[ @ 0]]
	
	local Image3 = LUI.UIImage.new( 0, 0, 0, 42, 0, 0, 14, 20 ) --[[ @ 0]]
	Image3:setRGB( 0.76, 0, 0 ) --[[ @ 0]]
	Image3:setScale( 0.95, 0.95 ) --[[ @ 0]]
	Image3:setImage( RegisterImage( @"hash_2F2AF0AD55B5460E" ) ) --[[ @ 0]]
	Image3:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	Image3:setShaderVector( 0, 0, 0.35, 0, 0 ) --[[ @ 0]]
	Image3:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	Image3:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Image3 ) --[[ @ 0]]
	self.Image3 = Image3 --[[ @ 0]]
	
	local Image4 = LUI.UIImage.new( 0, 0, 0, 42, 0, 0, 7, 13 ) --[[ @ 0]]
	Image4:setRGB( 0.76, 0, 0 ) --[[ @ 0]]
	Image4:setScale( 0.95, 0.95 ) --[[ @ 0]]
	Image4:setImage( RegisterImage( @"hash_2F2AF0AD55B5460E" ) ) --[[ @ 0]]
	Image4:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	Image4:setShaderVector( 0, 0, 0.14, 0, 0 ) --[[ @ 0]]
	Image4:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	Image4:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Image4 ) --[[ @ 0]]
	self.Image4 = Image4 --[[ @ 0]]
	
	local Image5 = LUI.UIImage.new( 0, 0, 0, 42, 0, 0, 0, 6 ) --[[ @ 0]]
	Image5:setRGB( 0.76, 0, 0 ) --[[ @ 0]]
	Image5:setScale( 0.95, 0.95 ) --[[ @ 0]]
	Image5:setImage( RegisterImage( @"hash_2F2AF0AD55B5460E" ) ) --[[ @ 0]]
	Image5:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	Image5:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Image5:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	Image5:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Image5 ) --[[ @ 0]]
	self.Image5 = Image5 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "DeadshotActive",
			condition = function ( menu, element, event )
				local f2_local0 = CoD.ZMPerkUtility.IsPerkSpecificItem( element, f1_arg1, @"perk_dead_shot" ) --[[ @ 0]]
				if f2_local0 then
					f2_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "specialEffectActive", 1 ) --[[ @ 0]]
					if f2_local0 then
						f2_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "chargeCount", 5 ) --[[ @ 0]]
					end
				end
				return f2_local0
			end
		},
		{
			stateName = "Charge4",
			condition = function ( menu, element, event )
				local f3_local0 = CoD.ZMPerkUtility.IsPerkSpecificItem( element, f1_arg1, @"perk_dead_shot" ) --[[ @ 0]]
				if f3_local0 then
					f3_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "specialEffectActive", 1 ) --[[ @ 0]]
					if f3_local0 then
						f3_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "chargeCount", 4 ) --[[ @ 0]]
					end
				end
				return f3_local0
			end
		},
		{
			stateName = "Charge3",
			condition = function ( menu, element, event )
				local f4_local0 = CoD.ZMPerkUtility.IsPerkSpecificItem( element, f1_arg1, @"perk_dead_shot" ) --[[ @ 0]]
				if f4_local0 then
					f4_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "specialEffectActive", 1 ) --[[ @ 0]]
					if f4_local0 then
						f4_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "chargeCount", 3 ) --[[ @ 0]]
					end
				end
				return f4_local0
			end
		},
		{
			stateName = "Charge2",
			condition = function ( menu, element, event )
				local f5_local0 = CoD.ZMPerkUtility.IsPerkSpecificItem( element, f1_arg1, @"perk_dead_shot" ) --[[ @ 0]]
				if f5_local0 then
					f5_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "specialEffectActive", 1 ) --[[ @ 0]]
					if f5_local0 then
						f5_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "chargeCount", 2 ) --[[ @ 0]]
					end
				end
				return f5_local0
			end
		},
		{
			stateName = "Charge1",
			condition = function ( menu, element, event )
				local f6_local0 = CoD.ZMPerkUtility.IsPerkSpecificItem( element, f1_arg1, @"perk_dead_shot" ) --[[ @ 0]]
				if f6_local0 then
					f6_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "specialEffectActive", 1 ) --[[ @ 0]]
					if f6_local0 then
						f6_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "chargeCount", 1 ) --[[ @ 0]]
					end
				end
				return f6_local0
			end
		},
		{
			stateName = "Empty",
			condition = function ( menu, element, event )
				local f7_local0 = CoD.ZMPerkUtility.IsPerkSpecificItem( element, f1_arg1, @"perk_dead_shot" ) --[[ @ 0]]
				if f7_local0 then
					f7_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "specialEffectActive", 1 ) --[[ @ 0]]
					if f7_local0 then
						f7_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "chargeCount", 0 ) --[[ @ 0]]
					end
				end
				return f7_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "itemIndex", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "itemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "specialEffectActive", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "specialEffectActive"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "chargeCount", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "chargeCount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMPerkVaporDeadshotCountList.__resetProperties = function ( f11_arg0 )
	f11_arg0.DeadshotImage:completeAnimation() --[[ @ 0]]
	f11_arg0.Image5:completeAnimation() --[[ @ 0]]
	f11_arg0.Image4:completeAnimation() --[[ @ 0]]
	f11_arg0.Image3:completeAnimation() --[[ @ 0]]
	f11_arg0.Image2:completeAnimation() --[[ @ 0]]
	f11_arg0.Image:completeAnimation() --[[ @ 0]]
	f11_arg0.DeadshotImage:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.Image5:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.Image4:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.Image3:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.Image2:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.Image:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMPerkVaporDeadshotCountList.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f12_arg0.DeadshotImage:completeAnimation() --[[ @ 0]]
			f12_arg0.DeadshotImage:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.DeadshotImage ) --[[ @ 0]]
			f12_arg0.Image:completeAnimation() --[[ @ 0]]
			f12_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Image ) --[[ @ 0]]
			f12_arg0.Image2:completeAnimation() --[[ @ 0]]
			f12_arg0.Image2:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Image2 ) --[[ @ 0]]
			f12_arg0.Image3:completeAnimation() --[[ @ 0]]
			f12_arg0.Image3:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Image3 ) --[[ @ 0]]
			f12_arg0.Image4:completeAnimation() --[[ @ 0]]
			f12_arg0.Image4:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Image4 ) --[[ @ 0]]
			f12_arg0.Image5:completeAnimation() --[[ @ 0]]
			f12_arg0.Image5:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Image5 ) --[[ @ 0]]
		end
	},
	DeadshotActive = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					f15_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f15_arg0:setAlpha( 0 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.DeadshotImage:beginAnimation( 500 ) --[[ @ 0]]
				f13_arg0.DeadshotImage:setAlpha( 1 ) --[[ @ 0]]
				f13_arg0.DeadshotImage:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.DeadshotImage:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.DeadshotImage:completeAnimation() --[[ @ 0]]
			f13_arg0.DeadshotImage:setAlpha( 0 ) --[[ @ 0]]
			f13_local0( f13_arg0.DeadshotImage ) --[[ @ 0]]
			f13_arg0.Image:completeAnimation() --[[ @ 0]]
			f13_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Image ) --[[ @ 0]]
			f13_arg0.Image2:completeAnimation() --[[ @ 0]]
			f13_arg0.Image2:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Image2 ) --[[ @ 0]]
			f13_arg0.Image3:completeAnimation() --[[ @ 0]]
			f13_arg0.Image3:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Image3 ) --[[ @ 0]]
			f13_arg0.Image4:completeAnimation() --[[ @ 0]]
			f13_arg0.Image4:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Image4 ) --[[ @ 0]]
			f13_arg0.Image5:completeAnimation() --[[ @ 0]]
			f13_arg0.Image5:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Image5 ) --[[ @ 0]]
			f13_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	Charge4 = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f16_arg0.DeadshotImage:completeAnimation() --[[ @ 0]]
			f16_arg0.DeadshotImage:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.DeadshotImage ) --[[ @ 0]]
			f16_arg0.Image5:completeAnimation() --[[ @ 0]]
			f16_arg0.Image5:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Image5 ) --[[ @ 0]]
		end
	},
	Charge3 = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f17_arg0.DeadshotImage:completeAnimation() --[[ @ 0]]
			f17_arg0.DeadshotImage:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.DeadshotImage ) --[[ @ 0]]
			f17_arg0.Image4:completeAnimation() --[[ @ 0]]
			f17_arg0.Image4:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Image4 ) --[[ @ 0]]
			f17_arg0.Image5:completeAnimation() --[[ @ 0]]
			f17_arg0.Image5:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Image5 ) --[[ @ 0]]
		end
	},
	Charge2 = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f18_arg0.DeadshotImage:completeAnimation() --[[ @ 0]]
			f18_arg0.DeadshotImage:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.DeadshotImage ) --[[ @ 0]]
			f18_arg0.Image3:completeAnimation() --[[ @ 0]]
			f18_arg0.Image3:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Image3 ) --[[ @ 0]]
			f18_arg0.Image4:completeAnimation() --[[ @ 0]]
			f18_arg0.Image4:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Image4 ) --[[ @ 0]]
			f18_arg0.Image5:completeAnimation() --[[ @ 0]]
			f18_arg0.Image5:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Image5 ) --[[ @ 0]]
		end
	},
	Charge1 = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f19_arg0.DeadshotImage:completeAnimation() --[[ @ 0]]
			f19_arg0.DeadshotImage:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.DeadshotImage ) --[[ @ 0]]
			f19_arg0.Image2:completeAnimation() --[[ @ 0]]
			f19_arg0.Image2:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Image2 ) --[[ @ 0]]
			f19_arg0.Image3:completeAnimation() --[[ @ 0]]
			f19_arg0.Image3:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Image3 ) --[[ @ 0]]
			f19_arg0.Image4:completeAnimation() --[[ @ 0]]
			f19_arg0.Image4:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Image4 ) --[[ @ 0]]
			f19_arg0.Image5:completeAnimation() --[[ @ 0]]
			f19_arg0.Image5:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Image5 ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f20_arg0.DeadshotImage:completeAnimation() --[[ @ 0]]
			f20_arg0.DeadshotImage:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.DeadshotImage ) --[[ @ 0]]
			f20_arg0.Image:completeAnimation() --[[ @ 0]]
			f20_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Image ) --[[ @ 0]]
			f20_arg0.Image2:completeAnimation() --[[ @ 0]]
			f20_arg0.Image2:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Image2 ) --[[ @ 0]]
			f20_arg0.Image3:completeAnimation() --[[ @ 0]]
			f20_arg0.Image3:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Image3 ) --[[ @ 0]]
			f20_arg0.Image4:completeAnimation() --[[ @ 0]]
			f20_arg0.Image4:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Image4 ) --[[ @ 0]]
			f20_arg0.Image5:completeAnimation() --[[ @ 0]]
			f20_arg0.Image5:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Image5 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
