-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:4368f532cc98a68a" ) --[[ @ 0]]

CoD.CallingCards_Asset_Pirates_Mast = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_Mast.__defaultWidth = 1000 --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_Mast.__defaultHeight = 280 --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_Mast.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Asset_Pirates_Mast ) --[[ @ 0]]
	self.id = "CallingCards_Asset_Pirates_Mast" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local mast = LUI.UIImage.new( 0, 0, 0, 1000, 0, 0, 0, 280 ) --[[ @ 0]]
	mast:setImage( RegisterImage( @"uie_ui_icon_callingcards_pirates_mast" ) ) --[[ @ 0]]
	self:addElement( mast ) --[[ @ 0]]
	self.mast = mast --[[ @ 0]]
	
	local flag = CoD.CallingCards_Asset_Pirates_Flag.new( f1_arg0, f1_arg1, 0, 0, 681.5, 691.5, 0, 0, 68, 78 ) --[[ @ 0]]
	self:addElement( flag ) --[[ @ 0]]
	self.flag = flag --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_Mast.__resetProperties = function ( f2_arg0 )
	f2_arg0.flag:completeAnimation() --[[ @ 0]]
	f2_arg0.flag:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.flag:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_Mast.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							f7_arg0:beginAnimation( 480, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
							f7_arg0:setZRot( 3 ) --[[ @ 0]]
							f7_arg0:setScale( 0.9, 1 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 520, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
						f6_arg0:setZRot( -3 ) --[[ @ 0]]
						f6_arg0:setScale( 1, 1 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f5_arg0:setZRot( 3 ) --[[ @ 0]]
					f5_arg0:setScale( 0.9, 1 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.flag:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f3_arg0.flag:setZRot( -6 ) --[[ @ 0]]
				f3_arg0.flag:setScale( 1, 1 ) --[[ @ 0]]
				f3_arg0.flag:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.flag:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.flag:completeAnimation() --[[ @ 0]]
			f3_arg0.flag:setZRot( 3 ) --[[ @ 0]]
			f3_arg0.flag:setScale( 0.9, 1 ) --[[ @ 0]]
			f3_local0( f3_arg0.flag ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_Mast.__onClose = function ( f8_arg0 )
	f8_arg0.flag:close() --[[ @ 0]]
end
 --[[ @ 0]]
