-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.MissingDLCNotification_TextInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MissingDLCNotification_TextInternal.__defaultWidth = 331 --[[ @ 0]]
CoD.MissingDLCNotification_TextInternal.__defaultHeight = 14 --[[ @ 0]]
CoD.MissingDLCNotification_TextInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MissingDLCNotification_TextInternal ) --[[ @ 0]]
	self.id = "MissingDLCNotification_TextInternal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local label = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 0, 14 ) --[[ @ 0]]
	label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3A201C5CBA235AA1" ) ) --[[ @ 0]]
	label:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	label:setLetterSpacing( 2 ) --[[ @ 0]]
	label:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	label:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( label ) --[[ @ 0]]
	self.label = label --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "AsianLanguage",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsCurrentLanguageAsian()
			end
		}
	} ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MissingDLCNotification_TextInternal.__resetProperties = function ( f3_arg0 )
	f3_arg0.label:completeAnimation() --[[ @ 0]]
	f3_arg0.label:setTopBottom( 0, 0, 0, 14 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MissingDLCNotification_TextInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	AsianLanguage = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.label:completeAnimation() --[[ @ 0]]
			f5_arg0.label:setTopBottom( 0, 0, 4, 14 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.label ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
