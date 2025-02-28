-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.DirectorAppLoadoutNotification = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorAppLoadoutNotification.__defaultWidth = 250 --[[ @ 0]]
CoD.DirectorAppLoadoutNotification.__defaultHeight = 30 --[[ @ 0]]
CoD.DirectorAppLoadoutNotification.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorAppLoadoutNotification ) --[[ @ 0]]
	self.id = "DirectorAppLoadoutNotification" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local diamond = LUI.UIImage.new( 0.5, 0.5, -10, 10, 1, 1, -17, 13 ) --[[ @ 0]]
	diamond:setRGB( 0.67, 0.75, 0.17 ) --[[ @ 0]]
	diamond:setAlpha( 0 ) --[[ @ 0]]
	diamond:setImage( RegisterImage( @"uie_ui_menu_common_diamond" ) ) --[[ @ 0]]
	self:addElement( diamond ) --[[ @ 0]]
	self.diamond = diamond --[[ @ 0]]
	
	local Backing3 = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -2, 0 ) --[[ @ 0]]
	Backing3:setRGB( 0.67, 0.75, 0.17 ) --[[ @ 0]]
	Backing3:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Backing3 ) --[[ @ 0]]
	self.Backing3 = Backing3 --[[ @ 0]]
	
	local diamond2 = LUI.UIImage.new( 0.5, 0.5, -10, 10, 1, 1, -21, 9 ) --[[ @ 0]]
	diamond2:setRGB( 0.1, 0.12, 0.03 ) --[[ @ 0]]
	diamond2:setAlpha( 0 ) --[[ @ 0]]
	diamond2:setImage( RegisterImage( @"uie_ui_menu_common_diamond" ) ) --[[ @ 0]]
	self:addElement( diamond2 ) --[[ @ 0]]
	self.diamond2 = diamond2 --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, -2 ) --[[ @ 0]]
	Backing:setRGB( 0.1, 0.12, 0.03 ) --[[ @ 0]]
	Backing:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Backing2 = LUI.UIImage.new( 0, 0, 0, 30, 0, 0, 0, 30 ) --[[ @ 0]]
	Backing2:setRGB( 0.67, 0.75, 0.17 ) --[[ @ 0]]
	Backing2:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Backing2 ) --[[ @ 0]]
	self.Backing2 = Backing2 --[[ @ 0]]
	
	local Message = LUI.UIText.new( 0.5, 0.5, -114.5, 145.5, 0.5, 0.5, -10, 8 ) --[[ @ 0]]
	Message:setRGB( 0.87, 0.89, 0.7 ) --[[ @ 0]]
	Message:setAlpha( 0 ) --[[ @ 0]]
	Message:setText( LocalizeToUpperString( @"hash_4F79CE38A55B8D31" ) ) --[[ @ 0]]
	Message:setTTF( "default" ) --[[ @ 0]]
	Message:setLetterSpacing( 3 ) --[[ @ 0]]
	Message:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Message:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Message ) --[[ @ 0]]
	self.Message = Message --[[ @ 0]]
	
	local Pip = LUI.UIImage.new( 1, 1, -4.5, 3.5, 0, 0, -3.5, 4.5 ) --[[ @ 0]]
	Pip:setAlpha( 0 ) --[[ @ 0]]
	Pip:setImage( RegisterImage( @"hash_6364778639313CE9" ) ) --[[ @ 0]]
	Pip:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Pip ) --[[ @ 0]]
	self.Pip = Pip --[[ @ 0]]
	
	local Pip3 = LUI.UIImage.new( 0, 0, -3.5, 4.5, 0, 0, -3.5, 4.5 ) --[[ @ 0]]
	Pip3:setAlpha( 0 ) --[[ @ 0]]
	Pip3:setImage( RegisterImage( @"hash_6364778639313CE9" ) ) --[[ @ 0]]
	Pip3:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Pip3 ) --[[ @ 0]]
	self.Pip3 = Pip3 --[[ @ 0]]
	
	local Pip4 = LUI.UIImage.new( 0, 0, -3.5, 4.5, 1, 1, -4.5, 3.5 ) --[[ @ 0]]
	Pip4:setAlpha( 0 ) --[[ @ 0]]
	Pip4:setImage( RegisterImage( @"hash_6364778639313CE9" ) ) --[[ @ 0]]
	Pip4:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Pip4 ) --[[ @ 0]]
	self.Pip4 = Pip4 --[[ @ 0]]
	
	local Pip2 = LUI.UIImage.new( 1, 1, -4.5, 3.5, 1, 1, -4.5, 3.5 ) --[[ @ 0]]
	Pip2:setAlpha( 0 ) --[[ @ 0]]
	Pip2:setImage( RegisterImage( @"hash_6364778639313CE9" ) ) --[[ @ 0]]
	Pip2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Pip2 ) --[[ @ 0]]
	self.Pip2 = Pip2 --[[ @ 0]]
	
	local BreadcrumbIcon = LUI.UIImage.new( 0, 0, 1, 29, 0, 0, 1, 29 ) --[[ @ 0]]
	BreadcrumbIcon:setRGB( 0.1, 0.12, 0.03 ) --[[ @ 0]]
	BreadcrumbIcon:setAlpha( 0 ) --[[ @ 0]]
	BreadcrumbIcon:setImage( RegisterImage( @"uie_ui_icon_loadouts_breadcrumb" ) ) --[[ @ 0]]
	self:addElement( BreadcrumbIcon ) --[[ @ 0]]
	self.BreadcrumbIcon = BreadcrumbIcon --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorAppLoadoutNotification.__resetProperties = function ( f2_arg0 )
	f2_arg0.Message:completeAnimation() --[[ @ 0]]
	f2_arg0.Backing:completeAnimation() --[[ @ 0]]
	f2_arg0.diamond:completeAnimation() --[[ @ 0]]
	f2_arg0.BreadcrumbIcon:completeAnimation() --[[ @ 0]]
	f2_arg0.Pip2:completeAnimation() --[[ @ 0]]
	f2_arg0.Pip4:completeAnimation() --[[ @ 0]]
	f2_arg0.Pip3:completeAnimation() --[[ @ 0]]
	f2_arg0.Pip:completeAnimation() --[[ @ 0]]
	f2_arg0.diamond2:completeAnimation() --[[ @ 0]]
	f2_arg0.Backing2:completeAnimation() --[[ @ 0]]
	f2_arg0.Backing3:completeAnimation() --[[ @ 0]]
	f2_arg0.Message:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.diamond:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.BreadcrumbIcon:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Pip2:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Pip4:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Pip3:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Pip:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.diamond2:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Backing2:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Backing3:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorAppLoadoutNotification.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Available = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 11 ) --[[ @ 0]]
			f4_arg0.diamond:completeAnimation() --[[ @ 0]]
			f4_arg0.diamond:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.diamond ) --[[ @ 0]]
			f4_arg0.Backing3:completeAnimation() --[[ @ 0]]
			f4_arg0.Backing3:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Backing3 ) --[[ @ 0]]
			f4_arg0.diamond2:completeAnimation() --[[ @ 0]]
			f4_arg0.diamond2:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.diamond2 ) --[[ @ 0]]
			f4_arg0.Backing:completeAnimation() --[[ @ 0]]
			f4_arg0.Backing:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Backing ) --[[ @ 0]]
			f4_arg0.Backing2:completeAnimation() --[[ @ 0]]
			f4_arg0.Backing2:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Backing2 ) --[[ @ 0]]
			f4_arg0.Message:completeAnimation() --[[ @ 0]]
			f4_arg0.Message:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Message ) --[[ @ 0]]
			f4_arg0.Pip:completeAnimation() --[[ @ 0]]
			f4_arg0.Pip:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Pip ) --[[ @ 0]]
			f4_arg0.Pip3:completeAnimation() --[[ @ 0]]
			f4_arg0.Pip3:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Pip3 ) --[[ @ 0]]
			f4_arg0.Pip4:completeAnimation() --[[ @ 0]]
			f4_arg0.Pip4:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Pip4 ) --[[ @ 0]]
			f4_arg0.Pip2:completeAnimation() --[[ @ 0]]
			f4_arg0.Pip2:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Pip2 ) --[[ @ 0]]
			f4_arg0.BreadcrumbIcon:completeAnimation() --[[ @ 0]]
			f4_arg0.BreadcrumbIcon:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.BreadcrumbIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
