/obj/stackspawner //this doesn't need to do anything but make the stack and die so it's light
	name = "Stack spawner"
	desc = "This item spawns a stack of specific amount of a given material."
	icon = 'icons/misc/mark.dmi'
	icon_state = "x4"
//	var/material = ""
	var/obj/item/stack/type_to_spawn = null
	var/amount_to_spawn = 0
	var/spawn_max = 0

/obj/stackspawner/New()
	spawn()
		//spawns the 50-stack and qdels self
		..()
		if(istype(src.loc, /obj/structure/loot_pile)) //Spawning from a lootpile is weird, need to wait until we're out of it to do our work.
			while(istype(src.loc, /obj/structure/loot_pile))
				sleep(1)
	//	var/obj_path = text2path("/obj/item/stack/[material]")
		var/obj/item/stack/M = new type_to_spawn(src.loc)
		if(spawn_max)
			M.amount = M.max_amount
		else
			M.amount = amount_to_spawn
		M.update_icon() // Some stacks have different sprites depending on how full they are.
		qdel(src)

/obj/stackspawner/cardboard/ten
	name = "stack of cardboard"
	type_to_spawn = /obj/item/stack/material/cardboard
	amount_to_spawn = 10