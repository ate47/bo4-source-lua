-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.lower_message = InheritFrom( CoD.Menu ) --[[ @ 0]]
CoD.lower_message.__stateMap = {
	"DefaultState",
	"Visible",
	"VisibleMessageOnly"
} --[[ @ 0]]
LUI.createMenu.lower_message = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "lower_message", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.lower_message ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local message = LUI.UIText.new( 0.5, 0.5, -400, 400, 0, 0, 638, 666 ) --[[ @ 0]]
	message:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	message:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	message:setShaderVector( 0, 0.1, 0, 0, 0 ) --[[ @ 0]]
	message:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	message:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	message:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	message:linkToElementModel( self, "message", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			message:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( message ) --[[ @ 0]]
	self.message = message --[[ @ 0]]
	
	local timer = LUI.UIText.new( 0.5, 0.5, -400, 400, 0, 0, 668, 700 ) --[[ @ 0]]
	timer:setText( NumberAsTime( 5 ) ) --[[ @ 0]]
	timer:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	timer:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_56250C6FCAC36BD4" ) ) --[[ @ 0]]
	timer:setShaderVector( 0, 0.1, 0, 0, 0 ) --[[ @ 0]]
	timer:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	timer:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	timer:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( timer ) --[[ @ 0]]
	self.timer = timer --[[ @ 0]]
	
	self:linkToElementModel( self, "countdownTimeSeconds", true, function ( model )
		local f3_local0 = self --[[ @ 0]]
		CoD.HUDUtility.UpdateMessageTimer( self.timer, model ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.lower_message.__resetProperties = function ( f4_arg0 )
	f4_arg0.message:completeAnimation() --[[ @ 0]]
	f4_arg0.timer:completeAnimation() --[[ @ 0]]
	f4_arg0.message:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.timer:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.lower_message.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.message:completeAnimation() --[[ @ 0]]
			f5_arg0.message:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.message ) --[[ @ 0]]
			f5_arg0.timer:completeAnimation() --[[ @ 0]]
			f5_arg0.timer:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.timer ) --[[ @ 0]]
		end,
		Visible = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.message:beginAnimation( 500 ) --[[ @ 0]]
				f6_arg0.message:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.message:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.message:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.message:completeAnimation() --[[ @ 0]]
			f6_arg0.message:setAlpha( 0 ) --[[ @ 0]]
			f6_local0( f6_arg0.message ) --[[ @ 0]]
			local f6_local1 = function ( f8_arg0 )
				f6_arg0.timer:beginAnimation( 500 ) --[[ @ 0]]
				f6_arg0.timer:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.timer:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.timer:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.timer:completeAnimation() --[[ @ 0]]
			f6_arg0.timer:setAlpha( 0 ) --[[ @ 0]]
			f6_local1( f6_arg0.timer ) --[[ @ 0]]
		end,
		VisibleMessageOnly = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.message:beginAnimation( 500 ) --[[ @ 0]]
				f9_arg0.message:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.message:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.message:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.message:completeAnimation() --[[ @ 0]]
			f9_arg0.message:setAlpha( 0 ) --[[ @ 0]]
			f9_local0( f9_arg0.message ) --[[ @ 0]]
			f9_arg0.timer:completeAnimation() --[[ @ 0]]
			f9_arg0.timer:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.timer ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		DefaultState = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.message:beginAnimation( 500 ) --[[ @ 0]]
				f12_arg0.message:setAlpha( 0 ) --[[ @ 0]]
				f12_arg0.message:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.message:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.message:completeAnimation() --[[ @ 0]]
			f12_arg0.message:setAlpha( 1 ) --[[ @ 0]]
			f12_local0( f12_arg0.message ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				f12_arg0.timer:beginAnimation( 500 ) --[[ @ 0]]
				f12_arg0.timer:setAlpha( 0 ) --[[ @ 0]]
				f12_arg0.timer:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.timer:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.timer:completeAnimation() --[[ @ 0]]
			f12_arg0.timer:setAlpha( 1 ) --[[ @ 0]]
			f12_local1( f12_arg0.timer ) --[[ @ 0]]
		end
	},
	VisibleMessageOnly = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.timer:completeAnimation() --[[ @ 0]]
			f15_arg0.timer:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.timer ) --[[ @ 0]]
		end,
		DefaultState = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.message:beginAnimation( 500 ) --[[ @ 0]]
				f16_arg0.message:setAlpha( 0 ) --[[ @ 0]]
				f16_arg0.message:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.message:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.message:completeAnimation() --[[ @ 0]]
			f16_arg0.message:setAlpha( 1 ) --[[ @ 0]]
			f16_local0( f16_arg0.message ) --[[ @ 0]]
			f16_arg0.timer:completeAnimation() --[[ @ 0]]
			f16_arg0.timer:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.timer ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.lower_message.__onClose = function ( f18_arg0 )
	f18_arg0.message:close() --[[ @ 0]]
end
 --[[ @ 0]]
