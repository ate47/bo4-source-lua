-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:46115f07e77033b8" ) --[[ @ 0]]
require( "x64:d3ed7e75d364b93" ) --[[ @ 0]]
require( "x64:2085184c89209a1b" ) --[[ @ 0]]

CoD.TabletIcePick_Category = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabletIcePick_Category.__defaultWidth = 300 --[[ @ 0]]
CoD.TabletIcePick_Category.__defaultHeight = 183 --[[ @ 0]]
CoD.TabletIcePick_Category.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabletIcePick_Category ) --[[ @ 0]]
	self.id = "TabletIcePick_Category" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local HackBg = LUI.UIImage.new( 0, 0, 0, 1224, 0, 0, 33, 177 ) --[[ @ 0]]
	HackBg:setAlpha( 0 ) --[[ @ 0]]
	HackBg:setImage( RegisterImage( @"hash_2816694178B99B8A" ) ) --[[ @ 0]]
	HackBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	HackBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	HackBg:setupNineSliceShader( 72, 72 ) --[[ @ 0]]
	self:addElement( HackBg ) --[[ @ 0]]
	self.HackBg = HackBg --[[ @ 0]]
	
	local Entries = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 36, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	Entries:setLeftRight( 0, 0, 0, 1044 ) --[[ @ 0]]
	Entries:setTopBottom( 0, 0, 33, 177 ) --[[ @ 0]]
	Entries:setWidgetType( CoD.TabletIcePickGadget_Item ) --[[ @ 0]]
	Entries:setHorizontalCount( 6 ) --[[ @ 0]]
	Entries:setSpacing( 36 ) --[[ @ 0]]
	Entries:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( Entries ) --[[ @ 0]]
	self.Entries = Entries --[[ @ 0]]
	
	local Category = LUI.UIText.new( 0, 0, 22, 362, 0, 0, 0, 30 ) --[[ @ 0]]
	Category:setRGB( 0.49, 0.85, 1 ) --[[ @ 0]]
	Category:setText( "" ) --[[ @ 0]]
	Category:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Category:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Category:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Category ) --[[ @ 0]]
	self.Category = Category --[[ @ 0]]
	
	local HackBotBar = LUI.UIImage.new( 0, 0, -1, 1227, 0, 0, 180, 196 ) --[[ @ 0]]
	HackBotBar:setAlpha( 0.4 ) --[[ @ 0]]
	HackBotBar:setImage( RegisterImage( @"hash_489157CA6DBDA2C5" ) ) --[[ @ 0]]
	HackBotBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( HackBotBar ) --[[ @ 0]]
	self.HackBotBar = HackBotBar --[[ @ 0]]
	
	local HackBotBarWipe = LUI.UIImage.new( 0, 0, -1, 1227, 0, 0, 180, 196 ) --[[ @ 0]]
	HackBotBarWipe:setAlpha( 0 ) --[[ @ 0]]
	HackBotBarWipe:setImage( RegisterImage( @"hash_489157CA6DBDA2C5" ) ) --[[ @ 0]]
	HackBotBarWipe:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	HackBotBarWipe:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	HackBotBarWipe:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	HackBotBarWipe:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	HackBotBarWipe:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	HackBotBarWipe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( HackBotBarWipe ) --[[ @ 0]]
	self.HackBotBarWipe = HackBotBarWipe --[[ @ 0]]
	
	local HackBotBarWipe2 = LUI.UIImage.new( 0, 0, -1, 1227, 0, 0, 180, 196 ) --[[ @ 0]]
	HackBotBarWipe2:setAlpha( 0 ) --[[ @ 0]]
	HackBotBarWipe2:setImage( RegisterImage( @"hash_489157CA6DBDA2C5" ) ) --[[ @ 0]]
	HackBotBarWipe2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	HackBotBarWipe2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	HackBotBarWipe2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	HackBotBarWipe2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	HackBotBarWipe2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	HackBotBarWipe2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( HackBotBarWipe2 ) --[[ @ 0]]
	self.HackBotBarWipe2 = HackBotBarWipe2 --[[ @ 0]]
	
	local GraphFrame01 = CoD.TabletIcePickGadget_BgElementGraph.new( f1_arg0, f1_arg1, 0, 0, 1003, 1227, 0, 0, 188, 228 ) --[[ @ 0]]
	self:addElement( GraphFrame01 ) --[[ @ 0]]
	self.GraphFrame01 = GraphFrame01 --[[ @ 0]]
	
	local ProgressBg = LUI.UIImage.new( 0, 0, -4, 20, 0, 0, 2, 26 ) --[[ @ 0]]
	ProgressBg:setAlpha( 0 ) --[[ @ 0]]
	ProgressBg:setImage( RegisterImage( @"hash_53B6AB72F71A2482" ) ) --[[ @ 0]]
	ProgressBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ProgressBg ) --[[ @ 0]]
	self.ProgressBg = ProgressBg --[[ @ 0]]
	
	local Progress = CoD.TabletIcePick_CategoryProg.new( f1_arg0, f1_arg1, 0, 0, -6, 22, 0, 0, -4, 32 ) --[[ @ 0]]
	self:addElement( Progress ) --[[ @ 0]]
	self.Progress = Progress --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "FullyHacked",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	Entries.id = "Entries" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.TabletIcePick_Category.__resetProperties = function ( f3_arg0 )
	f3_arg0.Category:completeAnimation() --[[ @ 0]]
	f3_arg0.HackBotBar:completeAnimation() --[[ @ 0]]
	f3_arg0.GraphFrame01:completeAnimation() --[[ @ 0]]
	f3_arg0.HackBotBarWipe:completeAnimation() --[[ @ 0]]
	f3_arg0.Progress:completeAnimation() --[[ @ 0]]
	f3_arg0.Entries:completeAnimation() --[[ @ 0]]
	f3_arg0.ProgressBg:completeAnimation() --[[ @ 0]]
	f3_arg0.HackBotBarWipe2:completeAnimation() --[[ @ 0]]
	f3_arg0.HackBg:completeAnimation() --[[ @ 0]]
	f3_arg0.Category:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.HackBotBar:setAlpha( 0.4 ) --[[ @ 0]]
	f3_arg0.GraphFrame01:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.HackBotBarWipe:setAlpha( 0 ) --[[ @ 0]]
	f3_arg0.HackBotBarWipe:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f3_arg0.HackBotBarWipe:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f3_arg0.HackBotBarWipe:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f3_arg0.HackBotBarWipe:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f3_arg0.HackBotBarWipe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f3_arg0.Progress:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.Entries:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f3_arg0.Entries:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.ProgressBg:setAlpha( 0 ) --[[ @ 0]]
	f3_arg0.HackBotBarWipe2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f3_arg0.HackBotBarWipe2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f3_arg0.HackBotBarWipe2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f3_arg0.HackBotBarWipe2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f3_arg0.HackBotBarWipe2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f3_arg0.HackBg:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabletIcePick_Category.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					local f6_local0 = function ( f7_arg0 )
						local f7_local0 = function ( f8_arg0 )
							local f8_local0 = function ( f9_arg0 )
								local f9_local0 = function ( f10_arg0 )
									local f10_local0 = function ( f11_arg0 )
										local f11_local0 = function ( f12_arg0 )
											local f12_local0 = function ( f13_arg0 )
												local f13_local0 = function ( f14_arg0 )
													f14_arg0:beginAnimation( 60 ) --[[ @ 0]]
													f14_arg0:setAlpha( 1 ) --[[ @ 0]]
													f14_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f13_arg0:beginAnimation( 19 ) --[[ @ 0]]
												f13_arg0:setAlpha( 0 ) --[[ @ 0]]
												f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f12_arg0:beginAnimation( 20 ) --[[ @ 0]]
											f12_arg0:setAlpha( 1 ) --[[ @ 0]]
											f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f11_arg0:beginAnimation( 19 ) --[[ @ 0]]
										f11_arg0:setAlpha( 0 ) --[[ @ 0]]
										f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f10_arg0:beginAnimation( 19 ) --[[ @ 0]]
									f10_arg0:setAlpha( 0.8 ) --[[ @ 0]]
									f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f9_arg0:beginAnimation( 20 ) --[[ @ 0]]
								f9_arg0:setAlpha( 0 ) --[[ @ 0]]
								f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f8_arg0:beginAnimation( 19 ) --[[ @ 0]]
							f8_arg0:setAlpha( 1 ) --[[ @ 0]]
							f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f7_arg0:beginAnimation( 19 ) --[[ @ 0]]
						f7_arg0:setAlpha( 0 ) --[[ @ 0]]
						f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f6_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f6_arg0:setAlpha( 0.9 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.Category:beginAnimation( 500 ) --[[ @ 0]]
				f4_arg0.Category:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.Category:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.Category:completeAnimation() --[[ @ 0]]
			f4_arg0.Category:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.Category ) --[[ @ 0]]
			local f4_local1 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					local f16_local0 = function ( f17_arg0 )
						local f17_local0 = function ( f18_arg0 )
							local f18_local0 = function ( f19_arg0 )
								local f19_local0 = function ( f20_arg0 )
									local f20_local0 = function ( f21_arg0 )
										local f21_local0 = function ( f22_arg0 )
											local f22_local0 = function ( f23_arg0 )
												local f23_local0 = function ( f24_arg0 )
													f24_arg0:beginAnimation( 60 ) --[[ @ 0]]
													f24_arg0:setAlpha( 0.5 ) --[[ @ 0]]
													f24_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f23_arg0:beginAnimation( 19 ) --[[ @ 0]]
												f23_arg0:setAlpha( 0 ) --[[ @ 0]]
												f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f22_arg0:beginAnimation( 20 ) --[[ @ 0]]
											f22_arg0:setAlpha( 0.4 ) --[[ @ 0]]
											f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f21_arg0:beginAnimation( 19 ) --[[ @ 0]]
										f21_arg0:setAlpha( 0 ) --[[ @ 0]]
										f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f20_arg0:beginAnimation( 19 ) --[[ @ 0]]
									f20_arg0:setAlpha( 0.4 ) --[[ @ 0]]
									f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f19_arg0:beginAnimation( 20 ) --[[ @ 0]]
								f19_arg0:setAlpha( 0 ) --[[ @ 0]]
								f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f18_arg0:beginAnimation( 19 ) --[[ @ 0]]
							f18_arg0:setAlpha( 0.5 ) --[[ @ 0]]
							f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f17_arg0:beginAnimation( 19 ) --[[ @ 0]]
						f17_arg0:setAlpha( 0 ) --[[ @ 0]]
						f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f16_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f16_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.HackBotBar:beginAnimation( 500 ) --[[ @ 0]]
				f4_arg0.HackBotBar:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.HackBotBar:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.HackBotBar:completeAnimation() --[[ @ 0]]
			f4_arg0.HackBotBar:setAlpha( 0 ) --[[ @ 0]]
			f4_local1( f4_arg0.HackBotBar ) --[[ @ 0]]
			local f4_local2 = function ( f25_arg0 )
				local f25_local0 = function ( f26_arg0 )
					local f26_local0 = function ( f27_arg0 )
						f27_arg0:beginAnimation( 149 ) --[[ @ 0]]
						f27_arg0:setAlpha( 0 ) --[[ @ 0]]
						f27_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f26_arg0:beginAnimation( 159, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f26_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.HackBotBarWipe:beginAnimation( 740 ) --[[ @ 0]]
				f4_arg0.HackBotBarWipe:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.HackBotBarWipe:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.HackBotBarWipe:completeAnimation() --[[ @ 0]]
			f4_arg0.HackBotBarWipe:setAlpha( 0 ) --[[ @ 0]]
			f4_local2( f4_arg0.HackBotBarWipe ) --[[ @ 0]]
			local f4_local3 = function ( f28_arg0 )
				local f28_local0 = function ( f29_arg0 )
					f29_arg0:beginAnimation( 159, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f29_arg0:setAlpha( 1 ) --[[ @ 0]]
					f29_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.GraphFrame01:beginAnimation( 740 ) --[[ @ 0]]
				f4_arg0.GraphFrame01:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.GraphFrame01:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.GraphFrame01:completeAnimation() --[[ @ 0]]
			f4_arg0.GraphFrame01:setAlpha( 0 ) --[[ @ 0]]
			f4_local3( f4_arg0.GraphFrame01 ) --[[ @ 0]]
			local f4_local4 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					local f31_local0 = function ( f32_arg0 )
						local f32_local0 = function ( f33_arg0 )
							local f33_local0 = function ( f34_arg0 )
								local f34_local0 = function ( f35_arg0 )
									local f35_local0 = function ( f36_arg0 )
										local f36_local0 = function ( f37_arg0 )
											local f37_local0 = function ( f38_arg0 )
												local f38_local0 = function ( f39_arg0 )
													f39_arg0:beginAnimation( 60 ) --[[ @ 0]]
													f39_arg0:setAlpha( 1 ) --[[ @ 0]]
													f39_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f38_arg0:beginAnimation( 19 ) --[[ @ 0]]
												f38_arg0:setAlpha( 0.2 ) --[[ @ 0]]
												f38_arg0:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f37_arg0:beginAnimation( 20 ) --[[ @ 0]]
											f37_arg0:setAlpha( 1 ) --[[ @ 0]]
											f37_arg0:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f36_arg0:beginAnimation( 19 ) --[[ @ 0]]
										f36_arg0:setAlpha( 0.2 ) --[[ @ 0]]
										f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f35_arg0:beginAnimation( 19 ) --[[ @ 0]]
									f35_arg0:setAlpha( 1 ) --[[ @ 0]]
									f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f34_arg0:beginAnimation( 20 ) --[[ @ 0]]
								f34_arg0:setAlpha( 0.2 ) --[[ @ 0]]
								f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f33_arg0:beginAnimation( 19 ) --[[ @ 0]]
							f33_arg0:setAlpha( 1 ) --[[ @ 0]]
							f33_arg0:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f32_arg0:beginAnimation( 19 ) --[[ @ 0]]
						f32_arg0:setAlpha( 0.2 ) --[[ @ 0]]
						f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f31_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f31_arg0:setAlpha( 1 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.Progress:beginAnimation( 500 ) --[[ @ 0]]
				f4_arg0.Progress:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.Progress:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.Progress:completeAnimation() --[[ @ 0]]
			f4_arg0.Progress:setAlpha( 0 ) --[[ @ 0]]
			f4_local4( f4_arg0.Progress ) --[[ @ 0]]
		end
	},
	FullyHacked = {
		DefaultClip = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			local f40_local0 = function ( f41_arg0 )
				local f41_local0 = function ( f42_arg0 )
					f42_arg0:beginAnimation( 350 ) --[[ @ 0]]
					f42_arg0:setAlpha( 0 ) --[[ @ 0]]
					f42_arg0:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f40_arg0.HackBg:beginAnimation( 150 ) --[[ @ 0]]
				f40_arg0.HackBg:setAlpha( 0.15 ) --[[ @ 0]]
				f40_arg0.HackBg:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.HackBg:registerEventHandler( "transition_complete_keyframe", f41_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.HackBg:completeAnimation() --[[ @ 0]]
			f40_arg0.HackBg:setAlpha( 0 ) --[[ @ 0]]
			f40_local0( f40_arg0.HackBg ) --[[ @ 0]]
			local f40_local1 = function ( f43_arg0 )
				local f43_local0 = function ( f44_arg0 )
					f44_arg0:beginAnimation( 350, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f44_arg0:setRGB( 0.71, 0.71, 0.71 ) --[[ @ 0]]
					f44_arg0:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f40_arg0.Entries:beginAnimation( 150 ) --[[ @ 0]]
				f40_arg0.Entries:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.Entries:registerEventHandler( "transition_complete_keyframe", f43_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.Entries:completeAnimation() --[[ @ 0]]
			f40_arg0.Entries:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f40_arg0.Entries:setAlpha( 0.5 ) --[[ @ 0]]
			f40_local1( f40_arg0.Entries ) --[[ @ 0]]
			local f40_local2 = function ( f45_arg0 )
				local f45_local0 = function ( f46_arg0 )
					local f46_local0 = function ( f47_arg0 )
						f47_arg0:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
						f47_arg0:setAlpha( 0.25 ) --[[ @ 0]]
						f47_arg0:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f46_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f46_arg0:registerEventHandler( "transition_complete_keyframe", f46_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f40_arg0.Category:beginAnimation( 150 ) --[[ @ 0]]
				f40_arg0.Category:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.Category:registerEventHandler( "transition_complete_keyframe", f45_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.Category:completeAnimation() --[[ @ 0]]
			f40_arg0.Category:setAlpha( 1 ) --[[ @ 0]]
			f40_local2( f40_arg0.Category ) --[[ @ 0]]
			local f40_local3 = function ( f48_arg0 )
				local f48_local0 = function ( f49_arg0 )
					local f49_local0 = function ( f50_arg0 )
						local f50_local0 = function ( f51_arg0 )
							local f51_local0 = function ( f52_arg0 )
								local f52_local0 = function ( f53_arg0 )
									local f53_local0 = function ( f54_arg0 )
										local f54_local0 = function ( f55_arg0 )
											f55_arg0:beginAnimation( 150 ) --[[ @ 0]]
											f55_arg0:setAlpha( 0.2 ) --[[ @ 0]]
											f55_arg0:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f54_arg0:beginAnimation( 19 ) --[[ @ 0]]
										f54_arg0:setAlpha( 0.9 ) --[[ @ 0]]
										f54_arg0:registerEventHandler( "transition_complete_keyframe", f54_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f53_arg0:beginAnimation( 19 ) --[[ @ 0]]
									f53_arg0:setAlpha( 0.05 ) --[[ @ 0]]
									f53_arg0:registerEventHandler( "transition_complete_keyframe", f53_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f52_arg0:beginAnimation( 20 ) --[[ @ 0]]
								f52_arg0:setAlpha( 0.8 ) --[[ @ 0]]
								f52_arg0:registerEventHandler( "transition_complete_keyframe", f52_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f51_arg0:beginAnimation( 19 ) --[[ @ 0]]
							f51_arg0:setAlpha( 0.05 ) --[[ @ 0]]
							f51_arg0:registerEventHandler( "transition_complete_keyframe", f51_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f50_arg0:beginAnimation( 19 ) --[[ @ 0]]
						f50_arg0:setAlpha( 0.8 ) --[[ @ 0]]
						f50_arg0:registerEventHandler( "transition_complete_keyframe", f50_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f49_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f49_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f49_arg0:registerEventHandler( "transition_complete_keyframe", f49_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f40_arg0.HackBotBar:beginAnimation( 500 ) --[[ @ 0]]
				f40_arg0.HackBotBar:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.HackBotBar:registerEventHandler( "transition_complete_keyframe", f48_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.HackBotBar:completeAnimation() --[[ @ 0]]
			f40_arg0.HackBotBar:setAlpha( 0.5 ) --[[ @ 0]]
			f40_local3( f40_arg0.HackBotBar ) --[[ @ 0]]
			local f40_local4 = function ( f56_arg0 )
				local f56_local0 = function ( f57_arg0 )
					local f57_local0 = function ( f58_arg0 )
						local f58_local0 = function ( f59_arg0 )
							f59_arg0:beginAnimation( 199 ) --[[ @ 0]]
							f59_arg0:setAlpha( 0 ) --[[ @ 0]]
							f59_arg0:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
							f59_arg0:setShaderVector( 1, 0.07, 0, 0, 0 ) --[[ @ 0]]
							f59_arg0:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f58_arg0:beginAnimation( 50 ) --[[ @ 0]]
						f58_arg0:setShaderVector( 0, 0.2, 1, 0, 0 ) --[[ @ 0]]
						f58_arg0:setShaderVector( 1, 0.01, 0, 0, 0 ) --[[ @ 0]]
						f58_arg0:registerEventHandler( "transition_complete_keyframe", f58_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f57_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f57_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
					f57_arg0:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
					f57_arg0:registerEventHandler( "transition_complete_keyframe", f57_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f40_arg0.HackBotBarWipe:beginAnimation( 200 ) --[[ @ 0]]
				f40_arg0.HackBotBarWipe:setShaderVector( 0, 0, 0.8, 0, 0 ) --[[ @ 0]]
				f40_arg0.HackBotBarWipe:setShaderVector( 1, 0.01, 0.01, 0, 0 ) --[[ @ 0]]
				f40_arg0.HackBotBarWipe:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.HackBotBarWipe:registerEventHandler( "transition_complete_keyframe", f56_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.HackBotBarWipe:completeAnimation() --[[ @ 0]]
			f40_arg0.HackBotBarWipe:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.HackBotBarWipe:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f40_arg0.HackBotBarWipe:setShaderVector( 1, 0.07, 0.07, 0, 0 ) --[[ @ 0]]
			f40_arg0.HackBotBarWipe:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f40_arg0.HackBotBarWipe:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f40_arg0.HackBotBarWipe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f40_local4( f40_arg0.HackBotBarWipe ) --[[ @ 0]]
			local f40_local5 = function ( f60_arg0 )
				local f60_local0 = function ( f61_arg0 )
					local f61_local0 = function ( f62_arg0 )
						local f62_local0 = function ( f63_arg0 )
							f63_arg0:beginAnimation( 199 ) --[[ @ 0]]
							f63_arg0:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
							f63_arg0:setShaderVector( 1, 0.01, 0, 0, 0 ) --[[ @ 0]]
							f63_arg0:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f62_arg0:beginAnimation( 50 ) --[[ @ 0]]
						f62_arg0:setShaderVector( 0, 0.2, 1, 0, 0 ) --[[ @ 0]]
						f62_arg0:setShaderVector( 1, 0.01, 0, 0, 0 ) --[[ @ 0]]
						f62_arg0:registerEventHandler( "transition_complete_keyframe", f62_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f61_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f61_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
					f61_arg0:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
					f61_arg0:registerEventHandler( "transition_complete_keyframe", f61_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f40_arg0.HackBotBarWipe2:beginAnimation( 200 ) --[[ @ 0]]
				f40_arg0.HackBotBarWipe2:setShaderVector( 0, 0, 0.8, 0, 0 ) --[[ @ 0]]
				f40_arg0.HackBotBarWipe2:setShaderVector( 1, 0.01, 0.01, 0, 0 ) --[[ @ 0]]
				f40_arg0.HackBotBarWipe2:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.HackBotBarWipe2:registerEventHandler( "transition_complete_keyframe", f60_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.HackBotBarWipe2:completeAnimation() --[[ @ 0]]
			f40_arg0.HackBotBarWipe2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f40_arg0.HackBotBarWipe2:setShaderVector( 1, 0, 0.7, 0, 0 ) --[[ @ 0]]
			f40_arg0.HackBotBarWipe2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f40_arg0.HackBotBarWipe2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f40_arg0.HackBotBarWipe2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f40_local5( f40_arg0.HackBotBarWipe2 ) --[[ @ 0]]
			local f40_local6 = function ( f64_arg0 )
				local f64_local0 = function ( f65_arg0 )
					local f65_local0 = function ( f66_arg0 )
						local f66_local0 = function ( f67_arg0 )
							local f67_local0 = function ( f68_arg0 )
								local f68_local0 = function ( f69_arg0 )
									local f69_local0 = function ( f70_arg0 )
										local f70_local0 = function ( f71_arg0 )
											f71_arg0:beginAnimation( 150 ) --[[ @ 0]]
											f71_arg0:setAlpha( 0 ) --[[ @ 0]]
											f71_arg0:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f70_arg0:beginAnimation( 19 ) --[[ @ 0]]
										f70_arg0:setAlpha( 0.7 ) --[[ @ 0]]
										f70_arg0:registerEventHandler( "transition_complete_keyframe", f70_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f69_arg0:beginAnimation( 19 ) --[[ @ 0]]
									f69_arg0:setAlpha( 0.06 ) --[[ @ 0]]
									f69_arg0:registerEventHandler( "transition_complete_keyframe", f69_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f68_arg0:beginAnimation( 20 ) --[[ @ 0]]
								f68_arg0:setAlpha( 0.8 ) --[[ @ 0]]
								f68_arg0:registerEventHandler( "transition_complete_keyframe", f68_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f67_arg0:beginAnimation( 19 ) --[[ @ 0]]
							f67_arg0:setAlpha( 0.05 ) --[[ @ 0]]
							f67_arg0:registerEventHandler( "transition_complete_keyframe", f67_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f66_arg0:beginAnimation( 19 ) --[[ @ 0]]
						f66_arg0:setAlpha( 0.9 ) --[[ @ 0]]
						f66_arg0:registerEventHandler( "transition_complete_keyframe", f66_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f65_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f65_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f65_arg0:registerEventHandler( "transition_complete_keyframe", f65_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f40_arg0.GraphFrame01:beginAnimation( 500 ) --[[ @ 0]]
				f40_arg0.GraphFrame01:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.GraphFrame01:registerEventHandler( "transition_complete_keyframe", f64_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.GraphFrame01:completeAnimation() --[[ @ 0]]
			f40_arg0.GraphFrame01:setAlpha( 1 ) --[[ @ 0]]
			f40_local6( f40_arg0.GraphFrame01 ) --[[ @ 0]]
			local f40_local7 = function ( f72_arg0 )
				local f72_local0 = function ( f73_arg0 )
					local f73_local0 = function ( f74_arg0 )
						f74_arg0:beginAnimation( 150 ) --[[ @ 0]]
						f74_arg0:setAlpha( 0.5 ) --[[ @ 0]]
						f74_arg0:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f73_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f73_arg0:registerEventHandler( "transition_complete_keyframe", f73_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f40_arg0.ProgressBg:beginAnimation( 150 ) --[[ @ 0]]
				f40_arg0.ProgressBg:setAlpha( 0.8 ) --[[ @ 0]]
				f40_arg0.ProgressBg:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.ProgressBg:registerEventHandler( "transition_complete_keyframe", f72_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.ProgressBg:completeAnimation() --[[ @ 0]]
			f40_arg0.ProgressBg:setAlpha( 0 ) --[[ @ 0]]
			f40_local7( f40_arg0.ProgressBg ) --[[ @ 0]]
			local f40_local8 = function ( f75_arg0 )
				local f75_local0 = function ( f76_arg0 )
					local f76_local0 = function ( f77_arg0 )
						f77_arg0:beginAnimation( 150 ) --[[ @ 0]]
						f77_arg0:setAlpha( 0 ) --[[ @ 0]]
						f77_arg0:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f76_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f76_arg0:registerEventHandler( "transition_complete_keyframe", f76_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f40_arg0.Progress:beginAnimation( 150, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f40_arg0.Progress:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.Progress:registerEventHandler( "transition_complete_keyframe", f75_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.Progress:completeAnimation() --[[ @ 0]]
			f40_arg0.Progress:setAlpha( 1 ) --[[ @ 0]]
			f40_local8( f40_arg0.Progress ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.TabletIcePick_Category.__onClose = function ( f78_arg0 )
	f78_arg0.Entries:close() --[[ @ 0]]
	f78_arg0.GraphFrame01:close() --[[ @ 0]]
	f78_arg0.Progress:close() --[[ @ 0]]
end
 --[[ @ 0]]
