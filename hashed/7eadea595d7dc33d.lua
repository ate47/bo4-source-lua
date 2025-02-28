-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.Client_Gamertag = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Client_Gamertag.__defaultWidth = 189 --[[ @ 0]]
CoD.Client_Gamertag.__defaultHeight = 18 --[[ @ 0]]
CoD.Client_Gamertag.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.Client_Gamertag ) --[[ @ 0]]
	self.id = "Client_Gamertag" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Gamertag = LUI.UIText.new( 0, 0, 0, 157, 0, 0, 0, 18 ) --[[ @ 0]]
	Gamertag:setTTF( "notosans_regular" ) --[[ @ 0]]
	Gamertag:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Gamertag:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	Gamertag:linkToElementModel( self, "clientNum", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Gamertag:setRGB( ClientGamertagColor( f1_arg1, f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Gamertag:linkToElementModel( self, "playerName", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Gamertag:setText( CoD.SocialUtility.CleanGamerTag( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Gamertag ) --[[ @ 0]]
	self.Gamertag = Gamertag --[[ @ 0]]
	
	local VOIPImage = LUI.UIImage.new( 0, 0, 157, 175, 0, 0, 0, 18 ) --[[ @ 0]]
	VOIPImage:linkToElementModel( self, "clientNum", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			VOIPImage:setupVoipImage( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( VOIPImage ) --[[ @ 0]]
	self.VOIPImage = VOIPImage --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Client_Gamertag.__onClose = function ( f5_arg0 )
	f5_arg0.Gamertag:close() --[[ @ 0]]
	f5_arg0.VOIPImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
