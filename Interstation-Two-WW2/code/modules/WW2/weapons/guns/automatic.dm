
//*********************
//PPS
//*********************

/obj/item/weapon/gun/projectile/automatic
	force = 10
	throwforce = 20

/obj/item/weapon/gun/projectile/automatic/mp40
	name = "MP-40"
	desc = "German submachinegun chambered in 9x19 Parabellum, with a 32 magazine magazine layout. Standard issue amongst most troops."
	icon_state = "mp40"
	item_state = "mp40"
	load_method = MAGAZINE
	slot_flags = SLOT_BACK
	w_class = 4
	caliber = "a9mm_para"
	magazine_type = /obj/item/ammo_magazine/mp40
	can_wield = TRUE
	//must_wield = TRUE

	accuracy = DEFAULT_MG_ACCURACY+2
	scoped_accuracy = DEFAULT_MG_SCOPED_ACCURACY+1

	firemodes = list(
		list(name="single shot",	burst=1, burst_delay=1.5, move_delay=2, dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(name="short bursts",	burst=3, burst_delay=1.5, move_delay=4, dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(name="long bursts",	burst=5, burst_delay=1.5, move_delay=6, dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	sel_mode = 2

/obj/item/weapon/gun/projectile/automatic/mp40/update_icon()
	if(ammo_magazine)
		icon_state = "mp40"
		if(wielded)
			item_state = "mp40-w"
		else
			item_state = "mp40"
	else
		icon_state = "mp400"
		if(wielded)
			item_state = "mp40-w"
		else
			item_state = "mp400"
	update_held_icon()
	return

/obj/item/weapon/gun/projectile/automatic/stg
	name = "STG-44"
	desc = "German assault rifle with a 30 round magazine, chambered in 7.92x33mm Kurz. It is a devastating weapon."
	icon_state = "stg"
	item_state = "stg"
	load_method = MAGAZINE
	slot_flags = SLOT_BACK
	w_class = 4
	caliber = "a792x33"
	fire_sound = 'sound/weapons/stg.ogg'
	load_magazine_sound = 'sound/weapons/stg_reload.ogg'
	magazine_type = /obj/item/ammo_magazine/a792x33/stgmag

	accuracy = DEFAULT_MG_ACCURACY
	scoped_accuracy = DEFAULT_MG_SCOPED_ACCURACY

	can_wield = TRUE

/obj/item/weapon/gun/projectile/automatic/stg/update_icon()
	if(ammo_magazine)
		icon_state = "stg"
		if(wielded)
			item_state = "stg-w"
		else
			item_state = "stg"
	else
		icon_state = "stg0"
		if(wielded)
			item_state = "stg-w"
		else
			item_state = "stg0"
	update_held_icon()
	return


/obj/item/weapon/gun/projectile/automatic/akm
	name = "MP-43/B"
	desc = "German assault rifle chambered in 7.92x33mm Kurz, 30 round magazine. Variant of the STG-44, issued to SS, usually."
	icon_state = "stg"
	item_state = "stg"
	load_method = MAGAZINE
	slot_flags = SLOT_BACK
	w_class = 4
	caliber = "a792x33"
	magazine_type = /obj/item/ammo_magazine/a762/akm

	accuracy = DEFAULT_MG_ACCURACY
	scoped_accuracy = DEFAULT_MG_SCOPED_ACCURACY

	can_wield = TRUE
	//must_wield = TRUE

	firemodes = list(
		list(name="single shot",	burst=1, burst_delay=1.8, move_delay=4, dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(name="short bursts",	burst=3, burst_delay=1.8, move_delay=6, dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(name="long bursts",	burst=5, burst_delay=1.8, move_delay=8, dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	sel_mode = 2

/obj/item/weapon/gun/projectile/automatic/akm/update_icon()
	if(ammo_magazine)
		icon_state = "stg"
		if(wielded)
			item_state = "stg-w"
		else
			item_state = "stg"
	else
		icon_state = "stg0"
		if(wielded)
			item_state = "stg-w"
		else
			item_state = "stg0"
	update_held_icon()
	return

/obj/item/weapon/gun/projectile/automatic/m4
	name = "PPSh-41"
	desc = "Soviet submachinegun with a very large drum magazine. Capable of bringing many targets down in Stalin's name."
	icon_state = "ppsh"
	item_state = "ppsh"
	load_method = MAGAZINE
	slot_flags = SLOT_BACK|SLOT_BELT
	w_class = 4
	fire_sound = 'sound/weapons/m16.ogg'
	accuracy = DEFAULT_MG_ACCURACY
	scoped_accuracy = DEFAULT_MG_SCOPED_ACCURACY
	caliber = "a762x25"
	magazine_type = /obj/item/ammo_magazine/a556/m4
	firemodes = list(
		list(name="single shot",	burst=1, burst_delay=1.1, move_delay=3, dispersion = list(0.9, 1.0, 1.0, 1.0, 1.1)),
		list(name="short bursts",	burst=5, burst_delay=1.1, move_delay=5, dispersion = list(0.9, 1.0, 1.0, 1.0, 1.1)),
		list(name="long bursts",	burst=8, burst_delay=1.1, move_delay=7, dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	can_wield = TRUE

	sel_mode = 2

/obj/item/weapon/gun/projectile/automatic/m4/update_icon()
	if(ammo_magazine)
		icon_state = "ppsh"
		if(wielded)
			item_state = "ppsh"
		else
			item_state = "ppsh"
	else
		icon_state = "ppsh_empty"
		if(wielded)
			item_state = "ppsh_empty"
		else
			item_state = "ppsh_empty"
	update_held_icon()
	return

/obj/item/weapon/gun/projectile/automatic/pkm
	name = "DP-28"
	desc = "Soviet light machine gun with a odd disk-shaped magazine on top. Chambered in 7.62x54mmR, in 41 round magazines."
	icon_state = "dp"
	item_state = "dp"
	load_method = MAGAZINE
	w_class = 4
	accuracy = DEFAULT_MG_ACCURACY+1
	scoped_accuracy = DEFAULT_MG_SCOPED_ACCURACY+1
	caliber = "a762x39"
	magazine_type = /obj/item/ammo_magazine/a762/pkm
	can_wield = FALSE
	must_wield = FALSE

	firemodes = list(
		list(name="single shot",	burst=1, burst_delay=2, move_delay=3, dispersion = list(0.9, 1.0, 1.0, 1.0, 1.1)),
		list(name="short bursts",	burst=5, burst_delay=2, move_delay=6, dispersion = list(0.9, 1.0, 1.0, 1.0, 1.1)),
		list(name="long bursts",	burst=8, burst_delay=2, move_delay=8, dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	sel_mode = 2

/obj/item/weapon/gun/projectile/automatic/pkm/update_icon()
	if(ammo_magazine)
		icon_state = "dp"
		if(wielded)
			item_state = "dp-w"
		else
			item_state = "dp"
	else
		icon_state = "dp0"
		if(wielded)
			item_state = "dp-w"
		else
			item_state = "dp0"
	update_held_icon()
	return

/obj/item/weapon/gun/projectile/automatic/l6_saw
	accuracy = DEFAULT_MG_ACCURACY
	scoped_accuracy = DEFAULT_MG_SCOPED_ACCURACY

/obj/item/weapon/gun/projectile/automatic/l6_saw/m240
	name = "M240"
	caliber = "a762x51"
	max_shells = 100
	magazine_type = /obj/item/ammo_magazine/a762/m240


/obj/item/weapon/gun/projectile/automatic/val
	name = "\improper AS Val"
	desc = "A durable, efficient weapon."
	icon_state = "val_loaded"
	item_state = "val_loaded"
	load_method = MAGAZINE
	slot_flags = SLOT_BACK
	w_class = 4
	caliber = "a9x39"
	fire_sound = 'sound/weapons/val.ogg'
	magazine_type = /obj/item/ammo_magazine/a9x39
	silenced = TRUE
	can_wield = TRUE
	accuracy = DEFAULT_MG_ACCURACY
	scoped_accuracy = DEFAULT_MG_SCOPED_ACCURACY+1
	//must_wield = TRUE

/obj/item/weapon/gun/projectile/automatic/val/update_icon()
	if(ammo_magazine)
		icon_state = "val_loaded"
		if(wielded)
			item_state = "val_loaded_wielded"
		else
			item_state = "val_loaded"
	else
		icon_state = "val_empty"
		if(wielded)
			item_state = "val_empty_wielded"
		else
			item_state = "val_empty"
	update_held_icon()
	return

/obj/item/weapon/gun/projectile/automatic/mg34
	name = "MG-34"
	desc = "German light machinegun chambered in 7.92x57mm Mauser. An utterly devastating support weapon."
	icon_state = "l6closed100"
	item_state = "l6closedmag"
	w_class = 4
	force = 10
	max_shells = 50
	caliber = "a792x57"
	slot_flags = SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a792x57
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/a762
	unload_sound 	= 'sound/weapons/guns/interact/lmg_magout.ogg'
	reload_sound 	= 'sound/weapons/guns/interact/lmg_magin.ogg'
	cocked_sound 	= 'sound/weapons/guns/interact/lmg_cock.ogg'
	fire_sound = 'sound/weapons/guns/fire/lmg_fire.ogg'
	requires_two_hands = FALSE
	wielded_icon = "assault-wielded"
	accuracy = DEFAULT_MG_ACCURACY+1
	scoped_accuracy = DEFAULT_MG_SCOPED_ACCURACY+1

	firemodes = list(
		list(name="short bursts",	burst=5, move_delay=6, dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(name="long bursts",	burst=8, move_delay=8, dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	var/cover_open = FALSE

/obj/item/weapon/gun/projectile/automatic/mg34/special_check(mob/user)
	if(cover_open)
		user << "<span class='warning'>[src]'s cover is open! Close it before firing!</span>"
		return FALSE
	return ..()

/obj/item/weapon/gun/projectile/automatic/mg34/proc/toggle_cover(mob/user)
	cover_open = !cover_open
	user << "<span class='notice'>You [cover_open ? "open" : "close"] [src]'s cover.</span>"
	update_icon()

/obj/item/weapon/gun/projectile/automatic/mg34/attack_self(mob/user as mob)
	if(cover_open)
		toggle_cover(user) //close the cover
		playsound(loc, 'sound/weapons/guns/interact/lmg_close.ogg', 100, TRUE)
	else
		return ..() //once closed, behave like normal

/obj/item/weapon/gun/projectile/automatic/mg34/attack_hand(mob/user as mob)
	if(!cover_open && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
		playsound(loc, 'sound/weapons/guns/interact/lmg_open.ogg', 100, TRUE)
	else
		return ..() //once open, behave like normal

/obj/item/weapon/gun/projectile/automatic/mg34/update_icon()
	icon_state = "l6[cover_open ? "open" : "closed"][ammo_magazine ? round(ammo_magazine.stored_ammo.len, 25) : "-empty"]"

/obj/item/weapon/gun/projectile/automatic/mg34/load_ammo(var/obj/item/A, mob/user)
	if(!cover_open)
		user << "<span class='warning'>You need to open the cover to load [src].</span>"
		return
	..()

/obj/item/weapon/gun/projectile/automatic/mg34/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_open)
		user << "<span class='warning'>You need to open the cover to unload [src].</span>"
		return
	..()