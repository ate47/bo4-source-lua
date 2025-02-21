-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.DemoIcons = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DemoIcons.__defaultWidth = 857 --[[ @ 0]]
CoD.DemoIcons.__defaultHeight = 200 --[[ @ 0]]
CoD.DemoIcons.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DemoIcons ) --[[ @ 0]]
	self.id = "DemoIcons" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local icon = LUI.UIImage.new( 0.5, 0.5, -407.5, -377.5, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	icon:setImage( RegisterImage( @"theater_pause" ) ) --[[ @ 0]]
	self:addElement( icon ) --[[ @ 0]]
	self.icon = icon --[[ @ 0]]
	
	local icon2 = LUI.UIImage.new( 0.5, 0.5, -353.5, -323.5, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	icon2:setImage( RegisterImage( @"theater_fastforward" ) ) --[[ @ 0]]
	self:addElement( icon2 ) --[[ @ 0]]
	self.icon2 = icon2 --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0.5, 0.5, -303.5, -273.5, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image:setImage( RegisterImage( @"theater_play" ) ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local Image2 = LUI.UIImage.new( 0.5, 0.5, -245.5, -215.5, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image2:setImage( RegisterImage( @"theater_record" ) ) --[[ @ 0]]
	self:addElement( Image2 ) --[[ @ 0]]
	self.Image2 = Image2 --[[ @ 0]]
	
	local Image3 = LUI.UIImage.new( 0.5, 0.5, -189.5, -159.5, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image3:setImage( RegisterImage( @"theater_back" ) ) --[[ @ 0]]
	self:addElement( Image3 ) --[[ @ 0]]
	self.Image3 = Image3 --[[ @ 0]]
	
	local Image4 = LUI.UIImage.new( 0.5, 0.5, -141.5, -111.5, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image4:setImage( RegisterImage( @"theater_video" ) ) --[[ @ 0]]
	self:addElement( Image4 ) --[[ @ 0]]
	self.Image4 = Image4 --[[ @ 0]]
	
	local Image5 = LUI.UIImage.new( 0.5, 0.5, -85, -55, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image5:setImage( RegisterImage( @"theater_screenshot" ) ) --[[ @ 0]]
	self:addElement( Image5 ) --[[ @ 0]]
	self.Image5 = Image5 --[[ @ 0]]
	
	local Image6 = LUI.UIImage.new( 0.5, 0.5, -43, -13, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image6:setImage( RegisterImage( @"theater_forward" ) ) --[[ @ 0]]
	self:addElement( Image6 ) --[[ @ 0]]
	self.Image6 = Image6 --[[ @ 0]]
	
	local Image7 = LUI.UIImage.new( 0.5, 0.5, 0, 30, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image7:setImage( RegisterImage( @"theater_fastforward_1" ) ) --[[ @ 0]]
	self:addElement( Image7 ) --[[ @ 0]]
	self.Image7 = Image7 --[[ @ 0]]
	
	local Image8 = LUI.UIImage.new( 0.5, 0.5, 42, 72, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image8:setImage( RegisterImage( @"theater_fastforward_2" ) ) --[[ @ 0]]
	self:addElement( Image8 ) --[[ @ 0]]
	self.Image8 = Image8 --[[ @ 0]]
	
	local Image9 = LUI.UIImage.new( 0.5, 0.5, 82, 112, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image9:setImage( RegisterImage( @"theater_fastforward_3" ) ) --[[ @ 0]]
	self:addElement( Image9 ) --[[ @ 0]]
	self.Image9 = Image9 --[[ @ 0]]
	
	local Image10 = LUI.UIImage.new( 0.5, 0.5, 125, 155, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image10:setImage( RegisterImage( @"theater_settings" ) ) --[[ @ 0]]
	self:addElement( Image10 ) --[[ @ 0]]
	self.Image10 = Image10 --[[ @ 0]]
	
	local Image11 = LUI.UIImage.new( 0.5, 0.5, 170, 200, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image11:setImage( RegisterImage( @"theater_link" ) ) --[[ @ 0]]
	self:addElement( Image11 ) --[[ @ 0]]
	self.Image11 = Image11 --[[ @ 0]]
	
	local Image12 = LUI.UIImage.new( 0.5, 0.5, 213, 243, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image12:setImage( RegisterImage( @"theater_bulb" ) ) --[[ @ 0]]
	self:addElement( Image12 ) --[[ @ 0]]
	self.Image12 = Image12 --[[ @ 0]]
	
	local Image13 = LUI.UIImage.new( 0.5, 0.5, 255, 285, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image13:setImage( RegisterImage( @"theater_timeline" ) ) --[[ @ 0]]
	self:addElement( Image13 ) --[[ @ 0]]
	self.Image13 = Image13 --[[ @ 0]]
	
	local Image14 = LUI.UIImage.new( 0.5, 0.5, 300, 330, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image14:setImage( RegisterImage( @"hash_472AEB4C18D4662F" ) ) --[[ @ 0]]
	self:addElement( Image14 ) --[[ @ 0]]
	self.Image14 = Image14 --[[ @ 0]]
	
	local Image15 = LUI.UIImage.new( 0.5, 0.5, 341, 371, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image15:setImage( RegisterImage( @"hash_4414F4BE1E294D4E" ) ) --[[ @ 0]]
	self:addElement( Image15 ) --[[ @ 0]]
	self.Image15 = Image15 --[[ @ 0]]
	
	local Image16 = LUI.UIImage.new( 0.5, 0.5, 382, 412, 0.5, 0.5, -88, -58 ) --[[ @ 0]]
	Image16:setImage( RegisterImage( @"hash_22A8E2789613E50E" ) ) --[[ @ 0]]
	self:addElement( Image16 ) --[[ @ 0]]
	self.Image16 = Image16 --[[ @ 0]]
	
	local Image17 = LUI.UIImage.new( 0.5, 0.5, -407.5, -377.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image17:setImage( RegisterImage( @"hash_4BD020DE9BC680A9" ) ) --[[ @ 0]]
	self:addElement( Image17 ) --[[ @ 0]]
	self.Image17 = Image17 --[[ @ 0]]
	
	local Image18 = LUI.UIImage.new( 0.5, 0.5, -368.5, -338.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image18:setImage( RegisterImage( @"theater_link_object" ) ) --[[ @ 0]]
	self:addElement( Image18 ) --[[ @ 0]]
	self.Image18 = Image18 --[[ @ 0]]
	
	local Image19 = LUI.UIImage.new( 0.5, 0.5, -323.5, -293.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image19:setImage( RegisterImage( @"theater_unlink_object" ) ) --[[ @ 0]]
	self:addElement( Image19 ) --[[ @ 0]]
	self.Image19 = Image19 --[[ @ 0]]
	
	local Image20 = LUI.UIImage.new( 0.5, 0.5, -275.5, -245.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image20:setImage( RegisterImage( @"theater_slow" ) ) --[[ @ 0]]
	self:addElement( Image20 ) --[[ @ 0]]
	self.Image20 = Image20 --[[ @ 0]]
	
	local Image21 = LUI.UIImage.new( 0.5, 0.5, -132, -98, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image21:setImage( RegisterImage( @"theater_slow_3" ) ) --[[ @ 0]]
	self:addElement( Image21 ) --[[ @ 0]]
	self.Image21 = Image21 --[[ @ 0]]
	
	local Image22 = LUI.UIImage.new( 0.5, 0.5, -91, -61, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image22:setImage( RegisterImage( @"hash_43E599F0D948E2DF" ) ) --[[ @ 0]]
	self:addElement( Image22 ) --[[ @ 0]]
	self.Image22 = Image22 --[[ @ 0]]
	
	local Image23 = LUI.UIImage.new( 0.5, 0.5, -3, 27, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image23:setImage( RegisterImage( @"hash_3A294B63BC865A91" ) ) --[[ @ 0]]
	self:addElement( Image23 ) --[[ @ 0]]
	self.Image23 = Image23 --[[ @ 0]]
	
	local Image24 = LUI.UIImage.new( 0.5, 0.5, 38.5, 68.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image24:setImage( RegisterImage( @"hash_38836A8306560A2A" ) ) --[[ @ 0]]
	self:addElement( Image24 ) --[[ @ 0]]
	self.Image24 = Image24 --[[ @ 0]]
	
	local Image25 = LUI.UIImage.new( 0.5, 0.5, 80.5, 110.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image25:setImage( RegisterImage( @"hash_76008960BCA65979" ) ) --[[ @ 0]]
	self:addElement( Image25 ) --[[ @ 0]]
	self.Image25 = Image25 --[[ @ 0]]
	
	local Image26 = LUI.UIImage.new( 0.5, 0.5, 123.5, 153.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image26:setImage( RegisterImage( @"hash_167235575E0A08AE" ) ) --[[ @ 0]]
	self:addElement( Image26 ) --[[ @ 0]]
	self.Image26 = Image26 --[[ @ 0]]
	
	local Image27 = LUI.UIImage.new( 0.5, 0.5, 165.5, 195.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image27:setImage( RegisterImage( @"hash_14BD1D0C96ED384F" ) ) --[[ @ 0]]
	self:addElement( Image27 ) --[[ @ 0]]
	self.Image27 = Image27 --[[ @ 0]]
	
	local Image28 = LUI.UIImage.new( 0.5, 0.5, 205.5, 235.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image28:setImage( RegisterImage( @"hash_45E49A6A4F3F8223" ) ) --[[ @ 0]]
	self:addElement( Image28 ) --[[ @ 0]]
	self.Image28 = Image28 --[[ @ 0]]
	
	local Image29 = LUI.UIImage.new( 0.5, 0.5, 248.5, 278.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image29:setImage( RegisterImage( @"hash_11C22491FE84A86D" ) ) --[[ @ 0]]
	self:addElement( Image29 ) --[[ @ 0]]
	self.Image29 = Image29 --[[ @ 0]]
	
	local Image30 = LUI.UIImage.new( 0.5, 0.5, -43, -13, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image30:setImage( RegisterImage( @"hash_430999227A02F4E0" ) ) --[[ @ 0]]
	self:addElement( Image30 ) --[[ @ 0]]
	self.Image30 = Image30 --[[ @ 0]]
	
	local Image31 = LUI.UIImage.new( 0.5, 0.5, 296.5, 326.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image31:setImage( RegisterImage( @"hash_1D61F8B4F69737B8" ) ) --[[ @ 0]]
	self:addElement( Image31 ) --[[ @ 0]]
	self.Image31 = Image31 --[[ @ 0]]
	
	local Image32 = LUI.UIImage.new( 0.5, 0.5, 338.5, 368.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image32:setImage( RegisterImage( @"hash_3CD6F4F47F250135" ) ) --[[ @ 0]]
	self:addElement( Image32 ) --[[ @ 0]]
	self.Image32 = Image32 --[[ @ 0]]
	
	local Image33 = LUI.UIImage.new( 0.5, 0.5, 383.5, 413.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image33:setImage( RegisterImage( @"hash_715E6D5A56413D9A" ) ) --[[ @ 0]]
	self:addElement( Image33 ) --[[ @ 0]]
	self.Image33 = Image33 --[[ @ 0]]
	
	local Image34 = LUI.UIImage.new( 0.5, 0.5, -398.5, -368.5, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image34:setImage( RegisterImage( @"hash_48E48C5C9B335333" ) ) --[[ @ 0]]
	self:addElement( Image34 ) --[[ @ 0]]
	self.Image34 = Image34 --[[ @ 0]]
	
	local Image35 = LUI.UIImage.new( 0.5, 0.5, -353.5, -323.5, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image35:setImage( RegisterImage( @"hash_3FC7E24A95DA300D" ) ) --[[ @ 0]]
	self:addElement( Image35 ) --[[ @ 0]]
	self.Image35 = Image35 --[[ @ 0]]
	
	local Image36 = LUI.UIImage.new( 0.5, 0.5, -50.5, -20.5, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image36:setImage( RegisterImage( @"hash_21746039F43DB75C" ) ) --[[ @ 0]]
	self:addElement( Image36 ) --[[ @ 0]]
	self.Image36 = Image36 --[[ @ 0]]
	
	local Image37 = LUI.UIImage.new( 0.5, 0.5, -10.5, 19.5, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image37:setImage( RegisterImage( @"hash_3203B98C5FF05760" ) ) --[[ @ 0]]
	self:addElement( Image37 ) --[[ @ 0]]
	self.Image37 = Image37 --[[ @ 0]]
	
	local Image38 = LUI.UIImage.new( 0.5, 0.5, -98.5, -68.5, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image38:setImage( RegisterImage( @"hash_578FD2238CC0C5EE" ) ) --[[ @ 0]]
	self:addElement( Image38 ) --[[ @ 0]]
	self.Image38 = Image38 --[[ @ 0]]
	
	local Image39 = LUI.UIImage.new( 0.5, 0.5, -139.5, -109.5, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image39:setImage( RegisterImage( @"hash_8FA91637A4E25F4" ) ) --[[ @ 0]]
	self:addElement( Image39 ) --[[ @ 0]]
	self.Image39 = Image39 --[[ @ 0]]
	
	local Image60 = nil --[[ @ 0]]
	
	Image60 = LUI.UIImage.new( 0.5, 0.5, -277.5, -247.5, 0.5, 0.5, 42.5, 72.5 ) --[[ @ 0]]
	Image60:setImage( RegisterImage( @"hash_2868395925CB26A7" ) ) --[[ @ 0]]
	self:addElement( Image60 ) --[[ @ 0]]
	self.Image60 = Image60 --[[ @ 0]]
	
	local Image59 = nil --[[ @ 0]]
	
	Image59 = LUI.UIImage.new( 0.5, 0.5, -323.5, -293.5, 0.5, 0.5, 42.5, 72.5 ) --[[ @ 0]]
	Image59:setImage( RegisterImage( @"hash_1DCA9DCD4D6F634" ) ) --[[ @ 0]]
	self:addElement( Image59 ) --[[ @ 0]]
	self.Image59 = Image59 --[[ @ 0]]
	
	local Image40 = LUI.UIImage.new( 0.5, 0.5, -184.5, -154.5, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image40:setImage( RegisterImage( @"hash_64229B8898CA8E1C" ) ) --[[ @ 0]]
	self:addElement( Image40 ) --[[ @ 0]]
	self.Image40 = Image40 --[[ @ 0]]
	
	local Image57 = nil --[[ @ 0]]
	
	Image57 = LUI.UIImage.new( 0.5, 0.5, -407.5, -377.5, 0.5, 0.5, 42.5, 72.5 ) --[[ @ 0]]
	Image57:setImage( RegisterImage( @"hash_1E685DB08682E616" ) ) --[[ @ 0]]
	self:addElement( Image57 ) --[[ @ 0]]
	self.Image57 = Image57 --[[ @ 0]]
	
	local Image58 = nil --[[ @ 0]]
	
	Image58 = LUI.UIImage.new( 0.5, 0.5, -368.5, -338.5, 0.5, 0.5, 42.5, 72.5 ) --[[ @ 0]]
	Image58:setImage( RegisterImage( @"hash_703A71BD6F73F4AB" ) ) --[[ @ 0]]
	self:addElement( Image58 ) --[[ @ 0]]
	self.Image58 = Image58 --[[ @ 0]]
	
	local Image41 = LUI.UIImage.new( 0.5, 0.5, -232.5, -202.5, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image41:setImage( RegisterImage( @"hash_CD69BEABBCE5047" ) ) --[[ @ 0]]
	self:addElement( Image41 ) --[[ @ 0]]
	self.Image41 = Image41 --[[ @ 0]]
	
	local Image42 = LUI.UIImage.new( 0.5, 0.5, -277.5, -247.5, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image42:setImage( RegisterImage( @"hash_1D53E0099155FE86" ) ) --[[ @ 0]]
	self:addElement( Image42 ) --[[ @ 0]]
	self.Image42 = Image42 --[[ @ 0]]
	
	local Image43 = LUI.UIImage.new( 0.5, 0.5, -316.5, -286.5, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image43:setImage( RegisterImage( @"hash_30D24E1B46822A76" ) ) --[[ @ 0]]
	self:addElement( Image43 ) --[[ @ 0]]
	self.Image43 = Image43 --[[ @ 0]]
	
	local Image44 = LUI.UIImage.new( 0.5, 0.5, 31, 61, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image44:setImage( RegisterImage( @"hash_1EB22994B30A0082" ) ) --[[ @ 0]]
	self:addElement( Image44 ) --[[ @ 0]]
	self.Image44 = Image44 --[[ @ 0]]
	
	local Image45 = LUI.UIImage.new( 0.5, 0.5, 73, 103, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image45:setImage( RegisterImage( @"hash_5C9C0D644E269514" ) ) --[[ @ 0]]
	self:addElement( Image45 ) --[[ @ 0]]
	self.Image45 = Image45 --[[ @ 0]]
	
	local Image46 = LUI.UIImage.new( 0.5, 0.5, 106, 136, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image46:setImage( RegisterImage( @"theater_view" ) ) --[[ @ 0]]
	self:addElement( Image46 ) --[[ @ 0]]
	self.Image46 = Image46 --[[ @ 0]]
	
	local Image47 = LUI.UIImage.new( 0.5, 0.5, 143, 173, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image47:setImage( RegisterImage( @"theater_delete" ) ) --[[ @ 0]]
	self:addElement( Image47 ) --[[ @ 0]]
	self.Image47 = Image47 --[[ @ 0]]
	
	local Image48 = LUI.UIImage.new( 0.5, 0.5, 183, 213, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image48:setImage( RegisterImage( @"theater_rename" ) ) --[[ @ 0]]
	self:addElement( Image48 ) --[[ @ 0]]
	self.Image48 = Image48 --[[ @ 0]]
	
	local Image49 = LUI.UIImage.new( 0.5, 0.5, 226, 256, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image49:setImage( RegisterImage( @"theater_save" ) ) --[[ @ 0]]
	self:addElement( Image49 ) --[[ @ 0]]
	self.Image49 = Image49 --[[ @ 0]]
	
	local Image50 = LUI.UIImage.new( 0.5, 0.5, 261, 291, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image50:setImage( RegisterImage( @"theater_merge" ) ) --[[ @ 0]]
	self:addElement( Image50 ) --[[ @ 0]]
	self.Image50 = Image50 --[[ @ 0]]
	
	local Image51 = LUI.UIImage.new( 0.5, 0.5, 301, 331, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image51:setImage( RegisterImage( @"theater_delete_all" ) ) --[[ @ 0]]
	self:addElement( Image51 ) --[[ @ 0]]
	self.Image51 = Image51 --[[ @ 0]]
	
	local Image54 = LUI.UIImage.new( 0.5, 0.5, 338.5, 368.5, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image54:setImage( RegisterImage( @"hash_35B508D5EB68DD40" ) ) --[[ @ 0]]
	self:addElement( Image54 ) --[[ @ 0]]
	self.Image54 = Image54 --[[ @ 0]]
	
	local Image52 = LUI.UIImage.new( 0.5, 0.5, -232.5, -202.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image52:setImage( RegisterImage( @"theater_slow_1" ) ) --[[ @ 0]]
	self:addElement( Image52 ) --[[ @ 0]]
	self.Image52 = Image52 --[[ @ 0]]
	
	local Image53 = LUI.UIImage.new( 0.5, 0.5, -189.5, -159.5, 0.5, 0.5, -42.5, -12.5 ) --[[ @ 0]]
	Image53:setImage( RegisterImage( @"theater_slow_2" ) ) --[[ @ 0]]
	self:addElement( Image53 ) --[[ @ 0]]
	self.Image53 = Image53 --[[ @ 0]]
	
	local Image55 = LUI.UIImage.new( 0.5, 0.5, 408.5, 438.5, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image55:setImage( RegisterImage( @"hash_574DED9A7DC4BD1C" ) ) --[[ @ 0]]
	self:addElement( Image55 ) --[[ @ 0]]
	self.Image55 = Image55 --[[ @ 0]]
	
	local Image56 = LUI.UIImage.new( 0.5, 0.5, 371, 401, 0.5, 0.5, 0, 30 ) --[[ @ 0]]
	Image56:setImage( RegisterImage( @"hash_47828B8384381EB8" ) ) --[[ @ 0]]
	self:addElement( Image56 ) --[[ @ 0]]
	self.Image56 = Image56 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
