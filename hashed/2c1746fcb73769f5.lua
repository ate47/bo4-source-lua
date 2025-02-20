-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.CallingCards_Asset_jaw02 = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Asset_jaw02.__defaultWidth = 69 --[[ @ 0]]
CoD.CallingCards_Asset_jaw02.__defaultHeight = 69 --[[ @ 0]]
CoD.CallingCards_Asset_jaw02.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Asset_jaw02 ) --[[ @ 0]]
	self.id = "CallingCards_Asset_jaw02" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local jaw02 = LUI.UIImage.new( 0, 0, 0, 69, 0, 0, 0, 69 ) --[[ @ 0]]
	jaw02:setImage( RegisterImage( @"uie_jaw_02" ) ) --[[ @ 0]]
	self:addElement( jaw02 ) --[[ @ 0]]
	self.jaw02 = jaw02 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_Asset_jaw02.__resetProperties = function ( f2_arg0 )
	f2_arg0.jaw02:completeAnimation() --[[ @ 0]]
	f2_arg0.jaw02:setTopBottom( 0, 0, 0, 69 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_Asset_jaw02.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 80 ) --[[ @ 0]]
					f5_arg0:setTopBottom( 0, 0, 0, 69 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.jaw02:beginAnimation( 90 ) --[[ @ 0]]
				f3_arg0.jaw02:setTopBottom( 0, 0, -5, 64 ) --[[ @ 0]]
				f3_arg0.jaw02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.jaw02:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.jaw02:completeAnimation() --[[ @ 0]]
			f3_arg0.jaw02:setTopBottom( 0, 0, 0, 69 ) --[[ @ 0]]
			f3_local0( f3_arg0.jaw02 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
