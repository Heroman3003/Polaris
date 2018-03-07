/obj/item/weapon/circuitboard/mining_unloading
	name = T_BOARD("unloading machine")
	build_path = /obj/machinery/mineral/unloading_machine
	board_type = new /datum/frame/frame_types/machine
	matter = list(DEFAULT_WALL_MATERIAL = 50, "glass" = 50)
	req_components = list(
							/obj/item/weapon/stock_parts/manipulator = 1,
							/obj/item/weapon/stock_parts/motor = 1,
							/obj/item/weapon/stock_parts/gear = 1)

/obj/item/weapon/circuitboard/mining_processing
	name = T_BOARD("material processor")
	build_path = /obj/machinery/mineral/processing_unit
	board_type = new /datum/frame/frame_types/machine
	matter = list(DEFAULT_WALL_MATERIAL = 50, "glass" = 50)
	req_components = list(
							/obj/item/weapon/stock_parts/micro_laser = 2,
							/obj/item/weapon/stock_parts/manipulator = 1,
							/obj/item/weapon/stock_parts/motor = 1)


/obj/item/weapon/circuitboard/mining_stacking
	name = T_BOARD("stacking machine")
	build_path = /obj/machinery/mineral/stacking_machine
	board_type = new /datum/frame/frame_types/machine
	matter = list(DEFAULT_WALL_MATERIAL = 50, "glass" = 50)
	req_components = list(
							/obj/item/weapon/stock_parts/motor = 1,
							/obj/item/weapon/stock_parts/gear = 1,
							/obj/item/weapon/stock_parts/spring = 2)