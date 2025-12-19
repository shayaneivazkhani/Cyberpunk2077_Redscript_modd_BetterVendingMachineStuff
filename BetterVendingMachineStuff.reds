// Version 1.0.0 – 19 Dec 2025 

module EnhancedMachines.VendingMachine.BetterStuff

@wrapMethod(VendingMachine)
protected func DispenseItems(request: ref<DispenseRequest>) -> Void {
	wrappedMethod(request);
	this.GiveMoneyAndItemComponents();
};

@wrapMethod(VendingMachine)
protected func HackedEffect() -> Void { 
	wrappedMethod();
	this.GiveQuickHackItemComponentsAndCyberware();
};

@addMethod(VendingMachine)
protected func GiveMoneyAndItemComponents() -> Void {
	let randomNum = RandRangeF(0, 100);
    let i: Int32 = 1;
	let TS: ref<TransactionSystem> = GameInstance.GetTransactionSystem(this.GetGame());

	// m_controllerTypeName: CName – i.e is of type CName
	if Equals(this.m_controllerTypeName, n"VendingMachineController") {
		let commonItemComponent: ItemID = ItemID.FromTDBID(t"Items.CommonMaterial1");
		let uncommonItemComponent: ItemID = ItemID.FromTDBID(t"Items.UncommonMaterial1");
		let rareItemComponent: ItemID = ItemID.FromTDBID(t"Items.RareMaterial1");
		let epicItemComponent: ItemID = ItemID.FromTDBID(t"Items.EpicMaterial1");
		let legendaryItemComponent: ItemID = ItemID.FromTDBID(t"Items.LegendaryMaterial1");

		let uncommonMoneyItem: ItemID = ItemID.FromTDBID(t"Items.MoneyShardUncommon");
		let legendaryMoneyItem: ItemID = ItemID.FromTDBID(t"Items.MoneyShardLegendary");

		if TDBID.IsValid(ItemID.GetTDBID(commonItemComponent)) {
			TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), commonItemComponent, i*500);
		};
		if TDBID.IsValid(ItemID.GetTDBID(uncommonItemComponent)) {
			TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), uncommonItemComponent, i*400);
		};
		if TDBID.IsValid(ItemID.GetTDBID(rareItemComponent)) {
			TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), rareItemComponent, i*300);
		};
		if TDBID.IsValid(ItemID.GetTDBID(epicItemComponent)) {
			TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), epicItemComponent, i*200);
		};
		if TDBID.IsValid(ItemID.GetTDBID(legendaryItemComponent)) {
			TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), legendaryItemComponent, i*100);
		};
		
		if TDBID.IsValid(ItemID.GetTDBID(uncommonMoneyItem)) {
			TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), uncommonMoneyItem, i*2);
		};
		if TDBID.IsValid(ItemID.GetTDBID(legendaryMoneyItem)) {
			TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), legendaryMoneyItem, i*111);
		};

		return;
	};


	if Equals(this.m_controllerTypeName, n"WeaponVendingMachineController") {
		let weaponItem1: ItemID = ItemID.FromTDBID(t"Items.Legendary_Burya_Comrade");
		let weaponItem2: ItemID = ItemID.FromTDBID(t"Items.Preset_Overture_Cassidy");
		let weaponItem3: ItemID = ItemID.FromTDBID(t"Items.Preset_Shingen_Prototype");
		let weaponItem4: ItemID = ItemID.FromTDBID(t"Items.Preset_Nekomata_Breakthrough");
		let weaponItem5: ItemID = ItemID.FromTDBID(t"Items.Preset_Liberty_Padre");

		if (randomNum >= 0.0 && randomNum < 15.0) {
			if TDBID.IsValid(ItemID.GetTDBID(weaponItem1)) {
				TS.GiveItem(this, weaponItem1, i);
				this.DelayHackedEvent(Cast<Float>(i)*0.2, weaponItem1);
			};
			return;
		};
		if (randomNum >= 15.0 && randomNum < 30.0) {
			if TDBID.IsValid(ItemID.GetTDBID(weaponItem2)) {
				TS.GiveItem(this, weaponItem2, i);
				this.DelayHackedEvent(Cast<Float>(i)*0.2, weaponItem2);
			};
			return;
		};
		if (randomNum >= 30.0 && randomNum < 45.0) {
			if TDBID.IsValid(ItemID.GetTDBID(weaponItem3)) {
				TS.GiveItem(this, weaponItem3, i);
				this.DelayHackedEvent(Cast<Float>(i)*0.2, weaponItem3);
			};
			return;
		};
		if (randomNum >= 45.0 && randomNum < 60.0) {
			if TDBID.IsValid(ItemID.GetTDBID(weaponItem4)) {
				TS.GiveItem(this, weaponItem4, i);
				this.DelayHackedEvent(Cast<Float>(i)*0.2, weaponItem4);
			};
			return;
		};
		if (randomNum >= 60.0 && randomNum < 100.0) {
			if TDBID.IsValid(ItemID.GetTDBID(weaponItem5)) {
				TS.GiveItem(this, weaponItem5, i);
				this.DelayHackedEvent(Cast<Float>(i)*0.2, weaponItem5);
			};
			return;
		};
		
		return;
	};
}

@addMethod(VendingMachine)
protected func GiveQuickHackItemComponentsAndCyberware() -> Void {
	let randomNum = RandRangeF(0, 100);
    let i: Int32 = 1;
	let TS: ref<TransactionSystem> = GameInstance.GetTransactionSystem(this.GetGame());

	if Equals(this.m_controllerTypeName, n"VendingMachineController") {
		let quickhackUncommonItemComponent: ItemID = ItemID.FromTDBID(t"Items.QuickHackUncommonMaterial1");
		let quickhackRareItemComponent: ItemID = ItemID.FromTDBID(t"Items.QuickHackRareMaterial1");
		let quickhackEpicItemComponent: ItemID = ItemID.FromTDBID(t"Items.QuickHackEpicMaterial1");
		let quickhackLegendaryItemComponent: ItemID = ItemID.FromTDBID(t"Items.QuickHackLegendaryMaterial1");

		if TDBID.IsValid(ItemID.GetTDBID(quickhackUncommonItemComponent)) {
			TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), quickhackUncommonItemComponent, i*40);
		};
		if TDBID.IsValid(ItemID.GetTDBID(quickhackRareItemComponent)) {
			TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), quickhackRareItemComponent, i*30);
		};
		if TDBID.IsValid(ItemID.GetTDBID(quickhackEpicItemComponent)) {
			TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), quickhackEpicItemComponent, i*20);
		};
		if TDBID.IsValid(ItemID.GetTDBID(quickhackLegendaryItemComponent)) {
			TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), quickhackLegendaryItemComponent, i*10);
		};
		return;
	};

	if Equals(this.m_controllerTypeName, n"WeaponVendingMachineController") {
		let junkItem1: ItemID = ItemID.FromTDBID(t"Items.CasinoJunkItem2");
		if !TDBID.IsValid(ItemID.GetTDBID(junkItem1)) {
			return;
		};

		let cyberWareItem1: ItemID = ItemID.FromTDBID(t"Items.AdvancedKiroshiOpticsCombinedLegendaryPlusPlus");
		let cyberWareItem2: ItemID = ItemID.FromTDBID(t"Items.IconicGunStabilizerLegendaryPlusPlus");
		let cyberWareItem3: ItemID = ItemID.FromTDBID(t"Items.AdvancedBoostedTendonsPlusPlus");
		let cyberWareItem4: ItemID = ItemID.FromTDBID(t"Items.AdvancedSandevistanApogeePlusPlus");
		let cyberWareItem5: ItemID = ItemID.FromTDBID(t"Items.AdvancedMicroGeneratorLegendaryPlusPlus");

		if (randomNum >= 0.0 && randomNum < 15.0) {
			if TDBID.IsValid(ItemID.GetTDBID(cyberWareItem1)) {
				TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), cyberWareItem1, i);
				TS.GiveItem(this, junkItem1, 1);
				this.DelayHackedEvent(Cast<Float>(i)*0.2, junkItem1);
			};
			return;
		};
		if (randomNum >= 15.0 && randomNum < 30.0) {
			if TDBID.IsValid(ItemID.GetTDBID(cyberWareItem2)) {
				TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), cyberWareItem2, i);
				TS.GiveItem(this, junkItem1, 1);
				this.DelayHackedEvent(Cast<Float>(i)*0.2, junkItem1);
			};
			return;
		};
		if (randomNum >= 30.0 && randomNum < 45.0) {
			if TDBID.IsValid(ItemID.GetTDBID(cyberWareItem3)) {
				TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), cyberWareItem3, i);
				TS.GiveItem(this, junkItem1, 1);
				this.DelayHackedEvent(Cast<Float>(i)*0.2, junkItem1);
			};
			return;
		};
		if (randomNum >= 45.0 && randomNum < 60.0) {
			if TDBID.IsValid(ItemID.GetTDBID(cyberWareItem4)) {
				TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), cyberWareItem4, i);
				TS.GiveItem(this, junkItem1, 1);
				this.DelayHackedEvent(Cast<Float>(i)*0.2, junkItem1);
			};
			return;
		};
		if (randomNum >= 60.0 && randomNum < 100.0) {
			if TDBID.IsValid(ItemID.GetTDBID(cyberWareItem5)) {
				TS.GiveItem((this.GetGame().GetPlayerSystem().GetLocalPlayerMainGameObject()), cyberWareItem5, i);
				TS.GiveItem(this, junkItem1, 1);
				this.DelayHackedEvent(Cast<Float>(i)*0.2, junkItem1);
			};
			return;
		};
		
		return;
	};
}