-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.WZAARChallengeOrContract = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZAARChallengeOrContract.__defaultWidth = 36 --[[ @ 0]]
CoD.WZAARChallengeOrContract.__defaultHeight = 36 --[[ @ 0]]
CoD.WZAARChallengeOrContract.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZAARChallengeOrContract ) --[[ @ 0]]
	self.id = "WZAARChallengeOrContract" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ContractOrChallenge = LUI.UIImage.new( 0, 0, 0, 36, 0, 0, 0, 36 ) --[[ @ 0]]
	ContractOrChallenge:setRGB( 0.61, 0.61, 0.61 ) --[[ @ 0]]
	ContractOrChallenge:setImage( RegisterImage( @"uie_ui_menu_contracts_wz_challenge_icon" ) ) --[[ @ 0]]
	self:addElement( ContractOrChallenge ) --[[ @ 0]]
	self.ContractOrChallenge = ContractOrChallenge --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Contract",
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
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WZAARChallengeOrContract.__resetProperties = function ( f4_arg0 )
	f4_arg0.ContractOrChallenge:completeAnimation() --[[ @ 0]]
	f4_arg0.ContractOrChallenge:setImage( RegisterImage( @"uie_ui_menu_contracts_wz_challenge_icon" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WZAARChallengeOrContract.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Contract = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.ContractOrChallenge:completeAnimation() --[[ @ 0]]
			f6_arg0.ContractOrChallenge:setImage( RegisterImage( @"uie_ui_menu_contracts_wz_contract_icon" ) ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.ContractOrChallenge ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
