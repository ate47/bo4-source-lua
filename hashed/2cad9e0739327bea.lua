-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:5569db342b25e6f7" ) --[[ @ 0]]

CoD.WZAAR_MeritContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZAAR_MeritContainer.__defaultWidth = 540 --[[ @ 0]]
CoD.WZAAR_MeritContainer.__defaultHeight = 622 --[[ @ 0]]
CoD.WZAAR_MeritContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZAAR_MeritContainer ) --[[ @ 0]]
	self.id = "WZAAR_MeritContainer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Title = CoD.WZAAR_MeritContainerInternal.new( f1_arg0, f1_arg1, 0, 0, 0, 540, 0, 0, -3, 625 ) --[[ @ 0]]
	Title:linkToElementModel( self, nil, false, function ( model )
		Title:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local Sound = LUI.UIElement.new( 0, 0, 746.5, 778.5, 0, 0, -34.5, -2.5 ) --[[ @ 0]]
	Sound:setPlaySoundDirect( true ) --[[ @ 0]]
	self:addElement( Sound ) --[[ @ 0]]
	self.Sound = Sound --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "xpEarnedDuringMatch", 0 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "xpEarnedDuringMatch", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "xpEarnedDuringMatch"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f5_arg2, f5_arg3, f5_arg4 )
		if IsSelfInState( self, "Hidden" ) then
			HideWidget( element ) --[[ @ 0]]
		elseif IsSelfInState( self, "DefaultState" ) then
			ShowWidget( element ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WZAAR_MeritContainer.__resetProperties = function ( f6_arg0 )
	f6_arg0.Title:completeAnimation() --[[ @ 0]]
	f6_arg0.Sound:completeAnimation() --[[ @ 0]]
	f6_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.Title:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WZAAR_MeritContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.Title:beginAnimation( 400, Enum[@"hash_1F50FFF429AB1890"][@"hash_6E99F3A6467FC0CA"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f7_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0.Title:setScale( 1, 1 ) --[[ @ 0]]
				f7_arg0.Title:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.Title:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.Title:completeAnimation() --[[ @ 0]]
			f7_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.Title:setScale( 1.4, 1.4 ) --[[ @ 0]]
			f7_local0( f7_arg0.Title ) --[[ @ 0]]
			f7_arg0.Sound:completeAnimation() --[[ @ 0]]
			f7_arg0.Sound:playSound( "uin_wz_aar_box", f7_arg1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Sound ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.Title:completeAnimation() --[[ @ 0]]
			f9_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Title ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WZAAR_MeritContainer.__onClose = function ( f10_arg0 )
	f10_arg0.Title:close() --[[ @ 0]]
end
 --[[ @ 0]]
