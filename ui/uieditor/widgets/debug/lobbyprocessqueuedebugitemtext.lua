-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.LobbyProcessQueueDebugItemText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LobbyProcessQueueDebugItemText.__defaultWidth = 83 --[[ @ 0]]
CoD.LobbyProcessQueueDebugItemText.__defaultHeight = 25 --[[ @ 0]]
CoD.LobbyProcessQueueDebugItemText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LobbyProcessQueueDebugItemText ) --[[ @ 0]]
	self.id = "LobbyProcessQueueDebugItemText" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0, 0, 0, 1083, 0, 0, 0, 20 ) --[[ @ 0]]
	Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6808E4CA838AD72E" ) ) --[[ @ 0]]
	Name:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Name:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Name:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Pending",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "processState", 0 )
			end
		},
		{
			stateName = "Running",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "processState", 1 )
			end
		},
		{
			stateName = "Success",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "processState", 2 )
			end
		},
		{
			stateName = "Failure",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "processState", 3 )
			end
		},
		{
			stateName = "Error",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "processState", 4 )
			end
		},
		{
			stateName = "Throttled",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "processState", 5 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "processState", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "processState"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LobbyProcessQueueDebugItemText.__resetProperties = function ( f9_arg0 )
	f9_arg0.Name:completeAnimation() --[[ @ 0]]
	f9_arg0.Name:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LobbyProcessQueueDebugItemText.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Pending = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.Name:completeAnimation() --[[ @ 0]]
			f11_arg0.Name:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Name ) --[[ @ 0]]
		end
	},
	Running = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.Name:completeAnimation() --[[ @ 0]]
			f12_arg0.Name:setRGB( 0, 1, 0.04 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Name ) --[[ @ 0]]
		end
	},
	Success = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.Name:completeAnimation() --[[ @ 0]]
			f13_arg0.Name:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Name ) --[[ @ 0]]
		end
	},
	Failure = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.Name:completeAnimation() --[[ @ 0]]
			f14_arg0.Name:setRGB( 1, 0.96, 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Name ) --[[ @ 0]]
		end
	},
	Error = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.Name:completeAnimation() --[[ @ 0]]
			f15_arg0.Name:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Name ) --[[ @ 0]]
		end
	},
	Throttled = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.Name:completeAnimation() --[[ @ 0]]
			f16_arg0.Name:setRGB( 0, 0.82, 1 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Name ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
