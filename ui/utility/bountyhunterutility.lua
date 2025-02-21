-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.BountyHunterUtility = {} --[[ @ 0]]
CoD.BountyHunterUtility.PackageTableName = @"bounty_hunter_package_list" --[[ @ 0]]
CoD.BountyHunterUtility.PurchaseCostDefaultMultiplier = 1 --[[ @ 0]]
CoD.BountyHunterUtility.RefillCostDefaultMultiplier = 1 --[[ @ 0]]
DataSources.BountyHunterWeaponGroups = ListHelper_SetupDataSource( "BountyHunterWeaponGroups", function ( f1_arg0, f1_arg1 )
	local f1_local0 = {} --[[ @ 0]]
	local f1_local1 = f1_arg1.menu._packageType --[[ @ 0]]
	if f1_local1 then
		local f1_local2 = f1_arg1.menu._model --[[ @ 0]]
		local f1_local3 = Engine[@"currentsessionmode"]() --[[ @ 0]]
		local f1_local4 = nil --[[ @ 0]]
		if f1_local2[f1_local1] and f1_local2[f1_local1]:get() and f1_local2[f1_local1]:get() > 0 then
			local f1_local5 = CoD.BountyHunterUtility.GetGetPackageByID( f1_local2[f1_local1]:get() ) --[[ @ 0]]
			f1_local4 = f1_local5.itemGroup --[[ @ 0]]
		end
		local f1_local5 = function ( f2_arg0, f2_arg1 )
			for f2_local3, f2_local4 in ipairs( f2_arg0 ) --[[ @ 0]] do
				if f2_local4.itemGroup ~= Enum[@"itemgroup_t"][@"itemgroup_special"] then
					table.insert( f1_local0, {
						models = {
							name = f2_local4.name,
							available = true
						},
						properties = {
							loadoutType = f2_arg1,
							category = f2_local4.weapon_category,
							itemGroup = f2_local4.itemGroup
						}
					} ) --[[ @ 0]]
				end
			end
		end
		 --[[ @ 0]]
		f1_local5( CoD.CACUtility.GetWeaponGroupsNames( f1_local1 ), f1_local1 ) --[[ @ 0]]
	end
	return f1_local0
end, true ) --[[ @ 0]]
DataSources.BountyHunterPackages = ListHelper_SetupDataSource( "BountyHunterPackages", function ( f3_arg0, f3_arg1 )
	local f3_local0 = {} --[[ @ 0]]
	local f3_local1 = nil --[[ @ 0]]
	if f3_arg1.menu._packageType then
		f3_local1 = CoD.BountyHunterUtility.GetPackagesOfTypeAndGroup( f3_arg1.menu._packageType, f3_arg1.menu._itemGroup ) --[[ @ 0]]
	else
		f3_local1 = CoD.BountyHunterUtility.GetBountyHunterPackageTable() --[[ @ 0]]
	end
	for f3_local11, f3_local12 in ipairs( f3_local1 ) --[[ @ 0]] do
		local f3_local13 = {} --[[ @ 0]]
		for f3_local6, f3_local7 in ipairs( f3_local12.items ) --[[ @ 0]] do
			local f3_local9 = CoD.BountyHunterUtility.BuildWeaponPackageModelsList( f3_arg0, f3_local7 ) --[[ @ 0]]
			if f3_local12.packageType == "mobility" or f3_local12.packageType == "assault" or f3_local12.packageType == "recon" or f3_local12.packageType == "support" then
				local f3_local5 = f3_arg1.menu:getModel() --[[ @ 0]]
				f3_local9.trackModel = f3_local5[f3_local12.packageType .. "Track"] --[[ @ 0]]
				f3_local9.trackTier = f3_local12.trackTier --[[ @ 0]]
			end
			f3_local13["item" .. f3_local6] = f3_local9 --[[ @ 0]]
		end
		f3_local13.packageType = f3_local12.packageType --[[ @ 0]]
		f3_local13.buyCost = f3_local12.purchaseCost --[[ @ 0]]
		f3_local13.packageID = f3_local12.packageID --[[ @ 0]]
		f3_local10 = f3_arg1.menu:getModel() --[[ @ 0]]
		f3_local13.trackModel = f3_local10[f3_local12.packageType .. "Track"] --[[ @ 0]]
		f3_local13.trackTier = f3_local12.trackTier --[[ @ 0]]
		table.insert( f3_local0, {
			models = f3_local13
		} ) --[[ @ 0]]
	end
	return f3_local0
end ) --[[ @ 0]]
DataSources.BountyHunterPrimaryAttachments = ListHelper_SetupDataSource( "BountyHunterPrimaryAttachments", function ( f4_arg0, f4_arg1 )
	return CoD.BountyHunterUtility.SetupAttachmentDataSource( f4_arg0, f4_arg1, "primary" )
end ) --[[ @ 0]]
DataSources.BountyHunterSecondaryAttachments = ListHelper_SetupDataSource( "BountyHunterSecondaryAttachments", function ( f5_arg0, f5_arg1 )
	return CoD.BountyHunterUtility.SetupAttachmentDataSource( f5_arg0, f5_arg1, "secondary" )
end ) --[[ @ 0]]
CoD.BountyHunterUtility.SetupAttachmentDataSource = function ( f6_arg0, f6_arg1, f6_arg2 )
	if not f6_arg1._setupSubscriptions then
		f6_arg1._setupSubscriptions = true --[[ @ 0]]
		f6_arg1:linkToElementModel( f6_arg1.menu, f6_arg2, true, function ( model )
			if model:get() ~= 0 then
				f6_arg1:updateDataSource() --[[ @ 0]]
			end
		end, true ) --[[ @ 0]]
	end
	local f6_local0 = {} --[[ @ 0]]
	local f6_local1 = f6_arg1.menu:getModel() --[[ @ 0]]
	f6_local1 = f6_local1[f6_arg2]:get() --[[ @ 0]]
	local f6_local2 = Engine[@"getgametypesetting"]( @"hash_1B34B26470F4368" ) --[[ @ 0]]
	if not f6_local2 then
		f6_local2 = CoD.BountyHunterUtility.PurchaseCostDefaultMultiplier --[[ @ 0]]
	end
	if f6_local1 > 0 then
		local f6_local3 = CoD.BountyHunterUtility.GetGetPackageByID( f6_local1 ) --[[ @ 0]]
		local f6_local4 = f6_local3.items[1].itemIndex --[[ @ 0]]
		if f6_local3.attachmentUpgrades then
			for f6_local16, f6_local17 in ipairs( f6_local3.attachmentUpgrades ) --[[ @ 0]] do
				local f6_local18 = {} --[[ @ 0]]
				local f6_local19 = f6_local17[@"attachmentlist"] --[[ @ 0]]
				local f6_local13 = 1 --[[ @ 0]]
				for f6_local8, f6_local9 in ipairs( LUI.splitString( f6_local19, "+" ) ) --[[ @ 0]] do
					local f6_local11 = CoD.BountyHunterUtility.BuildAttachmentItemModelsList( f6_arg0, f6_local9, f6_local4 ) --[[ @ 0]]
					local f6_local12 = f6_arg1.menu:getModel() --[[ @ 0]]
					f6_local11.trackModel = f6_local12[f6_local3.packageType .. "AttachmentTrack"] --[[ @ 0]]
					f6_local11.trackTier = f6_local16 --[[ @ 0]]
					f6_local18["item" .. f6_local13] = f6_local11 --[[ @ 0]]
					f6_local13 = f6_local13 + 1 --[[ @ 0]]
				end
				for f6_local14 = f6_local13 --[[ @ 0]], 3, 1 do
					f6_local18["item" .. f6_local14] = {
						trackTier = -1
					} --[[ @ 0]]
				end
				f6_local18.trackTier = f6_local16 --[[ @ 0]]
				f6_local18.packageType = f6_local3.packageType .. "_attachment_" .. f6_local18.trackTier --[[ @ 0]]
				f6_local18.buyCost = f6_local17[@"purchasecost"] * f6_local2 --[[ @ 0]]
				f6_local18.packageID = f6_local3.packageID --[[ @ 0]]
				f6_local14 = f6_arg1.menu:getModel() --[[ @ 0]]
				f6_local18.trackModel = f6_local14[f6_local3.packageType .. "AttachmentTrack"] --[[ @ 0]]
				table.insert( f6_local0, {
					models = f6_local18
				} ) --[[ @ 0]]
			end
		end
	end
	return f6_local0
end
 --[[ @ 0]]
DataSources.BountyHunterLoadout = {
	getModel = function ( f8_arg0 )
		local f8_local0 = Engine[@"getglobalmodel"]() --[[ @ 0]]
		return f8_local0:create( "BountyHunterLoadout" )
	end
} --[[ @ 0]]
CoD.BountyHunterUtility.UsePurchaseCostMultiplier = function ( f9_arg0 )
	return f9_arg0 ~= "killstreak"
end
 --[[ @ 0]]
CoD.BountyHunterUtility.GetBountyHunterPackageTable = function ()
	if not CoD.BountyHunterUtility.BountyHunterPackages then
		local f10_local0 = Engine[@"hash_7A7E3CD65E63086F"]( CoD.BountyHunterUtility.PackageTableName ) --[[ @ 0]]
		local f10_local1 = Engine[@"currentsessionmode"]() --[[ @ 0]]
		local f10_local2 = {} --[[ @ 0]]
		local f10_local3 = Engine[@"getgametypesetting"]( @"hash_1B34B26470F4368" ) --[[ @ 0]]
		if not f10_local3 then
			f10_local3 = CoD.BountyHunterUtility.PurchaseCostDefaultMultiplier --[[ @ 0]]
		end
		local f10_local4 = Engine[@"getgametypesetting"]( @"hash_71B2B43696E16252" ) --[[ @ 0]]
		if not f10_local4 then
			f10_local4 = CoD.BountyHunterUtility.RefillCostDefaultMultiplier --[[ @ 0]]
		end
		for f10_local16, f10_local17 in ipairs( f10_local0 ) --[[ @ 0]] do
			if f10_local17.packageitems then
				local f10_local8 = nil --[[ @ 0]]
				local f10_local9 = {} --[[ @ 0]]
				for f10_local13, f10_local14 in pairs( f10_local17.packageitems ) --[[ @ 0]] do
					local f10_local15 = CoD.CACUtility.GetUnlockableItemInfoByAssetHash( f10_local14[@"item"], f10_local1 ) --[[ @ 0]]
					if f10_local15 then
						if not f10_local8 then
							f10_local8 = f10_local15.itemGroup --[[ @ 0]]
						end
						table.insert( f10_local9, f10_local15 ) --[[ @ 0]]
					end
					if LUI.DEV then
						Engine[@"printerror"]( Enum[@"consolelabel_e"][@"con_label_lui"], "LUI Error: Bounty Hunter Package contains a bad unlockable item: " .. tostring( f10_local14[@"item"] ) .. " (check to make sure its included in this mode.\n" ) --[[ @ 0]]
					end
				end
				if #f10_local9 > 0 then
					f10_local10 = table.insert --[[ @ 0]]
					f10_local11 = f10_local2 --[[ @ 0]]
					f10_local12 = {} --[[ @ 0]]
					if not CoD.BountyHunterUtility.UsePurchaseCostMultiplier( f10_local8 ) then
						f10_local13 = f10_local17[@"purchasecost"] --[[ @ 0]]
						if not f10_local13 then
						
						else
							f10_local12.purchaseCost = f10_local13 --[[ @ 0]]
							f10_local12.packageType = f10_local17[@"packagetype"] --[[ @ 0]]
							f10_local12.itemGroup = f10_local8 --[[ @ 0]]
							f10_local12.items = f10_local9 --[[ @ 0]]
							f10_local12.packageID = f10_local16 --[[ @ 0]]
							f10_local12.refillCost = f10_local17[@"refillcost"] * f10_local4 --[[ @ 0]]
							f10_local12.refillAmmo = f10_local17[@"refillammo"] --[[ @ 0]]
							f10_local12.trackTier = f10_local17[@"tracktier"] --[[ @ 0]]
							f10_local12.attachmentUpgrades = f10_local17.attachmentupgrades --[[ @ 0]]
							f10_local10( f10_local11, f10_local12 ) --[[ @ 0]]
						end
					end
					f10_local13 = f10_local17[@"purchasecost"] * f10_local3 --[[ @ 0]]
				end
			end
		end
		table.sort( f10_local2, function ( f11_arg0, f11_arg1 )
			if f11_arg0.trackTier == f11_arg1.trackTier then
				if f11_arg0.purchaseCost == f11_arg1.purchaseCost then
					return f11_arg0.packageID < f11_arg1.packageID
				else
					return f11_arg0.purchaseCost < f11_arg1.purchaseCost
				end
			else
				return f11_arg0.trackTier < f11_arg1.trackTier
			end
		end ) --[[ @ 0]]
		CoD.BountyHunterUtility.BountyHunterPackages = f10_local2 --[[ @ 0]]
	end
	return CoD.BountyHunterUtility.BountyHunterPackages
end
 --[[ @ 0]]
CoD.BountyHunterUtility.BuildWeaponPackageModelsList = function ( f12_arg0, f12_arg1 )
	local f12_local0 = {
		damage = 0,
		range = 0,
		fireRate = 0,
		accuracy = 0
	} --[[ @ 0]]
	if f12_arg1.attributesTable then
		f12_local0.damage = f12_arg1.attributesTable.damage --[[ @ 0]]
		f12_local0.range = f12_arg1.attributesTable.range --[[ @ 0]]
		f12_local0.fireRate = f12_arg1.attributesTable.fireRate --[[ @ 0]]
		f12_local0.accuracy = f12_arg1.attributesTable.accuracy --[[ @ 0]]
	end
	local f12_local1 = CoD.BountyHunterUtility.BuildPackageModelsList( f12_arg0, f12_arg1 ) --[[ @ 0]]
	f12_local1.weaponAttributes = f12_local0 --[[ @ 0]]
	return f12_local1
end
 --[[ @ 0]]
CoD.BountyHunterUtility.BuildPackageModelsList = function ( f13_arg0, f13_arg1 )
	local f13_local0 = Engine[@"currentsessionmode"]() --[[ @ 0]]
	return {
		itemIndex = f13_arg1.itemIndex,
		displayName = f13_arg1.displayName,
		image = CoD.CACUtility.GetPreviewImage( f13_local0, f13_arg1 ),
		imageLarge = CoD.CACUtility.GetPreviewImageLarge( f13_local0, f13_arg1 ),
		description = f13_arg1.description
	}
end
 --[[ @ 0]]
CoD.BountyHunterUtility.BuildAttachmentItemModelsList = function ( f14_arg0, f14_arg1, f14_arg2 )
	local f14_local0 = Engine[@"getattachmentindexbyattachmenttableindex"]( f14_arg2, Engine[@"getattachmentindexbyref"]( f14_arg1 ) ) --[[ @ 0]]
	local f14_local1 = Engine[@"currentsessionmode"]() --[[ @ 0]]
	return {
		displayName = Engine[@"getattachmentname"]( f14_arg2, f14_local0, f14_local1 ),
		image = Engine[@"getattachmentuniqueimagebyindex"]( f14_arg2, f14_local0, f14_local1 ),
		imageLarge = Engine[@"getattachmentuniqueimagebyindex"]( f14_arg2, f14_local0, f14_local1 ),
		description = Engine[@"getattachmentdesc"]( f14_arg2, f14_local0, f14_local1 )
	}
end
 --[[ @ 0]]
CoD.BountyHunterUtility.GetGetPackageByID = function ( f15_arg0 )
	for f15_local3, f15_local4 in ipairs( CoD.BountyHunterUtility.GetBountyHunterPackageTable() ) --[[ @ 0]] do
		if f15_local4.packageID == f15_arg0 then
			return f15_local4
		end
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.GetPackagesOfType = function ( f16_arg0 )
	local f16_local0 = {} --[[ @ 0]]
	for f16_local4, f16_local5 in pairs( CoD.BountyHunterUtility.GetBountyHunterPackageTable() ) --[[ @ 0]] do
		if f16_local5.packageType == f16_arg0 then
			table.insert( f16_local0, f16_local5 ) --[[ @ 0]]
		end
	end
	return f16_local0
end
 --[[ @ 0]]
CoD.BountyHunterUtility.GetPackagesOfTypeAndGroup = function ( f17_arg0, f17_arg1 )
	local f17_local0 = {} --[[ @ 0]]
	for f17_local5, f17_local6 in pairs( CoD.BountyHunterUtility.GetBountyHunterPackageTable() ) --[[ @ 0]] do
		local f17_local4 --[[ @ 0]]
		if f17_arg1 and f17_local6.itemGroup ~= f17_arg1 then
			f17_local4 = false --[[ @ 0]]
		else
			f17_local4 = true --[[ @ 0]]
		end
		if f17_local6.packageType == f17_arg0 and f17_local4 then
			table.insert( f17_local0, f17_local6 ) --[[ @ 0]]
		end
	end
	return f17_local0
end
 --[[ @ 0]]
CoD.BountyHunterUtility.GetCurrentEquippedPackageID = function ( f18_arg0, f18_arg1 )
	local f18_local0 = f18_arg1:getModel() --[[ @ 0]]
	return f18_local0[f18_arg1._packageType]
end
 --[[ @ 0]]
CoD.BountyHunterUtility.BuildPackageModel = function ( f19_arg0, f19_arg1 )
	local f19_local0 = Engine[@"currentsessionmode"]() --[[ @ 0]]
	if f19_arg0 > 0 then
		local f19_local1 = CoD.BountyHunterUtility.GetGetPackageByID( f19_arg0 ) --[[ @ 0]]
		for f19_local7, f19_local8 in ipairs( f19_local1.items ) --[[ @ 0]] do
			local f19_local9 = f19_arg1:create( "item" .. f19_local7 ) --[[ @ 0]]
			local f19_local5 = f19_local9:create( "itemIndex" ) --[[ @ 0]]
			f19_local5:set( f19_local8.itemIndex ) --[[ @ 0]]
			f19_local5 = f19_local9:create( "displayName" ) --[[ @ 0]]
			f19_local5:set( f19_local8.displayName ) --[[ @ 0]]
			f19_local5 = f19_local9:create( "image" ) --[[ @ 0]]
			f19_local5:set( CoD.CACUtility.GetPreviewImage( f19_local0, f19_local8 ) ) --[[ @ 0]]
			f19_local5 = f19_local9:create( "imageLarge" ) --[[ @ 0]]
			f19_local5:set( CoD.CACUtility.GetPreviewImageLarge( f19_local0, f19_local8 ) ) --[[ @ 0]]
			f19_local5 = f19_local9:create( "description" ) --[[ @ 0]]
			f19_local5:set( f19_local8.description ) --[[ @ 0]]
			if f19_local7 == 1 and f19_local8.attributesTable then
				f19_local5 = f19_local9:create( "weaponAttributes" ) --[[ @ 0]]
				local f19_local6 = f19_local5:create( "damage" ) --[[ @ 0]]
				f19_local6:set( f19_local8.attributesTable.damage ) --[[ @ 0]]
				f19_local6 = f19_local5:create( "range" ) --[[ @ 0]]
				f19_local6:set( f19_local8.attributesTable.range ) --[[ @ 0]]
				f19_local6 = f19_local5:create( "fireRate" ) --[[ @ 0]]
				f19_local6:set( f19_local8.attributesTable.fireRate ) --[[ @ 0]]
				f19_local6 = f19_local5:create( "accuracy" ) --[[ @ 0]]
				f19_local6:set( f19_local8.attributesTable.accuracy ) --[[ @ 0]]
			end
		end
		f19_local2 = f19_arg1:create( "buyCost" ) --[[ @ 0]]
		f19_local2:set( f19_local1.purchaseCost ) --[[ @ 0]]
		f19_local2 = f19_arg1:create( "packageID" ) --[[ @ 0]]
		f19_local2:set( f19_local1.packageID ) --[[ @ 0]]
		f19_local2 = f19_arg1:create( "refillCost" ) --[[ @ 0]]
		f19_local2:set( f19_local1.refillCost ) --[[ @ 0]]
		f19_local2 = f19_arg1:create( "refillAmmo" ) --[[ @ 0]]
		f19_local2:set( f19_local1.refillAmmo ) --[[ @ 0]]
	else
		CoD.BountyHunterUtility.InitPackageModel( f19_arg1 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.InitPackageModel = function ( f20_arg0 )
	local f20_local0 = Engine[@"currentsessionmode"]() --[[ @ 0]]
	for f20_local1 = 1 --[[ @ 0]], 3, 1 do
		local f20_local4 = f20_arg0:create( "item" .. f20_local1 ) --[[ @ 0]]
		f20_local4:create( "itemIndex" ) --[[ @ 0]]
		f20_local4:create( "displayName" ) --[[ @ 0]]
		local f20_local5 = f20_local4:create( "image" ) --[[ @ 0]]
		f20_local5:set( RegisterImage( @"blacktransparent" ) ) --[[ @ 0]]
		f20_local5 = f20_local4:create( "imageLarge" ) --[[ @ 0]]
		f20_local5:set( RegisterImage( @"blacktransparent" ) ) --[[ @ 0]]
		f20_local4:create( "description" ) --[[ @ 0]]
		f20_local5 = f20_local4:create( "weaponAttributes" ) --[[ @ 0]]
		local f20_local6 = f20_local5:create( "damage" ) --[[ @ 0]]
		f20_local6:set( 0 ) --[[ @ 0]]
		f20_local6 = f20_local5:create( "range" ) --[[ @ 0]]
		f20_local6:set( 0 ) --[[ @ 0]]
		f20_local6 = f20_local5:create( "fireRate" ) --[[ @ 0]]
		f20_local6:set( 0 ) --[[ @ 0]]
		f20_local6 = f20_local5:create( "accuracy" ) --[[ @ 0]]
		f20_local6:set( 0 ) --[[ @ 0]]
	end
	f20_arg0:create( "buyCost" ) --[[ @ 0]]
	local f20_local1 = f20_arg0:create( "packageID" ) --[[ @ 0]]
	f20_local1:set( 0 ) --[[ @ 0]]
	f20_arg0:create( "refillCost" ) --[[ @ 0]]
	f20_arg0:create( "refillAmmo" ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BountyHunterUtility.OpenBountyHunterOverlay = function ( f21_arg0, f21_arg1, f21_arg2, f21_arg3, f21_arg4 )
	if not f21_arg1._ignoreBountyButtonPresses then
		return OpenOverlay( f21_arg0, f21_arg3, f21_arg2, {
			_model = f21_arg1:getModel(),
			_packageType = f21_arg4
		} )
	else
		
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.SetupBountyHunterModels = function ( f22_arg0, f22_arg1, f22_arg2 )
	local f22_local0 = Engine[@"getmodelforcontroller"]( f22_arg2 ) --[[ @ 0]]
	local f22_local1 = f22_local0.hudItems:create( "bountyUndoValid" ) --[[ @ 0]]
	f22_local1:set( false ) --[[ @ 0]]
	f22_local1 = f22_arg0:getModel() --[[ @ 0]]
	if not f22_local1 then
		f22_local1 = f22_local0.luielement.BountyHunterLoadout --[[ @ 0]]
	end
	CoD.BountyHunterUtility.InitPackageModel( f22_local1:create( "primaryModel" ) ) --[[ @ 0]]
	CoD.BountyHunterUtility.InitPackageModel( f22_local1:create( "secondaryModel" ) ) --[[ @ 0]]
	CoD.BountyHunterUtility.InitPackageModel( f22_local1:create( "armorModel" ) ) --[[ @ 0]]
	CoD.BountyHunterUtility.InitPackageModel( f22_local1:create( "scorestreakModel" ) ) --[[ @ 0]]
	CoD.BountyHunterUtility.InitPackageModel( f22_local1:create( "equipmentModel" ) ) --[[ @ 0]]
	f22_local1:create( "mobilityTrack" ) --[[ @ 0]]
	f22_local1:create( "assaultTrack" ) --[[ @ 0]]
	f22_local1:create( "reconTrack" ) --[[ @ 0]]
	f22_local1:create( "supportTrack" ) --[[ @ 0]]
	f22_local1:create( "primaryAttachmentTrack" ) --[[ @ 0]]
	f22_local1:create( "secondaryAttachmentTrack" ) --[[ @ 0]]
	f22_local1:create( "currentPackage" ) --[[ @ 0]]
	f22_arg0:setModel( f22_local1, f22_arg2 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BountyHunterUtility.PerformValidatedBuy = function ( f23_arg0, f23_arg1, f23_arg2, f23_arg3 )
	if not f23_arg1._ignoreBountyButtonPresses and f23_arg2 then
		local f23_local0 = f23_arg1:getModel() --[[ @ 0]]
		f23_local0 = f23_local0.money:get() --[[ @ 0]]
		local f23_local1 = nil --[[ @ 0]]
		if f23_arg3 ~= "ammo" then
			f23_local1 = f23_arg2.buyCost:get() --[[ @ 0]]
		else
			f23_local1 = f23_arg2.refillCost:get() --[[ @ 0]]
		end
		if f23_local1 <= f23_local0 then
			Engine[@"sendmenuresponse"]( f23_arg0, f23_arg1.menuName, "buy_package_" .. f23_arg3, f23_arg2.packageID:get() ) --[[ @ 0]]
			Engine[@"playsound"]( "uin_bh_purchase" ) --[[ @ 0]]
			local f23_local2 = Engine[@"getmodelforcontroller"]( f23_arg0 ) --[[ @ 0]]
			f23_local2.hudItems.bountyUndoValid:set( true ) --[[ @ 0]]
			return true
		end
	end
	return false
end
 --[[ @ 0]]
CoD.BountyHunterUtility.BuyBountyHunterItem = function ( f24_arg0, f24_arg1, f24_arg2, f24_arg3 )
	local f24_local0 = f24_arg3:getModel() --[[ @ 0]]
	local f24_local1 = f24_arg2:getModel() --[[ @ 0]]
	if f24_local1[f24_arg2._packageType]:get() ~= f24_local0.packageID:get() and CoD.BountyHunterUtility.PerformValidatedBuy( f24_arg1, f24_arg2, f24_local0, f24_arg2._packageType ) then
		GoBack( f24_arg0, f24_arg1 ) --[[ @ 0]]
		LockInput( f24_arg0, f24_arg1, true ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.BuyBountyTierPackage = function ( f25_arg0, f25_arg1, f25_arg2 )
	local f25_local0 = f25_arg2:getModel() --[[ @ 0]]
	local f25_local1 = f25_local0.trackModel:get() --[[ @ 0]]
	if f25_local1.tierPurchased:get() == f25_local0.trackTier:get() - 1 then
		CoD.BountyHunterUtility.PerformValidatedBuy( f25_arg0, f25_arg1, f25_local0, f25_local0.packageType:get() ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.BuyBountyPackageAmmo = function ( f26_arg0, f26_arg1, f26_arg2 )
	local f26_local0 = f26_arg2:getModel() --[[ @ 0]]
	if not CoD.BountyHunterUtility.IsAmmoAtMax( f26_arg2, f26_arg0 ) then
		CoD.BountyHunterUtility.PerformValidatedBuy( f26_arg0, f26_arg1, f26_local0, "ammo" ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.SetActiveListItemForWeaponGroup = function ( f27_arg0, f27_arg1, f27_arg2 )
	if f27_arg0._packageType == "primary" or f27_arg0._packageType == "secondary" then
		local f27_local0 = CoD.BountyHunterUtility.GetCurrentEquippedPackageID( f27_arg1, f27_arg0 ) --[[ @ 0]]
		f27_local0 = f27_local0:get() --[[ @ 0]]
		local f27_local1 = Engine[@"currentsessionmode"]() --[[ @ 0]]
		if f27_local0 > 0 then
			local f27_local2 = CoD.BountyHunterUtility.GetGetPackageByID( f27_local0 ) --[[ @ 0]]
			local f27_local3 = f27_local2.itemGroup --[[ @ 0]]
			if f27_arg2:findItem( nil, {
				category = f27_local3
			}, true, nil ) then
				f27_arg0._itemGroup = f27_local3 --[[ @ 0]]
			end
		else
			local f27_local3 = CoD.CACUtility.GetWeaponGroupNamesForSlot( f27_arg0._packageType ) --[[ @ 0]]
			f27_arg0._itemGroup = f27_local3[1].weapon_category --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.SetPackageInSlotByPackageId = function ( f28_arg0, f28_arg1, f28_arg2 )
	local f28_local0 = f28_arg2:get() --[[ @ 0]]
	local f28_local1 = f28_arg0:getModel() --[[ @ 0]]
	CoD.BountyHunterUtility.BuildPackageModel( f28_local0, f28_local1:create( f28_arg1 .. "Model" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BountyHunterUtility.IsTooExpensive = function ( f29_arg0, f29_arg1 )
	local f29_local0 = Engine[@"getmodelforcontroller"]( f29_arg1 ) --[[ @ 0]]
	f29_local0 = f29_local0.luielement.BountyHunterLoadout.money:get() --[[ @ 0]]
	local f29_local1 = f29_arg0:getModel() --[[ @ 0]]
	if f29_local1 then
		f29_local1 = f29_arg0:getModel() --[[ @ 0]]
		f29_local1 = f29_local0 < f29_local1.buyCost:get() --[[ @ 0]]
	end
	return f29_local1
end
 --[[ @ 0]]
CoD.BountyHunterUtility.IsRefillTooExpensive = function ( f30_arg0, f30_arg1 )
	local f30_local0 = Engine[@"getmodelforcontroller"]( f30_arg1 ) --[[ @ 0]]
	f30_local0 = f30_local0.luielement.BountyHunterLoadout.money:get() --[[ @ 0]]
	local f30_local1 = f30_arg0:getModel() --[[ @ 0]]
	if f30_local1 then
		f30_local1 = f30_arg0:getModel() --[[ @ 0]]
		f30_local1 = f30_local1.refillCost:get() --[[ @ 0]]
		if f30_local1 then
			f30_local1 = f30_arg0:getModel() --[[ @ 0]]
			f30_local1 = f30_local0 < f30_local1.refillCost:get() --[[ @ 0]]
		end
	end
	return f30_local1
end
 --[[ @ 0]]
CoD.BountyHunterUtility.IsAmmoAtMax = function ( f31_arg0, f31_arg1 )
	local f31_local0 = f31_arg0:getModel() --[[ @ 0]]
	if not f31_local0 or not f31_local0.ammoCurrent or not f31_local0.ammoMax then
		return false
	else
		return f31_local0.ammoMax:get() <= f31_local0.ammoCurrent:get()
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.IsPackageTierAvailable = function ( f32_arg0 )
	local f32_local0 = f32_arg0:getModel() --[[ @ 0]]
	if f32_local0 then
		local f32_local1 = f32_local0.trackTier:get() --[[ @ 0]]
		if f32_local1 == -1 then
			return false
		else
			local f32_local2 = f32_local0.trackModel:get() --[[ @ 0]]
			return f32_local2.tierPurchased:get() == f32_local1 - 1
		end
	else
		
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.IsPackageTierSeparatorActive = function ( f33_arg0 )
	local f33_local0 = f33_arg0:getModel() --[[ @ 0]]
	if f33_local0 then
		local f33_local1 = f33_local0.trackTier:get() --[[ @ 0]]
		if f33_local1 == -1 then
			return false
		else
			local f33_local2 = f33_local0.trackModel:get() --[[ @ 0]]
			return f33_local2.tierPurchased:get() == f33_local1 - 2
		end
	else
		
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.IsTrackPackagePurchased = function ( f34_arg0, f34_arg1, f34_arg2 )
	local f34_local0 = f34_arg0:getModel() --[[ @ 0]]
	if f34_local0 then
		local f34_local1 = f34_local0.trackTier:get() --[[ @ 0]]
		if f34_local1 == -1 then
			return false
		else
			local f34_local2 = f34_local0.trackModel:get() --[[ @ 0]]
			return f34_local1 <= f34_local2.tierPurchased:get()
		end
	else
		return false
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.IsPackageEquippedInLoadoutSlot = function ( f35_arg0, f35_arg1, f35_arg2 )
	local f35_local0 = f35_arg0:getModel() --[[ @ 0]]
	local f35_local1 = CoD.BountyHunterUtility.GetCurrentEquippedPackageID( f35_arg2, f35_arg1 ) --[[ @ 0]]
	return f35_local0 and f35_local1 and f35_local1:get() == f35_local0.packageID:get()
end
 --[[ @ 0]]
CoD.BountyHunterUtility.SetCurrentPreviewedPackage = function ( f36_arg0, f36_arg1 )
	local f36_local0 = f36_arg1:getModel() --[[ @ 0]]
	local f36_local1 = f36_local0:create( "currentPackage" ) --[[ @ 0]]
	f36_local1:set( f36_arg0:getModel() ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BountyHunterUtility.SetPreviewedPackageFromCurrentModel = function ( f37_arg0, f37_arg1, f37_arg2 )
	f37_arg0:setModel( f37_arg1:get(), f37_arg2 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BountyHunterUtility.IsPreviewPackageSingleItem = function ( f38_arg0 )
	local f38_local0 --[[ @ 0]]
	if f38_arg0:getModel() then
		f38_local0 = f38_arg0:getModel() --[[ @ 0]]
		if f38_local0.item2 then
			f38_local0 = f38_arg0:getModel() --[[ @ 0]]
			if f38_local0.item2.displayName then
				f38_local0 = f38_arg0:getModel() --[[ @ 0]]
				if f38_local0.item2.displayName:get() then
					f38_local0 = f38_arg0:getModel() --[[ @ 0]]
					if f38_local0.item2.trackTier:get() >= 0 then
						f38_local0 = false --[[ @ 0]]
					end
				end
			end
		end
	end
	f38_local0 = true --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BountyHunterUtility.IsPreviewPackageTripleItem = function ( f39_arg0 )
	local f39_local0 = f39_arg0:getModel() --[[ @ 0]]
	if f39_local0 then
		f39_local0 = f39_arg0:getModel() --[[ @ 0]]
		f39_local0 = f39_local0.item3 --[[ @ 0]]
		if f39_local0 then
			f39_local0 = f39_arg0:getModel() --[[ @ 0]]
			f39_local0 = f39_local0.item3.displayName --[[ @ 0]]
			if f39_local0 then
				f39_local0 = f39_arg0:getModel() --[[ @ 0]]
				f39_local0 = f39_local0.item3.displayName:get() --[[ @ 0]]
				if f39_local0 then
					f39_local0 = f39_arg0:getModel() --[[ @ 0]]
					f39_local0 = f39_local0.item3.trackTier:get() >= 0 --[[ @ 0]]
				end
			end
		end
	end
	return f39_local0
end
 --[[ @ 0]]
CoD.BountyHunterUtility.IsPreviewPackageWeaponNotSelected = function ( f40_arg0 )
	if not f40_arg0:getModel() then
		return false
	end
	local f40_local0 = f40_arg0:getModel() --[[ @ 0]]
	f40_local0 = f40_local0.packageID --[[ @ 0]]
	if f40_local0 then
		f40_local0 = f40_arg0:getModel() --[[ @ 0]]
		if f40_local0.packageID:get() then
			f40_local0 = f40_arg0:getModel() --[[ @ 0]]
			if f40_local0.packageID:get() ~= 0 then
				f40_local0 = false --[[ @ 0]]
			else
				f40_local0 = true --[[ @ 0]]
			end
		end
		f40_local0 = true --[[ @ 0]]
	end
	return f40_local0
end
 --[[ @ 0]]
CoD.BountyHunterUtility.GameTypeIsBounty = function ( f41_arg0 )
	return CoD.HUDUtility.IsGameTypeEqualToString( "bounty" )
end
 --[[ @ 0]]
CoD.BountyHunterUtility.GameTypeHidesChooseClass = function ( f42_arg0 )
	local f42_local0 = CoD.HUDUtility.IsGameTypeEqualToString( "bounty" ) --[[ @ 0]]
	if not f42_local0 then
		f42_local0 = CoD.HUDUtility.IsGameTypeEqualToString( "gun" ) --[[ @ 0]]
		if not f42_local0 then
			f42_local0 = CoD.HUDUtility.IsGameTypeEqualToString( "oic" ) --[[ @ 0]]
			if not f42_local0 then
				f42_local0 = CoD.HUDUtility.IsGameTypeEqualToString( "sas" ) --[[ @ 0]]
				if not f42_local0 then
					f42_local0 = CoD.HUDUtility.IsGameTypeEqualToString( "prop" ) --[[ @ 0]]
				end
			end
		end
	end
	return f42_local0
end
 --[[ @ 0]]
CoD.BountyHunterUtility.TimeRemainingClockFraction = function ( f43_arg0, f43_arg1, f43_arg2, f43_arg3, f43_arg4, f43_arg5 )
	local f43_local0 = 10 --[[ @ 0]]
	local f43_local1 = Engine[@"getgametypesettings"]() --[[ @ 0]]
	return 1, 1 - math.ceil( f43_arg2 / f43_local1.bountyPurchasePhaseDuration:get() * f43_local0 ) / f43_local0, 0, 0
end
 --[[ @ 0]]
CoD.BountyHunterUtility.GiveBountyHunterMoneyScore = function ( f44_arg0, f44_arg1, f44_arg2, f44_arg3 )
	if not Engine[@"isvisibilitybitset"]( f44_arg2, Enum[@"uivisibilitybit"][@"bit_spectating_client"] ) and not Engine[@"isvisibilitybitset"]( f44_arg2, Enum[@"uivisibilitybit"][@"bit_player_dead"] ) then
		local f44_local0 = f44_arg3:get() --[[ @ 0]]
		if not f44_arg0._previousMoney then
			f44_arg0._previousMoney = f44_local0 --[[ @ 0]]
		end
		local f44_local1 = f44_local0 - f44_arg0._previousMoney --[[ @ 0]]
		f44_arg0._previousMoney = f44_local0 --[[ @ 0]]
		if f44_local1 > 0 and not f44_arg1._ignoreNextMoneyChange then
			if not f44_arg0._currentElementIndex then
				f44_arg0._currentElementIndex = 1 --[[ @ 0]]
			end
			if f44_arg0["BountyCashEvent" .. f44_arg0._currentElementIndex] then
				local f44_local2 = "BountyCashEvent" --[[ @ 0]]
				if f44_arg0["BountyCashEvent" .. f44_arg0._currentElementIndex].BountyCash then
					f44_local2 = "BountyCashEvent" --[[ @ 0]]
					f44_arg0["BountyCashEvent" .. f44_arg0._currentElementIndex].BountyCash:setText( CoD.BaseUtility.AlreadyLocalized( "+ $" .. f44_local1 ) ) --[[ @ 0]]
				end
				f44_arg0["BountyCashEvent" .. f44_arg0._currentElementIndex]:playClip( "CashEvent" .. math.random( 5 ) ) --[[ @ 0]]
			end
			f44_arg0._currentElementIndex = (f44_arg0._currentElementIndex + 1) % 5 --[[ @ 0]]
		end
		f44_arg1._ignoreNextMoneyChange = nil --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.ShowBuyMenu = function ( f45_arg0, f45_arg1, f45_arg2, f45_arg3 )
	f45_arg0._ignoreBountyButtonPresses = false --[[ @ 0]]
	f45_arg2._toggledHide = nil --[[ @ 0]]
	LockInput( f45_arg0, f45_arg1, true ) --[[ @ 0]]
	f45_arg2:setAlpha( 1 ) --[[ @ 0]]
	f45_arg3:setAlpha( 0 ) --[[ @ 0]]
	CoD.Menu.SetAsPriority( f45_arg0, f45_arg1 ) --[[ @ 0]]
	if CoD.isPC then
		f45_arg0.ignoreCursor = false --[[ @ 0]]
		CoD.PCUtility.MigrateStickyElementsForward( f45_arg0, f45_arg1 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.HideBuyMenu = function ( f46_arg0, f46_arg1, f46_arg2, f46_arg3 )
	f46_arg0._ignoreBountyButtonPresses = true --[[ @ 0]]
	f46_arg2._toggledHide = true --[[ @ 0]]
	LockInput( f46_arg0, f46_arg1, false ) --[[ @ 0]]
	f46_arg2:setAlpha( 0 ) --[[ @ 0]]
	f46_arg3:setAlpha( 1 ) --[[ @ 0]]
	CoD.Menu.SetAsNotPriority( f46_arg0, f46_arg1 ) --[[ @ 0]]
	if CoD.isPC then
		f46_arg0.ignoreCursor = true --[[ @ 0]]
		CoD.PCUtility.MigrateStickyElementsBackward( f46_arg0, f46_arg1 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.ToggleBuyMenuVisible = function ( f47_arg0, f47_arg1, f47_arg2, f47_arg3, f47_arg4 )
	if not Engine[@"isvisibilitybitset"]( f47_arg1, Enum[@"uivisibilitybit"][@"bit_spectating_client"] ) then
		if CoD.BountyHunterUtility.IsBuyMenuVisible( f47_arg2 ) then
			CoD.BountyHunterUtility.HideBuyMenu( f47_arg0, f47_arg1, f47_arg2, f47_arg3 ) --[[ @ 0]]
			if CoD.isPC then
				f47_arg4:setAlpha( 0 ) --[[ @ 0]]
			end
		else
			CoD.BountyHunterUtility.ShowBuyMenu( f47_arg0, f47_arg1, f47_arg2, f47_arg3 ) --[[ @ 0]]
			if CoD.isPC then
				f47_arg4:setAlpha( 1 ) --[[ @ 0]]
			end
		end
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.SetChangeSpecialistDefaultFocus = function ( f48_arg0, f48_arg1 )
	if CoD.BountyHunterUtility.GameTypeIsBounty( f48_arg1 ) then
		f48_arg0.__defaultFocus = f48_arg0.QuitButton --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.TicketInDownedState = function ( f49_arg0, f49_arg1 )
	local f49_local0 = f49_arg0:getModel() --[[ @ 0]]
	f49_local0 = f49_local0.numPlayersAlive:get() --[[ @ 0]]
	local f49_local1 = f49_arg0:getModel() --[[ @ 0]]
	if not f49_local1.numPlayersDowned then
		return false
	else
		f49_local1 = f49_arg0:getModel() --[[ @ 0]]
		f49_local1 = f49_local1.numPlayersDowned:get() --[[ @ 0]]
		return f49_local1 and f49_local0 and f49_local0 - f49_arg1 <= f49_local1
	end
end
 --[[ @ 0]]
CoD.BountyHunterUtility.HasPreviewBeenPurchased = function ( f50_arg0, f50_arg1 )
	local f50_local0 = f50_arg0:getModel() --[[ @ 0]]
	if f50_local0 then
		f50_local0 = f50_arg0:getModel() --[[ @ 0]]
		f50_local0 = f50_local0.packageID --[[ @ 0]]
		if f50_local0 then
			f50_local0 = f50_arg0:getModel() --[[ @ 0]]
			f50_local0 = f50_local0.packageID:get() --[[ @ 0]]
		end
	end
	if not f50_local0 or f50_local0 == 0 then
		return false
	end
	local f50_local1 = f50_arg1:getModel() --[[ @ 0]]
	if not f50_local1 then
		return false
	end
	local f50_local2 = f50_arg0:getModel() --[[ @ 0]]
	if not f50_local2.trackModel and (f50_local0 == f50_local1.primary:get() or f50_local0 == f50_local1.secondary:get() or f50_local0 == f50_local1.armor:get() or f50_local0 == f50_local1.scorestreak:get() or f50_local0 == f50_local1.equipment:get()) then
		return true
	end
	f50_local2 = f50_arg0:getModel() --[[ @ 0]]
	if f50_local2.trackTier then
		f50_local2 = f50_arg0:getModel() --[[ @ 0]]
		if f50_local2.trackModel then
			f50_local2 = f50_arg0:getModel() --[[ @ 0]]
			f50_local2 = f50_local2.trackModel:get() --[[ @ 0]]
			if f50_local2.tierPurchased then
				f50_local2 = f50_arg0:getModel() --[[ @ 0]]
				f50_local2 = f50_local2.trackTier:get() --[[ @ 0]]
				local f50_local3 = f50_arg0:getModel() --[[ @ 0]]
				f50_local3 = f50_local3.trackModel:get() --[[ @ 0]]
				if f50_local2 <= f50_local3.tierPurchased:get() then
					return true
				end
			end
		end
	end
	return false
end
 --[[ @ 0]]
CoD.BountyHunterUtility.HasBountyStreakOrNotBounty = function ( f51_arg0 )
	local f51_local0 = CoD.BountyHunterUtility.GameTypeIsBounty( f51_arg0 ) --[[ @ 0]]
	local f51_local1 = Engine[@"getmodelforcontroller"]( f51_arg0 ) --[[ @ 0]]
	f51_local1 = f51_local1.killstreaks --[[ @ 0]]
	local f51_local2 = f51_local1.killstreak3.rewardAmmo:get() --[[ @ 0]]
	if f51_local2 then
		f51_local2 = f51_local1.killstreak3.rewardAmmo:get() > 0 --[[ @ 0]]
	end
	local f51_local3 --[[ @ 0]]
	if f51_local0 then
		local f51_local4 = f51_local0 --[[ @ 0]]
		f51_local3 = f51_local2 --[[ @ 0]]
	else
		f51_local3 = f51_local4 and true --[[ @ 0]]
	end
	return f51_local3
end
 --[[ @ 0]]
CoD.BountyHunterUtility.IsBuyMenuVisible = function ( f52_arg0 )
	return not f52_arg0._toggledHide
end
 --[[ @ 0]]
