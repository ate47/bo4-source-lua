-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:74c6888ebce3d23e" ) --[[ @ 0]]
require( "x64:5fb9d9901b113614" ) --[[ @ 0]]

CoD.WZAARChallengeReward = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZAARChallengeReward.__defaultWidth = 345 --[[ @ 0]]
CoD.WZAARChallengeReward.__defaultHeight = 56 --[[ @ 0]]
CoD.WZAARChallengeReward.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZAARChallengeReward ) --[[ @ 0]]
	self.id = "WZAARChallengeReward" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Icon = CoD.WZAAR_Challenges_NearCompletion_CroppedImage.new( f1_arg0, f1_arg1, 0, 0, 0, 345, 0, 0, 0, 56 ) --[[ @ 0]]
	Icon:linkToElementModel( self, "icon", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Icon.Image:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Icon ) --[[ @ 0]]
	self.Icon = Icon --[[ @ 0]]
	
	local Background = CoD.WZAARContractReward.new( f1_arg0, f1_arg1, 0, 0, 0, 345, 0, 0, 0, 70 ) --[[ @ 0]]
	Background:setAlpha( 0 ) --[[ @ 0]]
	Background:linkToElementModel( self, nil, false, function ( model )
		Background:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "IsContract",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isContract" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "isContract", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isContract"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WZAARChallengeReward.__resetProperties = function ( f6_arg0 )
	f6_arg0.Icon:completeAnimation() --[[ @ 0]]
	f6_arg0.Background:completeAnimation() --[[ @ 0]]
	f6_arg0.Icon:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WZAARChallengeReward.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	IsContract = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.Icon:completeAnimation() --[[ @ 0]]
			f8_arg0.Icon:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Icon ) --[[ @ 0]]
			f8_arg0.Background:completeAnimation() --[[ @ 0]]
			f8_arg0.Background:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Background ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WZAARChallengeReward.__onClose = function ( f9_arg0 )
	f9_arg0.Icon:close() --[[ @ 0]]
	f9_arg0.Background:close() --[[ @ 0]]
end
 --[[ @ 0]]
