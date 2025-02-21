-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.AllowDownload = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AllowDownload.__defaultWidth = 30 --[[ @ 0]]
CoD.AllowDownload.__defaultHeight = 28 --[[ @ 0]]
CoD.AllowDownload.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AllowDownload ) --[[ @ 0]]
	self.id = "AllowDownload" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ImgAllowDownload = LUI.UIImage.new( 0, 0, 0, 30, 0, 0, 0, 28 ) --[[ @ 0]]
	ImgAllowDownload:setRGB( 0.21, 0.21, 0.21 ) --[[ @ 0]]
	self:addElement( ImgAllowDownload ) --[[ @ 0]]
	self.ImgAllowDownload = ImgAllowDownload --[[ @ 0]]
	
	local Image0 = LUI.UIImage.new( 0, 0, 3, 28, 0, 0, 3, 25 ) --[[ @ 0]]
	Image0:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
	self:addElement( Image0 ) --[[ @ 0]]
	self.Image0 = Image0 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "AllowDownload",
			condition = function ( menu, element, event )
				return FileshareShouldAllowDownload()
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["fileshareRoot.publishAllowDownload"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "fileshareRoot.publishAllowDownload"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "FileshareRoot", "publishAllowDownload", function ( model )
		local f4_local0 = self --[[ @ 0]]
		UpdateSelfState( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AllowDownload.__resetProperties = function ( f5_arg0 )
	f5_arg0.Image0:completeAnimation() --[[ @ 0]]
	f5_arg0.Image0:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AllowDownload.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	AllowDownload = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.Image0:completeAnimation() --[[ @ 0]]
			f7_arg0.Image0:setRGB( 0.02, 1, 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Image0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
