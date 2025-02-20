-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]

CoD.ZMInvShieldItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMInvShieldItem.__defaultWidth = 80 --[[ @ 0]]
CoD.ZMInvShieldItem.__defaultHeight = 80 --[[ @ 0]]
CoD.ZMInvShieldItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMInvShieldItem ) --[[ @ 0]]
	self.id = "ZMInvShieldItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setAlpha( 0 ) --[[ @ 0]]
	Backing:setImage( RegisterImage( @"hash_5198E62429893867" ) ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local PieceImage = LUI.UIImage.new( 0.5, 0.5, -40, 40, 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	PieceImage:linkToElementModel( self, "image1", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			PieceImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PieceImage ) --[[ @ 0]]
	self.PieceImage = PieceImage --[[ @ 0]]
	
	local MainFrame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0.5, 0.5, -30, 30, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	MainFrame:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( MainFrame ) --[[ @ 0]]
	self.MainFrame = MainFrame --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsAnyGameType( f1_arg1, "zstandard" )
			end
		},
		{
			stateName = "Acquired",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( self, f1_arg1, "stage", 1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "stage", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "stage"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMInvShieldItem.__resetProperties = function ( f6_arg0 )
	f6_arg0.PieceImage:completeAnimation() --[[ @ 0]]
	f6_arg0.Backing:completeAnimation() --[[ @ 0]]
	f6_arg0.PieceImage:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMInvShieldItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.PieceImage:completeAnimation() --[[ @ 0]]
			f7_arg0.PieceImage:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.PieceImage ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.Backing:completeAnimation() --[[ @ 0]]
			f8_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Backing ) --[[ @ 0]]
			f8_arg0.PieceImage:completeAnimation() --[[ @ 0]]
			f8_arg0.PieceImage:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.PieceImage ) --[[ @ 0]]
		end
	},
	Acquired = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ZMInvShieldItem.__onClose = function ( f10_arg0 )
	f10_arg0.PieceImage:close() --[[ @ 0]]
	f10_arg0.MainFrame:close() --[[ @ 0]]
end
 --[[ @ 0]]
