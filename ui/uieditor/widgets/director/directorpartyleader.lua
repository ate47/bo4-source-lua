-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.DirectorPartyLeader = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorPartyLeader.__defaultWidth = 20 --[[ @ 0]]
CoD.DirectorPartyLeader.__defaultHeight = 20 --[[ @ 0]]
CoD.DirectorPartyLeader.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorPartyLeader ) --[[ @ 0]]
	self.id = "DirectorPartyLeader" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PartyLeaderStar = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	PartyLeaderStar:setRGB( 0.02, 0.29, 0.49 ) --[[ @ 0]]
	PartyLeaderStar:setImage( RegisterImage( @"uie_ui_menu_director_icon_star" ) ) --[[ @ 0]]
	self:addElement( PartyLeaderStar ) --[[ @ 0]]
	self.PartyLeaderStar = PartyLeaderStar --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "IsLeader",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "isMemberLeader", 1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "isMemberLeader", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isMemberLeader"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorPartyLeader.__resetProperties = function ( f4_arg0 )
	f4_arg0.PartyLeaderStar:completeAnimation() --[[ @ 0]]
	f4_arg0.PartyLeaderStar:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorPartyLeader.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.PartyLeaderStar:completeAnimation() --[[ @ 0]]
			f5_arg0.PartyLeaderStar:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.PartyLeaderStar ) --[[ @ 0]]
		end
	},
	IsLeader = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
