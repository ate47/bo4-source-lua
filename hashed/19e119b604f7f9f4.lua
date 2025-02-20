-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.NewSpecialistFooter = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.NewSpecialistFooter.__defaultWidth = 600 --[[ @ 0]]
CoD.NewSpecialistFooter.__defaultHeight = 150 --[[ @ 0]]
CoD.NewSpecialistFooter.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.NewSpecialistFooter ) --[[ @ 0]]
	self.id = "NewSpecialistFooter" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SelForNewSpawn = LUI.UIText.new( 0.5, 0.5, 102, 462, 0.5, 0.5, -18.5, 18.5 ) --[[ @ 0]]
	SelForNewSpawn:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_CC33FEF563991C6" ) ) --[[ @ 0]]
	SelForNewSpawn:setTTF( "default" ) --[[ @ 0]]
	SelForNewSpawn:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	SelForNewSpawn:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( SelForNewSpawn ) --[[ @ 0]]
	self.SelForNewSpawn = SelForNewSpawn --[[ @ 0]]
	
	local SpecialistImage = LUI.UIFixedAspectRatioImage.new( 0.5, 0.5, -73.5, 73.5, 0.5, 0.5, -73.5, 73.5 ) --[[ @ 0]]
	SpecialistImage:subscribeToGlobalModel( f1_arg1, "CharacterSelection", "characterIndex", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			SpecialistImage:setImage( RegisterImage( GetPositionDraftIconByIndex( f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SpecialistImage ) --[[ @ 0]]
	self.SpecialistImage = SpecialistImage --[[ @ 0]]
	
	local SpecialistName = LUI.UIText.new( 0.5, 0.5, -357.5, -101.5, 0.5, 0.5, -18.5, 18.5 ) --[[ @ 0]]
	SpecialistName:setTTF( "default" ) --[[ @ 0]]
	SpecialistName:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
	SpecialistName:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	SpecialistName:subscribeToGlobalModel( f1_arg1, "CharacterSelection", "characterIndex", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			SpecialistName:setText( Engine[@"hash_4F9F1239CFD921FE"]( GetCharacterDisplayNameByIndex( f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SpecialistName ) --[[ @ 0]]
	self.SpecialistName = SpecialistName --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.NewSpecialistFooter.__resetProperties = function ( f4_arg0 )
	f4_arg0.SelForNewSpawn:completeAnimation() --[[ @ 0]]
	f4_arg0.SpecialistImage:completeAnimation() --[[ @ 0]]
	f4_arg0.SpecialistName:completeAnimation() --[[ @ 0]]
	f4_arg0.SelForNewSpawn:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.SpecialistImage:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.SpecialistName:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.NewSpecialistFooter.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		DeathSpecialistSwitch = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.SelForNewSpawn:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.SelForNewSpawn:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.SelForNewSpawn:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.SelForNewSpawn:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.SelForNewSpawn:completeAnimation() --[[ @ 0]]
			f6_arg0.SelForNewSpawn:setAlpha( 0 ) --[[ @ 0]]
			f6_local0( f6_arg0.SelForNewSpawn ) --[[ @ 0]]
			local f6_local1 = function ( f8_arg0 )
				f6_arg0.SpecialistImage:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.SpecialistImage:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.SpecialistImage:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.SpecialistImage:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.SpecialistImage:completeAnimation() --[[ @ 0]]
			f6_arg0.SpecialistImage:setAlpha( 0 ) --[[ @ 0]]
			f6_local1( f6_arg0.SpecialistImage ) --[[ @ 0]]
			local f6_local2 = function ( f9_arg0 )
				f6_arg0.SpecialistName:beginAnimation( 200 ) --[[ @ 0]]
				f6_arg0.SpecialistName:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.SpecialistName:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.SpecialistName:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.SpecialistName:completeAnimation() --[[ @ 0]]
			f6_arg0.SpecialistName:setAlpha( 0 ) --[[ @ 0]]
			f6_local2( f6_arg0.SpecialistName ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.NewSpecialistFooter.__onClose = function ( f10_arg0 )
	f10_arg0.SpecialistImage:close() --[[ @ 0]]
	f10_arg0.SpecialistName:close() --[[ @ 0]]
end
 --[[ @ 0]]
