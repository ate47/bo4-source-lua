-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:7de41b5dda8306fc" ) --[[ @ 0]]
require( "x64:35bf5dd18266b70b" ) --[[ @ 0]]

CoD.CallingCards_Asset_Pirates_Pirate = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_Pirate.__defaultWidth = 918 --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_Pirate.__defaultHeight = 280 --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_Pirate.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Asset_Pirates_Pirate ) --[[ @ 0]]
	self.id = "CallingCards_Asset_Pirates_Pirate" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local armwithsword = CoD.CallingCards_Asset_Pirates_armwithsword.new( f1_arg0, f1_arg1, 0, 0, 604, 614, 0, 0, 155.5, 165.5 ) --[[ @ 0]]
	armwithsword:setZRot( -14 ) --[[ @ 0]]
	self:addElement( armwithsword ) --[[ @ 0]]
	self.armwithsword = armwithsword --[[ @ 0]]
	
	local armwithgun = CoD.CallingCards_Asset_Pirates_armwithgun.new( f1_arg0, f1_arg1, 0, 0, 717.5, 727.5, 0, 0, 145.5, 155.5 ) --[[ @ 0]]
	armwithgun:setZRot( 9 ) --[[ @ 0]]
	self:addElement( armwithgun ) --[[ @ 0]]
	self.armwithgun = armwithgun --[[ @ 0]]
	
	local piratebody = LUI.UIImage.new( 0, 0, 517.5, 750.5, 0, 0, 0, 280 ) --[[ @ 0]]
	piratebody:setImage( RegisterImage( @"uie_ui_icon_callingcards_pirates_body" ) ) --[[ @ 0]]
	self:addElement( piratebody ) --[[ @ 0]]
	self.piratebody = piratebody --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_Pirate.__resetProperties = function ( f2_arg0 )
	f2_arg0.armwithsword:completeAnimation() --[[ @ 0]]
	f2_arg0.armwithgun:completeAnimation() --[[ @ 0]]
	f2_arg0.armwithsword:setZRot( -14 ) --[[ @ 0]]
	f2_arg0.armwithgun:setZRot( 9 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_Pirate.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 2000, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f5_arg0:setZRot( -15 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
						element:playClip( "DefaultClip" ) --[[ @ 0]]
						f3_arg0.clipFinished( element, event ) --[[ @ 0]]
					end ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.armwithsword:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.armwithsword:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f3_arg0.armwithsword:setZRot( 8 ) --[[ @ 0]]
				f3_arg0.armwithsword:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.armwithsword:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.armwithsword:completeAnimation() --[[ @ 0]]
			f3_arg0.armwithsword:setZRot( -15 ) --[[ @ 0]]
			f3_local0( f3_arg0.armwithsword ) --[[ @ 0]]
			local f3_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					f8_arg0:beginAnimation( 2000, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f8_arg0:setZRot( -15 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.armwithgun:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f3_arg0.armwithgun:setZRot( 6 ) --[[ @ 0]]
				f3_arg0.armwithgun:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.armwithgun:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.armwithgun:completeAnimation() --[[ @ 0]]
			f3_arg0.armwithgun:setZRot( -15 ) --[[ @ 0]]
			f3_local1( f3_arg0.armwithgun ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_Pirate.__onClose = function ( f9_arg0 )
	f9_arg0.armwithsword:close() --[[ @ 0]]
	f9_arg0.armwithgun:close() --[[ @ 0]]
end
 --[[ @ 0]]
