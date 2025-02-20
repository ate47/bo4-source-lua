-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.verticalScrollingTextContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.verticalScrollingTextContainer.__defaultWidth = 900 --[[ @ 0]]
CoD.verticalScrollingTextContainer.__defaultHeight = 21 --[[ @ 0]]
CoD.verticalScrollingTextContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.verticalScrollingTextContainer ) --[[ @ 0]]
	self.id = "verticalScrollingTextContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local text = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 0, 21 ) --[[ @ 0]]
	text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_393E719493E9E18F" ) ) --[[ @ 0]]
	text:setTTF( "dinnext_regular" ) --[[ @ 0]]
	text:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( text ) --[[ @ 0]]
	self.text = text --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.verticalScrollingTextContainer.__resetProperties = function ( f3_arg0 )
	f3_arg0.text:completeAnimation() --[[ @ 0]]
	f3_arg0.text:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.verticalScrollingTextContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.text:completeAnimation() --[[ @ 0]]
			f5_arg0.text:setLeftRight( 0, 1, 15, -15 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.text ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
