if not OP then OP = {} end
if not OP.Global then OP.Global = {} end
if not OP.Global.Locales then OP.Global.Locales = {} end
if not OP.Global.Locales.Languages then OP.Global.Locales.Languages = {} end

-- AUTO LOCALES: 8 (do not change)

OP.Global.Locales.Languages["meme-gungan"] = {
	-- configuration settings for language
	largeNumberSeparator = ",", -- with it set as ",", 1000000 -> 1,000,000 in a lot of labels
	floatSeparator = ".", -- with it set as ".", (25 + (1/5)) -> 25.2
	useMetric = false,

	-- locales shared between all resources
	shared = {
		system = "System",
		warning = "Warning",
		invalid_input = "Meesa no understand.",
		missing_input = "Meesa need more information.",
		player_not_found = "Meesa no find player with server ID `${serverId}`.",
		something_went_wrong = "Something went wrong. Please try again.",
		yes = "Yosa",
		no = "No-no"
	},

	-- animations/*
	emotes = {
		get_in_trunk = "Press ~INPUT_ENTER~ to enter trunk.",
		put_boombox_in_trunk = "Press ~INPUT_ENTER~ to put boombox in the trunk.",
		put_player_in_trunk = "Press ~INPUT_ENTER~ to put the player in the trunk.",
		put_player_in_seat = "[${VehicleEnterKey}] Place in Seat",
		trunk_interaction_display = "[${VehicleEnterKey}] Climb Out [${InteractionKey}] Open/Close Trunk",
		trunk_open_close_display = "[${InteractionKey}] Open/Close Trunk",
		boombox_already_in_trunk = "Mesa already gotna boombox in da trunk.",
		the_trunk_is_occupied = "Da trunk issen full.",
		unable_to_toggle_carry = "Wait a bit before ya toggle da carry.",
		carry_disabled_animal = "Ya can't carry dem animal peds.",

		cancel_piggyback = "Press ~INPUT_FRONTEND_RRIGHT~ ta stop piggybackin'.",
		piggyback_hop_on = "[${InteractionKey}] Hop on mesa back.",
		stop_piggyback = "Meesa sugggesta press ~INPUT_VEH_HEADLIGHT~ to stop piggybackin'.",

		lockpicking_cuffs = "Lockpickin' Cuffs",
		lockpick_cuffs_too_fast = "Yousa moved too fast.",
		success_lockpick_cuffs = "Yousa successfully lockpicked the cuffs.",
		failed_lockpick_cuffs = "Failed to lockpick the cuffs.",
		lockpick_lost = "Yousa lost your lockpick.",

		not_cuffed = "Yousa not cuffed.",
		unable_to_lockpick = "Yousa unable to lockpick the cuffs.",

		lockpick_cuffs_logs_title = "Lockpicked Handcuffs",
		lockpick_cuffs_logs_details = "${consoleName} successfully lockpicked their cuffs using a `${itemName}`.",

		you_are_not_being_carried = "Yousa not bein' carried right now.",
		successfully_uncarried = "Successfully stopped bein' carried.",
		failed_uncarried = "Mesa sorry, failed to stop bein' carried.",
		uncarry_missing_permissions = "Yousa no havin' da permission to stop bein' carried.",

		uncarry_logs_title = "Stop Carry Force",
		uncarry_logs_details = "${consoleName} forced ${targetName} to stop carryin' dem.",

		failed_carry_npc = "Mesa sorry, failed to carry dat NPC.",
		carry_npc_something_wrong = "Uh oh! Something went wrong while trying to carry da ped.",

		e_to_struggle = "Pressa E to Struggle",
		cant_struggle_dead = "Yousa can'ta struggle when dead.",
		struggle_to_quick = "Yousa are feeling exhausted after yousa justa struggled, wait a bit and try again.",
		struggle_logs_title = "Struggled Free",
		struggle_logs_details = "${consoleName} struggled free out of ${targetName} carrying them."
	},

	-- base/*
	admin = {
		feature_toggle_not_admin = "Attempted to toggle their own or someone else's '${featureName}', but didn't have proper permissions to do so.",
		feature_toggle_activated_logs_title = "Remotely Toggled Feature",
		feature_toggle_activated_logs_details_state = "${consoleName} mesa toggle `${featureName}` ${newState} por playa ${targetConsoleName}.",
		feature_toggle_activated_all_logs_title = "Remotely Toggled Feature For Everyone",
		feature_toggle_activated_all_logs_details = "${consoleName} mesa toggle `${featureName}` por todos.",
		feature_toggle_activated_self_logs_title = "Toggled Feature",
		feature_toggle_activated_self_on_logs_details = "${consoleName} mesa toggle `${featureName}` on pa meesa mismo.",
		feature_toggle_activated_self_off_logs_details = "${consoleName} mesa toggle `${featureName}` off pa meesa mismo.",
		feature_toggle_success = "Moozed ${featureName} fur ${consoleName}.",
		feature_toggle_success_all = "Moozed ${featureName} fur everyone.",
		feature_toggle_failed = "Failed to moose ${featureName} fur server ID ${serverId}.",
		feature_toggle_success_on = "Moozed ${featureName} on fur ${consoleName}.",
		feature_toggle_success_off = "Moozed ${featureName} off fur ${consoleName}.",

		noclip_toggle_activated_self_logs_title = "Noclip Moozed",
		noclip_toggle_activated_self_on_logs_details = "${consoleName} moozed noclip on at position `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`. (In vehicle: ${inVehicle})",
		noclip_toggle_activated_self_off_logs_details = "${consoleName} mesa toggle noclip off at position `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`.",

		model_name_not_provided = "No mesa name passed.",
		model_name_invalid = "Mesa name `${modelName}` issa invalid.",
		failed_to_spawn_vehicle = "Failed to execute da `/spawn_vehicle` command correctly.",
		spawned_vehicle_for_player = "Successfully spawned `${modelName}` for ${consoleName}.",
		spawned_vehicle_for_everyone = "Successfully spawned `${modelName}` for everyone.",
		spawn_vehicle_for_player_not_staff = "Meesa thinks dis player tryin to spawn a vehicle fo anotha playa but dey no gotsa da permission to do dat.",
		spawn_vehicle_for_self_not_staff = "Meesa thinks dis player tryin to spawn a vehicle fo demself but dey no gotsa da permission to do dat.",
		replace_vehicle_no_permissions = "Player tryin to replace dey vehicle but dey no gotsa da permission to do dat.",
		create_vehicle_no_permissions = "Player tryin to make a vehicle but dey no gotsa da permission to do dat.",
		spawned_vehicle_for_self_title = "Mesa Guna Anoka",
		spawned_vehicle_for_self_details = "${consoleName} maloka una mesa gungan anoka na nomba modelo `${modelName}`.",
		spawned_vehicle_for_player_title = "Mesa Guna Anoka para el jugador",
		spawned_vehicle_for_player_details = "${consoleName} maloka una mesa gungan anoka na nomba modelo `${modelName}` para el jugador ${targetConsoleName}.",
		spawned_vehicle_for_everyone_title = "Mesa Guna Anoka para todos",
		spawned_vehicle_for_everyone_details = "${consoleName} maloka una mesa gungan anoka na nomba modelo `${modelName}` para todos.",

		vehicle_created = "Messaged Naboo: Successfully created vehicle.",
		failed_vehicle_creation = "Failed to create vehicle. Mesa sorry.",

		invalid_amount = "Mesa no understand. Invalid amount.",

		added_cash_title = "Dolla Added",
		added_cash_details = "${consoleName} add $${amount} dolla.",
		added_cash_to_player_title = "Dolla Added to Pals",
		added_cash_to_player_details = "${consoleName} add $${amount} dolla to ${targetConsoleName}.",
		added_cash_to_everyone_title = "Dolla Added to Everyone",
		added_cash_to_everyone_details = "${consoleName} add $${amount} dolla to everyone.",

		removed_cash_title = "Mesa Removin' Cash",
		removed_cash_details = "${consoleName} mesa removin' $${amount} cash.",
		removed_cash_from_player_title = "Mesa Removin' Cash From Player",
		removed_cash_from_player_details = "${consoleName} mesa removin' $${amount} cash from ${targetConsoleName}.",
		removed_cash_from_everyone_title = "Mesa Removin' Cash To Everyone",
		removed_cash_from_everyone_details = "${consoleName} mesa removin' $${amount} cash from evry and all.",

		added_bank_title = "Mesa Addin' Bank",
		added_bank_details = "${consoleName} mesa addin' $${amount} bank.",
		added_bank_to_player_title = "Gaveen yusa kaa Bank",
		added_bank_to_player_details = "${consoleName} mesa yusa kaa $${amount} Bank tuh ${targetConsoleName}.",
		added_bank_to_everyone_title = "Gaveen yusa kaa Bank tuh Everyone",
		added_bank_to_everyone_details = "${consoleName} mesa yusa kaa $${amount} Bank tuh everyone.",

		removed_bank_title = "Removed Bank",
		removed_bank_details = "${consoleName} mesa tuh saarp $${amount} Bank.",
		removed_bank_from_player_title = "Saarp Bank from Kaa User",
		removed_bank_from_player_details = "${consoleName} mesa tuh saarp $${amount} Bank from ${targetConsoleName}.",
		removed_bank_from_everyone_title = "Yousa removed Bank from everyone!",
		removed_bank_from_everyone_details = "${consoleName} removed $${amount} bank from everyone.",

		added_cash = "Added $${amount} cash.",
		added_cash_to_player = "Added $${amount} cash to ${targetConsoleName}.",
		added_cash_to_everyone = "Added $${amount} cash to everyone.",

		removed_cash = "Removed $${amount} cash.",
		removed_cash_from_player = "Removed $${amount} cash from ${targetConsoleName}.",
		removed_cash_from_everyone = "Removed $${amount} cash from everyone.",

		added_bank = "Mesa added $${amount} bank.",
		added_bank_to_player = "Mesa added $${amount} bank to ${targetConsoleName}.",
		added_bank_to_everyone = "Mesa added $${amount} bank to everyone.",

		removed_bank = "Mesa removed $${amount} bank.",
		removed_bank_from_player = "Mesa removed $${amount} bank from ${targetConsoleName}.",
		removed_bank_from_everyone = "Mesa removed $${amount} bank from everyone.",

		money_event_not_admin = "Mesa attempted to toggle money event `${moneyEvent}`.",

		spawned_item_title = "Mess-en item",
		spawned_item_details = "${consoleName} spawned in ${amount}x `${itemName}` for themselves.",
		spawned_item_for_player_title = "Spawned Item For Gungan",
		spawned_item_for_player_details = "${consoleName} spawned in ${amount}x `${itemName}` for ${targetConsoleName}.",
		spawned_item_for_everyone_title = "Spawned Item For Everyone",
		spawned_item_for_everyone_details = "${consoleName} spawned in ${amount}x `${itemName}` for everyone.",

		report_title = "APPIPPE-${reportId} ${reporterName}",
		report_logs_title = "Kweffa",
		report_logs_details = "${consoleName} created report ${reportId} with the following message: `${reportMessage}`",

		announcement_staff_title = "Meesa announcement for staff",
		announcement_server_title = "Meesa announcement for server",

		announcement_logs_title = "Server-wide announcement",
		announcement_logs_details = "${consoleName} broadcast the following message to all: `${announcementMessage}`",
		announcement_not_admin = "You no have power to post staff announcement. Sorry!",

		announcement_maintenance = "Server will be going down in ${minutes} minutes for maintenance.",
		announcement_update = "Server will be going down in ${minutes} minutes for update.",
		announcement_restart = "Mesa-sa server goin' down in ${minutes} minutes for a restart.",

		posted_announcement = "Posted announcement message.",
		posted_announcement_locale = "Posted announcement message from locale.",
		failed_to_post_announcement = "Failed to post announcement message as no message was added.",
		failed_to_post_announcement_locale = "Failed to post announcement message as the announcement locale added is not supported.",

		staff_title = "STAFF ${staffName}",
		staff_message_logs_title = "Staff Message",
		staff_message_logs_details = "${consoleName} mesa-sent da mesa-age in da staff mesa-chat: `${staffMessage}`",
		staff_message_illegal = "Mesa thinks dat player no be staff, but be attempted mesa-sending mesa-message in da staff mesa-chat.",

		staff_pm_title = "STAFF PM ${transmissionTitle}",
		staff_pm_logs_title = "Staff PM",
		staff_pm_logs_details = "${senderConsoleName} mesa-sent da mesa-message to ${recipientConsoleName}: `${staffPrivateMessage}`",
		staff_pm_not_logged_in = "Yousa no be logged in.",
		staff_pm_not_user_not_found = "Mesa no find user with server ID ${serverId}.",
		staff_pm_not_recipient_not_staff = "Meesa sorrow, but da player yousa tryin to send mesa message to issa not a staff member.",
		staff_pm_unable_to_message_self = "Yousa not able to mesaage yourself, okeday?",
		staff_pm_warning = "Staff PM Warning",
		staff_pm_first_time = "Mesa sees yousa neva used staff PMs before. To mesaage back, use da /staffpm command.",

		external_staff_message = "External Staff Message",
		external_staff_message_from_player = "External Staff Mesaage From ${playerName}",
		external_staff_message_content = "${staffMessage} (Yousa can not respond to dissen message.)",

		unable_to_staff_message_yourself = "Meesa unable to staff message mesa self.",
		message_sent = "Message sent.",
		player_not_found = "Player no bombad found.",
		missing_valid_target_source_parameter = "Missing a valid 'target source' parameter.",
		missing_valid_message_parameter = "Missing a valid 'message' parameter.",

		invalid_coordinates = "Invalid x, y, z or w coordinates submitted.",
		player_not_loaded_character = "Player does not have a character loaded.",
		teleport_successful = "Teleported player successfully.",

		player_revived_success = "Meesa revived player successfully.",

		missing_valid_license_identifier_parameter = "Missing a valid 'licenseIdentifier' parameter.",

		illegal_entity_wipe = "Player attempted to wipe entities, but didn't have permissions.",
		wiped_entities = "Wiped Entities",
		wipe_entities_logs_title = "Wiped Entities",
		wipe_entities_logs_details = "${consoleName} mesa issued an entity wipe with da following configuration: distance = `${distance}`, ignoreLocalEntities = `${ignoreLocalEntities}`, modelName = `${modelName}`",

		wipe_awaiting_confirmation = "Yousa now goin' tada wipe an' waitin' for da confirmation. Type `yes` of `no` to confirm or cancel it (it be expirin' in 60 seconds).\n\nDa chosen parameters are:\n- distance: `${distance}`\n- ignoreLocalEntities: `${ignoreLocalEntities}`\n- modelName: `${modelName}`",
		wipe_awaiting_big_title = "Wipe Distance Warning",
		wipe_awaiting_confirmation_big = "**Hey, yousa about to wipe a very large area, pleaase makesa sure dat dis be what yousa intended to do!**\nType `yes` of `no` to confirm or cancel it (it be expirin' in 60 seconds).\n\n- distance: `${distance}`\n- ignoreLocalEntities: `${ignoreLocalEntities}`\n- modelName: `${modelName}`",
		cancelled_wipe = "Mesa say de wipe nosen be goin' to happun no mo'.",

		there_is_people_nearby = "Deren playas closeby dat kin see you usin' da 'noclip' powah!",

		cant_while_spectating = "Yousa can't do dis while spectating.",

		you_have_been_kicked = "Yousa bin kicked by ${kicker} coz of `${reason}`.",
		you_have_been_kicked_no_reason = "Yousa bin kicked by ${kicker} without a reason giben.",

		logs_player_kicked_title = "Player Kicked",
		logs_player_kicked_details = "${consoleName} has been kicked from da server by ${kicker} coz of `${reason}`.",
		logs_player_kicked_no_reason_details = "${consoleName} has been kicked from da server by ${kicker} without a reason giben.",

		you_have_been_banned = "Ooh! Yousa bin banned by ${banner} fo reason `${reason}`.",
		you_have_been_banned_no_reason = "Ooh! Yousa bin banned wesaout a specified reason by ${banner}.",

		banner_name_generic = "a Staff Member", --You may keep this as it is, "a Staff Member",

		ban_alert_title = "Banished from Da Server",
		ban_alert_description_banner = "Youza would have been automatically banished by ${banner} for mesa ${reason}.",
		ban_alert_description = "Yousa would have been automatically banned by the system fo reason `${reason}`.",

		logs_player_banned_title = "Player Banned",
		logs_player_banned_system_title = "Player Banned by System",
		logs_player_banned_details = "${consoleName} has been banned from the server by ${banner} fo reason `${reason}`.",
		logs_player_banned_no_reason_details = "${consoleName} been banned from the server by ${banner} with no specified reason. Mesa tonk it wisa an gooba-galaxy.",

		player_kicked = "${consoleName} has been kicked from the server. Mesa ganna pushu outta da server.",
		player_banned = "${consoleName} been banned from the server. Mesa ban unita.",

		ban_double_kill = "Double Kill! Ouch! 😵😵",
		ban_triple_kill = "😧 Triple Kill!!! Oh no!",
		ban_quadrouple_kill = "😨 QUADROUPLE KILL!!!!!! Painful death!",
		ban_killing_spree = "🤯 KILLING SPREE (${count})!!!!!! Mesa cant take it anymore! Aaaaa!",

		kick_player_not_staff = "Attempted to kick a player without proper permissions. Mesa no lika dis. Ban dem if they messa round like dis again.",
		ban_player_not_staff = "Mesa not allowen to ban a playa witout da propa permissions.",

		hide_staff_not_staff = "Mesa not allowen to hide mesa staff status witout da propa permissions.",
		toggle_staff_not_staff = "Mesa not allowen to toggle mesa staff availability witout da propa permissions.",

		logs_hide_staff_title = "Staffa gone hide",
		logs_hide_staff_hidden_details = "${consoleName} has made their staffa status hidden.",
		logs_hide_staff_shown_details = "${consoleName} has made their staffa status show.",

		logs_toggle_staff_title = "Staffa Toggle",
		logs_toggle_staff_off_details = "${consoleName} mesa lissen off da.staff availability.",
		logs_toggle_staff_on_details = "${consoleName} mesa lissen on da.staff availability.",

		staff_hidden = "Yousa staff status has now been hidden.",
		staff_shown = "Yousa staff status is now shown.",
		staff_toggled_on = "Yousa staff availability has been toggled on.",
		staff_toggled_off = "Yousa staff availability has been toggled off.",

		staff_feature_unavailable = "Disa feature is unavailable while yousa staff availability is toggled off.",

		failed_toggle_tracker = "Jar Jar Binks says: Mesa sorry, mesa no able to toggle player tracker.",
		unable_track_player = "Jar Jar Binks says: Mesa sorry, mesa no able to track dissa player.",
		success_enable_tracker = "Jar Jar Binks says: Mesa successflully enabled player tracker for `${playerName}`.",
		success_disable_tracker = "Jar Jar Binks says: Mesa successflully disabled player tracker.",
		not_tracking_player = "Jar Jar Binks says: Yousa no trackin' a player.",
		already_tracking_player = "Jar Jar Binks says: Yousa already trackin' a player.",

		toggle_player_track_no_permissions = "Jar Jar Binks says: Mesa no can toggle player trackin' without proper permissions.",
		set_job_no_permissions = "Jar Jar Binks says: Mesa no can set a job without proper permissions.",
		toggle_reflection_no_permissions = "Meesa tried to toggle damage reflection mesaout proper permissions.",

		success_enable_reflection = "Reflection mesa enabled successfully.",
		success_disable_reflection = "Reflection mesa disabled successfully.",
		failed_toggle_reflection = "Meesa failed to toggle reflection.",

		reflection_logs_title = "Reflection Toggled",
		reflection_logs_enabled_details = "${consoleName} has toggled reflection on.",
		reflection_logs_disabled_details = "${consoleName} has toggled reflection off.",

		headache_logs_title = "Triggered Headache",
		headache_logs_details = "${consoleName} has triggered a headache for ${targetConsoleName}.",
		trigger_headache_no_permissions = "Mesa sorry, but yousa no have da right permissions to triggah a headache.",

		success_trigger_headache = "Successfully triggered a headache for ${playerName}.",
		failed_trigger_headache = "Mesa no able to triggah da headache, mesa sorry.",

		protective_mode_not_staff = "Mesa no allowed togey toggly server protective mode without da grand big boss's permissions, okeyday?",
		protective_mode_toggled_on = "Yousa mesa happy to tell that server protective mode have been enabled. Da required amount of playtime to connect to da server is now set to `${playtime}`.",
		protective_mode_toggled_off = "Server protective mode has now been disabled.",
		protective_mode_already_on = "Mesa sorry, but server protective mode already been enabled with required playtime at `${playtime}`.",
		protective_mode_already_off = "Mesa sorry, but server protective mode already been disabled.",
		logs_protective_mode = "Gungan Okey Day! MuiMesa take carisa!",
		logs_protective_mode_on = "${consoleName} toggled the server protective mode on with required playtime: `${playtime}`. MuiMesa happy for the extra protection.",
		logs_protective_mode_off = "${consoleName} toggled the server protective mode off. MuiMesa no need be protective for now.",

		spawn_item_not_staff = "Mooey Mooey... Attempted to spawn an item without proper permissions.",
		no_item_name = "Exsqueeze me... No item name provided.",
		invalid_item_name = "${itemName} is not a valid item name. TisnoTisno.",
		item_spawned = "Spawned ${amount}x `${itemName}` for ${consoleName}. MuiMesa proud to be helping.",
		item_spawned_for_everyone = "Meesa spawned ${amount}x `${itemName}` for everyone.",

		set_warning_message_not_staff = "Meesa no have da proper permissions to set da server's warning message.",
		warning_message_set_to = "Da warning message has been set to `${warningMessage}`.",
		warning_message_removed = "Da warning message been removed.",
		warning_message_error = "An error occurred while trying to set da warning message.",
		warning_message_identical = "Yousa unable to set da warning message to what it already is set to.",
		warning_message_set_to_title = "Warnishing Mesaage Sa Ganna",
		warning_message_set_to_details = "${consoleName} issa setteeng da warnishing mesaage to `${warningMessage}`.",
		warning_message_removed_title = "Warnishing Mesaage Removed",
		warning_message_removed_details = "${consoleName} hassa removed da warnishing mesaage.",

		indestructibility_on = "Toggled 'Indestructibility' On.",
		indestructibility_off = "Toggled 'Indestructibility' Off.",
		speed_boost_on = "Toggled 'Speed Boost' On.",
		speed_boost_off = "Toggled 'Speed Boost' Off.",
		nitro_boost_on = "Bink! 'Nitro Boost' boompa on.",
		nitro_boost_off = "Bink! 'Nitro Boost' boompa off.",
		no_nearby_vehicles_on = "Bink! 'No Nearby Vehicles' boompa on.",
		no_nearby_vehicles_off = "Bink! 'No Nearby Vehicles' boompa off.",
		speed_up_progress_bar_on = "Bink! 'Speed Up Progress Bar' boompa on.",
		speed_up_progress_bar_off = "Bink! 'Speed Up Progress Bar' boompa off.",
		invisibility_on = "Bink! 'Invisibility' boompa on.",
		invisibility_off = "Bink! 'Invisibility' boompa off.",
		wallhack_on = "Bink! 'Wallhack' boompa on.",
		wallhack_off = "Bink! 'Wallhack' boompa off.",
		aimbot_on = "Mesa 'Aimbot' crone!",
		aimbot_off = "Mesa 'Aimbot' chinka!",
		player_bones_on = "Mesa 'Player Bones' crone!",
		player_bones_off = "Mesa 'Player Bones' chinka!",
		vehicle_smoke_on = "Mesa 'Vehicle Smoke' crone!",
		vehicle_smoke_off = "Mesa 'Vehicle Smoke' chinka!",

		peeking_on = "Mesa peekin mode crone!",
		peeking_off = "Mesa peekin mode chinka!",

		watching_on = "Mesa watchin mode crone!",
		watching_off = "Mesa watchin mode chinka!",
		watching_label = "Watchin: ${nearby}",

		evidence_view_on = "Mesa evidence view crone!",
		evidence_view_off = "Yeedle evidence view offen.",
		evidence_view_title = "Togglen Evidence Viewen",
		evidence_view_details_on = "${consoleName} toggleden theen advanceden evidence viewen onn.",
		evidence_view_details_off = "${consoleName} toggleden theen advanceden evidence viewen offen.",

		report_muted_no_reason = "Yousa been muted fromen da report commando withouten a specified reasoning.",
		report_muted = "Yousa been muted fromen da report commando for reason ${reason}.",

		already_sending_report = "Yousa already senden a reporten. Pleasesa waiten.",
		unable_to_send_identical_report = "Mesa no kunne senda dosa sama raporta depoida unu altra.",

		already_sending_staff_message = "Mesa alredi sendin' un mensa para alguien del staff. Por favor, espera.",
		unable_to_send_identical_staff_message = "Mesa no kunne senda dosa sama mensas para alguien del staff depoida unu altra dentro de 30 segonds.",

		tp_coords_invalid_coordinates = "Mesa no comprende esas coordenadas.",
		tp_coords_teleported_to_coordinates = "Teleportada a las coordenadas X: ${x}, Y: ${y}, Z: ${z}.",

		teleported_to_waypoint = "Teleportada al waypoint en ${locationLabel}.",
		no_waypoint_set = "Yousa have to setta a waypointa.",

		teleported_to_coordinates_logs_title = "Teleported To Coordinates",
		teleported_to_coordinates_logs_details = "${consoleName} teleported to coordinates X: ${x}, Y: ${y}, Z: ${z}.",
		teleported_to_waypoint_logs_title = "Teleported To Waypoint",
		teleported_to_waypoint_logs_details = "${consoleName} teleported to a waypoint at ${locationLabel}.",

		teleport_to_coordinates_not_staff = "Da player attempted to teleport to somesa coordinates but they wassen not staff.",
		teleport_to_waypoint_not_staff = "Da playa attempted to teleport to a waypoint but dey were not staff.",

		failed_isolate = "Failed to isolate playa.",
		invalid_server_id = "Invalid server id.",
		isolate_success_on = "Successfully isolated ${consoleName}.",
		isolate_success_off = "Successfully stopped isolating ${consoleName}.",

		isolate_missing_permissions = "Playa attempted to isolate another playa without proper permissions.",

		population_density_set_to = "Da population density multiplier override has been set to ${multiplierLabel}%.",
		population_density_set_off = "Da populashun density multipli'r overrida has beena turned off.",
		population_density_is_not_on = "Da populashun density multipli'r overrida issa not on.",
		population_density_already_set_to = "Da populashun density multipli'r overrida issa already set to ${multiplierLabel}%.",

		population_density_not_super_admin = "Playa attempted to set da populashun density without propa permissions.",

		enabled_features_list = "Enabl'd Featur's:",
		aimbot_feature = "Aimbot",
		disabled_collisions_feature = "Disabl'd Collisions",
		disabled_recoil_feature = "Moo-noo Recoil",
		evidence_view_feature = "Evidence Voo",
		hit_indicator_feature = "Hit-indicatoo",
		indestructibility_feature = "Indestructiboo",
		infinite_ammo_feature = "Infinite Ammo",
		invisibility_feature = "Invisibilitoo",
		muted_sirens_feature = "Moo-noo Sirens",
		nitro_boost_feature = "Nitro Boost",
		no_nearby_vehicles_feature = "No Nearby Vehicles",
		peeking_feature = "Peeking",
		roll_control_feature = "Roll Control",
		speed_boost_feature = "Speed Boost",
		speed_up_progress_bar_feature = "Speed Up Progress Bar",
		sticky_feet_feature = "Sticky Feet (Jegan)",
		wallhack_feature = "Wallhack (Lifa)",
		watching_feature = "Watching (Unga)",
		fortnite_feature = "Fortnite (Fugu)",
		reflection_feature = "Damage Reflection",
		stable_cam_feature = "Stable Cam",

		you_are_not_in_a_vehicle = "Meesa no in a vehicle.",
		repaired_vehicle = "Meesa fixa vehicle.",

		success_nos_refill = "Meesa successfully refilla NOS.",
		failed_nos_refill = "Meesa no can refilla NOS.",

		refill_nitro_missing_permissions = "Player tried to refilla NOS without proper permissions.",

		register_invalid_character_id = "Meesa sorry, invalid character id.",
		register_invalid_slot = "Meesa sorry, invalid inventory slot.",
		register_weapon_success = "Mesa successfully registered da weapon in mesa slot ${slotId} to character wid character id ${cid}.",
		register_weapon_failed = "Mesa failed to register weapon.",

		register_weapon_missing_permissions = "Da playa attempted to register a weapon without da proper permissions. Moole-ru!",

		vehicle_smoke_invalid_class = "Vehicle smoke no can be enabled fo dis vehicle class. Oke-day?",

		repair_vehicle_not_super_admin = "Da playa attempted to repair a vehicle without da proper permissions. Biiiiiig problem!",

		repaired_vehicle_logs_title = "Repaired Vehicle logs",
		repaired_vehicle_logs_details = "${consoleName} repaired da vehicle theys be in.",

		unable_to_enter_vehicle_while_dead = "Yousa unable to enter a vehicle while dead.",
		the_closest_vehicle_had_no_free_seats = "Da closest vehicle had no free seats.",
		there_are_no_nearby_vehicles = "There are no nearby vehicles.",
		vehicle_not_found_network = "Meesa no findin da vehicle wit dat network id.",
		entered_vehicle = "Attempted to enter nearby ${vehicleName}.",

		set_vehicle_modifications_logs_title = "Set Vehicle Modifications",
		set_vehicle_modifications_logs_details = "${consoleName} set vehicle modifications for a vehicle with da plate `${vehiclePlate}`. Da set modifications were: modType-${modType}, modIndex-${modIndex}, customTires-${customTires}.",

		set_vehicle_livery_logs_title = "Mesa Vehicle Livery",
		set_vehicle_livery_logs_details = "${consoleName} mesa livery ka vehicle na plate `${vehiclePlate}` ku `${liveryIndex}`.",

		set_livery_missing_permissions = "Bombad tried mesa livery ka vehicle without da proper permissions.",
		set_modifications_missing_permissions = "Bombad tried mesa modification ka vehicle without da proper permissions.",

		set_vehicle_modification = "Mesa modification mo vehicle for modification type `${modType}` ku index `${modIndex}`. (Custom Tires: ${customTires})",
		mod_index_invalid_for_type = "Mod indéx `${modIndex}` est invalid pour le type de mod `${modType}`.",
		mod_type_invalid = "Le type de mod `${modType}` est invalid.",
		no_mod_type_set = "Aucun type de mod défini.",

		set_vehicle_livery = "Définir le revêtement du véhicule sur `${liveryIndex}`.",
		no_livery_index_set = "Aucun index de revêtement défini (Minimum: 1).",
		you_are_not_the_driver = "Vous n'êtes pas le conducteur du véhicule.",
		vehicle_is_not_a_plane_or_heli = "Le véhicule n'est pas un avion ou un hélicoptère.",
		livery_index_invalid = "Index de revêtement invalid (Maximum: ${maxLiveries}).",
		vehicle_has_no_liveries = "Mesa no got noo liveries.",

		invalid_plate_number = "Meesa sa not be understanding that plate number.",
		set_fake_plate_number = "Set plate number for vehicle to `${plateNumber}`.",

		invalid_dirt_level = "Meesa not be understanding dis dirt level.",
		set_dirt_level = "Vehicle's dirt level was set to `${dirtLevel}`.",

		set_dirt_level_not_super_admin = "Dis plaaya not be having proper permissions to set the dirt level of a vehicle.",

		set_fake_plate_not_super_admin = "Dis plaaya not be having proper permissions to set the fake plate of a vehicle.",

		already_fake_disconnecting = "Yousa already attempting to fake disconnect. Please waita.",
		started_fake_disconnect = "Staated fake disconnect. Repeat da command to stop.",
		stopped_fake_disconnect = "Stopped fake disconnect.",

		fake_disconnect_not_super_admin = "Player attempted to fake disconnect without proper permissions.",

		disabled_idle_cam = "Disabled da idle cam.",
		enabled_idle_cam = "Re-enabled da idle cam.",

		created_vehicle_smoke_for_player_logs_title = "Created vehicle smoke.",
		created_vehicle_smoke_for_player_logs_details = "${consoleName} created vehicle smoke.",

		player_info_not_staff = "Yousa attempted to get a playa's characta information without propa permission.",
		player_info_title = "${consoleName}",
		player_info = "${fullName} #${characterId}\nHas ${playtime} played.\n${jobName}, ${departmentName}, ${positionName}\n\n${backstory}",

		inventory_name_missing = "Missing inventory name parametesa.",
		force_inventory_missing_perms = "Yousa attempted to force-open an inventory without propa permission.",

		auto_driving_engaged = "Auto driving has been engaged (Style: ${style}).",
		auto_driving_updated = "Yousa auto driving speed/location has been updated.",
		auto_driving_disengaged = "Auto driving has been disengaged.",
		not_auto_driving = "Yousa not auto driving.",
		invalid_auto_drive_speed = "Invalid or missing auto drive speed.",
		reset_auto_drive_speed = "Reset auto drive speed to default.",
		set_auto_drive_speed = "Set auto drive speed to ${speed} mph.",

		disable_collisions_on = "Yousa collisions are now disabled.",
		disable_collisions_off = "Yousa collisions are now enabled.",
		failed_toggle_collisions = "Failed to toggle disabled collisions.",

		disabled_recoil_on = "Meesa disable recoil.",
		disabled_recoil_off = "Meesa enable recoil.",

		attachment_missing = "Yousa missing attachment parameter.",
		no_weapon_equipped = "Yousa no weapon equipped.",
		attachment_invalid = "Attachment issa invalid or not available for dis weapon.",
		attachment_failed_toggle = "Meesa failed to toggle attachment on dis weapon.",
		attachment_on = "Meesa successfully toggled '${attachment}' attachment on dis weapon.",
		attachment_off = "Meesa successfully toggled '${attachment}' attachment off dis weapon.",

		tint_invalid = "Invalid weapon tint.",
		tint_range_invalid = "Mesa sorry, dis weapon tint range is invalid (has to be between 0 and ${max}).",
		tint_failed_set = "Mesa failed to set dis weapon tint.",
		tint_removed = "Mesa successfully removed weapon tint.",
		tint_set = "Mesa successfully set weapon tint to `${tint}` (${tintIndex}).",
		no_weapon_tint = "Dis weapon no have tints, wesa sorry.",

		weapon_attachment_missing_perms = "Mesa attempted to toggle a weapon attachment without proper permission, exsqueeze mesa.",
		weapon_tint_missing_perms = "Mesa attempted to set a weapon tint without proper permission, exsqueeze mesa.",

		no_attachments = "No Attachments, mesa sorry.",
		available_attachments = "Mesa hesa avaiable.",
		current_attachments = "Mesa hesa current.",
		no_attachments = "No Attachments, mesa sorry.",
		attachments_list = "Attachments:",
		tint_label = "Tint: \"${tintLabel}\" (${tintIndex})",

		item_name_failed_set = "Failed to set mesa item name.",
		item_name_removed = "Mesa item name removed.",
		item_name_set = "Mesa item name set to '${itemName}'.",
		item_name_invalid_slot = "Invalid or missing item slot.",

		cleaned_ped = "Mesa cleaned ${consoleName} ped successfully.",
		cleaned_ped_self = "Meesa succesfully cleanin' yousa ped.",
		clean_ped_failed = "Oopsie Jar Jar, meesa no able to clean yousa ped.",
		cleaned_ped_for_all = "Meesa succesfully cleanin' everyone's peds.",
		clean_ped_no_permission = "Meesa no havin' permission to clean a player's ped.",

		item_durability_set_success = "Meesa succesfully set durability to ${amount}% for items in slot ${slotId}.",
		item_durability_set_failed = "Oopsie Jar Jar, meesa no able to set durability.",
		item_durability_invalid_amount = "Invalid durability amount (0 <> 100).",
		item_durability_set_no_permission = "Meesa no havin' permission to set an item's durability.",

		item_metadata_set_no_permission = "Meesa tryin' to set an items metadata without da required permissions.",
		item_metadata_invalid_metadata = "Disa invalid item metadata.",
		item_metadata_set_success = "Mesa set metadata for items in slot ${slotId}. It's a success!",
		item_metadata_set_failed = "Mesa failed to set metadata.",

		advanced_metagame_on = "Advanced metagame toggled on.",
		advanced_metagame_off = "Advanced metagame toggled off.",

		identity_set = "Yousa set your identity as `${name}`. Great mesa!",
		identity_reset = "Yousa reset your identity successfully!",
		identity_set_failed = "Mesaen failed to set arisa identity.",
		identity_hud = "Identity: ${playerName}",

		set_identity_no_permission = "Yousa attempted to set yousa player namsa without de proper permissions.",

		invalid_range_parameter = "Invalid range parameter. Meesa no unnerstand.",
		wipe_first_owned_success = "Successfully deleted all ${amount} entities first owned by player with server id `${serverId}`.",
		wipe_first_owned_success_range = "Successfully deleted all ${amount} entities first owned by player with server id `${serverId}` in a ${range}m range.",
		wipe_first_owned_failed = "Meesa failed to delete entities first owned by playa with server id `${serverId}`.",

		invalid_radius_parameter = "Invalid radius (between 1 and 500).",
		scooped_up_players = "Meesa scooped up ${amount} playa(s).",
		scoop_invalid = "Yousa haven't scooped up any playas.",
		unscooped_players = "Unscooped ${amount} of ${total} playa(s).",
		unscoop_failed = "Meesa failed to unscoop playas.",

		unscoop_missing_permissions = "Playa attempted to unscoop without proper permissions.",

		toggle_collisions_missing_permissions = "Playa attempted to toggle their collisions without proper permissions.",
		wipe_first_owned_missing_permissions = "Meesa sorry, cannot wipe first owned creature witout permission.",

		freeze_missing_permissions = "Meesa sorry, cannot freeze or unfreeze another player witout permission.",

		freeze_success = "Meesa successfuly froze ${consoleName}.",
		failed_freeze = "Failed to freeze player. Oh no!",
		unfreeze_success = "Meesa successfuly unfroze ${consoleName}.",
		failed_unfreeze = "Failed to unfreeze player. Oh no!",

		freeze_logs_title = "Meesa froze player",
		freeze_logs_details = "${consoleName} froze ${targetName}.",
		unfreeze_logs_title = "Unfroze Gungan",
		unfreeze_logs_details = "${consoleName} unfroze ${targetName}.",

		slap_kill_reason = "Slapped",
		slap_success = "Meesa successfully slapped ${consoleName}.",
		slap_failed = "Meesa failed to slap player.",
		slap_logs_title = "Slapped Gungan",
		slap_logs_details = "${consoleName} slapped ${targetName}.",
		slap_missing_permissions = "Gungan attempted to slap another Gungan without proper permissions.",

		damaged_player = "Successfully damaged ${consoleName} for ${damage} damage.",
		damage_player_failed = "Failed to damage Gungan.",
		damage_player_logs_title = "Luktaka Oh Unfeeded",
		damage_player_logs_details = "${consoleName} ka luktaka oh ${targetConsoleName} meesasa ka ${damage}.",
		damage_player_missing_permissions = "Moltaka ka tayeka oh luktaka ka jawa jawa, olau chuba balalo ka diwanga la.",

		refill_nitro_logs_title = "Mookaasa Nitro",
		refill_nitro_logs_details = "${consoleName} takaasa nitro-ka meesasa.",

		isolated_logs_title = "Jawa Jawa Me Challwaasaa Oh Moltaka",
		isolated_off_logs_details = "${consoleName} miyaasa jawa jawa ka challwaasaa off oh ${targetName} meesasa.",
		isolated_on_logs_details = "${consoleName} miyaasa jawa jawa ka challwaasaa on oh ${targetName} meesasa.",

		character_data_logs_title = "Chàr-ktà Dàtà",
		character_data_logs_details = "${consoleName} sërvëd-àm pölìtëly ëhh-chëkk àböüt ${targetName}'s chàr-ktà dàtà (CID: ${characterId}).",

		item_name_logs_title = "Nàmë Övërrìdë",
		item_name_logs_details = "${consoleName} jùmppëd-àm nàmë-àhm for hàvïng somëthïng bëttër nàmë for thë sìzë ${slot} tò `${nameOverride}`.",

		toggle_attachment_logs_title = "Toggëlëd Àttàchmënt",
		toggle_attachment_logs_details = "${consoleName} toggled-àhm thë `${attachment}` àttàchmënt.",

		tint_logs_title = "Sët Tìnt",
		tint_logs_details = "${consoleName} sërvëd-àm thë tìnt ìndëx-àhm on thëïr wëàpòn tò ${tintIndex}.",

		population_multiplier_logs_title = "Mooey Mooleefah",
		population_multiplier_logs_details = "${consoleName} set da mooey mooleefah to ${populationMultiplier}.",

		fake_disconnect_logs_title = "Fake Beep Beep",
		fake_disconnect_on_logs_details = "${consoleName} toggled their fake beep beep on.",
		fake_disconnect_off_logs_details = "${consoleName} toggled their fake beep beep off.",

		identity_logs_title = "Identity Overtake",
		identity_on_logs_details = "${consoleName} set their identity to `${playerName}`.",
		identity_off_logs_details = "${consoleName} mesa da resetsa mesa identity.",

		clean_ped_logs_title = "Cleana-da ped",
		clean_ped_logs_details = "${consoleName} mesa da cleana-da ${targetName}'s ped.",

		collisions_logs_title = "Collisions",
		collisions_off_logs_details = "${consoleName} mesa da toggala-da disabled collisions off.",
		collisions_on_logs_details = "${consoleName} mesa da toggala-da disabled collisions on.",

		invalid_job_search = "Mesa da thinka yousa search isa invalid (has to be at least 3 characters).",
		failed_job_search = "Failed to searcha-da for jobs.",
		job_search_no_results = "Meesa no finden joben.",
		job_search_results = "Set ${consoleName}'s joben to \"${jobName}, ${departmentName}, ${positionName}\" (Score: ${score}).",

		job_reset_success = "Successfully resetten joben for ${consoleName}.",
		failed_job_reset = "Failed to resetten joben."
	},

	anti_cheat = {
		illegal_client_event = "Go directly to jailen. Do not passen go. Do not collect $200.",
		illegal_server_event = "Go directly to jailen. Do not passen go. Do not collect $200.",
		bad_entity_spawn = "Spawnen in an entity with model name `${modelName}`.",
		bad_entity_title = "Meesa bad entity spawned",
		bad_entity_message = "${consoleName} spawned entity with model name `${modelName}`.",
		detected_entity_title = "Meesa detected entity spawned",
		detected_entity_message = "${consoleName} spawned entity with model name `${modelName}`.",
		added_model_to_list = "Mesa added model `${modelName}` (${modelHash}) to the detection list.",
		model_already_added_to_list = "Model `${modelName}` (${modelHash}) issen already added to the detection list.",
		removed_model_to_list = "Removed model `${modelName}` (${modelHash}) from the detection list.",
		model_not_in_list = "Dis model '${modelName}' (${modelHash}) issa not added to da detection list.",
		set_model_detected_not_staff = "Da player attempted to add a model to da detection list, but didn't have da correct permissions to do so.",
		set_model_undetected_not_staff = "Da player attempted to remove a model from da detection list, but didn't have da correct permissions to do so.",
		add_detection_area_not_staff = "Da player attempted to add a detection area, but didn't have da correct permissions to do so.",
		remove_detection_area_not_staff = "Da player attempted to remove a detection area, but didn't have da correct permissions to do so.",
		detection_area_close = "[${InteractionKey}] Yusa take off detecten area (${areaId})",
		detection_area = "Detecten Area (${areaId})",

		ban_notification_title = "Anti-Cheat",
		ban_notification = "Banned ${consoleName} fer`${banReason}`.",

		bad_screen_word_ban = "Wesa heard of open book exams, but disa is ridiculous.",
		blacklisted_command_ban = "Mesa sorry, but yousa no have permissions to perform disa command. Please contact da server administrators if yousa believe dat disa isa error.",
		damage_modifier_ban = "Yosa power level cannot be over 9000.",
		distance_taze_ban = "Meesa no likey when yousa use stunning weapons from far away distance.",
		fast_movement_ban = "Flyings not allowed on disa server. Yousa must stay on the ground.",
		freecam_ban = "Yousa seem to be having an out of body experience. Disa is not allowed on disa server.",
		honeypot_ban = "Yousa try to use creative mode, but yousa no have da permission.",
		hotwire_driving_ban = "Vroom Vroom, Me in meesa mum's car. But yousa no can drive without permission.",
		illegal_freeze_ban = "Warm food is betta den frozen food. Yousa no freeze people on disa server.",
		illegal_ped_change_ban = "It's dangerous to perform surgery on yourself. Yousa no can change who yousa are on disa server.",
		illegal_spectating_ban = "Mesa suggest yousa must be FIB Agent to watch other players or use /gamemode spectator before spectating.",
		illegal_vehicle_modifier_ban = "Unlike Dom Toretto from Fast and Furious, wesa not a family.",
		invincibility_ban = "Yousa not the Black Knight, yousa may not be invincible.",
		ped_spawn_ban = "Yousa tried to perform mitosis, but there was not enough sun for photosynthesis.",
		player_blips_ban = "Airspace issa full, UAV unavailable.",
		runtime_texture_ban = "Mod menu yousa have, use it yousa may not.",
		spiked_resource_ban = "Mesa no tink disrespecen' da script without embassy is liken tryin' to changen' da endin' of a story just cause mesa no liken.",
		text_entry_ban = "Inspecten' Element no mesa permite on dis browser.",
		thermal_night_vision_ban = "No mesa permite Brighter Nights.",
		vehicle_modification_ban = "Yousa couldn't finden da headlight fluid for yousa car.",
		vehicle_spam_ban = "Counter terrorists winsen.",
		vehicle_spawn_ban = "Yousa tried to usen redstone on a minecart but mesa no have powered rails.",
		weapon_spawn_ban = "Yousa attempted da \"Pay to Win Route\" of FiveM wheresa yousa now infact paid to get banned.",

		mp_f_freemode_01_label = "Freemode (femalen)",
		mp_m_freemode_01_label = "Freemode (malen)",
		player_one_label = "Franklin",
		player_two_label = "Trevor",
		player_zero_label = "Michael",

		notification_distance_taze = "Anti-Cheat: ${displayName} tazed someone over a very large distance (${distance}m).",
		notification_bad_screen_word = "Anti-Cheat: ${displayName} hassa ${count} trigger word(s) on their screen.",

		notification_freecam_detected = "Oathee-Cheat: Freecam Datober",
		notification_illegal_vehicle_modifier = "Oathee-Cheat: Vehicle Modiphiber",
		notification_illegal_vehicle_spawn = "Anti-Cheat: Vehicle Spawned",
		notification_fast_movement = "Oathee-Cheat: Fast Balaba",
		notification_illegal_freeze = "Oathee-Cheat: Illegal Freeze",
		notification_invincibility = "Oathee-Cheat: Invinsibliliber",
		notification_vehicle_modification = "Oathee-Cheat: Vehicle Modifiphiber",
		notification_damage_modifier = "Oathee-Cheat: Damage Modifiphiber",
		notification_illegal_weapon = "Oathee-Cheat: Illegal Weapon",
		notification_spawned_object = "Anti-Cheat: Haga ti-ispawn objeto",
		notification_driving_hotwire = "Anti-Cheat: Haga ti conduzir mientras Hotwire",

		ig_orleans_label = "Sasquatch",
		u_m_m_jesus_01_label = "Jesus",
		u_m_y_babyd_label = "Cuerpolifter",
		u_m_y_imporage_label = "Superhéroe",
		a_m_m_bevhills_02_label = "Mens blanco",
		a_m_m_fatlatin_01_label = "Mens Gordo",
		a_m_m_hasjew_01_label = "Ped judio",
		a_m_m_beach_01_label = "Pedh desgalles (masculino, negro)",
		a_m_m_beach_02_label = "Pedh desgalles (masculino, blanco)",
		a_m_m_afriamer_01_label = "Hombre negro gordo",
		ig_jimmydisanto_label = "Jimmy",
		ig_jimmydisanto2_label = "Jimmy 2",
		a_m_y_musclbeac_01_label = "Half-Naked Beach guy",
		csb_ramp_marine_label = "Marine guy",
		s_f_y_stripperlite_label = "Stripper ped",
		mp_f_stripperlite_label = "Stripper ped 2",
		mp_m_marston_01_label = "Missing arms and legs",
		mp_m_niko_01_label = "Niko (GTA IV)",

		high_fov_warning = "Mesa FOV is unusually high",
		high_fov_description = "Dis is most likely caused by a FOV Modifier.",
		high_fov_debug = "Current: ${fov}",

		illegal_oxy_run = "Playercompleted an oxy run quicker dan mesa possible.",

		fast_movement_warning = "Meesa warn yousa fa movin' too fast! Plz let a developer know and say what yousa were doin' to cause this, as yousa shouldn't be gettin' dis chat message.",
		invincibility_warning = "Meesa warn yousa fa bein' invincible! Plz let a developer know and say what yousa were doin' to cause this, as yousa shouldn't be gettin' dis chat message.",
		damage_modifier_warning = "Meesa warn yousa fa havin' an invalid damage modifier! Plz let a developer know and say what yousa were doin' to cause this, as yousa shouldn't be gettin' dis chat message.",
		freeze_warning = "Yousa been flagged for bein' frozen when yousa not supposed to be! Please let a developer know and tell them what you were doin' to make this happen as yousa should not be gettin' this chat message.",

		distance_taze_screenshot = "Anti-Cheat: Distance Taze (${distance}m)",
		spectating_screenshot = "Anti-Cheat: Spectatin'",
		fast_movement_screenshot = "Anti-Cheat: Fast Movement",
		illegal_freeze_screenshot = "Anti-Cheat: Illegal Freeze",
		illegal_vehicle_modifier_screenshot = "Anti-Cheat: Vehicle Modifier (${modifierName} = ${modifierValue})",
		damage_modifier_screenshot = "Hüjah! Anti-Cheat: Invalid Damage Modifier (${activeModifier}/${currentModifier})",
		illegal_weapon_screenshot = "Hüjah! Anti-Cheat: Spawned Weapon (${weaponLabel})",
		illegal_vehicle_spawn_screenshot = "Hüjah! Anti-Cheat: Spawned Vehicle (${modelName})",
		vehicle_modification_screenshot = "Hüjah! Anti-Cheat: Modified Vehicle (${types})",
		thermal_night_vision_screenshot = "Hüjah! Anti-Cheat: Thermal/Night Vision (${nativeName})",
		text_entry_screenshot = "Hüjah! Anti-Cheat: Text Entry (${textEntry})",
		player_blips_screenshot = "Hüjah! Anti-Cheat: Player Blips",
		modified_fov_screenshot = "Binksa Anti-Cheat: Modified FOV (${fov})",
		ped_change_screenshot = "Binksa Anti-Cheat: Illegal Ped Change",
		invincibility_screenshot = "Binksa Anti-Cheat: Invincible",
		runtime_texture_screenshot = "Binksa Anti-Cheat: Runtime Texture (${textureDict}, ${textureName})",
		bad_screen_word_screenshot = "Binksa Anti-Cheat: Bad Screen Word (${words})",
		freecam_detected_screenshot = "Binksa Anti-Cheat: Freecam Detected (${distance}m)",
		driving_hotwire_screenshot = "Binksa Anti-Cheat: Driving while Hotwire"
	},

	authentication = {
		ip_not_found = "Meesa sorry, mesa cannot fetch yousa IP address.",
		authenticating_local_server = "Meesa authenticating with local server...",
		authenticating_global_server = "Meesa authenticating with OP-FW servers...",
		error_fetching_data = "Meesa sorry, an error occurred while fetching your data.",
		region_blocked = "This server has blocked the region yousa are connecting from, oopsie-day!",
		server_config_not_loaded = "The server config has not been loaded. Meesa sorry...",
		something_went_horribly_wrong = "Oh no! Something went horribly wrong. Please try again.",
		local_firewall_enabled = "Da local firewall is enabled.",

		local_firewall_on = "Enabled da local firewall with da block message `${blockMessage}`. Yousa in big dudu now!",
		local_firewall_re_enabled = "Meesa re-enabled da local firewall with da block message `${blockMessage}`.",
		local_firewall_off = "Meesa disabled da local firewall.",
		local_firewall_blocked = "Local Firewall: Blocked ${playerName} (${licenseIdentifier})",

		developer = "developer",
		super_admin = "super admin",
		staff = "staff",
		reconnect = "reconnect",
		random = "random",
		beginner = "beginner",
		custom = "custom",
		christmas = "christmas",
		casino = "casino",

		job_low = "low job",
		job_medium = "medium job",
		job_high = "high job",

		banned_globally = "Mesa deeply sorry, but mesa must inform ya that yousa bein' banned from all OP-FW servers.\n\nBan Hash: ${banHash}\nBan Reason: ${banReason}\n\nIf yousa bombad really believe this ban to be a false one, then please join the OP-FW discord guild for information on how to appeal at ${frameworkDiscord}",
		banned_locally = "Yousa banned from ${communityName}.\n\nBan Hash: ${banHash}\nBanned By: ${creatorName}\nBan Reason: ${banReason}\nTimestamp: ${timestamp}\n\n${indefiniteOrExpires}\n\nPlease join our discord guild for information on how to appeal at ${communityDiscord}.",
		banned_locally_no_creator = "Yosa been banned from ${communityName}.\n\nBan Hash: ${banHash}\nBan Reason: ${banReason}\nTimestamp: ${timestamp}\n\n${indefiniteOrExpires}\n\nJoin da discord guild for information on how to appeal at ${communityDiscord}.",
		ban_indefinite = "Dis ban is indefinitesa.",
		ban_expires = "Dis ban will expire in ${timeLeft}.",
		not_whitelisted = "Yosa not be whitelisted on dis server. For information on how to apply, please join our discord guild.\n\n${communityDiscord}",
		api_error = "Mesa sorry! An error happened while mesa fetched your data. (error code ${errorCode})",
		pepega_moderate = "Yousa banned globally from all OP-FW servers without any specified reasons.",
		pepega_ultimate = "Yousa banished from dissa server.",
		ban_code_not_found = "Yousa globally banned from all OP-FW servers. Wesa couldn't find any data for your ban code.",
		fraud_chargeback = "Fraud / Chargeback",
		threatening_ddos = "Threatening to attack mesa infrastructure.",
		unknown = "Mesa no knowen",
		api_offline = "Meesa sorry but da back-end service is not workin' right now. Please try again mesa later.",
		protective_mode_on = "Server Protective Mode issen on right now. Only players with a certain amount of playtime may connect to the server. This will go away soon.\n\nJoin our discord for more help on this at ${communityDiscord}.",
		server_restarting = "Da server issen restartin' right now. Please try again in a few minutes.",
		connection_cancelled = "Dis connection wuz cancelled coz anoda one is already active.",
		no_reason_provided = "No reason mesa be provided.",
		discord_whitelist_id_not_found = "Wesa unable to find your Discord id. Make sure yousa have Discord open in da background and that yousa have allowed FiveM to fetch data from yoursa Discord client.\n\n${communityDiscord}"
	},

	chat = {
		default = "Default",

		chat_group_information = "Yousa have been added to a chat group. Press **TAB** to switch between yousa available chat groups.\n\nMessages sent without '/' as a prefix will be broadcasted to other members of this group."
	},

	commands = {
		command_unavailable = "Mesa sayin disa command no lika available!",

		command_list = "${commands}",
		substitute_list = "${substitutes}",

		substitute_command_for = "Thisa isa a substitute command for `${command}`.",

		-- the "substitutes" is basically just a shortcut command, so if you do /lang, it'll execute /language.
		-- you can put as many substitutes as you'd like by doing "/lang, /lang2, /lang3", all these 3 commands will be valid substitutes
		-- the main difference between the _command and _command_substitutes is substitutes will not show as suggestions in the chat
		-- if no substitutes are wanted, simply leave an empty string with ""

		-- animations/carry
		carry_command = "carry",
		carry_command_help = "Toggle carry.",
		carry_command_substitutes = "",

		uncarry_command = "uncarry",
		uncarry_command_help = "Mesa suggest yousa to use disa command forsa stoppin the player who isa carryin yousa.",
		uncarry_command_substitutes = "",

		piggyback_command = "piggyback",
		piggyback_command_help = "Piggyback another player.",
		piggyback_command_substitutes = "",

		pick_cuffs_command = "pick_cuffs",
		pick_cuffs_command_help = "Lockpick out of handcuffs.",
		pick_cuffs_command_substitutes = "",

		struggle_command = "gllglee",
		struggle_command_help = "Maa naba gllglee tay bohu nawpa mesa naba keeisa.",
		struggle_command_substitutes = "",

		handsup_command = "keeplee",
		handsup_command_help = "Tak takkee lee (ya kakee).",
		handsup_command_substitutes = "lee, surrender, hu",

		-- animations/chairs
		sit_command = "tok lee",
		sit_command_help = "Naba doka ki tok lee tay koluka naba peeas.",
		sit_command_parameter_variation = "variation",
		sit_command_parameter_variation_help = "Naba homa tok lee mee kaabi (1 - 6)",
		sit_command_substitutes = "tok, peeas",

		-- animations/emotes
		ragdoll_command = "ragdoll",
		ragdoll_command_help = "Toggling ragdoll.",
		ragdoll_command_substitutes = "",

		-- base/admin
		report_command = "report",
		report_command_help = "Mesa sending message to all active staff members.",
		report_command_parameter_message = "message",
		report_command_parameter_message_help = "Da message un would lika send.",
		report_command_substitutes = "",

		announce_command = "announce",
		announce_command_help = "Broadcasting an announcement to all playas.",
		announce_command_parameter_message = "message",
		announce_command_parameter_message_help = "Lissen up: da message un would lika to make sure eberyone hears.",
		announce_command_substitutes = "",

		staff_pm_command = "staff_pm",
		staff_pm_command_help = "Mesa helpen senden tada either a staff member, oda to a playa as a staff member.",
		staff_pm_command_parameter_server_id = "server id",
		staff_pm_command_parameter_server_id_help = "Da playa's server ID yousa areen trying to mesa-jar-jar binks.",
		staff_pm_command_parameter_message = "message",
		staff_pm_command_parameter_message_help = "Da message yousa would liken to senden.",
		staff_pm_command_substitutes = "staffpm",

		staff_command = "staff",
		staff_command_help = "Broadcast a message to all active staff members.",
		staff_command_parameter_message = "messa",
		staff_command_parameter_message_help = "Da messa wesa grand yousa wouldsa lika send.",
		staff_command_substitutes = "",

		wipe_command = "wipe",
		wipe_command_help = "Wipe unwanted entities from da map.",
		wipe_command_parameter_distance = "distance",
		wipe_command_parameter_distance_help = "If yousa only want entities within a certain range to delete, inserta a distance here. Leave it at `false` or `0` for da entire map.",
		wipe_command_parameter_ignore_local_entities = "ignore local entities",
		wipe_command_parameter_ignore_local_entities_help = "Ignore non-networked entities? If yousa cleanina up from a cheater, it isa recommended yousa put this to `true` or `1`.",
		wipe_command_parameter_model_name = "kolosso yoma",
		wipe_command_parameter_model_name_help = "Mesa suggestin' to delete entities of a certain kolosso yoma model, yousa can inpoot da name o' da model here. Elsewise, ya leave it blank or set it to `false` or `0`. Yousa can also set dis to `vehicles` or `peds`.",
		wipe_command_substitutes = "",

		noclip_command = "noclip",
		noclip_command_help = "Toggle noclip.",
		noclip_command_parameter_server_id = "server id",
		noclip_command_parameter_server_id_help = "If yousa wantin' to toggle the noclip for someone else, inpoot their server id here.",
		noclip_command_substitutes = "",

		safe_noclip_command = "sa fweesa",
		safe_noclip_command_help = "Toggles noclip but only if there is nobody nearby that could see you do so (staff members with staff toggled excluded).",
		safe_noclip_command_substitutes = "snoclip",

		delete_vehicle_command = "yuusa_vehicle_muyaho",
		delete_vehicle_command_help = "Muyaho a nearby vehicle.",
		delete_vehicle_command_parameter_ignore_heading = "okeyday",
		delete_vehicle_command_parameter_ignore_heading_help = "Wesa goin' to ignore yousa player's heading? Leavin' this empty will act as a `no`.",
		delete_vehicle_command_substitutes = "dv",

		delete_vehicle_interactively_command = "delete_vehicle_interactively",
		delete_vehicle_interactively_command_help = "Mesa toggles sa interactive vehicle deletion.",
		delete_vehicle_interactively_command_substitutes = "dvi",

		kick_command = "kick",
		kick_command_help = "Kicky boompa player from da server.",
		kick_command_parameter_server_id = "server id",
		kick_command_parameter_server_id_help = "Da playa's server ID yousa tryin' to kick.",
		kick_command_parameter_reason = "reason",
		kick_command_parameter_reason_help = "Mesa reasonin' behind da player's kick. Dis can besa left blank.",
		kick_command_substitutes = "",

		ban_command = "ban",
		ban_command_help = "Ban da player from da server.",
		ban_command_parameter_server_id = "server id",
		ban_command_parameter_server_id_help = "Da player's server ID yousa tryin' to ban.",
		ban_command_parameter_expire = "expire",
		ban_command_parameter_expire_help = "Da length of da player's ban. Dis can besa left blank, at `0` o' `false` for an indefinite ban. Yousa can usesa w/d/h for da length. (ex: `3d2h` -> 3 days, 2 hours)",
		ban_command_parameter_reason = "muba reezun",
		ban_command_parameter_reason_help = "Da reezun bhind da playas ban. Dis can be lef blank.",
		ban_command_substitutes = "",

		staff_hidden_command = "staff_hidden",
		staff_hidden_command_help = "Toggle wheda oda playas can see yo staff status or not.",
		staff_hidden_command_substitutes = "",

		staff_toggle_command = "staff_toggle",
		staff_toggle_command_help = "Toggle yo staff availability. Togglin it off will stop reports, staff PMs and staff messages from appearin.",
		staff_toggle_command_substitutes = "",

		protective_mode_command = "protective_mode",
		protective_mode_command_help = "Toggle server protective mode. Dis will cancel new connections from playas below da specified amount of required playtime. Dis check is excluded from staff members and server supporters.",
		protective_mode_command_parameter_enabled = "meesa enabled",
		protective_mode_command_parameter_enabled_help = "Should the check be enabled? Valid inputs are: `true`, `false`, `1` and `0`. Meesa suggest yousa use `true` or `false`.",
		protective_mode_command_parameter_playtime = "playtime",
		protective_mode_command_parameter_playtime_help = "The required amount of playtime (seconds) to accept a new connection. Meesa suggest yousa use a value of at least 60 (1 minute) or greater.",
		protective_mode_command_substitutes = "",

		spawn_vehicle_command = "spawn_vehicle",
		spawn_vehicle_command_help = "Spawn a vehicle. Meesa will make it so!",
		spawn_vehicle_command_parameter_model_name = "model name",
		spawn_vehicle_command_parameter_model_name_help = "Da model name of da vehicle yousa wanting to spawn.",
		spawn_vehicle_command_parameter_server_id = "server id",
		spawn_vehicle_command_parameter_server_id_help = "Da player's server id yousa would likin' to spawn dis vehicle fo'. Yousa can leave dis as blank or at `0` to select yourself.",
		spawn_vehicle_command_substitutes = "sv",

		create_vehicle_command = "create_vehicle",
		create_vehicle_command_help = "Spawns a vehicle on da ground at yousa current location without warping yousa into it.",
		create_vehicle_command_parameter_model_name = "Model name",
		create_vehicle_command_parameter_model_name_help = "Da model name of da vehicle yousa wantin' to spawn.",
		create_vehicle_command_parameter_ground = "Ground",
		create_vehicle_command_parameter_ground_help = "Should da vehicle be spawnin' on da ground?",
		create_vehicle_command_substitutes = "cv",

		replace_vehicle_command = "replace_vehicle",
		replace_vehicle_command_help = "Replace yoosa current vehicle with a different  one.",
		replace_vehicle_command_parameter_model_name = "Model name",
		replace_vehicle_command_parameter_model_name_help = "Youse need to tell me the name of the thing you wanna spawn, okiday?",
		replace_vehicle_command_substitutes = "rv",

		aimbot_command = "aimbot",
		aimbot_command_help = "Toggle 'aimbot' on or off. Meesa can help with that!",
		aimbot_command_parameter_server_id = "server id",
		aimbot_command_parameter_server_id_help = "If yousa wanna toggle 'aimbot' for someone else, put their server id here.",
		aimbot_command_parameter_targets = "targets",
		aimbot_command_parameter_targets_help = "Server ids of the targets you wanna aimbot (only works for youselves). (Meesa gonna filter to only be players with these server ids). Okieday?",
		aimbot_command_substitutes = "",

		player_bones_debug_command = "meesa_bones_debug",
		player_bones_debug_command_help = "Toggle the meesa bones debugger.",
		player_bones_debug_command_parameter_server_id = "serva id",
		player_bones_debug_command_parameter_server_id_help = "Iffen yousa wanting to toggle the meesa bones debugger for some other, insert their serva id here.",
		player_bones_debug_command_substitutes = "meesa_bones",

		wallhack_command = "wallhack",
		wallhack_command_help = "Toggle 'wallhack'.",
		wallhack_command_parameter_server_id = "serva id",
		wallhack_command_parameter_server_id_help = "If yousa wanting to toggle da 'wallhack' for someone else, insept their server id here.",
		wallhack_command_substitutes = "",

		speed_boost_command = "speed_boost",
		speed_boost_command_help = "Toggle 'speed boost'.",
		speed_boost_command_parameter_server_id = "server id",
		speed_boost_command_parameter_server_id_help = "If yousa wanting to toggle da 'speed boost' for someone else, insept their server id here.",
		speed_boost_command_substitutes = "",

		nitro_boost_command = "nitro_boost",
		nitro_boost_command_help = "Toggle 'nitro boost'.",
		nitro_boost_command_parameter_server_id = "munita id",
		nitro_boost_command_parameter_server_id_help = "Hesa wanna toggla 'nitro boost' dee othas, mesa peedun insert der munita iden here.",
		nitro_boost_command_substitutes = "nitro",

		indestructibility_command = "indestructibility",
		indestructibility_command_help = "Toggle 'indestructibility'.",
		indestructibility_command_parameter_server_id = "munita id",
		indestructibility_command_parameter_server_id_help = "Hesa wanna toggla 'indestructibility' dee othas, mesa peedun insert der munita iden here.",
		indestructibility_command_substitutes = "ind, god, god_mode, godmode",

		no_nearby_vehicles_command = "no_nearby_vehicles",
		no_nearby_vehicles_command_help = "Toggle 'no nearby vehicles'.",
		no_nearby_vehicles_command_parameter_server_id = "server id",
		no_nearby_vehicles_command_parameter_server_id_help = "If yousa wanting to toggle the 'no nearby vehicles' for someone else, insert their server id here.",
		no_nearby_vehicles_command_substitutes = "",

		disable_collisions_command = "disable_collisions",
		disable_collisions_command_help = "Disable collisions with vehicles and peds in a 10 meter radius.",
		disable_collisions_command_substitutes = "mee-sa bumbadisabul!",

		ghost_command = "oo-moo!",
		ghost_command_help = "Disa commando will enable /peek, invisibility and /disable_collisions.",
		ghost_command_substitutes = "",

		job_command = "jobben!",
		job_command_help = "Mesa help yous update someones job based on a search.",
		job_command_parameter_server_id = "Server Id",
		job_command_parameter_server_id_help = "Da players server id or 0 to select yourself.",
		job_command_parameter_search = "Searchen",
		job_command_parameter_search_help = "Da job/department/position name or part of it to search for or `none` to remove the job.",
		job_command_substitutes = "",

		reset_job_command = "oopsie_boosa",
		reset_job_command_help = "Resets someones job to unemployed.",
		reset_job_command_parameter_server_id = "bombad ID",
		reset_job_command_parameter_server_id_help = "The players bombad ID or 0 to select yourself.",
		reset_job_command_substitutes = "",

		watching_command = "watchin",
		watching_command_help = "Shows yousa all players who are spectatin nearby.",
		watching_command_substitutes = "",

		disable_recoil_command = "disable_booma_recoil",
		disable_recoil_command_help = "Disables all weapon recoil.",
		disable_recoil_command_substitutes = "",

		infinite_ammo_command = "infinite_booma_ammo",
		infinite_ammo_command_help = "Toggles infinite ammo.",
		infinite_ammo_command_substitutes = "",

		track_player_command = "yoosa_track_player",
		track_player_command_help = "Toggle a tracker for a certain player.",
		track_player_command_parameter_server_id = "server id",
		track_player_command_parameter_server_id_help = "Da player's server ID yousa be wanting to track. Leave blank to disable.",
		track_player_command_substitutes = "",

		reflect_damage_command = "Reflecten damaj",
		reflect_damage_command_help = "Toggles damaj reflecten. (Any playa hu damages yousa will be damaged themselves)",
		reflect_damage_command_substitutes = "reflect",

		trigger_headache_command = "Mesa tink weesa cause a headache",
		trigger_headache_command_help = "Dis gon' make da specified playa lag fosa shoft period of time.",
		trigger_headache_command_parameter_server_id = "Server id",
		trigger_headache_command_parameter_server_id_help = "Da playa's server ID yousa wantin' to trigger a headache for.",
		trigger_headache_command_substitutes = "Headache",

		stick_command = "stick",
		stick_command_help = "Stick to da car yousa ontop of.",
		stick_command_substitutes = "",

		unstick_command = "unstick",
		unstick_command_help = "Unstick to da car yousa attached to.",
		unstick_command_substitutes = "",

		clean_ped_command = "clean_ped",
		clean_ped_command_help = "Cleans a characters blood, bullet impacts, dirt, etc.",
		clean_ped_command_parameter_server_id = "gogga id",
		clean_ped_command_parameter_server_id_help = "Da playa's server ID yousa wantin' to clean da ped of.",
		clean_ped_command_substitutes = "",

		toggle_vehicle_smoke_command = "toggle_vehicle_smoke",
		toggle_vehicle_smoke_command_help = "Toggle 'vehicle smoke'.",
		toggle_vehicle_smoke_command_parameter_server_id = "gogga id",
		toggle_vehicle_smoke_command_parameter_server_id_help = "If you're wanting to toggle da 'vehicle smoke' for someone else, put their gogga id here.",
		toggle_vehicle_smoke_command_parameter_color_r = "sa Gupi rra",
		toggle_vehicle_smoke_command_parameter_color_r_help = "Sa Gupi Oya red value (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_g = "sa Gupi gga",
		toggle_vehicle_smoke_command_parameter_color_g_help = "Sa Gupi Oya green value (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_b = "sa Gupi bba",
		toggle_vehicle_smoke_command_parameter_color_b_help = "Sa Gupi Oya blue value (0 - 255).",
		toggle_vehicle_smoke_command_substitutes = "sa Gupi Smoke, Smoke",

		speed_up_progress_bar_command = "oompainen_mua_progress_bar",
		speed_up_progress_bar_command_help = "Kytke 'oompainen mua progress bar'.",
		speed_up_progress_bar_command_parameter_server_id = "serverin id",
		speed_up_progress_bar_command_parameter_server_id_help = "Jos haluat kytkeä 'oompainen mua progress bar' jollekin toiselle pelaajalle, lisää hänen serverin id:nsa tähän.",
		speed_up_progress_bar_command_substitutes = "oompainen",

		invisibility_command = "näkymättömyys",
		invisibility_command_help = "Kytke 'näkymättömyys'.",
		invisibility_command_parameter_server_id = "server id",
		invisibility_command_parameter_server_id_help = "Mesa hoping to toggle da 'invisibility' fo' sumpin else, insert dey server id here.",
		invisibility_command_substitutes = "inv, invis, invisible",

		add_cash_command = "add_cash",
		add_cash_command_help = "Add cash to someone's character.",
		add_cash_command_parameter_amount = "amount",
		add_cash_command_parameter_amount_help = "Da amount of cash yousa would like to gib to da playa.",
		add_cash_command_parameter_server_id = "server id",
		add_cash_command_parameter_server_id_help = "Da playah'sa servah ID. Ifa left empty, mesa selfa is automatically selected.",
		add_cash_command_substitutes = "",

		remove_cash_command = "remove_cash",
		remove_cash_command_help = "Remove cash from someone's character.",
		remove_cash_command_parameter_amount = "amount",
		remove_cash_command_parameter_amount_help = "Da amount of cash yousa would lika to remove from da playah.",
		remove_cash_command_parameter_server_id = "servah id",
		remove_cash_command_parameter_server_id_help = "Da playah'sa servah ID. Ifa left empty, mesa selfa is automatically selected.",
		remove_cash_command_substitutes = "",

		add_bank_command = "adden_banken",
		add_bank_command_help = "Toevoegen bank Balans aan iemand's karakter.",
		add_bank_command_parameter_amount = "hoeveelheid",
		add_bank_command_parameter_amount_help = "De hoeveelheid bank balans die je aan de speler wilt geven.",
		add_bank_command_parameter_server_id = "server-id",
		add_bank_command_parameter_server_id_help = "De server id van de speler. Als deze leeg wordt gelaten, wordt automatisch voor jezelf gekozen.",
		add_bank_command_substitutes = "",

		remove_bank_command = "verwijder_bank",
		remove_bank_command_help = "Verwijder bank Balans van iemand's karakter.",
		remove_bank_command_parameter_amount = "meedle_huud_amount",
		remove_bank_command_parameter_amount_help = "Da meedle huud amount yousa would like to remove from da player.",
		remove_bank_command_parameter_server_id = "server id",
		remove_bank_command_parameter_server_id_help = "Da player's server ID. If left empty, oneself is automatically selected.",
		remove_bank_command_substitutes = "",

		spawn_item_command = "spawn_item",
		spawn_item_command_help = "Used to spawn items.",
		spawn_item_command_parameter_item_name = "item name",
		spawn_item_command_parameter_item_name_help = "Da name of da item yousa are wanting to spawn. This needs to be da *item name*, and thus its label(s) will not work.",
		spawn_item_command_parameter_amount = "bossk bossk",
		spawn_item_command_parameter_amount_help = "Da bossk bossk of da item yousa would like to spawn. If left blank, one issa selected.",
		spawn_item_command_parameter_server_id = "server id",
		spawn_item_command_parameter_server_id_help = "Da player's server ID yousa would lika to spawn da item for. If lleft blank, yousa are selected.",
		spawn_item_command_parameter_battle_royale_only = "Battle Royale only",
		spawn_item_command_parameter_battle_royale_only_help = "Make this item a Battle Royale only item. Itty bitty bombad for Battle Royale only.",
		spawn_item_command_substitutes = "spn_itm",

		warning_message_command = "warning_message",
		warning_message_command_help = "Mesa adda global serveh message for all players.",
		warning_message_command_parameter_message = "essage-may",
		warning_message_command_parameter_message_help = "Da message yousa would liken to display to da playa. Yousa can leave dis parameter blank to remove da warnin' message.",
		warning_message_command_substitutes = "",

		tp_coords_command = "tp_coords",
		tp_coords_command_help = "Teleport to some coordinates.",
		tp_coords_command_parameter_x = "x-cords",
		tp_coords_command_parameter_x_help = "The Boss Nass coordinate mesa take yousa to.",
		tp_coords_command_parameter_y = "Pee de hole",
		tp_coords_command_parameter_y_help = "The Boss Nass coordinate mesa take yousa to.",
		tp_coords_command_parameter_z = "Z",
		tp_coords_command_parameter_z_help = "The Boss Nass coordinate mesa take yousa to. If mesa left blank, mesa will find da ground coordinates for yousa automatically.",
		tp_coords_command_substitutes = "tpc",

		tp_waypoint_command = "tp_waypoint",
		tp_waypoint_command_help = "Teleport to da dinkas set mui mui place.",
		tp_waypoint_command_substitutes = "tp_marker, tp",

		isolate_player_command = "mee-sa isolate_player",
		isolate_player_command_help = "Isolates a player, rejecting anything they try to do.",
		isolate_player_command_parameter_server_id = "server id",
		isolate_player_command_parameter_server_id_help = "Da target player.",
		isolate_player_command_substitutes = "isolate",

		show_all_evidence_command = "show_all_evidence",
		show_all_evidence_command_help = "Shows all nearby bullet casing evidence.",
		show_all_evidence_command_substitutes = "all_evidence, show_evidence, evidence",

		population_density_command = "mee-sa-population_density",
		population_density_command_help = "Mesa override da global population density multiplier.",
		population_density_command_parameter_multiplier = "multiplier",
		population_density_command_parameter_multiplier_help = "Da population density multiplier yousa would like to set. Leavin' dissa blank will turns it off. Valid values are from 0.0 to 1.0.",
		population_density_command_substitutes = "mee-sa-population, mesa-density, pop",

		repair_vehicle_command = "repair_vehicle",
		repair_vehicle_command_help = "Repairs da vehicle yousa are in.",
		repair_vehicle_command_substitutes = "mooja",

		enter_vehicle_command = "oosa_vehicle",
		enter_vehicle_command_help = "Mesa helps you enter the vehicle yousa closest to (makes yousa exit the vehicle if yousa already in one).",
		enter_vehicle_command_parameter_network_id = "network id",
		enter_vehicle_command_parameter_network_id_help = "Network id of da vehicle yousa wantin to enter. (optional)",
		enter_vehicle_command_substitutes = "ev",

		set_modification_command = "set_modification",
		set_modification_command_help = "Set vehicle modifications on the vehicle yousa in.",
		set_modification_command_parameter_mod_type = "mod type",
		set_modification_command_parameter_mod_type_help = "The ID of the mod type yousa wants to set.",
		set_modification_command_parameter_mod_index = "mod gomboo",
		set_modification_command_parameter_mod_index_help = "Mesa da mod gomboo dat yousa wishen to set.",
		set_modification_command_parameter_custom_tires = "custom tirs",
		set_modification_command_parameter_custom_tires_help = "Custom tirs?",
		set_modification_command_substitutes = "sm",

		set_livery_command = "seten_livery",
		set_livery_command_help = "Seten da livery of da vehicle yousa are in.",
		set_livery_command_parameter_livery_index = "livery index",
		set_livery_command_parameter_livery_index_help = "Da index of da livery yousa wanten to setzen.",
		set_livery_command_substitutes = "",

		set_fake_plate_command = "smeetin fakaa plate",
		set_fake_plate_command_help = "Setz da fake plate numbaa on da vehicle ya be in.",
		set_fake_plate_command_parameter_plate_number = "plate numbaa",
		set_fake_plate_command_parameter_plate_number_help = "Da plate numbaa ya wanna set.",
		set_fake_plate_command_substitutes = "plate",

		set_dirt_level_command = "smeetin dirtz level",
		set_dirt_level_command_help = "Cleanz da vehicle ya be in.",
		set_dirt_level_command_parameter_dirt_level = "dirtz level",
		set_dirt_level_command_parameter_dirt_level_help = "Da level of dirtz ya wanna set (between 0 and 15).",
		set_dirt_level_command_substitutes = "sd",

		player_info_command = "pla-tong info",
		player_info_command_help = "Returns some information about a certain player.",
		player_info_command_parameter_server_id = "server id",
		player_info_command_parameter_server_id_help = "Da playa's server ID yousa would like to get information about. If left blank, yourself issa selected.",
		player_info_command_substitutes = "pla-tong, pi",

		inventory_command = "inventory",
		inventory_command_help = "Open a specified inventory.",
		inventory_command_parameter_inventory_name = "inventory name",
		inventory_command_parameter_inventory_name_help = "Da inventury name yousa would like to open.",
		inventory_command_substitutes = "",

		character_inventory_command = "character_inventory",
		character_inventory_command_help = "Shows yousa da inventury of anotha playaa.",
		character_inventory_command_parameter_server_id = "server id",
		character_inventory_command_parameter_server_id_help = "Da server id of dat playaa.",
		character_inventory_command_substitutes = "pockets",

		fake_disconnect_command = "fake_disconnect",
		fake_disconnect_command_help = "Triggas a series of events to make it seem as yousa disconnected from da serva. This will also enable yousa noclip if it isn't on already.",
		fake_disconnect_command_substitutes = "fake_leave, dc",

		set_identity_command = "set_identity",
		set_identity_command_help = "Mesa fren helpin' yous override yous playa name.",
		set_identity_command_parameter_player_name = "playa name",
		set_identity_command_parameter_player_name_help = "Da name yous wanna set o empty ta reset.",
		set_identity_command_substitutes = "identity",

		disable_idle_cam_command = "disable_idle_cam",
		disable_idle_cam_command_help = "Disables da idle camera from activating.",
		disable_idle_cam_command_substitutes = "disable_idle, idle",

		auto_drive_command = "auto_drive",
		auto_drive_command_help = "Mesa drive home: Drives yousa to da set waypoint or drives around randomly if none is set.",
		auto_drive_command_parameter_style = "wa'",
		auto_drive_command_parameter_style_help = "Da driving style (normal, rushed, reckless, reverse).",
		auto_drive_command_substitutes = "",

		drive_speed_command = "drive_speed",
		drive_speed_command_help = "Set da cruising speed for da auto drive command.",
		drive_speed_command_parameter_speed = "speed",
		drive_speed_command_parameter_speed_help = "Da speed you want to set (in mph).",
		drive_speed_command_substitutes = "",

		toggle_weapon_attachment_command = "mubpappucah_wahidun_galactik",
		toggle_weapon_attachment_command_help = "Mubpappucah a galactik attachment liya wahidun galactik hatto wesa'katala.",
		toggle_weapon_attachment_command_parameter_attachment = "attachment",
		toggle_weapon_attachment_command_parameter_attachment_help = "A galactik attachment liya bedesa'katala.",
		toggle_weapon_attachment_command_substitutes = "galactik_attachment, attachment",

		set_weapon_tint_command = "kumma_wahnah_galactik",
		set_weapon_tint_command_help = "Bedhama or poosa kumma wahnah galactik liya wahidun galactik hatto wesa'katala.",
		set_weapon_tint_command_parameter_tint = "yousa tint",
		set_weapon_tint_command_parameter_tint_help = "Da tint yousa want to set (leave empty to remove).",
		set_weapon_tint_command_substitutes = "weapon_tint, tint",

		set_item_name_override_command = "Seten item namen overriden",
		set_item_name_override_command_help = "Setsa or removes da item name override of da specified item.",
		set_item_name_override_command_parameter_slot = "slot",
		set_item_name_override_command_parameter_slot_help = "Da slot number of da item which name yousa want to override.",
		set_item_name_override_command_parameter_item_name = "mumblersa",
		set_item_name_override_command_parameter_item_name_help = "Da mumblersa override yousa wanten to set (leaven empty to remove).",
		set_item_name_override_command_substitutes = "setten_name_override, name_override",

		set_durability_command = "setten_durability",
		set_durability_command_help = "Setsen all da items durabilities in a certain slot.",
		set_durability_command_parameter_slot = "slot",
		set_durability_command_parameter_slot_help = "Whichen slot to seten items durability in.",
		set_durability_command_parameter_amount = "oo bongo-bongo: ",
		set_durability_command_parameter_amount_help = "Da oo bongo-bongo amount to set (default is 100).",
		set_durability_command_substitutes = "bongo-bongo",

		set_metadata_command = "set_metadata",
		set_metadata_command_help = "Sets all items metadata in da certain slot.",
		set_metadata_command_parameter_slot = "slot",
		set_metadata_command_parameter_slot_help = "Whosa slot to set items metadata in.",
		set_metadata_command_parameter_metadata = "metadata",
		set_metadata_command_parameter_metadata_help = "Da metadata json to set.",
		set_metadata_command_substitutes = "metadeten",

		refill_nitro_command = "naboo nitro renkupadu beegonian",
		refill_nitro_command_help = "Shawa nitro puyek in your cars tank.",
		refill_nitro_command_substitutes = "",

		register_weapon_command = "jawaap tarpals poongapalooza",
		register_weapon_command_help = "Registers a weapon in a certain slot to a certain character id.",
		register_weapon_command_parameter_slot = "slot",
		register_weapon_command_parameter_slot_help = "The slot the weapon is in.",
		register_weapon_command_parameter_character_id = "character id",
		register_weapon_command_parameter_character_id_help = "The character id of the character you want to register the weapon to.",
		register_weapon_command_substitutes = "",

		advanced_metagame_command = "yousa wesa besta friend",
		advanced_metagame_command_help = "Superadmin command to help yousa take yousa metagaming to da next level.",
		advanced_metagame_command_substitutes = "am",

		list_weapon_attachments_command = "list_weapon_attachments",
		list_weapon_attachments_command_help = "Sets or removes da tint of da weapon yousa are currently holding.",
		list_weapon_attachments_command_substitutes = "weapon_attachments, attachments",

		wipe_first_owned_command = "scrubba firsta owneda",
		wipe_first_owned_command_help = "Scrubba all entities firsta owneda by a certain playa.",
		wipe_first_owned_command_parameter_server_id = "meesa idenitfia di server",
		wipe_first_owned_command_parameter_server_id_help = "Di players meesa identifia di server.",
		wipe_first_owned_command_parameter_range = "ruska",
		wipe_first_owned_command_parameter_range_help = "Di ruska yousa wanten to delete entities in or empty to delete all.",
		wipe_first_owned_command_substitutes = "",

		freeze_command = "freeze",
		freeze_command_help = "Freezen a player.",
		freeze_command_parameter_server_id = "meesa idenitfia di server",
		freeze_command_parameter_server_id_help = "Di idenitfia di server of di player yousa wanten to freeze.",
		freeze_command_substitutes = "",

		unfreeze_command = "unkafizza",
		unfreeze_command_help = "Unkafizzas a playa.",
		unfreeze_command_parameter_server_id = "server id",
		unfreeze_command_parameter_server_id_help = "Da server id of da playa yousa wants to unkafizza.",
		unfreeze_command_substitutes = "",

		slap_command = "skreecha",
		slap_command_help = "Skreechas a playa (killin' dem).",
		slap_command_parameter_server_id = "server id",
		slap_command_parameter_server_id_help = "Da server id of da playa yousa wants to skreecha.",
		slap_command_substitutes = "",

		damage_player_command = "damage_player",
		damage_player_command_help = "Yousa damage a playa's health.",
		damage_player_command_parameter_server_id = "yousa server id",
		damage_player_command_parameter_server_id_help = "Da server id of da player yousa want to damage.",
		damage_player_command_parameter_health = "damage",
		damage_player_command_parameter_health_help = "Da amount of damage yousa want to do.",
		damage_player_command_substitutes = "damage",

		scoop_command = "scoop",
		scoop_command_help = "Scoops up all playa in a certain radius. (To be used with /unscoop)",
		scoop_command_parameter_radius = "radius",
		scoop_command_parameter_radius_help = "In what radius yousa want to scoop up playa (2D).",
		scoop_command_substitutes = "",

		unscoop_command = "unscoop",
		unscoop_command_help = "Teleports all players that you previously scooped up to your current position.",
		unscoop_command_parameter_revive = "revive",
		unscoop_command_parameter_revive_help = "Revive scooped up players if they are downed.",
		unscoop_command_substitutes = "",

		peek_command = "peek",
		peek_command_help = "Peek will show all invisible players around you (including yourself).",
		peek_command_substitutes = "",

		hit_indicator_command = "hit_indicator",
		hit_indicator_command_help = "Toggles the hit indicator if you use the custom crosshair.",
		hit_indicator_command_substitutes = "",

		trigger_ems_call_command = "trigger_ems_call",
		trigger_ems_call_command_help = "Sendsa local EMS call from yor position.",
		trigger_ems_call_command_substitutes = "",

		-- base/anti_cheat
		model_detect_add_command = "model_detect_add",
		model_detect_add_command_help = "Yousa can add a model to da detection list temporerily. Da list resets on server restart.",
		model_detect_add_command_parameter_model = "model",
		model_detect_add_command_parameter_model_help = "Da model yousa would like to detect. Can be both a model name and a model hash.",
		model_detect_add_command_substitutes = "detect",

		model_detect_remove_command = "odel-may etect-day emove-ray",
		model_detect_remove_command_help = "Emoveray ayay odel-may omfray ethay etection-day ist-lay.",
		model_detect_remove_command_parameter_model = "odel-may",
		model_detect_remove_command_parameter_model_help = "Ethay odel-may ouyay ouldway ikelay otay emoveray. Ancay ebay othbay a odel-may amenay andaway a odel-may ash-hay.",
		model_detect_remove_command_substitutes = "undetect",

		detection_area_add_command = "etection-day area-aydday",
		detection_area_add_command_help = "Eatecray anway area-aywhere ayallway awnspay entities-way inway atthay area-ay willway ebay entsay otay ouyay ithway omesay informationway. Ethay informationway ancay ebay oundfay inway ethay Overviewway UI-ay.",
		detection_area_add_command_parameter_radius = "cusu tayr",
		detection_area_add_command_parameter_radius_help = "The cusu tayr of the circle in which entities will be detected. The minimum value is `10` and the maximum is `5000`. Leaving this as blank will default to `100`.",
		detection_area_add_command_substitutes = "area_add",

		detection_area_remove_command = "detection_area_remove",
		detection_area_remove_command_help = "Remove a detection area.",
		detection_area_remove_command_parameter_area_id = "detection area id",
		detection_area_remove_command_parameter_area_id_help = "Da ID of da detection area yousa be wantin' to remove.",
		detection_area_remove_command_substitutes = "area_remove",

		screen_text_debug_command = "screen_text_debug",
		screen_text_debug_command_help = "Debug da screen-text exclusion rectangles.",
		screen_text_debug_command_substitutes = "screen_text",

		-- base/commands
		help_command = "help",
		help_command_help = "Show all available commands.",
		help_command_substitutes = "",

		substitutes_command = "substitutes",
		substitutes_command_help = "Show all available substitutes.",
		substitutes_command_substitutes = "",

		-- base/discord
		richer_presence_command = "richer_presence",
		richer_presence_command_help = "Toggle da 'richer presence' which adds mo' information to da rich presence, such as loaded character.",
		richer_presence_command_substitutes = "",

		-- base/emojis
		emojis_list_command = "emojis_list",
		emojis_list_command_help = "Saa da list fo all available emojis.",
		emojis_list_command_substitutes = "emojis",

		emojis_refresh_command = "emojis_refresh",
		emojis_refresh_command_help = "Refresh da available emojis. Dis gonna fetch da lates list from da discord guild.",
		emojis_refresh_command_substitutes = "",

		-- base/ping
		get_pings_command = "get_pings",
		get_pings_command_help = "Get average ping to various hosts around da world to find da mos suitable host location fo dis server's current players.",
		get_pings_command_substitutes = "",

		-- base/profile
		profile_debug_command = "profile_debug",
		profile_debug_command_help = "Mesa help toggle da profile debugger.",
		profile_debug_command_substitutes = "",

		-- base/users
		playtime_command = "playtime",
		playtime_command_help = "Checkin total playtime on da server as well as playtime dis session.",
		playtime_command_parameter_server_id = "server id",
		playtime_command_parameter_server_id_help = "Da playa's server ID yousa wantin to get da playtime fo. You can leave dis blank or at `0` to select yoosa.",
		playtime_command_substitutes = "",

		leaderboard_command = "leaderboard",
		leaderboard_command_help = "Checkin da playtime leaderboard.",
		leaderboard_command_substitutes = "",

		package_command = "package",
		package_command_help = "Mesa checken un zuricken package.",
		package_command_substitutes = "refresh_package",

		player_packages_command = "player_packages",
		player_packages_command_help = "Mesa getten all deine ungebrucht 'player packages'.",
		player_packages_command_substitutes = "",

		unload_character_command = "unload_character",
		unload_character_command_help = "Mesa unloaden ein player's character.",
		unload_character_command_parameter_server_id = "server id",
		unload_character_command_parameter_server_id_help = "Der player's server ID mesa wanten unloaden der character fur. Du mesa lassen this empty oder bei `0` tzu selecten yourself.",
		unload_character_command_parameter_message = "mesa",
		unload_character_command_parameter_message_help = "If yousa would like to display a mesa for da player to see in da login menu, type it here.",
		unload_character_command_substitutes = "unload",

		-- game/admin_menu
		admin_command = "admin",
		admin_command_help = "Opens da admin menu.",
		admin_command_substitutes = "",

		tp_player_command = "tp_player",
		tp_player_command_help = "Teleports yousa to a player.",
		tp_player_command_parameter_server_id = "server id",
		tp_player_command_parameter_server_id_help = "Da server id of da player yousa with to teleport to.",
		tp_player_command_substitutes = "",

		tp_here_command = "tp_her",
		tp_here_command_help = "Telepors a palooka to yousa.",
		tp_here_command_parameter_server_id = "server id",
		tp_here_command_parameter_server_id_help = "Da server id of da palooka yousa wish to teleport.",
		tp_here_command_substitutes = "",

		tp_to_command = "tp_to",
		tp_to_command_help = "Teleports a palooka to anotha palooka.",
		tp_to_command_parameter_source_id = "source id",
		tp_to_command_parameter_source_id_help = "Da palooka yousa want to teleport.",
		tp_to_command_parameter_destination_id = "destination id",
		tp_to_command_parameter_destination_id_help = "Da palooka yousa want to teleport to.",
		tp_to_command_substitutes = "",

		-- game/airdrops
		create_airdrop_command = "spargaiv otí otomó",
		create_airdrop_command_help = "Spargaiv moidal nyonestah.",
		create_airdrop_command_parameter_airdrop_type = "moi cyufinir airdrop",
		create_airdrop_command_parameter_airdrop_type_help = "Moi cyufinir airdrop tay yusauna. (armos, maglings, mediciná, nyonestahs, nginkyem, jahliahs, méka)",
		create_airdrop_command_parameter_item_amount = "nyonestahs kufah doda",
		create_airdrop_command_parameter_item_amount_help = "Doda nyonestahs kufah spargaiv leh otómó airdrop.",
		create_airdrop_command_substitutes = "",

		-- game/airstrike
		call_airstrike_command = "spargaiv sarka nagojéla",
		call_airstrike_command_help = "Yosa callsa airstrike on mesa current position.",
		call_airstrike_command_substitutes = "",

		-- game/airsupport
		airsupport_command = "airsupport",
		airsupport_command_help = "Yosa callsen in airsupport.",
		airsupport_command_substitutes = "",

		-- game/alerts
		show_alert_command = "show_alert",
		show_alert_command_help = "Yosa showsen an alert for a specific player (or everyone).",
		show_alert_command_parameter_server_id = "server id",
		show_alert_command_parameter_server_id_help = "Da server id of da player yousa wish to showsen da alert to.",
		show_alert_command_parameter_content = "content",
		show_alert_command_parameter_content_help = "Da content of da alert.",
		show_alert_command_substitutes = "mooyam",

		-- game/archives
		create_archive_command = "craten moo staraak",
		create_archive_command_help = "Mesa crea new case in da archive mesa standin nearest to.",
		create_archive_command_parameter_case_number = "staraak number",
		create_archive_command_parameter_case_number_help = "Da staraak number (Integer between 1 and 99,999).",
		create_archive_command_substitutes = "",

		destroy_archive_command = "killen moo staraak",
		destroy_archive_command_help = "Mesa destroy existin case in da archive mesa standin nearest to.",
		destroy_archive_command_parameter_case_number = "oopla number",
		destroy_archive_command_parameter_case_number_help = "Da oopla number. (Yousa can only destroy empty ooplas)",
		destroy_archive_command_substitutes = "",

		-- game/arena
		respawn_command = "goba gung",
		respawn_command_help = "Killy bombad self. (fot arena)",
		respawn_command_substitutes = "nocomback",

		-- game/audio
		audio_debug_command = "audio_debug",
		audio_debug_command_help = "Toggle da audio debug.",
		audio_debug_command_substitutes = "",

		play_audio_command = "play_audio",
		play_audio_command_help = "Play a audio for da playern or all playerns.",
		play_audio_command_parameter_url = "url",
		play_audio_command_parameter_url_help = "Da audio's download URL.",
		play_audio_command_parameter_volume = "volume",
		play_audio_command_parameter_volume_help = "Da volume level da audio should play at. Valid values range from `0` to `1`. Dis value will default to `0.1`.",
		play_audio_command_parameter_server_id = "server id",
		play_audio_command_parameter_server_id_help = "Da player's server ID yousa want to play dis audio for. Yousa can do `-1` for all players.",
		play_audio_command_substitutes = "",

		-- game/bandaids
		random_bandaid_command = "Random bandaid",
		random_bandaid_command_help = "Gives you a random bandaid. :)",
		random_bandaid_command_substitutes = "bandaid",

		-- game/battle_royale
		battle_royale_toggle_command = "battle_royale_toggle",
		battle_royale_toggle_command_help = "Ding dong da Battle Royale feature.",
		battle_royale_toggle_command_substitutes = "br_toggle",

		battle_royale_start_command = "battle_royale_startisa",
		battle_royale_start_command_help = "Startisa a Battle Royale matchen.",
		battle_royale_start_command_parameter_no_vehicles = "no clanky clankys",
		battle_royale_start_command_parameter_no_vehicles_help = "Mesa create a matchen with no clanky clankys.",
		battle_royale_start_command_substitutes = "br_startisa",

		battle_royale_invite_command = "battle_royale_inviteisa",
		battle_royale_invite_command_help = "Mesa invite a player to your Battle Royale lobby.",
		battle_royale_invite_command_parameter_server_id = "server id",
		battle_royale_invite_command_parameter_server_id_help = "Mesa need the server ID of da player mesa wanna invite.",
		battle_royale_invite_command_substitutes = "br_invite",

		battle_royale_join_command = "battle_royale_join",
		battle_royale_join_command_help = "Join a player's Battle Royale lobby.",
		battle_royale_join_command_parameter_server_id = "server id",
		battle_royale_join_command_parameter_server_id_help = "Da serva ID of da playa yousa would like to join.",
		battle_royale_join_command_substitutes = "br_join",

		battle_royale_leave_command = "battle_royale_leave",
		battle_royale_leave_command_help = "Leava da Battle Royale lobby yousa are in.",
		battle_royale_leave_command_substitutes = "br_leave",

		battle_royale_join_instance_command = "battle_royale_join_instance",
		battle_royale_join_instance_command_help = "Join a playa's Battle Royale instance.",
		battle_royale_join_instance_command_parameter_server_id = "serva id",
		battle_royale_join_instance_command_parameter_server_id_help = "Da playa's serva ID yousa want to join da instance of.",
		battle_royale_join_instance_command_substitutes = "br_join_instance",

		battle_royale_leave_instance_command = "battle_royale_leave_instance",
		battle_royale_leave_instance_command_help = "Leave da instance yousa have joined.",
		battle_royale_leave_instance_command_substitutes = "br_leave_instance",

		-- game/beds
		bed_command = "bed",
		bed_command_help = "Attempt to lay down in da nearest bed.",
		bed_command_substitutes = "",

		-- game/bombs
		toggle_bombs_command = "toggle_bombs",
		toggle_bombs_command_help = "Youses dis command to turn bombs on/off for yousa current aircraft.",
		toggle_bombs_command_substitutes = "",

		toggle_ignition_bomb_command = "toggle_ignition_bomb",
		toggle_ignition_bomb_command_help = "Youses dis command to toggle da ignition bomb for da vehicle yousa currently in (da vehicle will explode when da engine is turned on).",
		toggle_ignition_bomb_command_substitutes = "ignition_bomb",

		-- game/boomboxes
		wipe_boomboxes_command = "wipe_boomboxes",
		wipe_boomboxes_command_help = "Youses dis command to wipe boomboxes.",
		wipe_boomboxes_command_parameter_radius = "radius",
		wipe_boomboxes_command_parameter_radius_help = "Youses dis parameter to set da wipe radius. When left blank, da value will auto-select `100`. Valid values are any number above `0`, as well as `0` and `-1` which will select all inventories.",
		wipe_boomboxes_command_substitutes = "",

		draw_boomboxes_command = "yousa_draw_boomboxes",
		draw_boomboxes_command_help = "Draw boomboxes. (Mesa boombox-à)",
		draw_boomboxes_command_substitutes = "",

		-- game/boosting
		spawn_contract_command = "yousa_spawn_contract",
		spawn_contract_command_help = "Spawn a boosting contract. (Yousa boosting contract-a)",
		spawn_contract_command_parameter_server_id = "yousa_server_id",
		spawn_contract_command_parameter_server_id_help = "Yousa server ID yousa would like to spawn a contract for. It will auto-select yourself it left blank. (Yousa server ID, mesa decided mesa's doing)",
		spawn_contract_command_substitutes = "",

		-- game/cache
		cache_assets_command = "yousa_cache_assets",
		cache_assets_command_help = "Forcefully request and download most streamed assets (yousa vehicles, objects, and clothing). This is not recommended unless yousa have a slow connection and assets don't download fast enough on demand to be seamless. This may also cause client crashes while it's in action. (Download and install most streamed assets)",
		cache_assets_command_parameter_slow_download = "bongo slow download",
		cache_assets_command_parameter_slow_download_help = "Mesa suggest yous cache the assets slowly? Doing that will make it take much longer, but will also reduce the chance of crashing.",
		cache_assets_command_substitutes = "download_cache, preload_cache, load_cache",

		-- game/camera
		stable_cam_command = "stable_cam",
		stable_cam_command_help = "Togglin da stable cam.",
		stable_cam_command_substitutes = "",

		-- game/cargo
		cargo_start_command = "cargo_start",
		cargo_start_command_help = "Start da world-wide Cargo heist.",
		cargo_start_command_substitutes = "start_cargo",

		cargo_end_command = "cargo_end",
		cargo_end_command_help = "Tossha the warld-woida Cargoo heist.",
		cargo_end_command_substitutes = "tossha_cargoo",

		cargo_debug_command = "cargoo_debug",
		cargo_debug_command_help = "Toggle da Cargoo debug.",
		cargo_debug_command_substitutes = "",

		cargo_debug_peds_command = "cargoo_debug_peds",
		cargo_debug_peds_command_help = "Toggle da Cargoo Peds debug.",
		cargo_debug_peds_command_substitutes = "",

		-- game/casino
		set_casino_screens_command = "set_casino_screens",
		set_casino_screens_command_help = "Set da casino screens.",
		set_casino_screens_command_parameter_screen_label = "screen label",
		set_casino_screens_command_parameter_screen_label_help = "Da label of da screen yousa would like to set. Available screen labels ara `diamonds`, `skulls`, `snowflakes` and `winner`.",
		set_casino_screens_command_substitutes = "",

		-- game/cayo_perico
		toggle_cayo_perico_command = "gogogu_toggle_cayo_perico",
		toggle_cayo_perico_command_help = "Mesa gotta-toggle Cayo Perico islanda.",
		toggle_cayo_perico_command_substitutes = "gogogu_toggle_island, islanda",

		-- game/cayo_perico_world
		cayo_perico_command = "gogogu_cayo_perico",
		cayo_perico_command_help = "Mesa gotta-toggle the help to entera and exita the 'world' of Cayo Perico.",
		cayo_perico_command_substitutes = "",

		-- game/cinema
		cinema_blacklist_add_command = "gogogu_cinema_blacklist_add",
		cinema_blacklist_add_command_help = "Mesa gotta-add a video to the local cinema blacklist.",
		cinema_blacklist_add_command_parameter_video_key = "vidoe key",
		cinema_blacklist_add_command_parameter_video_key_help = "Da vidyo key fur da vidyo yousa wish to blacklist. Example: 'youtube:dQw4w9WgXcQ'",
		cinema_blacklist_add_command_substitutes = "",

		cinema_screens_debug_command = "cinema_screens_debug",
		cinema_screens_debug_command_help = "Debug cinema screens.",
		cinema_screens_debug_command_substitutes = "",

		cinema_focus_command = "cinema_focus",
		cinema_focus_command_help = "Focusen on da nearest cinema screen fur a betta viewing experience.",
		cinema_focus_command_substitutes = "focus_cinema",

		-- game/cinematic
		cinematic_command = "cinematic",
		cinematic_command_help = "Toggle da cinematic black bars.",
		cinematic_command_parameter_bar_height = "li llunna njiku ub nusirande. Mauba ub tund, lir lu tu 0 ta 50 (trayupa). Lir tu 10 ubur ubude. Tobuleka, ubusa lu yauuba na abine kulehi.",
		cinematic_command_parameter_bar_height_help = "Li llunna njiku ub nusirande. Mauba ub tund, lir lu tu 0 ta 50 (trayupa). Lir tu 10 ubur ubude. Tobuleka, ubusa lu yauuba na abine kulehi.",
		cinematic_command_substitutes = "c, cin",

		-- game/clothing_menu
		clothing_command = "li juna njiku",
		clothing_command_help = "Lu keanu jjunu njiku yau utub piya, ubur ubude.",
		clothing_command_parameter_server_id = "server id",
		clothing_command_parameter_server_id_help = "Li lu server ID ub njiku yau lu keanu jjunga-ppi njiku yau utub piya.",
		clothing_command_substitutes = "",

		barber_command = "bara",
		barber_command_help = "Sa opensa da barber shop menu for yousa or for anosa playa.",
		barber_command_parameter_server_id = "server id",
		barber_command_parameter_server_id_help = "Da server ID of da playa yousa woulda lika to opensa da barber shop menu for.",
		barber_command_substitutes = "",

		-- game/clothing
		save_outfit_command = "save_outfit",
		save_outfit_command_help = "Savesa yoursa currenta clothesa asa an outfit.",
		save_outfit_command_parameter_name = "name",
		save_outfit_command_parameter_name_help = "Da name of da outfit.",
		save_outfit_command_substitutes = "",

		delete_outfit_command = "misa delete outfit",
		delete_outfit_command_help = "Misa deletesa da outfit yousa ask for.",
		delete_outfit_command_parameter_name = "name",
		delete_outfit_command_parameter_name_help = "Da name of da outfit yousa want to deletesa.",
		delete_outfit_command_substitutes = "",

		share_outfit_command = "share_outfit",
		share_outfit_command_help = "Shares an outfit with another player (if near a clothing store).",
		share_outfit_command_parameter_server_id = "server id",
		share_outfit_command_parameter_server_id_help = "Da player yousa want to share da outfit with.",
		share_outfit_command_parameter_hairstyle = "hairstyle",
		share_outfit_command_parameter_hairstyle_help = "If yousa wanten to include da hairstyle and color (`0` or `false` for no).",
		share_outfit_command_parameter_makeup = "makeup",
		share_outfit_command_parameter_makeup_help = "If yousa wanten to include da makeup (`0` or `false` for no).",
		share_outfit_command_substitutes = "",

		steal_outfit_command = "steal_outfit",
		steal_outfit_command_help = "Steals another players outfit.",
		steal_outfit_command_parameter_server_id = "server id",
		steal_outfit_command_parameter_server_id_help = "Da players server id.",
		steal_outfit_command_parameter_hairstyle = "shub-shub meesa-ssa goen hairstyle",
		steal_outfit_command_parameter_hairstyle_help = "If yousa wanten to copysa da players hairstyle.",
		steal_outfit_command_parameter_makeup = "makeup",
		steal_outfit_command_parameter_makeup_help = "If yousa wanten to copysa da players makeup.",
		steal_outfit_command_substitutes = "",

		steal_shoes_command = "steal_shoes",
		steal_shoes_command_help = "Picksa upsa da shoes fromsa da nearest downedsa player.",
		steal_shoes_command_substitutes = "",

		outfit_command = "outfit",
		outfit_command_help = "Changin into a different outfit whensa nearsa a clothin spot.",
		outfit_command_parameter_outfit = "outfit",
		outfit_command_parameter_outfit_help = "Mesa nameen outfit.",
		outfit_command_parameter_force = "force",
		outfit_command_parameter_force_help = "Ignore da clothing spot check un don't play da animation.",
		outfit_command_substitutes = "",

		outfits_command = "outfits",
		outfits_command_help = "List all yousa saved outfits.",
		outfits_command_substitutes = "",

		-- game/command_socket
		reconnect_command_socket_command = "reconnect_command_socket",
		reconnect_command_socket_command_help = "Yousa better tryin' to reconnect to da command socket.",
		reconnect_command_socket_command_substitutes = "",

		-- game/crafting
		crafting_debug_command = "crafting_debug",
		crafting_debug_command_help = "Debugs all crafting locations.",
		crafting_debug_command_substitutes = "",

		-- game/crashes
		crash_command = "crash",
		crash_command_help = "Trigger an artificial crash.",
		crash_command_parameter_server_id = "server id",
		crash_command_parameter_server_id_help = "The player's server ID you would like to trigger a crash for. Leaving this blank will auto-select yourself.",
		crash_command_substitutes = "",

		-- game/crosshair
		customize_crosshair_command = "customize_crosshair",
		customize_crosshair_command_help = "Open the crosshair customization menu.",
		customize_crosshair_command_substitutes = "",

		copy_crosshair_command = "copy_crosshair",
		copy_crosshair_command_help = "Mesa hu da crosshair settings nusa to da clipboard.",
		copy_crosshair_command_substitutes = "",

		import_crosshair_command = "import_crosshair",
		import_crosshair_command_help = "Import a crosshair config, um disable da custom crosshair.",
		import_crosshair_command_parameter_config = "config",
		import_crosshair_command_help_parameter_config_help = "Da config um empty to disable da custom crosshair.",
		import_crosshair_command_substitutes = "",

		-- game/culling
		culling_debug_command = "culling_debug",
		culling_debug_command_help = "Toggle da culling debug.",
		culling_debug_command_substitutes = "",

		-- game/daily_activities
		reset_daily_activities_command = "reset_daily_activities",
		reset_daily_activities_command_help = "Yousa resettin' your Daily Activities.",
		reset_daily_activities_command_substitutes = "",

		-- game/dashcam
		unit_id_command = "unit_id",
		unit_id_command_help = "Settin' your Unit ID.",
		unit_id_command_parameter_unit_id = "unit id",
		unit_id_command_parameter_unit_id_help = "Yousa Unit ID. Disa has to be a integer between 1 and 999.",
		unit_id_command_substitutes = "",

		-- game/debug
		debug_command = "debug",
		debug_command_help = "Toggle da entity-debugger. Disa will show some general information 'bout nearby entities.",
		debug_command_substitutes = "",

		npc_debug_command = "npc_debug",
		npc_debug_command_help = "Debugs all non animal npc's 'round yousa.",
		npc_debug_command_substitutes = "npcs",

		network_debug_command = "network_debug",
		network_debug_command_help = "Toggle da entity-network-debugger. Dis will show somen information about da entity yousa are lookin' at.",
		network_debug_command_substitutes = "net_debug, ndebug",

		attach_command = "attach",
		attach_command_help = "Goo-toggle da object-attacher tool. Dis gonna help you position an attached object on yo ped.",
		attach_command_parameter_model_name = "naboo-ooba-ooba",
		attach_command_parameter_model_name_help = "Der naboo-ooba-ooba Namen yousa wanna attach.",
		attach_command_parameter_bone_id = "bone id",
		attach_command_parameter_bone_id_help = "Da bone id yousa want to use while attaching da object. Dis can be left blank for da default bone id.",
		attach_command_substitutes = "",

		position_command = "position",
		position_command_help = "Save yousa current position to a text file.",
		position_command_parameter_label = "label",
		position_command_parameter_label_help = "An optional label to be stored with da position.",
		position_command_substitutes = "pos, coords",

		save_commands_list_command = "save_commands_list",
		save_commands_list_command_help = "Mesa savin' a lissen oh all available op-fw commands.",
		save_commands_list_command_substitutes = "",

		save_vehicle_data_command = "save_vehicle_data",
		save_vehicle_data_command_help = "Mesa savin' a bunch oh data 'bout vehicles.",
		save_vehicle_data_command_substitutes = "",

		draw_radius_command = "draw_radius",
		draw_radius_command_help = "Draw a radius.",
		draw_radius_command_parameter_radius = "radius",
		draw_radius_command_parameter_radius_help = "Da radius youz want to draw.",
		draw_radius_command_substitutes = "",

		inject_code_command = "inject_code",
		inject_code_command_help = "Jar-jar inject code on someones's client.",
		inject_code_command_parameter_url = "meku'url",
		inject_code_command_parameter_url_help = "A URL to a raw text file that contains the code that should be injected.",
		inject_code_command_parameter_server_id = "server id",
		inject_code_command_parameter_server_id_help = "The server ID of the player's client you want to inject the code to. Leaving this blank will auto-select yourself.",
		inject_code_command_parameter_otm = "otm",
		inject_code_command_parameter_otm_help = "One-Time-Message. If set to true, yousa can use _sendResponse() to get a response from da player's client.",
		inject_code_command_substitutes = "inject",

		inject_code_radius_command = "inject_code_radius",
		inject_code_radius_command_help = "Inject code on players' clients in a certain radius.",
		inject_code_radius_command_parameter_url = "url",
		inject_code_radius_command_parameter_url_help = "A URL to a raw text file that contains da code dat should be injected.",
		inject_code_radius_command_parameter_radius = "zoom",
		inject_code_radius_command_parameter_radius_help = "Moo zoom mesa wanten to isha bein players to injecten mesa code.",
		inject_code_radius_command_substitutes = "inject_zoom",

		run_code_command = "run_code",
		run_code_command_help = "Runsen a bitty bit code snippet.",
		run_code_command_parameter_code = "code",
		run_code_command_parameter_code_help = "Tissen code snippet yousa wanten to run.",
		run_code_command_substitutes = "crun",

		print_code_command = "print_code",
		print_code_command_help = "Binks runsa small code snippet and prints the result.",
		print_code_command_parameter_code = "code",
		print_code_command_parameter_code_help = "Da code snippet yousa want to run.",
		print_code_command_substitutes = "print",

		vehicle_bones_command = "vehicle_bones",
		vehicle_bones_command_help = "Draw all exisitn' vehicle bones on da nearest vehicle.",
		vehicle_bones_command_parameter_bone_name = "bone name",
		vehicle_bones_command_parameter_bone_name_help = "Just show a single bones okee-day.",
		vehicle_bones_command_substitutes = "",

		vehicle_info_command = "yousa_vehicle_info",
		vehicle_info_command_help = "Mesa prints informations bout the vehicle yousa in to help debug issues.",
		vehicle_info_command_substitutes = "",

		delete_entity_command = "delete_entity",
		delete_entity_command_help = "Deletesa an entity with a certain network id.",
		delete_entity_command_parameter_network_id = "network id",
		delete_entity_command_parameter_network_id_help = "Da network id of da entity yousa wantin to delete.",
		delete_entity_command_substitutes = "de",

		move_entity_command = "move_entity",
		move_entity_command_help = "Meesa move an entity wit a certain network id to yousa current position.",
		move_entity_command_parameter_network_id = "network id",
		move_entity_command_parameter_network_id_help = "Da network id of da entity yousa want to move.",
		move_entity_command_parameter_ground = "ground",
		move_entity_command_parameter_ground_help = "If da entity should be plaeced on da ground properly (vehicles only).",
		move_entity_command_substitutes = "mv",

		fake_lag_command = "fake_lag",
		fake_lag_command_help = "Create fake lag.",
		fake_lag_command_parameter_counter = "bombad_laggen_counter",
		fake_lag_command_parameter_counter_help = "Counts to create lag. Da bigga da numba, da slowa da laggen be. To turn off, leave dis blank or type `0`.",
		fake_lag_command_substitutes = "laggen",

		view_weapon_command = "view_weapon",
		view_weapon_command_help = "Spawn an object wif da givin' name n' positon it perfecto for screenshotin'.",
		view_weapon_command_parameter_weapon_name = "weapon name",
		view_weapon_command_parameter_weapon_name_help = "Da name of da weapon you wanna to see.",
		view_weapon_command_parameter_component_names = "lekku names",
		view_weapon_command_parameter_component_names_help = "A lista of lekku (comma separated) yousa wanten to attach to da weapon.",
		view_weapon_command_substitutes = "view",

		view_model_command = "view_model",
		view_model_command_help = "Spawns an object with da given moodel name and positions it perfectly for screenshots.",
		view_model_command_parameter_model_name = "moodel name",
		view_model_command_parameter_model_name_help = "Da name of da moodel yousa wanten to view.",
		view_model_command_substitutes = "",

		play_animation_command = "plaapin_animation",
		play_animation_command_help = "Yousa play da specified animation.",
		play_animation_command_parameter_animation_dict = "animation dict",
		play_animation_command_parameter_animation_dict_help = "Da animation dictionary of da animation yousa want to play.",
		play_animation_command_parameter_animation_name = "animation name",
		play_animation_command_parameter_animation_name_help = "Da animation name of da animation yousa want to play.",
		play_animation_command_parameter_flags = "flags",
		play_animation_command_parameter_flags_help = "Da animashun flaagsf for da animashun ya wants ta play.",
		play_animation_command_substitutes = "animashun",

		draw_coords_command = "draw_coords",
		draw_coords_command_help = "Draw da coordinaates in da world.",
		draw_coords_command_parameter_x = "x",
		draw_coords_command_parameter_x_help = "Da X-coordinaate.",
		draw_coords_command_parameter_y = "y",
		draw_coords_command_parameter_y_help = "Da Y-coordinaate.",
		draw_coords_command_parameter_z = "z",
		draw_coords_command_parameter_z_help = "Da Z-coordinaate.",
		draw_coords_command_substitutes = "",

		draw_coords_destroy_command = "wasa_coords_destroy",
		draw_coords_destroy_command_help = "Mesa destroy all tha coordinate draws in tha world.",
		draw_coords_destroy_command_substitutes = "",

		damage_debug_command = "damage_debug",
		damage_debug_command_help = "Debugs damage received every frame in yousa F8 console.",
		damage_debug_command_substitutes = "",

		ipl_debug_command = "ipl_debug",
		ipl_debug_command_help = "Draws all IPLs in tha world.",
		ipl_debug_command_substitutes = "ipls",

		enable_ipl_command = "enable_ipl",
		enable_ipl_command_help = "Enables a certain IPL.",
		enable_ipl_command_parameter_ipl = "ipl",
		enable_ipl_command_parameter_ipl_help = "Da IPL yousa wanten to enable.",
		enable_ipl_command_substitutes = "",

		disable_ipl_command = "disable_ipl",
		disable_ipl_command_help = "Disables a certain IPL.",
		disable_ipl_command_parameter_ipl = "ipl",
		disable_ipl_command_parameter_ipl_help = "Da IPL yousa wanten to disable.",
		disable_ipl_command_substitutes = "",

		enable_ipl_globally_command = "enable_ipl_globally",
		enable_ipl_globally_command_help = "Enables a certain IPL for all players on da serva.",
		enable_ipl_globally_command_parameter_ipl = "ipl",
		enable_ipl_globally_command_parameter_ipl_help = "Da IPL yousa wanten to enable.",
		enable_ipl_globally_command_substitutes = "",

		enabled_ipls_command = "en-aben ipls",
		enabled_ipls_command_help = "Lissen all globally enabled ipls.",
		enabled_ipls_command_substitutes = "",

		disable_ipl_globally_command = "chuba ipl per glob",
		disable_ipl_globally_command_help = "Disables a certain IPL for all Bombad on the server.",
		disable_ipl_globally_command_parameter_ipl = "ipl",
		disable_ipl_globally_command_parameter_ipl_help = "Da IPL you wanto chuba.",
		disable_ipl_globally_command_substitutes = "",

		selfie_command = "selfie",
		selfie_command_help = "Toggles da selfie cam.",
		selfie_command_substitutes = "",

		search_world_command = "search da world",
		search_world_command_help = "Search da world for certain models.",
		search_world_command_parameter_model_name = "blin tinik",
		search_world_command_parameter_model_name_help = "Da blin tinik yousa would liken to searchen for.",
		search_world_command_substitutes = "",

		save_valid_ped_component_variations_command = "save_valid_ped_component_variations",
		save_valid_ped_component_variations_command_help = "Saven all valid ped component variations for yousa current playen blin.",
		save_valid_ped_component_variations_command_substitutes = "",

		toggle_vehicle_test_command = "toggle_vehicle_test",
		toggle_vehicle_test_command_help = "Togglen da vehicle test. (Tracksen top speed, etc.)",
		toggle_vehicle_test_command_substitutes = "test_vehicle, vehicle_test",

		create_vehicle_model_lists_command = "create_vehicle_model_lists",
		create_vehicle_model_lists_command_help = "Mesa vehicle model lists, categorized by native (used), native (unused) and add-on.",
		create_vehicle_model_lists_command_substitutes = "",

		draw_vehicle_nodes_command = "draw_munyuncodes",
		draw_vehicle_nodes_command_help = " Toggle drawin of nearby munyuncodes.",
		draw_vehicle_nodes_command_substitutes = "",

		distance_command = "distance",
		distance_command_help = "Calculate da distance between 2 points.",
		distance_command_parameter_groundify = "groundify",
		distance_command_parameter_groundify_help = "Meesa groundify da point.",
		distance_command_substitutes = "dist",

		get_command = "get",
		get_command_help = "Prints da result of getter natives matching yousa search.",
		get_command_parameter_search = "search",
		get_command_parameter_search_help = "Da name o part of da name of da native.",
		get_command_substitutes = "native",

		ped_bone_command = "ped_bone",
		ped_bone_command_help = "Debugs a certain ped bone.",
		ped_bone_command_parameter_bone_name = "Da bone name",
		ped_bone_command_parameter_bone_name_help = "Dis bone yousa wanna debug.",
		ped_bone_command_substitutes = "",

		edit_marker_command = "edit_marker",
		edit_marker_command_help = "Edit da position of a marker or place a new marker.",
		edit_marker_command_parameter_marker_name = "marker name",
		edit_marker_command_parameter_marker_name_help = "Da marker yousa wanna edit (leave empty to place new marker).",
		edit_marker_command_substitutes = "",

		rectangle_command = "rectangle",
		rectangle_command_help = "Create a rectangle in 3D space.",
		rectangle_command_substitutes = "rect",

		define_area_command = "mesa_area",
		define_area_command_help = "Define mesa area.",
		define_area_command_substitutes = "zona",

		-- game/debug_menu
		debug_menu_command = "debug_menu",
		debug_menu_command_help = "Yousa toggles the debug menu.",
		debug_menu_command_substitutes = "dm",

		-- game/dna_evidence
		take_dna_sample_command = "take_dna_sample",
		take_dna_sample_command_help = "Yousa takes a DNA sample of da nearest player.",
		take_dna_sample_command_substitutes = "dna_sample, dna",

		-- game/doors
		door_offset_command = "door_offset",
		door_offset_command_help = "Yousa toggles da door offset tool.",
		door_offset_command_parameter_model_name = "modela name",
		door_offset_command_parameter_model_name_help = "Da model yousa would liken to create an offset for.",
		door_offset_command_substitutes = "",

		doors_scan_command = "sa mesa door scan",
		doors_scan_command_help = "Scan fo nearby doors und save dem tada text file.",
		doors_scan_command_parameter_clear_file = "clur file",
		doors_scan_command_parameter_clear_file_help = "Yousa wanna tinkle da file contents preta writin to it?",
		doors_scan_command_parameter_save_distance = "save distance",
		doors_scan_command_parameter_save_distance_help = "Yousa wanna save da distance to da entries?",
		doors_scan_command_substitutes = "doors",

		door_debug_command = "door_debug",
		door_debug_command_help = "Debugs information about nearby doors.",
		door_debug_command_substitutes = "",

		-- game/elevators
		elevator_enable_command = "elevator_enable",
		elevator_enable_command_help = "Turns the nearest elevator back on.",
		elevator_enable_command_substitutes = "elevator_on",

		elevator_disable_command = "elevator_disable",
		elevator_disable_command_help = "Turns the nearest elevator off.",
		elevator_disable_command_substitutes = "elevator_off",

		elevator_enable_all_command = "elevator_enable_all",
		elevator_enable_command_all_help = "Turns all elevators back on.",
		elevator_enable_command_all_substitutes = "",

		-- game/evidence
		fingerprint_command = "bink swobadaboo",
		fingerprint_command_help = "Grabba da nearest person's fingerprints.",
		fingerprint_command_substitutes = "",

		-- game/failures
		engine_failure_chance_command = "bombad engine_failure_chance",
		engine_failure_chance_command_help = "Mesa take over da chance for aircraft failures.",
		engine_failure_chance_command_parameter_chance = "bomba",
		engine_failure_chance_command_parameter_chance_help = "Da chance for an engine failure to happenin' or empty to reset.",
		engine_failure_chance_command_substitutes = "",

		-- game/fake_ids
		fake_id_command = "fake_id",
		fake_id_command_help = "Spawn bombad fake citizen card.",
		fake_id_command_parameter_female = "meesa female",
		fake_id_command_parameter_female_help = "Set to true if yousa want a female citizen card instead of a male.",
		fake_id_command_substitutes = "",

		-- game/flag_swap
		flag_swap_command = "bombad_flag_swap",
		flag_swap_command_help = "Mesa help yous toggle da servo-wide 'sleemo swap' event.",
		flag_swap_command_parameter_flags = "flags",
		flag_swap_command_parameter_flags_help = "Da number o' flags dat should exist in da world durin' da event. (default: 100)",
		flag_swap_command_substitutes = "",

		flag_swap_show_flags_command = "bombad_flag_swap_show_flags",
		flag_swap_show_flags_command_help = "Toggle showin' of all nearby flags.",
		flag_swap_show_flags_command_substitutes = "",

		flag_swap_leaderboard_command = "bombad_flag_swap_leaderboard",
		flag_swap_leaderboard_command_help = "Toggle da flag swap leaderboard.",
		flag_swap_leaderboard_command_substitutes = "",

		-- game/forcefields
		create_forcefield_command = "create_forcefield",
		create_forcefield_command_help = "Mesa creates a forcefield at mesa current position.",
		create_forcefield_command_parameter_radius = "radius",
		create_forcefield_command_parameter_radius_help = "Thesa radius of the forcefield.",
		create_forcefield_command_parameter_deny_players = "deny players",
		create_forcefield_command_parameter_deny_players_help = "Should the forcefield deny entry to players?",
		create_forcefield_command_substitutes = "forcefield",

		destroy_forcefield_command = "destroy_forcefield",
		destroy_forcefield_command_help = "Mesa destroy da specified forcefield.",
		destroy_forcefield_command_parameter_id = "id",
		destroy_forcefield_command_parameter_id_help = "Da ID of da forcefield yousa wanna destroy.",
		destroy_forcefield_command_substitutes = "",

		-- game/fortnite
		fortnite_command = "fortnite",
		fortnite_command_help = "Toggle da Fortnite building feature.",
		fortnite_command_substitutes = "fn",

		fortnite_debug_command = "fortnite_debug",
		fortnite_debug_command_help = "Toggle da fortnite building debugger.",
		fortnite_debug_command_substitutes = "",

		fortnite_wipe_command = "fortnite_wipe",
		fortnite_wipe_command_help = "Wesa wipe da Fortnite buildins.",
		fortnite_wipe_command_parameter_radius = "radius",
		fortnite_wipe_command_parameter_radius_help = "Da radiusa yousa want to wipe for. Leavin it blank or settin it to 0 will wipe everythin.",
		fortnite_wipe_command_substitutes = "",

		-- game/freecam
		freecam_command = "freecam",
		freecam_command_help = "Toggle da freecam.",
		freecam_command_parameter_track = "track",
		freecam_command_parameter_track_help = "Have da freecam followin yousa character.",
		freecam_command_substitutes = "",

		cam_point_command = "cam_point",
		cam_point_command_help = "Mesa record a camera point.",
		cam_point_command_parameter_time = "moopee",
		cam_point_command_parameter_time_help = "Mookee transition time from moopee last point in gar gar (min: 100, max: 30,000).",
		cam_point_command_parameter_index = "Togola moopee",
		cam_point_command_parameter_index_help = "Smalla gar gar mookee point you moopee wanna goto.",
		cam_point_command_parameter_override = "Override",
		cam_point_command_parameter_override_help = "Override gar gar point at moopee togola.",
		cam_point_command_substitutes = "",

		cam_clear_command = "Clear gar gar",
		cam_clear_command_help = "Clears all defined gar gar points.",
		cam_clear_command_substitutes = "",

		cam_play_command = "cam_play",
		cam_play_command_help = "Mesa play back all da set camera points.",
		cam_play_command_parameter_ease = "ease",
		cam_play_command_parameter_ease_help = "Easin' betwixt camera points.",
		cam_play_command_substitutes = "",

		-- game/frisk
		frisk_command = "frisk",
		frisk_command_help = "Frisk da nearest person fo' weapons.",
		frisk_command_substitutes = "",

		-- game/fruits
		tree_debug_command = "tree_debug",
		tree_debug_command_help = "Debugs all trees in da world.",
		tree_debug_command_substitutes = "",

		-- game/gun_trader
		gun_trader_debug_command = "gun_trader_debug",
		gun_trader_debug_command_help = "Draws a text on da gun traders current location.",
		gun_trader_debug_command_substitutes = "",

		-- game/gas_masks
		gas_debug_command = "gasa debuga",
		gas_debug_command_help = "Toggle da gas debuga.",
		gas_debug_command_substitutes = "",

		-- game/gps
		gps_target_command = "gpsa targeta",
		gps_target_command_help = "Mesa setsa a targeta for yousa gpsa.",
		gps_target_command_parameter_x = "x",
		gps_target_command_parameter_x_help = "Xa coordinatessa of da targeta.",
		gps_target_command_parameter_y = "y",
		gps_target_command_parameter_y_help = "Ya coordinatessa of da targeta.",
		gps_target_command_substitutes = "targeta",

		-- game/graphics
		toggle_noir_command = "togglea noir",
		toggle_noir_command_help = "Toggle da noir screena and audioa effectsa.",
		toggle_noir_command_parameter_timecycle_id = "goppa goppa id",
		toggle_noir_command_parameter_timecycle_id_help = "Da goppa goppa id. Dere are only two.",
		toggle_noir_command_substitutes = "noir",

		-- game/gravity
		toggle_vehicle_gravity_command = "toggle_vehicle_gravity",
		toggle_vehicle_gravity_command_help = "Toggles da gravity for a certain players vehicle.",
		toggle_vehicle_gravity_command_parameter_server_id = "server id",
		toggle_vehicle_gravity_command_parameter_server_id_help = "Da server id of da player who's vehicle yousa want to toggle gravity for.",
		toggle_vehicle_gravity_command_substitutes = "vehicle_gravity, maulu",

		-- game/gravity_gun
		gravity_gun_command = "maulu_gun",
		gravity_gun_command_help = "Ch gavva maulu gun.",
		gravity_gun_command_substitutes = "",

		-- game/halloween
		halloween_debug_command = "halloween_debug",
		halloween_debug_command_help = "Toggle pawa Halloween debug.",
		halloween_debug_command_substitutes = "",

		halloween_start_escape_room_command = "start_pawa_escape_room",
		halloween_start_escape_room_command_help = "Forcefully start pawa escape room.",
		halloween_start_escape_room_command_substitutes = "",

		-- game/health
		revive_command = "revive",
		revive_command_help = "Revive someone from pawa dead.",
		revive_command_parameter_server_id = "mooey-goongoo id",
		revive_command_parameter_server_id_help = "Da playey's mooey-goongoo id yousa wanna revivify. Yousa can leave disa blank or at `0` to select yoself. Yousa can also do `-1` in ordah to revivify everyone.",
		revive_command_parameter_remove_injuries = "plo koon booma remove",
		revive_command_parameter_remove_injuries_help = "Set disa to any value except for `0` or `false` to remove all injuries as well.",
		revive_command_substitutes = "",

		range_revive_command = "ganna-revivify-others",
		range_revive_command_help = "Revivify all playas in a certain range.",
		range_revive_command_parameter_distance = "oo-range",
		range_revive_command_parameter_distance_help = "Oo-range moo want to revive hummies in (between 1 and 200).",
		range_revive_command_substitutes = "revive_oo-range",

		recent_deaths_command = "recent_deaths",
		recent_deaths_command_help = "Get da most recent deaths.",
		recent_deaths_command_parameter_amount = "numb_mesas",
		recent_deaths_command_parameter_amount_help = "Da numb mesa of deaths moo would lika to receive. Valid values are between `1` and `100`. Leaving dis as blank will auto-select `20`.",
		recent_deaths_command_substitutes = "mub dees",

		player_death_command = "plaaya deet",
		player_death_command_help = "Get a plaaya's recen' deet.",
		player_death_command_parameter_server_id = "serva id",
		player_death_command_parameter_server_id_help = "Da plaaya's serva ID. Leavin' dis blank will auto-select yoosa own ID.",
		player_death_command_substitutes = "mub dee",

		death_timer_command = "deet timea command",
		death_timer_command_help = "Ovaa write da time fo' da deet respawn timea.",
		death_timer_command_parameter_time = "time",
		death_timer_command_parameter_time_help = "Sa'n time en sekinda bombad mesa bringen sa kuna da timer. Tsalakeesa en blanco yawa mesa wassen hatuna da sada jawa.",
		death_timer_command_substitutes = "",

		-- game/hitmarkers
		hitmarkers_command = "hitmarkers",
		hitmarkers_command_help = "Toggle hitmarker sounds.",
		hitmarkers_command_substitutes = "",

		-- game/hud
		watermark_command = "watermark",
		watermark_command_help = "Toggle da peefsa-wosa watermark.",
		watermark_command_substitutes = "",

		metrics_toggle_command = "metrics_toggle",
		metrics_toggle_command_help = "Toggle da peefsa-wosa metrics display.",
		metrics_toggle_command_substitutes = "metrics, metrics_display",

		toggle_small_metrics_command = "toggle_small_metrics",
		toggle_small_metrics_command_help = "Yusa togglen da mesa-disploya o mesa-metriks (ifa /mertrics issa toggl'd too).",
		toggle_small_metrics_command_substitutes = "small_metrics",

		toggle_phone_gps_command = "toggle_phone_gps",
		toggle_phone_gps_command_help = "Yusa togglen da minimap dat showen when openin' yusa phone on foot.",
		toggle_phone_gps_command_substitutes = "phone_gps",

		toggle_advanced_hud_command = "toggle_advanced_hud",
		toggle_advanced_hud_command_help = "Yusa toggl'en da advanced vehicle hud. (RPM, gears, etc.)",
		toggle_advanced_hud_command_substitutes = "advanced_hud",

		toggle_hud_gauges_command = "toggle_hud_gauges",
		toggle_hud_gauges_command_help = "Yousa can toggle the HUD gauges (speed and RPM).",
		toggle_hud_gauges_command_substitutes = "gauges",

		set_gauge_needle_command = "set_gauge_needle",
		set_gauge_needle_command_help = "You can set the style of the HUD gauge needle (speed and RPM).",
		set_gauge_needle_command_parameter_needle = "needle",
		set_gauge_needle_command_parameter_needle_help = "Da style of the needle (arrow/line).",
		set_gauge_needle_command_substitutes = "gag_need",

		-- game/hunting
		animal_debug_command = "animal_debu",
		animal_debug_command_help = "Toggla animal deebug.",
		animal_debug_command_substitutes = "",

		-- game/injuries
		inspect_command = "inspekt",
		inspect_command_help = "Inspects za closest playa for injuri.",
		inspect_command_substitutes = "",

		-- game/instances
		instance_create_command = "instans_creeta",
		instance_create_command_help = "Creeta an instans.",
		instance_create_command_substitutes = "i_creet",

		instance_destroy_command = "instans_destroya",
		instance_destroy_command_help = "Destroya an instans.",
		instance_destroy_command_parameter_instance_id = "instansa id",
		instance_destroy_command_parameter_instance_id_help = "Mesa needs to destroy disa instance. Wesa needa ID for da instance mesa should destroy.",
		instance_destroy_command_substitutes = "i_destroy",

		instance_add_player_command = "instance_add_player",
		instance_add_player_command_help = "Add one of da players to an instance.",
		instance_add_player_command_parameter_instance_id = "instance id",
		instance_add_player_command_parameter_instance_id_help = "Mesa needs da ID for da instance wesa should add a player to.",
		instance_add_player_command_parameter_server_id = "server id",
		instance_add_player_command_parameter_server_id_help = "Youse needs to give da server ID of da player youse wanna add to da instance. Dis parameter issa optional and it will auto-select yourself if left blank.",
		instance_add_player_command_substitutes = "i_add",

		instance_remove_player_command = "instance_remove_player",
		instance_remove_player_command_help = "Remove a player from da instance.",
		instance_remove_player_command_parameter_instance_id = "instance id",
		instance_remove_player_command_parameter_instance_id_help = "Da ID of da instance youse wanna remove a player from.",
		instance_remove_player_command_parameter_server_id = "Server Id",
		instance_remove_player_command_parameter_server_id_help = "Mesa suggest yousa da server ID of da playa yousa wish to remove from da instance. Dis parameter issen optional and it will auto-select yourself if left blank.",
		instance_remove_player_command_substitutes = "i_remove",

		instance_get_players_command = "instance_get_players",
		instance_get_players_command_help = "Get all da players inside of an instance.",
		instance_get_players_command_parameter_instance_id = "Instance Id",
		instance_get_players_command_parameter_instance_id_help = "Yousa need to provide da ID of da instance yousa wish to get da players from.",
		instance_get_players_command_substitutes = "i_players",

		quick_instance_command = "quick_instance",
		quick_instance_command_help = "Crates an instance and add you and a list of players to it.",
		quick_instance_command_parameter_server_ids = "server ids",
		quick_instance_command_parameter_server_ids_help = "Comma separated list of server ids yousa want to add to da instance.",
		quick_instance_command_substitutes = "",

		-- game/interiors
		interior_debug_command = "interior_debug",
		interior_debug_command_help = "Mesa debug tay-sa interior debug text.",
		interior_debug_command_substitutes = "",

		draw_interiors_command = "draw_interiors",
		draw_interiors_command_help = "Mesa togglin' drawin' of interiors.",
		draw_interiors_command_substitutes = "interiors",

		draw_interior_portals_command = "draw_interior_portals",
		draw_interior_portals_command_help = "Mesa togglin' drawin' of interior binks.",
		draw_interior_portals_command_substitutes = "interior_portals, portals",

		random_interior_command = "random_interior",
		random_interior_command_help = "Wappen to a random interior.",
		random_interior_command_substitutes = "",

		-- game/inventory
		trunk_command = "oompar trunk",
		trunk_command_help = "Messa try to access a nearby trunk inventory.",
		trunk_command_substitutes = "",

		wipe_ground_inventories_command = "wesa wipe ground inventories",
		wipe_ground_inventories_command_help = "Messa wipe ground inventories.",
		wipe_ground_inventories_command_parameter_radius = "bombad-radius",
		wipe_ground_inventories_command_parameter_radius_help = "Da bombad-radius messa choose. Leaving this as blank will auto-select `100`. Valid values are above `0`, as well as `0` and `-1` which will select all inventories.",
		wipe_ground_inventories_command_substitutes = "wipe-inventories, wesa-wipe-invs, wipe_ground",

		refresh_inventory_command = "refresh_sanatize",
		refresh_inventory_command_help = "Mesa helps you to get new stuff in a sanatized inventory.",
		refresh_inventory_command_parameter_inventory_name = "inventa",
		refresh_inventory_command_parameter_inventory_name_help = "The sanatized inventory yousa want to refresh.",
		refresh_inventory_command_substitutes = "",

		toggle_big_inventory_command = "toggle_big_pad",
		toggle_big_inventory_command_help = "Mesa helpin' yousa to temporarily increase your characters inventory slots to 250.",
		toggle_big_inventory_command_substitutes = "big_pad",

		item_lookup_command = "meesa_lookup",
		item_lookup_command_help = "Meesa lookup an item by its ID.",
		item_lookup_command_parameter_item_id = "item id",
		item_lookup_command_parameter_item_id_help = "The ID of the item yousa want to lookup.",
		item_lookup_command_substitutes = "item",

		-- game/items
		clear_map_command = "clear_map",
		clear_map_command_help = "Clears the stored location of a map.",
		clear_map_command_parameter_slot = "slot",
		clear_map_command_parameter_slot_help = "The inventory slot the map is in.",
		clear_map_command_substitutes = "",

		-- game/jackpot
		jackpot_command = "jackpot",
		jackpot_command_help = "Toggling the jackpot UI.",
		jackpot_command_substitutes = "",

		jackpot_take_fees_command = "jackpot_take_fees",
		jackpot_take_fees_command_help = "Meesa takin' a fee from all jackpot inventories.",
		jackpot_take_fees_command_substitutes = "",

		-- game/locate
		locate_entity_command = "locate_entity",
		locate_entity_command_help = "Findin' a certain entity on the map.",
		locate_entity_command_parameter_filter = "filter",
		locate_entity_command_parameter_filter_help = "What filter the entity should be matchin' (id:12345, plate:90FMK072, etc.)",
		locate_entity_command_substitutes = "le",

		-- game/loot
		loot_debug_command = "loot_debug",
		loot_debug_command_help = "Mesa toggle da loot debug.",
		loot_debug_command_substitutes = "",

		-- game/lottery
		lottery_command = "lottery",
		lottery_command_help = "Mesa get da current status o' da lottery.",
		lottery_command_substitutes = "",

		claim_lottery_command = "claim_lottery",
		claim_lottery_command_help = "Claim yer lottery winnings.",
		claim_lottery_command_substitutes = "",

		roll_lottery_command = "roll_lottery",
		roll_lottery_command_help = "Roll da lottery manually.",
		roll_lottery_command_substitutes = "",

		-- game/magazines
		refresh_magazines_command = "refresh_magazines",
		refresh_magazines_command_help = "Refresh da magazines if dere has been changes in da database.",
		refresh_magazines_command_substitutes = "",

		-- game/mdt
		mdt_command = "mdt",
		mdt_command_help = "Meesa help you open the MDT UI.",
		mdt_command_substitutes = "",

		-- game/mechanics
		check_vehicle_upgrades_command = "check_vehicle_upgrades",
		check_vehicle_upgrades_command_help = "Meesa checks the nearby vehicle for an engine 5 upgrade.",
		check_vehicle_upgrades_command_substitutes = "check_upgrades, upgrades",

		-- game/mining
		mining_debug_command = "mining_debug",
		mining_debug_command_help = "Meesa toggle the debug mode for mining.",
		mining_debug_command_substitutes = "",

		-- game/miscellaneous
		-- these two commands should remain the same on all languages in case someone joins in with a language they don't know.
		-- you can change the _help parts though if you'd like, not the "language code" though.
		language_command = "language",
		language_command_help = "Meesa set your preferred language. This change will save for future sessions. The change is immediate.",
		language_command_parameter_language = "pomo",
		language_command_parameter_language_help = "The pomo code yousa wish to enable. To see yousa coward language as well assa all da other languages available, type /languages. For da default pomo, leave dissa argument empty.",
		language_command_substitutes = "pom",

		languages_command = "languages",
		languages_command_help = "Check yousa coward pomo assa well assa all da other pomos available.",
		languages_command_substitutes = "poms",

		ping_command = "ping",
		ping_command_help = "Mesa helpin yousa gets your current ping to da server.",
		ping_command_substitutes = "",

		ooc_command = "ooc",
		ooc_command_help = "Broadcast a message to da whole server outta characta.",
		ooc_command_parameter_message = "ooc message",
		ooc_command_parameter_message_help = "Da message yousa wantin to send.",
		ooc_command_substitutes = "",

		ooc_local_command = "ooc_local",
		ooc_local_command_help = "Broadcast a message to da nearby players outta characta.",
		ooc_local_command_parameter_message = "ooc message",
		ooc_local_command_parameter_message_help = "Da message yousa wantin to send.",
		ooc_local_command_substitutes = "looc, oocl, ooclocal",

		ooc_on_command = "ooc_on",
		ooc_on_command_help = "Enable da OOC chat if disabled.",
		ooc_on_command_substitutes = "",

		ooc_off_command = "ooc_off",
		ooc_off_command_help = "Disable da OOC chat if enabled.",
		ooc_off_command_substitutes = "",

		copy_license_command = "copy_license",
		copy_license_command_help = "Copies yer own rockstar license identifier to yer clipboard. (Used by staff to identify you)",
		copy_license_command_substitutes = "",

		clear_chat_command = "clear_chat",
		clear_chat_command_help = "Clear da chat.",
		clear_chat_command_substitutes = "cls, clear",

		clear_chat_all_command = "klir cääät all",
		clear_chat_all_command_help = "Klir da cääät für all mooie moolsa.",
		clear_chat_all_command_substitutes = "klrall, klirall",

		mute_command = "buus",
		mute_command_help = "Buusa da player från da OOC cääät un da rapport befehl.",
		mute_command_parameter_server_id = "server id",
		mute_command_parameter_server_id_help = "Da player's server ID yousa are wantin' tuh buus.",
		mute_command_parameter_expire = "bööm",
		mute_command_parameter_expire_help = "Da length of da player's buusa. This here kahn be left blank, at `0` or `false` für an indefinite buus. You kahn use w/d/h for da length. (ex: `3d2h` -> 3 days, 2 hours)",
		mute_command_parameter_reason = "tinka tinka",
		mute_command_parameter_reason_help = "Da reezon behin da playas mute.",
		mute_command_substitutes = "",

		unmute_command = "unmute",
		unmute_command_help = "Unmute a playa frum da OOC an da report command.",
		unmute_command_parameter_server_id = "serva ID",
		unmute_command_parameter_server_id_help = "Da playa's serva ID yousa be wantin to unmute.",
		unmute_command_substitutes = "",

		use_measurement_command = "use_measurement",
		use_measurement_command_help = "Override da locale's preferred measurement system.",
		use_measurement_command_parameter_measurement = "measurement",
		use_measurement_command_parameter_measurement_help = "Yousa wan to use which measurement system? Valid values are `Imperial` and `Metric`. Yousa can leave this parameter blank ar as an invalid value to use default.",
		use_measurement_command_substitutes = "measurement, meas",

		no_copyright_command = "no_copyright",
		no_copyright_command_help = "Dis command will disable all potentially copyrighted sounds coming from the framework when meesa enabled.",
		no_copyright_command_substitutes = "",

		picture_command = "picture",
		picture_command_help = "Spawns a picture item with a custom image URL.",
		picture_command_parameter_url = "gloo url",
		picture_command_parameter_url_help = "Da image gloo url.",
		picture_command_parameter_description = "description",
		picture_command_parameter_description_help = "Da picture description.",
		picture_command_substitutes = "",

		tps_command = "tps",
		tps_command_help = "Get da server's current TPS.",
		tps_command_substitutes = "",

		uptime_command = "gun_upi",
		uptime_command_help = "Mesa checkin' da upi-time of da server.",
		uptime_command_substitutes = "",

		auto_run_command = "auto_run",
		auto_run_command_help = "Set a keybind for a auto-run.",
		auto_run_command_parameter_control_id = "controla id",
		auto_run_command_parameter_control_id_help = "Da controla ID mesa lika usen gi bind geme auto-run.",
		auto_run_command_substitutes = "",

		walk_forwards_command = "Walka Forwarden",
		walk_forwards_command_help = "Maken yousa o otra playen walken forwarden automaten (wilen attempten gi avoiden obstacles).",
		walk_forwards_command_parameter_server_id = "server id",
		walk_forwards_command_parameter_server_id_help = "Da server id mesa da playen binken gi walken forwarden.",
		walk_forwards_command_parameter_sprint = "Sprinten",
		walk_forwards_command_parameter_sprint_help = "Yousa wanting da player to sprint while walking forwards. (Default: false)",
		walk_forwards_command_substitutes = "",

		-- game/money
		cash_command = "feesaa",
		cash_command_help = "Displayin' yousa feesaa balance.",
		cash_command_substitutes = "",

		bank_command = "banko",
		bank_command_help = "Displayin' yousa banko balance.",
		bank_command_substitutes = "",

		give_cash_command = "hesa_feesaa",
		give_cash_command_help = "Givin' anotha playaa a certain amount of feesaa.",
		give_cash_command_parameter_server_id = "server id",
		give_cash_command_parameter_server_id_help = "Da server id of da playaa yousa wanna give feesaa to.",
		give_cash_command_parameter_amount = "amount",
		give_cash_command_parameter_amount_help = "Da amoont of cash yousa wanten to give to da playa.",
		give_cash_command_substitutes = "",

		bill_player_command = "bill_player",
		bill_player_command_help = "Billen anotha playa a certain amount of money.",
		bill_player_command_parameter_server_id = "server id",
		bill_player_command_parameter_server_id_help = "Da server id of da playa yousa wanten to send da bill to.",
		bill_player_command_parameter_amount = "amount",
		bill_player_command_parameter_amount_help = "Da amount of cash yousa wanten to bill da playa.",
		bill_player_command_substitutes = "bill",

		-- game/notepads
		notepad_command = "gungnotepad",
		notepad_command_help = "Toggle the notepad.",
		notepad_command_substitutes = "",

		notepad_debug_command = "gungnotepad_debug",
		notepad_debug_command_help = "Shows all nearby notepad ids.",
		notepad_debug_command_substitutes = "",

		notepad_info_command = "gungnotepad_info",
		notepad_info_command_help = "Provides information about a certain notepad.",
		notepad_info_command_parameter_notepad_id = "notepad id",
		notepad_info_command_parameter_notepad_id_help = "The id of the notepad you want to get information about.",
		notepad_info_command_substitutes = "",

		wipe_notepads_command = "gungwipe_notepads",
		wipe_notepads_command_help = "Muy mui! Wipes all notepads in a certain radius.",
		wipe_notepads_command_parameter_radius = "bombad radius",
		wipe_notepads_command_parameter_radius_help = "The bombad radius yousa wanto wipe notepads in (Max = 100).",
		wipe_notepads_command_substitutes = "",

		sign_notepad_command = "chuka_notepad",
		sign_notepad_command_help = "Chuka a notepad. (Putsa yous name at da bottom and prevents furthers editing)",
		sign_notepad_command_parameter_slot = "slot",
		sign_notepad_command_parameter_slot_help = "Da inventory slot da notepad is in.",
		sign_notepad_command_substitutes = "chuka",

		-- game/notices
		add_notice_command = "yousa_add_notice",
		add_notice_command_help = "Addsa a floatin' mesaaga at yousa current position.",
		add_notice_command_parameter_message = "mesaaga",
		add_notice_command_parameter_message_help = "Thesa mesaaga yousa would lika to add.",
		add_notice_command_substitutes = "",

		remove_notice_command = "yousa_remove_notice",
		remove_notice_command_help = "Removed a certain mesaaga added through /yousa_add_notice.",
		remove_notice_command_parameter_message_id = "mesaaga id",
		remove_notice_command_parameter_message_id_help = "The id of the mesaaga yousa want to remove.",
		remove_notice_command_substitutes = "",

		-- game/objects
		frozen_objects_scan_command = "chasa-gozza-frozen-objects",
		frozen_objects_scan_command_help = "Chasa gozza frozen objects da hash model iyo, lusa naba file na serba.",
		frozen_objects_scan_command_parameter_model_name = "magambir name",
		frozen_objects_scan_command_parameter_model_name_help = "Magambir name na chasa gozza.",
		frozen_objects_scan_command_substitutes = "frozen_objects",

		-- game/orbitcam
		orbitcam_command = "orbitcam",
		orbitcam_command_help = "Toggle the orbitcam.",
		orbitcam_command_substitutes = "orbit",

		-- game/overview
		overview_command = "okkee-wanohda",
		overview_command_help = "Togglet da okkee-wanohda UI. Da okkee-wanohda UI is an OOC interaction menu, information center and a data viewer.",
		overview_command_substitutes = "",

		-- game/oxy
		oxy_tutorial_command = "oxy-tutorial",
		oxy_tutorial_command_help = "Play da oxy tutorial next time your start a run.",
		oxy_tutorial_command_substitutes = "",

		-- game/panel
		panel_command = "panel",
		panel_command_help = "Shows a mini admin panel allowing you to see a players notes and add new ones.",
		panel_command_parameter_server_id = "keyta-id",
		panel_command_parameter_server_id_help = "Keyta-ID of da player yousa want to see da panel of (has to be online or recently disconnected).",
		panel_command_substitutes = "",

		-- game/ped_messages
		me_command = "mee",
		me_command_help = "Narrateen whaten yer character bin doin.",
		me_command_parameter_message = "messa",
		me_command_parameter_message_help = "Da messa yaah likeen ta sen tu narrateen yor actions.",
		me_command_substitutes = "",

		do_command = "doo",
		do_command_help = "Betten visualizeen a roleplay scene.",
		do_command_parameter_message = "messa",
		do_command_parameter_message_help = "Da messa yaah likeen ta sen tu hep visualizeen a roleplay scene.",
		do_command_substitutes = "",

		description_command = "descriptionen",
		description_command_help = "Attachen a messa tu yor ped tu deseriben features of it.",
		description_command_parameter_message = "messa-ga",
		description_command_parameter_message_help = "Da messa-ga yousa would like to attach to yousa ped.",
		description_command_substitutes = "",

		attempt_command = "enjit",
		attempt_command_help = "Enjit somesen wit a 50% chance of success.",
		attempt_command_parameter_message = "messa-ga",
		attempt_command_parameter_message_help = "A messa-ga of whosa yousa enjit-ing.",
		attempt_command_substitutes = "",

		dice_command = "da dice",
		dice_command_help = "Roll a standard dice.",
		dice_command_substitutes = "",

		roll_command = "rolla",
		roll_command_help = "A moresa advanced and complicated dice wit custom settings.",
		roll_command_parameter_rolls = "moolahsa",
		roll_command_parameter_rolls_help = "Da amoort of moolahsa yousa would lika to do. Yousa limited to 20.",
		roll_command_parameter_max = "maxa",
		roll_command_parameter_max_help = "Da highest value yousa can get on one roll. Da highest value here issa 100,000.",
		roll_command_substitutes = "",

		card_command = "kart",
		card_command_help = "Draw a random kart.",
		card_command_substitutes = "",

		ped_messages_command = "ped_messages",
		ped_messages_command_help = "Toggle whetha or not ped messages should show in da chat.",
		ped_messages_command_substitutes = "",

		-- game/ped_spawn
		ped_spawn_command = "ped_spawn",
		ped_spawn_command_help = "Spasa a ped.",
		ped_spawn_command_parameter_model = "modul",
		ped_spawn_command_parameter_model_help = "Da modul of da ped yousa wanna spasa.",
		ped_spawn_command_parameter_weapon = "pewpew",
		ped_spawn_command_parameter_weapon_help = "What weapon the ped should have (optional, \"false\" to skip).",
		ped_spawn_command_parameter_fearless = "fearless",
		ped_spawn_command_parameter_fearless_help = "If da ped should be skurred of guns/etc. (default: no).",
		ped_spawn_command_substitutes = "",

		ped_task_command = "ped_task",
		ped_task_command_help = "Meesa help you assign task to spawned peds.",
		ped_task_command_parameter_task = "task",
		ped_task_command_parameter_task_help = "The task meesa spawned peds should execute.",
		ped_task_command_parameter_target = "target",
		ped_task_command_parameter_target_help = "The server id the peds should target (optional).",
		ped_task_command_substitutes = "",

		ped_emote_command = "ped_emote",
		ped_emote_command_help = "Meesa make your spawned peds play a certain emote.",
		ped_emote_command_parameter_emote = "emote",
		ped_emote_command_parameter_emote_help = "The emote meesa spawned peds should play.",
		ped_emote_command_substitutes = "",

		ped_remove_command = "muy-muy_remove",
		ped_remove_command_help = "Mesa away all ya spawned peds.",
		ped_remove_command_substitutes = "",

		list_ped_emotes_command = "list_mesa_emotes",
		list_ped_emotes_command_help = "Listsa all available mesa emotes.",
		list_ped_emotes_command_substitutes = "",

		list_ped_tasks_command = "list_mesa_tasks",
		list_ped_tasks_command_help = "Listsa all available mesa tasks.",
		list_ped_tasks_command_substitutes = "",

		-- game/ped_steal
		ped_steal_command = "muy-muy_steal",
		ped_steal_command_help = "Steal somen bombad's mesa.",
		ped_steal_command_parameter_server_id = "server id",
		ped_steal_command_parameter_server_id_help = "Da brudda's server id.",
		ped_steal_command_substitutes = "steal_pid",

		-- game/ped_takeover
		takeover_ped_command = "takeover_pid",
		takeover_ped_command_help = "Mesa controlin sertain pid.",
		takeover_ped_command_parameter_network_id = "network id",
		takeover_ped_command_parameter_network_id_help = "Da network id of da pid yousa wantin to takeova.",
		takeover_ped_command_substitutes = "takeover",

		-- game/ped_tasks
		ped_debug_command = "pid_debug",
		ped_debug_command_help = "Debugs information bout a pid.",
		ped_debug_command_parameter_network_id = "network id",
		ped_debug_command_parameter_network_id_help = "Da pids network id.",
		ped_debug_command_substitutes = "",

		-- game/phone_numbers
		custom_phone_number_command = "custom_phone_number",
		custom_phone_number_command_help = "Sa change mesa phone number.",
		custom_phone_number_command_parameter_phone_number = "phone number",
		custom_phone_number_command_parameter_phone_number_help = "Sa phone number tumesa would like to change to. Icknore he tudeh: XXX-XXXX",
		custom_phone_number_command_substitutes = "custom_number",

		phone_number_available_command = "phone_number_available",
		phone_number_available_command_help = "Check sa see if mesa phone number is available.",
		phone_number_available_command_parameter_phone_number = "sa phone number",
		phone_number_available_command_parameter_phone_number_help = "Yousa phone number yousa would lika check if isa available. Makesa sure it follows the format of XXX-XXXX.",
		phone_number_available_command_substitutes = "number_available",

		-- game/player_control
		drive_for_command = "drive_for",
		drive_for_command_help = "Take over a player's vehicle and drive for them.",
		drive_for_command_parameter_server_id = "server id",
		drive_for_command_parameter_server_id_help = "The server ID of the player yousa would lika take over for.",
		drive_for_command_substitutes = "",

		-- game/player_scales
		set_player_scale_command = "boss_resize",
		set_player_scale_command_help = "Mesa resize a playa.",
		set_player_scale_command_parameter_scale = "fupa",
		set_player_scale_command_parameter_scale_help = "Da size yousa be wantin' to mesa set dem to.",
		set_player_scale_command_parameter_server_id = "serva id",
		set_player_scale_command_parameter_server_id_help = "Da serva ID yousa be wantin' to mesa set da scale for. Leavin' dis blank will auto-select yous-self.",
		set_player_scale_command_substitutes = "playa_resize, set_playa_size, boss_size",

		-- game/player_stats
		player_stats_command = "mulaahlisikan_da_player",
		player_stats_command_help = "Sawaari da mulaahlisikan_da_player shirye-shiryen.",
		player_stats_command_parameter_render_range = "suna-rufe-tsoffin-sauri",
		player_stats_command_parameter_render_range_help = "Canza suna-rufe-tsoffin-sauri mai zuwa ga masu bukatunku. Mai-bangaren nema shi ne 200.",
		player_stats_command_substitutes = "",

		-- game/pole_dancing
		pole_dancing_offset_command = "pole_dancing_offset",
		pole_dancing_offset_command_help = "Sawaari matattara dominance don adauran zirga-zirga zuwa kasa.",
		pole_dancing_offset_command_parameter_model_name = "sunan bayanai",
		pole_dancing_offset_command_parameter_model_name_help = "Sunan bayanai na nahiyar da kake so ka sake tsarin fayil.",
		pole_dancing_offset_command_substitutes = "",

		-- game/properties
		properties_debug_command = "chaloo_debug",
		properties_debug_command_help = "Togoola the chaloo debug.",
		properties_debug_command_substitutes = "chaloo",

		-- game/props
		props_manage_command = "props_manage",
		props_manage_command_help = "Manage nearby chaloos.",
		props_manage_command_substitutes = "manage_chaloos, mp",

		spawn_prop_command = "spawn_chaloo",
		spawn_prop_command_help = "Spawn a chaloo.",
		spawn_prop_command_parameter_model_hash = "model",
		spawn_prop_command_parameter_model_hash_help = "The chaloo model you would like to spawn.",
		spawn_prop_command_parameter_network = "mernes",
		spawn_prop_command_parameter_network_help = "T'sa, mesa recommanen dat dis be only enable fo props dat should be abil to move.",
		spawn_prop_command_parameter_no_pickup = "noo pickup",
		spawn_prop_command_parameter_no_pickup_help = "Should des prop only be picked up by super admins?",
		spawn_prop_command_substitutes = "",

		spawn_exact_prop_command = "exact_spawn_prop",
		spawn_exact_prop_command_help = "Mesa spawn a prop at yousa exact location.",
		spawn_exact_prop_command_parameter_model_name = "modelen name",
		spawn_exact_prop_command_parameter_model_name_help = "Mesa prop modelen yousa would liken to spawn.",
		spawn_exact_prop_command_parameter_ground = "bombad ground",
		spawn_exact_prop_command_parameter_ground_help = "Ifin the prop should be spawnen on the ground or hnot.",
		spawn_exact_prop_command_substitutes = "",

		props_debug_command = "props_debug",
		props_debug_command_help = "Debugs all-n all props around yousa.",
		props_debug_command_substitutes = "",

		delete_prop_command = "delete_prop",
		delete_prop_command_help = "Deletes a prop givin a certain prop id.",
		delete_prop_command_parameter_prop_id = "prop id",
		delete_prop_command_parameter_prop_id_help = "Yousa id bombad prop yousa trying to mesa-delete.",
		delete_prop_command_substitutes = "",

		wipe_props_command = "wipe_props",
		wipe_props_command_help = "Wipes bombad props around yousa.",
		wipe_props_command_parameter_radius = "radius",
		wipe_props_command_parameter_radius_help = "Da radius for da wipe (1-250).",
		wipe_props_command_substitutes = "",

		-- game/radio
		radio_command = "radio",
		radio_command_help = "Toggle da radio UI.",
		radio_command_substitutes = "",

		radio_debug_command = "radio_debug",
		radio_debug_command_help = "Toggle da radio debug.",
		radio_debug_command_substitutes = "",

		frequency_command = "frequency",
		frequency_command_help = "Set what frequency your bombad radio is on.",
		frequency_command_parameter_frequency = "dagep-ti",
		frequency_command_parameter_frequency_help = "Da dagep-ti woosa finky tobi dagep belonga yoosa.",
		frequency_command_substitutes = "dagep",

		force_frequency_command = "force_dagep",
		force_frequency_command_help = "Joina dagep-ti without needin a radio or needin to be on duty.",
		force_frequency_command_parameter_frequency = "dagep-ti",
		force_frequency_command_parameter_frequency_help = "Da dagep-ti yousa would like to go to.",
		force_frequency_command_substitutes = "",

		random_frequency_command = "random_dagep",
		random_frequency_command_help = "Mesa help yousa sets yoursa radio to a random frequency.",
		random_frequency_command_substitutes = "random_freq, rfreq",

		radio_sounds_command = "radio_sounds",
		radio_sounds_command_help = "Mesa help yousa adjusten the radio sound effects' volume.",
		radio_sounds_command_parameter_volume = "volume level",
		radio_sounds_command_parameter_volume_help = "Da volume level of da radio sound effects. Da value gotta be between 0 and 1. Da default is 0.1. Leaven dis blank gonna return yoursa current volume level.",
		radio_sounds_command_substitutes = "",

		radio_volume_command = "radio_volume",
		radio_volume_command_help = "Mesa adjusten da radio's volume.",
		radio_volume_command_parameter_volume = "volüme level",
		radio_volume_command_parameter_volume_help = "Da volüme level of da radio. Da value mui be between 0 and 1. Mesa default is 0.5. Leaving dis blank will returnin' ya current volüme level.",
		radio_volume_command_substitutes = "",

		-- game/relationships
		relationships_debug_command = "relationships_debug",
		relationships_debug_command_help = "Toggle da ped relationships debug.",
		relationships_debug_command_substitutes = "",

		-- game/reskin
		reskin_command = "reskin",
		reskin_command_help = "Trigger a reskin for a playa.",
		reskin_command_parameter_server_id = "id ova seva",
		reskin_command_parameter_server_id_help = "Da server ID ova da playa yousa wanten to trigger da reskin for. Leave dis blank to auto-select myself.",
		reskin_command_substitutes = "",

		redeem_reskin_command = "redeem_reskin",
		redeem_reskin_command_help = "Redeem a purchased reskin.",
		redeem_reskin_command_substitutes = "",

		-- game/riot_mode
		toggle_riot_mode_command = "riot mode",
		toggle_riot_mode_command_help = "Toggles riot mode for all players.",
		toggle_riot_mode_command_substitutes = "",

		add_riot_player_command = "add_riot_player",
		add_riot_player_command_help = "Adden a playa to da 'riot list' which will have ambient peds attacken dat playa.",
		add_riot_player_command_parameter_server_id = "domin Server id",
		add_riot_player_command_parameter_server_id_help = "Da server ID of da player yousa would like to add. Leave disa blank to auto-select yoosahself.",
		add_riot_player_command_substitutes = "",

		remove_riot_player_command = "remove_riot_player",
		remove_riot_player_command_help = "Roo-ta a player from da 'riot list'.",
		remove_riot_player_command_parameter_server_id = "domin server id",
		remove_riot_player_command_parameter_server_id_help = "Da server ID of da player yousa would like to roo-ta. Leave disa blank to auto-select yoosahself.",
		remove_riot_player_command_substitutes = "",

		-- game/scoreboard
		metagame_command = "metagungan",
		metagame_command_help = "Mesa togglin constant drawin of player's server IDs.",
		metagame_command_substitutes = "meta, m",

		-- game/security_cameras
		security_cameras_command = "security_camerasa",
		security_cameras_command_help = "Toggle tha security cameras.",
		security_cameras_command_substitutes = "sec, sec_cam, seccam, sec_cams, seccams, security_cams, securitycams, security_camera, securitycamera, securitycameras",

		security_cameras_scan_command = "security_cameras_scana",
		security_cameras_scan_command_help = "Gitten all known security camera objects and storin them in a text file.",
		security_cameras_scan_command_substitutes = "scan, scan_cams, scancams",

		security_cameras_health_command = "security_cameras_health",
		security_cameras_health_command_help = "Kata bong te security cameras health debug tool.",
		security_cameras_health_command_substitutes = "cam_health",

		-- game/shield
		shield_command = "shield",
		shield_command_help = "Kata bong te ballistic shield.",
		shield_command_substitutes = "",

		-- game/shockwaves
		create_shockwave_command = "create_shockwave",
		create_shockwave_command_help = "Mesa create a shockwave pa position tongo nga.",
		create_shockwave_command_parameter_force = "force",
		create_shockwave_command_parameter_force_help = "Mesa force o' da shockwave (1 - 1000).",
		create_shockwave_command_parameter_radius = "radius",
		create_shockwave_command_parameter_radius_help = "Mesa radius o' da shockwave (1 - 100).",
		create_shockwave_command_substitutes = "shockwave",

		push_player_command = "push_player",
		push_player_command_help = "Pushen a player or da vehicle dey issa in away from yousa.",
		push_player_command_parameter_server_id = "server id",
		push_player_command_parameter_server_id_help = "Da server id of da player.",
		push_player_command_substitutes = "push",

		-- game/shrooms
		draw_shroom_areas_command = "draw_shroom_areas",
		draw_shroom_areas_command_help = "Draw all shroom areas and add more.",
		draw_shroom_areas_command_substitutes = "shroom_areas",

		-- game/spying
		search_for_devices_command = "search_for_devices",
		search_for_devices_command_help = "Dud catcha devices nearby.",
		search_for_devices_command_substitutes = "dud_search_devices, dud_searchdevices, duds4d",

		-- game/spectating
		spectate_command = "spectate",
		spectate_command_help = "Watchsa certain player.",
		spectate_command_parameter_server_id = "server id",
		spectate_command_parameter_server_id_help = "Da server id of da player yousa wish to spectate.",
		spectate_command_substitutes = "watch",

		-- game/status
		status_reset_command = "status_reset",
		status_reset_command_help = "Reset statusa levels.",
		status_reset_command_parameter_server_id = "kituun id",
		status_reset_command_parameter_server_id_help = "Ith troopa server ID yousen wantin' to reset the status fo, oke day blonk, mesa helping yousen by selecting yousen lodsa self.",
		status_reset_command_substitutes = "sr",

		toggle_status_command = "toggle_status",
		toggle_status_command_help = "Disables (or enables) certain statuses like hunger, thirst and stress.",
		toggle_status_command_substitutes = "",

		set_body_armor_command = "set_body_armor",
		set_body_armor_command_help = "Mesa settin' someone's body armor level.",
		set_body_armor_command_parameter_server_id = "yousa oosanee ID",
		set_body_armor_command_parameter_server_id_help = "Da playas yousa wantin set da body armor level fo. Yousa can leave dis blank o’ at `0` to select yourself. Yousa can also do `-1` in order to set everyone's body armor level.",
		set_body_armor_command_parameter_body_armor_level = "body armor level",
		set_body_armor_command_parameter_body_armor_level_help = "Da body armor level yous wantin to set. Dis value can be anywheres from `0` to `100`. Leavein dis blank o’ as an invalid value will default to `100`.",
		set_body_armor_command_substitutes = "body_armor, armor",

		-- game/streamer_mode
		toggle_streamer_mode_command = "toggle_streamer_mode",
		toggle_streamer_mode_command_help = "Mesa help yousa. Toggle da streamer mode. Dis will prevent players from doing da '18+' emotes when yousa nearby and such.",
		toggle_streamer_mode_command_substitutes = "streamer_mode, streamer",

		-- game/sync
		time_hour_command = "time_hour",
		time_hour_command_help = "Set da current clock hour.",
		time_hour_command_parameter_hour = "hour",
		time_hour_command_parameter_hour_help = "Da hour yousa would like to set da clock to. Da value must be between 0 and 23.",
		time_hour_command_parameter_transition = "blumpen",
		time_hour_command_parameter_transition_help = "Iffen da time should be changed with a smooth blumpen (yes/no, default is no).",
		time_hour_command_substitutes = "hour",

		time_minute_command = "time_minute",
		time_minute_command_help = "Set da current glock minute.",
		time_minute_command_parameter_minute = "minute",
		time_minute_command_parameter_minute_help = "Da minute yousa would like to set da glock too. Da value must be between 0 and 59.",
		time_minute_command_substitutes = "minute",

		local_time_command = "blarp_time",
		local_time_command_help = "Meesa helpen yousa sets da time, but only for you.",
		local_time_command_parameter_time = "time",
		local_time_command_parameter_time_help = "Da time yousa would liken to set da local clock to. Da value musten be between 0:00 and 23:59.",
		local_time_command_substitutes = "",

		local_weather_command = "blarp_weather",
		local_weather_command_help = "Meesa helpen yousa sets da weather, but only for you.",
		local_weather_command_parameter_weather = "weather",
		local_weather_command_parameter_weather_help = "Da weather yousa would liken to set da local weather to. Takens da same values as /weather.",
		local_weather_command_substitutes = "",

		brighter_nights_command = "sa bongo toong 12:00pm dalang weather 's sunny extra, mesa only",
		brighter_nights_command_help = "Mesa setsa time to 12:00pm dalang weather 's sunny extra, but only for yousa.",
		brighter_nights_command_substitutes = "",

		weather_command = "dalang weather",
		weather_command_help = "Mesa changen weather.",
		weather_command_parameter_weather = "weather name",
		weather_command_parameter_weather_help = "Da weather's name yousa would liken to set it to. Valid weather names are EXTRASUNNY, CLEAR, CLOUDS, SMOG, FOGGY, OVERCAST, RAIN, THUNDER, CLEARING, NEUTRAL, SNOW, BLIZZARD, SNOWLIGHT, XMAS and HALLOWEEN.",
		weather_command_substitutes = "",

		advance_weather_command = "sa wana",
		advance_weather_command_help = "Pasa na weza sa wana.",
		advance_weather_command_substitutes = "",

		freeze_time_command = "freeze time",
		freeze_time_command_help = "Hapa haje da kasar faruwa ko  ba.",
		freeze_time_command_substitutes = "",

		freeze_weather_command = "freeze_wotha",
		freeze_weather_command_help = "Hapa haje da kasar wotha ko ba.",
		freeze_weather_command_substitutes = "",

		blackout_command = "blackout",
		blackout_command_help = "Hapa haje da kasar blackout ko ba.",
		blackout_command_substitutes = "",

		-- game/tablet
		tablet_command = "tabuleet",
		tablet_command_help = "Yi amfani da UI na tabuleet (ina da tabuleet ko ba).",
		tablet_command_substitutes = "",

		-- game/test_server
		set_vehicle_preset_command = "setta vehicl-ese preset",
		set_vehicle_preset_command_help = "Fully upgrades-da vehicl-ese yousa-are currently in and applies colors with-da specified preset.",
		set_vehicle_preset_command_parameter_preset = "preset",
		set_vehicle_preset_command_parameter_preset_help = "Da color preset yousa want to apply (red, blue, green, yellow, orange, white, black).",
		set_vehicle_preset_command_substitutes = "vehicl-ese_preset",

		detach_all_doors_command = "detach_all_doors",
		detach_all_doors_command_help = "Detaches all doors of-da vehicl-ese yousa-are currently in.",
		detach_all_doors_command_substitutes = "",

		pop_all_tires_command = "muba tumtum",
		pop_all_tires_command_help = "Muba all tires of da vehicle yousa bin in.",
		pop_all_tires_command_substitutes = "",

		upgrade_vehicle_fully_command = "bombad upgrade",
		upgrade_vehicle_fully_command_help = "Upgrades da vehicle yousa bin in bombad ganna giddy up.",
		upgrade_vehicle_fully_command_substitutes = "",

		random_vehicle_colors_command = "random colors",
		random_vehicle_colors_command_help = "Randomizes da colors of da vehicle yousa bin in.",
		random_vehicle_colors_command_parameter_lights = "mooey mooey",
		random_vehicle_colors_command_parameter_lights_help = "If da lights bombad be randomized as well (xenon and neon).",
		random_vehicle_colors_command_substitutes = "",

		starve_command = "wisa bombad hungry",
		starve_command_help = "Mesa setin' yousa food n thirst to 0.",
		starve_command_substitutes = "",

		car_command = "spawna car",
		car_command_help = "Spawns in a random car.",
		car_command_substitutes = "",

		-- game/time_scale
		set_time_scale_command = "setime_scale",
		set_time_scale_command_help = "Set de server's time scale.",
		set_time_scale_command_parameter_time_scale = "time scale",
		set_time_scale_command_parameter_time_scale_help = "De time scale yousa would like to set. De value must be between 0 n 1.",
		set_time_scale_command_substitutes = "time_scale, slow_motion",

		-- game/titanic
		create_titanic_command = "meeza_create_titanic",
		create_titanic_command_help = "Meeza create a sinkin' Titanic.",
		create_titanic_command_parameter_sink_time = "sink time",
		create_titanic_command_parameter_sink_time_help = "Da amount of minutes it should take before da boat is under water.",
		create_titanic_command_substitutes = "",

		-- game/top_down
		top_down_command = "boss_down",
		top_down_command_help = "Toggle da boss down view.",
		top_down_command_substitutes = "",

		-- game/trackers
		tracker_command = "tracker",
		tracker_command_help = "Togga your tracker's visibility.",
		tracker_command_substitutes = "",

		trackers_split_command = "trackers_split",
		trackers_split_command_help = "Toggle between havin' trackers stored inside of a category on da map and havin' dem split.",
		trackers_split_command_substitutes = "",

		-- game/trains
		trains_debug_command = "trains_debug",
		trains_debug_command_help = "Mesa debug olo Trains.",
		trains_debug_command_substitutes = "",

		spawn_train_command = "spawn_train",
		spawn_train_command_help = "Fa spawn olo train.",
		spawn_train_command_parameter_track_id = "track id",
		spawn_train_command_parameter_track_id_help = "Mesa selecta track mesa woud like to spawn train on. (1 tada 12)",
		spawn_train_command_substitutes = "",

		-- game/treasure_maps
		spawn_map_piece_command = "spawn_map_piece",
		spawn_map_piece_command_help = "Fa spawn olo treasure map piece.",
		spawn_map_piece_command_parameter_map_tier = "map tier",
		spawn_map_piece_command_parameter_map_tier_help = "Mesa selecta map tier mesa woud like to spawn piece for.",
		spawn_map_piece_command_parameter_piece_number = "miseesa number",
		spawn_map_piece_command_parameter_piece_number_help = "Da miseesa number yousa lika to spawn.",
		spawn_map_piece_command_substitutes = "",

		-- game/tsunami
		set_ocean_scaler_command = "set_ocean_scaler",
		set_ocean_scaler_command_help = "Globally modify da ocean scaler.",
		set_ocean_scaler_command_parameter_intensity = "intensity",
		set_ocean_scaler_command_parameter_intensity_help = "Da intensity yousa would lika to set it to.",
		set_ocean_scaler_command_substitutes = "ocean_scaler, set_waves_intensity, waves_intensity",

		-- game/vdm
		vdm_command = "padoosa",
		vdm_command_help = "Mesa helpen yous npc try to padoosa mesa target.",
		vdm_command_parameter_target = "target",
		vdm_command_parameter_target_help = "Da players mesa target, use mesa id numba.",
		vdm_command_parameter_network_id = "network id",
		vdm_command_parameter_network_id_help = "Da locals network id (or its vehicle).",
		vdm_command_substitutes = "",

		vdm_clear_command = "padoosa_mesa_clear",
		vdm_clear_command_help = "Mesa clear all yous padoosa targets.",
		vdm_clear_command_substitutes = "",

		-- game/voice
		voice_debug_command = "voice_debug",
		voice_debug_command_help = "Mesa toggle da voice debug.",
		voice_debug_command_parameter_server_id = "oola id",
		voice_debug_command_parameter_server_id_help = "Yousa wantin' to toggla da 'voice debug' fo' someone else, put in their oola id here.",
		voice_debug_command_substitutes = "",

		muted_areas_debug_command = "muted_areas_debug",
		muted_areas_debug_command_help = "Draws all muted voice areas.",
		muted_areas_debug_command_substitutes = "muted_areas",

		listen_command = "listen",
		listen_command_help = "Toggles listening mode for a certain user. (You can hear what they say)",
		listen_command_parameter_server_id = "oola id",
		listen_command_parameter_server_id_help = "Da usah yousa want to listen to.",
		listen_command_substitutes = "",

		toggle_voice_mute_command = "toggle_voice_mute",
		toggle_voice_mute_command_help = "Mutes or unmutes someone from da voice chat.",
		toggle_voice_mute_command_parameter_server_id = "server id",
		toggle_voice_mute_command_parameter_server_id_help = "Da usah yousa want to mute/unmute.",
		toggle_voice_mute_command_substitutes = "voice_mute",

		-- game/wizard
		wizard_command = "wizard",
		wizard_command_help = "Opens da wizard menu.",
		wizard_command_parameter_server_id = "server id",
		wizard_command_parameter_server_id_help = "Meesa help you pickin' a certain playin' in da menu (if yousa wanna).",
		wizard_command_substitutes = "",

		ragdoll_player_command = "ragdoll_player",
		ragdoll_player_command_help = "Makin' a playin' ragdoll.",
		ragdoll_player_command_parameter_server_id = "server id",
		ragdoll_player_command_parameter_server_id_help = "Server ID of da playin' yousa wanna ragdoll.",
		ragdoll_player_command_parameter_force = "force",
		ragdoll_player_command_parameter_force_help = "Apply a random force to da playin' after makin' dem ragdoll.",
		ragdoll_player_command_substitutes = "",

		ragdoll_radius_command = "sloobadoo_radius",
		ragdoll_radius_command_help = "Mesa forces every goober in a given bombad radius to slooba randomly.",
		ragdoll_radius_command_parameter_radius = "radius",
		ragdoll_radius_command_parameter_radius_help = "Da radius in which goobers will slooba.",
		ragdoll_radius_command_parameter_force = "force",
		ragdoll_radius_command_parameter_force_help = "Applya random force to da goober after making dem slooba.",
		ragdoll_radius_command_substitutes = "",

		punch_radius_command = "punch_radius",
		punch_radius_command_help = "Mesa forces every goober in a given bombad radius to punch randomly.",
		punch_radius_command_parameter_radius = "naboo-booma radius",
		punch_radius_command_parameter_radius_help = "Da naboo-booma radius in wesa players will punch randomly.",
		punch_radius_command_substitutes = "",

		flashbang_command = "flashbang",
		flashbang_command_help = "Flashbangs a certain player.",
		flashbang_command_parameter_server_id = "server id",
		flashbang_command_parameter_server_id_help = "Server ID of da target player.",
		flashbang_command_substitutes = "",

		flashbang_radius_command = "flashbang_radius",
		flashbang_radius_command_help = "Flashbangs every player in a given radius.",
		flashbang_radius_command_parameter_radius = "naboo-booma radius",
		flashbang_radius_command_parameter_radius_help = "Da radius in which pla-yers gonna be flashed-banged.",
		flashbang_radius_command_parameter_include_self = "include self",
		flashbang_radius_command_parameter_include_self_help = "If wanna get flashed-banged as well, yousa can.",
		flashbang_radius_command_substitutes = "",

		punch_command = "punch",
		punch_command_help = "Forces a certain player to punch randomly.",
		punch_command_parameter_server_id = "server id",
		punch_command_parameter_server_id_help = "Server ID of da target player.",
		punch_command_substitutes = "",

		explode_command = "explode_player",
		explode_command_help = "Meesa explode a certain player.",
		explode_command_parameter_server_id = "server id",
		explode_command_parameter_server_id_help = "Da target player's server ID.",
		explode_command_substitutes = "",

		ignite_player_command = "ignite_player",
		ignite_player_command_help = "Meesa light a player on fire for a short moment.",
		ignite_player_command_parameter_server_id = "server id",
		ignite_player_command_parameter_server_id_help = "Da target player's server ID.",
		ignite_player_command_substitutes = "ignite, burn",

		run_command_as_command = "run_command_as",
		run_command_as_command_help = "Yousa make another player run a command.",
		run_command_as_command_parameter_server_id = "serve-r ID",
		run_command_as_command_parameter_server_id_help = "Serve-r ID of the target playa.",
		run_command_as_command_parameter_command = "command",
		run_command_as_command_parameter_command_help = "Da command yousa want to make the playa run.",
		run_command_as_command_substitutes = "runas, sudo",

		ped_reverse_command = "ped_reverse",
		ped_reverse_command_help = "Makesa da nearest ped in a vehicle reverse.",
		ped_reverse_command_substitutes = "",

		ped_forwards_command = "susa noga ped",
		ped_forwards_command_help = "Ben ka sausa noga ped ljou in vehicellie tookee.",
		ped_forwards_command_substitutes = "",

		-- global/entities
		local_entities_debug_command = "local_entities_debug",
		local_entities_debug_command_help = "Katah toogle debugen fo local entitiesen.",
		local_entities_debug_command_substitutes = "lentities",

		no_ped_population_areas_debug_command = "no_ped_population_areas_debug",
		no_ped_population_areas_debug_command_help = "Katah toogle de debugger fo 'no ped population areas'.",
		no_ped_population_areas_debug_command_substitutes = "",

		-- global/explosions
		create_explosion_command = "boom_boom",
		create_explosion_command_help = "Sa crea bombad meesa.",
		create_explosion_command_parameter_explosion_type = "bombad type",
		create_explosion_command_parameter_explosion_type_help = "Da bombad type.",
		create_explosion_command_parameter_damage_scale = "damage scale",
		create_explosion_command_parameter_damage_scale_help = "Da damage scale.",
		create_explosion_command_parameter_camera_shake = "camera shake",
		create_explosion_command_parameter_camera_shake_help = "Da camera shake.",
		create_explosion_command_substitutes = "bomb, bombad, meesa ka-boom",

		-- global/functions
		confirm_yes_command = "mey-mey",
		confirm_yes_command_help = "Mesa confirmin da current action.",
		confirm_yes_command_substitutes = "meymey",

		confirm_no_command = "no-no",
		confirm_no_command_help = "Mesa cancelin da current action.",
		confirm_no_command_substitutes = "nono, abort",

		-- global/states
		entity_states_command = "entity_states",
		entity_states_command_help = "Prints all states of a certain entity.",
		entity_states_command_parameter_network_id = "network id",
		entity_states_command_parameter_network_id_help = "Da network id of da entity.",
		entity_states_command_substitutes = "",

		-- illegal/corner
		corner_command = "jar jare-chabanim",
		corner_command_help = "Sell spice to mesa nearby person. Mesa spice mesa sell is based on mesa location mesa in.",
		corner_command_substitutes = "",

		corner_debug_command = "jar_debug",
		corner_debug_command_help = "Show all mesa jare-chabanim areas.",
		corner_debug_command_substitutes = "",

		-- interfaces/interfaces
		clear_uis_command = "clear_uis",
		clear_uis_command_help = "Clear all mesa UI focuses.",
		clear_uis_command_substitutes = "",

		interface_focuses_command = "interface_mato",
		interface_focuses_command_help = "Check which interfaces mesa set as mato.",
		interface_focuses_command_substitutes = "jar_focus, focus, mato",

		--jobs/duty
		toggle_duty_status_command = "chung toggle_duty_status",
		toggle_duty_status_command_help = "Mesa togglin' mesa on duty status.",
		toggle_duty_status_command_parameter_server_id = "server id",
		toggle_duty_status_command_parameter_server_id_help = "Da target server id or empty if yousa wantin' to toggle yousa own duty status.",
		toggle_duty_status_command_substitutes = "duty_status, duty",

		toggle_training_command = "chung toggle_training",
		toggle_training_command_help = "Mesa togglin' mesa trainin' status.",
		toggle_training_command_substitutes = "training",

		toggle_operator_status_command = "kraytaka_operator_status_toggle",
		toggle_operator_status_command_help = "Kràtàkà bà ùhu èmergency operator status. Sà a mäsa-johàsa, yà kàtàkìn àhànwo 911.",
		toggle_operator_status_command_substitutes = "kraytaka, kraytaka_toggle, kraytaka_status",

		-- jobs/police
		aim_assist_command = "aim_assist",
		aim_assist_command_help = "Kraytaka bà ùhu PD aim assist. (Mà sà-wàmàlìà nà Nathan Spencer.)",
		aim_assist_command_substitutes = "",

		undercover_command = "undercover",
		undercover_command_help = "Kraytaka bà ùhu ko si yà wàhìdì undercover. Sà a tàgía ògwùgwù nà àìpàdé àwọn òrìṣàìrò látọ́jọ́ kìlọ́mítà àwọn ọrẹ àwọn obìnrin kìkọ̀mọ̀lẹ.",
		undercover_command_substitutes = "",

		active_robberies_command = "active_robberies",
		active_robberies_command_help = "Mesa lists all currently bombad (open) stores, banks and jewelry stores.",
		active_robberies_command_substitutes = "",

		pd_impound_command = "pd_impound",
		pd_impound_command_help = "This tinking impounds a players ve-motors for a certain period of time.",
		pd_impound_command_parameter_minutes = "minutes",
		pd_impound_command_parameter_minutes_help = "How manyit sen minutes the ve-motors should be impounded (between 1 minute and 12 hours).",
		pd_impound_command_substitutes = "",

		dispatch_command = "dispatch",
		dispatch_command_help = "Sends a mesa message into the PD dispatch.",
		dispatch_command_parameter_message = "mesk",
		dispatch_command_parameter_message_help = "Da mesk yousa wantin to send.",
		dispatch_command_substitutes = "",

		police_drive_mode_command = "police_drive_mode",
		police_drive_mode_command_help = "Toggle da drive mode of ya police vehicle.",
		police_drive_mode_command_parameter_mode = "mode",
		police_drive_mode_command_parameter_mode_help = "Da mode ya want to set. \"D\" for drive and \"S\" for sport (sport is default).",
		police_drive_mode_command_substitutes = "drive_mode",

		-- jobs/state
		license_give_command = "license_give",
		license_give_command_help = "Givin a license.",
		license_give_command_parameter_character_id = "character id",
		license_give_command_parameter_character_id_help = "Da ID of da character yousa wantin to givin da license to.",
		license_give_command_parameter_license = "license",
		license_give_command_parameter_license_help = "Da license yousa wish to givin. Yousa can list da available licenses usin `/license_list`.",
		license_give_command_substitutes = "give_license, add_license",

		license_remove_command = "license_remove",
		license_remove_command_help = "Yousa remove a license.",
		license_remove_command_parameter_character_id = "character id",
		license_remove_command_parameter_character_id_help = "Da ID of da character yousa want to remove da license from.",
		license_remove_command_parameter_license = "license",
		license_remove_command_parameter_license_help = "Da license yousa wish to remove. Yousa can list da available licenses using `/license_list`.",
		license_remove_command_substitutes = "remove_license",

		license_list_command = "license_list",
		license_list_command_help = "Mesa lists all available licenses.",
		license_list_command_substitutes = "list_licenses",

		licenses_check_command = "licenses_check",
		licenses_check_command_help = "Peekin checken someone's licenses.",
		licenses_check_command_parameter_character_id = "meesa character id",
		licenses_check_command_parameter_character_id_help = "Da ID of da character yousa wanten to checken da licenses for.",
		licenses_check_command_substitutes = "license_check, checken_licenses, checken_license",

		licenses_command = "sa licenses",
		licenses_command_help = "Meega haveesa licenses.",
		licenses_command_substitutes = "",

		-- jobs/tow
		toggle_mechanic_messages_command = "toggle_mechanic_messages",
		toggle_mechanic_messages_command_help = "Toggles whether or not you receive mechanic messages. Meega likeen disa or not?",
		toggle_mechanic_messages_command_substitutes = "mechanic_messages",

		-- vehicles/boats
		toggle_anchor_command = "toggle_anchor",
		toggle_anchor_command_help = "Toggles the anchor of a nearby boat. Gooberfisha go nowhere!",
		toggle_anchor_command_substitutes = "anchor",

		-- vehicles/damage
		vehicle_damage_debug_command = "vehicle_damage_debug",
		vehicle_damage_debug_command_help = "Yousa debugs da vehicles current damage values.",
		vehicle_damage_debug_command_substitutes = "",

		-- vehicles/fuel
		set_fuel_command = "set_fuel",
		set_fuel_command_help = "Set da fuel level of da vehicle yous in.",
		set_fuel_command_parameter_fuel_level = "fuel level",
		set_fuel_command_parameter_fuel_level_help = "Da fuel level yousa would like to set it to. Leavin dis blank will auto-select `100`.",
		set_fuel_command_substitutes = "fuel",

		-- vehicles/garages
		toggle_garage_debug_command = "toggle_garage_debug",
		toggle_garage_debug_command_help = "Toggle da garage debug.",
		toggle_garage_debug_command_substitutes = "garage_debug",

		-- vehicles/keys
		give_key_command = "mee pef key",
		give_key_command_help = "Mee pef key tu a nearby person.",
		give_key_command_parameter_server_id = "server id",
		give_key_command_parameter_server_id_help = "Da person's server id yousa would like to give da key to. Dis can be left blank (or at 0) to give it to da nearest person.",
		give_key_command_substitutes = "givekey",

		hotwire_vehicle_command = "hotwire_vehicle",
		hotwire_vehicle_command_help = "Instantly hotwire da vehicle yousa are in.",
		hotwire_vehicle_command_parameter_server_id = "server id",
		hotwire_vehicle_command_parameter_server_id_help = "Mesa helpfully hotwire vehicle, yum.",
		hotwire_vehicle_command_substitutes = "hotwire",

		pickup_keys_command = "mesa_keys",
		pickup_keys_command_help = "Mesa pick up keys da nearest vehicle.",
		pickup_keys_command_substitutes = "",

		-- vehicles/modifications
		wheel_offset_command = "wheel_offset",
		wheel_offset_command_help = "Modify a vehicle's wheels' offset wide Gungan accent.",
		wheel_offset_command_parameter_wheels = "front/back",
		wheel_offset_command_parameter_wheels_help = "Which wheels bombad modify?",
		wheel_offset_command_parameter_value = "value",
		wheel_offset_command_parameter_value_help = "Da amount yousa would like it to be modified. This can be anywhere from -0.15 to 0.15, 0 bombad default.",
		wheel_offset_command_substitutes = "",

		wheel_rotation_command = "sa wheel-o-rotation",
		wheel_rotation_command_help = "Mesa modify der wheels' rotation of a vehicle.",
		wheel_rotation_command_parameter_wheels = "front/back",
		wheel_rotation_command_parameter_wheels_help = "Which wheels yousa wantin to modify?",
		wheel_rotation_command_parameter_value = "value",
		wheel_rotation_command_parameter_value_help = "Da amount yousa wantin to modify it. Dis can be anywhere from -0.5 to 0.5, 0 bein da default.",
		wheel_rotation_command_substitutes = "",

		-- vehicles/plates
		fake_plate_command = "pretendy plate",
		fake_plate_command_help = "Toggle da pretendy plate of da current vehicle.",
		fake_plate_command_substitutes = "",

		plate_available_command = "muba_galaboo",
		plate_available_command_help = "Check to see if a plate number is available for the `/custom_plate` command.",
		plate_available_command_parameter_plate_number = "galaboo nuba",
		plate_available_command_parameter_plate_number_help = "The plate number you would like to check. Plate numbers can only be up to 8 characters long and can only consist of capital letters and numbers.",
		plate_available_command_substitutes = "",

		custom_plate_command = "muba_custom_plate",
		custom_plate_command_help = "Set a custom plate for one of your vehicles.",
		custom_plate_command_parameter_vehicle_id = "sa'won id",
		custom_plate_command_parameter_vehicle_id_help = "Da sa'won id da yousa would like to have da custom plate on. (Yousa can find dissa ID in yousa garage)",
		custom_plate_command_parameter_plate_number = "plate number",
		custom_plate_command_parameter_plate_number_help = "Da plate number yousa would like to set. Plate numbers can only be up to 8 characters long and can only consist of bombad letters and numbers.",
		custom_plate_command_substitutes = "",

		-- vehicles/runways
		ifr_command = "ifr",
		ifr_command_help = "Toggle IFR mode (Show landing assist for nearby runways).",
		ifr_command_substitutes = "",

		-- vehicles/sirens
		mute_sirens_command = "moota siraans",
		mute_sirens_command_help = "Mootas all siraansas and horns.",
		mute_sirens_command_substitutes = "",

		-- vehicles/vehicles
		flip_command = "flap",
		flip_command_help = "Roll over a flapped vehicle.",
		flip_command_substitutes = "",

		toggle_roll_control_command = "toogla rool cantrool",
		toggle_roll_control_command_help = "Tooglesa the rool and air cantrool.",
		toggle_roll_control_command_substitutes = "rool_cantrool",

		enable_ls_customs_command = "inablee LS kustoms",
		enable_ls_customs_command_help = "Tooglasa the LS kustoms menu.",
		enable_ls_customs_command_substitutes = "LS_kustoms",

		toggle_gear_animation_command = "yousa_toggle_gear_animation",
		toggle_gear_animation_command_help = "Toggles da gear shift animation and sounds in cars.",
		toggle_gear_animation_command_substitutes = "gear_animation, gear_sounds",

		turtle_vehicle_command = "turtlee_vehicle",
		turtle_vehicle_command_help = "Flips over yousa vehicle on itsa roof.",
		turtle_vehicle_command_substitutes = "turtle",

		door_command = "door",
		door_command_help = "Toggle a vehicle's door.",
		door_command_parameter_door_id = "door id (1-6)",
		door_command_parameter_door_id_help = "Plinko peb Door unga bongo bu pampa? Disa rumble ya din DONK kadda mesa bu helper. Oooh mooey mooey, anda suunten cody ya. Wagonga nyyy nyy. ",
		door_command_substitutes = "",

		window_command = "nyoka",
		window_command_help = "Bopa vehicle'ka nyoka.",
		window_command_parameter_window_id = "nyoka id (1-4)",
		window_command_parameter_window_id_help = "Plinko peb Nyoka unga bongo bu pampa? Disa rumble ya din DONK kadda mesa bu helper. ",
		window_command_substitutes = "",

		shuffle_command = "shuffle",
		shuffle_command_help = "Mesa to tuva vehicle seat.",
		shuffle_command_substitutes = "tuva",

		seat_command = "kajan",
		seat_command_help = "Mesa tuva vehicle seat.",
		seat_command_parameter_seat_id = "seat id (1-6)",
		seat_command_parameter_seat_id_help = "Mesa nava seat sa ausa tuva?",
		seat_command_substitutes = "",

		engine_command = "engine",
		engine_command_help = "Guna-guna vehicle's engine.",
		engine_command_substitutes = "",

		mileage_command = "mileage",
		mileage_command_help = "Check vehicle's mileage.",
		mileage_command_substitutes = "",

		toggle_disabled_brakes_command = "toggle_disabled_brakes",
		toggle_disabled_brakes_command_help = "Mesa or moozoom da brakes ob da nearest vehicle.",
		toggle_disabled_brakes_command_substitutes = "disable_brakes",

		manual_toggle_command = "manual_toggle",
		manual_toggle_command_help = "Mesa or moozoom toggle whezzer yousa want to manually control vehicles' gears.",
		manual_toggle_command_substitutes = "",

		speed_limiter_command = "speed_limiter",
		speed_limiter_command_parameter_speed = "speed",
		speed_limiter_command_parameter_speed_help = "Whosa speed would yousa like da speed limiter to use? Yousa can leave dis blank in order to reset it, which will return it to normal behavior.",
		speed_limiter_command_help = "Meesa help you pre-set da speed limit by ovverridin' da normal behavior o' da speed limiter.",
		speed_limiter_command_substitutes = "sl, cc, cruise_control",

		add_vehicle_command = "add_vehicle",
		add_vehicle_command_help = "Add a vehicle to someone's garage.",
		add_vehicle_command_parameter_model = "model",
		add_vehicle_command_parameter_model_help = "Da name or hash o' da model o' da vehicle yousa want to add.",
		add_vehicle_command_parameter_server_id = "server id",
		add_vehicle_command_parameter_server_id_help = "Da server ID o' da player yousa want to give a vehicle to. If yousa leave dis blank, it will auto-select yousa.",
		add_vehicle_command_substitutes = "",

		toggle_vehicle_weapons_command = "toggle_vehicle_weapons",
		toggle_vehicle_weapons_command_help = "Mooey whether mooy nuna weapons on a veesha can be used.",
		toggle_vehicle_weapons_command_parameter_server_id = "server id",
		toggle_vehicle_weapons_command_parameter_server_id_help = "Da server ID of da player yousa wish to mooey da vehicle weapons for. Leevin' dis blank will auto-select yourself.",
		toggle_vehicle_weapons_command_substitutes = "vehicle_weapons",

		wheelie_command = "wheelie",
		wheelie_command_help = "Toggles da wheelie mode. (Press shift while in a vehicle)",
		wheelie_command_parameter_power_level = "bombad level", --"bombad",
		wheelie_command_parameter_power_level_help = "How much boost to apply (default is 2.5, lower it if the wheelie is too bombad, increase it if it's too weak).",
		wheelie_command_substitutes = "",

		-- vehicles/vin_numbers
		vin_number_command = "vin_number",
		vin_number_command_help = "Returns the VIN number of the vehicle you are driving.",
		vin_number_command_substitutes = "vin",

		vin_lookup_command = "vin_lookup",
		vin_lookup_command_help = "Looks up the VIN number of a vehicle.",
		vin_lookup_command_parameter_vin_number = "vin number",
		vin_lookup_command_parameter_vin_number_help = "Da vin number yousa wanten to check.",
		vin_lookup_command_substitutes = "lookup_vin, lv",

		-- weapons/ammo
		fill_ammo_command = "fill_ammo",
		fill_ammo_command_help = "Fills all bombad weapons' ammo.",
		fill_ammo_command_substitutes = "",

		-- weapons/recoil
		crosshair_command = "crosshair",
		crosshair_command_help = "Toggle da crosshair.",
		crosshair_command_substitutes = "",

		aim_down_sight_command = "aim_down_sight",
		aim_down_sight_command_help = "Automatically aim down sight when right-clicking even if yousa in third person.",
		aim_down_sight_command_substitutes = "ads",

		-- weapons/weapons
		check_ammo_command = "ahek agabu",
		check_ammo_command_help = "Meesa check how much ammo yousa have in total for da weapon yousa are currently holding.",
		check_ammo_command_substitutes = "agabu",

		toggle_airsoft_mode_command_command = "switc_airsoft_mode",
		toggle_airsoft_mode_command_command_help = "Meesa toggles airsoft mode (serverwide), which makes all guns to incredibly low damage.",
		toggle_airsoft_mode_command_command_substitutes = "airsoft_mode, sairsoft",

		toggle_folded_stock_command_command = "switc_folded_stock",
		toggle_folded_stock_command_command_help = "Yousa toggles da folded stock of da weapon yousa are currently holding.",
		toggle_folded_stock_command_command_substitutes = "folded_stock, stock"
	},

	connections = {
		your_account_is_connecting = "Yousa account issa connecting from a new session."
	},

	controls = {
		menu_control_up = "Menu Up",
		menu_control_down = "Menu Down",
		menu_control_left = "Menu Left",
		menu_control_right = "Menu Right",

		menu_control_up_alternative = "Menu Up Alternative",
		menu_control_down_alternative = "Menu Down Alternative",
		menu_control_left_alternative = "Menu Bombad Alternative",
		menu_control_right_alternative = "Menu Big Alternative"
	},

	core = {
		version = "Yosa Version"
	},

	discord = {
		one_player = "1 Otoh Gunga",
		multiple_players = "${playerAmount} Otolla Gunganeesa",
		join_with_fivem = "Join wit FiveM",
		discord_guild = "Discord Gilden",
		richer_presence_on = "Richer presence issen now on.",
		richer_presence_off = "Richer presence issen now off."
	},

	emojis = {
		emoji_list = "${emojis}",
		refresh_emojis_no_permissions = "Meesa sniffen da refreshin' of emojis without da proper permissions.",
		api_reported_no_updates = "Mesa no gettin any updates in the emoji list from Discord API.",
		emojis_added = "Mesa added ${added} of themsa emojis.",
		emojis_removed = "Mesa removed ${removed} of themsa emojis.",
		emojis_updated = "Mesa added ${added} emojis and mesa removed ${removed} emojis."
	},

	errors = {
		script_location = "Script Location",
		additional_information = "Additional Information",
		error_report = "Error Report",
		send_report = "Send Report",
		abort_report = "Abort Report",
		input_placeholder = "Please mesa know what you were doin when this error was triggered...",
		oh_no = "Uh-oh,",
		an_error_has_occurred = "Mesa thinkin' somethin' went wrong!",
		error_occured_information = "Thissen means dat somethin' ain't workin' propa' or da way it was supposed to. Wesa kindly askin' yousa to help us solvin' dissen issue by tellin' us more about whatchu was doin' when dissen error happened."
	},

	ping = {
		get_pings_missing_permissions = "Dis playa tryin' to get pings but no have enough permissions to doin' it.",
		getting_pings = "Mesa gettin' pings from alla da playas. Dissen might take a few seconds.",
		host_data = "${position}. ${location} - ${averagePing} Average Ping (based on ${totalPings} clients), 10% Low: ${averagePingLow}, 10% High: ${averagePingHigh}",
		list_hosts = "${listHosts}"
	},

	profile = {
		profile_debug_enabled = "Mesa enable da profile debugger. Check da F8 console for output, okeeday?",
		profile_debug_disabled = "Mesa disable da profile debugger."
	},

	queue = {
		joining_the_queue = "Mesa joinin' da queue...",
		timed_out_before_joining = "Yousa timed out before yousa coulda start joinin' da server.",
		server_reload_while_in_loading = "Da server's core is bein' restarted, and as yousa wasn't loaded in properly, yousa were automatically kicked outta there, okeeday?",
		server_reload_while_in_queue = "Yusa deserve a restartin'. Please reconnect ta da queue.",
		took_too_long_to_connect = "Yusa tooken too long tu connect!",
		queue_position_with_priority = "🐌 Mesa countin' yousa as ${queueEntryId}/${queueLength} ina da queue with ${priorityName} priority. 🕐${queueTime}${liveOnTwitch}",
		queue_position_without_priority = "🐌 Mesa countin' yousa as ${queueEntryId}/${queueLength} ina da queue. 🕐${queueTime}\nTired of queuin'? Supporten usen fur queue priority!\n\n${webstoreURL}${liveOnTwitch}",
		live_on_twitch = "\n\nMeesa helps you! Check out these streamers!\n${streamers}",
		server_is_starting = "Waiting for the server to start...",
		cancelled_before_server_start = "The connection was aborted before the server had started.",
		kicked_from_queue = "Yousa have been kicked from the queue for reason `${reason}`.",
		kicked_from_queue_no_reason = "Yousa have been kicked from the queue for no specified reason.",
		missing_slots_parameter = "Missing `slots` parameter.",
		invalid_slots_parameter = "Invalid `slots` parameter",
		slots_parameter_out_of_range = "Da `slots` parameter hasa to be between `0` and `1025`.",
		slots_already_set_to = "Da server slots are already set to `${slots}`.",
		slots_set_to = "Da server slots have now been set to `${slots}`.",

		invalid_license_identifier_parameter = "Missing or invalid 'licenseIdentifier' parameter.",
		invalid_target_position_parameter = "Missing or invalid 'targetPosition' parameter.",
		player_not_found_in_queue = "Da player was not found in da queue.",
		player_queue_moved_success = "Da player's position in da queue has been updated.",
		player_queue_skipped_success = "Da player has skipped da queue successfully.",
		queue_is_not_ready = "Da queue is not ready, so it can not be skipped.",

		welcome_to = "Meesa welcomes yousa to"
	},

	restart = {
		restart_30_minutes = "Da server will restart in 30 minutes!",
		restart_15_minutes = "Da server will restart in 15 minutes!",
		restart_10_minutes = "Da server will restart in 10 minutes!",
		restart_5_minutes = "Da server will restart in 5 minutes!",
		restart_3_minutes = "Da server will restart in 3 minutes!",
		restart_2_minutes = "Da server will restart in 2 minutes!",
		restart_1_minute = "Mesa tankin da server gona restart in 1 minute!",
		server_restarting = "Mesa tankin da server gona restart. Yousa may rejoin in a few minutes.",
		executed_restart_command = "Mesa executed da restart command.",
		already_executed_restart_command = "Da restart command has already been executed."
	},

	routes = {
		route_not_found = "Da route ${route} no found.",
		route_restricted = "Da route ${route} issa restricted.",
		internal_server_error = "Internal server error. Mesa sorry."
	},

	users = {
		playtime = "Playtime",
		player_playtime = "${playerName} (Position ${position})\nTotal Playtime: ${totalPlaytime}\nSession Playtime: ${sessionPlaytime}",
		leaderboard = "Leaderboard",
		your_position = "Yoursa position",
		logs_user_reject_connection_title = "Connection Rejected",
		logs_user_reject_connection_details = "Mesa rejecten connection from ${consoleName} (`${reason}`).",
		logs_user_connected_title = "User Connected",
		logs_user_connected_details = "${consoleName} hasa connected to da server.",
		logs_user_joined_title = "User Joined",
		logs_user_joined_details = "${consoleName} hasa joined da server.",
		logs_user_dropped_title = "User Disconnected",
		logs_user_dropped_details = "${consoleName} hasa disconnected from da server after hava played for ${playtime} witha reason: `${reason}`.",
		logs_character_loaded_title = "Yousa Character Loaded",
		logs_character_loaded_details = "${consoleName} has loaded character ${fullName} (${characterId}).",
		logs_character_unloaded_title = "Yousa Character Unloaded",
		logs_character_unloaded_details = "${consoleName} has unloaded character ${fullName} (${characterId}).",
		logs_character_unloaded_details_reason = "${consoleName} has unloaded character ${fullName} (${characterId}) with reason `${reason}`.",
		logs_character_created_title = "Yousa Character Created",
		logs_character_created_details = "${consoleName} has created character ${fullName} (${characterId}).",
		logs_character_deleted_title = "Yousa Character Mesa Deleted",
		logs_character_deleted_details = "${consoleName} mesa deleted character ${fullName} (${characterId}).",
		server_core_is_restarting = "Da server's core isa being restarted.",
		you_timed_out = "Yousa timed out!",
		kicked_for_no_specified_reason = "Yousa were kicked for no specified reason.",
		kicked_player = "Kicked player.",
		kicked_player_and_removed_reconnect_priority = "Kicked player and removed reconnect priority.",
		kicked_player_and_failed_to_remove_reconnect_priority = "Kicked player and failed to remove reconnect priority.",
		removed_player_from_queue = "Mesa removed player from queue.",
		player_not_found = "Yousa no finden player.",
		missing_license_identifier = "Mesa cannot find `licenseIdentifier`.",
		package = "Package",
		package_updated = "Yousa package has been updated to `${packageName}`.",
		package_updated_remaining_time = "Yousa package has been updated to `${packageName}`. It will expire in ${remainingTime}.",
		package_expired = "Yousa package expired.",
		package_same = "Yousa package is `${packageName}`.",
		package_same_remaining_time = "Yousa package is `${packageName}`. It will expire in ${remainingTime}.",
		no_package = "Yousa do not have a package.",
		fetching_package_error = "Mesa bombad error occurred while tryin to fetch yousa package data.",
		check_playtime_not_staff = "Mesa sorry, but yousa no have permissions to check playtimes for others.",
		reason_unknown = "Mmm, reason unknown. ",

		unloaded_character = "Unloaded character. ",
		user_does_not_have_sent_character_loaded = "The user does not have the sent character loaded. ",
		user_has_no_character_loaded = "The user does not have any character loaded. ",
		user_not_found = "Meesa couldn't find the sent user on da server.",
		invalid_character_id = "Invalid cha-racter id parameter sent. Mesa no understand.",
		invalid_license_identifier = "Invalid license identifier parameter sent. Mesa no know what dat means.",

		unload_character_not_staff = "Dis player tryin' to unload a player's cha-racter but they no staff.",

		unloaded_character_for_player_logs_title = "Unloaded Cha-racter For Player",
		unloaded_character_for_player_logs_details = "${consoleName} unloaded ${targetConsoleName}'s cha-racter ${characterFullName} (${characterId}) with da reason: `${message}`.",
		unloaded_character_for_player_no_reason_logs_details = "${consoleName} unleashed ${targetConsoleName}'s character ${characterFullName} (${characterId}) wesa got no reason.",
		unloaded_character_self_logs_title = "Unloaded Character",
		unloaded_character_self_logs_details = "${consoleName} unleashed their own character ${characterFullName} (${characterId}) with da reason `${message}`.",
		unloaded_character_self_no_reason_logs_details = "${consoleName} unleashed their own character ${characterFullName} (${characterId}) without any specified reason.",

		unloaded_character_for_user = "Unloadeden chanong un ${characterFullName} (${characterId}) para ${consoleName}.",
		user_with_server_id_has_no_character_loaded = "El usen con servidor id `${serverId}`no chanong un character cargado.",
		user_with_server_id_not_found = "El usen con server id `${serverId}` no kuderen trovado en el server.",

		custom_plate = "Plato personalizado",
		custom_character_id = "ID de personaje personalizado",
		custom_phone_number = "Número de teléfono personalizado",
		reskin = "Reskin",

		no_player_packages = "Nosen tiene agregado ningún paquete de jugador.",
		player_packages = "Yusa playah packagissen:\n${playerPackages}",
		player_package = "- ${Label}: ${amount}x",

		appreciated_tier = "Appreciated Tissen",
		respected_tier = "Respected Tissen",
		heroic_tier = "Heroic Tissen",
		legendary_tier = "Legendary Tissen",
		godlike_tier = "Godlike Tissen"
	},

	-- game/*
	admin_menu = {
		menu_title = "Admin Menu",
		spectate_player = "Spectate Issa Playah",
		teleport_player = "Teleport To Issa Playah",
		teleport_player_here = "Teleport Issa Playah To  Yusa",
		failed_teleport_to_player = "Mesa failed to teleport to issa playah.",
		failed_teleport_player_here = "Mesa failed to teleport issa playah to yousa.",
		invalid_target_server_id = "Meesa sorry, that target server id is invalid.",
		invalid_destination_server_id = "Meesa sorry, that destination server id is invalid.",
		invalid_source_server_id = "Meesa sorry, that source server id is invalid.",
		failed_teleport_player_to_player = "Meesa sorry, meesa could not teleport yousa to play with that player.",
		teleported_player_to_player = "Yousa have been teleported to play with dat player.",

		teleport_player_missing_permissions = "Yousa cannot teleport that player, yousa do not have da correct permissions."
	},

	afk = {
		you_are_afk = "Yousa are AFK. Yousa character will soon be unloaded.",
		move_mouse = "Move bombad mouse to stop being AFK.",
		you_have_been_unloaded_for_being_afk = "Yousa been AFK for too long, mesa suggest going to da character selection screen next time."
	},

	airdrops = {
		create_airdrop_missing_permissions = "Player attempted to create an airdrop but theysa no have da required permissions to do so.",
		created_airdrop = "Mesa created an airdrop of type `${airdropType}` with a total of ${itemAmount} bombad item(s)."
	},

	airports = {
		airport = "Airport",
		press_to_access_spawner = "Press ~INPUT_CONTEXT~ to access da vehicle spawner.",
		no_spawner_licenses = "Mesa no have any lices for dis vehicle spawner.",
		vehicle_lists = "Vehicle Lists",
		parked_vehicle = "Yousa parked vehicle.",
		press_to_park_vehicle = "Press ~INPUT_CONTEXT~ to park da vehicle.",
		no_vehicle_to_park = "Theresa no vehicle to park.",
		park_vehicle = "Park Vehicle",
		park_vehicle_outside = "Park Vehicle Outside",
		close_menu = "Close Mesa",
		spawned_vehicle = "Da vehicle has spawned.",
		spawner_on_timeout = "Da vehicle spawner is on a timeout. Pleasa try again.",
		spawn_area_not_clear = "Da spawn area issen not clear.",
		return_button = "Muy Muy",
		deposit = "$${amount} Binka",
		no_deposit = "No Binka",
		deposit_not_enough_money = "Yousa no have enough money to pay the Binka."
	},

	airstrike = {
		create_airstrike_missing_permissions = "Meesa sorry, but yousa no have da permissions to create an airstrike.",

		airstrike_success = "Airstrike created mesa-sa success!",
		airstrike_failed = "Failed to create airstrike, oopsie!"
	},

	airsupport = {
		create_airsupport_missing_permissions = "Meesa sorry, but yousa no have da permissions to call in air support.",

		distance = "Distance: ${distance}${unit}",
		time_to_impact = "ETI: ${timeToImpact}",

		out_of_range = "~r~OOR",

		km = "km",
		mi = "mi",

		airsupport_failed = "Failed to call airsupport."
	},

	alcohol = {
		now_sober = "You are now sober again.",
		drunk_state_1 = "You are slightly drunk.",
		drunk_state_2 = "You are drunk.",
		drunk_state_3 = "You are very drunk.",
		drunk_state_4 = "You are dangerously drunk."
	},

	alerts = {
		close = "Close",

		alert_title = "Alert",

		invalid_server_id = "Invalid server id.",
		missing_content = "Missing content.",

		show_alert_success = "Successfully showed alert to player.",
		show_alert_everyone_success = "Icky icky, alart successully showed to every Gungan.",
		show_alert_failed = "Ooopa, beep beep! Failed to showed alart to Gungan.",

		show_alert_missing_permissions = "Mesa sorry, but yousa no have da permissions to show an alart to anoda Gungan."
	},

	arcade = {
		use_arcade_machine = "Mesa thinks yousa can press ~INPUT_CONTEXT~ to use da Arcade Machine. Da cost is $${cost}.",
		finished_arcade_logs_title = "Finished Arcade",
		finished_arcade_logs_details = "${consoleName} finished an arcade game with a score of `${score}`. Okeyday, mesa liking that!"
	},

	archives = {
		press_to_access_archives = "Mesa help yousa! Press ~INPUT_CONTEXT~ to access da archives.",
		archives_title = "Archives",
		no_archives = "Dere not be any archives here.",
		close_menu = "Closeoo da Menu",
		archive_label = "Case No. ${case}",

		failed_get_archives = "Failed to get da archives.",
		failed_not_on_duty = "Yousa not be on duty.",

		archive_created = "Successfully created archive with case no. ${case}.",
		invalid_case_number = "Invalid case nubmer (Integer between 1 and 99999).",
		not_near_archive = "Yousa not be near anny archive.",
		failed_create_archive = "Failed to make da archive.",
		archive_already_exists = "Yousa already have disa case number in disa archive.",
		archive_destroyed = "Successfully destroyed archive with case no. ${case}.",
		archive_maximum_case_count = "Yousa can't create any new cases.",
		failed_destroy_archive = "Failed to destroy archive.",
		destroy_not_empty = "Yousa can only destroy empty archives.",

		create_archive_logs_title = "Created Archive",
		create_archive_logs_details = "${consoleName} created a case in the `${archiveName}` archive with the case number `${caseNumber}`.",
		destroy_archive_logs_title = "Destroyed Archive",
		destroy_archive_logs_details = "${consoleName} mesa-destroyed een case een de `${archiveName}` archive met de case-nomba `${caseNumber}`."
	},

	arena = {
		player_died = "${name} died.",
		player_killed = "${killerName} bryngeebonged ${name} witha ${deathCause} (${distance}m).",
		hud_info = "Player Amount: ${playerAmount}\n\nDeaths: ${deaths}\nKills: ${kills}",
		press_to_access_menu = "Press ~INPUT_INTERACTION_MENU~ to open de Arena menu.",
		this_command_is_only_for_arena = "Dis command issa only for de Arena.",
		stand_still_to_respawn = "Yousa gotta stay still for 5 seconds to respawn.",
		respawn_cancelled = "The respawn has been cancelled because yousa moved.",
		arena_suicide_reason = "Suicide",
		arena = "Arena",
		ordered_airdrop = "Ordered Airdrop",

		store = "Store",
		team = "Team",
		leaderboard = "Leaderboard",
		search = "Search",
		add_to_cart = "Add to Cart",
		unlocks_at_level = "Unlocks at level ${level}",
		show_vehicles = "Show Airships",
		hide_vehicles = "Hide Airships",
		balance = "Balance: $${balance}",
		shopping_cart = "${items} Items ($${cost})",
		buy_now = "Buy disa",
		call_airdrop = "Call Airdrop",
		empty = "Nada",
		clear_cart = "Clear Cart",
		can_not_afford = "Meesa no afford",
		brokie_lol = "Brokie lol",
		confirmation_exit_arena = "Yousa sure yousa want to exit da Arena?",
		confirmation_buy_now = "Yousa sure yousa want to buy ${label} for $${cost}?",
		yes = "Yosa",
		no = "Nosa",
		empty_slot = "Empty Slot",
		team_name = "Team Name",
		level = "Lub-lub",
		arena = "Arena",
		battle_royale = "Battle Royale",
		arena_gun_game = "Arena Gun Game",
		lottery = "Lottery",
		daily_tasks = "Daily Tasks",
		categories = "Categotien",
		refresh = "Refreshen",
		refreshing = "Refreshing-sa...",
		not_available = "Mesa no have dat",

		kill = "Killy",
		headshot = "Headshot-sa",
		killstreak = "Killstreak-sa",
		assist = "Assist",

		level = "Lub-lub",
		position = "Positiona",
		name = "Naboo",
		kills = "Killy-yo",
		deaths = "Dead-yo",
		kd = "K/D",
		hits = "Hityayao",
		hits_headshots = "Hityayao-hs",
		headshot_ratio = "Hityayao HS Ratio",
		damage_dealt = "Damage Dealtend",
		damage_taken = "Damage Takenend",
		matches_played = "Matchyayayayayaya",
		wins = "Winyay",
		win_ratio = "Win Ratio-sa",
		xp = "XP-sa",
		money_won = "Money Won-sa",
		average_percentage = "Average Percentage-sa",
		streak = "Streak"
	},

	atms = {
		withdraw = "Withdraw",
		deposit = "Deposit",
		balance = "Balance",
		transfer = "Transfer",
		back = "Back",

		amount = "Amount",
		target = "Target",

		failed_deposit = "Meesa sorry, mesa could not deposit money",
		failed_withdraw = "Meesa sorry, mesa could not withdraw money",
		failed_transfer = "Meesa sorry, mesa could not transfer money",

		processing = "Meesa processing...",
		counting_bills = "Meesa counting bills...",

		something_went_wrong = "Oopsie, something went wrong.",
		error_not_online = "Your target is mesa not available.",
		error_not_enough_money = "Mesa flunked out of money.",
		deposit_amount_big = "ATM deposits bombad limit is $4,000.",
		withdraw_amount_big = "ATM withdraws bombad limit is $6,000.",

		retrieving_card = "Retrieving Card",
		atm_damaged = "Dis bombad ATM ish damaged",

		press_to_use = "Press ~g~${InteractionKey} ~w~to use the ATM",
		press_to_interact_bank = "Press ~g~${InteractionKey} ~w~to interact with dee Bank",

		deposit_log_bank_title = "Bank Deposit",
		deposit_log_atm_title = "ATM Deposit",
		deposit_log = "${consoleName} deposited $${amount}.",

		withdraw_log_bank_title = "Bank Withdraw",
		withdraw_log_atm_title = "ATM Withdraw",
		withdraw_log = "${consoleName} withdrawn ${amount} galactic credits.",

		transfer_log_title = "Bank Transfer",
		transfer_log = "${consoleName} (#${characterId}) transferred ${amount} galactic credits to ${targetConsoleName} (#${targetCharacterId})."
	},

	attachments = {
		cancel_attachments = "Mesa changes meesa mind...",
		finish_attachments = "Mesa happy with this.",

		modifying_attachments = "Meesa modifying ${amount} attachments.",

		failed_apply = "Meesa sorry, applying attachments failed.",
		no_item = "Yousa no have that weapon.",
		no_attachment = "Yousa no have the required attachment.",
		no_paint = "Mesa say no have any paint.",
		success = "Mesa succesfully put on stuff.",

		not_available = "Mesa no have this stuff in mesa inventory.",

		attachment_label_suppressor = "Suppresa",
		attachment_label_flashlight = "Flashlighta",
		attachment_label_extended_clip = "Extend-o Clip",
		attachment_label_extended_pistol_clip = "Extend-o Pistol Clip",
		attachment_label_extended_smg_clip = "Extend-o SMG Clip",
		attachment_label_extended_shotgun_clip = "Extend-o Shotgun Clip",
		attachment_label_luxury = "Fancy Finisha",
		attachment_label_incendiary = "Incendiary Rounds (Kili'Pulul)",
		attachment_label_tracer = "Tracer Rounds (Gurtysha)",
		attachment_label_hollow_point = "Hollow Point Rounds (Huk'Pilaf)",
		attachment_label_scope = "Scope (Glikkit)",
		attachment_label_grip = "Grip (Kiku)",
		attachment_label_drum = "Drum Magazine (Mik'wongo)",
		attachment_label_heavy_barrel = "Heavy Barrel (Nootkig)",
		attachment_label_armor_piercing = "Armor Piercing Rounds (Kili'Kintaf)",
		attachment_label_explosive = "Explosive Rounds (Kili'gubba)",
		attachment_label_sight = "Holographic Sight (Glikkit-Gam)",
		attachment_label_pistol_sight = "Pistol Sight (Glikkit-Pook)",
		attachment_label_fmj = "Yusa Full Metal Jacket Rounds",
		attachment_label_scope_nv = "Night Vision Scope",
		attachment_label_scope_thermal = "Thermal Scope",

		attachment_label_luxury1 = "The Pimpa",
		attachment_label_luxury2 = "The Ballasa",
		attachment_label_luxury3 = "The Hustlera",
		attachment_label_luxury4 = "The Rocka",
		attachment_label_luxury5 = "The Hatera",
		attachment_label_luxury6 = "The Lovera",
		attachment_label_luxury7 = "The Playera",
		attachment_label_luxury8 = "The Kinga",
		attachment_label_luxury9 = "The Vagosa",

		attachment_label_luxury_knife_1 = "Yass-a VIP Variant",
		attachment_label_luxury_knife_2 = "Yass-a Bodyguard Variant",

		attachment_label_stock_folded = "Folded Stock",
		attachment_label_stock_unfolded = "Unfolded Stock",

		attachment_label_skin_patriotic = "Patriotic Skin",
		attachment_label_skin_brushstroke = "Brushstroke Skin",
		attachment_label_skin_skull = "Skull Skin",
		attachment_label_skin_leopard = "Leopard Skin",
		attachment_label_skin_zebra = "Zebra Skin",
		attachment_label_skin_geometric = "Geometric Skin",

		label_no_skin = "No Skin",

		no_tint = "Mesa Aaah No Tint",

		tint_normal_0 = "Blac",
		tint_normal_1 = "Jade",
		tint_normal_2 = "Goldie",
		tint_normal_3 = "Pinko",
		tint_normal_4 = "Armyaah",
		tint_normal_5 = "LSPDaah",
		tint_normal_6 = "Orangie",
		tint_normal_7 = "Platinummy",

		tint_mk2_0 = "Classic Blac",
		tint_mk2_1 = "Classic Greyaah",
		tint_mk2_2 = "Classic Two-Tone",
		tint_mk2_3 = "Classic Whitey",
		tint_mk2_4 = "Classic Beija",
		tint_mk2_5 = "Classic Greenie",
		tint_mk2_6 = "Classic Bluey",
		tint_mk2_7 = "Classic Earthy",
		tint_mk2_8 = "Classic Brown & Black",
		tint_mk2_9 = "Reddy Contrast",
		tint_mk2_10 = "Blue Contrast",
		tint_mk2_11 = "Yellow Contrast",
		tint_mk2_12 = "Orange Contrast",
		tint_mk2_13 = "Bold Pink",
		tint_mk2_14 = "Bold Purple & Yellow",
		tint_mk2_15 = "Bold Orange",
		tint_mk2_16 = "Bold Green & Purple",
		tint_mk2_17 = "Bold Red Features",
		tint_mk2_18 = "Bold Green Features",
		tint_mk2_19 = "Bold Cyan Features",
		tint_mk2_20 = "Bold Yellow Features",
		tint_mk2_21 = "Bold Red & White",
		tint_mk2_22 = "Bold Blue & White",
		tint_mk2_23 = "Metallic Gold",
		tint_mk2_24 = "Metallic Platinum",
		tint_mk2_25 = "Metallic Gray & Lilac",
		tint_mk2_26 = "Metallic Purple & Lime",
		tint_mk2_27 = "Metallic Red",
		tint_mk2_28 = "Metallic Green",
		tint_mk2_29 = "Metallic Blue",
		tint_mk2_30 = "Metallic White & Aqua",
		tint_mk2_31 = "Metallic Red & Yellow",

		tint_ray_0 = "Space Ranger",
		tint_ray_1 = "Purple",
		tint_ray_2 = "Green",
		tint_ray_3 = "Orange",
		tint_ray_4 = "Pink",
		tint_ray_5 = "Gold",
		tint_ray_6 = "Platinum",

		last_concat = "and",

		attachments_logs_title = "Attachments and Tints",
		attachments_logs_details = "${consoleName} modified their `${weaponName}`: ${modifications}.",

		removed_attachments = "Meesa detached ${removed}",
		added_attachments = "Meesa added ${added}",
		tint_changed = "Meesa changed tint from `${fromTint}` to `${toTint}`"
	},

	audio = {
		audio_id = "Audio ${audioId}",
		illegal_sound_effect = "Meesa attempted to tell other clients to play an external audio.",
		url_invalid = "Da provided URL isa not valid. It must be uploaded on a secure connection. (https://)",
		url_missing = "Yousa need to add da URL to da audio yousa are trying to play.",
		play_audio_no_permissions = "Played attempted to play an audio but theysa didn't have the required permissions to do so.",
		played_audio_for_self = "Mesa played audio for mesa selves.",
		played_audio_for_player = "Mesa played audio for ${consoleName}!",
		played_audio_for_everyone = "Mesa played audio for everyones!",
		played_audio_effect_for_everyone_title = "Played Audio Effect For Everyones",
		played_audio_effect_for_everyone_details = "${consoleName} played a audio effect for everyones. The audio effect had URL `${url}` and was set to play at volume level `${volume}`.",
		played_audio_effect_for_player_title = "Played Audio Effect For Players",
		played_audio_effect_for_player_details = "${consoleName} playin ah audio effect fo ${targetConsoleName}. Da audio effect had URL `${url}` and wuz set ta play at volume level `${volume}`."
	},

	balls = {
		press_to_pick_up_ball = "Press ~INPUT_CONTEXT~ ta pick up ball."
	},

	banana_peels = {
		slipped_logs_title = "Slipped On Banana Peel",
		slipped_logs_details = "${consoleName} slipped on a banana peel while ${slipForce}.",

		slip_0 = "walkin",
		slip_1 = "runnin",
		slip_2 = "sprintin"
	},

	bandaids = {
		label = "${type} Bandaid",

		baby_yoda = "Baby-Yoda",
		batman = "Batman",
		care_bear = "Ca'yare-Bears",
		hello_kitty = "Ello-Kitty",
		hotwheels = "Hot-Wheels",
		mc_queen = "Lightning-McQueen",
		minions = "Minions",
		pony = "My-Little-Pony",
		power_puff = "Power-Puff",
		spiderman = "Spiderman",
		star_wars = "Staa-Wars",

		failed_random_bandaid = "Meesa no sucess getten random bandaid.",

		received_bandaid_logs_title = "Received Bandaid",
		received_bandaid_logs_details = "${consoleName} received 1x ${bandaid} after airlifting.",
		spawned_bandaid_logs_details = "${consoleName} give themselve 1x ${bandaid}."
	},

	battle_royale = {
		failed_to_toggle_battle_royale = "Failed to toggle the Battle Royale.",
		toggled_battle_royale_on = "Toggled Battle Royale on.",
		toggled_battle_royale_off = "Meesa turn off Battle Royale.",
		battle_royale_info = "Yousa in the queue for Battle Royale!\nThere be ${battleRoyaleQueueLength} players in the queue.",
		toggle_battle_royale_missing_permissions = "Player mesa attempt to toggle the Battle Royale mesa no have da required permissions to do so.",
		start_battle_royale_missing_permissions = "Player mesa attempt to start a Battle Royale mesa no have da required permissions to do so.",
		unable_to_start_battle_royale_not_active = "Mesa no able to start da Battle Royale cause da Battle Royale no enabled.",
		not_enough_players_in_queue = "Mesa sorry. Not enough players in queue, so Battle Royale cannot starten.",
		zone_idling = "Da zone be idlin' now.",
		zone_advancing = "Da zone be advancin' now.",
		player_died = "${name} be gone: ${remainingPlayers} left.",
		player_killed = "${name} be killed by ${killerName} for reason ${deathCause} from a distance of ${distance}m: ${remainingPlayers} remaining.",
		player_won = "${name} be da winna!",
		your_team = "Yousa Team:",
		received_lobby_invite = "Yousa received a lobby invite from ${serverId}. Do `/br_join ${serverId}` to joinen!",
		unable_to_invite_yourself = "Me peesa no can invite mesa self.",
		unable_to_join_yourself = "Me no can join mesa self.",
		player_already_invited = "Player with ID `${serverId}` has already been invited.",
		sent_player_invite = "Me senten invite to player with ID `${serverId}`",
		joined_lobby = "Yousa joined the lobby.",
		player_not_invited = "Yousa no invited to this lobby.",
		you_are_not_in_a_lobby = "Yousa no in a lobby.",
		left_lobby = "Yousa left the lobby.",
		created_match = "Me created a match with ${playerAmount} players.",
		created_match_no_vehicles = "Qi yib found with no vehicles with ${playerAmount} ploo.",
		zone_complete = "Da zone is complete.",
		battle_royale_match_info = "Current Mesa: ${zoneId}/${zoneAmount}\nRemaining Time: ${remainingTime} standard Gungan time\nCurrently: ${currentlyLabel}\nRemaining Players: ${remainingPlayers}\nKills: ${kills} slaap!",
		idling = "Idling (Yiya!)",
		advancing = "Advancing (Zukee!)",
		battle_royale = "Battle Royale",
		press_to_deploy_parachute = "Press ~INPUT_PARACHUTE_DEPLOY~ to deploy parachute.",
		join_battle_royale_instance_missing_permissions = "Dissen player try join battle royale, but not have da permissions to do isso.",
		no_match_found = "${consoleName} noh gonna in any matchen.",
		joined_instance = "Yousa joineden da instance of ${consoleName}.",
		leave_battle_royale_instance_missing_permissions = "Da player attempted to leave da Battle Royale instance but no hasa da required permissions to do so.",
		left_instance = "Leften instance.",
		failed_to_leave_instance = "Failed to leavesa instance as yousa no was in one.",
		already_in_match = "Failed to joinen instance as yousa already in a match.",
		lobby_is_full = "Da lobby yousa attempted to joinen is full.",
		zone_center = "Kelluum'nari Kii'tore",
		team_marker = "Katol Mai Kii'tore",
		trophy_information_top = "${name} tiss'aar!",
		trophy_information_bottom = "Yaa taykaan ${playerAmount} oo'ya kii'toroon yaa taykaan ${kills} kii'toroon.",
		not_able_to_join_while_in_match = "Yaa not able to join a lobby while in a match."
	},

	bazaar = {
		access_bazaar = "Press ~INPUT_CONTEXT~ to access thiisa shop.",

		bazaar_blip = "Bazaar",

		no_items = "Yaa haven't any tinka to sell here.",
		price_about = "oo'ya $$${price}.",

		sold_logs_title = "Tinka Sales di Bazaar",
		sold_logs_details = "${consoleName} sold ${amount}x `${itemName}` for $${price}.",

		sold_items = "Yousa sold ${amount}x ${label} for $${money}.",
		failed_sell_items = "Failed to sell items.",

		junk_collector = "Junk Collector",
		tool_collector = "Tool Collector",
		waste_collector = "Waste Collector",
		ammo_collector = "Ammo Collector",

		close_menu = "Close Mesa"
	},

	beds = {
		no_nearby_available_bed_found = "No nearby available bed found.",
		press_to_leave_bed = "Press ~INPUT_CONTEXT~ to leave the bed."
	},

	blackjack = {
		play_blackjack = "Press ~INPUT_CONTEXT~ to play Blackjack.",
		play_blackjack_high_limit = "Mesa press ~INPUT_CONTEXT~ to play High-Limit Blackjack."
	},

	blindfold = {
		blindfolding_player = "Putting paper bag bombad player.",
		blindfolding_self = "Putting on paper bag mesa self.",
		hold_to_take_blindfold_off = "Holda ~INPUT_VEH_HEADLIGHT~ to take off the paper bag.",
		hold_to_take_blindfold_off_holding = "Keep holding to take off the paper bag."
	},

	blips = {
		comedy_club = "Comedy Club",
		bean_machine = "Bean Machine",
		arcade_bar = "Arcade Bar",
		japanese_restaurant = "Japanese Restaurant",
		luxury_autos = "Luxury Autos",
		rockford_records = "Rockford Records",
		dispensary = "Dispensary",
		haunted_high_school = "Haunted High School",
		sushi_restaurant = "Sushi Restaurant",

		bank = "Bank",
		hospital = "Hospital",
		bolingbroke = "Bolingbroke Penitentiary",
		police_department = "Police Department",
		motel = "Motel",
		tattoo_parlor = "Tattoo Parlor",
		repair_shop = "Repair Shop",
		material_vendor = "Material Vendor",
		pdm = "Premium Deluxe Motorsport",
		ls_customs = "Los Santos Customs",
		jewelry_store = "Jewelry store from Vangelico",
		pd_air_hq = "Police Air HQ",
		pd_sea_hq = "Poopa Sea HQ",
		ems_air_hq = "EMS Air Mui-mui",
		ems_boat_hq = "EMS Boat Mui-mui",
		ems_garage = "EMS Gungan Garage"
	},

	blockage = {
		restricted_area = "Yousa in a restricted area. Please return!"
	},

	bombs = {
		not_in_plane = "Yousa not in a plane.",
		not_in_plane_anymore = "You are no more in a plane.",
		interaction_menu = "~INPUT_CONTEXT~ Drop ${name} bomb, ~INPUT_VEH_HEADLIGHT~ Switch type.",
		too_low = "Yousa too low to drop bombs.",

		you_are_not_in_a_vehicle = "Yousa not driving a vehicle currently.",
		ignition_bomb_on = "Toggled the ignition bomb on.",
		ignition_bomb_off = "Meesa turned off the ignition bomb.",
		failed_ignition_bomb = "Meesa failed to turn off the ignition bomb.",

		recharging_countermeasures = "Recharging countermeasures. Mesa have ${percentage}% left.",

		ignition_bomb_triggered_logs_title = "Ignition bomb activated",
		ignition_bomb_triggered_logs_details = "${consoleName} turned on the engine of a vehicle that had a bomb attached to its ignition.",

		toggle_ignition_bomb_missing_permissions = "Player tried to toggle an ignition bomb, but they don't have the correct permissions. Warning: maxa dangerous."
	},

	boomboxes = {
		boombox = "Bumgong",
		play = "Plango",
		pause = "Pauso",
		skip_song = "Skipen Songen",
		volume = "Volumen",
		music = "Musoken",

		store_boombox = "Storo da Bumgong in yours inventory",
		put_boombox_down = "Putten da Bumgong on da ground",
		use_boombox = "Usen da Bumgong",
		hold_to_pick_boombox_up = "Holden to picken da Bumgong up",
		illegal_boombox_item_id = "Meesa solten no be tryin' to use a bumgong item with an illegal item id.",
		logs_attempted_to_add_song_title = "Attempten To Adden Song",
		logs_attempted_to_add_song_details = "${consoleName} attempted to adden a song with video URL `${url}` to da bumgong with ID `${bumgongId}`.",
		wipe_boomboxes_not_staff = "Yousa attempted to wipe boomboxes, but no have permission to do so.",
		logs_wiped_all_boomboxes_title = "Wiped All Boomboxes",
		logs_wiped_all_boomboxes_details = "${consoleName} wiped all boomboxes.",
		logs_wiped_nearby_boomboxes_title = "Wiped Nearby Boomboxes",
		logs_wiped_nearby_boomboxes_details = "${consoleName} wiped all boomboxes within a radius of `${radius}`.",
		radius_invalid = "A radius of `${radius}` is not a valid value.",
		wiped_all_boomboxes = "Wiped ${boomboxesWiped} boomboxes.",
		wiped_nearby_boomboxes = "Mesa wiped ${boomboxesWiped} boomboxes mesa radusa of `${radius}`.",
		failed_to_wipe_boomboxes = "Mesa failed to wipe boomboxes.",
		no_boomboxes = "There were no boomboxes to wipe.",
		no_boomboxes_within_radius = "There were no boomboxes to wipe mesa radusa of `${radius}`."
	},

	boosting = {
		boosting_contracts = "Mesa boosting contracts",
		join_queue = "Join mesa queue",
		leave_queue = "Leave mesa queue",

		transfer_crypt = "Transfer CRYPT",
		transfer_crypt_info = "Enter mesa amount and server ID of mesa player yousa wish to transfer to.",

		amount = "Sa",
		server_id = "Idi ya Server",

		transfer = "Ginga",
		cancel = "Anulla",

		start_contract = "Commenza contratto",
		start_contract_info = "Sese certo tu vollen commenzà stu contratto?",

		yes = "Si",
		no = "No",

		transfer_contract = "Ginga contratto",
		transfer_contract_info = "Inserisci l'idi ya server della persona a cui vuoi gingare lu contratto.",

		decline_contract = "Rifiuta contratto",
		decline_contract_info = "Sese certo tu vuollen rifiutà stu contratto?",

		cancel_contract = "Anulla contratto",
		cancel_contract_info = "Mesa-sa think yousa sure yousa want to cancel dissa contract?",

		no_contracts = "Yousa haven no contracts available. Join da queue to get soma.",

		model = "Model",
		plate = "Plate",
		buy_in = "Buy-in",
		expires_in = "Expires In",

		start_contract_type = "What yousa wanten to do?",
		start_contract_type_info = "Yousa wanna do a drop-off or VIN scratch? Da VIN scratch costs an additional ${cost} CRYPT.",

		drop_off = "Drop-Off",
		vin_scratch = "VIN scratch",

		start_contract = "Commenza contratto",
		transfer_contract = "Ginga contratto",
		decline_contract = "Rifiuta contratto",
		mark_pickup = "Marka pickup.",
		cancel_contract = "Anulla contratto",

		new_contract = "Yousa have got a new boosting contract. (Class: ${className})",
		started_contract = "Started contract.",
		failed_contract = "Failed contract.",
		completed_contract = "Completed contract. Yousa received ${payout} CRYPT.",
		completed_contract_vin_scratch = "Completed contract. Da vehicle can be founda in yousa garage.",
		marked_pickup = "Marka pickup.",

		vehicle_tracker_is_being_hacked = "Da vehicle tracker is bein' hacked. There issa ${hacksRemaining} hack(s) remaining.",
		use_chip_to_hack_vehicle_tracker = "Moo ma chip to hack da vehicle tracker. Der is ${hacksRemaining} hack(s) remaining.",
		vehicle_hacking_is_timed_out = "Yousa half to wait a little before hacking again. Der is ${hacksRemaining} hack(s) remaining.",
		drop_the_vehicle_off = "Drop da vehicle off at da marked location.",
		drop_off = "Drop-Off",
		exit_the_vehicle = "Exit da vehicle and leave da area to finish da mission.",

		vehicle_is_being_tampered = "A vehicle near ${locationLabel} is being tinkered with. Da model is ${modelLabel} (class ${className}) and da plate is ${plate}.",
		vehicle_tamper = "Uh, vehicle tamper (${plate})",
		vehicle_tracker_alert = "Mooey mooey! Vehicle tracker alert (${plate})",

		exit_the_vehicle_to_scratch = "Ex-squeezme, exit the vehicle to do the VIN scratch.",

		scratch = "Scratch VIN.",
		press_to_scratch = "Press ~g~E ~w~to scratch VIN.",

		scratching_vehicle = "Scratching vehicle...",

		deleted_boosted_vehicle_logs_title = "Deleted boosted vehicle",
		deleted_boosted_vehicle_logs_details = "${consoleName} deleted boosted vehicle with ID ${vehicleId}.",

		spawned_contract = "Wesa spawned a contract. Yousa ready to go.",
		spawned_contract_for = "Mesa succesfullee spawned a contract for ${displayName}.",

		spawn_contract_no_permissions = "Yousa player attempted to spawn a boostin' contract widout proper permissions.",

		already_max_vin_scratched_vehicles = "Yousa already have da maximum amount of VIN scratched vehicles in yousa garash.",
		contract_has_expired = "Disa contract has expired.",
		you_already_have_a_contract_started = "Yousa already have a contract started."
	},

	brochure = {
		welcome_to = "Welcome to",
		san_andreas = "San Andreas",

		getting_started = "Getting Started",
		getting_started_1 = "Yousa just arrived at da airport and are probably askin' yourself where to mesa go? All new citizens receive a free starter car. It might not be da best, but it'sa yours to keep. You can find it in da parking lot.",
		getting_started_2 = "If yousa don't fancy driving yousa can also walk, get a friend to pick yousa up or call a taxi using your phone. You can access your phone by flexing your \"P\" muscle.",
		getting_started_3 = "Most vehicles have trunks which yousa can put not only items but also other people in. Yousa can /carry someone, then walk up to a trunk, open it (/door) and put them in. The same way yousa can also get them back out. If yousa flipped your vehicle yousa can /flip it back onto its wheels.",

		where_now = "Wesa Where Now?",
		where_now_1 = "Now dat yousa acquired yousa first vehicle, yousa can start exploring da city. Since yousa need to stay nourished and hydrated, a grocery store is a good place to start. In der yousa can purchase food and drinks. As well as bandages, which will help yousa recover from injuries.",
		where_now_2 = "Once yousa stocked up on supplies, yousa should head to da courthouse and pickup a citizen card. This will act as yousa ID, drivers license and weapons license.",

		getting_a_job = "Getting A Job",
		getting_a_job_1 = "Yousa make money by gettin' a job. Check out Life Invader for job postings. It's icon be lookin' like a red briefcase on your map. There yousa can find many types of jobs to apply for.",
		getting_a_job_2 = "To become a trucker, yousa needs to purchase a truck from the trucker hq for $2,000. Then, yousa must deliver goods to different locations.",
		getting_a_job_3 = "To enroll in the delivery job, yousa can pick up a delivery filled with packages at the delivery hq. Then, yousa needs to deliver the packages to various locations throughout the city. To open the back of the delivery van, walk up to it and type /door.",
		getting_a_job_4 = "Yousa can also become a waste collector. At da waste collector hq yousa can pickup a garbage truck and start collecting trash.",
		getting_a_job_5 = "Once yousa've enrolled in one of da jobs yousa will be able to see a variety of markers on yoursa map. A waypoint shows yousa where to go to get started.",

		your_appearance = "Yoursa Appearance",
		your_appearance_1 = "Clothing like pants, shoes, shirts and moresa can be changed at any clothing store, free of charge. Your hairstyle, facial hair and makeup can be changed at a barber shop. Yousa can find both da clothing stores and barber shops on da map.",
		your_appearance_2 = "Mesa suggest once yousa flown in for da first tim, yousa wont be able to change yoursa general appearance like skin color, facial features, etc anymore. If yousa messed up yoursa appearance or finished too quickly yousa can /report and ask for a reskin.",

		medical_care = "Medical Care",
		medical_care_1 = "If yousa get injured yousa can go to da hospital to check-in and get treated. Yousa can find da hospital on da map. Yousa can also use bandages or first aid kits to heal yourself.",
		medical_care_2 = "If yousa respawn without being brought to da hospital or yousa exit da game while downed, yousa may lose some of yoursa items. A server restart counts as exiting da game.",

		safety_hint = "Hint: Yousa can take your weapon off safety by pressin' ALT and da middle mouse button. Stay safe!",

		closing_sentence = "Mesa gotsa lotsa more to do in da city! Ask around and make somesa friendsa ;)"
	},

	cache = {
		download_progress = "Download Progress:\n- Vehicleesa: ${vehiclesDone}/${vehiclesTotal}\n- Objectssa: ${objectsDone}/${objectsTotal}\n- Pedsssa: ${pedsDone}/${pedsTotal}\n- Clothingsa: ${clothingRequested}/${clothingTotal}",
		slow_download_enabled = "Slow download has been enabled. Yousa gonna wait longer!",
		slow_download_disabled = "Slow download has been disabled. Yousa gotta need for speed!"
	},

	capri_sun = {
		capri_sun_name = "Capri Sun (${flavor})."
	},

	cargo = {
		start_cargo_no_permissions = "Player attempted to start da Cargo heist but they didn't have permissions to do so. Mesa suggetsta talk to da boss to gain permission.",
		end_cargo_no_permissions = "Mesa believin' to end the Cargo heist but mesa no have permissions to do so.",
		cargo_already_active = "Cargo already happening.",
		started_cargo = "Cargo has begun.",
		cargo_not_active = "Cargo no happening.",
		ended_cargo = "Cargo has ended.",
		cargo_crate = "Cargo Crate",
		use_chip_to_hack_crate = "Use ~g~Chip ~w~ to hack crate.",
		crate_is_being_hacked = "Crate is being hacked.",
		crate_will_unlock_in = "Crate gonna unlock in ~g~${time}~w~.",
		press_k_to_access = "Press ~g~K ~w~ to access."
	},

	casino = {
		set_casino_screen_id_not_staff = "Jar Jar Binks, mesa thinkin' dat player no have correct permissions to set da casino screen id.",
		successfully_set_screen_label = "Muy muy successfully set da screens to screen with label `${screenLabel}`.",
		successfully_queued_screen_label = "Muy muy successfully queued up da screen with label `${screenLabel}`.",
		failed_to_set_screen_label = "Failed to set da screens to screen with label `${screenLabel}`. Yousa might wanna check mesa logs.",
		invalid_screen_label = "The screen label `${screenLabel}`is invalid. Mesa no understand it.",
		missing_screen_label = "Missing da `screen label` parameter. Yousa gotta provide it, okeeday?",
		set_screen_label_already_set_to = "Mesa label issen already set to ${screenLabel}.",
		only_available_in_the_casino = "Yousa can only do dissen while inside the casino.",
		casino_blip = "Casino"
	},

	cayo_perico = {
		approaching_out_of_bounds = "Yousa are approaching the map boundsen.",
		out_of_bounds = "Yousa are out of boundsen."
	},

	cayo_perico_world = {
		keep_heading_in_direction_in = "Keepa heading ${direction} to comen to Cayo Perico.\n(${distanceToTeleport}m left)",
		keep_heading_in_direction_out = "Keepa heading ${direction} to comen to Los Santos.\n(${distanceToTeleport}m left)",

		south = "south",
		south_east = "sout-east",
		east = "east",
		north_east = "nor-east",
		north = "north",
		north_west = "nor-west",
		west = "west",

		not_the_driver = "Yousa have to be da driver of da vehicle to fly to Cayo Perico.",
		not_a_cayo_vehicle = "Yousa have to be in a boat, plane, or a helicopter to get to Cayo Perico.",
		entering_cayo_perico_logs_title = "Entering Cayo Perico",
		entering_cayo_perico_logs_details = "${consoleName} is entering Cayo Perico.",
		exiting_cayo_perico_logs_title = "Exiting Cayo Perico",
		exiting_cayo_perico_logs_details = "${consoleName} is exiting Cayo Perico.",
		entering_cayo_perico_with_passengers_logs_title = "Wanin to Cayo Perico wit wanters",
		entering_cayo_perico_with_passengers_logs_details = "${consoleName} is wanin to Cayo Perico wit ${passengersAmount} wanters.",
		exiting_cayo_perico_with_passengers_logs_title = "Wanout from Cayo Perico wit wanters",
		exiting_cayo_perico_with_passengers_logs_details = "${consoleName} is wanout from Cayo Perico wit ${passengersAmount} wanters."
	},

	christmas = {
		claimed_advent_calendar_hatch_title = "Claimed Bombad Advent Calendar Hatch",
		claimed_money = "${consoleName} n' claimed $${amount}.",
		claimed_item = "${consoleName} n' claimed `${itemLabel}`.",
		claimed_vehicle = "${consoleName} n' claimed a Chrisha-special vehicle.",
		claimed_queue_priority = "${consoleName} n' claimed a week of Chrisha queue priority.",

		claimed_advent_calendar_bonus_title = "Claimed Bombad Advent Calendar Bonus",
		claimed_advent_calendar_bonus_details = "${consoleName} n' claimed the advent calendar bonus, dat bein' a vehicle with model name `${modelName}`."
	},

	cinema = {
		failed_to_find_cinema_identifier = "Meesa no find cinema identifier.",

		screen_model_size = "Size: x: ${sizeX}, y: ${sizeY}",
		screen_model_offset = "Offset: x: ${offsetX}, y: ${offsetY}, z: ${offsetZ}",
		screen_model_rotation = "Rotation: ${rotation}",
		screen_model_volume = "Volume: ${volumeRadius} (${volumeCutOffRadius})",
		screen_model_model = "Model: ${modelName}",

		locked = "Locked",

		add_video_to_queue_title = "Add Video to Queue",
		add_video_to_queue_details = "${consoleName} added a video to da queue in a cinema with da video key of `${videoType}:${videoId}`.",

		blacklisted_video = "Da video wit key `${videoKey}` is not allowed.",
		failed_to_blacklist_video = "Mesa failed to ban da video wit key `${videoKey}`.",
		video_is_already_blacklisted = "Da video wit key `${videoKey}` issen already banned.",

		blacklist_video_missing_permissions = "Player issen tryin to ban a video but theysa no have da required permissions.",

		watching_movie = "Watching ${title}",

		cinema = "Cinema",
		doppler_cinema = "Doppler Cinema",
		sandy_cinema = "Sanndy Cinema",
		tv = "TV",
		monitor = "Monitor",
		laptop = "Laptopa",
		projector = "Projektora",

		zoom = "Dang zoom do camera forward and backward",
		slow = "Unga",
		toggle_lights = "Toggle Lightsa",
		exit = "Exita",

		-- NOTE: UI locales
		title = "Titlea",
		length = "Lengtha",
		date = "Datea",
		author = "Authora",
		queue = "Queuea",
		search_through_library = "Search jar-jar through library...",
		add_to_library = "Add video to library (URL)..."
	},

	cinematic = {
		cinematic = "Cinematica",
		black_bars_set_to = "Da cinematic black bars has mesa been set to ${blackBarsHeight}%."
	},

	claymores = {
		arm_claymore = "[${InteractionKey}] Arm",
		disarm_claymore = "[${InteractionKey}] Disarm",

		disarming = "Meesa disarmen",
		arming = "Meesa armen"
	},

	clothing = {
		outfit_failed = "Failed to use mesa getta outfiten.",
		missing_outfit = "Missing outfit.",
		missing_outfit_name = "Missing outfit name.",
		no_nearby_clothing_spot = "No mesa neara neargetta clothing spot.",
		trunk_closed = "The trunk is closed.",
		trunk_too_far = "Yousa too far from the trunk.",
		moved_too_far_trunk = "Yousa move too far from the trunk.",
		invalid_job = "Yousa no have the required job to use this clothing spot.",
		outfit_list = "Outfits",
		no_saved_outfits = "Yousa no have any saved outfits.",
		saved_outfit = "Outfit '${name}' mesa save with success.",
		replaced_outfit = "Outfit '${name}' mesa replaced with success.",
		failed_save_outfit_exists = "Mesa failed to save, outfit '${name}' already mesa exist.",
		failed_save_outfit = "Mesa failed to save outfit.",
		deleted_outfit = "Outfit '${name}' mesa deleted with success.",
		failed_delete_outfit_doesnt_exists = "Mesa failed to delete, outfit '${name}' doesnt mesa exist.",
		failed_delete_outfit = "Mesa failed to delete outfit.",

		invalid_server_id = "Missing or invalid server id.",
		player_model_missmatch = "You mesa cannot share your outfit with dissa player.",
		player_too_far = "Meesa sorry, da playas be too far away.",
		shared_outfit_too_far = "${displayName} shared an outfit with yousa but yousa not near a clothing spot.",
		outfit_shared = "Mesa shared outfit! Tis be awesome!",
		outfit_not_shared = "Mesa not able to be sharing outfit for some reason.",
		shared_outfit = "${displayName} be sharing an outfit with you. Say `yes` to accept dem, or `no` to reject dem. (This gonna expire in 30 seconds)",
		applied_shared_outfit = "You be looking stylish in mesa shared outfit!",
		declined_shared_outfit = "Mesa sorry, mesa outfit not up to yousa tastes.",

		no_nearby_dead_player = "Not finding any dead players nearby.",
		failed_to_steal_shoes = "Mesa failed to steal shoes.",

		loading_model = "Loading bombad ped model...",
		loading_spawn = "Spawning bombad player ped...",
		loading_set_data = "Setting bombad ped data...",
		loading_tattoos = "Setting bombad tattoos...",
		loading_finalize = "Finalizing Mesa..."
	},

	clothing_bag = {
		packed_outfit = "Packed outfit into bombad bag, mesa did!",
		packed_outfit_failed = "Failed to pack outfit into bombad bag, mesa did.",

		item_description_filled = "Mesa packed the outfit \"<i>${outfit}</i>\" into bombad bag, mesa did!",
		item_description_empty = "Mesa has <b>no</b> outfit packed in the bombad bag, mesa does not!",

		bag_empty = "This bombad clothing bag is empty, mesa.",
		wrong_ped_model = "Mesa thinks this outfit is no fitin' yousa.",
		cant_use_in_vehicle = "Yousa can't be usin' a clothing bag in a vehicle.",
		cant_use_while_moving = "Yousa can't be usin' a clothing bag while movin'.",

		opening_bag = "Openin' Bag"
	},

	clothing_menu = {
		component = "Component",
		texture = "Texture",
		palette = "Palette",

		clothing = "Clothing",
		accessories = "Accessories",
		face = "Face",
		outfits = "Outfits",

		reset_zoom = "Reset zoom",
		zoom_level = "Zoom",

		variation = "Variation",
		color = "Color",
		secondary_color = "Secondary Color",
		opacity = "Opeezyt",

		press_to_access = "Meesa suggest yousa press ~INPUT_CONTEXT~ to accessa da clothin' store.",
		press_no_freemode = "Disa ped model isa unable to accessa da clothin' store.",
		press_no_freemode_barber = "Disa ped model isa unable to accessa da barber shop.",
		press_to_access_barber = "Meesa suggest yousa press ~INPUT_CONTEXT~ to accessa da barber shop.",
		press_to_change_outfit = "Meesa suggest yousa press ~INPUT_CONTEXT~ to change yousa outfit.",

		clothingstore = "Clothin' Store",
		barbershop = "Barber Shop",

		changing_area = "Changin' Area",

		switch_outfit = "Change into disa outfit.",
		replace_outfit = "Kudala lammese tabeta anima.",
		new_outfit = "Ungengqele ngaphandle kwe-Outfit",
		no_saved_outfits = "Akukhona Outfit okungenziwe.",

		save_outfit_title = "Ungengqele ngomkhiqizo wakho owodwa",
		save_outfit_label = "Igama lomkhiqizo:",
		save_outfit_button = "Ungengqele",

		replace_outfit_title = "Kudala lammese tabeta-mkhiqizo",
		replace_outfit_description = "Ubufuna bokuba ngesona mkhiqizo kangaka okulandelayo ${outfit}?",
		replace_outfit_button = "Tabeta",

		delete_outfit_title = "Susa-Mkhiqizo",
		delete_outfit_description = "Ubufuna bokuba ngesona mkhiqizo kangaka okulandelayo ${outfit}?",
		delete_outfit_button = "Mesa",

		packing_outfit_title = "<packing_outfit_title>",
		packing_outfit_description = "<packing_outfit_description>",

		cancel_button = "<cancel_button>",

		remove_button = "Delete ${label}",
		menu_description = "Press \"V\" to toggle the camera. You can drag the sliders with your mouse or use the arrow keys. You can press \"A\" and \"D\" to adjust your position.",

		failed_toggle_clothing_menu = "Jar Jar binks failed to toggle clothing menu.",
		clothing_menu_success = "Mesa opened clothing menu for ${consoleName}.",
		barber_menu_success = "Meesa sorry, me cannot toggle barber shop menu.",
		failed_toggle_barber_menu = "Meesa open barber shop menu for ${consoleName}.",
		invalid_server_id = "Invalid server id. Mesa no understand.",

		clothing_menu_missing_permissions = "Player tried to open clothing menu for another player. Mesa cannot allow.",

		hats_and_helmets = "Heads and hats",
		glasses = "Goggles",
		earrings = "Earrings",
		left_wrist = "Left wrist",
		right_wrist = "Right wrist",

		pants = "Pantaloons",
		shoes = "Footwear",
		undershirt = "Under-shirt",
		necklaces_and_ties = "Necklacs und Ties",
		decals = "Dekalen",
		shirts = "Shirts",
		arms = "Armz",
		masks = "Masks",
		armor = "Armour",
		parachute_and_bag = "Parachut und Bag",

		hair = "Hair",

		blemishes = "Blemisches",
		facial_hair = "Facial Hair",
		eyebrows = "Eyebrows",
		ageing = "Agein'",
		makeup = "Makeup",
		blush = "Blush",
		complexion = "Complexion",
		sun_damage = "Sun Damage",
		lipstick = "Lipstick",
		moles_and_freckles = "Moles und Freckles",
		chest_hair = "Chest Hair",
		body_blemishes = "Body Blemisches",
		add_body_blemish = "Add Body Blemish"
	},

	command_socket = {
		connected = "Meesa connected to command socket.",
		disconnected = "Meesa disconnected from command socket.",
		failed_reconnect = "Failed to reconnect to command socket. Oh no!"
	},

	crafting = {
		menu_title = "Crafting. Yousa wantsa make something?",
		close_menu = "Close Messa-menu",

		smelt_glass = "Mesa smelt broken bottles.",
		press_to_smelt_glass = "[${SeatEjectKey}] Pressa to smelt broken bottles",
		smelting_glass = "Mesa smelting ${usedItems}",
		smelted_glass = "Meesa smelted ${usedItems} into glass. Pretty neat, huh?",
		failed_smelt_glass = "Failed to smelt glass. Oopsie-daisy!",

		craft_steel = "Crafta steel",
		press_to_craft_steel = "[${SeatEjectKey}] Pressa to craft steel",
		crafting_steel = "Muy'sa molding ${usedItems}",
		crafted_steel = "Muy'sa crafted ${usedItems} into steel.",
		failed_craft_steel = "Muy'ta failed to craft steel.",

		scrapping_item = "Muy'sa scrapping ${usedItems}",
		scrapped_item = "Muy'sa extracted scrap metal from ${usedItems}.",

		scrap_knife = "Scrap Koochyamoochas",
		press_to_scrap_knife = "[${SeatEjectKey}] Press to scrap Koochyamoochas",
		failed_scrap_knife = "Muy'ta failed to scrap koochyamoocha.",

		scrap_item = "Scrap Items",
		press_to_scrap_item = "[${SeatEjectKey}] Press to scrap Items",
		failed_scrap_item = "Muy'ta failed to scrap item.",

		cut_item = "Da Cut Potatoes",
		press_to_cut_item = "[${SeatEjectKey}] Da Cut Potatoes",
		cutting_item = "Da Cutting 3 Potatoes",
		cut_item_done = "Da potatoes cutted into fries.",
		failed_cut_item = "Dissen cuttin' potatoes issen no good.",

		fry_item = "Da Fry Fries",
		press_to_fry_item = "[${SeatEjectKey}] Da Fry Fries",
		frying_item = "Frying Fries",
		fried_item = "Da fries issen fried to perfection.",
		failed_fry_item = "Issen no good, diss fryin' did not work.",

		grill_item = "Grillen Raw Patties",
		press_to_grill_item = "[${SeatEjectKey}] To Grillen Raw Patties",
		grilling_item = "Grillingen Patties",
		grilled_item = "Grawa Jadicha",
		failed_grill_item = "Mesa fail to grill grawa jadicha",

		hamburger_recipe = "Hamburger",
		cheeseburger_recipe = "Cheeseburger",

		assemble_burger = "Assemble Burger",
		press_to_assemble_burger = "[${SeatEjectKey}] Assemble Burger",
		assembling_burger = "Mesa assembling hamburger",
		assembled_burger = "Hamburger is assembled",
		failed_assemble_burger = "Mesa fail to assemble a hamburger",

		assembling_cheeseburger = "Mesa assembling cheeseburger",
		assembled_cheeseburger = "Cheeseburger is assembled",
		failed_assemble_cheeseburger = "Meesa sorry, but mesa failed to assemble a cheeseburger.",

		mix_avocado_smoothie = "Mix Avocado Smoothie",
		press_to_mix_avocado_smoothie = "[${SeatEjectKey}] Press to mix Avocado Smoothie",
		mixing_avocado_smoothie = "Meesa mixing Avocado Smoothie...",
		mixed_avocado_smoothie = "Meesa mixed Avocado Smoothie!",
		failed_mix_avocado_smoothie = "Meesa sorry, but mesa failed to mix Avocado Smoothie.",

		fill_nitro_tank = "Fill Nitro Tank",
		press_to_fill_nitro_tank = "[${SeatEjectKey}] Press to fill Nitro Tank",
		filling_nitro_tank = "Meesa filling Nitro Tank...",
		filled_nitro_tank = "Mesa filled Nitro Tank!",
		failed_fill_nitro_tank = "Mesa poodoo ta fill nitro tank.",

		craft_sheet_metal = "Craft Gunga Sheet Metal",
		press_to_craft_sheet_metal = "[${SeatEjectKey}] Craft Gunga Sheet Metal",
		crafting_sheet_metal = "Crafting Gunga Sheet Metal",
		crafted_sheet_metal = "Gunga sheet metal crafted.",
		failed_craft_sheet_metal = "Mesa poodoo ta craft Gunga sheet metal.",

		craft_empty_tank = "Assemble Empty Tank",
		press_to_craft_empty_tank = "[${SeatEjectKey}] Assemble Empty Tank",
		crafting_empty_tank = "Assembling Empty Tank",
		crafted_empty_tank = "Empty tank assembled.",
		failed_craft_empty_tank = "Mesa no able to assemble empty tank.",

		craft_valve = "Assemble da Valve ",
		press_to_craft_valve = "[${SeatEjectKey}] Assemble da Valve",
		crafting_valve = "Assembling da Valve ",
		crafted_valve = "Mesa assembled da valve.",
		failed_craft_valve = "Mesa failed to assemble da valve.",

		craft_nitro_tank = "Assemble nitro tanka",
		press_to_craft_nitro_tank = "[${SeatEjectKey}] Assemble nitro tanka",
		crafting_nitro_tank = "Assembling nitro tanka",
		crafted_nitro_tank = "Mesa assembled nitro tanka.",
		failed_craft_nitro_tank = "Mesa failed to assemble nitro tanka.",

		salvage_meth_table = "Salvage Meth Table",
		press_to_salvage_meth_table = "[${SeatEjectKey}] Sayalaga Meth Table",
		salvaging_meth_table = "Sayalaga Meth Table",
		salvaged_meth_table = "Sayalad meth table.",
		failed_salvage_meth_table = "Failed to sayalaga meth table.",

		refill_vape = "Refill Vape",
		press_to_refill_vape = "[${SeatEjectKey}] Sayalaga Vape",
		refilling_vape = "Sayalaga Vape",
		refilled_vape = "Sayalad vape.",
		failed_refill_vape = "Failed to sayalaga vape.",

		deconstructing_item = "Deyacanaga ${usedItems}",
		deconstructed_item = "Mesa deconstructed ${usedItems}.",

		deconstruct_pistol = "Mesa deconstruct Pistol",
		press_to_deconstruct_pistol = "[${SeatEjectKey}] Mesa deconstruct Pistol",
		failed_deconstruct_pistol = "Failed to mesa deconstruct pistol.",

		deconstruct_smg = "Mesa deconstruct SMG",
		press_to_deconstruct_smg = "[${SeatEjectKey}] Mesa deconstruct SMG",
		failed_deconstruct_smg = "Failed to mesa deconstruct SMG.",

		deconstruct_shotgun = "Mesa deconstruct Shotgun",
		press_to_deconstruct_shotgun = "[${SeatEjectKey}] Mesa deconstruct Shotgun",
		failed_deconstruct_shotgun = "Failed to mesa deconstruct Shotgun.",

		deconstruct_rifle = "Gudong Rifle",
		press_to_deconstruct_rifle = "[${SeatEjectKey}] Gudong Rifle",
		failed_deconstruct_rifle = "Dusko to gudong Rifle.",

		extract_copper = "Extract Copper",
		press_extract_copper = "[${SeatEjectKey}] Extract Copper",
		extracting_copper = "Extracting Copper",
		extracted_copper = "Extracted Copper.",
		failed_extract_copper = "Dusko to extract copper.",

		processing_item = "Processing ${usedItems}",
		processed_item = "Processed ${usedItems}.",

		process_copper = "Process Copper Nuggets",
		press_process_copper = "[${SeatEjectKey}] Kitaa'ninka Copper Nuggets",
		failed_process_copper = "Imaadda Xoolaha copper dhibtid.",

		process_rubber = "Kitaa'ninka Rubber",
		press_process_rubber = "[${SeatEjectKey}] Kitaa'ninka Rubber",
		failed_process_rubber = "imaadda Xoolaha Ruber Dhibtid.",

		process_aluminium = "Kitaa'ninka Aluminium",
		press_process_aluminium = "[${SeatEjectKey}] Kitaa'ninka Aluminium",
		failed_process_aluminium = "Imaadda Xoolaha Aluminium Dhibtid.",

		process_steel = "Kitaa'ninka Steel",
		press_process_steel = "[${SeatEjectKey}] Kitaa'ninka Steel",
		failed_process_steel = "Yousa failed to process steel.",

		craft_lens = "Craften Lens",
		press_craft_lens = "[${SeatEjectKey}] Craften Lens",
		crafting_lens = "Craftenin Lens",
		crafted_lens = "Craften lens.",
		failed_craft_lens = "Failed to craften lens.",

		craft_sight = "Craften Sight",
		press_craft_sight = "[${SeatEjectKey}] Craften Sight",
		crafting_sight = "Craftenin Sight",
		crafted_sight = "Craften sight.",
		failed_craft_sight = "Failed to craften sight.",

		craft_pistol_sight = "Craften Pistol Sight",
		press_craft_pistol_sight = "[${SeatEjectKey}] Craften Pistol Sight",
		crafting_pistol_sight = "Krafting Pistol Sight",
		crafted_pistol_sight = "Pistool Sight kraftet.",
		failed_craft_pistol_sight = "Kraften vom Pistool Sight fehlgeschlagen.",

		craft_scope = "Kraft Scope",
		press_craft_scope = "[${SeatEjectKey}] Kraft Scope",
		crafting_scope = "Krafting Scope",
		crafted_scope = "Scope gekraftet.",
		failed_craft_scope = "Kraften vom Scope fehlgeschlagen.",

		craft_grip = "Kraft Grip",
		press_craft_grip = "[${SeatEjectKey}] Kraft Grip",
		crafting_grip = "Krafting Grip",
		crafted_grip = "Grip gekraftet.",
		failed_craft_grip = "Kraften vom Grip fehlgeschlagen.",

		craft_extended_clip = "Craft Gungan Clip ex.\n",
		press_craft_extended_clip = "[${SeatEjectKey}] Craft Gungan Clip ex.\n",
		crafting_extended_clip = "Crafting Gungan Clip ex.\n",
		crafted_extended_clip = "Crafted Gungan clip ex.\n",
		failed_craft_extended_clip = "Failed to craft Gungan clip ex.\n",

		craft_extended_smg_clip = "Craft Gungan SMG Clip ex.\n",
		press_craft_extended_smg_clip = "[${SeatEjectKey}] Craft Gungan SMG Clip ex.\n",
		crafting_extended_smg_clip = "Crafting Gungan SMG Clip ex.\n",
		crafted_extended_smg_clip = "Crafted Gungan SMG clip ex.\n",
		failed_craft_extended_smg_clip = "Meesa failed to craft extended smg clip.",

		craft_extended_shotgun_clip = "Craft Extended-y Shotgun-y Clip-y",
		press_craft_extended_shotgun_clip = "[${SeatEjectKey}] Press-y to craft extended-y shotgun-y clip-y",
		crafting_extended_shotgun_clip = "Crafting Extended-y Shotgun-y Clip-y",
		crafted_extended_shotgun_clip = "Meesa crafted extended-y shotgun-y clip-y.",
		failed_craft_extended_shotgun_clip = "Meesa failed to craft extended-y shotgun-y clip-y.",

		craft_extended_pistol_clip = "Craft Extended-y Pistol-y Clip-y",
		press_craft_extended_pistol_clip = "[${SeatEjectKey}] Press-y to craft extended-y pistol-y clip-y",
		crafting_extended_pistol_clip = "Mesa helpin' yousa make an extended pistol clip.",
		crafted_extended_pistol_clip = "Yousa made an extended pistol clip.",
		failed_craft_extended_pistol_clip = "Mesa sorry, mesa failed to make extended pistol clip.",

		craft_drum = "Makin' Drum Mag.",
		press_craft_drum = "[${SeatEjectKey}] Press dis to start makin' a Drum Mag.",
		crafting_drum = "Crafting Drum Mag...",
		crafted_drum = "You made a Drum Mag.",
		failed_craft_drum = "Oopsie, mesa failed to make Drum Mag.",

		craft_suppressor = "Improvise suppressor.",
		press_craft_suppressor = "[${SeatEjectKey}] Press here to Improvise suppressor.",
		crafting_suppressor = "Crafting Gungan S'lanko",
		crafted_suppressor = "Gungan S'lanko crafted.",
		failed_craft_suppressor = "Failed to craft Gungan S'lanko.",

		craft_flashlight = "Craft Nudoba Lamp",
		press_craft_flashlight = "[${SeatEjectKey}] Craft Nudoba Lamp",
		crafting_flashlight = "Crafting Nudoba Lamp",
		crafted_flashlight = "Nudoba Lamp crafted.",
		failed_craft_flashlight = "Failed to craft Nudoba Lamp.",

		mix_paint = "Mix Naboo Art",
		press_mix_paint = "[${SeatEjectKey}] Mix Naboo Art",
		mixing_paint = "Mixing Naboo Art",
		mixed_paint = "Naboo Art mixed.",
		failed_mix_paint = "Mesa failed to mixa paint.",

		modify_knuckle = "Modifya Brassa Knuckles",
		press_modify_knuckle = "[${SeatEjectKey}] Modifya Brassa Knuckles",
		modifying_knuckle = "Modifyinga Brassa Knuckles",
		modified_knuckle = "Modifieda Brassa Knuckles.",
		failed_modify_knuckle = "Failed to modifya Brassa Knuckles.",

		craft_jammer = "Crafta Jammer",
		press_craft_jammer = "[${SeatEjectKey}] Crafta Jammer",
		crafting_jammer = "Craftinga Jammer",
		crafted_jammer = "Crafteda jammer.",
		failed_craft_jammer = "Failed to crafta jammer.",

		craft_advanced_repair_kit = "Crafta Advanced Repair Kit",
		press_craft_advanced_repair_kit = "[${SeatEjectKey}] Crafta Advanced Repair Kit",
		crafting_advanced_repair_kit = "Craftar Advanced Repair Kit",
		crafted_advanced_repair_kit = "Craftade advanced repair kit.",
		failed_craft_advanced_repair_kit = "Failed to crafta advanced repair kit.",

		pulverize_aluminium = "Pulverize Aluminium",
		press_pulverize_aluminium = "[${SeatEjectKey}] Pova Aluminium nubian.",
		pulverizing_aluminium = "Povaring Aluminium.",
		pulverized_aluminium = "Pova Aluminium.",
		failed_pulverize_aluminium = "Meesa sorry, pulverize aluminium failed.",

		pulverize_steel = "Pulverize Steel",
		press_pulverize_steel = "[${SeatEjectKey}] Pulverize Steel",
		pulverizing_steel = "Mesa pulverizing steel...",
		pulverized_steel = "Mesa pulverized da steel!",
		failed_pulverize_steel = "Oopsie, Meesa failed to pulverize da steel.",

		mix_thermite = "Mix Thermite",
		press_mix_thermite = "[${SeatEjectKey}] Mix Thermite",
		mixing_thermite = "Mesa mixing da thermite...",
		mixed_thermite = "Da thermite issa mixed!",
		failed_mix_thermite = "Meesa sorry, Meesa failed to mix da thermite.",

		deconstruct_phone = "Mesa Deconstruct Phone",
		press_deconstruct_phone = "[${SeatEjectKey}] Mesa Deconstruct Phone",
		failed_deconstruct_phone = "Mesa failed to deconstruct phone.",

		deconstruct_radio = "Mesa Deconstruct Radio",
		press_deconstruct_radio = "[${SeatEjectKey}] Mesa Deconstruct Radio",
		failed_deconstruct_radio = "Mesa failed to deconstruct radio.",

		deconstruct_raspberry = "Mesa Deconstruct Raspberry",
		press_deconstruct_raspberry = "[${SeatEjectKey}] Mesa Deconstruct Raspberry",
		failed_deconstruct_raspberry = "Mesa failed to deconstruct raspberry.",

		deconstruct_chip = "Deconstructa Chip",
		press_deconstruct_chip = "[${SeatEjectKey}] Deconstructa Chip",
		failed_deconstruct_chip = "Poo pat deconstructa chip",

		craft_device_scanner = "Crafta Device Scanner",
		press_craft_device_scanner = "[${SeatEjectKey}] Crafta Device Scanner",
		crafting_device_scanner = "Craftin' Device Scanner",
		crafted_device_scanner = "Yousa crafted device scanner.",
		failed_craft_device_scanner = "Poo pat crafta device scanner.",

		craft_decryption_key = "Crafta Decryption Key",
		press_craft_decryption_key = "[${SeatEjectKey}] Crafta Decryption Key",
		crafting_decryption_key = "Kraftin De-Crypshun Kee",
		crafted_decryption_key = "De-crypshun kee crafted.",
		failed_craft_decryption_key = "Failed to kraft de-crypshun kee.",

		craft_tire_wall = "Kraft Tire Wall",
		press_craft_tire_wall = "[${SeatEjectKey}] Kraft Tire Wall",
		crafting_tire_wall = "Kraftin Tire Wall",
		crafted_tire_wall = "Tire wall crafted.",
		failed_craft_tire_wall = "Failed to kraft tire wall.",

		fix_tire_wall = "Fix Tire Wall",
		press_fix_tire_wall = "[${SeatEjectKey}] Fix Tire Wall",
		fixing_tire_wall = "Fixin Tire Wall",
		fixed_tire_wall = "Yusa fixdah d tire wallya.",
		failed_fix_tire_wall = "Oops! Yusa clownclumsy. Yusa no able to fix tire wallya.",

		saw_shotgun = "Saw off shotgun",
		press_saw_shotgun = "[${SeatEjectKey}] Yusa saw off shotgun.",
		sawing_shotgun = "Yusa sawing off shotgun.",
		sawed_shotgun = "Sawed off shotgun.",
		failed_saw_shotgun = "Sorry… Yusa no able to saw off shotgun.",

		bake_brownies = "Bake brownies.",
		press_bake_brownies = "[${SeatEjectKey}] Yusa bake brownies.",
		baking_brownies = "Yusa baking brownies.",
		baked_brownies = "Baked brownies.",
		failed_bake_brownies = "Yusa no able to bake brownies. Yusa sorry.",

		mix_brushstroke_paint = "Yos mix Brushstroke paint",
		press_mix_brushstroke_paint = "[${SeatEjectKey}] Yos mix Brushstroke paint",
		mixing_brushstroke_paint = "Yos mixing Brushstroke paint",
		mixed_brushstroke_paint = "Yos mixed brushstroke paint.",
		failed_mix_brushstroke_paint = "Oh no, mesa failed to mix brushstroke paint!",

		mix_skull_paint = "Yos mix Skull paint",
		press_mix_skull_paint = "[${SeatEjectKey}] Yos mix Skull paint",
		mixing_skull_paint = "Yos mixing Skull paint",
		mixed_skull_paint = "Yos mixed skull paint.",
		failed_mix_skull_paint = "Oh no, mesa failed to mix skull paint!",

		mix_leopard_paint = "Yusa mix leopard paint",
		press_mix_leopard_paint = "[${SeatEjectKey}] Press-ta yusa key to mix leopard paint",
		mixing_leopard_paint = "Yusa mix nuffin' for leopard paint",
		mixed_leopard_paint = "Yusa done mix leopard paint.",
		failed_mix_leopard_paint = "Yusa fail to mix leopard paint.",

		mix_zebra_paint = "Yusa mix zebra paint",
		press_mix_zebra_paint = "[${SeatEjectKey}] Press-ta yusa key to mix zebra paint",
		mixing_zebra_paint = "Yusa mix nuffin' for zebra paint",
		mixed_zebra_paint = "Yusa done mix zebra paint.",
		failed_mix_zebra_paint = "Yusa fail to mix zebra paint.",

		mix_geometric_paint = "Yusa mix geometric paint",
		press_mix_geometric_paint = "[${SeatEjectKey}] Sa Mix Guba Guba Peka",
		mixing_geometric_paint = "Sa Mix Guba Guba Peka",
		mixed_geometric_paint = "Sa Mixed Guba Guba Peka.",
		failed_mix_geometric_paint = "Sa Failed To Mix Guba Guba Peka.",

		mix_patriotic_paint = "Sa Mix Bong Gawa Peka",
		press_mix_patriotic_paint = "[${SeatEjectKey}] Sa Mix Bong Gawa Peka",
		mixing_patriotic_paint = "Sa Mix Bong Gawa Peka",
		mixed_patriotic_paint = "Sa Mixed Bong Gawa Peka.",
		failed_mix_patriotic_paint = "Sa Failed To Mix Bong Gawa Peka.",

		craft_radio_decrypter = "Craft Gungan decrypter",
		press_craft_radio_decrypter = "[${SeatEjectKey}] Craft Gungan decrypter",
		crafting_radio_decrypter = "Crafting Gungan decrypter",
		crafted_radio_decrypter = "Crafted Gungan decrypter.",
		failed_craft_radio_decrypter = "Failed to craft Gungan decrypter.",

		craft_grenade_shell = "Craft Gungan grenade shell",
		press_craft_grenade_shell = "[${SeatEjectKey}] Craft Gungan grenade shell",
		crafting_grenade_shell = "Crafting Gungan grenade shell",
		crafted_grenade_shell = "Crafted Gungan grenade shell.",
		failed_craft_grenade_shell = "Mesah falled to craft grenade shell.",

		craft_grenade_pin = "Craft Bombad Pin",
		press_craft_grenade_pin = "[${SeatEjectKey}] Craft Bombad Pin",
		crafting_grenade_pin = "Crafting Bombad Pin",
		crafted_grenade_pin = "Mesah crafted grenade pin.",
		failed_craft_grenade_pin = "Mesah failed to craft grenade pin.",

		craft_gas_grenade = "Craft Gas Grenade",
		press_craft_gas_grenade = "[${SeatEjectKey}] Craft Gas Grenade",
		crafting_gas_grenade = "Crafting Gas Grenade",
		crafted_gas_grenade = "Mesah crafted gas grenade.",
		failed_craft_gas_grenade = "Meesa couldn't make gas grenade.",

		break_apart_ring = "Break ring into little pieces",
		press_break_apart_ring = "[${SeatEjectKey}] Crush the ring!",
		breaking_ring = "Breaking apart ring...",
		broke_ring = "Ring all smashed up.",
		failed_break_ring = "Me messed up, could not break ring.",

		no_required_items = "You no have all the necessary items.",

		debug_multi = "-Multiple outputs-",

		used_crafting_station_title = "Crafting Station",
		used_crafting_station_details = "${consoleName} used the crafting station to make ${amount}x ${itemName}."
	},

	crashes = {
		crash_failed = "Failed to trigger crash for ${consoleName}.",
		crash_success = "Mesa triggered a crash for ${consoleName}.",
		server_id_invalid = "Invalid server id."
	},

	creation = {
		turn_right = "Go right",
		turn_left = "Mooey left"
	},

	creation_menu = {
		character_creation = "Character Ootay",
		new_character = "NEW CHAMBERWEENIE",

		select_a_model = "Select a Modelo.",

		heritage = "Heritagee",
		heritage_description = "Selecto to choose your parentsa.",
		mom = "Moma",
		mom_description = "Selecto your Moma.",
		dad = "Dada",
		dad_description = "Selecto your Dada.",
		resemblance = "Resemblanca",
		resemblance_description = "Selecto if your features are influenced more by your Moma or Dada.",
		skin_tone = "Skin Tone-o",
		skin_tone_description = "Selecto if your skin tone is influenced more by your Moma or Dada.",
		divorced = "Dívorced",
		divorced_description = "Senlect íf your parents are dívorced.",

		["in"] = "in",
		out = "out",
		up = "up",
		down = "down",
		brow = "Brow",
		brow_description = "Make changes to your physícal Features.",

		squint = "Squínt",
		wide = "Wíde",
		eyes = "Eyes",
		eyes_description = "Make changes to your physícal Features.",

		narrow = "Narrow",
		wide = "Wíde",
		nose = "Nose",
		nose_description = "Make changes to your physícal Features.",

		short = "Short",
		long = "Long",
		crooked = "Crooked",
		curved = "Curved",
		nose_profile = "Nose Profíle",
		nose_profile_description = "Mesa help yousa make changes to yoursa physical features.",

		broken_left = "Brokena Left",
		broken_right = "Brokena Right",
		tip_up = "Tip Up",
		tip_down = "Tip Down",
		nose_tip = "Nose Tip",
		nose_tip_description = "Mesa help yousa make changes to yoursa physical features.",

		cheekbones = "Cheekbones",
		cheekbones_description = "Mesa help yousa make changes to yoursa physical features.",

		gaunt = "Gaunt",
		puffed = "Puffed",
		cheeks = "Cheeks",
		cheeks_description = "Mesa help yousa make changes to yoursa physical features.",

		thin = "Thin",
		fat = "Fat",
		lips = "Lips",
		lips_description = "Mesa help yousa make changes to yousa physical features.",

		round = "Roun",
		square = "Squaree",
		jaw = "Jaw",
		jaw_description = "Mesa help yousa make changes to yousa physical features.",

		chin_profile = "Chin Profile",
		chin_profile_description = "Mesa help yousa make changes to yousa physical features.",

		pointed = "Pointee",
		rounded = "Round-ed",
		bum = "Bum",
		chin_shape = "Chin Shape",
		chin_shape_description = "Mesa help yousa make changes to yousa physical features.",

		thick = "Thicka",
		neck_thickness = "Neck Thick-a-ness",
		neck_thickness_description = "Mesa help yousa make changes to yousa physical features.",

		features = "Meesa Features",
		appearance = "Meesa Appearance",
		save_and_continue = "Saveesa & Continuesa",
		components = "Meesa Components",
		props = "Meesa Props",
		ambient_females = "Ambient Femalesa",
		ambient_male = "Ambient Malesa",
		animals = "Animalsa",
		cutscene = "Cutsceneda",
		gang_female = "Gang Femalesa",
		gang_male = "Gang Malesa",
		multiplayer = "Multiplayera",
		scenario_female = "Scenario Femalesa",
		scenario_male = "Scenario Malesa",
		story = "Storya",
		story_scenario_female = "Story Scenario Femalesa",
		story_scenario_male = "Story Scenario Malesa",
		models = "Moolas",

		features_description = "Mesa suggest yousa select to alter your facial Features.",

		unknown_hair = "Unknown Hair (${hairId})",
		unknown_eyebrow = "Unknown Eyebrow (${eyebrowId})",
		unknown_facial_hair = "Unknown Facial Hair (${facialHairId})",
		unknown_skin_blemish = "Unknown Skin Blemish (${skinBlemishId})",
		unknown_skin_aging = "Unknown Skin Aging (${skinAgingId})",
		unknown_skin_complexion = "Unknown Skin Complexion (${skinComplexionId})",
		unknown_moles_and_freckles = "Unknown Moles & Freckles (${molesAndFrecklesId})",
		unknown_skin_damage = "Meesa no understand Skin Damage (${skinDamageId})",
		unknown_eye_makeup = "Meesa no understand Eye Makeup (${eyeMakeupId})",
		unknown_blusher = "Meesa no understand Blusher (${blusherId})",
		unknown_lipstick = "Meesa no understand Lipstick (${lipstickId})",
		unknown_chest_hair = "Meesa no understand Chest Hair (${chestHairId})",

		color = "Color",
		opacity = "Opacity",

		hair = "Hair",
		hair_description = "Mesa change how yousa look.",

		eyebrows = "Eyebrows",
		eyebrows_description = "Mesa change how yousa look.",

		facial_hair = "Facial Hair",
		facial_hair_description = "Mesa help yousa make changes to yoursa appearance.",

		skin_blemishes = "Skin Blemishes",
		skin_blemishes_description = "Mesa help yousa make changes to yoursa appearance.",

		skin_aging = "Skin Aging",
		skin_aging_description = "Mesa help yousa make changes to yoursa appearance.",

		skin_complexion = "Skin Complexion",
		skin_complexion_description = "Mesa help yousa make changes to yoursa appearance.",

		moles_and_freckles = "Moles & Freckles",
		moles_and_freckles_description = "Mesa help yousa make changes to yoursa appearance.",

		skin_damage = "Skin Damage",
		skin_damage_description = "Mesa help yousa make changes to yoursa appearance.",

		eye_color = "Skeel Color",
		eye_color_description = "Mesa maken changes to your Appearance.",

		eye_makeup = "Skeel Makeup",
		eye_makeup_description = "Mesa maken changes to your Appearance.",

		blusher = "Blusher",
		blusher_description = "Mesa maken changes to your Appearance.",

		lipstick = "Lipstick",
		lipstick_description = "Mesa maken changes to your Appearance.",

		chesthair = "Chesthair",
		chesthair_description = "Mesa maken changes to your Appearance.",

		ready_to_start_playing = "Yousa ready to start playing?",
		no = "No",
		go_back = "Goober back.",
		yes = "Meesa",
		you_will_not_be_able_to_return = "Yousa will not bein able to comeback.",

		freemode = "Free-mode",
		freemode_description = "Select if yousa would liken to use a freemode model. Freemode models are highly customizable.",

		sex = "Gotta Goosa Bust a Move",
		sex_description = "Select the gender of yoursen.",
		male = "Moi moi",
		female = "Bom bom",

		props_description = "Select yoursen preferred props.",

		hat = "Hat",
		glass = "Glass",
		ear = "Ear",
		watch = "Watch",
		bracelet = "Bracelet",

		appearance_description = "Select to changen yoursen appearance.",
		components_description = "Mesa select yoosa preferred components.",

		none = "Nonesa",

		texture = "Texture ${textureId}",
		drawable = "Drawable ${drawableId}",

		clean_shaven = "Yousa Shaved",

		face = "Face",
		mask = "Mask",
		hair = "Hair",
		torso = "Torso",
		leg = "Leg",
		parachute_and_bag = "Parachute / bag",
		shoes = "Shoes",
		accessory = "Accessory",
		undershirt = "Undershirt",
		kevlar = "Kevlar",
		badge = "Badge",
		torso_two = "Torso 2"
	},

	crosshair = {
		copied_config = "Copied config to clipboard.",
		imported_config = "Imported config.",
		disabled_crosshair = "Mesa disabled custom crosshair.",

		invalid_url_title = "Mesa invalid image URL",
		invalid_url_description = "Mesa image URL yousa entered is invalid. Issa must be a direct link to da image, not a link to a website that contains da image. Issa has to start with one of da followin' urls:",
		cancel_button = "Okeeday",

		center = "Mesa Center",
		main = "Mesa Main",
		outer = "Mesa Outer",
		kill = "Kill Flash",

		enabled = "Enabled",
		size = "Size",
		image = "Image",
		length = "Length",
		offset = "Offset",
		secondary_offset = "Secondary Offset",
		rotation = "Rotion",
		color = "Colol",
		duration = "Duratosa (ms)"
	},

	clip_saver = {
		start_recording = "Startin Recordin",
		clip_save = "Save Clippen",
		clip_discard = "Discard Clippen"
	},

	compass = {
		north = "Nort",
		north_east = "Nort-Eost",
		east = "Eost",
		south_east = "Sout-Eost",
		south = "Sout",
		south_West = "SW",
		west = "West",
		north_west = "Nort-West"
	},

	courthouse = {
		press_to_use_gavel = "Press ~INPUT_CONTEXT~ to be usin da Gavel."
	},

	daily_activities = {
		press_to_daily_activities = "[${InteractionKey}] Dailys Activitosa",
		daily_activities = "Dailys Activitosa",
		resets_in = "Resets in ${resetsIn}...",
		complete_the_other_tasks_to_unlock = "Compleeten da othosa tasks to be unlockin...",
		remain = "${remain} watakka",
		remain_money = "$${remain} watakka remain",
		claimed = "Claimed",
		claim = "Tinka",
		streak_reward = "When your streak is 7 or higher, yousa will gotsa anotha free daily spin at da Lucky Wheel.",

		reset_daily_activities_no_permissions = "Player attempted to reset their daily activities without proper permissions.",
		reset_daily_activities = "Reset Daily Activities.",

		parachute_from_location = "Parachute from ${location}.",
		gamble_at_blackjack = "Play ${amount} hands at the Blackjack table.",
		bring_in_items = "Bring over da followin' items.",
		kills_in_arena = "Get ${amount} kills in da Arena.",
		headshot_kills_in_arena = "Get ${amount} headshot kills in da Arena.",
		punch_locals = "Punch ${amount} locals.",
		move_from_place_to_place = "Move from ${from} to ${to} in ${time} seconds.",
		put_bets_in_jackpot = "Put bets worth $${amount} in da Jackpot.",
		win_bets_in_jackpot = "Win items worth $${amount} in da Jackpot.",
		chop_vehicles = "Chop ${amount} vehicles.",
		purchase_ammo = "Purchase ${amount} ammo.",
		collect_items_from_diving = "Yousa collect ${amount}x ${itemLabel} from Diving.",
		take_zombie_pills = "Take ${amount} Zombie Pills.",
		dig_up_a_treasure = "Dig up a treasure using a Treasure Map.",
		refine_gems = "Refine ${amount} gems.",
		visit_location = "Visit ${location}.",
		visit_the_location = "Visit the ${location}."
	},

	dashcam = {
		video = "Vimeo",
		time = "Time",
		date = "Date",

		unit_id = "Unit ID",
		unit_name = "Unit Name",
		unit_speed = "Unit Speed",

		state_seal_one = "This vehicle is licensed to the",
		state_seal_two = "State of San Andreas",
		state_seal_three = "Mesa bombad warning yousa! Any unauthorized use issen subject to heavy penalty under 13 S.A. Pen. Code 502(a).",

		kmh = "Gooberfish per honking",
		mph = "Meesa per honking",

		set_unit_id_to = "Yousa unit ID hasa now been set to ${unitId}.",
		reset_unit_id = "Yousa unit ID hasa now been reset.",
		failed_to_set_unit_id = "Meesa failin to set yousa unit ID.",
		unit_id_already_set_to = "Yousa unit ID issen already set to ${unitId}.",
		unit_id_already_reset = "Yousa unit ID hasa already been reset.",
		invalid_unit_id = "Unit-ID hasa to be an integer between 1 and 999.",

		unit_id_vehicles_updated = "Mesa emergency vehicles hasa been updated to reflect your new unit id `${unitId}`."
	},

	debug = {
		ped = "Gungan",
		vehicle = "Vehinucle",
		object = "Objecta",
		network_id = "Network Id",
		owned_by_us = "Owned By Us",
		owned_by = "Owned By",
		one_state_set = "1 State Set",
		many_states_set = "${count} States Set",
		no_states = "No States",
		entity_health = "Health ${health}/${maxHealth}",
		owned_by_server = "Server",
		first_owned_short = "First Owner: ${firstOwned}",
		network_id_side = "Network ID: ${networkId}",
		no_target = "Meesa no find target",
		invalid_radius_parameter = "Mesa think `radius` parameter is not working.",
		inject_code_not_developer = "Yousa tryin to inject code, but you not a developer.",
		inject_code_invalid_player = "No players with server id `${serverId}`.",
		inject_code_success_for_everyone = "Yousa injected code sucesso for everyone.",
		inject_code_success_for_player = "Yousa injected code sucesso for ${consoleName}.",
		inject_code_success = "Yousa injected code sucesso.",
		inject_code_target_user_not_found = "Target user gone missing.",
		inject_code_invalid_text = "Meesa sorry, dissa invalid text.",
		inject_code_invalid_input = "Meesa sorry, dissa invalid input.",
		inject_code_no_permissions = "Meesa sorry, yousa no have permissions.",
		inject_code_user_not_found = "Meesa sorry, dissa user not found.",
		inject_code_invalid_url = "Meesa sorry, dissa invalid URL.",
		inject_code_invalid_radius = "Meesa sorry, dissa invalid radius.",
		game_pools = "Game Pools: ",
		ped_config_flags = "Ped Config Flags: ",
		ped_is = "Ped Is: ",
		vehicle_is = "Vehicle Is: ",
		native_calls = "Native Calls: ${trueNativeCallsLastFrame} (${totalNativeCalls})",
		player_speed = "Player Speed: ${playerSpeed}",
		player_ped = "Yousa playin' as: ${playerPedId}",
		heading = "Headin': ${heading}",
		coords = "Coords: ${coords}",
		rotation = "Rotation: ${rotation}",
		velocity = "Velocity: ${velocity}",
		ground_material = "Ground Material: ${material}",
		g_force = "G-Force: ${force}",
		debug_print_f8 = "Debuggin' information has been printed in yousa F8 console.",
		no_vehicle_bone = "No \"${boneName}\" bone",

		distance = "Distance: ${distance}m",
		distance_first = "Stored first position.",

		get_search_invalid = "Invalid search (at least 2 characters).",

		disabled_ped_bone_debug = "Mesa disable ped bone debug.",

		mph = "jupiko",
		vehicle_speed = "Speed: ${speed} jupiko",
		vehicle_average = "Pindunyisa: ${speed} jupiko",
		vehicle_top_speed = "Top-Speed: ${speed} jupiko",
		vehicle_acceleration = "0 to 60: ${time} sekondi",
		vehicle_acceleration_120 = "0 to 120: ${time} sekondi",
		vehicle_acceleration_150 = "0 to 150: ${time} sekondi",
		vehicle_acceleration_force = "Launch Force: ${force}",

		invalid_network_id = "Mooey mooey, invalid network ID.",
		delete_entity_success = "Mui mui, successfully deleted entity with network id ${networkId}.",
		delete_entity_failed = "Mesa no can delete entity.",
		delete_entity_no_permissions = "Da playah tryin to delete entity without propah permission.",

		move_entity_success = "Successfully moved entity with network id ${networkId}.",
		move_entity_failed = "Mesa no can move entity.",
		move_entity_no_permissions = "Da playah tryin to move entity without propah permission.",

		fake_lag_updated = "Da fake lag counter has been updated to `${counter}`.",
		fake_lag_already_set_to = "Da fake lag counter issa already set to `${counter}`.",
		fake_lag_enabled = "Mesa enable da fake lag wit counter `${counter}`.",
		fake_lag_invalid_counter_value = "Disa value `${counter}` isa invalid counter for da fake lag.",
		fake_lag_disabled = "Mesa disable da fake lag.",
		fake_lag_not_enabled = "Da fake lag no enable.",

		weapon_name_missing = "Missing weapon name parameter.",
		weapon_name_invalid = "`${weaponName}` isa not a valid weapon name.",
		model_name_missing = "Missing model name parameter.",
		model_name_invalid = "`${modelName}` isa not a valid model name.",
		model_view_enabled = "Mowdel view enebleda.",
		model_view_disabled = "Mowdel view disebleda.",
		invalid_component = "Invalida component '${componentName}'.",

		animation_currently_playing = "Mesa currently playin an animation.",
		invalid_or_missing_animation_dict = "Invalid or missin animation dictionary '${animationDict}'.",
		missing_animation_name = "Invalida or missin animation name '${animationName}'.",
		invalid_animation_flags = "Invalida animation flags.",
		animation_played = "Playin '${animationDict}' '${animationName}' (flags: ${flags}).",
		no_flags = "N/A",

		invalid_coordinates = "Meesa sorry, but dem coordinates issa invalid.",
		added_coordinates_draw = "Meesa added dem coordinates `x: ${x}, y: ${y}, z: ${z}` to da draw list with ID `${drawId}`.",
		no_coordinate_draws_to_destroy = "Meesa no find any coordinate draws to destroy.",
		destroyed_coordinate_draws = "Meesa destroyed `${drawingCoordinatesAmount}` coordinate draws.",

		debug_damage_enabled = "Damage debugging enabled.",
		debug_damage_disabled = "Meesa no longer debugging damage.",

		enabled_network_debug = "Entity network debuggin enabled.",
		disabled_network_debug = "Mesa entity network debugging disabled.",
		failed_network_debug = "Jar Jar Binks failed to enable entity network debugging.",

		network_owner_subscription_no_permissions = "Yousa attempted to subscribe to entity network owners without proper permission.",

		missing_ipl = "Missing ipl bombad parameter.",
		enabled_ipl = "Yousa successfully enabled ipl `${ipl}`.",
		disabled_ipl = "Yousa successfully disabled ipl `${ipl}`.",

		enabled_ipl_globally = "Yousa successfully enabled ipl `${ipl}` globally.",
		failed_enabled_ipl_globally = "Jar Jar Binks failed to enable ipl globally. Mesa sorry.",
		disabled_ipl_globally = "Meesa successfully disabled ipl `${ipl}` globally.",
		failed_disabled_ipl_globally = "Meesa sorry. Meesa unable to disable ipl globally.",

		enabled_ipls_list = "Enabled IPLs: ${list}.",
		no_ipls_enabled = "No IPLs enabled.",

		missing_code = "Meesa missing code parameter.",
		run_code_success = "Meesa successfully executed code snippet.",
		run_code_error = "Code snippet threw an error.",

		searching_world = "Mesa searching World:\n${modelNames}",
		copied_clipboard = "Coordinates copied to clipboard.",

		saved_vehicle_model_lists_to_file = "The vehicle model lists have been saved to a file on the server.",

		network_debug_logs_title = "Toggled Network Debug",
		network_debug_logs_details_on = "${consoleName} toggled deir network debug on.",
		network_debug_logs_details_off = "${consoleName} toggled deir network debug off."
	},

	debug_menu = {
		menu_title = "Debug Mesa",

		timecycles = "Taymcykowlz",
		weather = "Wejja",
		reset = "Resét",
		refresh_interior = "Rifrésh Interyor"
	},

	dna_evidence = {
		taking_sample = "Takin' DNA Sampol",
		already_taking_sample = "Ya bombadly takin' a dna sampol of a playa.",
		sample_no_player = "No playa nearby dat ya can take a DNA sampol of.",
		sample_no_bags = "Yousa don't have any evidenc' bags.",
		dna_evidence_bag = "DNA Evidenc'",

		evidence_failed = "Failed to takin' DNA evidenc'.",

		evidence_text = "Evidenc' Type: DNA Evidenc'\nDNA collected from ${fullName} #${characterId}\n\nAdditional Information:\n • Timestamp of pickup: ${time}"
	},

	doors = {
		locked = "Moo-rado",
		unlocked = "Goo-rado",
		locked_press_to_unlock = "[${InteractionKey}] Moo-rado",
		unlocked_press_to_lock = "[${InteractionKey}] Goo-rado",
		locking = "Moo-ock",
		unlocking = "Goo-ock",
		jewelry_store_closed = "Da Jewelry Store issa closed. Pleasa come back later.",
		bank_closed = "Da Bank issa closed. Pleasa come back later.",
		store_closed = "Da Store issa closed. Pleasa come back later.",
		failed_to_sync_doors = "Moo-gun-doo dooka sync doors. Ummosta likely sa-thinka got messed up. Pleasa try again.",
		saved_doors_to_file = "Saveda da `${amount}` doors to ada file on da server.",
		no_nearby_doors = "No nearby doors ta save.",
		lockpicking_door = "Lockpickin' Door",

		debug_doors_on = "Door debuggin' acca on.",
		debug_doors_off = "Door debuggin' acca off.",
		doors_no_job = "N/A"
	},

	elevators = {
		use_elevator = "[${InteractionKey}] Use Elevator",
		elevator_title = "Elevata",
		close_menu = "Close Menu",
		already_on_floor = "Yousa already on disa floor.",

		no_elevator_nearby = "Nosa elevator nearby.",
		elevator_enabled = "Successfully enabled elevata #${elevatorId}.",
		elevator_disabled = "Meesa successfully disabled da elevator #${elevatorId}.",
		elevator_toggle_failed = "Failed to toggle da elevator.",
		elevator_enabled_all = "Meesa successfully enabled all elevators.",

		out_of_service = "OutOfService",
		out_of_service_help = "This here elevator issen currently outta service.",

		current = "Current",
		up = "Up",
		down = "Down",

		floor_tunnel_entrance = "Tunnel Entrance",
		floor_underground_tunnel = "Underground Tunnel",

		floor_lounge = "Lounge",

		floor_garage = "Garage",
		floor_lobby = "Lobby",
		floor_roof = "Roof",
		floor_helipad = "Wuz Hangar",

		floor_shop = "Shop",

		floor_casino = "Kasinu",
		floor_security = "Zekyuriti",
		floor_loading_bay = "Bay foda Lodin",
		floor_vault = "Vault Room",

		floor_second_floor = "Sekund Floa",
		floor_icu = "ICU",
		floor_ground = "Groun Floa",
		floor_surgery = "Surgery",

		floor_entrance = "Entran",
		floor_server_room = "Serva Room",

		floor_50 = "Floa 50",
		floor_49 = "Floa 49",
		floor_47 = "Floa 47",
		floor_basement = "Basement",

		floor_exclusive_dealership = "Exclusive Dealership",
		floor_mayors_office = "Offis of the Boss Lagi",
		floor_mechanic_shop = "Gungan Mechanic Shop",

		floor_fourth_floor = "Gungan 4th Floor",
		floor_third_floor = "Gungan 3rd Floor",

		floor_obelisk = "Gungan Obelisk",
		floor_hangout = "Gungan Hangout Spot",
		floor_penthouse = "Gungan Penthouse",
		floor_theatre_office = "Gungan Theatre Office",
		floor_psychiatrists_office = "Gungan Psychiatrist's Office",
		floor_nightclub_garage = "Gungan Nightclub Garage",
		floor_submarine = "Gungan Submarine",

		floor_lower_penthouse = "Gungan Lower Penthouse",
		floor_middle_penthouse = "Gungan Middle Penthouse",
		floor_upper_penthouse = "Gungan Upper Penthouse",

		floor_showroom = "Gungan Showroom",
		floor_office = "Oss'ice",
		floor_doj_office = "DOJ Oss'ice",

		floor_penthouse_top = "Penthouse (Top Oss'ice)",
		floor_penthouse_entrance = "Penthouse (Entrance)",

		floor_containment = "Containment Oom",

		doj_office = "DOJ Oss'ice"
	},

	emails = {
		title = "OP E-Mail",
		email_domain = "san-andreee.gov",

		app_title = "E-Mail",

		error_loading_emails = "Mesa-sa, something went wrong while trying to load your emails.",

		new_email_notification = "~o~New E-Mail",

		email_label = "E-Mail",
		password_label = "Password",
		set_password = "Set Password",
		inbox = "Inbox",
		outbox = "Sent",
		new_email = "New E-Mail",

		loading = "Loading...",
		failed_load_email = "Meesa no could load email content.",

		from_label = "From",
		to_label = "To",

		send_email = "Send",

		no_emails = "Meesa don't have any emails.",
		to_email = "to ${email}",

		error_no_subject = "Missing email subject. Meesa no can send email without subject.",
		error_invalid_target = "Invalid target email. Meesa not understand this email.",
		error_subject_too_long = "Email subject too big. Meesa think you should make it smaller.",
		error_body_too_long = "Email body too big. Meesa think you should make it smaller.",
		error_body_missing = "Missing email body. Meesa no can send empty email.",
		error_failed_send = "Failed to send mail. Meesa think there is something wrong with the email system.",
		error_password_empty = "Mesa no can empty password.",
		error_password_update_failed = "Ouch time no update mesa's password."
	},

	emote_items = {
		give_item = "[${InteractionKey}] Mesa give ${itemName}",
		received_item = "${firstName} give you a ${itemName}.",
		give_item_success = "Yousa successfully give ${itemName} to player.",
		give_item_failed = "Ouch mesa cannot give ${itemName} to player."
	},

	exclusive_dealership = {
		marker_label = "${label} | $${price}",
		marker_label_purchase = "[${SeatEjectKey}] Yousa purchase ${label} for $${price}",

		confirm_purchase = "Mooey mooey, mesa ganna buy dis.",
		confirm_purchase_label = "${label} | $${price}",

		deny_purchase = "Meesa okeyday, mesa no want it",
		accept_purchase = "Yousa wanth buy it?",
		accept_purchase_info = "Yousa shure yousawanth purchase dis vehicle? Dis cannot be undone.",

		purchased_vehicle = "Mesa purchased a ${label} for $${price}.",
		insufficient_funds = "Nosa havvem enough monies.",
		area_not_clear = "Spawn area issen't clear nuff",
		invalid_package = "Dis no da pledge wesa lookin for",
		something_went_wrong = "Tompa went wrong. Mesa sorry",

		failed_vehicle_spawn = "Failed to spawn vehicle. Vehicle still in garagen.",

		next_rotation_in = "Mesa gonna rotate soon: ${time}",

		exclusive_dealership_blip = "Deluxen kakeelya'kaknee",
		exclusive_buyback_blip = "Prestige Wheels Exchange",

		buyback_vehicle_help = "Press ~INPUT_CONTEXT~ to accessa prestigio wheels exchange.",
		buyback_title = "Prestige Wheels of Mesa Exchange",
		sell_closest_vehicle = "Meesa Nabee Sellin' yer ${label} for $${price} (${percent}% mula)?",
		deny_sale = "Noo-noo, Meesa keepin' it",
		accept_sale = "Yessa, Meesa shore",
		accept_sale_description = "Yousa sure yousa wanna sell de vehicle for $${price}? Disen action no can undone.",
		are_you_sure_sell = "Yousa shore yousa wanna sell it?",
		no_vehicle_to_sell = "Nuttin sellable vehicle nearby.",
		vehicle_not_owned = "Yousa no own dis vehicle.",
		sale_success = "Successfully sold yer `${label}` for $${price}, okeeday!.",

		sale_log_title = "EDM Buyback",
		sale_log_description = "${consoleName} solda their `${label}` for $${price}.",

		log_title = "EDM Purchase",
		log_description = "Nabbedda the `${label}` for $${price}."
	},

	failures = {
		engine_failure_chance = "Mesa gonna set engine faila chance to `${chance}`.",
		failure_chance_invalid = "Engine faila chance gotta be between 1 and 1500.",
		engine_failure_reset = "Mesa resetting engine faila chance to default."
	},

	fake_ids = {
		press_to_purchase = "Press ~INPUT_CONTEXT~ to nab Fake-ID.",

		store_title = "Fake-ID Nagopa Store",

		female_id = "Femel Fek-ID",
		male_id = "Mael Fek-ID",
		close_menu = "Klosi Munu",

		logs_purchased_title = "Purchased Fek-ID",
		logs_purchased_details = "${consoleName} purchased a ${type} (${firstName} ${lastName} #${characterId}).",

		something_went_wrong = "Mesa-sa thinks-sa someting wenta wronga.",
		failed_not_on_duty = "Yousa musta be on duty to purchase a Fek-ID.",
		failed_not_enough_money = "Yousa do notsa have enoughsa money to purchase a Fek-ID.",
		purchase_success = "Successfully purchased a Fek-ID for $3,000."
	},

	fingerprint = {
		taking_fingerprint = "Takinga Fingerprint",
		already_fingerprinting = "Yusa already takin' a fingerprint of a playa.",
		sample_no_player = "No playa nearby dat yusa kin fingerprint.",
		sample_no_bags = "Yusa no gots any evidence bags.",
		fingerprint_evidence = "Fingerprinto",

		evidence_failed = "Muyuto tayka fingerprint.",

		evidence_text = "Evidence Typo: Fingerprinto\nFingerprinto of ${fullName} #${characterId}\n\nAdditional Information:\n • Timestamp of pickup: ${time}"
	},

	fireworks = {
		fire_firework = "[${InteractionKey}] Fire Firework"
	},

	flag_swap = {
		toggle_flag_swap_no_permissions = "Me no have permissions to swap flags.",

		toggled_flag_swap_on = "Swapped flags, meesa did it.",
		toggled_flag_swap_off = "Yousa turned off flag swap.",

		showing_flags = "Mesa showin' da flags.",
		not_showing_flags = "Mesa no longa showin' da flags.",

		flag_swap_leaderboard = "Flag Swap Leaderboard",
		ongoing = "While it happens",
		not_ongoing = "No happening",
		position_and_name = "${position}. ${name}",
		flag_count = "${flags} flags",
		players_with_most_flags_will_show_here = "Da playas wit da mos' flags, dey be shown here."
	},

	forcefields = {
		invalid_radius = "Invalido radius (has to be between 1 and 200).",
		failed_create = "Meesa sorry, mesa failed to create forcefield.",
		forcefield_marker = "ID: ${id}",
		invalid_forcefield_id = "Invalid forcefield ID. Mesa no understand.",
		failed_destroy = "Meesa sorry, mesa failed to destroy forcefield.",

		create_forcefield_no_permissions = "Player no have the required permissions to create a forcefield. Mesa no can do that.",
		destroy_forcefield_no_permissions = "Player no have the necessary permissions to destroy a forcefield. Mesa no can do that."
	},

	fortnite = {
		add_building_no_permissions = "Player no have the required permissions to add a Fortnite building. Mesa no can do that.",
		wipe_buildings_no_permissions = "Mesa thinks dis player tryin' ta wipe out Fortnite buildings but they no have da permissions ta do dat.",

		no_buildings_in_radius = "Muyang no see any buildings within ${radius} distance.",
		no_buildings = "Mesa see no buildings.",
		wiped_buildings_in_radius = "Mesa wiped out ${removedBuildings} buildings within ${radius} distance.",
		wiped_buildings = "Mesa wiped out ${removedBuildings} buildings."
	},

	freecam = {
		enabled_freecam = "Mesa enabled freecam.",
		disabled_freecam = "Mesa disabled freecam.",
		freecam_failed = "Mesa failed ta enable freecam. Yousa have noclip or somethin' like dat enabled?",

		freecam_logs_title = "Mee-sa toggled freecam",
		freecam_on_logs_details = "${consoleName} toggled their freecam on.",
		freecam_off_logs_details = "${consoleName} toggled their freecam off.",

		track_player_logs_title = "Tracking",
		track_player_logs_details = "${consoleName} set their tracking target to ${targetName} using the orbitcam.",

		freecam_no_permission = "Mee-sa attempted to toggle their freecam without required permissions.",
		track_player_no_permission = "Mee-sa attempted to track a player using the freecam without required permissions.",

		freecam_inactive = "Yu forgoten activateden freecam.",
		added_point = "Meesa addeden da camera point at index ${index} (Transition: ${transition}ms).",
		disable_freecam = "Disable freecam to replay points, Okeday?",
		not_enough_points = "Yousa needen at least 2 points to play.",
		already_replaying = "Yousa already replaying da camera points.",
		cleared_points = "Meesa cleareden all camera points.",
		replaced_point = "Meesa replaceden da camera point at index ${index} (Transition: ${transition}ms).",
		moved_to_point = "Meesa movedened freecam to camera point ${index} (Transition: ${transition}ms).",
		invalid_point_index = "Mesa thinks yousa put in da wrong camera point index."
	},

	frisk = {
		frisk_no_player = "No players nearby dat yousa kin frisk.",
		already_frisking = "Yousa already frisking a player.",
		frisk_failed = "Failed to frisk da player.",
		frisking = "Frisking Player...",

		frisk_category_0 = "Seems to not have any weapons.",
		frisk_category_1 = "Seems to possibly have a weapon.",
		frisk_category_2 = "Seems to have a weapon.",
		frisk_category_3 = "Seems to definitely have a big weapon.",
		frisk_category_4 = "Definitely has a very big weapon."
	},

	fruits = {
		pick_fruit = "[${InteractionKey}] Pikk ${fruit}",
		picking_fruit = "Pikking ${fruit}",

		shake_tree = "Prits ~INPUT_CONTEXT~ tuu shake da tree.",
		shaking_tree = "Shakin Tree",

		tree_klonk = "Somthin fell frum da tree und hit yoosa head."
	},

	gas_masks = {
		gas_grenade = "Gas Grenade",
		in_gas_circle = "In a gas circle!",
		not_in_gas_circle = "Not in a gas circle.",
		gas_time_left = "Yoosa have ${gasTime} seconds left uf da gas mask.",
		hold_to_take_gas_mask_off = "Hoold ~INPUT_VEH_HEADLIGHT~ tu tayk off da Gas Mask.",
		hold_to_take_gas_mask_off_holding = "Keap hooldin tu tayk off da Gas Mask."
	},

	gps = {
		altitude = "Altitude",
		latitude = "Laptoka",
		longitude = "Longitude",
		speed = "Speed",

		distance = "Distance",
		heading = "Heading",

		reset_target = "Reset bombad GPS target.",
		set_gps_target = "Set bombad GPS target to ${x}, ${y}.",
		gps_blip = "GPS Target",
		no_gps_item = "Yousa don't have a GPS, mesa suggest yous get one",

		collar_no_target = "Dis collar no have a phone linked to it.",
		collar_timeout = "Yousa just sent a ping, wait a bit before sending another one.",
		collar_sent = "Meesa successfully pinged ${firstName} ${lastName} (${phoneNumber}).",

		mph = "mph",
		kph = "kph",
		ft = "ft",
		m = "m",
		km = "km",
		mi = "mi",
		deg = "deg"
	},

	gravity = {
		gravity_success_on = "Jar Jar successfully turned off gravity for ${consoleName}.",
		gravity_success_off = "Gravity back on for ${consoleName}.",
		gravity_client_failed = "Cannot toggle gravity for ${consoleName}.",
		gravity_failed = "Mesa sorry, something not working with the gravity toggle.",
		invalid_server_id = "Mesa Sorry, invalid server Id.",
		yourself = "mesa"
	},

	gravity_gun = {
		name_override = "Okeyday, Gravity-Gun",

		failed_item_spawn = "Mesa sorry, Item spawn not working."
	},

	grills = {
		campfire = "Oomf-oomf",
		use_campfire = "[${InteractionKey}] Oomf-oomf Campfire",
		grill = "Gung-grill",
		use_grill = "[${InteractionKey}] Gung-grillin'"
	},

	gumballs = {
		use_gumball_machine = "[${InteractionKey}] Insert Coin Bombad",
		using_gumball_machine = "Insertin' Coin Bombad",
		not_enough_money = "Yousa no have 'nuff cash to buy a gumball.",
		something_went_wrong = "Mesa thinkin' sometin' went wrong while tryin' to buy a gumball.",

		flavor = "Gumball (${flavor})"
	},

	gun_running = {
		insert_key = "Insert Key: ${key}",
		wrong_key = "Yousa used da wrong key.",
		decrypting = "Decryptin'",
		guns_disabled = "Mesa thinkin gun runnin is no allowed.",
		high_level_cooldown = "Failed to talk wit da FIB server. Try lata.",
		failed_start_run = "Mesa sorry, mesa no can start gun run.",
		hack_timeout = "Connection to server lost. Try again.",

		drop_blip = "Gun Container. Yousa can pick it up.",

		drill_container = "Press ~INPUT_CONTEXT~ to drill da container.",

		drilling_container = "Mesa drillin' da container now.",
		failed_drill = "Mesa sorry, mesa no can drill open da container.",
		drill_success = "Mesa successfully drilled open da container and found 1x ${item}.",

		started_run_logs_title = "Bongo Boom",
		started_run_logs_details = "${consoleName} started the bongo boom hack.",
		finished_run_logs_title = "Bongo Boom Drop",
		finished_run_logs_details = "${consoleName} drilled the bongo container and received 1x ${item}."
	},

	gun_trader = {
		press_e_to_talk = "Yousa press ~INPUT_CONTEXT~ to talk to Jim.",
		trader_closed = "Jim's shop is currently closed.",

		trader_locked = "Jim needs a few things from you before he is willing to open his shop.",
		unlock_trader = "Provide the item to Jim.",

		purchase = "Purchase",
		out_of_stock = "Meesa sorry, outta stocks!",

		failed_trader_closed = "Meesa apologize, mesa shop closed. You no can purchase weapon.",
		failed_no_stock = "Meesa sorry, no more weapon to sell.",
		failed_no_money = "Meesa sorry, you no have enough cash to buy the weapon.",
		failed_something_went_wrong = "Meesa apologize, something went wrong with the purchase.",
		failed_trader_not_locked = "Meesa sorry, Jim's shop already unlocked.",
		failed_no_item = "Meesa sorry, Jim no need that item.",
		failed_no_enough_items = "Meesa sorry, you no have enough of that item to unlock.",

		bought_gun_logs_title = "Jim's Gun Shop",
		bought_gun_logs_details = "${consoleName} bought 1x ${itemName} for $${price} from Jim.",

		trader_active = "Tradeesh open de",
		trader_inactive = "Tradeesh closed de",

		slogan_1 = "Rememba da first rule of gun fightin is... have a gun!",
		slogan_2 = "Guns only have two enemies: Rust & politicians",
		slogan_3 = "When in doubt...whup it out!",
		slogan_4 = "A gun in da hand is betta than a cop on da phone.",

		copyright = "Copyright © 2009-2016 Jim's Gun Shop NC. All Rights Reserved."
	},

	hacking = {
		local_disk = "Local Disk (C:)",
		network = "Nework",
		external_device = "External Device (J:)",
		hack_connect = "HackConnect.exe",
		brute_force = "BruteForce.exe",

		my_computer = "My Computer",
		power_off = "Power Off",

		password_cracked = "Password Cracked!",
		brute_force_failed = "Brute Force Failed!",

		writing_data = "Writing data to buffer...",
		executing_code = "Executing malicious code...",
		memory_leak_detected = "Meesa detected a memory leak, shutting down..."
	},

	halloween = {
		is_in_school = "Is In School: ${isInSchool}",
		yes = "Yessa",
		no = "Mesa",
		press_to_hide_in_locker = "Press ~INPUT_CONTEXT~ to hide in the locker. (Gungan: Pussta ~INPUT_CONTEXT~ to like-peep inna locca.)",
		locker_is_occupied = "The locker is occupied. (Gungan: Tha locca issen bein' used.)",
		press_to_exit_locker = "Press ~INPUT_CONTEXT~ to exit the locker. (Gungan: Pussta ~INPUT_CONTEXT~ to leave-tha locca.)",
		failed_to_start_escape_room = "Failed to start escape room. (Gungan: Failen tu staht escappen room.)",
		started_escape_room = "Started escape room with ${playerAmount} players. (Gungan: Stahten escappen room wif ${playerAmount} belongas.)",
		start_escape_room_missing_permissions = "Player attempted to start an escape room but they didn't have the required permissions to do so. (Gungan: Playa tryied tu staht escappen room but didn't have deh-needen permissions tu do it.)",
		escape_instructions = "Once completed, the doors will unlock and you will be able to leave the building. (Gungan: Afta yousa finishen deh-task, da doors will unlocken anna yousa cun leave deh builden.)",
		answer_the_phone = "Meesa answer da phone.",

		-- NOTE: temp
		none = "Nonesa"
	},

	health = {
		successfully_revived_player = "Meesa successfully revived ${consoleName}.",
		successfully_revived_player_removed_injuries = "Meesa successfully revived ${consoleName} and removed their injuries.",
		successfully_revived_everyone = "Meesa successfully revived everyone.",
		successfully_revived_everyone_removed_injuries = "Meesa successfully revived and removed everyone's injuries.",
		failed_to_revive = "Failed to execute da `/revive` command correctly.",
		revive_player_not_staff = "Player attempted to revive another player but they didn't have da required permissions to do so.",
		revive_self_not_staff = "Meesa sorry, yousa no have permission to revive mesa, okeeday?",
		revived_self_removed_injuries_title = "Mesa revived selbst and mesa's injuries be gone",
		revived_self_removed_injuries_details = "${consoleName} did a boompa and revived mesa and mesa's injuries go sway sway.",
		revived_self_title = "Mesa revived mesa",
		revived_self_details = "${consoleName} revived mesa.",
		revived_everyone_removed_injuries_title = "Mesa revived everyone and removed injuries",
		revived_everyone_removed_injuries_details = "${consoleName} did a big boompa and revived everyone and removed their injuries.",
		revived_everyone_title = "Reviveden Everyone",
		revived_everyone_details = "${consoleName} reviven-en everyone.",
		revived_player_removed_injuries_title = "Reviven-en Person Ann Removed Injuries",
		revived_player_removed_injuries_details = "${consoleName} reviven-en ${targetConsoleName} ann removeden es injuren.",
		revived_player_title = "Reviveden Person",
		revived_player_details = "${consoleName} reviven-en ${targetConsoleName}.",
		get_recent_deaths_not_staff = "Yusa trien-ta getten-en da recenten deaths, boot yusa haven't done it wit da permissen.",
		get_player_last_death_not_staff = "Mesa tinka da un-useful boten tryin' to get a player's last death, but didn't have correct permissions to do so.",
		recent_deaths = "Recent Bombad Deaths",
		no_recent_deaths = "There's no bombadly recent Deathsa.",
		recent_deaths_list_entry = "${recentDeathId}. ${consoleName} died ${timer} seconds ago.",
		target_user_not_found = "Apologies, boomba! Target user bombadly not found.",
		no_server_id_sent = "No server ID sent. Ouch time for mesa brain!",
		no_permissions = "Mesa bombadly sorry, but yousa don't got the permissions for this one!",
		user_not_found = "Silly mesa! Coz mesa can't find the user you posibly askin' for!",
		player_death = "When player go boom!",
		player_death_recent = "${consoleName} recently go boom just before ${timer} seconds.",
		no_recent_death = "${consoleName} un mooey moolee bee roo noo.",
		death_alcohol_poisoning = "Yousa passed out due to alcohol poisoning.",
		character_has_hardcore_died = "${fullName} has died. Yousa may select another character.",

		death_timer_override_already_set_to = "Da death timer override is already set to `${time}`.",
		set_death_timer_override = "Da death timer override has been set to `${time}`",
		time_parameter_is_invalid = "Da 'time' parameter is invalid.",
		death_timer_override_removed = "Da death timer override has been removed.",
		no_death_timer_override_set = "Meesa sorry, dar is no death timer override set.",

		invalid_distance = "Meesa sorry, dis revive range is invalid (Has to be between 1 and 50).",
		no_players_in_range = "Meesa sorry, dar are no downed players within a ${distance}m radius.",
		successfully_revived_range = "Meesa happy to inform yousa that meesa successfully revived ${amount} player(s) in a ${distance}m radius.",
		failed_revive_range = "Meesa sorry, meesa failed to revive players.",
		range_revive_not_staff = "Player attempted to revive players in a certain range, but didn't have correct permissions to do so. Meesa suggest to give correct permissions."
	},

	hitmarkers = {
		hitmarkers_enabled = "Hitmarkers annie.",
		hitmarkers_disabled = "Hitmarkers no annie."
	},

	hud = {
		mph = "mp/g",
		kmh = "km/g",
		knots = "noks",
		ft = "ft",
		m = "m",
		belt = "GABA",
		limiter = "LIMITA",
		fuel = "fuela",
		nitro = "nitroa",
		battery = "batterya",
		fps = "FPS",
		ping = "POSA",
		autopilot = "autopilot",
		ground_asl = "AGL/ASL (${unit})",
		heading = "HEADING",
		gear = "geara",
		rpm = "rpm",
		degrees = "°C",
		degrees_f = "°F",
		steps_walked_deaths = "${stepsWalked} steps ~t~/~w~ ${deaths} downs",
		altitude_temperature = "${altitude} ${unit} ~t~/~w~ ${temperature}${degrees}",
		scuba_timer = "Gasa lefta: ${timer}",

		muted = "Moot",

		fps_unit = "fpsa",
		ping_unit = "msa",

		smart_warnings = "Warninks: ${warnings}!",
		dehydrated = "dehydrateda",
		starving = "starvinga",
		injured = "injureda",
		seriously_injured = "seriously injureda",
		incapacitated = "incapacitateda",
		stressed = "stresseda",

		and_seperator = "anda",

		toggle_phone_gps_off = "Toggled da phone gps off.",
		toggle_phone_gps_on = "Toggled da phone gps on.",

		advanced_hud_on = "Toggled da advanced hud on.",
		advanced_hud_off = "Toggled da advanced hud off.",

		hud_gauges_on = "Mesa got da hud gauges on.",
		hud_gauges_off = "Mesa got da hud gauges off."
	},

	hunting = {
		hold_to_skin = "[${InteractionKey}] Hold to skin",
		skinning_animal = "Mesa skinning dead animal.",
		meat_too_damaged = "This animal's meat is too damaged.",
		animal_is_being_skinned = "Da animal is bein' skinned."
	},

	identification = {
		los_santos = "Los Santos",
		citizen_card = "Citizen Card",
		first_name = "First Name",
		last_name = "Last Name",
		gender = "Gender",
		gender_male = "Male",
		gender_female = "Female",
		date_of_birth = "Birth Date", -- #I changed "Date of birth" to "Birth Date",
		citizen_id = "Citizen ID",

		citizenship = "Citizenship",
		citizenship_value = "USA",
		surname = "Surname",
		issued_on = "Issued On",
		expires_on = "Expires On",

		month_1 = "Jan",
		month_2 = "Feb",
		month_3 = "Mar",
		month_4 = "Apr",
		month_5 = "May",
		month_6 = "Jun",
		month_7 = "Jul",
		month_8 = "Aug",
		month_9 = "Sep",
		month_10 = "Oct",
		month_11 = "Nov",
		month_12 = "Dec",

		citizen_card_details = "${firstName} ${lastName} | Date Of Birth: ${dateOfBirth} | Gender: ${gender} | Citizen ID: ${characterId}",
		just_showed_citizen_card = "You just showed a Citizen Card. Please wait a bit.",

		hunting_license = "Hunting Licensesa",
		hunting_license_details = "Hunting Licensesa | ${firstName} ${lastName} | Citizen ID: ${characterId}",
		fishing_license = "Fishing Licensesa",
		fishing_license_details = "Fishing Licensesa | ${firstName} ${lastName} | Citizen ID: ${characterId}",
		pilot_license = "Pilot Licensesa",
		pilot_license_details = "Pilot Licensesa | ${firstName} ${lastName} | Citizen ID: ${characterId}",
		weapon_license = "Weapons Licensesa",
		weapon_license_details = "Weapons Licensesa | ${firstName} ${lastName} | Citizen ID: ${characterId}",
		just_showed_license = " Mee-sa think yousa just showed a License. Pleasa wait a bit.",

		just_showed_badge = " Mee-sa think yousa just showed a Badge. Pleasa wait a bit.",
		sasp_badge = "SASP Badge",
		sasp_badge_details = "SASP | ${firstName} ${lastName} | Position: ${positionName}",
		bcso_badge = "BCSO Badge",
		bcso_badge_details = "BCSO | ${firstName} ${lastName} | Position: ${positionName}",
		sahp_badge = "SAHP Badge",
		sahp_badge_details = "SAHP | ${firstName} ${lastName} | Position: ${positionName}",
		iaa_badge = "IAA Badge",
		iaa_badge_details = "IAA | ${firstName} ${lastName} | Position: ${positionName}",
		fib_badge = "FIB Badge",
		fib_badge_details = "FIB | ${firstName} ${lastName} | Position: ${positionName}",
		swat_badge = "SWAT Badge",
		swat_badge_details = "SWAT | ${firstName} ${lastName} | Position: ${positionName}",
		management_badge = "Management Badge",
		management_badge_details = "Management | ${firstName} ${lastName} | Position: ${positionName}",
		ems_badge = "EMS ID",
		ems_badge_details = "EMS | ${firstName} ${lastName} | Position: ${positionName}",
		doctor_badge = "Doctor ID",
		doctor_badge_details = "Doctor | ${firstName} ${lastName} | Position: ${positionName}",
		bcfd_badge = "BCFD Badge",
		bcfd_badge_details = "BCFD | ${firstName} ${lastName} | Position: ${positionName}",
		state_security_badge = "State Security ID",
		state_security_badge_details = "State Security Department | ${firstName} ${lastName}",
		doj_badge = "DOJ ID",
		doj_badge_details = "DOJ | ${firstName} ${lastName} | Position: ${positionName}",
		doc_badge = "DOK Badge",
		doc_badge_details = "DOK | ${firstName} ${lastName} | Position: ${positionName}",

		badge_type_sasp = "SASO Badge",
		badge_type_bcso = "BCSO Badge",
		badge_type_sahp = "SAHP Badge",
		badge_type_iaa = "IAA Badge",
		badge_type_fib = "Federal Investigassen Bureaun",
		badge_type_swat = "Special Weapons An' Tactics",
		badge_type_management = "SASP Management",
		badge_type_ems = "Emergency Medical Services",
		badge_type_doctor = "Medical Residen'cy",
		badge_type_bcfd = "Blaine County Fire Department",
		badge_type_state_security = "State Security Department",
		badge_type_doj = "Departmen' Of Justice",
		badge_type_doc = "Department Ofa Corrections",

		badge_type_short_sasp = "SASP",
		badge_type_short_bcso = "BCSO",
		badge_type_short_sahp = "SAHP",
		badge_type_short_iaa = "IAA",
		badge_type_short_fib = "FIB",
		badge_type_short_swat = "SWAT",
		badge_type_short_management = "Management",
		badge_type_short_ems = "EMS",
		badge_type_short_doctor = "Doctor",
		badge_type_short_bcfd = "BCFD",
		badge_type_short_state_security = "SSD",
		badge_type_short_doc = "DOK"
	},

	import_export = {
		press_to_access = "Press ~INPUT_CONTEXT~ meesa to access da Import/Export menu.",

		pound = "lb",
		pounds = "lbs",
		minutes = "minutes",

		total = "Total",
		header = "Cayo Perico - Import / Export",
		header_small = "Meega can ship from and to Cayo Perico quick and easy.",

		loading = "Loading...",

		order_arrived = "D'arrived",
		claim = "Claim",

		claim_cayo = "Claim on Cayo",
		claim_lsia = "Claim at LSIA",

		big_goods = "Big Goods",
		go_postal = "Go Postal",
		caipira = "Caipira Airlines",

		no_items = "No items to ship.",

		confirm_dialog = "Yousa sure yousa want to ship ${total}lbs for $${price}? This shipment cannot be cancelled.",
		confirm = "Yes",

		no_active_order = "Yousa do notsa have an activesa shipment.",
		order_not_completed = "Yousa shipment has notsa arrived yet.",

		order_claimed = "Yousa have claimed your shipment.",

		not_enough_items = "Yousa do not have enough items to ship.",
		not_enough_money = "Yousa do not have enough money to create the shipment.",
		already_has_order = "Yousa already have an active shipment.",
		something_went_wrong = "Something went mesa wrong.",

		order_success = "Yousa shipment is on its way! It will arrive in ${minutes} minutes.",

		created_shipment_title = "Shipment Created",
		created_shipment_details = "${consoleName} has created a shipment for ${weight}lbs for $${price} with ${company}.",

		claimed_shipment_title = "Shipment Claimed",
		claimed_shipment_details = "${consoleName} nosa krava un shippment por ${weight}lbs con ${company}.",

		blip_label = "Import / Export"
	},

	injuries = {
		inspect_no_player = "Yusa no player cerca que yusa puede inspecta.",
		already_inspecting = "Ya yusa está inspectando un player.",
		inspect_failed = "Fallen to inspecta player.",
		inspecting = "Inspecting Player",
		no_injuries = "No shundi o bleeding.",
		patient_bleeding = "El paciento está bleeding.",
		injury = "${label} Shundi"
	},

	instances = {
		instance_created_added = "Create un instance con ID `${instanceId}` (Added players: ${serverIds}).",
		instance_created = "Mesa created an instance with dis ID `${instanceId}`.",
		instance_creation_failed = "Oops! Mesa could not create an instance.",
		instance_destroyed = "Mesa destroyed da instance with dis ID `${instanceId}`.",
		instance_destruction_failed = "Oops! Mesa could not destroy da instance.",
		instance_id_parameter_invalid = "Mesa sorry, but dis instance ID parameter is invalid.",
		added_player_to_instance = "${consoleName} is now in dis instance with ID `${instanceId}.`",
		failed_to_add_player_to_instance = "Oops! Mesa could not add player to da instance.",
		server_id_parameter_invalid = "Mesa sorry, but dis server ID parameter is invalid.",
		removed_player_from_instance = "Messageda ${consoleName} from da instance with ID `${instanceId}`.",
		failed_to_remove_player_from_instance = "Mesa failed to remove player from da instance.",
		instance_players = "Da players on da instance with ID `${instanceId}`: `${players}`.",
		failed_to_get_instance_players = "Failed to get da players from da instance.",
		no_players = "No mesa see players.",

		instance_hud = "This is da ID of only one instance: ${instanceId}",

		create_instance_not_developer = "Mesa sorry, but yousa can't create an instance because yousa not a developer.",
		destroy_instance_not_developer = "Mesa helpin' translate. Da playa tryin to destroy an instance, but dey not a developer.",
		add_player_to_instance_not_developer = "Mesa helpin' translate. Da playa tryin to add a playa to an instance, but dey not a developer.",
		remove_player_from_instance_not_developer = "Mesa helpin' translate. Da playa tryin to remove a playa from an instance, but dey not a developer.",
		get_players_from_instance_not_developer = "Mesa helpin' translate. Da playa tryin to get da playas from an instance, but dey not a developer."
	},

	interiors = {
		in_interior = "Mesa in Interioren: ${interiorId} (${portals} portelen).",
		in_room_id = "Mesa in Ruummen: ${roomId} (${roomName}).",
		total_interiors = "Totalen Interioren: ${totalInteriors} (${totalInteriorPortals} totalen portelen).",
		total_unloaded_interiors = "Totalen Unloaded Interioren: ${totalUnloadedInteriors} (${totalUnloadedInteriorPortals} totalen portelen).",
		portal_text = "id=${portalId} f=${flags}"
	},

	inventory = {
		access_trunk = "Mova hesta tu kuntrolan da trunco.",

		used = "Used",
		added = "Added",

		pounds = "lbsa",

		store = "Storo",
		gas_station = "Gas-en Estashion",
		gas_station_backdoor = "Gasun Steshun Baccdoor",
		cleaning_station = "Cleana Steshun",
		grocery_store = "Grocery Stoa",
		penthouse_fridge = "Fridge",
		mug_shots = "Mug Shopi",
		prison_store = "Prison Stoa",
		fruit_vendor = "Fruit Vendor",
		supermarket = "Supamarket",
		island_store = "Island Stoa",
		travel_agency = "Travel Ageeency",
		island_bar = "Island Baaar",
		burger_bar = "Buugaa Bar",
		tool_store = "Tool Stoa",
		gun_store = "Ammu-Nation",
		discount_store = "Discount Stoa",
		gun_store_with_shooting_range = "Ammu-Nation with Shuuting Range",
		green_wonderland = "Shaded Marsh Wonderland",
		irish_pub = "Gungan Pub",
		bar = "Jolly Drinks Hut",
		midnight = "Midnight Mod-Shop",
		cinema = "Screening Den",
		strip_club = "Dancing Tarpals",
		police_store = "Police Equipment Store",
		fib_store = "FIB Equipment Store",
		police_badge_store = "Police Badge Desk",
		doc_badge_store = "DOK Badge Desk",
		flower_store = "Stacey's Flower Emporium",
		gift_store = "Del Perro Gifts",
		ems_store = "EMS Equipment Store",
		drug_store = "Medicine Cabinet",
		ems_badge_store = "EMS Badge Desk",
		doj_badge_store = "DOJ Badge Desk",
		state_security_store = "State Security Store",
		pharmacy = "Gungan Pharmacy",
		chop_shop = "Chop Shopo",
		courthouse = "Courthouseo",
		burger_shot = "Burgershot",
		burger_shot_fridge = "Burgershot Icebox",
		erp_shop = "ERP Shopo",
		pet_shop = "Pet Shopo",
		bean_machine = "Bean Machine",
		hunting_store = "Hunting Storeo",
		fishing_store = "Fishin' Storeo",
		los_santos_golf_club = "Los Santos Golf Clubo",
		arcade_bar = "Arcade Baro",
		japanese_restaurant = "Japanesey Restauranto",
		["945_studios"] = "945 Studios",
		grain_mill = "Grain Millen",
		pd_prefix = "PD",
		ems_prefix = "EMS",
		government_prefix = "Gov",
		wonderland_prefix = "PL",
		br_prefix = "SB",
		inventory_overweight = "Yousa inventory is overweight!",
		vehicle_locked = "Da vehicle issa locked.",
		press_to_access_store = "Press ~INPUT_REPLAY_SHOWHOTKEY~ to access da store.",
		press_to_access_locker = "Press ~INPUT_REPLAY_SHOWHOTKEY~ to access yousa private locker.",
		press_to_access_shared_storage = "Press ~INPUT_REPLAY_SHOWHOTKEY~ to access da shared storage.",

		inspect_weapon = "Da serial number of this ${itemName} appears to be `${itemId}`.",
		inspect_weapon_broken = "Da serial number of this ${itemName} appears to be `${itemId}`, issa also appears to be completely broken.",

		searching_dumpster = "Mesa searchin' dumpster",

		nameable_title = "Item no mui mui mesa puyin' name:",

		locker_restricted = "Dis no fit ina yo locker.",

		press_to_access_shredder = "[${InteractionKey}] Access shredder.",

		invalid_item_id = "Dis item ID no wabba wabba.",
		item_not_found = "Mesa isa no find item witha ID `${itemId}`.",
		item_lookup = "${label} (${itemId}) be in ${inventoryName}:${inventorySlot} now.",

		big_inventory_disabled = "Reset character inventory slots to default.",
		big_inventory_enabled = "Yo character inventory slots big now. Mesa gonna change it back later.",

		press_to_open_public_inventory = "~INPUT_REPLAY_SHOWHOTKEY~ Bongawa ${label}",

		burgershot_counter = "Burgershot Bonga",

		inventory_name_missing = "Muba invantory name lissenin.",

		shredder_title = "Shredda",
		shredder_description = "Warning: Any item moved in here wesa be deleted instantly and cannot be retrieved.",

		npc_vehicle_inventory = "NPC Invantory",

		store_help = "To purchase something, drag a item from da secondary invantory into ya own.",
		store_tax = "Store Tax",
		store_tax_percentage = "${tax}% Bongo",

		missing_job = "Meesa sorry, yousa no haven job mesa required to be ables to use disa inventory.",

		item_is_broken = "Disa item is broken, okeyday?",
		battle_royale_item = "Yousa can only use disa item ina Battle Royale matches.",
		battle_royale_item_disallowed = "Yousa no can use disa item ina Battle Royale matches.",

		broken_food = "Disa food item is spoiled, it no good.",
		broken_drugs = "Disa drug item is expired, it no good.",
		vape_empty = "Disa vape is empty, okeyday?",

		craft_combine = "Craft <i>${output}</i>, mesa help yousa.",
		combining = "Mesa help yousa with da crafting.",

		carve_jack_o_lantern = "Carve <i>Jack-o-lantern</i>, mesa can help.",
		crush_cocoa_beans = "Luundu <i>Okaanu Cocoa</i>",
		mix_hot_chocolate = "Mikino <i>Hot Chocolate</i>",
		crush_raw_ruby = "Luundu <i>Raw Ruby</i>",
		crush_raw_sapphire = "Luundu <i>Raw Sapphire</i>",

		search = "Saga",
		amount = "Aamounnti",
		use = "Diin",
		close = "Klosa",

		done = "KA-CHING!",
		burnt = "BURN-BURN",
		danger = "DAEGO!",
		fuel = "Nass: ${fuel}",

		item_does_stack = "Issa stack.",
		item_does_not_stack = "Issa no stack.",
		individual_weight = "Individual Gewiij",
		stack_amount = "Stack Aamounnti",

		logs_secondary_inventory_title = "Secondary Inventory Openden",
		logs_secondary_inventory_details = "${consoleName} mesa opened a secondary inventory with name `${inventoryName}`.",
		logs_ground_inventory_created_title = "Groun Inventory Created",
		logs_ground_inventory_created_details = "${consoleName} mesa created a ground inventory with name `${inventoryName}`.",

		logs_item_moved_title = "Bombad Item Moved",
		logs_item_moved_details = "${consoleName} mesa moved ${moveAmount}x ${itemLabel} to ${endInventory}:${endSlot} from inventory ${startInventory}:${startSlot}.",

		logs_item_purchased_title = "Item(s) Purchased",
		logs_item_purchased_no_tax_details = "${consoleName} mesa purchase ${purchaseAmount}x `${itemLabel}` for $${purchaseCost}.",
		logs_item_purchased_tax_details = "${consoleName} mesa purchase ${purchaseAmount}x `${itemLabel}` for $${purchaseCost} . Desa additional $${taxCost} due to a ${salesTaxPercentage}% sales tax.",

		radius_invalid = "Mesa radius of `${radius}` is not a valid value.",
		wiped_all_ground_inventories = "Mesa wiped ${inventoriesWiped} ground inventories.",
		wiped_nearby_ground_inventories = "Mesa wiped ${inventoriesWiped} ground inventories within a radius of `${radius}`.",
		failed_to_wipe_ground_inventories = "Meesa sorry sir, meesa could not wipe ground inventories.",
		no_ground_inventories = "There no ground inventories to wipe, sir.",
		no_ground_inventories_within_radius = "There no ground inventories within a radius of `${radius}` mesa could wipe sir.",

		wipe_inventories_not_staff = "Meesa sorry sir, Player attempted to wipe inventories, but didn't have correct permissions to do so.",

		logs_wiped_all_ground_inventories_title = "Wiped All Ground Inventories",
		logs_wiped_all_ground_inventories_details = "${consoleName} wiped all ground inventories. Meesa thinkin' it was for the better.",

		logs_wiped_nearby_ground_inventories_title = "Wiped Nearby Ground Inventories",
		logs_wiped_nearby_ground_inventories_details = "${consoleName} mesa wiped all ground inventories within a radius of `${radius}`.",

		logs_combined_title = "Combined Mesa Items",
		logs_combined_details = "${consoleName} mesa combined ${inputs} to create 1x ${output}.",

		press_use_campfire = "[${InteractionKey}] Use Mesa Campfire",
		use_campfire = "Use Mesa Campfire",

		dumpster_sandwich = "Moldy Gooberfish Sandwich",
		dumpster_beer = "Stale Otoh Gunga Beer",
		dumpster_milk = "Expired Komad Pigeon Milk",
		dumpster_meat = "Katchangirri Meat (Wassaboo Moldy)",
		dumpster_fries = "Mappi Fries",
		dumpster_brownies = "Musha Brownies",
		dumpster_pizza_slice = "Moldy Pizza Slice",
		dumpster_banana = "Kajin Banana (Reddy Mushy)",

		-- items & item descriptions
		body_armor = "Shin Oom Clothes",
		body_armor_description = "Tub oom kahn preparing for battle, or any other brisky day in the sando of LS.",
		first_aid_kit = "First Aid Kit",
		first_aid_kit_description = "Wassaboo doctor kit.",
		bandages = "Bandages",
		bandages_description = "For all your outchies and booboos.",
		oxygen_tank = "Oxyjin Tank",
		oxygen_tank_description = "Ah, lung-expansion packen.",
		ifak = "IFAK",
		ifak_description = "\"PD power packen dat secures da W's whensen applied. Takin' more den 1 will result in feelings of EZ clappin along with handin' out participation trophie's for da crims when downed.\"<br><br>-Joe, 2020",

		citizen_card = "Citizen Carden",
		citizen_card_description = "Acts as identification, ah firearm license and drivin' license.",
		phone = "Phonen",
		phone_description = "never:tm:",
		radio = "Radiosen",
		radio_description = "Mesa help yous metaga..meta..metagamers out dere!",
		smart_watch = "Smart Watch",
		smart_watch_description = "Mesa tellin yous, no needin cash! Use smart watch! It also havin compass, clock, GPS, and step tracker! Just no goin for run at 2am.",
		tablet = "Tablet",
		tablet_description = "Very big phone, it is.",

		gps = "GPS",
		gps_description = "Satisfy all yous gadget needs, it will.",

		gps_collar = "GPS Collar",
		gps_collar_description = "A GPS collar for tracking yous pets, it is.",

		boosting_tablet = "Gungan Googus-Boosta",
		boosting_tablet_description = "Yousa can use da Googus-Boosta to obtain _totally_ legal contracts.",

		hunting_license = "Huntin' License",
		hunting_license_description = "A huntin' license for huntin'.",
		fishing_license = "Fishin' License",
		fishing_license_description = "A fishin' license for fishin'.",
		pilot_license = "Piloten License",
		pilot_license_description = "A piloten license for flyin' planes and stuffs.",
		weapon_license = "Weapons License",
		weapon_license_description = "A weapons license for posessin' and carryin' higher class weaponry.",

		sasp_badge = "SASP Badge",
		sasp_badge_description = "Mooiege gurfan dalopu'le kosa fada tolu San Andreas Police Department.",
		sahp_badge = "SAHP Badge",
		sahp_badge_description = "Mooiege gurfan dalopu'le kosa fada tolu San Andreas Highway Patrol.",
		bcso_badge = "BCSO Badge",
		bcso_badge_description = "Mooiege gurfan dalopu'le kosa fada tolu Blaine County Sheriff's Office.",
		iaa_badge = "IAA Badge",
		iaa_badge_description = "Mooiege gurfan dalopu'le kosa fada tolu Agents of the Internal Affairs Agency.",
		fib_badge = "FIB Badge",
		fib_badge_description = "Mooiege gurfan dalopu'le kosa fada tolu Agents of the Federal Investigation Bureau.",
		swat_badge = "SWAT Klompen",
		swat_badge_description = "Klompen fo ofisez ob da Special Weapons un Tactics siktor.",
		management_badge = "Managemen Klompen",
		management_badge_description = "Klompen fo Agentz ob da SASP Managemen divizen.",
		ems_badge = "EMS Numba",
		ems_badge_description = "Numba fo EMS Paramediks.",
		doctor_badge = "Doktor Numba",
		doctor_badge_description = "Numba fo Doktorz.",
		bcfd_badge = "BCFD",
		bcfd_badge_description = "Klompen fo fyah fightaz ob da Blain Kauntee Fyah Dipartment.",
		state_security_badge = "Steyt Sekyooritee ID",
		state_security_badge_description = "An ID for agents of the Steyt Sekyooritee.",
		doj_badge = "DOJ Baj",
		doj_badge_description = "A baj for employees of the Dipartment of Justice.",
		doc_badge = "DOK Badge",
		doc_badge_description = "A badge for employees of the Department of Corrections.",

		radio_chop_shop = "Chop Shop Reydeeoh",
		radio_chop_shop_description = "Used to receive intel on 'hot' vehicles from the non-existent people operating the chop shop.",

		binoculars = "Bineekulors",
		binoculars_description = "A must-have gadget for every creep lurking around in Los Gantos!",
		photo_camera = "Kamera ya Kuwadumisha Kumbukumbu",
		photo_camera_description = "Nikon na Igna wametengeneza kamera ya kitaalamu yenye teknolojia ya kisasa zaidi sokoni. Kwa kutumia lenzi yake ya kisasa (70-300mm f/4.5-5.6E), unaweza kuchukua picha ya mambo madogo zaidi hata kwenye ardhi.",

		remote_camera = "Kamera ya Mbali",
		remote_camera_description = "Kamera inayoweza kuwekwa mahali popote na kuangaliwa kutoka mbali.",
		remote_monitor = "skrini ya mbali",
		remote_monitor_description = "skrini ndogo inayoweza kuhamishwa kutoka sehemu moja hadi nyingine kwa ajili ya kuangalia taarifa za kamera za mbali.",

		handcuffs = "Mubyahara galf",
		handcuffs_description = "Funga-nibbet Woba-Neba.",
		bolt_cutter = "Bolt Cutter",
		bolt_cutter_description = "Ba teeba shor kinywee.",
		drill = "Drill",
		drill_description = "Mi busta tink yousa gettah-lotta use oot of dis'n. Seem lika fewah screwa wortha loosegoen in dis town.",
		umbrella = "Umbreller",
		umbrella_description = "Channel yousa innah Poppins.",
		watch = "Watch",
		watch_description = "No time for caution.",
		compass = "Compass",
		compass_description = "43.3068 N 0.7668 W",
		map = "Mub",
		map_description = "Shows yousa where yousa goin' and where yousa been. Oooh, or maybe yousa over dar?",
		glass_breaker = "Emergeny Window Breaker",
		glass_breaker_description = "Used to breaks car windows in case of emergeny.",

		picture = "Picture",
		picture_description = "Collectsa all da memories of yousa and youra friends.",

		brochure = "Brochure",
		brochure_description = "A helpful brocure to get yousa started in da city.",

		basic_repair_kit = "Basic Repair Kit",
		basic_repair_kit_description = "It makes stuff work, but just barely.",
		advanced_repair_kit = "GooBall Repar Kit",
		advanced_repair_kit_description = "Used to fixa broken spiritsa.",
		basic_lockpick = "Basicc Door Picka",
		basic_lockpick_description = "Used to picka locksa",
		advanced_lockpick = "Advanced Door Picka",
		advanced_lockpick_description = "Hiden Yo Mui Mui, Hiden Yo Lady Mui Mui",
		cleaning_kit = "Scrubba Kit",
		cleaning_kit_description = "Perfect tada clean yo vehicle, ora da blood stains yousa been lettin' dryin in da back of yo trunk.",

		microphone_bug = "Bugga Microphona",
		microphone_bug_description = "Use ta creepin' on conversations.",
		vehicle_tracker = "Veekle traakov",
		vehicle_tracker_description = "Dis traakov issa exactly what Michael needs, who has for over seven years had suspicion his wife, Amanda, has been cheating on him with the tennis coach he got her.",
		device_scanner = "Deevyss scaanner",
		device_scanner_description = "Used to scaan for nearby creep devices.",
		radio_decryptor = "Reedyo decryptyr",
		radio_decryptor_description = "Decrypts reedyo frequencies if connected to a reedyo.",

		paper_bag = "Peepyrr bagg",
		paper_bag_description = "Perfect for storing groceriess or perhaps someone's head, dead or alive.",
		burger_shot_delivery = "Muyum Muyum Botto Burger",
		burger_shot_delivery_description = "Aa mui mui wondaful collexion of all the sloppy meaty wanders they serve.",
		bean_machine_delivery = "Bean Machine Beam",
		bean_machine_delivery_description = "A Bag full of wondaful treats from a little coofeeshop uptown.",

		ear_defenders = "Ear-jumpas",
		ear_defenders_description = "Used to protect yosa ears from loud noises.",

		clothing_bag = "Bagga Clot'in'",
		clothing_bag_description = "Never worry about fashion eme'gency again! Da clothing bag lets you stowa yosa fav'rite outfit and instantly equip it anywheres yousa go. This bag has all da magic of a fairy godmother, minus da bibbidi-bobbidi-boo.",

		raw_morganite = "Raw Mantinka",
		raw_morganite_description = "Mantinka in its natural form, fresh from the mine.",
		raw_ruby = "Raw Rubinka",
		raw_ruby_description = "Rubinka in its natural form, fresh from the mine.",
		raw_sapphire = "Raw Sapfirinka",
		raw_sapphire_description = "Sapfirinka in its natural form, fresh from the mine.",
		raw_emerald = "Raw Emeralda",
		raw_emerald_description = "Emeralda in its natural form, fresh from the mine.",

		ruby_dust = "Ruby Kussta",
		ruby_dust_description = "Dust from a Rubinka.",
		sapphire_dust = "Sapfir Kussta",
		sapphire_dust_description = "Gooberfisha dusta froma Safaya.",

		morganite = "Morganite",
		morganite_description = "Cut and polished Morgana'ite.",
		ruby = "Ruby",
		ruby_description = "Cut and polished Ruby.",
		sapphire = "Sapphire",
		sapphire_description = "Cut and polished Safaya.",
		emerald = "Emerald",
		emerald_description = "Cut and polished I'nooma.",

		ring = "Ring",
		ring_description = "Jusa blank ring.",

		morganite_ring = "Morganite Ring",
		morganite_ring_description = "A pretty ring with a big Morgana'ite in tha middle. Perfect for weddings, best friends or complete strangers.",
		ruby_ring = "Gowa Ruby",
		ruby_ring_description = "Mesa pretty ringen wif big Gowa Ruby moi moi. Perfecten for Weddingsen, best friendsen or mesa strangersen.",
		sapphire_ring = "Gowa Sapphire",
		sapphire_ring_description = "Mesa pretty ringen wif big Gowa Sapphire moi moi. Perfecten for Weddingsen, best friendsen or mesa strangersen.",
		emerald_ring = "Gowa Emerald",
		emerald_ring_description = "Mesa pretty ringen wif big Gowa Emerald moi moi. Perfecten for Weddingsen, best friendsen or mesa strangersen.",
		diamond_ring = "Gowa Diamond",
		diamond_ring_description = "Mesa su happy to present a pretty sparkly ring! It has a big Diamond in the middle, perfectsa for weddings, best friends or even strangers!",

		gemstone_scanner = "Gemstone Scanner",
		gemstone_scanner_description = "Dis scanner's really useful for scanning gemstones.",

		extended_clip = "Extended Clip",
		extended_clip_description = "Lessa reloading, more shooting!",
		grip = "Grip",
		grip_description = "Dis grip will make your gun more steady! Ooh mooey mooey I love it!",
		sight = "Holographic Sight",
		sight_description = "If you're aimin' poorly, dis sight will fix it up for ya!",
		scope = "Scope",
		scope_description = "Dis scope is meant for shooting at a distance. Get the bonus, you will.",
		suppressor = "Mesa-dunka (Suppressor)",
		suppressor_description = "Mesa-dunka mesa pew pew.",
		flashlight = "Lite (Flashlight)",
		flashlight_description = "See in da dark, ya?",
		extended_pistol_clip = "Giggi (Extended Clip) (Pistol)",
		extended_pistol_clip_description = "Lessa reloadin'.",
		extended_smg_clip = "Giggi (Extended Clip) (SMG)",
		extended_smg_clip_description = "Lessa reloadin'.",
		extended_shotgun_clip = "Giggi (Extended Clip) (Shotgun)",
		extended_shotgun_clip_description = "Lessa reloadin'.",
		drum = "Nuna-trompa (Drum Mag)",
		drum_description = "Nuffin' to reload anymore.",
		pistol_sight = "Pistol Sight Gunga",
		pistol_sight_description = "Yousa need dis to fix bad aim.",

		aluminium_plate = "Aluminium Plate Gunga",
		aluminium_plate_description = "Warning: Dis no protect against bullets... Meesa no want to be crackhead.",
		aluminium_rod = "Aluminium Rod Gunga",
		aluminium_rod_description = "Yousa no want to beat yousa friends too hard with dis.",
		copper_nugget = "Copper Nugget Gunga",
		copper_nugget_description = "Lil Nug of dat sweet sweet golden brown stuff.",
		copper_wire = "Copper Wire Gunga",
		copper_wire_description = "Versatile Wiring dat can be used for almost anything electronic.",
		lens = "Chamfer",
		lens_description = "Usen inna Glasses n' Microscopes, yousa nerf herder.",
		polymer_resin = "Polymer Resin",
		polymer_resin_description = "Notta smokable kind, but still perty cool.",
		screws = "Screws",
		screws_description = "Whattsa yous doin? Screwin?",
		spring = "Spring",
		spring_description = "Nosa knowin why, but people loven to clean thessen?",

		grenade_shell = "Bombad Shell",
		grenade_shell_description = "A shell for a bombad.",
		grenade_pin = "Bombad Pin",
		grenade_pin_description = "A pin for a bombad.",

		paint = "Fio'jek",
		paint_description = "Ganna kwikle useful to adda color foda fences an' houses, but not'n huff it up.",
		paint_brush = "Fio'jek Brush",
		paint_brush_description = "Ganna kwikle useful to fio'jek.",

		skin_patriotic = "Patriot Fella",
		skin_patriotic_description = "Foda all yous red bleda Americans out dare.",
		skin_brushstroke = "Brushstroke Fella",
		skin_brushstroke_description = "Foda all yous art lovers out dare.",
		skin_skull = "Skull Fella",
		skin_skull_description = "Foda all yous edgy kids out dare.",
		skin_leopard = "Leopard Fella",
		skin_leopard_description = "Fer all you animal lovers out there.",
		skin_zebra = "Zebra Skin",
		skin_zebra_description = "Fer all you animal lovers out there.",
		skin_geometric = "Geometric Skin",
		skin_geometric_description = "Fer all you math nerds out there.",

		refillable_bottle = "Refillable Bottle",
		refillable_bottle_description = "Save the turtles on god for real for real.",

		capri_sun = "Capri Sun",
		capri_sun_description = "Delicious treat from your childhood.",

		gumball = "Gumball",
		gumball_description = "A meesa gumball, whosa else do yousa want meesa to say?",

		water = "Oga lake",
		water_description = "Ouch! Dihydrogen monoxide isa deadly substance. It is invisible and odorless. Accidentally inhaling DHMO might lead to death. Continuous exposure to its solid form may cause severe tissue damage. Symptoms of DHMO ingestion include excessive sweating and urination, and possibly a feeling of bloating, nausea, vomiting, and imbalance of body electrolytes.",
		hamburger = "Ummpa patty",
		hamburger_description = "Tastes like Naboo!",
		belgian_fries = "Kashyyyk crisps",
		belgian_fries_description = "To improve the taste, DM @Giv3n#0753 and send \"fritas\" to him.",
		coke = "Coka",
		coke_description = "Pablo?",
		wonder_waffle = "Wunda Woffle",
		wonder_waffle_description = "Vegan, lactose free, dairy free, egg free, gluten free, organic, antibiotic free, soy free, no fructose, nut free, no GMA (General Manager of Agriculture), sugar free, fat free and low carb",
		cheeseburger = "Cheez-Burra",
		cheeseburger_description = "fatta damn, greasy, rubberry, double-deluxe, soggy double, greasy double, damn decent, big, greasy, cold and greasy, usual double, big fat, juiciest, king-sized, deluxe, damn fine, double, greasy, plain old, triple, rubbery, juicy, sinful, mediocre, soggy, fat, great big, free",
		donut = "Donut",
		donut_description = "Mesa no know why theres a hole in da middle bwo",
		green_apple = "Green Apple",
		green_apple_description = "It's like a red gull but theren't no objects in da game that matchen a red gull can.",
		sandwich = "Sandwich",
		sandwich_description = "It's vegan.",
		taco = "Taco",
		taco_description = "El Brayan's specialty.",
		smores = "S'mores",
		smores_description = "yessa",
		tic_tac = "Tic Tac",
		tic_tac_description = "Oxy? No officer, Immen just eating tic tacs!",
		pizza_slice = "Pizza Slice",
		pizza_slice_description = "Yoo-sa want a tiny slice of za.",
		hot_dog = "Hot Dog",
		hot_dog_description = "Gurggle up this glizzy like it'll be your last.",
		nachos = "Nachos",
		nachos_description = "Nachos so good for Encarnación!!",
		vanilla_ice_cream = "Vanilla Ice Cream",
		vanilla_ice_cream_description = "For the basic beings with no flavor in life.",
		chocolate_ice_cream = "Chocolate Ice Cream",
		chocolate_ice_cream_description = "A respectable flavor, not too uncommon.",
		vanilla_milkshake = "Vanilla Milkshake",
		vanilla_milkshake_description = "Mooey mooey, dis here classic is scrumfumptious, goes great with a burger n' flock of gullipuds!",
		chocolate_milkshake = "Choccy Milkshake",
		chocolate_milkshake_description = "A tasty lookin' shake, let's just hopes dat da glow in da forest don' follow ya 'round...",

		dog_food = "Doggy Num Nums",
		dog_food_description = "Num nums made just for da pups! Dey lovin' it!",
		cat_food = "Kitty Chow",
		cat_food_description = "Nom noms fer da kitties, made to keeps 'em healthy n' goin' strong!",
		dog_treats = "Mesa luvsie da dog treats",
		dog_treats_description = "Yummy treats for yousa favorite good boy.",
		cat_treats = "Mesa luvsie da cat treats",
		cat_treats_description = "Delisho treats for yousa local pussy.",

		burger_buns = "Burger Buns",
		burger_buns_description = "Slide some meat between thesaa bad boys.",
		cheese = "Cheese",
		cheese_description = "Imagine bein lactose intolerant, loosa.",
		lettuce = "Lettuce",
		lettuce_description = "That green stuff that theysa don't sell on da streets.",
		patty = "Burger Patty",
		patty_description = "One day a small man will find da secret formula for this meat, until then, keep flipping fry cook.",
		potato = "Potatoo",
		potato_description = "Lykeeng yew tinks, dis es da ownleeeng from Russia dat noot an AK or Male Oodaa Braade.",
		raw_fries = "Raw Fryz",
		raw_fries_description = "Basaaklee juz' a potatoo, butt sumwun didn't put 'nuff efert tu maeek eet sumthin'.",
		raw_patty = "Raw Patt-e",
		raw_patty_description = "90% Reel Meat, da ada 10% got lost een da pakaageeng translaishun.",

		apple = "Aapel",
		apple_description = "Keep Da Eevil Daktors At Bay!",
		banana = "Banana",
		banana_description = "sus",
		cherry = "Cheree",
		cherry_description = "On Top (Idat's yer preference).",
		kiwi = "Soka'kiwi",
		kiwi_description = "Da fruit not da animal. (Not to be confused with A-32)",
		mango = "Soka'mango",
		mango_description = "Mesa beggin' ya not to shoot! Just let da mango...",
		orange = "Soka'orange",
		orange_description = "Yousa glad mesa didn't say banana.",
		peach = "Soka'peach",
		peach_description = "Not a butt.",
		pineapple = "Soka'pineapple",
		pineapple_description = "Pen pineapple apple pen.",
		pomegranate = "Soka'pomegranate",
		pomegranate_description = "Just be glad wesa spelled it right.",
		strawberry = "Soka'strawberry",
		strawberry_description = "Usually found in da fields... forever.",
		watermelon = "Watah-melon",
		watermelon_description = "Issen watah o issen melon? Wesa may never know.",

		banana_peel = "Banana Peel",
		banana_peel_description = "Tissa slippery, be careful when steppen on it.",

		beer = "Beer",
		beer_description = "Angry watah.",
		vodka = "Vodka",
		vodka_description = "Issen Russian style, cука ебать.",
		tequila = "Tequila",
		tequila_description = "Don't worry, nussen was slipped into your drink. ( ͡° ͜ʖ ͡°)",
		whiskey = "Whiskey",
		whiskey_description = "Only for da finest alcoholics.",
		cider = "Cida",
		cider_description = "Da' juice o' grown-up apples.",
		rum = "Rum",
		rum_description = "Time to rewatch Pirates of the Caribbean!",
		absinthe = "Absinthe",
		absinthe_description = "Warning: Contains alcohol. Let children only drink moderate amounts.",
		wine = "Wine",
		wine_description = "Da' juice o' grapes.",

		moonshine = "Moonshine",
		moonshine_description = "Da' best way to get drunk without dee govament knowin'.",
		yeast_packet = "Yeast Packet",
		yeast_packet_description = "A packet o' yeast, used ta make alcohol.",

		kimchi = "Kmeecha",
		kimchi_description = "A spicy Korean side dish made from fermented vegetables.",
		fish_sauce = "Gorshling Sauce",
		fish_sauce_description = "A condiment made from fish that has been allowed to ferment.",

		pumpkin = "Pumpeen",
		pumpkin_description = "A large orange vegetable that is used for Halloween.",
		cabbage = "Cabbagin",
		cabbage_description = "Perfect for making homemade kmeecha.",

		smoothie = "Smoozoo",
		smoothie_description = "The perfect blend of fruits, vegetables, and electrolytes to cure even the worst gaming-induced hangovers.",
		blender = "Blender",
		blender_description = "Da Ultimate Smoothie Blender: bii-mók-mók breakfast o key to victory (and a tasty smoothie never hurt either).",

		cocoa_beans = "Cocoa Beans",
		cocoa_beans_description = "Small beans dat are useden to make chocolate.",
		cocoa_powder = "Cocoa Powder",
		cocoa_powder_description = "A powder made from cocoa beans.",
		hot_chocolate = "Hot Chocolate",
		hot_chocolate_description = "A warm drink made from cocoa powder and milk.",

		jack_o_lantern = "Jack O' Lantern",
		jack_o_lantern_description = "Mesa suggestin ganna pumpkin witta faca carved inta it.",

		cigarette = "Gannicka",
		cigarette_description = "If you no smoke, yousa a wimp dawg",
		cigarette_pack = "Gannicka Pack",
		cigarette_pack_description = "Fur yousa dad who has a gannicka addiction (hopefully he comes back afta leavin ta get dem).",

		cocaine_bag = "Cocaine Bag",
		cocaine_bag_description = "Smaller pieces of Colombian history.",
		cocaine_brick = "Cocaine Brick",
		cocaine_brick_description = "A piece of Colombian history.",
		joint = "Gung",
		joint_description = "420 blaze it okeyday",
		oxy = "Oxy",
		oxy_description = "Yousa got some drugs? Help with back pain it does.",
		antibiotics = "Antibiotics",
		antibiotics_description = "Helpin' you get rid of dose infections and parasites, mesa thinks.",
		pain_killers = "Pain Killers",
		pain_killers_description = "It’s peak selling time lace, I need my drugs - mesa!",
		weed_seeds = "Weed Seeds",
		weed_seeds_description = "Grows the 420, bro - okeyday?",
		weed_1q = "Weed 1q",
		weed_1q_description = "420 bro, going to get high!",
		weed_1oz = "Weed 1oz",
		weed_1oz_description = "1680 bombad",

		oxy_prescription = "Oxy Prescription",
		oxy_prescription_description = "Dookie oxy prescription.",

		brownies = "Brownies",
		brownies_description = "Goey, Foamy, and double the amount of chocolate with just a hint of extra kick to really make you sit back and question all of life.",

		ejector_seat = "Ejector Seat",
		ejector_seat_description = "Ejecto Seato cuz!",
		tuner_chip = "Tuner Chip",
		tuner_chip_description = "Mesa speed.",

		chip = "Chip",
		chip_description = "Cool-looking hacker chip.",
		decryption_key_red = "Reda Decryption Key",
		decryption_key_red_description = "MISA SAA, da reda mafia ar in fact justa bunca oooiee.",
		decryption_key_green = "Greena Decryption Key",
		decryption_key_green_description = "MISA SAA, Coke was originally green in color.",
		decryption_key_blue = "Bluea Decryption Key",
		decryption_key_blue_description = "MISA SAA, dar exists a blue-footed bird? Reference: https://en.wikipedia.org/wiki/Blue-footed_booby",

		ballistic_shield = "Ballistesa Shielda",
		ballistic_shield_description = "Dis shield should be used when venturin' into da ganglands of RP.",

		pet_porg = "Porg Pal",
		pet_porg_description = "Adorable Porg Pal to perch on ya shoulder and keep ya company. Cute and cuddly, dis little creature will bring a smile to ya face wherever ya go.",
		pet_duck = "Quacktastic Sidekick",
		pet_duck_description = "Wif its cheerful quacks and fluffy feathers, dis duck is da perfect sidekick for any journey. It'll happily perch on ya shoulder, ready to explore da world wif ya.",
		pet_cat = "Meesa Friend Shoulder",
		pet_cat_description = "Dis fluffy feline always ready for nap, and whosa better place to snooze den on yousa shoulder? It'll happily curl up and purr as yousa go about yousa day.",
		pet_cat_grey = "Gizmo Lazy",
		pet_cat_grey_description = "Dis small, gray cat issa ultimate in laziness. It sits contentedly on yousa shoulder, barely moving except to occasionally give a lazy stretch.",
		pet_chicken = "Featha Friend",
		pet_chicken_description = "Dis adorable lit chicken will happily peck itsa way around yousa shoulder, itsa soft feathers and curious personality making it the perfect companion for any adventure.",
		pet_shiba = "Otoh Gunga Clan Companion",
		pet_shiba_description = "With its playful personality and soft fur, this little shiba dog is the perfect sidekick for any adventure. It'll happily follow you wherever you go, its wagging tail and cheerful bark adding a touch of joy to your journey.",
		pet_mouse = "Brisky Friend",
		pet_mouse_description = "This round and fluffy little chinchilla is the perfect companion for any adventure. Its soft fur and playful personality make it the perfect snuggle buddy, and it'll happily perch on your shoulder as you go about your day.",
		pet_raccoon = "Rascal o Raccoon",
		pet_raccoon_description = "Introducin' Rascal, the fluffy raccoon who's always ready for adventure. Wit' a plump physique and mischievous personality, he'll happily sit on your shoulder and help you scavenge for treasures. Ready to join your quest?",

		hotwheels_mcqueen = "Lightnin' McQueen",
		hotwheels_mcqueen_description = "Speed I am Speed, Float like a Cadillac sting Like a Beemer. KATCHOW KATCHOW KATCHOW",
		hotwheels_towmater = "Mater",
		hotwheels_towmater_description = "My names my Mater, like tomater but with out the Tuh.",

		boxing_gloves = "Boking Gluvesa",
		boxing_gloves_description = "Mesa suggesta usen des to becomen like Rocky, but yousa probably no getten a sequel...",
		leash = "Lish",
		leash_description = "Noboda wills knowen why yousa buyen des, but theysa surely gonna judgen yousa for haven itsen.",

		shrooms = "Shroomsen",
		shrooms_description = "Someonen saiden to putten des onna pizza, but now der pizza issen putten itselfen on mesa... waiten, who mesa am?",

		bucket = "Bucketen",
		bucket_description = "Can be useden asen a makeshift helmeten.",
		fertilizer = "Fertilizera",
		fertilizer_description = "For a greener worlden.",

		aluminium_powder = "Dalgoes Powder",
		aluminium_powder_description = "A versatile powder dat issa used in industrial and chemical applications. When combined wit specific ingredients, it can produce highly reactive thermite reactions, creating intense heat and light.",
		iron_oxide = "Iron Oxide Powder",
		iron_oxide_description = "A common powder composed of iron and oxygen molecules, used in various industrial processes. When mixed wif certain substances, it can participate in highly exothermic reactions, releasing heat and energy.",

		gold_bar = "Gauwduhap Bar",
		gold_bar_description = "Used for repairs and crafting.",

		aluminium = "Waz-lu Aluminium",
		aluminium_description = "Used for repairs and crafting.",
		glass = "Nga Glass",
		glass_description = "Used for repairs and crafting.",
		rubber = "Hut-hut Rubber",
		rubber_description = "Used for repairs and crafting.",
		scrap_metal = "Scrap Metal",
		scrap_metal_description = "Used for repairs and crafting.",
		steel = "Waz-tem Steel",
		steel_description = "Used for repairs and crafting.",

		purified_aluminium = "Huuri-lu Aluminium",
		purified_aluminium_description = "Mesa used dis fer professional repairs.",
		tempered_glass = "Tempered Glass",
		tempered_glass_description = "Mesa used dis fer professional repairs.",
		vulcanized_rubber = "Vulcanized Rubber",
		vulcanized_rubber_description = "Mesa used dis fer professional repairs.",
		processed_metal = "Processed Metal",
		processed_metal_description = "Mesa used dis fer professional repairs.",
		refined_steel = "Refined Steel",
		refined_steel_description = "Mesa used dis fer professional repairs.",

		power_saw = "Power Saw",
		power_saw_description = "Mesa used dis fer sawin' things.",

		thermite = "Gooberfish",
		thermite_description = "Vol-koontah huh?",
		fake_plate = "Fake Plate",
		fake_plate_description = "Hehe fuck da Colos, dey ain't catchin' me with dis.",
		evidence_bag_empty = "Empty Evidence Bag",
		evidence_bag_empty_description = "Meesa thinkin' yousa need moresa evidence.",
		evidence_bag = "Evidence Bag",
		evidence_bag_description = "Sealed crime in a bag for later use. Okeyday for checken by da boss.",
		fingerprint_evidence = "Fingerprint Evidence",
		fingerprint_evidence_description = "Helping you catch them criminal scumbags. Yousa be careful out there, okeday?",

		ammo_box = "Bigga Ammo Box",
		ammo_box_description = "Mesa useful when yousa need to shoota lot. Contains 60 rounds of each ammo type.",

		stungun_ammo = "Taser Cartridge",
		stungun_ammo_description = "Not deadly.",
		pistol_ammo = "Pistol Ammo",
		pistol_ammo_description = "Perfecto for casual use. Fits in most handhelds.",
		sub_ammo = "Sub Ammo",
		sub_ammo_description = "Want to mag-dump a rivaling group? Dis isa affordable asset allowing for exactly dat. For bigga effect, a submachine weapon is recommended.",
		rifle_ammo = "Rifle Ammo",
		rifle_ammo_description = "Dis one is for all da hardcore bank robbers lookin' ta slaughter some pigs along da way.",
		sniper_ammo = "Sniper Ammo",
		sniper_ammo_description = "Screw ya initiation!",
		shotgun_ammo = "Shotgun Ammo",
		shotgun_ammo_description = "People tink dere's gunpowder in dese! Clowns... dey're filled wit love and joy.",

		silver_watches = "Silver Watches",
		silver_watches_description = "Watch out!",
		necklaces = "Necklaces",
		necklaces_description = "Add some extra bling ta ya outfit!",
		gold_watches = "Shiny Watchins",
		gold_watches_description = "Yousa getten these from wheres, exacten?",
		diamonds = "Sparkly Rocks",
		diamonds_description = "Yousa needen 24 of thesesa to makesa a full armor. Mesa suggesten getten 27 though so yousa can getten yourself a pickaxe too.",

		weather_spell_snow = "Weathersa Spell (Snow)",
		weather_spell_snow_description = "Usen thissa item will letten yousa temporarily control the weather and maken it snow! Itsas a one-time use, so use with care. If yousa use two weathersa spells at once, the second onesa will simply queue up.",
		weather_spell_rain = "Mesa Wezzer Spell (Gungan Eeno)",
		weather_spell_rain_description = "Usen dissen item to controle de wezzer temporally und make it rain! Issa one-taim use, so use wif a lotta care. If yousa use two wezzer spells at once, de second one will simply queue up.",
		weather_spell_thunder = "Mesa Wezzer Spell (Gungan Boom-Boom)",
		weather_spell_thunder_description = "Usen dissen item to controle de wezzer temporally und make a stormy of boom-boom! Issa one-taim use, so use wif a lotta care. If yousa use two wezzer spells at once, de second one will simply queue up.",

		zombie_pill = "Zombee pill",
		zombie_pill_description = "Mesa says dis pill do strange things, swallow at your own risk. Itsen might be a good idea to carry a gun in case yousa inexplicably transformed into a violent creature or mesa has visions of dem. Yousa warned, mesa tellin'.",

		acid = "Afeed",
		acid_description = "Makes yousa high foh-evah. Theres no escapin' it. Be careful mesa advise.",

		rose = "Rosa",
		rose_description = "Mesa no undahstand 'erp', but mesa guessin' this- this be a flower for lovey-dovey business",

		teddy_bear = "Teddee Bear",
		teddy_bear_description = "A friend who willsa actually listen to you. Mesa hopes.",

		self_driving_chip = "Self-Driving Chip",
		self_driving_chip_description = "Dead critters everywhere... mesa thinks thats funny.",

		ticket_50 = "$50 Gungan Tikkay",
		ticket_50_description = "Burf inna jah-mee juju.",
		ticket_250 = "$250 Gungan Tikkay",
		ticket_250_description = "Da big bucks, tayka dat gamble.",
		ticket_500 = "$500 Gungan Tikkay",
		ticket_500_description = "Whoa nelly, datsa lotta oomphma!",

		avocado = "Gungan Avocado",
		avocado_description = "Leetle green bulb, could make very nice dip.",
		avocado_smoothie = "Gungan Avocado Smoothie",
		avocado_smoothie_description = "Healthy green juice, ignore da blobbies.",

		raspberry = "Raspberi",
		raspberry_description = "https://i.redd.it/jbcj0uqbihg41.jpg",

		antenna = "Antenna",
		antenna_description = "Catch all da frequencies.",
		battery_pack = "Battery Pack",
		battery_pack_description = "Powrin all ya electronics.",
		cpu = "CPU",
		cpu_description = "Da heart o evri computa.",
		knob = "Knob",
		knob_description = "Twist it, turn it.",
		pcb_board = "PCB Board",
		pcb_board_description = "For prototypin ya nex invention.",
		screen = "Screen",
		screen_description = "See wha ya do.",
		sd_card = "Gaggan Card",
		sd_card_description = "Fer all yer storage needs.",
		wires = "Wires",
		wires_description = "Hold todogether.",

		note = "Note",
		note_description = "Some note mooey.",

		pigeon_milk = "Pigeon Milk",
		pigeon_milk_description = "\"Shoulda drank pigeon milk dat stuff will knock you right oot\"\nMilk extracted by Vedder with luv.",

		bandana = "Bandana",
		bandana_description = "Whole lotta gang shaa. (Bloods win)",

		battering_ram = "Batering Ram",
		battering_ram_description = "Take dose doors to slam town!",

		trading_card = "Tradin' Card",
		trading_card_description = "A collectible tradin' card, gotta get 'em all!",

		trading_card_pack = "Tradin' Cards Pack",
		trading_card_pack_description = "A pack of random tradin' cards, let's get some good pulls.",

		boombox = "Boombox",
		boombox_description = "Play music and be obnoxious anywhere, any time!",

		lighter = "Lighter",
		lighter_description = "Some spacers just wanna see worlds burn",

		nitro_tank = "Nitro Tank",
		nitro_tank_description = "Perfect for when you have the speed for need.",

		empty_nitro_tank = "Gom kubli ke waba nitro",
		empty_nitro_tank_description = "Kada naba triga woren yo desa tinka ke je Gungan bean yo mesa waba hutte.",

		sheet_metal = "Skayul metul",
		sheet_metal_description = "Mesa perfeck for upgraden yar 2x2.",

		valve = "Valve",
		valve_description = "Half Life 3, cu nuna?",

		empty_tank = "Gom kubli ke waba",
		empty_tank_description = "Nuna triga propane oye propane accessorees gancha.",

		pepper_spray = "Peppa spray",
		pepper_spray_description = "NAHSI mubesa!",

		jail_card = "Jail kada",
		jail_card_description = "Ganna outa jail, kada!",

		vape = "Geebola Bar",
		vape_description = "Bombad way to look cool, oke-day? Tired of bein' a chuba? Take a hit bwo!",

		acetone = "Acetone",
		acetone_description = "Perfect for removin' paint or huffin' it, Cooper-style.",

		bleach = "Bleach",
		bleach_description = "Don't drink dis.",

		ammonia = "Ammonia",
		ammonia_description = "Mix with bleach for a magical surprise, oke-day.",

		lithium_batteries = "Lithium Wires",
		lithium_batteries_description = "Not allowed on commercial aircraft, unless yousa wanna go boom.",

		meth_bag = "Meth Bag",
		meth_bag_description = "Wicca-jicka \"Cooper's Spice\". Bombad pure crystal to grace the Alamo Sea.",

		meth_table = "Meth Table",
		meth_table_description = "Haha tay-masu Breaking Bad refer. Cookin' spice with dis table.",

		campfire = "Bonfire",
		campfire_description = "Can be placed anywhere in the world. Perfect for camping, huntin' and fishin'! Dis item can't be picked up again.",
		tent = "Tent",
		tent_description = "Can be placed anywhere in the world. Perfect for camping, huntin' and fishin'!",
		cloth_tent = "Cloth Tent",
		cloth_tent_description = "Yousa can place dis anywhere in da galaxy. Perfect for camping, hunting, and fishing!",
		canvas_tent = "Canvas Tent",
		canvas_tent_description = "Yousa can place dis anywhere in da galaxy. Perfect for camping, hunting, and fishing!",
		plastic_chair = "Plastic Chair",
		plastic_chair_description = "Yousa can place dis anywhere in da galaxy. Perfect for camping, hunting, and fishing!",
		fishing_chair = "Fishing Chair",
		fishing_chair_description = "Yousa can place dis anywhere in da galaxy. Perfect for camping, hunting, and fishing!",
		yoga_mat = "Yoga mat",
		yoga_mat_description = "Mesa placein meesa anywher in de world. Perfecten for camping, huntinen und fishen!",
		cooler_box = "Coola Boxx",
		cooler_box_description = "Mesa placein meesa anywher in de world. Perfecten for camping, huntinen und fishen!",
		parasol = "Parasol",
		parasol_description = "Mesa placein meesa anywher in de world. Perfecten for camping, huntinen und fishen!",
		parasol_table = "Parasol Table",
		parasol_table_description = "Mesa placein meesa anywher in de world. Perfecten for camping, huntinen und fishen!",
		table = "Mesa",
		table_description = "Gasanja kohnyakla ala caduun. Ganna chuba ashi mesa bajika, gunjitaka rinpi jinji kitaka ochi!",
		towel = "Duka",
		towel_description = "Gasanja kohnyakla ala caduun. Ganna chuba ashi mesa bajika, gunjitaka rinpi jinji kitaka ochi!",
		disposable_grill = "Disposa-Bajika",
		disposable_grill_description = "Gasanja kohnyakla ala caduun. Ganna chuba ashi mesa bajika, gunjitaka rinpi jinji kitaka ochi! Ay cha kasa koysi ibrat, ashi item cha malla sanja na recover ha.",
		grill = "Bajika",
		grill_description = "Gasanja kohnyakla ala caduun. Ganna chuba ashi mesa bajika, gunjitaka rinpi jinji kitaka ochi!",
		police_barrier = "Mesa Barrier",
		police_barrier_description = "Lussa mesa barrierin ka uyotah mee noonga.",
		dummy = "Mandowit",
		dummy_description = "Lussa mandowitin ka uyotah mee noonga.",
		target = "Targetin",
		target_description = "Lussa targetin ka uyotah mee noonga.",
		large_target = "Large Targetin",
		large_target_description = "Lussa large targetin ka uyotah mee noonga.",
		cone = "Jahatka",
		cone_description = "Lussa jahatkan ka uyotah mee noonga.",
		spike_strips = "Gajasar Stripsin",
		spike_strips_description = "Lussa gajasar stripsin ka uyotah mee noonga.",
		floodlight = "Kreen chaka",
		floodlight_description = "Mesa moolee cha placing anywheres in da world",
		left_diversion_sign = "Signa da Left Diversion",
		left_diversion_sign_description = "Mesa moolee cha placing anywheres in da world.",
		right_diversion_sign = "Signa da Right Diversion",
		right_diversion_sign_description = "Mesa moolee cha placing anywheres in da world.",
		stop_sign = "Signa da Stop",
		stop_sign_description = "Mesa moolee cha placing anywheres in da world.",
		bear_trap = "Trapa da Bear",
		bear_trap_description = "Mesa moolee cha placing anywheres in da world.",
		barrier = "Moober",
		barrier_description = "Yosa stanard construction moober.",
		traffic_barrier = "Traffic Moober",
		traffic_barrier_description = "A moober to makes sure traffic knows what's happening.",
		small_barrier = "Small Moober",
		small_barrier_description = "Shitty whittle baby moober.",
		traffic_barrel = "Traffic Barrel",
		traffic_barrel_description = "Itden look hittable, but don’t... unless?",
		pedestrian_barrier = "Pedestrian Moober",
		pedestrian_barrier_description = "Greate to has unless itsa Travis Scott concert...",

		bandit_1 = "Bàndit 1",
		bandit_1_description = "Mesa goppa poraa en toda la galàxia",
		bandit_2 = "Bàndit 2",
		bandit_2_description = "Mesa goppa poraa en toda la galàxia",
		hostage_1 = "Rehén 1",
		hostage_1_description = "Mesa goppa poraa en toda la galàxia",
		hostage_2 = "Rehén 2",
		hostage_2_description = "Mesa goppa poraa en toda la galàxia",

		director_chair = "Silla del Directôr",
		director_chair_description = "Mesa goppa poraa en toda la galàxia. Sentarse como un gran directôr.",
		beach_chair = "Silla de la Playa",
		beach_chair_description = "Mesa sit-anywhere-inna-world. Comfortable seating on the go.",
		green_fishing_chair = "Green Fishing Chair",
		green_fishing_chair_description = "Mesa sit-anywhere-inna-world. Comfortable seating on the go.",
		blue_fishing_chair = "Blue Fishing Chair",
		blue_fishing_chair_description = "Mesa sit-anywhere-inna-world. Comfortable seating on the go.",

		tire_wall = "Tire Wall",
		tire_wall_description = "When yousa needen cover but dere non.",

		claymore = "Claymore",
		claymore_description = "Da ultimate anti-personnel mine.",

		tv_stand = "TV Stand",
		tv_stand_description = "Yousa can prop a TV up anywhere yousa wantin' wif dis.",
		tv_remote = "TV Remote",
		tv_remote_description = "Universal Remote (quantum batteries not included).",

		firework_rocket = "Firework Rocket",
		firework_rocket_description = "A simple firework rocket. Great for da 4th of July.",
		firework_battery = "Firework Battery",
		firework_battery_description = "A firework battery. Shoots 4 fireworks at once.",

		pole = "Yellow Pole",
		pole_description = "Mesa thinken dis be perfecten for stoppen anyones dead in dere tracks.",

		gasoline_bottle = "Gasolinosa Bottle",
		gasoline_bottle_description = "For a quicka refillen for your speedan cart or....uhm.....yourself?",

		radio_jammer = "Radio Jammen",
		radio_jammer_description = "Mesa thinken dis be perfecten for jammen any kinda transmissions incomingen and outgoingen.",

		winner_trophy = "Winner Trophosa",
		winner_trophy_description = "Yousa be the besten!",

		treasure_map = "Treasure Mapen",
		treasure_map_description = "A fadeden and weathereden mapen dat promises untolden riches to doesen who can decipher its cryptic clueen. X marken the spot, but the journey to the treasureda may be perilousen and fraught with challenges.",
		treasure_map_piece = "Goppa Map Piece",
		treasure_map_piece_description = "Mesa found a torn piece of a larger map, couldba mesa been lost or deliberately hidden. Itsasa holds a piece of mesa mystery, a puzzle waiting to be solved. Collect all the pieces, assemble the map, and unlock the secrets of a long-lost treasure. Be warned of rival treasure hunters and unexpected obstacles along the way!",

		flag = "Flag",
		flag_description = "Hold onto it tightly!",

		black_dildo = "Black Oongan",
		black_dildo_description = "Wesa gonna getsa that confession one way or another.",
		pink_dildo = "Pink Oongan",
		pink_dildo_description = "Handmade, carved and tested by Bugsy Middleman.",

		bean_coffee = "Bean Coffee",
		bean_coffee_description = "Bean water.... all it really is.",
		cappuccino = "Cappuccino",
		cappuccino_description = "Expresso with breast milk, i mean breast milk, i mean breast milk...",
		espresso = "Espresso",
		espresso_description = "Enough energy to power your home, all in a neat little cup.",
		cream_cookie = "Cream Cookie",
		cream_cookie_description = "Creamy, Just how you like it.",
		cheesecake = "Cheesecake",
		cheesecake_description = "Notin tu be confusin' wif a cake made o' cheese.",
		chocolate_cake = "Choc'late Cake",
		chocolate_cake_description = "Delish cake made from da finest cocoa beans.",
		cupcake = "Cupcake",
		cupcake_description = "A fluffy cake filled topped wif magical unicorn cream.",
		pink_lemonade = "Pink Lemonade",
		pink_lemonade_description = "Totally not just regular lemonade dyed pink so we can charge you twice as much...",

		irish_coffee = "Irish Coffee",
		irish_coffee_description = "Freshly made coffee wif a bit o' original irish whiskey in it.",

		chip_10 = "10 Lumpin Coin",
		chip_10_description = "A gambling chip. Can be used to gamble. The item can be converted to money at the casino.",
		chip_50 = "50 Lumpin Coin",
		chip_50_description = "A gambling chip. Can be used to gamble. The item can be converted to money at the casino.",
		chip_100 = "100 Lumpin Coin",
		chip_100_description = "A gambling chip. Can be used to gamble. The item can be converted to money at the casino.",
		chip_500 = "500 Lumpin Coin",
		chip_500_description = "A gambling chip. Can be used to gamble. The item can be converted to money at the casino.",
		chip_1000 = "Goober $1000",
		chip_1000_description = "A gambling goober. Mesa can uses this to gamble. Mesa can exchange this item for money at the casino.",
		chip_5000 = "Goober $5000",
		chip_5000_description = "A gambling goober. Mesa can uses this to gamble. Mesa can exchange this item for money at the casino.",
		chip_10000 = "Goober $10000",
		chip_10000_description = "A gambling goober. Mesa can uses this to gamble. Mesa can exchange this item for money at the casino.",

		grubs = "Gudgie grubs",
		grubs_description = "Perfect for fishing. Mesa suggestin' using dem to catch da biggest fish!",
		leeches = "Leeches",
		leeches_description = "Mesa got perfect for fishin'.",
		earthworms = "Earthworms",
		earthworms_description = "Mesa got perfect for fishin'.",
		fishing_rod = "Fishing Rod",
		fishing_rod_description = "Mesa got perfect for fishin'.",
		raw_meat = "Raw Meat",
		raw_meat_description = "A fresh chunk of mesa meat.",
		cooked_meat = "Cooked Meat",
		cooked_meat_description = "Mesa meat that been freshly cooked.",
		burnt_meat = "Burnt Meat",
		burnt_meat_description = "Meat that done got too burnt mesa.",
		leather = "Leather",
		leather_description = "A nice pelt fresh from da orm.",
		wood = "Woodsa",
		wood_description = "Mesa think dis wood comin' straight froma tha tree.",
		charcoal = "Charcoala",
		charcoal_description = "Mesa thinksa dis betta den normal coal.",

		beef_jerky = "Beef Jerkysa",
		beef_jerky_description = "Yum, somesa meaty beef jerky.",
		oreos = "Birthday-Cake Oreosa",
		oreos_description = "Mmm, somesa delicioussa cookies wit a hinta birthday cake.",
		nerds_chunks = "Nerdsa Chunks",
		nerds_chunks_description = "Somesa bag of nerdsa gummy clusters, delicioussa!",
		reeses_pieces = "Reese's Piecesa",
		reeses_pieces_description = "Somesa perfecta snack when yousa feelin' a litta bit hungry, but not quite enough to eat a full meal.",
		kettle_chips = "Kettle Chips (Honey-BBQ)",
		kettle_chips_description = "Bombad chips in da galaxy.",
		cheetos = "Cheetos",
		cheetos_description = "Da best snack for yer gaming sessions.",
		peanuts = "Salted Peanuts",
		peanuts_description = "A can o' peanuts, perfect fer snacking.",

		rice = "Rice",
		rice_description = "It's plump, fluffy grains.",
		nori = "Nori",
		nori_description = "Dis be seaweed but fancy.",
		soy_sauce = "Soy Sauce",
		soy_sauce_description = "Soy sauce is a savory condiment wit a rich umami flavor dat's perfect fer marinades, seasoning, and dipping sauce, and is low in calories and high in protein.",
		eggs = "Meega Eggs",
		eggs_description = "Meega versatile and nutritious, eggs are perfect for omelets, quiches, and baked goods.",
		lime = "Meega Lime",
		lime_description = "Meega tangy and rich in vitamin C, limes add zest to drinks, marinades, and dressings.",
		coconut = "Meega Coconut",
		coconut_description = "Meega sweet and creamy, coconut enhances desserts, curries, and smoothies.",
		sugar = "Meega Sugar",
		sugar_description = "It's like sugi but not illegal and gives you Meega diabetes.",

		golf_ball = "Meega Golf Ball",
		golf_ball_description = "Meega used for golfing.",
		golf_ball_yellow = "Yella Golg Ball",
		golf_ball_yellow_description = "Used for golging.",
		golf_ball_orange = "Orn-g Golg Ball",
		golf_ball_orange_description = "Used for golging.",
		golf_ball_pink = "Ponk Golg Ball",
		golf_ball_pink_description = "Used for golging.",

		gas_mask = "Gaz Mask",
		gas_mask_description = "will save yousa from all types of gaz, even grandmas farts.",
		nv_goggles = "Night Vision Goggles",
		nv_goggles_description = "Will help yousa see in da dark.",
		thermal_goggles = "Thermal Goggles",
		thermal_goggles_description = "Meesa help you see through walls (not really xD).",

		green_rolls = "Green Rolls",
		green_rolls_description = "For those of us who need more dan the average amount.",
		rolling_paper = "Rolling Paper",
		rolling_paper_description = "Dat quick paper to roll up and smoke your pain away.",

		arena_pill = "Arena Pill",
		arena_pill_description = "A strange pill dat does even stranger things... Swallow at your own risk. Perhaps having a booma on you to protect from violent dreams would be wise.",

		shovel = "Shovel Gungan",
		shovel_description = "Mesa sturdy digging tool for unearthing hidden riches and uncovering secrets in any environment, making it a valuable asset for avid treasure hunters.",

		electric_fuse = "Electric Fuse Gungan",
		electric_fuse_description = "Da Electric Fuse issa required item for heist rooms. It must be placed in da fuse box in order to power da keycard lock.",
		keycard_green = "Green Keycard Gungan",
		keycard_green_description = "Used to open storages full of medical supplies.",
		keycard_blue = "Blue Keycard Gungan",
		keycard_blue_description = "Used to openo storages full of technical supplies.",
		keycard_red = "Kaa Red Keycard",
		keycard_red_description = "Used to openo an armory.",

		magazine = "Magazine",
		magazine_description = "A magazine.",

		bank_rockfish = "Bank Rockfish",
		black_and_yellow_rockfish = "Blacka and Yellow Rockfish",
		black_rockfish = "Blacka Rockfish",
		blackgill_rockfish = "Blackgill Rockfish",
		blackspotted_rockfish = "Blackspotted Rockfish",
		blue_rockfish = "Blue Rockfish",
		bocaccio = "Bocaccio",
		bronzespotted_rockfish = "Bronzespotted Rockfish",
		brown_rockfish = "Brün Rokfis",
		cabezon = "Kabizon",
		calico_rockfish = "Kaliko Rokfis",
		california_scorpionfish = "Kalifornija Skorpionfis",
		canary_rockfish_variant_1 = "Kanarischer Rokfis (Variante 1)",
		canary_rockfish_variant_2 = "Kanarischer Rokfis (Variante 2)",
		chilipepper_rockfish = "Chilipfeffer Rokfis",
		china_rockfish = "China Rokfis",
		copper_rockfish_variant_1 = "Kupfer Rokfis (Variante 1)",
		copper_rockfish_variant_2 = "Kupfer Rokfis (Variante 2)",
		cowcod = "Kuhkod",
		darkblotched_rockfish = "Dunkelpunkt Rokfis",
		deacon_rockfish = "Deacon Rockfisho",
		dusky_rockfish_dark_version = "Dusky Rockfish (Nabee Version)",
		dusky_rockfish_light_version = "Dusky Rockfish (Lom Version)",
		flag_rockfish = "Flag Rockfisho",
		gopher_rockfish = "Gopher Rockfisho",
		grass_rockfish_dark_version = "Grass Rockfish (Nabee Version)",
		grass_rockfish_light_version = "Grass Rockfish (Lom Version)",
		greenblotched_rockfish = "Greenblotched Rockfisho",
		greenspotted_rockfish = "Greenspotted Rockfisho",
		greenstriped_rockfish = "Greenstriped Rockfisho",
		halfbanded_rockfish = "Okstooba Halfbanded",
		honeycomb_rockfish = "Okstooba Honeycomb",
		kelp_greenling_female = "Kelp Greenling (female)",
		kelp_greenling_male = "Kelp Greenling (male)",
		kelp_rockfish = "Okstooba Kelp",
		lingcod = "Lingcod",
		olive_rockfish = "Okstooba Olive",
		pacific_ocean_perch = "Okstooba Pacific Ocean",
		pacific_sand_sole = "Okstooba Pacific Sand Sole",
		pacific_sanddab = "Okstooba Pacific Sanddab",
		quillback_rockfish_variant_1 = "Okstooba Quillback (Varient 1)",
		quillback_rockfish_variant_2 = "Okstooba Quillback (Varient 2)",
		redbanded_rockfish = "Goppa-goppa Rockfish",
		rock_sole = "Rock Sole",
		rosy_rockfish = "Rosa-goppa Rockfish",
		rougheye_rockfish = "Rougheye Rockfish",
		shortraker_rockfish = "Shortraker Rockfish",
		silvergray_rockfish = "Silvergray Rockfish",
		speckled_rockfish = "Speckled Rockfish",
		squarespot_rockfish = "Squarespot Rockfish",
		starry_flounder = "Starry Flounder",
		starry_rockfish = "Starry Rockfish",
		tiger_rockfish_dark_version = "Tiger Rockfish (Dark Version)",
		tiger_rockfish_pink_version = "Tiger Rockfish (Pink Version)",
		treefish = "Gulmut",
		vermilion_rockfish = "Vermilion Moogoo",
		widow_rockfish = "Widow Moogoo",
		yelloweye_rockfish_adult = "Yarn Moogoo (Adult)",
		yelloweye_rockfish_juvenile = "Yarn Moogoo (Juvenile)",
		yellowtail_rockfish = "Yellowtail Moogoo",

		bank_rockfish_description = "Bank Moogoo are oval-shaped fish with small head spines. Yousa can find them in dusky red or red-brown colors, often with a clear pinkish-orange zone along the lateral line and black spotting on the body and spinous portion of the dorsal fin.",
		black_and_yellow_rockfish_description = "Sebastes chrysomelas, wesa oko black-and-yellow rockfish, is a marine fish species of da family Sebastidae. It issen found in rocky areas in da Pacific off California and Baja California.",
		black_rockfish_description = "Da black rockfish, also known variously as da black seaperch, black bass, black rock cod, sea bass, black snapper and Pacific Ocean perch, issa species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae.",
		blackgill_rockfish_description = "Jar jar catch occasionallyed off Washington coast by commercial harvesters using otter-trawls and longline gear. Sometimes catched species off Californian coast. <br><br>Small versions can be found off-shore, but older Blackgills will move to deep water.",
		blackspotted_rockfish_description = "Sebastes melanostictus, the blackspotted rockfish, is a species of marine ray-finned fish belonging to the subfamily Sebastinae, the rockfishes, part of the family Scorpaenidae. It is found in the northern Pacific Ocean.",
		blue_rockfish_description = "Da blue rockfish or blue seaperch is a species of marine ray-finned fish belongin to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It's found in da northeastern Pacific Ocean, rangin from northern Baja California to central Oregon.<br><br>Only eva found in river entries, not directly in da rivers.",
		bocaccio_description = "Da bocaccio rockfish is a species of marine ray-finned fish belongin to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It's found in da northeast Pacific Ocean.<br><br>Also known as da \"red snapper\".",
		bronzespotted_rockfish_description = "Sebastes gilli, da bronzespotted rockfish, is a species of fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It isa found in da eastern Central Pacific Ocean.",
		brown_rockfish_description = "Da brown rockfish, whose other names include brown seaperch, chocolate bass, brown bass and brown bomber, isa species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It isa found in da northeastern Pacific Ocean.",
		cabezon_description = "Da cabezon isa huge species of sculpin which be native ta da Pacific coast of North America. Although da genus name translates literally as \"scorpion fish\", tru scorpionfish belong ta da related family Scorpaenidae.",
		calico_rockfish_description = "Sebastes dallii, da calico rockfish, isa species of marine ray-finned fish belonging ta da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It be found in da eastern central Pacific Ocean.<br><br>Male Calicos first beome sexually mature at seven years old, whereas females reach sexual maturity at nine years old.",
		california_scorpionfish_description = "Scorpaena guttata isa fish breed in the scorpionfish fambly wid da common name California scorpionfish. It comes from da eastern Pacific Ocean and can be found alongside da coast of California and Baja California.",
		canary_rockfish_variant_1_description = "Da canary rockfish, also known as da orange rockfish, isa marine ray-finned fish breed belonging to da subfamily Sebastinae, da rockfishes, part of the fambly Scorpaenidae. It comes from da waters of da Pacific Ocean off da western North America.",
		canary_rockfish_variant_2_description = "Da canary rockfish, also known as da orange rockfish, isa species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It isa native to da waters of da Pacific Ocean off western North America.",
		chilipepper_rockfish_description = "Sebastes goodei, da chilipepper rockfish and chilipepper, isa species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. Dis species lives mainly off da coast of western North America from Baja California to Vancouver.",
		china_rockfish_description = "Moy moy, da China rockfish, da yellowstripe rockfish o yellowspotted rockfish, is a species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. Issa native to da waters of da Pacific Ocean off western North America.",
		copper_rockfish_variant_1_description = "Moy moy, da copper rockfish, also known as da copper seaperch, is a species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. Issa found in da eastern Pacific.<br><br> Dey will never be seen in generic oceans, as dey only want close to da top or at da bottom.",
		copper_rockfish_variant_2_description = "The copper rockfish, also known as the copper seaperch, is a species of marine ray-finned fish belonging to the subfamily Sebastinae, the rockfishes, part of the family Scorpaenidae. It is found in the eastern Pacific.<br><br> Dem will neva be seen in generic oceans, as dey only want close to da top, or at da bottom.",
		cowcod_description = "Sebastes levis, da cowcod or cow rockfish, is a species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It is found in da Eastern Pacific Ocean.<br><br> Da range in size creates competitive edgeness.",
		darkblotched_rockfish_description = "Darkblotched rockfish, so known unda da names of Blackblotched rockfish, blackmouth rockfish, and blotchie, isa deep-bodied fish.",
		deacon_rockfish_description = "Sebastes diaconus, da deacon rockfish, isa species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It is found in da eastern Pacific Ocean.<br><br>Males will always live longa dan females.",
		dusky_rockfish_dark_version_description = "Sebastes ciliatus isa species of rockfish also commonly known as dusky rockfish. It is typically found in da North Pacific Ocean.",
		dusky_rockfish_light_version_description = "Sebastes ciliatus is a species of rockfish also commonly known as dusky rockfish. It is typically found in the North Pacific Ocean.",
		flag_rockfish_description = "Sebastes rubrivinctus, also known as the flag rockfish, Spanish flag, redbanded rockfish or barberpole, is a species of marine ray-finned fish belonging to the subfamily Sebastinae, the rockfishes, part of the family Scorpaenidae. It is found in the Eastern Pacific.",
		gopher_rockfish_description = "The gopher rockfish, also known as the gopher sea perch, is a species of marine ray-finned fish belonging to the subfamily Sebastinae, the rockfishes, part of the family Scorpaenidae. It is found in the eastern Pacific, primarily off California.",
		grass_rockfish_dark_version_description = "Sebastes rastrelliger, da grass rockfish, be a species o' marine ray-finned fish belongin' tada subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It be native tada waters of da eastern Pacific Ocean.<br><br> Most commonly used by recreational anglers using hook-and-line gear.",
		grass_rockfish_light_version_description = "Sebastes rastrelliger, da grass rockfish, be a species o' marine ray-finned fish belongin' tada subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It be native tada waters of da eastern Pacific Ocean.<br><br> Most commonly used by recreational anglers using hook-and-line gear.",
		greenblotched_rockfish_description = "Da Greenblotched Rockfish is a demersal species dat is found as solitary individuals o in small groups within rock structures at depths between 55 m (180 feet) und 490 m (1,610 feet). Dey reach a maximum length of 54 cm (21 inches), wit females being larger dan males.<br><br>Da Greenblotched, Greenspotted; und Greenstriped all share da same characteristics und behaviours.",
		greenspotted_rockfish_description = "Sebastes chlorostictus, da greenspotted rockfish, is a species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It is found in da Eastern Pacific.<br><br>Da Greenblotched, Greenspotted; und Greenstriped all share da same characteristics und behaviours.",
		greenstriped_rockfish_description = "Sebastes elongatus, da greenstriped rockfish, striped rockfish, strawberry rockfish, poinsettas, reina ou serena, sa pundenae pertence à subfamília Sebastinae, as pundenafishs, parte da família Scorpaenidae. Sai en er oceano pacífico nordestino. <br><br> A Greenblotched, Greenspotted; e a Greenstriped todas partilham das mesmas características e comportamentos.",
		halfbanded_rockfish_description = "Sebastes semicinctus, da halfbanded rockfish, sa pundenae pertence à subfamília Sebastinae, as pundenafishs, parte da família Scorpaenidae. Sai en er Pacífico Oriental.",
		honeycomb_rockfish_description = "Da Honeycomb Rockfish has a compact squat body wif a width dats 35% to 39% of standard length. Dey are covered wif spines. Dey have a tan, brown, or reddish brown coloration wif 4 to 6 white blotches randomly spaced above their lateral line.",
		kelp_greenling_female_description = "A female kelp greenling is freckled all over wif small, reddish brown to golden spots on a gray to brownish background. Da fins are mostly yellowish orange. Males tend to be gray to brownish olive, wif irregular blue spots on da front half to two-thirds of their bodies.<br><br>Most commonly found in waters shallower than 328 feet.",
		kelp_greenling_male_description = "Da male kelp greenling is brownish-olive to grey, wif irregularly-shaped blue spots lined wif black on its back and head. Both female and male have a small bushy projection (cirrus) above each eye. Dis species gets to 60 cm long.<br><br>Most commonly found in waters shallower dan 328 feet.",
		kelp_rockfish_description = "Sebastes atrovirens, da kelp rockfish, is a species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It is native to da Pacific Ocean along da coast of California in da United States and Baja California in Mexico.",
		lingcod_description = "Lingcodsah are voracious predators and can grow to weigh over 80 pounds (35 kgs) and measure 60 inches (150 cms) in length. Dey-sah are characterized by a big mout' with 18 sharp teefs. Dey-sah color issa variable, usually with dark brown or copper blotches arranged in clusters.",
		olive_rockfish_description = "Da olive rockfish, Acanthoclinus fuscus, issa longfin of da family Plesiopidae. Found only in New Zealand's intertidal zone and in rock pools at low tide, da fish grow to a length of up to 30 cms.",
		pacific_ocean_perch_description = "Da Pacific ocean perch, also known as da Pacific rockfish, Rose fish, Red bream or Red perch, is a fish whose range spans across da North Pacific: from southern California around da Pacific rim to northern Honshū, Japan, including da Bering Sea.",
		pacific_sand_sole_description = "Da Pacific sand sole, also known as simply sand sole, is a flatfish species inhabiting da northeastern Pacific waters where it lives on sandy bottoms. Da only species in da genus, Psettichthys, it ranges from da Bering Sea to Northern California.",
		pacific_sanddab_description = "Da Pacific sanddab isa species of flatfish. It is by far da most common sanddab, and it shares its habitat with da longfin sanddab and da speckled sanddab. It isa medium-sized flatfish, with a light brown color mottled brown or black, occasionally with white or orange spots.",
		quillback_rockfish_variant_1_description = "Da quillback rockfish, also known as da quillback seaperch, isa species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. This species primarily dwells in salt water reefs. Da average adult weighs 2–7 pounds and may reach 1 meter in length.<br><br>Around Cali, these live for 15 years. Around Canada, these live for at least 95 years. Proving CA > US.",
		quillback_rockfish_variant_2_description = "Da quillback rockfish, also known as da quillback seaperch, issa species of marine ray-finned fish belongin' to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. Dissen species primarily dwells in salt water reefs. Da average adult weighs 2–7 pounds and may reach 1 m in length.<br><br>Around Cali, desen live for 15 years. Around Canada, desen live for at least 95 years. Provin' CA > US.",
		redbanded_rockfish_description = "Da redbanded rockfish, also known as da bandit, barber pole, flag rockfish, Spanish flag, Hollywood, convict, and canary, issa species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. Issa found in da northern Pacific Ocean.",
		rock_sole_description = "Da rock sole (Lepidopsetta bilineata) isa flatfish of da family Pleuronectidae. It isa demersal fish dat lives on sand and gravel bottoms at depths of up to 575 metres (1,886 ft), though it is most commonly found between 0 and 183 metres (0 and 600 ft).",
		rosy_rockfish_description = "Sebastes rosaceus, da rosy rockfish, isa species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It isa found in da Eastern Pacific.",
		rougheye_rockfish_description = "Da rougheye rockfish issa rockfish of da genus Sebastes. It issa also known as da blackthroat rockfish or da blacktip rockfish and grows to a maximum of about 97 cm in length, wif da IGFA record weight bein' 14 lb 12 oz.",
		shortraker_rockfish_description = "As adults, shortraker rockfish are one of da largest rockfish species. Underwater dey are light pink, pink-orange o' red wif blotches and saddles. All fins have some black and da dorsal fin may be white tipped. Da mouth issa red and may have black blotches.<br><br>Shortraker rockfish are among da longest-lived marine species on Earth, havin' been recorded as old as 157 years.",
		silvergray_rockfish_description = "Da silvergray rockfish is a slim rockfish species wif reduced head spines. Dey have dusky lips and a lower jaw dat is long and protrudes beyond da upper jaw. Dey have a prominent symphyseal knob at da tip of their lower jaw.",
		speckled_rockfish_description = "Sebastes ovalis, da speckled rockfish, is a species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It is found in deep rocky areas of da Eastern Pacific.",
		squarespot_rockfish_description = "Sebastes hopkinsi, da squarespot rockfish, is a species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. Dissen species is found in da Eastern Pacific.",
		starry_flounder_description = "Da starry flounder, also known as da grindstone, emery wheel, and long-nosed flounder, is a common flatfish found around da margins of da North Pacific.",
		starry_rockfish_description = "Da starry rockfish, also known as da spotted corsair, spotted rockfish, chinafish, and red rock cod, is a species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. It be found in da eastern Pacific Ocean.",
		tiger_rockfish_dark_version_description = "Da tiger rockfish, oosoo tiger seaperch, banded rockfish en black-banded rockfish, issa species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. Issa native to da waters of da Pacific Ocean off western North America.",
		tiger_rockfish_pink_version_description = "Da tiger rockfish, oosoo tiger seaperch, banded rockfish en black-banded rockfish, issa species of marine ray-finned fish belonging to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. Issa native to da waters of da Pacific Ocean off western North America.",
		treefish_description = "Da treefish isa specieesa of marine ray-finned fish belongin' to da subfamily Sebastinae, da rockfishes, pate of da family Scorpaenidae. It isa native to da eastern Pacific Ocean.",
		vermilion_rockfish_description = "Sebastes miniatus, da vermilion rockfish, vermilion seaperch, red snapper, red rock cod, and rasher, isa spieciesesa of marine ray-finned fish belongin' to da subfamily Sebastinae, da rockfishes, pate of da family Scorpaenidae.",
		widow_rockfish_description = "Da widow rockfish, or brown bomber, isa specieesa of marine ray-finned fish belongin' to da subfamily Sebastinae, da rockfishes, pate of da family Scorpaenidae. It isa found in da northeastern Pacific Ocean.",
		yelloweye_rockfish_adult_description = "Meesa translate dis to Gungan: De yelloweye rockfish issa kind of fish dat live in dee water. It habba yellow eye and issa big fish. It belong to dee Sebastinae family and dee Scorpaenidae family. It call yelloweye because of de color.",
		yelloweye_rockfish_juvenile_description = "Meesa translate dis to Gungan: De yelloweye rockfish issa kind of fish dat live in dee water. It habba yellow eye and issa big fish. It belong to dee Sebastinae family and dee Scorpaenidae family. It call yelloweye because of de color.",
		yellowtail_rockfish_description = "Sebastes flavidus, da yellowtail rockfish o da yellowtail seaperch isa species of marine ray-finned fish belongin to da subfamily Sebastinae, da rockfishes, part of da family Scorpaenidae. Dis species lives mainly off da coast of western North America from California to Alaska.<br><br>Larvae and juveniles live near da surface, while adults live in deeper water over rocky reefs.",

		weapon_dagger = "Antique Cavalry Dagger",
		weapon_bat = "Baseball Bat",
		weapon_bottle = "Broken Bottle",
		weapon_crowbar = "Graar",
		weapon_unarmed = "Tissk",
		weapon_flashlight = "Licht",
		weapon_golfclub = "Golf gruss",
		weapon_hammer = "Hammar",
		weapon_hatchet = "Hatchit",
		weapon_knuckle = "Brass Knuckles",
		weapon_knife = "Nife",
		weapon_machete = "Machete",
		weapon_switchblade = "Switchblade",
		weapon_nightstick = "Nightstick",
		weapon_wrench = "Wrench",
		weapon_battleaxe = "Battle Axe",
		weapon_poolcue = "Pool Coo",
		weapon_stone_hatchet = "Stone Hatchit",
		weapon_candycane = "Candee Kaa",

		weapon_pistol = "Pistol",
		weapon_pistol_mk2 = "Blaster Pistol Mk II",
		weapon_combatpistol = "Combat Blaster",
		weapon_appistol = "AP Blaster",
		weapon_stungun = "Stun Baton",
		weapon_pistol50 = "Blaster Pistol .50",
		weapon_snspistol = "SNS Blaster",
		weapon_snspistol_mk2 = "SNS Blaster Mk II",
		weapon_heavypistol = "Heavy Blaster Pistol",
		weapon_vintagepistol = "Vintage Blaster Pistol",
		weapon_flaregun = "Flare Launcher",
		weapon_marksmanpistol = "Marksman Blaster Pistol",
		weapon_revolver = "Heavy Revolver Blaster",
		weapon_revolver_mk2 = "Heavy Revolver Blaster Mk II",
		weapon_doubleaction = "Double Action Blaster Revolver",
		weapon_raypistol = "Tin-Tendeka",
		weapon_ceramicpistol = "Keti-duua-lug",
		weapon_navyrevolver = "Revolver Jargoona",
		weapon_gadgetpistol = "Pistol Pango",
		weapon_stungun_mp = "Stun Gun (MP)",
		weapon_pistolxm3 = "Pistol WM 29",

		weapon_microsmg = "Micro SMG",
		weapon_smg = "SMG",
		weapon_smg_mk2 = "SMG Mk II",
		weapon_assaultsmg = "Assault SMG",
		weapon_combatpdw = "Combat PDW",
		weapon_machinepistol = "Machine Pistol",
		weapon_minismg = "Mini SMG",
		weapon_raycarbine = "Chaga-Unnaga",

		weapon_pumpshotgun = "Shotgun Pumpa",
		weapon_pumpshotgun_mk2 = "Pump Shotoop Mk II",
		weapon_sawnoffshotgun = "Sawed-Off Shotoop",
		weapon_assaultshotgun = "Assault Shotoop",
		weapon_bullpupshotgun = "Bullpup Shotoop",
		weapon_musket = "Musket",
		weapon_heavyshotgun = "Heavy Shotoop",
		weapon_dbshotgun = "Double Barrel Shotoop",
		weapon_autoshotgun = "Sweeper Shotoop",
		weapon_combatshotgun = "Combat Shotoop",

		weapon_assaultrifle = "Assault Rifle",
		weapon_assaultrifle_mk2 = "Assault Rifle Mk II",
		weapon_carbinerifle = "Carbine Rifle",
		weapon_carbinerifle_mk2 = "Carbine Rifle Mk II",
		weapon_advancedrifle = "Ubada dalgoon",
		weapon_specialcarbine = "Kwaikulu Kombow",
		weapon_specialcarbine_mk2 = "Kwaikulu Kombow Mk II",
		weapon_bullpuprifle = "Bullpup Rwifle",
		weapon_bullpuprifle_mk2 = "Bullpup Rwifle Mk II",
		weapon_compactrifle = "Compact Rwifle",
		weapon_militaryrifle = "Militi Rwifle",
		weapon_heavyrifle = "Heavy Rwifle",
		weapon_tacticalrifle = "Service Kombow",

		weapon_mg = "MG",
		weapon_combatmg = "Combat MG",
		weapon_combatmg_mk2 = "Combat MG Mk II",
		weapon_gusenberg = "Gusenberg Sweepa",

		weapon_sniperrifle = "Snubflux Snariper Rifle",
		weapon_heavysniper = "Heavy Snariper",
		weapon_heavysniper_mk2 = "Heavy Snariper Mk II",
		weapon_marksmanrifle = "Marksnam Snariper Rifle",
		weapon_marksmanrifle_mk2 = "Marksnam Snariper Rifle Mk II",
		weapon_precisionrifle = "Precision Rifle",

		weapon_rpg = "RPG",
		weapon_grenadelauncher = "Grenade Launcher",
		weapon_grenadelauncher_smoke = "Grenade Launcher Smoke",
		weapon_minigun = "Minigun",
		weapon_firework = "Firework Launcher",
		weapon_railgun = "Railgun",
		weapon_hominglauncher = "Homing Launcher",
		weapon_compactlauncher = "Compact Goober Grenade",
		weapon_rayminigun = "Misty Slinger",
		weapon_emplauncher = "Compact Fizz Launcher",
		weapon_stinger = "Ka-Boom Stick",
		weapon_railgunxm3 = "Coil Railgun",

		weapon_grenade = "Goober Grenade",
		weapon_bzgas = "Stinky Gas",
		weapon_molotov = "Fire Beer",
		weapon_stickybomb = "Sticky Goober Bomb",
		weapon_proxmine = "Surprise Goober",
		weapon_snowball = "Cold Goober",
		weapon_pipebomb = "Goober Pipe Bomb",
		weapon_ball = "Goober Ball",
		weapon_smokegrenade = "Smoke Goober Grenade",
		weapon_flare = "Blaze-ball",
		weapon_acidpackage = "Acid Pack",

		weapon_petrolcan = "Jaree Can",
		gadget_parachute = "Sky-diving Sheet",
		weapon_fireextinguisher = "Fire-quencher",
		weapon_hazardcan = "Jaree Can of Danger",
		weapon_fertilizercan = "Growth Can",

		red_parachute = "Red Sky-diving Sheet",
		blue_parachute = "Blue Sky-diving Sheet",
		black_parachute = "Black Sky-diving Sheet",

		weapon_dagger_description = "Yousa been rockin' da pirate-chic lookin' for a while, but nosa vicious weapon to complete da look? Get disa dagger with a guarded hilt.",
		weapon_bat_description = "Aluminum ba-da bat wif leda gip. Ligtwight yet powafal fer all you big hitters out dare.",
		weapon_bottle_description = "It's not cleva and it's not pitty but, most of da time, neida is da guy comin' at you wif a knife. When all else fails, dis gets da job done.",
		weapon_crowbar_description = "Heavy-duty crowba forged frum high quality, tempered steel fer dat extra leverage you need to get da job done.",
		weapon_unarmed_description = "When all else fails, knuckle down and work wif what you got.",
		weapon_flashlight_description = "Mesa help yousez when in da dark wid dis battery-powered light source. Handy for smashin' too.",
		weapon_golfclub_description = "Dis mid iron golf club with rubber grip make for a lethal melee weapon.",
		weapon_hammer_description = "Dis multi-purpose hammer with wooden handle and curved claw still beats the competition.",
		weapon_hatchet_description = "Use dis hatchet for kindlin' or to show your pals who's boss.",
		weapon_knuckle_description = "Mesa perfecten fur knockingen out mesa gold dentas, o mesa asen a giften to mesa trophy partnassen who haven everyting.",
		weapon_knife_description = "Disen carbonen steelen 7\" bladeden knife is dualen edgeden withen a serrateden spine to providen improveden stabbingen and thrustingen capabiliten.",
		weapon_machete_description = "America's Westen African armsen trade isn't justen bout given. Rediscoveren mesa simplen life withen disen rusty cleaven.",
		weapon_switchblade_description = "Fromen your pocketen to hilt-deepen in mesa other guy's ribs in underen a seconden: foldingen knives will nevergo outen of style-en.",
		weapon_nightstick_description = "24\" polycarbonate side-handled gaddeng stick.",
		weapon_wrench_description = "Disa treesome for dems apocalyptical survivalista and unspirited fathers everywhere, 'pparently it'sa doubles asen some kinda toolen.",
		weapon_battleaxe_description = "If it'sen gudden enoughen for medieval feetsoldiers, modern border guardens en pushy soccer mums, it'sen gudden enoughen for yousa.",
		weapon_poolcue_description = "Ah, der isen no-sa sounden asen satisfying asen the cracken of asen perfecten breaken, specially when it'sen the udder guy'sa spine.",
		weapon_stone_hatchet_description = "Yousa ax for choppin', been in production for 2.5 million Naboo Moons.",
		weapon_candycane_description = "A festive candy cane. It's a bit gooey, mesa suggesten not eatin'.",

		weapon_pistol_description = "Standard blaster. A .45 caliber combat pistol with a magazine capacity of 12 rounds that can be extended to 16.",
		weapon_pistol_mk2_description = "Balancen, simplicity, precision: nothin' keeps da peace like an extended barrel in da other guy's mouth.",
		weapon_combatpistol_description = "A compact, lightweight semi-automatic blaster designed for law enforcement and personal defense use. 12-round magazine with option to extend to 16 rounds.",
		weapon_appistol_description = "Este pistol de alicañería totalmente automático y de alta penetración tiene una capacidad de 18 rondas en su tambor, con la opción de extenderse hasta 36 rondas.",
		weapon_stungun_description = "¡Una diversión zaptástica para toda la familia!",
		weapon_pistol50_description = "Nunca dispares a un hombre de calibre grande con una bala de calibre pequeño.",
		weapon_snspistol_description = "Como condones o spray para el cabello, esto cabe en tu bolsillo para una noche en la ciudad. El costo de una botella en un club, es la mitad de preciso que un corcho de champán, y el doble de mortal.",
		weapon_snspistol_mk2_description = "Da ultimate purse filler: if yousa wanten to make Saturday Night really special, disa is yousa ticket.",
		weapon_heavypistol_description = "Da heavyweight champion of da magazine fed, semi-automatic handgun world. Delivers accuracy and a serious forearm workout every time.",
		weapon_vintagepistol_description = "What yousa really needen issa more recognizable gun. Standen out from da crowd at an armed robbery with disa engraved pistol.",
		weapon_flaregun_description = "Usen to signal distress or drunken excitement. Warning: pointing directly at individuals may causes spontaneous combustion. Part of Heists.",
		weapon_marksmanpistol_description = "Meesa no recommend for da ones who afraid of taking risks. Yousa need to shoot accurately, as yousa will be reloading as much as shooting.",
		weapon_revolver_description = "A pistol dat has enough powa to take down even da craziest rhino, and heavy enough to beat it to death if yousa run out of ammo.",
		weapon_revolver_mk2_description = "If yousa strong enough to lift it, dis is da closest thing yousa can get to shooting someone with a freight train.",
		weapon_doubleaction_description = "Sometimes revenge is da dish best served six times, in quick succession, right between da eyes.",
		weapon_raypistol_description = "Republican Space Ranger Special, mooey-mooey fresh from da galactic war on socialism: no ammo, no mag, just one brutal energy pulse after another.",
		weapon_ceramicpistol_description = "Not yousa grandma's ceramics. Although dis pint-sized pistol is small enough to fit into her purse und won't set off a metal detector.",
		weapon_navyrevolver_description = "A true museum piece. Yousa want to know how da West was won - slow reload speeds und a whole heap of bloodshed.",
		weapon_gadgetpistol_description = "A deadly shot. Don't be pree-sious. Yousa won't scuff da titanium nitride finish.",
		weapon_stungun_mp_description = "Zap-zappy fun for da whole family!",
		weapon_pistolxm3_description = "A compact, lightweight pistol dat fires 9mm rounds. Berry effective for close range encounters.",

		weapon_microsmg_description = "Combines compact design with a high rate of fire at approximately 700-900 rounds per minute. Yousa gonna love it!",
		weapon_smg_description = "This is known as a good all-around submachine gun. Lightweight with an accurate sight and 30-round magazine capacity. Perfect for da Gungan warriors!",
		weapon_smg_mk2_description = "Lightweight, compact, with a rate of fire to die very messily for: turn any confined space into a kill box at the click of a well-oiled trigger. Muy muy deadly!",
		weapon_assaultsmg_description = "A gudungu with high-capacity dat is both compact and lightweight. Holds up to 30 bullets in one magazine.",
		weapon_combatpdw_description = "Who say personal weaponry couldn't be worthy of military personnel? Tanks to our lobbiests, not Congress. Integral suppressor.",
		weapon_machinepistol_description = "Dis fully automatic is da snare drum to yo twin-engine V8 bass: no drive-by sounds quite right without it.",
		weapon_minismg_description = "Increasin'ly popular since da marketin' team looked beyond spec ops units and started carin' about da little guys in low-income areas.",
		weapon_raycarbine_description = "Republican Space Ranger Special. If yousa want to turn a litta green Gungan into litta green goo, dissa be da only American way to do it.",

		weapon_pumpshotgun_description = "Standard shotgun ideal for short-range combat. A high-projectile spread makes up for its lower accuracy at long range.",
		weapon_pumpshotgun_mk2_description = "Only one ting pumps more action den a pump action: watch out, da recoil issen almost as deadly as da shot.",
		weapon_sawnoffshotgun_description = "Dis single-barrel, sawed-off shotgun compensates for its low range and ammo capacity with devastating efficiency in close combat.",
		weapon_assaultshotgun_description = "Fully automatic shotgun with 8 round magazine and high rate of fire.",
		weapon_bullpupshotgun_description = "It'sa got slower rate o' fire, but makes it up wit' better range and wider spread. Decimates anythin' in its projectile path.",
		weapon_musket_description = "Armed wit' nothin' but muskets an' a superiority complex, da Brits took ova' half da galaxy. Own the gun dat built an Empire.",
		weapon_heavyshotgun_description = "Da weapon to reaching fo' when yousa absolutely need to make a horrible mess o' da room. Best used near easy-wipe surfaces only.",
		weapon_dbshotgun_description = "Yousa do one ting, do it good. Whosa needsa high fire rate when yousa first shot turns the other guy into a fine mist?",
		weapon_autoshotgun_description = "How many effective tool for riot control can yousa tuck into your pants? OK, two. But this is the other one.",
		weapon_combatshotgun_description = "Theresa only one semi-automatic shotgun with a fire rate that sets the LSFD alarm bells ringing, and yousa looking at it.",

		weapon_assaultrifle_description = "Thisa standard assault rifle boasts a large capacity magazine and long-distance accuracy.",
		weapon_assaultrifle_mk2_description = "Da definitive revision of an all-time classic: all it takes is a little work, and looks can kill after all.",
		weapon_carbinerifle_description = "Combining long-distance accuracy with a high-capacity magazine, da Carbine Rifle can be relied on to make da hit.",
		weapon_carbinerifle_mk2_description = "Dis is bespoke, artisan firepower: yousa couldn't deliver a hail of bullets with more love and care if yousa inserted them by hand.",
		weapon_advancedrifle_description = "Da most lightweight and compact of all assault rifles, without compromising accuracy and rate of fire.",
		weapon_specialcarbine_description = "Dis be a versatile assault rifle fo' any combats wif accuracy, maneuverability, firepower, and low recoil.",
		weapon_specialcarbine_mk2_description = "Dis here gun be da jack of all trades dat got a major upgrade: bow down to its mastery.",
		weapon_bullpuprifle_description = "Dis rifle be tha latest import from China, bein' known fo' its balanced handlin', light weight, and very controllable automatic fire.",
		weapon_bullpuprifle_mk2_description = "So precise, so exquisite, it be more like a beautiful symphony den a hail of bullets.",
		weapon_compactrifle_description = "Da CompacRifle: Halfa da size, all da power, double da recoil! It'sa lika sayin', 'Mesa compensatin' for sometin'!'",
		weapon_militaryrifle_description = "Disa immensely powerful assault rifle wassa designed for highly qualified, exceptionally skilled soldiers. But, mesa givin' it to yousa anyways.",
		weapon_heavyrifle_description = "Heaviera means betta right?! Yea, let'sa go with dat.",
		weapon_tacticalrifle_description = "Disa season's must-hava hardware for law enforcement, military personnel, and anyone locked in a fight to da death with either law enforcement or military personnel.",

		weapon_mg_description = "Mesa general purpose machine gun dat combins rugged design with dependable performance. Long range penetrative power. Berry effective against large groups.",
		weapon_combatmg_description = "Lightweight, compact machine gun dat combins excellent maneuverability with a high rate of fire to devastating effect.",
		weapon_combatmg_mk2_description = "Yousa can neva have too much of a good ting: after all, if the first shot counts, then the next hundred or so must count for double.",
		weapon_gusenberg_description = "Complete yousa look with a Prohibition gun. Looks great sticking out the window of a Roosevelt or paired with a pinstripe suit.",

		weapon_sniperrifle_description = "Dis is da standard sniper rifle. Ideal for situations dat require accuracy at long range. Limitations include slow reloadin' speed and very low rate of fire.",
		weapon_heavysniper_description = "Dis weapon features armor-piercin' rounds for heavy damage. Comes wit laser scope as standard.",
		weapon_heavysniper_mk2_description = "Far away, yet always intimate: if you's lookin' for a secure foundation for dat long-distance relationship, dis is it.",
		weapon_marksmanrifle_description = "Whether you's up close or a disconcertingly long way away, dis weapon will get da job done. A multi-range tool for tools.",
		weapon_marksmanrifle_mk2_description = "Called \"The Dislocator\" among Gungan warriors. This modification will blast the target into oblivion, but can also dislocate your shoulder if you're not careful.",
		weapon_precisionrifle_description = "A rifle for Gungan who seek only the most accurate shots. Because why settle for a good hit, when you can hit the target through the superior frontal gyrus?",

		weapon_rpg_description = "This weapon, known as the \"Bombo Ball\" to Gungan fighters, is a portable, shoulder-launched, anti-tank weapon that can launch explosive warheads. It's very effective for taking down vehicles or large groups of assailants.",
		weapon_grenadelauncher_description = "A compacta, ligata grenade launcha wid semi-automatic function. Capable to hold up to 10 roun's.",
		weapon_grenadelauncher_smoke_description = "\"Yousa get a smoke grenade, yousa get a smoke grenade, evrybody get a smoke grenade!\" - Oprah",
		weapon_minigun_description = "A devastatin' 6-barrel machine gun dat feature Gatlin-style rotatin' barrels. High rate of fire (2000 to 6000 rounds per minute).",
		weapon_firework_description = "Put da flair back in flare wid dis firework launcha, guaranteed to raise some oohs and aahs from d'e crowd.",
		weapon_railgun_description = "Alla yousa needen to know issen - magnets, and it does horrible things to da things it's pointed at.",
		weapon_hominglauncher_description = "Infrared und guided fire-and-forget missil launcher. Fosa all yousa moven target needs.",
		weapon_compactlauncher_description = "Focus groups usen da regular model suggested it was too accurate and found it awkward to usen with one hand on da throttle. Easy fix.",
		weapon_rayminigun_description = "Republican Space Ranger Special. GO AHEAD, SAY I'M COMPENSATING FOR SOMETHING. I DARE YOUSA.",
		weapon_emplauncher_description = "Yousa shoot dis at drones and airships to maken dem sleepy.",
		weapon_stinger_description = "A shoulder-launched surface-to-air missile launcher for destroyin enemy fly-monsters.",
		weapon_railgunxm3_description = "All yousa need to know is - magnets, and it doin horrible things to the things it's pointed at. Be careful with dis one.",

		weapon_grenade_description = "Usen for destroyin groups of unfriendly creatures. Pull pin, throw, then find cover.",
		weapon_bzgas_description = "Use dis for hot-boxin people yousa don't liken.",
		weapon_molotov_description = "Crude-yet-highly effective incendiary weapon. No happy hour wit' dis cocktail.",
		weapon_stickybomb_description = "A plastic explosive charge fitted wit' a remote detonator. Can be tossed and denoted or stuck to a vehicle and denoted.",
		weapon_proxmine_description = "Leave a present to yer amigos wit' dese motion sensor landmines. Short delay after activation.",
		weapon_snowball_description = "Be on da lookout and ready to round up yer crew for a friendly snowball fight, but be forewarned, dose icy li'l suckers can pack a wallop.",
		weapon_pipebomb_description = "Mesa remindin yousa, it no countin as an IED when yousa buyin it in a store and usin it in a first world country.",
		weapon_ball_description = "Signed by Babe Ruth, totally not a fake. Yousa bombad at humieball!",
		weapon_smokegrenade_description = "Tear gas grenade, particularly effective at incapacitatin multiple assailants. Sustained exposure can be lethal. Yousa wanna stay away, muy muy smelly!",
		weapon_flare_description = "Toss dis to call for an air drop.",
		weapon_acidpackage_description = "A package of acid. Use it to make a mess. Yousa no wanna drink it!",

		weapon_petrolcan_description = "Leaves a trail of gasoline that can be ignited.<br><br>Gasoline remaining: ${petrolAmount}%. Yousa can makea big fire with dis.",
		gadget_parachute_description = "Dis nylon sports parachute features a ram-air parafoil designen for increased controlen over directionen and speeden.",
		weapon_fireextinguisher_description = "Dis Fire extinguisher aka \"Smokey machine\".",
		weapon_hazardcan_description = "Like a gas can, but ion't doo doo anythingen.",
		weapon_fertilizercan_description = "Good ol can of patooie, nutten betteren for your crops.",

		red_parachute_description = "Justen liken the normalen parachuteen buten in reden.",
		blue_parachute_description = "Justen liken the normalen parachuteen buten in blueen.",
		black_parachute_description = "Disa jus like da normal parachute, bud in black.",

		-- NOTE: Addon weapons
		weapon_addon_huntingrifle = "Hunting Rifle",
		weapon_addon_huntingrifle_description = "Yor go-to rifle fo huntin' purposes.",

		weapon_addon_vfcombatpistol = "VF Combat Pistol",
		weapon_addon_vfcombatpistol_description = "Smilin' and waitin' fo da flash.",

		weapon_addon_dp9 = "D&P 9 Pistol",
		weapon_addon_dp9_description = "12 chanses to catch da Dub.",

		weapon_addon_dutypistol = "SIG Sauer P226",
		weapon_addon_dutypistol_description = "Da original wireless home protection system.",

		weapon_addon_gardonepistol = "Gardone Pistol",
		weapon_addon_gardonepistol_description = "Wesa don'tsa know 'bout dis, but emptyin' da magazine seem lika gooda plan.",

		weapon_addon_endurancepistol = "Endurance Pistol",
		weapon_addon_endurancepistol_description = "Da Viagra of handguns, dissa.",

		weapon_addon_sentinelshotgun = "Sentinel Shotgun",
		weapon_addon_sentinelshotgun_description = "Murder Dispenser goin' in one direction only.",

		weapon_addon_sentinelbbshotgun = "Beanbag Shotgun",
		weapon_addon_sentinelbbshotgun_description = "Bags of fun these ones are.",

		-- TODO: Add a description for this one
		weapon_addon_stungun = "Coil Stun Gun",
		weapon_addon_stungun_description = "Dis is fun zap fo da whole family!",

		weapon_addon_mp9 = "B&T MP9",
		weapon_addon_mp9_description = "Small and Quick, kinda lika da person holding dis...",

		weapon_addon_rc4 = "Remington R4-C",
		weapon_addon_rc4_description = "Feisty an quick, da perfect partner to have in yer squad. As long as da red head isn't holding it.",

		weapon_addon_pp19 = "PP-19 Vityaz",
		weapon_addon_pp19_description = "Da pinnacle of Russian excellence, perfect fo any kind of \"Raid\".",

		weapon_addon_m9a3 = "Beretta M9A3 Gungan",
		weapon_addon_m9a3_description = "Mesa helpin yousa gettin' dirty deed done dirt cheap.",

		weapon_addon_357mag = "357 Magnum Gungan",
		weapon_addon_357mag_description = "From traffic stops to zombies, dis here revolver issen a sheriffs bestest uh-friend.",

		weapon_addon_m870 = "Remington M870 Gungan",
		weapon_addon_m870_description = "Perfecto sport and hunting shotgun, although shootin' dannys isn't really a sport... issen it?",

		weapon_addon_rpk16 = "RPK-16 Gungan",
		weapon_addon_rpk16_description = "Da most perfecto machine gun to ever exist, just don't forget da tracksuit.",

		weapon_addon_tacknife = "Mesa Ultimate Tactical Knife",
		weapon_addon_tacknife_description = "Yousa reachin' level 100. Da Colonel would be proud.",

		weapon_addon_reaper = "Reaper",
		weapon_addon_reaper_description = "Machete but fancier.",

		weapon_addon_berserker = "Berserker",
		weapon_addon_berserker_description = "Cool axe.",

		weapon_addon_katana = "Katana",
		weapon_addon_katana_description = "Ninja, yeah.",

		weapon_addon_stidvc = "STI DVC 2011",
		weapon_addon_stidvc_description = "Da future issa now old grandee, justen in a smalla caliber...",

		weapon_addon_g36c = "Heckler & Koch G36C",
		weapon_addon_g36c_description = "Dimensions of submachine gun, loaded with the power of 5.56 mm NATO round. Specially designed for police and military special forces.",

		weapon_addon_vandal = "RGX Vandal",
		weapon_addon_vandal_description = "Valorant pog.",

		weapon_addon_ak74 = "AK-74",
		weapon_addon_ak74_description = "Stay connected or give applause.",

		weapon_addon_p320b = "P320",
		weapon_addon_p320b_description = "We're not in London anymore bruv.",

		weapon_addon_mk18 = "MK18",
		weapon_addon_mk18_description = "\"Stay strapped or get clapped\" - George Washington (Probably)",

		weapon_addon_glock = "Glock 17",
		weapon_addon_glock_description = "Mesa popular handgunin da whole galaxy.",

		weapon_addon_colt = "Colt 1851 Navy",
		weapon_addon_colt_description = "Da original revolva, da one dat stahted it all.",

		weapon_addon_hk433 = "H&K 433",
		weapon_addon_hk433_description = "Da H&K 433 is a German assault rifle dat wuz developed by Heckler & Koch in 2009.",

		weapon_addon_m6ic = "LWRC M6IC",
		weapon_addon_m6ic_description = "Dunna hava perfec gun for the perfec person, jus don't faget da tracksuit.",

		weapon_addon_hk416 = "H&K 416",
		weapon_addon_hk416_description = "Da H&K 416, da Ferrari ob firearms - sleek, powerful, and guaranteed to turn heads. It's like havin' a personal trainer fer yer trigger finger, delivering results dat'll make yer enemies jealous. Say hello to yer new BFF (Best Firearm Forever)!"
	},

	items = {
		move_to_repair = "Mesa here fer repair da vehicle.",
		repairing_vehicle = "Mesa repairing vehicle",
		using_first_aid_kit = "Mesa using first aid kit",
		using_bandages = "Mesa using bandages",
		using_ifak = "Mesa using IFAK",
		move_to_wash = "Mesa moveen here to wash da vehicle",
		vehicle_too_clean = "Da vehicle is too clean to be washed-o.",
		move_to_put_fake_plate = "Mesa moveen here to put on a fake license plate-o.",
		unable_to_repair = "Yousa unable to mesa repair da vehicle while there are players inside-o.",
		failed_lockpicking = "Failed Lockpicking-o.",
		lockpicking_succeeded = "Lockpicking-o succeeded.",
		hotwiring_vehicle = "Klankdropin' vehkle",
		lockpick_broke = "Lockpick brokk",
		failed_hotwire = "De hotwire wuz a failure",
		unpacking_green_rolls = "Unpackin' green rolls",
		you_do_not_have_enough_rolling_paper = "Yousa no have nuff rollin paper.",
		rolling_joint = "Rollin' joint",
		rolling_joints = "Rollin' Joints",
		changing_license_plate = "Changin' License Plate",
		equipping_parachute = "Equippin' ${itemName}",
		lockpicking_vehicle = "Lockpickin' vehkle",
		illegal_weather_name = "Attemptin' to use a weather spell with an illegal weather name.",
		equipping_body_armor = "Equippin body armor!",
		illegal_burger_shot_delivery_item_id = "Yousa attemptin to use a burger shot delivery item with an illegal item id.",
		illegal_lighter_item_id = "Yousa attemptin to use a lighter item with an illegal item id.",
		unable_to_use_lighter_in_vehicle = "Yousa not able to use a lighter in a vehicle.",
		not_possible_in_a_vehicle = "This action issen possible in a vehicle.",
		just_used_bandage = "Yousa just used a first aid kit, wait a bit before usin another one.",
		drank_gasoline_death = "Gasoline poisonin",
		drank_bleach_death = "Dansen Poisoning",

		failed_burger_shot_delivery = "Meesa fail to open burgershot meal.",
		failed_bean_machine_delivery = "Meesa fail to open bean machine delivery.",

		burger_shot_delivery_empty = "That burgershot meal seem empty.",
		bean_machine_delivery_empty = "That bean machine delivery seem empty.",

		logs_used_weather_spell_title = "Used Weather Spell",
		logs_used_weather_spell_details = "${consoleName} used weather spell `${itemName}`.",

		you_have_used_jail_card = "Yousa have used a 'get out of jail card'!",
		you_are_not_in_jail = "Mesa say un jail",

		stored_map_location = "Wesa bombed it location on da map succesfully!",
		failed_location_map = "Failed to update map location. *Gungan sigh*",
		updated_waypoint = "Wesa set waypoint to da bombed it location on da map.",

		cleared_map = "Mesa cleared da location from da map.",
		failed_clear_map = "Mesa no could clear da location.",
		clear_map_invalid_slot = "Invalid inventory slot. Mesa no understand."
	},

	jackpot = {
		press_to_deposit = "Press ~INPUT_REPLAY_SHOWHOTKEY~ to deposit items to the Online Jackpot. *Gungan happy dance*",
		can_only_withdraw_at_casino = "You can only withdraw at the Casino. *Gungan head scratch*",

		jackpot = "Jackpoth",
		inventory = "Inventory-h",
		history = "History-h",
		no_items_in_inventory = "Mesa-look like yous havena any items in yoursa virtual inventory-h.",
		you_can_deposit_at_the_casino = "Yous can deposit items at da casino-",
		close = "Close-h",
		bet = "Bet-h",
		your_chance = "Yoursa Chance-h: ${chance}%-h",
		character_bet = "${characterName} bet ${itemAmount} item(s) mesa-worth $$${itemWorth}",
		pot = "Pot-h: $$${jackpotWorth}",
		items = "Items-h: ${jackpotItemAmount}",
		withdraw = "Withdraw (${withdrawAmount})-h",
		quick_sell = "Quick Sell ($$${quickSellWorth})-h",
		inventory_value = "Value: $${inventoryWorth}",
		inventory_total_items = "Total Items: ${inventoryTotalItems}",
		daily_fee_information = "At 6AM UTC every day, items worth >= 5% of your total inventory value will be removed as a 'storage fee'.",

		take_fee_no_permissions = "Tesa attempted to take jackpot fees without proper permissions.",
		took_jackpot_fees = "Tesa took jackpot fees. Removed ${removedTotalItems} items worth $${removedTotalWorth} from ${inventories} inventories."
	},

	jail = {
		press_to_leave_jail = "Press ~INPUT_CONTEXT~ to leave jail.",

		menu_title = "Jailen Menu",
		check_remaining_time = "Checken remainenden tijden",
		leave_city = "Leaven de Stad",
		leave_jail = "Leaven de Gevangenissen",
		close_menu = "Sluiten Menu",

		sentence_reduced = "Jouw zin is vermindert door ${amount} maanden, je heb nog ${remaining} maanden over.",
		sentence_over = "Jouw zin is voorbij.",
		remaining_time = "Resterende Tijd: ${remaining} maanden.",
		jailed = "Je bent gevangengezet voor ${amount} maanden.",

		mission_help_1 = "Druk op ~INPUT_CONTEXT~ om de vloer schoon te maken.",
		mission_help_2 = "Druk op ~INPUT_CONTEXT~ om iets te eten.",
		mission_help_3 = "Meesa press ~INPUT_CONTEXT~ to work out.",

		mission_1 = "Cleaning da floor.",
		mission_2 = "Eating a sandwich.",
		mission_3 = "Working out.",

		mission_blip = "Jail Mission"
	},

	kiosks = {
		read_catalog = "Meesa press ~g~${InteractionKey} ~w~to read Catalog"
	},

	leashes = {
		press_to_use_leash = "[${InteractionKey}] Use Leash",
		putting_leash_on = "Meesa putting Leash On",
		press_to_take_leash_off = "[${InteractionKey}] Take Off Leash",
		takeing_leash_off = "Taking Leash Off."
	},

	letterboxes = {
		press_to_access = "Press ~g~${SeatEjectKey} ~w~to accessen the ${type}",
		letterbox_broken = "Da ${type} issen broken.",

		type_letterbox = "Letterbox",
		type_newsdisp = "News dispensa",
		type_postbox = "Postbox"
	},

	locate = {
		invalid_filter_value = "Invalid filter value.",
		locate_failed = "Failed to locate entity matching `${filter}`.",
		something_went_wrong = "Mesa no find entity.",
		locate_success = "Yousa got the entity matching `${filter}` at (${x}, ${y}, ${z}) (instance = ${instance}).",

		locate_entity_no_permissions = "Thissa player no gots permission to locate an entity.",

		locate_entity_logs_title = "Located Entity",
		locate_entity_logs_details = "${consoleName} attempted to locate entity type `${filterType}` with value `${filterValue}`."
	},

	login = {
		exit_city = "Exit the city.",
		press_to_exit_city = "Press ~g~${InteractionKey} ~w~to exit the city.",
		bad_words_in_character_creation = "Mesa tried to create a new character with a possibly bad word in either dalee name or backstory: \"${badWords}\"",
		disallowed_words_in_character_name = "Mesa tried to create a new character with a possibly bad name: \"${characterName}\"",
		disallowed_birthday_ban = "Mesa tried to create a new character with a possibly bad birthday: \"${birthday}\"",

		welcome_to = "Welcome to",
		press = "Press",
		enter = "ENTER",
		to_join = "to join",
		changelogs = "Changelogs",
		fetching_character_data = "Fetching Character Data...",
		yes = "Yosa",
		no = "Nosa",
		exit_game = "Exity Bombad",
		are_you_sure_you_want_to_exit = "Yousa sure you want to exity the game?",
		exiting_game = "Exiting Bombad...",
		delete_character = "Delete",
		select_character = "Select",
		new_character = "New Character",
		empty_slot = "Empty Slot",
		male = "Mali",
		female = "Femali",
		name = "Naboo",
		dob = "DOB",
		born = "Born on ${dob}",
		gender = "Genosian",
		cash = "Money",
		bank = "Bank",
		story = "History",
		loading_character = "Loading Bombad...",
		deleting_character = "Deleting Bombad...",
		create_character = "Yusa create a character",
		first_name = "Mesa furst name",
		last_name = "Mesa last name",
		date_of_birth = "Mesa date of birth",
		character_backstory = "Yusa backstory",
		cancel = "Cancel",
		complete = "Complete",
		creating_character = "Mesa creating character...",
		are_you_sure_you_want_to_delete = "Yousa sure yousa want to delete dissen character? Dissen action cannot be undone.",
		stop_download = "Stop downloadin",
		start_download = "Start downloadin",
		slow_download = "Slow downloadin",
		regular_download = "Regular downloadin",
		back = "Ohh-nay",
		copy_license = "License ID",
		copy_license_success = "Meesa copied it!",
		cache_assets = "Cache Assets",
		download_assets = "Yousa want to downloado and cacheno most of tha server's assets? Doin' dat gonna lead to a few things:",
		cache_assets_less_lag = "Potentially less lag spikes, less dropped frames and less ping spikes during gameplay. Espeshially if yousa on lower-end hardware or a slower connection.",
		cache_assets_crashes = "It may crash your game during the process. If disn happen, use the 'slow download' option instead.",
		cache_assets_restart = "Mesa suggest yousa restartin' ya game once mesa done, as it may cause some lag for da rest of dis session.",
		cache_assets_disk = "Dis gonna take up a bit of disk storage, so make sure there's plenty of space. After an update, mesa also suggest clearin' ya old cache to make room for more.",
		vehicles = "Wheels",
		objects = "Gessos",
		peds = "Binks",
		clothing = "Zabit",
		main_menu = "Main Menu",
		gta_settings = "GTA Settin's",
		discord = "Disco",
		framework = "Framework",
		rules = "Server Rules",
		notice = "Neesa",
		language = "Language-o",
		support_the_server = "Supporto the Server",
		battle_royale = "Battle Royale-o",
		arena = "Arena-o",
		queue = "Qwewe",
		queue_position_with_priority = "🐌 Yosa are ${queuePosition}/${queueTotal} en da qwewe with ${queuePriorityName} priority. 🕐${queueTime}",
		queue_position_without_priority = "🐌 Yosa are ${queuePosition}/${queueTotal} en da qwewe. 🕐${queueTime}",
		you_are_through = "Yosa are through!",
		join_server = "Join-la Server",
		tired_of_queueing = "Tired-en of queueing? Supporto us-en for queue priority-o!",
		joining_battle_royale = "Yousa Joinin' Battle Royale",
		joining_arena = "Yousa Joinin' Arena",
		refresh = "Refresh",
		refreshing = "Refreshin'...",

		missing_character_creation_data = "Mesa no findin' character creation data.",
		invalid_first_name = "Mesa no findin' or invalid first name (2 to 100 characters).",
		invalid_last_name = "Mesa no findin' or invalid last name (2 to 100 characters).",
		invalid_date_of_birth = "Mesa no findin' or invalid date of birth.",
		invalid_backstory = "Mesa no findin' or invalid backstory (1 to 5,000 characters).",

		bad_words = "There are some bad words in yousa character name or backstory.",
		disallowed_name = "Mesa sorry, yousa can't use daten name. Itsa not allowed.",
		disallowed_birthday = "Yousa date of birden is not allowed.",
		numbers_not_allowed = "Numbers not allowed in character name. Yousa must choose a name without dem.",
		something_went_wrong = "Oops, mesa sorry. Dere was some kinda mistak happenin' while creating yousa character. Maybe try again later?",
		character_slot_occupied = "Sorry, dissa character slot already taken. Try another one.",
		name_already_taken = "Dis name is already taken. Try anoda one.",
		illegal_character_slot = "Mesa sorry, yousa not allowed to create a character in dissa slot.",
		character_already_loaded = "Yousa already have a character loaded. No need to load again.",

		new_citizen = "Mooie Nuyen",
		los_santos_police_dept = "LOS SANTOS POLICE DEPT",

		welcome_msg_title = "Yosa Welcome to ${communityName}!",
		welcome_msg = "Yousa hava received somen items to helpen yousa getten started. Yousa can usen duh items in yousa hotbar usingen duh 1-5 keys.\n\n*Pressen duh 1 key to readen yousa brochure.*",

		press_to_go_back_to_menu = "Press ~g~${InteractionKey}~w~ to go backen to duh menu.",
		go_back_to_menu = "Gosa backen to duh menu.",

		developer = "Developer",
		super_admin = "Super Admin",
		staff = "Staff",
		reconnect = "Reconnect",
		christmas = "Chriis-mas-sa",
		casino = "Ca-siis-no",
		random = "Randoom",
		beginner = "Be-giin-ner",
		custom = "Cuustom",

		appreciated_tier = "Ap-pre-ciia-ted Tier",
		respected_tier = "Re-spect-ed Tier",
		heroic_tier = "He-ro-ic Tier",
		legendary_tier = "Le-gen-dar-y Tier",
		godlike_tier = "God-liik-e Tier"
	},

	loot = {
		press_to_pick_up = "Pressa ~INPUT_CONTEXT~ too piick up ${itemLabel}."
	},

	lottery = {
		lottery_announcement = "Lottere An-nounce-ment",
		lottery_about_to_roll = "A winner will be draawwn in 5 miinutes for today's lottery. The tootaal pot is currently at $${totalPot} wher-e yooou hav-e put in $${betAmount}. Your chance of winning is ${odds}%.",
		current_lottery_pot = "Mesa total pot issa currently at $${totalPot} where yousa putten in $${betAmount}. Yousa chance of winning issa ${odds}%.",
		drew_a_lottery_winner = "Mesa picked a winner for da lottery!",
		roll_lottery_no_permission = "Disa player attempted to roll da lottery but hassa no permission to do so.",
		winner_has_been_picked = "${fullName} hasa won da lottery pot of $${totalPot}! Theys bet $${betAmount} and their chance of winning wassa ${odds}%.",
		claimed_lottery_winnings = "Claimed all lottery winnings.",
		no_lottery_winnings = "Mesa say unclaimed lottery winnings, yousa will not win now.",
		internal_server_error = "Oopsie daisy, mesa made an internal server error. Help mesa fix!",
		use_disabled_animal = "Nosa, yousa cannot use the lottery as an animal ped.",

		lottery_log_title = "Mesa won the Lottery!",
		lottery_log_description = "${fullName} (#${characterId}) has won the lottery pot of $${totalPot}. They bet $${betAmount}."
	},

	lucky_wheel = {
		hold_to_spin_lucky_wheel = "Hold ~INPUT_CONTEXT~ to spin the Lucky Wheel. Da cost is $${cost}.",
		hold_to_spin_lucky_wheel_free_one_left = "Hold ~INPUT_CONTEXT~ to spin da Lucky Wheel. Yousa have 1 free spin left today.",
		hold_to_spin_lucky_wheel_free_multiple_left = "Hold ~INPUT_CONTEXT~ to spin da Lucky Wheel. Yousa have ${spins} free spins left today.",
		continue_holding_to_spin_lucky_wheel = "Continue holding ~INPUT_CONTEXT~ to spin da Lucky Wheel.",
		unable_to_spin_lucky_wheel = "Mesa sorry, yousa already spinned the Lucky Wheel as much as permitted today. Next spin available in ${time}.",
		not_enough_balance_to_spin = "Meesa sorry, you do not have enough money to spin the wheel. The cost is $${cost}.",
		lucky_wheel_is_occupied = "The Lucky Wheel is currently occupied. Please wait.",

		logs_lucky_wheel_reward_title = "Lucky Wheel Reward",
		logs_lucky_wheel_reward_vehicle_details = "${consoleName} mesa spun da wheel an' won a vehicle.",
		logs_lucky_wheel_reward_vehicle_given_details = "${consoleName} mesa bombadly been given a vehicle wit da model name `${modelName}`.",
		logs_lucky_wheel_reward_money_details = "${consoleName} mesa spun da wheel an' won $${amount}.",
		logs_lucky_wheel_reward_chips_details = "${consoleName} has spinned da wheel and won $${amount} worth of chips.",
		logs_lucky_wheel_reward_jewelry_details = "${consoleName} mesa spun da wheel an' won jewelry wit da name of `${itemName}`.",
		logs_lucky_wheel_reward_item_details = "${consoleName} mesa spun da wheel an' won an item wit da name of `${itemName}`.",
		logs_lucky_wheel_reward_queue_priority_details = "${consoleName} has spun da wheel and won one week of da queue priority."
	},

	magazines = {
		issue_id = "Gefello Issue #${issueId}",
		releases_updated = "Releases updated.",
		no_release_changes = "Meesa no see any changes in da releases.",
		refresh_magazines_no_permissions = "Player trieden to refresh their magazines without da proper permissions."
	},

	mdt = {
		mdt_title = "Mobile Data Terminal",
		loading_reports = "Loading Reports...",
		failed_report_load = "Failed to loaden any da reports.",
		no_reports = "No reports found for yousa.",
		loading = "Ch’oy vosa...",

		title_placeholder = "Tayli",
		body_placeholder = "Longo kwa report..."
	},

	mechanics = {
		move_here_check = "Mova here ta check fowa upgrades",
		checking_upgrades = "Checkin’ Vehicle Upgrades",
		upgrades_list = "${armor}, ${engine}, ${brakes}, ${transmission} an’ ${turbo}.",

		has_no_turbo = "has no turbo installed",
		has_turbo = "has a turbo installed",

		armor_0 = "No Armor",
		armor_1 = "Armor Upgrade 20%",
		armor_2 = "Armor Upgrade 40%",
		armor_3 = "Armor Upgrade 60%",
		armor_4 = "Armor Upgrade 80%",
		armor_5 = "Armor Upgrade 100%",

		brakes_0 = "Goooood Brakes",
		brakes_1 = "Street Brakes",
		brakes_2 = "Sporty Brakes",
		brakes_3 = "Race Brakes Bombad!",

		transmission_0 = "Goooood Gearbox",
		transmission_1 = "Street Gearbox",
		transmission_2 = "Sporty Gearbox",
		transmission_3 = "Race Gearbox Bombad!",

		engine_0 = "Goooood Engine",
		engine_1 = "Engine EMS Level 2",
		engine_2 = "Engine EMS Level 3",
		engine_3 = "Engine EMS Level 4",
		engine_4 = "Engine EMS Level 5",

		no_nearby_vehicle = "Me no see any vehicles around.",
		already_checking_upgrades = "You no can be checkin' tunes while already checkin' one car.",
		engine_is_running = "Da vehicula engine is running."
	},

	meth = {
		press_to_sell_meth = "Pressn ~INPUT_CONTEXT~ to sell Meth.",
		local_not_interested = "Da local no seem to be interested right now.",
		selling_meth = "Selling Meth."
	},

	mining = {
		drill_scan_stone = "[${InteractionKey}] Scan Stone, [${SeatEjectKey}] Drill Stone",
		scan_stone = "[${SeatEjectKey}] Scan Stone",
		drill_stone = "[${InteractionKey}] Drill Stone",
		scanning_stone = "Scanning",
		drilling = "Drilling",
		failed_drill_stone = "Failed to drill stone.",
		drill_no_drops = "Yousa found no gems in disa stone.",
		drill_drops = "Yousa found somen gemsen in disa stone.",
		used_drill = "Yoursa drill broken.",
		still_shook = "Yousa still shaken up from da last explosion and didn't finden any gemsen in disa stone.",

		recharging_scanner = "Recharging Scanner ${percentage}% mesa",
		scanning = "Scanning ${percentage}% mesa",

		refine_gemstones = "[${InteractionKey}] Refinen Gemstones",
		refinery = "Refinery Table",
		exit_refinery = "Exit Refinery",
		no_gemstones = "Yousa no haven any raw gemstones.",
		refining = "Refining 1x ${gemstone}",
		refine_success = "Refined 1x ${gemstone}.",
		failed_refine = "Tis a failed attempt refining gemstone.",

		craft_rings = "[${InteractionKey}] Craft Rings (Gungan: Craft Ringsy)",
		no_crafting_items = "Yousa no have enough items to craft somesen here.",
		crafting = "Crafting 1x ${item} (Gungan: Crafting 1x ${item})",
		crafting_table = "Crafting Table (Gungan: Crafting Tablen)",
		crafting_success = "Crafted 1x ${gemstone} (Gungan: Crafted 1x ${gemstone}).",
		failed_crafting = "Tis a failed attempt crafting item.",
		exit_crafting = "Exit Crafting Table (Gungan: Exit Crafting Tablen)",

		engrave_ring = "[${InteractionKey}] Engrave Rings (Gungan: Engrave Ringsa)",
		no_engrave_items = "Yousa no have any rings.",
		exit_engraving = "Exit Engraving Table (Gungan: Exit Engraving Tablen)",
		engraving_table = "Engraving Table-goon",
		engraving = "Engraving-goon ${itemName}",
		engrave_message = "Engrave Message (max 100 characters)-goon",
		engrave_success = "Successfully engraved message onto-goon ${itemName}-goon.",
		failed_engrave = "Failed to engrave message.-goon",

		no_sellable_items = "Yousa have nussing dat yousa can sell here.-goon",
		exit_shop = "Exit Shop-goon",
		shop = "Gemstone Shop-goon",
		sell_gemstones = "[${InteractionKey}] Sell Gemstones-goon",
		local_price = "Local Price: $$${price}-goon",

		sold_gemstone = "Sold 1x ${gemstone} for $$${price}-goon.",
		failed_sell_gemstone = "Meesa sorry, selling gemstone failed.",
		failed_sell_no_item = "Yousa no have da item to sell.",
		failed_sell_cap = "Da vendor no wanna buy more of dat from yousa.",

		mining_sold_item_title = "Sold Gems",
		mining_sold_item_details = "${consoleName} sold 1x ${itemName} for $${price}.",

		mining_crafted_item_title = "Crafted Item",
		mining_crafted_item_details = "${consoleName} crafted 1x ${itemName}.",

		mining_refined_item_title = "Refined Gem",
		mining_refined_item_details = "${consoleName} refined 1x ${itemName}.",

		mining_mined_title = "Gat-mapa Mined",
		mining_mined_details = "${consoleName} mopo ${output}.",

		mining_exploded_title = "Gat-mapa Kaboom",
		mining_exploded_details = "${consoleName} ka-boomed wesa trying to mine a gem.",

		instability_0 = "Dis gemstone issa stable.",
		instability_1 = "Dis gemstone issa slightly unstable.",
		instability_2 = "Dis gemstone issa unstable.",
		instability_3 = "Dis gemstone issa very unstable.",

		exhausted = "Yousa feeling exhausted from being in da mine for so long.",
		very_exhausted = "Yousa feeling very exhausted from being in da mine for so long."
	},

	miscellaneous = {
		language_unavailable = "Mesa thinks language `${languageCode}` is not available right now. If yousa wanto create the localization for this language, feel mooie to join da OP-FW development discord ai guild for more information at ${frameworkDiscord}!",
		same_language = "Yousa already have ${languageCode} as yousa set language.",
		language_set = "Yousa preferred language has now been set to ${languageCode}.",
		current_language = "Current Language",
		available_language_codes = "Available Languages",
		ping_pong = "Pong!",
		ping_response = "${ping}ms (callback time: ${callbackTime}ms)",
		ooc_first_time = "Mesa seein' yousa haven't used /ooc yet! Befo' lettin' yousa use it, mesa would like to give yousa a small warnin'. Da /ooc command is only to be used in immediate situations, and all non-immediate questions or messages should be redirected towards our discord guild at ${communityDiscord}. Dat's all! To start usin' /ooc, type /ooc_on. Yousa will be able to turn it off again with /ooc_off.",
		ooc_not_logged_in = "Yousa not logged in.",
		ooc_timed_out = "Yousa currently timed out from da OOC chat. Please wait.",
		ooc_muted_no_reason = "Meesa muted yousa from da global OOC chat but mesa neva say why.",
		ooc_muted = "Mi muted yousa from da global OOC chat coz ${reason}.",
		global_ooc_title = "OOC ${playerDescriptor}",
		local_ooc_title = "LOCAL OOC ${playerDescriptor}",
		ooc_is_disabled = "Yousa disabled da global OOC chat.",
		ooc_enabled = "Global OOC issa now enabled.",
		ooc_already_enabled = "Global OOC issa already enabled.",
		ooc_disabled = "Global OOC issa now disabled.",
		ooc_already_disabled = "Global OOC issa already disabled.",
		ooc_local_logs_title = "Local OOC meesoojah",
		ooc_local_logs_details = "${consoleName} mesa da followin' meesoojah in da local OOC chat: `${oocMessage}`.",
		ooc_global_logs_title = "Global OOC meesoojah",
		ooc_global_logs_details = "${consoleName} mesa da followin' meesoojah in da global OOC chat: `${oocMessage}`.",
		bad_ooc_message = "Mesa tryin' to post a meesoojah dat might be bombad in da OOC chat: \"${oocMessage}\"",
		bad_ped_message = "Mesa tryin' to make a meesoojah dat might be bombad ped meesoojah: \"${pedMessage}\"",
		bad_twitter_post = "Mesa tryin' to make a meesoojah dat might be bombad twitter post: \"${twitterPost}\"",
		bad_phone_message = "Meesa seein' a bad twitter post: \"${message}\"",
		mute_toggle_not_staff = "Player tryin' to mute anova player but noosa gots da right permissions to do so.",
		unmute_toggle_not_staff = "Player tryin' to unmute anova player but noosa gots da right permissions to do so.",
		user_not_found = "Wesa no findin' a user with server ID `${serverId}`.",
		player_already_muted = "${consoleName} isa already muted.",
		player_has_been_muted_no_reason = "${consoleName} has now been muted without a specified reason.",
		player_has_been_muted = "${consoleName} ish now been mute-ed witt reason: `${reason}`.",
		player_not_muted = "${consoleName} ish not mute-ed.",
		player_has_been_unmuted = "${consoleName} ish now free to speak ees freely.",
		clear_chat_not_admin = "Player attempted to clear the chat for all players, but didn't have proper permissions to do so.",
		ooc_clear_chat_title = "Chat Cleared",
		ooc_clear_chat_details = "${consoleName} cleared da chat for everyone.",
		muted_player = "Mute-ed Player",
		muted_player_no_reason_details = "${consoleName} mute-ed ${targetConsoleName} widout any specified reason.",
		muted_player_details = "${consoleName} sàna \'${targetConsoleName}\' mànedo nà ríisàn `${muteReason}`.",
		player_muted = "Nass Portam Bàràg",
		player_muted_no_reason_details = "${targetConsoleName} nass-kí mànedo nà ríisàn mòla-é ${consoleName}.",
		player_muted_details = "${targetConsoleName} nass-kí sàna \'${consoleName}\' mànedo nà ríisàn `${muteReason}`.",
		muted_self = "Nass Self",
		muted_self_no_reason_details = "Mànedo nà ríisàn ${consoleName} tébó sàna mòlà-é sah.",
		muted_self_details = "${consoleName} sàna mànedo nà ríisàn `${muteReason}`.",
		unmuted_self = "Unmuted Self",
		unmuted_self_details = "${consoleName} unhooked themselves.",
		unmuted_player = "Unmuted Player",
		unmuted_player_details = "${consoleName} unhooked ${targetConsoleName}.",
		player_unmuted = "Player Unmuted",
		player_unmuted_details = "${targetConsoleName} has been unhooked by ${consoleName}.",
		ooc_cancelled_same_as_last = "Yousa OOC mesaage was cancelled as yousa attempted to send two identical messages in a row.",
		use_measurement_metric = "Yousa have set yousa preferred system of measurement to metric.",
		use_measurement_imperial = "Yasa settena oke daywa yaseen porotocol of measurement to imperial.",
		use_measurement_default = "Mesa willa now be usina de locale's default porotocol of measurement.",
		already_using_metric_measurement = "Yousa already has metric settena as yasa peffered porotocol of measurement.",
		already_using_imperial_measurement = "Yousa already has imperial settena as yasa peffered porotocol of measurement.",
		already_using_default_measurement = "Yousa already usen de locale's default porotocol of measurement.",
		no_copyright = "Mesa no have-a Copyright",
		no_copyright_warning = "Ouch! Yousa streamer or content creator mesa thinkin' DMCA and copyright claims is a problem? If so, mesa suggestin' togglin' da `${noCopyrightCommand}` command so dassa mesa can stop certain copyrighted material from showing and playing on yousa game. This feature starts workin' as soon as mesa toggled.",
		no_copyright_enabled = "Da 'Mesa no have-a Copyright' feature has been enabled.",
		no_copyright_disabled = "Da 'Mesa no have-a Copyright' feature has been disabled.",
		server_tps = "Server TPS",
		server_tps_response = "${tps}", --"${tps}",
		license_copied = "Chisoo choppa da license.",
		uptime = "Yusa uptime: ${uptime}.",

		picture_no_url = "Missing url. Yousa need to provide da url.",
		picture_invalid_url = "Invalid url, has to start with https://. Mesa thinks dis url no good.",
		picture_no_description = "Missing description. Yousa need to provide da description.",
		picture_failed = "Failed to create picture. Mesa sorry.",

		auto_run_already_set_to = "Auto-run is already set to control ${controlId}.",
		auto_run_already_unset = "Auto-run isa unset bombad.",
		auto_run_set_to = "Auto-run isa set to control ${controlId}.",
		auto_run_unset = "Auto-run isa unset.",

		invalid_server_id = "Mesa no understand server ID.",
		walk_forwards_success = "Successfully toggled mesa walking forwards for ${displayName}.",
		walk_forwards_failed = "Mesa failed to toggle walking forwards for ${displayName}."
	},

	money = {
		invalid_server_id = "Mooey mooey, mesa think dissa invalid server ID.",
		invalid_amount = "Mee-sa afraid dissa invalid amount.",
		something_went_wrong = "Umm... mesa don't know what happened.",
		not_enough_cash = "Ouch! Yusa no havin enough cash.",
		not_close_enough = "Excuse mooey, but yusa need to be closer to da player.",
		user_not_available = "Dissa user is not available.",

		bill_received = "${displayName} has sent you a bill for $${amount}. Type `/yes` to accept it or `/no` to decline it.", --"${displayName}" mesa sa name of da player, "$${amount}",
		bill_expired = "Mesa bill from ${displayName} expired.",
		bill_declined = "Yousa declined the bill from ${displayName}.",
		failed_bill_payment = "Failed to pay da bill.",
		bill_success = "Successfully paid da $${amount} bill from ${displayName}.",
		bill_created = "Yousa created a bill for $${amount} ta ${displayName}.",

		givecash_success = "Yousa gave ${displayName} $${amount}.",

		give_cash_title = "Cash Transfer",
		give_cash_details = "${consoleName} transferred $${amount} ta ${targetConsoleName}.",
		paid_bill_title = "Paid Bill",
		paid_bill_details = "${consoleName} mesa payin' da $${amount} bill by ${targetConsoleName}.",
		bill_created_title = "Bill Created",
		bill_created_details = "${consoleName} mesa creatin' a bill fo $${amount} to ${targetConsoleName}."
	},

	moonshine = {
		fill_chamber = "[${InteractionKey}] Fill Chamber",
		collect_moonshine = "[${InteractionKey}] Collect Moonshine",
		fermenting = "Fermentin' ${percentage}%",
		filling_chamber = "Fillin' Chamber",

		not_enough_items = "Yousa no have enough items to fill da chamber.",
		something_went_wrong = "Mesa thinks sumthin went wrong.",
		failed_fill = "Failed to filla da chamber.",
		failed_empty = "Failed to collecta da moonshine.",

		press_to_sell_moonshine = "Press ~INPUT_CONTEXT~ to sella da Moonshine.",
		local_not_interested = "Da local no seema to be interested right now.",
		selling_moonshine = "Sellin' Moonshine."
	},

	nos = {
		press_to_install_nitro_tank = "Press ~INPUT_CONTEXT~ to installa da Nitro Tank.",
		installing_nitro_tank = "Installinga da Nitro Tank",
		press_to_remove_nitro_tank = "Press ~INPUT_CONTEXT~ to remover da Nitro Tank.",
		removing_nitro_tank = "Yousa removen nitro tank"
	},

	notepads = {
		take_notes = "Take notes, mesa helpen yousa...",
		press_to_open = "Pressen ~INPUT_DETONATE~ to opene thisa Notepad.",
		notepad_busy = "Ouch! Someone elsen in thisa notepad.",
		dropped_notepad_title = "Notepad Dropped",
		dropped_notepad_text_title_details = "${consoleName} droppeden a notepad with text `${text}`.",
		updated_notepad_title = "Notepad Updated",
		updated_notepad_text_title_details = "${consoleName} updateden a notepad with text `${text}`.",
		picked_up_notepad_title = "Notepad Picked Up",
		picked_up_notepad_text_title_details = "${consoleName} gotsa pick up a notepad wit da text `${text}`.",
		invalid_notepad_id = "Mesa not sure wat dis notepad id is.",
		failed_notepad_info = "Mesa no can get da notepad info. Crud!",
		notepad_info = "Notepad ${notepadId} was dropped by ${droppedBy}.",
		failed_notepad_wipe = "Mesa no can wipe da notepads. Oops!",
		invalid_notepad_wipe_radius = "Oopsie! Da radius is invalid. (Min = 1, Max = 100).",
		notepad_wipe_success = "Mesa wiped ${amount} notepads. Yay!",
		sign_invalid_slot = "Dis inventory slot issa no good.",
		signed_notepad = "Mesa signed da notepad in slot `${slotId}`. Success!",
		failed_sign_notepad = "Meesa sorry, mesa couldn't sign da notepad.",
		sign_already_signed = "Yousa cannot sign dissa notepad.",

		notepad_info_missing_permissions = "Player attempted to get a notepad's info without proper permissions. Mesa no think so.",
		wipe_notepads_missing_permissions = "Player attempted to wipe notepads without proper permissions. Mesa no think so."
	},

	notices = {
		message_too_long = "Uh-oh, message too long it is!",
		invalid_notice_id = "Dis notice id issa invalid.",
		successfully_removed_notice = "Yousa successfully removed da notice.",
		failed_remove_notice = "Failed to remove da notice. Datsa no good.",

		add_notice_missing_permissions = "Mesa helpin' youssa add a notice 'ithout propa permissions.",
		remove_notice_missing_permissions = "Mesa helpin' youssa remove a notice 'ithout propa permissions."
	},

	objects = {
		saved_found_objects = "Saved `${foundObjectsAmount}` found objects with model `${modelName}` to a file on da server.",
		no_nearby_objects_with_model_found = "Der gonna no nearby objects found with model `${modelName}`.",
		invalid_model_name = "Da model `${modelName}` issen not a valid model.",
		missing_model_name = "Mesa missen da model name."
	},

	orbitcam = {
		enabled_orbitcam = "Meesa enabled orbitcam.",
		disabled_orbitcam = "Meesa disabled orbitcam.",
		orbitcam_failed = "Meesa failed to enable orbitcam. Do yousa have noclip or similar enabled?",

		orbitcam_logs_title = "Toggled Orbitcam",
		orbitcam_on_logs_details = "${consoleName} toggled their orbitcam on.",
		orbitcam_off_logs_details = "${consoleName} toggled their orbitcam off.",

		orbitcam_no_permission = "Meesa attempted to toggle their orbitcam without required permissions."
	},

	overview = {
		header_title = "OP Framework - Overview UI",
		select_information = "Information",
		select_activity_points = "Youse activity points",
		select_staff_points = "Youse staff points",
		select_moderation = "Moderation",
		select_handling_overrides = "Handling overrides",
		select_settings = "Settings",
		about_title = "About da overview UI",

		-- eh idk if putting entire chunks of html code is the way to go but for now it is xd
		about_text = [[
			This interface is meant to serve as an OOC interaction menu, information center and a data viewer for players.
			<br><br>
			For now, the only thing it's used to is to view the "job priority" status.
			<br><br>
			In the future, it is expected that much more features will be implemented such as:
			<ul class="list">
				<li>More in-depth viewing and management of whitelisted jobs for the people controlling them.</li>
				<li>Complex player statistics.</li>
				<li>An achievement system.</li>
				<li>Possibly a better report system for staff.</li>
				<li>More features for staff they can use to easier handle and control the server.</li>
				<li>...and much more, feel free to come with suggestions!</li>
			</ul>
			<br>
			Onto the future!
		]],

		about_activity_points_title = "About youse activity points",

		about_activity_points_text = [[
			You can gain activity points by being on-duty in jobs that offer these points. Currently, only the Medical/EMS and Law Enforcement/police jobs offer this.
			<br><br>
			Every minute, a certain amount of activity points is distributed in each job among the players who are on-duty. This means that if there are 4 players on-duty as police, each player will get 25% of the activity points that minute. The amount of activity points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The activity points reset for everyone at the beginning of each week. If you had a certain amount of activity points, you will be given priority in the queue for the entire next week.
				<br><br>
				Activity points required for queue priority at this time:
				<ul class="list">
				<li>400: Low Job Priority.</li>
				<li>700: Medium Job Priority.</li>
				<li>1000: High Job Priority.</li>
			</ul>
		]],

		activity_points_this_week = "Dis week",
		activity_points_last_week = "Las week",
		activity_points_current = "Activity points: <b>${activityPoints} + ${gainAmount}/minute</b>",
		activity_points_current_no_gain = "Activity points: <b>${activityPoints}</b>",
		activity_points_goal_low = "<br><br>Yousa current activity goal issen at 400 points for Low Job Priority, with <b>${remainingPoints} to go</b>!",
		activity_points_goal_medium = "<br><br>Yousa current activity goal issen at 700 points for Medium Job Priority, with <b>${remainingPoints} to go</b>!",
		activity_points_goal_high = "<br><br>Yousa current activity goal issen at 1000 points for High Job Priority, with <b>${remainingPoints} to go</b>!",
		activity_points_goal_none = "<br><br>Yousa currently haveno activity goals.",
		activity_points_not_enough = "Yousa did not have enough activity points to qualify for queue priority last week.",
		activity_points_last_week_low = "Muy muy, yousa had enough activity points last week to qualify for Low Job Priority in the queue!",
		activity_points_last_week_medium = "Wessa wessa, yousa had enough activity points last week to qualify for Medium Job Priority in the queue!",
		activity_points_last_week_high = "Yee moo, yousa had enough activity points last week to qualify for High Job Priority in the queue!",

		about_staff_points_title = "Meesa About Staff Points",

		about_staff_points_text = [[
			Similar to the activity points for jobs, you will gain staff points when you're in the server with your staff availability toggled on.
			<br><br>
			Every minute, a certain amount of staff points is distributed to all active staff members. This means that if there are 4 staff members active, each person will get 25% of the staff points that minute. The amount of staff points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The staff points reset for everyone at the beginning of each week. Your eight most recent weeks will be available for display in a table below.
		]],

		staff_points_this_week = "Dis Week",
		staff_points_current = "Staff Points: <b>${staffPoints} + ${gainAmount}/minut</b>",
		staff_points_current_no_gain = "Staff Points: <b>${staffPoints}</b>",
		staff_points_table = "Staff Points Table",
		this_week = "Dis Week",
		one_week_ago = "1 Week Agosa",
		two_weeks_ago = "2 Weeks Agosa",
		three_weeks_ago = "3 Weeks Agosa",
		four_weeks_ago = "4 Weeks Agosa",
		five_weeks_ago = "5 Weeks Agosa",
		six_weeks_ago = "6 Weeks Agosa",
		seven_weeks_ago = "7 Weeks Agosa",
		eight_weeks_ago = "8 Weeks A-going",
		previous_weeks_average = "Previous Weeks' A-veraging",

		about_detection_areas_title = "Detection Areas",
		about_detection_areas_text = "Detection areas can be a useful tool for the staff members when trying to identify a cheater spawning in unwanted vehicles and/or peds. To create a detection area, use `/detection_area_add`. Once yousa created an area, it will appear here. Only da latest 100 entities will be logged in each area.",
		detection_area_title = "Detection Area #${detectionAreaId}",

		about_sound_effects_title = "Glandersen Effectsen",
		about_sound_effects_text = "Dissen fieldsen allowassen yousen to overridesen somen sounden effecten. Theysen requiresen a linken to an .oog file inorden to worken properlyen. Itsen musten alsosen been an https:// URL and noten an http:// one. An easywayen of uploaden a file woulden be to uploaden it to discorden, thensen copyen itsen linken, and inserten it into the fieldsen here.",
		radio_mic_click_on = "Radio Mic Clicken (On)",
		radio_mic_click_off = "Radio Mic Clicken (Off)",
		clipboard_animation = "Clipboard Animationen",
		sound_effect_placeholder = "YURL tu .oog faeel...",
		sound_effect_save = "Sev",
		sound_effect_reset = "Risit",

		staff_notifications_reports = "Notifikeshuns fur Reports",
		staff_notifications_staff_chat = "Notifikeshuns fur Staf-Chat",
		staff_notifications_general = "Jeneral Notifikeshuns",
		staff_notifications_anti_cheat = "Anti-Chet Notifikeshuns",

		december_1 = "1st uf Dicember",
		december_2 = "2nd uf Dicember",
		december_3 = "3rd uf Dicember",
		december_4 = "4th uf Dicember",
		december_5 = "5th uf Dicember",
		december_6 = "6th uf Dicember",
		december_7 = "Mooie 7",
		december_8 = "Mooie 8",
		december_9 = "Mooie 9",
		december_10 = "Mooie 10",
		december_11 = "Mooie 11",
		december_12 = "Mooie 12",
		december_13 = "Mooie 13",
		december_14 = "Mooie 14",
		december_15 = "Mooie 15",
		december_16 = "Mooie 16",
		december_17 = "Mooie 17",
		december_18 = "Mooie 18",
		december_19 = "Mooie 19",
		december_20 = "Mooie 20",
		december_21 = "Mooie 21",
		december_22 = "22nd of Grater",
		december_23 = "23rd of Grater",
		december_24 = "24th of Grater",
		hatch_closed = "KYOODIE",
		hatch_open = "JUS POOPEN",
		hatch_claim = "CLAYM",
		hatch_opened = "CLAYMED",
		hatch_waiting = "POOROP",

		about_advent_calendar_title = "ABOUT ADVENT CALENDAR",

		-- NOTE: this is the most aids shit ever, please ignore the HTML stuff in here
		about_advent_calendar_text = [[
			The advent calendar is a holiday feature meant to bring some more joy to the players of ${communityName} throughout the month of December!
			<br><br>
			Every day, another hatch will become available, containing money, an item, a vehicle or something else. All hatches belonging to a previous date will be available. Once a hatch has been opened, you must claim it in order to receive it. Opening and collecting will become impossible after the 25th of December.
			<br><br>
			Next hatch unlocks in ${time}.
			<br><br>
			Opening a hatch on the day it was unlocked, gives you a bonus point. If you obtain enough bonus points, you will receive a special gift on the 24th of December. (The bonus gift must be claimed before the 26th.)
			<br><br>
			<div class="bonusPoints">
				<div>Bonus Points: ${bonusPoints}/22</div>
				<div>
					<button class="button" style="${buttonStyle}" id="claimBonusButton">${buttonText}</button>
				</div>
			</div>
		]],

		unlocks_in_days_hours_minutes_seconds = "${days} SLEGGA, ${hours} HAWS, ${minutes} MINOTES AN ${seconds} SOOPE",
		unlocks_in_hours_minutes_seconds = "${hours} HAWS, ${minutes} MINOTES AN ${seconds} SOOPE",
		unlocks_in_minutes_seconds = "${minutes} MINOTES AN ${seconds} SOOPE",
		unlocks_in_seconds = "${seconds} seconds", -- unlocks_in_seconds = "${seconds} mekka",
		unlocks_in_an_unknown_amount_of_time = "an unknown amount of time", -- unlocks_in_an_unknown_amount_of_time = "mesa bombad no know how longa",

		unopened_hatch = "Unopened Hatch", -- unopened_hatch = "Hatch Mesa No Open",
		won_money = "$${amount} Cash", -- won_money = "Cash: $${amount}",
		won_vehicle = "Vehicle (Christmas Special)", -- won_vehicle = "Speedin' Transport (Christmastime)",
		won_queue_priority = "A Week Of Queue Priority!", -- won_queue_priority = "Week Upon Weeks Of Gettin' In First!",

		about_handling_overrides_title = "Handling Overrides", -- about_handling_overrides_title = "Handlina Override",
		about_handling_overrides_text = "Mesa makin' changesa to handlina class for all beings on server. Changes mesa no last long, mesa thinkin' to mesa self thet it last until restart. Mesa suggestin' to no mess with dis unless yousa no knowen wut yousa doin'.",
		add_override = "Mesa Override Yambah",
		add = "Tambah",
		model_name = "Jeneng model...",
		field_name = "Kolom...",
		value = "Nilai...",
		current_overrides = "Mesa Override Saiki",

		about_explosion_events_title = "Acara Ledakan",
		about_explosion_events_about = "Nganti 500 acara ledakan terakhir dikumpulake ing kene. Ngene kasebatan staf kanggo nemokake modder.",
		about_unusual_explosions = "Acara ledakan kang ora biasane kalebu.",
		explosions_by_type_title = "Ledakan miturut jinis",
		players_causing_explosions_title = "Pemain kang mikirakake ledakan",
		show_common_events_off = "Show common events: OFF",
		show_common_events_on = "Show common events: ON",

		explosion_events_type = "Type",
		explosion_events_amount = "Amount",
		explosion_events_nearby = "Nearby",
		explosion_events_distance = "Distance",
		explosion_events_player = "Player Name",

		illegal_weapons_title = "Spawned weapons",
		illegal_weapons_about = "In here the last 500 occurrences of spawned in weapons detected by the system are logged. When someone has a spawned in weapon, it doesn't necessarily mean they are modding, as modders can spawn weapons into other players hands and therefore other players would show up on here too.",
		illegal_weapons_by_type = "Gunganese: Weapons by type",
		players_with_spawned_weapons = "Gunganese: Players with spawned weapons",

		ped_models_title = "Gunganese: Player Ped models",
		ped_models_about = "Gunganese: In here every player who is not using a freemode character model is listed. This should help in finding players who are here just to troll or potential modders.",
		local_ped_models_title = "Gunganese: Local Ped models",
		animal_ped_models_title = "Gunganese: Animal Ped models",

		fast_movement_title = "Gunganese: Fast Movement",
		fast_movement_about = "Gunganese: In here every player who has been flagged for moving too fast is listed. This should help in finding players who are potential modders.",

		damage_modifier_title = "Damage Modifier",
		damage_modifier_about = "Meesa give yousa list of players who have changed their damage modifier. Dis should help yousa find players who might be using mods.",

		bad_screen_word_title = "Bad Screen Words",
		bad_screen_word_about = "Meesa give yousa list of players who have certain words on their screen. Dis should help yousa find players who might be using mods.",

		freecam_detections_title = "Freecam Detections",
		freecam_detections_about = "Meesa give yousa list of players who have been detected to be using a freecam. Dis should help yousa find players who might be using mods.",

		damage_modifier_name = "Palpatine n'gad",
		damage_modifier_expected = "Yegityoek",
		damage_modifier_actual = "Ngon'gityo",

		bad_words_name = "Palpatine n'gad",
		bad_words_words = "Twerubokeyo",

		freecam_detections_name = "Palpatine n'gad",
		freecam_detections_distance = "Max Distance",

		hotwire_driving_detections_name = "Palpatine n'gad",

		model = "Modela",
		label = "Labelo",
		amount = "Gooberfisha",
		console_name = "Peega",
		expected = "Expectedo",
		actual = "Actuala",
		words = "Gooberfishe",
		distance = "Distancia",
		weapon = "Whapa",
		type = "Typee",
		nearby = "Nearbya",

		no_entries = "N'goli kaya"
	},

	oxy = {
		press_to_talk_to_jc = "Jooj hangl ben ~g~${InteractionKey} ~w~ pal'ok ti JC.",
		tutorial_will_play_next_time = "Oxy tutorial joloo ka oop n'gad milooyo you start a run.",
		prescription_pick_up = "Prescription Pick-UP: ${label}",

		pick_up_the_prescriptions = "Pik up da forged prescriptions marked on ya map.",
		redeem_them_at_the_city = "Once ya done dat, ya gotta redeem dem at da city.",
		jc_will_be_expecting_some_back = "~y~JC ~w~will be expectin' 6 of da ${pickUpAmount} Oxy back.",
		you_have_limited_time = "Ya have a limited amount of time. Ya gotta get back wit' da pills in ${time}.",
		press_to_hide_unimportant_blips_in_map = "Press ~INPUT_SPRINT~ to hide non-mission blips when in da Pause Menu.",
		consider_getting_a_smart_watch = "Consider gettin' a Smart Watch to always be able to see ya GPS.",

		press_to_pick_up_prescription = "Press ~g~${InteractionKey} ~w~to pick up prescription.",

		redeem_oxy_prescription = "Jar Jar, Oxy se kama daana.",
		press_to_redeem_prescription = "Press ~g~${InteractionKey} ~w~to redeem prescription.",

		check_your_map_to_redeem_prescriptions = "Good job! Mana, check your map to redeem the prescriptions. You have ${time} mesa left.",
		go_to_jc_to_finish_run = "Mesa wesa done! Go back to ~y~JC ~w~to finish the run. You have ${time} mesa left.",

		oxy_run_started_title = "Oxy Run Started",
		oxy_run_started_details = "${consoleName} started an oxy run.",

		oxy_run_ended_title = "Oxy Roon Ended",
		oxy_run_ended_details = "${consoleName} completed their oxy roon after ${time} ton and earned $${payout}.",

		oxy_run_failed_title = "Oxy Roon Failed",
		oxy_run_failed_details = "${consoleName} failed their oxy roon.",

		you_failed_the_run = "Yosa failed the roon. ~y~JC ~w~will not be happy with yousa for a time.",

		time_left = "Yosa have ${time} left.",

		accidental_call_1_part_1 = "Yooo, whosa yousa sayin my drilla?",
		accidental_call_1_part_2 = "Ok basically whosa I've dun right now; wesa gonna set up a little ting right now cause dere's some guy runnin oxy and dat bro.",
		accidental_call_1_part_3 = "Mmmeesa got down his plate, his veesha, all o' dat though.",
		accidental_call_1_part_4 = "And basically, when he get out da veesha to deliver da ting mesa need you to jump in and take dat for mesa, okeday?",
		accidental_call_1_part_5 = "Nah he's got no clue it's gonna be us, mesa sent him downtown so he's probably gonna be thinking it's some sort of gang or something.",
		accidental_call_1_part_6 = "Trust me, it's easy.",
		accidental_call_1_part_7 = "Ohhhh! Yoo, what you sayin' my guy?! Not you, da other man! Mesa sent two men! Not you though!",
		accidental_call_1_part_8 = "Yousa chillin' though! Wrong guy though... but it was some.. different guy bro. Dissen't happenin' to yousa though.",
		accidental_call_1_part_9 = "Issen not yous. Yousa know what mesa sayin'? It wassen't yous though!",
		accidental_call_1_part_10 = "But watch out though, cause yous fuck around I'll definitely take your car though.",
		accidental_call_1_part_11 = "Love.",

		accidental_call_2_part_1 = "Yooosa, whata yousa saying' babes?",
		accidental_call_2_part_2 = "Yeah I can't lie, I just wanna rub mustard all over your feet and lick it off like a hot dog and all of that.",
		accidental_call_2_part_3 = "Heyo babes.",
		accidental_call_2_part_4 = "Waita..",
		accidental_call_2_part_5 = "Oh no, mesa so sorry.",

		accidental_call_3_part_1 = "Yooo, what yousa sayin' bro?",
		accidental_call_3_part_2 = "Yee yee, mesa just done dat new hip-hop song yousa wanted bro.",
		accidental_call_3_part_3 = "Yeah, itsa goes a little bit like dis..",
		accidental_call_3_part_4 = "Mesa wanna love you babyy, Mesa wanna love you, Mesa wanna love you, mesa wanna kiss you on the feet, mesa wan-",
		accidental_call_3_part_5 = "Wooooah, woah woah.. Mesa meant, you know.. dat weren't mesa though..",
		accidental_call_3_part_6 = "Okeeday, wrong number, meesa sorry brodder, mesa sorry..",

		accidental_call_4_part_1 = "Yooo bro, when yousa gonna come around my crib and play my little pony with me my bro?",
		accidental_call_4_part_2 = "It's been way too long and that, and mesa need, bruv yousa know mesa like the sparkly one and-",
		accidental_call_4_part_3 = "Ooookay.. yo wrong number bro, meesa sorry about that, yousa didn't hear that though.",
		accidental_call_4_part_4 = "'cos if yousa did, yousa dead, yousa know what mesa sayin'?",

		accidental_call_5_part_1 = "Yo mummy, mesa kinda scared right now..",
		accidental_call_5_part_2 = "Yeah, da bombad guys were outside my door and meesa don't know what to do, mum.",
		accidental_call_5_part_3 = "Meesa a little bit afraid, cos Mesa thinkin' meesa in da deep end, yousa know..",
		accidental_call_5_part_4 = "Mum.. oh, ohh.. oh, yo! What you sayin' bro?",
		accidental_call_5_part_5 = "Yeah, no, do yousa like my actin' skills and dat, yeah?",
		accidental_call_5_part_6 = "Trust meesa though, ay but don't ever ever ever record dat call again bro or yousa dead.",
		accidental_call_5_part_7 = "Yousa know what Mesa sayin'? Meesa will come around der and Mesa will cut yousa up differently bro.",
		accidental_call_5_part_8 = "Yousa know what mesa sayin' bro?",
		accidental_call_5_part_9 = "Trust mesa on dat, bantha poodoo bro.",

		accidental_call_6_part_1 = "Yo yo little bro, comen here yeah.",
		accidental_call_6_part_2 = "Yousa dad's on da phone bro, yousa dad's on da phone.",
		accidental_call_6_part_3 = "Mesa know yousa not seen him bro, take dat, take dat, take dat bro, take dat, take dat.",
		accidental_call_6_part_4 = "Hello? Daddy is dat yousa?",
		accidental_call_6_part_5 = "Dad?!",
		accidental_call_6_part_6 = ".. wait no dat's not dad, dat's somebody else! No! Why-",
		accidental_call_6_part_7 = "Yousa bombad, mesa can't believen yousa fell for dat bro!",
		accidental_call_6_part_8 = "Ohh moi moi..",

		maxed_out_runs_part_1 = "Bro, mesa know yousa liken bread but yousa need to let somen of da other mandem get some.",
		maxed_out_runs_part_2 = "Stoppen runnen dis bro.",
		maxed_out_runs_part_3 = "Gosa chat to somen bombad at Trash HQ or somethin' man.",

		mission_completed_1_part_1 = "Yoo wag1 bro, ay mesa can't lie dat was bombad shit though, mesa knew mesa could trust you bro.",
		mission_completed_1_part_2 = "Ay, if yousa ever need to maken some more cash yousa know where to finden mesa though.",
		mission_completed_1_part_3 = "Mesa gonna be stocked up soon, dontcha worry bombad.",

		mission_completed_2_part_1 = "Yoo, whatsa you sayin' boompa.",
		mission_completed_2_part_2 = "Mesa no can lie, that job was a good one right there.",
		mission_completed_2_part_3 = "Yeah, trust mesa though, the clients love you right now and mesa love you aswell, 'cos yousa know why?",
		mission_completed_2_part_4 = "You got mesa money; You got yousa some money.",
		mission_completed_2_part_5 = "You take that, come back later though, 'cos mesa need you again bombad.",

		mission_completed_3_part_1 = "Yoo wesa sayin' bro.",
		mission_completed_3_part_2 = "Ay mesa can't lie, dat ting back there.. LOVELY bro.",
		mission_completed_3_part_3 = "Yous couldn't have done it better bro.",
		mission_completed_3_part_4 = "Last man messed up, so mesa glad mesa got yousa.",
		mission_completed_3_part_5 = "Come back later bro, mesa tell yousa, mesa got some more shit for yousa bro.",

		mission_completed_4_part_1 = "Yoooo, yousa know how to sell init?",
		mission_completed_4_part_2 = "Yous might have to be a business man out 'ere bro, trust mesa though.",
		mission_completed_4_part_3 = "Da way yousa were sellin' it to dese lot wassa craazy bro.",
		mission_completed_4_part_4 = "Yeah yeah, oy, love for dat though.",
		mission_completed_4_part_5 = "Mesa appreciate you differently though, so come back later I got yousa wit da pills bro.",
		mission_completed_4_part_6 = "Mesa got more, yeah yeah, trust me though.",

		mission_completed_5_part_1 = "Ay what you doin' 'ere bro?",
		mission_completed_5_part_2 = "Ohh, it's you! Yo, what you sayin' bro?",
		mission_completed_5_part_3 = "Yeah, ay, love for- ay love for dat though.",
		mission_completed_5_part_4 = "'cos youse blessed me BIG time wif dat! I got bare cash now, I'ma buy meself a fresh new EDM whip ya kno what I'm sayin' bro?",
		mission_completed_5_part_5 = "Dinka Blista, all of dat, yeah, oy but come back later though, legit though.",
		mission_completed_5_part_6 = "'cos I got some more shit for yous bro.",

		mission_completed_6_part_1 = "Yoo youse should've seen Gogginschmiel' face earlier bro.",
		mission_completed_6_part_2 = "He looked like a dickhead, I can't lie.",
		mission_completed_6_part_3 = "Youse didn't know he was behind yous?!",
		mission_completed_6_part_4 = "Meesa thinkin he was tough, but muy muy good job anyway.",
		mission_completed_6_part_5 = "Meesa no can lie, yousa bombad at this bro.",
		mission_completed_6_part_6 = "Come back later, meesa got yousa with more bro.",

		mission_completed_7_part_1 = "Yoo wesa thinkin' bro?",
		mission_completed_7_part_2 = "Ay meesa no can lie, that ting back there.. LOVELY bro.",
		mission_completed_7_part_3 = "Yousa couldn't have done it better bro.",
		mission_completed_7_part_4 = "Last man messed up, so mesa glad mesa got yousa.",
		mission_completed_7_part_5 = "Yousa come back lata bro, mesa promise mesa gots some mo' bantha poodoo for yousa bro.",

		mission_completed_8_part_1 = "Ay, disa issa bossman mesa was talkin' about bro. Yeah trust mesa, he's so sick bro.",
		mission_completed_8_part_2 = "Disa guy issa too sick.",
		mission_completed_8_part_3 = "He delivers every time, on time.",
		mission_completed_8_part_4 = "Da clients love disa guy.",
		mission_completed_8_part_5 = "Trust mesa, he's comin' up in da world type shit, but yousa're neva gonna beat mesa though.",
		mission_completed_8_part_6 = "'cos you gotta be a dickhead, yousa know what I'm sayin'?",
		mission_completed_8_part_7 = "But love though, come back lata I got yousa with some more pills bro.",

		mission_failed_1_part_1 = "Yeah bro, mesa can't lie da client called mesa and he said yousa didn't even deliver it to my man.",
		mission_failed_1_part_2 = "What's goin' on bro?",
		mission_failed_1_part_3 = "Yousa messed up big time.",
		mission_failed_1_part_4 = "Get outta my sight bro.",
		mission_failed_1_part_5 = "If mesa EVER see yousa again bro, it's ovva for yousa.",

		mission_failed_2_part_1 = "Meesa think wesa in big doo-doo now.",
		mission_failed_2_part_2 = "Meesa sorry, yousa too late. Whatsa goin' on though?",
		mission_failed_2_part_3 = "Oh boy, my clients be mighty angry!",
		mission_failed_2_part_4 = "Ay, don'tsa even tink 'bout comin' back here again.",
		mission_failed_2_part_5 = "Meesa no like you, yousa finished now.",

		mission_failed_3_part_1 = "Yeah, yeah, yeah, yeah, oi, oi..",
		mission_failed_3_part_2 = "Meesa really sorry though.",
		mission_failed_3_part_3 = "Yousa da first guy meesa ever say dis to.",
		mission_failed_3_part_4 = "Yousa are a bonehead.",
		mission_failed_3_part_5 = "Yousa know dat? Yeah? Yousa are a bonehead.",
		mission_failed_3_part_6 = "Yousa know why?",
		mission_failed_3_part_7 = "'cos yousa didn't even deliver my stuff bro.",
		mission_failed_3_part_8 = "Scram, bro. Mesa no wanna seen yousa around mesa place again bro.",
		mission_failed_3_part_9 = "Mesa gonna getcha, mesa swear to Bombad bro.",
		mission_failed_3_part_10 = "Mesa have da matics on, mesa have da ooters on.",
		mission_failed_3_part_11 = "Yousa in big doo-doo now bro.",
		mission_failed_3_part_12 = "Yaa, dat's it.. goin' away brah.",

		mission_failed_4_part_1 = "Hey, yousa talkin' what?",
		mission_failed_4_part_2 = "Ay, just a quick t'ing mesa wanna say.",
		mission_failed_4_part_3 = "If yousa eva approachin' mesa again, yousa gonna have big dookie.",
		mission_failed_4_part_4 = "Youse know why?",
		mission_failed_4_part_5 = "'cos yousa poopie, yousa keep failing mesa's t'ings bro.",
		mission_failed_4_part_6 = "What's happenin' wit dat?",
		mission_failed_4_part_7 = "Da clients ar' angry, theysa comin' at mesa sayin' mesa da dummy.",
		mission_failed_4_part_8 = "Mesa can't believe mesa came to yousa.",
		mission_failed_4_part_9 = "Mesa thought yousa was mesa guy or somethin' bro",
		mission_failed_4_part_10 = "But nah, yousa's just a dickhead bro, so fuck yousa bro.",
		mission_failed_4_part_11 = "Get out mesa sight bro.",

		mission_failed_5_part_1 = "Yeah yousa didn't do too good on the last one..",
		mission_failed_5_part_2 = "Mesa can't lie bro, yousa fucked up big time.",
		mission_failed_5_part_3 = "So don't ever come to mesa spot!",
		mission_failed_5_part_4 = "'cos mesa swear to god, Mesa's gonna fuck yousa up bro.",

		mission_failed_6_part_1 = "Yousa sayin' whatsa, bro?",
		mission_failed_6_part_2 = "Ay, if yousa eva come to my place again, bro.",
		mission_failed_6_part_3 = "Mesa gonna get da rambo and leteesa rip on yousa head, bro!",
		mission_failed_6_part_4 = "Mesa swearin' on god! Yousa messed mesa up, bro!",
		mission_failed_6_part_5 = "Da clients are bellin' mesa, tellin' mesa how ANGRY theysa are right now.",
		mission_failed_6_part_6 = "It's all yousa fault, bro, it's all yousa fault..",

		mission_failed_7_part_1 = "Don't yousa come to mesa place, bro. Yousa a kriffing jerk!",

		mission_failed_8_part_1 = "Yosa, poodoo off, till yousa clearen my packs.",

		mission_failed_9_part_1 = "Yosa, poodoo off, till yousa clearen my pack.",
		mission_failed_9_part_2 = "Nah, don't evey come back to me until my tings done mesa.",
		mission_failed_9_part_3 = "Yousa fucked up big time, get outta 'ere mesa.",

		mission_failed_10_part_1 = "Yosa, yousa betta pray dat yousa make it home tonight.",
		mission_failed_10_part_2 = "'cos mesa comin' for yousa.",
		mission_failed_10_part_3 = "Yosa, don't eva failen me again, mesa swear to Bombad.",

		no_pills_1_part_1 = "Ya klouna, mesa say 'n yousa okeeday, but it's kinda da squeaky one.",
		no_pills_1_part_2 = "Mesa no haven nothin' at da moment.",
		no_pills_1_part_3 = "So basically, mesa sayin'...",
		no_pills_1_part_4 = "Scram klouna, come back when mesa got somethin'.",

		no_pills_2_part_1 = "Yousa sayin' wat up klouna. So basically it's like messed up right now...",
		no_pills_2_part_2 = "Mesa no haven' nothin' at da moment. Mesa got no pills bro!",
		no_pills_2_part_3 = "Yeah, dey screw mesa ova! Mesa got nothin' bro!",
		no_pills_2_part_4 = "Ayy, mesa called thes-ese lot, mesa said.. Yo wag1 though, wheresa de pillsa at?..",
		no_pills_2_part_5 = "Mesa man said they're nota even here bro.",
		no_pills_2_part_6 = "These lot travelling on some sort of Liberty City thing or somethin' bro like..",
		no_pills_2_part_7 = "They taking too longo bro.",
		no_pills_2_part_8 = "But trust me, when mesa got more, mesa definitely gonna hit yousa up on that bro.",

		no_pills_3_part_1 = "Yo, what yousa sayin' my guy?",
		no_pills_3_part_2 = "Wesa got no pill-says right now bro, so why don't yousa fuck off bro?",
		no_pills_3_part_3 = "Befo' I start gettin' pissed, yousa know what I'm sayin'?",

		no_pills_4_part_1 = "Yoo, wag1 bro? No pills right now, so bun.. bun bro..",
		no_pills_4_part_2 = ".. bun, yousa done bro, fartoopee bro.",
		no_pills_4_part_3 = "Get outta here bro, yousa done.",

		no_pills_5_part_1 = "Yoooooo.. mesa guy!",
		no_pills_5_part_2 = "What yousa sayin' bro? Ay, I can't lie, wesa don't have nothin' right now.",
		no_pills_5_part_3 = "So it's a bit peak for yousa right now.",
		no_pills_5_part_4 = "But basically, come back in a bit and mesa got yousa.",
		no_pills_5_part_5 = "Lub lub, bro.",

		no_pills_6_part_1 = "Bro.. Mesa told 'bout 2 people before you I got nothin' right now..",
		no_pills_6_part_2 = "So why don't yousa listen to your lil' boys and go boom de gasser as a collective my man.",
		no_pills_6_part_3 = "Yousa know what mesa sayin'? Dat's it yousa done out 'ere bro, boom yousa bro.",

		no_pills_7_part_1 = "Yeah mesa the BIG thing around 'ere, yousa know what mesa sayin'?",
		no_pills_7_part_2 = "But the big thing got no big pills right now.. so basically your small thing gotta boom de gasser.",
		no_pills_7_part_3 = "Yousa know what I'm sayin'?",

		no_pills_8_part_1 = "Yo, yo, what yousa sayin'?",
		no_pills_8_part_2 = "Ay, ay, ay, I got- I gotta lie low bro.",
		no_pills_8_part_3 = "Yeah, ay I can't lie.. dare were some feds dat came around earlier..",
		no_pills_8_part_4 = "Wesa got no pills right now. Yousa know what I'm sayin'.",
		no_pills_8_part_5 = "It's off for me right now. Come back later though when the heat dies down bro.",

		no_pills_9_part_1 = "Yeah, ay I can't lie some dickheads earlier, they run up to me and dey took my shit bro.",
		no_pills_9_part_2 = "Meesa gots da ooters on 'em right nows, no worries.",
		no_pills_9_part_3 = "When wesa gets da pills, yousa come back and mesa bails yousa, mesa got dis bro.",

		no_pills_10_part_1 = "Yoo, whata yousa sayin' bro?",
		no_pills_10_part_2 = "Yeah, right now, theres somma dickhead gang up north or somethin' bro.",
		no_pills_10_part_3 = "Dey robbed dat ting, so wesa gonnas go dere togetha, get dat back and mesa bail yousa bro.",
		no_pills_10_part_4 = "Love for dat.",

		no_pills_11_part_1 = "Yoo, whata yousa sayin'? Yeah theres nothin' right now bro... theres nothin' right now.",
		no_pills_11_part_2 = "Yousa havin' a bad time bombad now. Dere be nuthin' now.",
		no_pills_11_part_3 = "But mesa basically tellin' yousa what mesa tellin' everyone else..",
		no_pills_11_part_4 = "Why don't yousa LEAVE bro.. and comeback later. Love.",

		no_pills_12_part_1 = "Nah mesa got nuthin' on mesa now bro.",
		no_pills_12_part_2 = "Comeback later man, comeback later..",

		no_pills_13_part_1 = "Bro! Leave mesa alone! Mesa got nothin' bro!",
		no_pills_13_part_2 = "Mesa got nothin' bro! Ay, be quiet bro!",

		no_pills_14_part_1 = "Mesa sorry, mesa no got pillies right now.",
		no_pills_14_part_2 = "So if yousa tryin' to get ching, come at mesa one more time, mesa beg you bro.",

		no_pills_15_part_1 = "Nah, listen to mesa bro.. yousa pissin' mesa off right now.",
		no_pills_15_part_2 = "Mesa no can even lie to yousa about that.",
		no_pills_15_part_3 = "So mesa actually gonna start chinging man up if yousa don't back off bro.",

		not_leaving_1_muffled_part_1 = "Alright, why is bro still posted?",
		not_leaving_1_muffled_part_2 = "Is he a fed?",
		not_leaving_1_muffled_part_3 = "Ayy, oi.. checken him iffen he's a fed bro, checken him iffen he's a fed bro.",

		not_leaving_2_part_1 = "Oi kriff off bro, geten outen of here bro.",

		not_leaving_3_part_1 = "Bro, canen you stoppen beinen here righten now..",
		not_leaving_3_part_2 = "I'm tryna do somethin'. Yous knowen what I'm sagen'.",
		not_leaving_3_part_3 = "I'm tryna lipsen my bird bro, and you's out 'eren starin' at me liken some sort of dickhead bro.",
		not_leaving_3_part_4 = "Kriff off bro.",

		not_leaving_4_part_1 = "Oi, PLEASE bro, geten outen of here bro.",
		not_leaving_4_part_2 = "Ah- mesa swear to bombad bro.",

		not_leaving_5_part_1 = "Bro yousa taking da piss now, mesa can't lie..",
		not_leaving_5_part_2 = "Mesa actually gonna come over der and wet you up my guy.",
		not_leaving_5_part_3 = "Yousa better muck-off real quickly bro.",

		not_leaving_6_part_1 = "Bro.. mesa da big boss around here bro.",
		not_leaving_6_part_2 = "Stop acting like yousa own da place and muck-off and do my thing bro.",

		not_leaving_7_part_1 = "Oi mesa swear to bombad, yousa do this again I'ma call da backup dancers bro.",
		not_leaving_7_part_2 = "Dey gonna do somethin' different to yousa bro.",

		not_leaving_8_muffled_part_1 = "Alright, wet him up bro, wet him up.. he's takin' too long.",

		not_leaving_9_part_1 = "Broo, don't get me to bring out da big chinga bro.",
		not_leaving_9_part_2 = "I'll beg yousa stop steppin' on MY block right there bro.",
		not_leaving_9_part_3 = "Yousa betta back off your ting and do your ting right now, yousa takin' too long bro.",
		not_leaving_9_part_4 = "Yousa in MY house and MY crib, you thinkin' yousa some big sorta guy bro.",
		not_leaving_9_part_5 = "Meesa helpful, you waiten bro, I'm gonna FLOONG yousa up bro.",

		not_leaving_10_muffled_part_1 = "Yousa dissen guy, hesa getten gassed in da corner liken hesa ownen my block or somethin' bro.",

		not_leaving_11_part_1 = "Ay, move on init, move on bro..",
		not_leaving_11_part_2 = "Yousa done over here bro.",

		not_leaving_12_muffled_part_1 = "Ay, itsa sticky one for thissa guy.",
		not_leaving_12_muffled_part_2 = "Hesa taka too long bro, ay fuck off bro!",
		not_leaving_12_muffled_part_3 = "Me see yousa right now, fuck off bro!",

		not_leaving_13_muffled_part_1 = "Mooey mooesa! Dis guy's tkin' way too long on suttin' like..",
		not_leaving_13_muffled_part_2 = "He's a donkey.. he's gotta be a donkey or suttin' mooey bro..",
		not_leaving_13_muffled_part_3 = "He's definately a donkey.",

		start_1_part_1 = "Oi bro, broo.. ay, come mesa, come mesa..",
		start_1_part_2 = "Yo, ay ay.. You tryna run some more oxy bro?",
		start_1_part_3 = "Ayy, love for dat, love for dat..",
		start_1_part_4 = "Ay, you know what to do though alright?",
		start_1_part_5 = "Ay, I'ma basically though, I'ma send you da ping right now mesa.",
		start_1_part_6 = "Lufa though.",

		start_2_part_1 = "Aaa, how're ya doin' bro! Come ova here real quick my guy!",
		start_2_part_2 = "Yeah yeah.. You tryna run da oxy again bro?",
		start_2_part_3 = "Lufa for dat brooo.",
		start_2_part_4 = "Yous know what to do though alright, of course you do bro.",

		start_3_part_1 = "Aaa.. aaa bro, come here bro, come here bro.",
		start_3_part_2 = "You tryna run some oxy again bro?",
		start_3_part_3 = "Issa? Oi, come.. come.. yousa not a fed though, right?",
		start_3_part_4 = "Ok.. ok.. Lufa though, aaa, aaa, yous know what to do though, I'ma send you da ping and all of dat bro.",

		start_4_part_1 = "Meesa! Youssa dat dickhead from last time?!",
		start_4_part_2 = "Oh, mesa youssa! Youssa did great job last time, mesa no can lie about that.",
		start_4_part_3 = "Sos basically, run that again, youssa know what to do. Mesa gonna send yousa the ping, my guy.",
		start_4_part_4 = "Love for that, oh yeah!",

		start_5_part_1 = "Ay, comin' here youssa little dickhead!",
		start_5_part_2 = "Yeah, yeah, yeah... Mesa know, mesa knew who youssa are.",
		start_5_part_3 = "Don't tell me, mesa no care who youssa are... but mesa know who youssa are.",
		start_5_part_4 = "Mesa want yousa to do a favor. Run da oxy pills again, okeday?",
		start_5_part_5 = "Yousa know da drill, right?",
		start_5_part_6 = "Mesa send yousa da details on da phone, okeday.",

		start_6_part_1 = "Yooosa! Yousa my guy from over dere! How wude yousa?",
		start_6_part_2 = "Ayy, wag1 and all dat.. my guy.",
		start_6_part_3 = "Basically though.. Mesa need yousa again for a little mission like..",
		start_6_part_4 = "Yousa know what I'm on about, yousa know what I'm on about..",
		start_6_part_5 = "Da oxy, of course yousa know. Ay, basically I'm gonna send yousa da ting on da phone.",
		start_6_part_6 = "Yous do what yousa have to do big bro, love for dat.",

		start_7_part_1 = "Yeah, yeah, yeah, yeah, yeah, it's hey, it's disa bantha poodoo from earlier bro!",
		start_7_part_2 = "Mesa remember this guy! Yeah, ay, yousa a funny guy bro, mesa like you, mesa like you..",
		start_7_part_3 = "Oi, mesa need yousa to run me da oxy again though mesa can't lie. So hurry dat up big man.",
		start_7_part_4 = "Me send yousa da ping, me send yousa da details.. Yeah, yeah..",
		start_7_part_5 = "And mesa remembah though..",
		start_7_part_6 = "Half of dah's mine, so don't- don't go takin' none of dat or mesa swear to da gods mesa ching you out 'ere bro, ok.",

		start_8_look_to_sides_part_1 = "Ay bro, mesa swear mesa saw Gogginschmiel go past right there bro..",
		start_8_look_to_sides_part_2 = "Ay come here, come here, come here bro, stop tryna be bait bro.",
		start_8_look_to_sides_part_3 = "Yo, yo.. what mesa need yousa to do for mesa right now though, issa mesa need yousa to go get themsa pills for mesa.",
		start_8_look_to_sides_part_4 = "Meesa need yousa to run them pills for mesa alright boss man.",
		start_8_look_to_sides_part_5 = "Meesa gonna send yousa the details on the encro bro yousa know the drill right now.",
		start_8_look_to_sides_part_6 = "But keep yousa head low, 'cos mesa been spotting bare feds go past like that ok?",
		start_8_look_to_sides_part_7 = "If yousa get caught though! Don't snitch to mesa 'cos yousa dead brudda!",
		start_8_look_to_sides_part_8 = "Yousa see what mesa sayin'? Love for that.",

		start_9_look_to_sides_part_1 = "Yo mesa can't lie I just seen a cop go past there bro!",
		start_9_look_to_sides_part_2 = "Yousa sure yousa wassen't gettin' followed or none of dat?",
		start_9_look_to_sides_part_3 = "'Cos mesa- ay mesa can't lie FIB right now are doin' some next level dungo.",
		start_9_look_to_sides_part_4 = "Theysa got bare choppers in da air and dungo bro.",
		start_9_look_to_sides_part_5 = "Mesa all seein' and all knowin' bro. Trust mesa on dat.",
		start_9_look_to_sides_part_6 = "Yeah yeah.. he was fully on yousa earlier bro, yousa remember- yousa remember dat charger yousa went past bro?",
		start_9_look_to_sides_part_7 = "Meesa thinkin' he no turn da lights on? Trust me though..",
		start_9_look_to_sides_part_8 = "Yeah, mesa know dat, mesa know dat.",

		start_burger_shot_part_1 = "Yo mesa seen yousa at Burger Shot one time.. yousa flip patties init?",
		start_burger_shot_part_2 = "Yeah mesa can't lie, yousa defo needin' this bread.",

		start_cop_1_part_1 = "Yo mesa can smell a fed from Maze Bank bro..",
		start_cop_1_part_2 = "Mesa can tell yousa a fed.",
		start_cop_1_part_3 = "Better callin' backup before mesa gettin' to airing out your little boy cop car bro.",

		start_cop_2_part_1 = "Meesa assistin' the sick people o' Blaine County, sir.",
		start_cop_2_part_2 = "Nuthin' illegal goin' on ova here, sir.",

		start_gang_member_part_1 = "Meesa swearin' mesa sawin' you get clapped by that there gang..",
		start_gang_member_part_2 = "Yeahh yeahh, you defo got shat on, mesa can tell with that there dickhead face paint.",

		start_group_part_1 = "Yo mesa heard yousa boys wanna go and uh- run some oxy for mesa like that.",
		start_group_part_2 = "Meesa can't lie, the more the merrier right now, but mesa can only give the pills to one of yousa mandem.",
		start_group_part_3 = "So meesa hope you take dat nicely, go with yousa little squad or whateva and go get dis bombad done my bro.",
		start_group_part_4 = "'Cos time issen money right now bro, yousa catchin' meesa drift?",
		start_group_part_5 = "Yousen takin' too long standin' 'ere bro, hurry up my bro, frak off bro.",

		start_knife_part_1 = "Ookayy, dat's a big rambo on yousa waist my bro!",
		start_knife_part_2 = "Bro betta not swing dat thing around 'ere 'cos it's gonna get peak for you my brotha!",

		start_last_fail_part_1 = "Yooo, issen it my guy from over der, what yousa sayin' bro? Ay, wag1 and all of dat, my guy!",
		start_last_fail_part_2 = "Meesa need yousa again for a litta mission like..",
		start_last_fail_part_3 = "Yeah yeah.. yousa know what mesa talkin' 'bout, the oxy, yeah, yeah of course yousa do.",
		start_last_fail_part_4 = "Ay, mesa gonna send yousa the thing on the phone.",
		start_last_fail_part_5 = "Yousa do what yousa have to do big bro, love for that.",

		start_legendary_tier_part_1 = "Ohhh, so yousa big ballin' like that?",
		start_legendary_tier_part_2 = "Legendary tier, okayy, looks like yousa might have to buy the whole floor for EDM my brother!",
		start_legendary_tier_part_3 = "Meesa help yousa.",

		start_mechanic_part_1 = "Yoo, yousa repair cars init?",
		start_mechanic_part_2 = "Yo g, after dissa I'ma need yousa to tune up my Asbo 'cos da dinga got too many dents in it bro.",

		start_mercedes_part_1 = "Yo Meesa love dat Mercedes yousa got bro!",
		start_mercedes_part_2 = "Meesa can't lie I'ma need dat off yousa when yousa finished 'ere with dissa little thing right 'ere bro.",

		start_no_gun_part_1 = "Bro comin' here on a friendly visit like yousa not gonna get robbed.",
		start_no_gun_part_2 = "Mesa sorry, ooters out now but..",
		start_no_gun_part_3 = "Naboo, stay strapped next time yo.",

		start_on_timer_1_part_1 = "Ey, mesa can't lie to yousa bro, yousa failed da last one, so what yousa doin' here bro?",
		start_on_timer_1_part_2 = "Nahh bro, come back later when yousa decide to get your act together yousa DICKhead.",

		start_on_timer_2_part_1 = "Nahh bro, last time yousa failed me bro..",
		start_on_timer_2_part_2 = "Go fuck off and do somethin' else my man.",

		start_on_timer_3_part_1 = "Is it? Yousa think yousa can come around here after fucking up like that bro?",
		start_on_timer_3_part_2 = "Nah, yousa betta leave befoe I get da ooters on yousa bro!",

		start_on_timer_4_part_1 = "Yousa, mesa bombad can't lie, last time yousa messed up bare bro..",
		start_on_timer_4_part_2 = "Mesa can't lie, it's ganna look a bit peak for yousa if yousa stay here for 'bout 2 more seconds, moi moi boy..",

		start_on_timer_5_part_1 = "Yoo, what yousa sayin' g?",
		start_on_timer_5_part_2 = "Mesa can't lie, yousa messed up last time bro, yousa didn't even get da pills bro.",
		start_on_timer_5_part_3 = "Like yousa messed up big time bro like..",
		start_on_timer_5_part_4 = "Meesa say, don't come down here again brotha! Yousa understandin' meesa?",
		start_on_timer_5_part_5 = "Meesa knowin' yousa name, meesa seen yousa face brotha. Yousa finished out here brotha.",

		start_on_timer_6_part_1 = "Yeah dis guysa thinkin' he's a bad boy init? Messin' up and comin' back to meesa and actin' all sorry like..",
		start_on_timer_6_part_2 = "Nahh brotha, it don't workin' like dat around here brotha.",
		start_on_timer_6_part_3 = "Yousa betta fuck off right now my guy!",

		start_on_timer_7_part_1 = "Yeah meesa can't lie, dis guy FUCKED up..",
		start_on_timer_7_part_2 = "Yousa see dissa guy over here? Yousa see dissa dickhead right here yeah?",
		start_on_timer_7_part_3 = "He messed up, ay bro come here bro!",
		start_on_timer_7_part_4 = "Yeah I can't lie, yousa a dickhead, get outta here bro, come back later man.",

		start_on_timer_8_part_1 = "Yeah yousa some typa guy bro..",
		start_on_timer_8_part_2 = "Dis guy goes around MY thing bro.. messes up MY thing bro.. pisses off MY people bro.",
		start_on_timer_8_part_3 = "Den comes back he expecting a re-up, expect to get PAID bro!",
		start_on_timer_8_part_4 = "Expect ta get da bread bro.. you ain't getting no bread bro..",
		start_on_timer_8_part_5 = "You's getting crumbs bro.. get da FUCK offa my block bro!",
		start_on_timer_8_part_6 = "Get outta here bro, you's done and all of dat.",
		start_on_timer_8_part_7 = "Da phone just pinged aswell bro, you's finished bro! I gots someone else on dis thing bro.",

		start_over_31d_part_1 = "Yo I can't lie bro! You's been here for too long..",
		start_over_31d_part_2 = "I beg you's go touch something quickly and come back bro.",

		start_over_100k_part_1 = "Why you pushin' grub when yousa got over a 100 bags to ya name?",
		start_over_100k_part_2 = "Dat ain't in cash right? 'cos I'ma defo send da ooters to rob yousa bro.",

		start_revving_part_1 = "Aite if you keep revvin' dat piece of shit car bro, we finna have problems.",
		start_revving_part_2 = "Relax ya foot, before I relax yousa bro!",

		start_staff_1_part_1 = "Ay yo bro.. ain't yousa meant to be like bannin' dickheads and other dickhead shit instead of talkin' to mesa?",
		start_staff_1_part_2 = "Fuck it, mesa need da bread but mesa watchin' yousa admins.",

		start_staff_2_part_1 = "Broo, yousa like da second moderator to be runnin' oxy today..",
		start_staff_2_part_2 = "Yousa lot need to be on job, not on dis job though.",

		start_streamer_part_1 = "Yoooo, dat's dat one guy who thinks he's some big streamer!",
		start_streamer_part_2 = "Yo Ls in da chat, fuck dis guy bro!",

		start_stressed_part_1 = "Bro! Why yous hands shakin'?!",
		start_stressed_part_2 = "Go take a smoke break or somethin' bro 'cos yousa movin' too stress right now.",

		start_subaru_part_1 = "Ay dat Subaru better be good off-road g!",
		start_subaru_part_2 = "Mesa take yousa on different trail!",

		start_under_10k_part_1 = "Broo, mesa know yousa got like under 10k to yousa name!",
		start_under_10k_part_2 = "So why don't yousa go take yousa broke arse and thes pills to the location.. quickly my brotha.",

		start_under_24h_part_1 = "Yousa beast bro! Keep it pushin'.",

		start_zombie_pills_part_1 = "Okay so yousa just banged out Z Pills and now yousa wanna bang out Oxy Pills..",
		start_zombie_pills_part_2 = "Naah yousa definitely a crackhead!",

		still_pressing_e_1_part_1 = "Aite mooey, why yousa bein' bait mooey?",
		still_pressing_e_1_part_2 = "Stop comin' back to da spot mooey. Mooey I sent yousa da ping, check yousa phone moi-guy.",
		still_pressing_e_1_part_3 = "Yousa yeah yeah, check dat.. check dat..",

		still_pressing_e_2_part_1 = "Mooey, yousa- yousa some sorta doo-doo brain or somethin'?",
		still_pressing_e_2_part_2 = "Mooey I just sent yousa da ping mooey, yousa blind or somethin' mooey?",
		still_pressing_e_2_part_3 = "Check dat phone mooey, off yousa go mooey!",

		still_pressing_e_3_part_1 = "Yousa keep doin' dis to meesa, mesa tellin' yousa too many times my guy..",
		still_pressing_e_3_part_2 = "If yousa doin' dat again, mesa definitely sendin' the ooters after yousa bro.",

		still_pressing_e_4_part_1 = "Yousa takin' the piss now, back off bro!",

		still_pressing_e_5_part_1 = "Brooo, yousa stupid or somethin'?",
		still_pressing_e_5_part_2 = "Keep comin' back to mesa chattin' to meesa like dat with your big boy voice?",
		still_pressing_e_5_part_3 = "Ay yousa better back off right now, mesa swear to god mesa gonna fuck yousa up bro!",

		still_pressing_e_6_muffled_part_1 = "Meesa thinkin dis guy's a bombad doofus..",

		still_pressing_e_7_muffled_part_1 = "Meesa thinkin dis guy's a bombad doofus, bro.",
		still_pressing_e_7_muffled_part_2 = "He undoubtedly a bombad doofus, he keep comin' back!",
		still_pressing_e_7_muffled_part_3 = "He thinks meesa gonna get mui mui pissed off, but meesa not getting mui mui pissed off bro!",

		still_pressing_e_8_part_1 = "Yousa really pissing me off now..",
		still_pressing_e_8_part_2 = "So stop pressing E bro.",

		still_pressing_e_9_part_1 = "Yousa really pissing me off if you keep pressing E bro.",
		still_pressing_e_9_part_2 = "Mesa go meta and mesa blow yousa up in dis bitch bro, bantha poodoo yousa bro.",

		taking_too_long_1_part_1 = "Ay bro, yousa taking a bit too long my guy, yousa know mesa sayin'..",
		taking_too_long_1_part_2 = "Yousa better hurry dat ting up quickly though.",

		taking_too_long_2_part_1 = "Ay, if yousa keep takin' long we's gonna have big boy problems for yousa, yousa know mesa sayin'?",
		taking_too_long_2_part_2 = "Yousa too late bro, yousa too late right now.. hurry up bro.",

		taking_too_long_3_part_1 = "Yoo bro, yousa takin' way too long bro, yousa tryna steal mesa job or somethin' bro?",

		taking_too_long_5_part_1 = "Yoosa tinken yousa berry funny init? Yousa tink disa issa some type of jokey bigg boss?",
		taking_too_long_5_part_2 = "Ay, come.. Mesa beg yousa come to mesa right now bro, see what happen to yousa bro.",

		taking_too_long_6_part_1 = "Ay yousa BEST not be takin' da piss bro.. Mesa wanten mesa shit NOW fam..",
		taking_too_long_6_part_2 = "Hurry da bantha up bro.",

		taking_too_long_7_part_1 = "Bro mesa knowen what car you're drivin'..",
		taking_too_long_7_part_2 = "Mesa see yousa when you left bro, don't tink yousa safe.",

		taking_too_long_8_part_1 = "Mesa helpin' ya bro, but dis bein' da last chance.",
		taking_too_long_8_part_2 = "If you take long mesa gonna call da ooters and it's gonna get sticky for you my guy.",
		taking_too_long_8_part_3 = "So youssa better hurry the fuck up quickly bro... clock's tickin' bro.",

		too_many_people_1_part_1 = "Oi mesa can't lie, der's plenty people around mesa right now bro!",
		too_many_people_1_part_2 = "Why yousa all here? Yousa tryna like take over da spot or somethin' bro?",
		too_many_people_1_part_3 = "'cos mesa swear to bombad, mesa got ooters and matics ready to kill someone.",
		too_many_people_1_part_4 = "Meesa get what yousa sayin', bro..",
		too_many_people_1_part_5 = "Step back, all yousa bros! Meesa said ALL yousa bros, yeah that means yousa bro, kriff yousa bro!",

		too_many_people_2_part_1 = "Yo, mesa no can lie, theres too many people right now bro..",
		too_many_people_2_part_2 = "Yousa movin' kinda bait right now with all these man next to yousa and all of dat bro.",
		too_many_people_2_part_3 = "Yousa said there was only be 1 of yousa around these parts bro, not like 4 of yousa dickheads bro..",
		too_many_people_2_part_4 = "Mesa no care if yousa in some sort of gang bru, do Mesa give a wesa bru? No bru..",
		too_many_people_2_part_5 = "Back yousa and your people up right now before it gets serious brother.",

		tutorial_1_part_1 = "Ay what's good bru? Yousa tryna run some oxy for mesa bru?",
		tutorial_1_part_2 = "Yoo that's good! Ay, Mesa can't lie to yousa right now bru Mesa been lookin' for some help on all of that bru.",
		tutorial_1_part_3 = "Ay, ay listen here- listen here though..",
		tutorial_1_part_4 = "Mesa got a bunch of forge prescriptions yeah.. made for mesa around up north bru.",
		tutorial_1_part_5 = "Yeah bombad but mesa need yousa to pick up these tings for me-",
		tutorial_1_part_6 = "And den what mesa need yousa to do- Oi, listen to meesa bro when mesa speakin' to yousa bro!",
		tutorial_1_part_7 = "Take dem down to da city right.. and redeem them!",
		tutorial_1_part_8 = "Bombad.. bombad.. yousa need to redeem them bro.",
		tutorial_1_part_9 = "Yeah mesa gonna send yousa da details on da phone so just check your GPS and all of that bro mesa got yousa bro..",
		tutorial_1_part_10 = "But oi.. yousa better not take too long.. otherwise mesa gonna have to get da ooters on yousa bro.",
		tutorial_1_part_11 = "Mesa promise yousa, dats not lookin' good for yousa there, mesa no can lie 'bout dat.",
		tutorial_1_part_12 = "Yeah, letsa getsa goin' big bro.. stop speakin' to mesa bro, stop lookin' at mesa face bro and hurry da fup bro.",

		tutorial_2_part_1 = "Oi what'sa good bro? Yousa tryna run some oxy for mesa bro?",
		tutorial_2_part_2 = "Yoo, datsa good! Ay, mesa no can lie to yousa right now bro, mesa been lookin' for some help on all of datsa bro.",
		tutorial_2_part_3 = "Yo bro, mesa got a bunch of forge prescriptions made for mesa around up north here bro.",
		tutorial_2_part_4 = "Ay, mesa gonna need yousa to do dis for me, take dis prescriptions and go pick dem up for me bro-",
		tutorial_2_part_5 = "Yeah, den listen mesa here though- listen mesa here, take dem down to da city bro, and redeem it at da pharmacies.",
		tutorial_2_part_6 = "Yeah, yeah, yeah, yeah..",
		tutorial_2_part_7 = "Yeah mesa gonna send yousa da details on da phone though, so just check yoursa GPS and all of dat bro, mesa got yousa bro.",
		tutorial_2_part_8 = "But oi.. yousa betta not take too long.. otherwise mesa gonna have ta get da ooters on you bro.",
		tutorial_2_part_9 = "Yousa gonna have some trouble right dare, mesa can't lie about dat.",
		tutorial_2_part_10 = "Yeah letsa go big bro, stop speaking to mesa bro, stop lookin' at my face bro and hurry da fuck up bro.",

		tutorial_3_part_1 = "Yo wesa up my brudda? Basically, yousa trynna run some oxy for mesa right now?",
		tutorial_3_part_2 = "Yeah.. yeah.. datsa good though, cos mesa can't lie mesa been lookin' for some help on all of dat.",
		tutorial_3_part_3 = "Yeah, yeah, yeah.. Mesa got a bunch of forge prescriptions made for mesa around here up north. Trust mesa on dat though.",
		tutorial_3_part_4 = "Meesa need yousa to do dis favor for me. Could yousa pick up da prescriptions for meesa, please?",
		tutorial_3_part_5 = "Den, yousa gotta take dem to da different pharmacies in da city and redeem dem.",
		tutorial_3_part_6 = "Don't worry, mesa got yousa. I'll send yousa da encro details, check yousa GPS my friend.",
		tutorial_3_part_7 = "Meesa send yousa da encro information. Check yousa GPS, okay?",
		tutorial_3_part_8 = "Hurry up big man, or da ooters gonna get yousa!",
		tutorial_3_part_9 = "Yeah lets get goin' big bro, stop speakin' to me bro, stop lookin' at my face bro and hurry the kark up bro.",
		tutorial_3_part_10 = "Lub lub, bro."
	},

	panel = {
		loading_title = "Loadin'",
		error_title = "Somethin' went wrong",

		was_banned = "Banned",
		loading = "Loadin' player data...",
		no_warnings = "No warnin's",
		not_shown_warnings = "${count} mo' not shown",
		system_issuer = "System",
		add_warning_title = "Add Warnin'",
		message_placeholder = "${playerName} did an oopsie...",

		type_note = "Note",
		type_warning = "Meesa warn yousa mesa!",
		type_strike = "Strike",
		type_system = "System",

		button_cancel = "Meesa nah wanna!",
		button_add = "Add",
		button_close = "Close",
		button_new = "New",

		invalid_server_id = "Invalid server id. Mesa no think that'sa right.",

		failed_load_player = "Failed to load player data. Did you enter a valid server id? Mesa don't unerstan.",
		failed_add_warning = "Failed to add warning. Uh oh. Meesa made a mistake!",

		get_info_no_permissions = "Player attempted to get info about a player without proper permissions. Mesa no think yousa allowed to do dis.",

		user_indefinitely_banned_warning_no_reason = "I indefinitely banned this person without a specified reason. This warning was generated automatically as a result of the ban. Uh oh. Mesa did someting bad.",
		user_indefinitely_banned_warning = "Meesa bin ban dissa person forever wif da reason `${reason}`. Dis warning was made by da system cuz of da ban.",
		user_temporarily_banned_warning_no_reason = "Meesa ban dissa person wifout any reason for ${displayTime}. Dis warning was made by da system cuz of da ban.",
		user_temporarily_banned_warning = "Meesa ban dissa person wif da reason `${reason}` for ${displayTime}. Dis warning was made by da system cuz of da ban."
	},

	panic = {
		press_panic_button = "Meesa help yousa! You have 5 seconds to press your panic button (X).",
		panic_button_timeout = "Yousa did not press your panic button in time.",

		panic_button_title = "[Dispatch]",

		panic_button_unit = "10-14, ${unitId} ${lastName} ${label} down.",
		panic_button_no_unit = "10-14, ${lastName} ${label} down.",

		panic_blip = "10-14 ${lastName}",

		label_officer = "Officer",
		label_paramedic = "Paramedic"
	},

	paper_bags = {
		fill_bag = "[${SeatEjectKey}] Fill Paper Bag",
		no_bags = "Yousa don't have any paper bags.",
		no_bag_items = "Yousa don't have any items that you could put in a paper bag.",
		close_bag = "Closea Bagga",
		cancel_bag = "Cancela",
		title = "Papera Baga",
		failed_fill = "Failed to filla papera baga.",
		filled_bag = "Successfully filleda papera baga."
	},

	parking_meters = {
		not_paid = "Noten Paiden",
		insert_dollar = "[${InteractionKey}] Inserten $${amount}",

		no_cash = "Yousa no haven a dollaren.",
		max_time = "Thisa parkinga meter is already maxen outen.",
		failed_pay = "Failed to paya parkinga meter."
	},

	pawn_shops = {
		sell_items = "Sell ${itemLabel}",
		press_to_sell_items = "[${InteractionKey}] Sell ${itemLabel}",
		sold_items = "Solden ${sellAmount}x ${itemLabel} for $${sellPrice}.",
		no_items_to_sell = "Yousa haven't any ${itemLabel} to sell.",
		daily_limit_reached = "Mesa sorry but yousa reached yousa daily limit, the vendor is not buying any more items.",
		illegal_pawn_shop_id = "Mesa sorry, there is no pawn shop with this id.",
		used_pawn_shop_title = "Used Pawn Shop",
		used_pawn_shop_details = "${consoleName} used a pawn shop and sold ${sellAmount} of `${itemLabel}` and received $${sellPrice}."
	},

	ped_messages = {
		attempt_succeeded = "attempted ${attemptMessage} and succeeded",
		attempt_failed = "attempted ${attemptMessage} but failed",
		dice_message = "Meesa roll a dice and get a ${diceNumber}",
		roll_message = "Meesa roll a custom dice with settings ${rolls}d${max} and get ${totalValue}",
		citizen_card_message = "Meesa show a citizen card (${characterId})",
		badge_message = "Meesa show a badge (${characterId})",
		license_message = "Meesa show a license (${characterId})",
		ped_message_logs_title = "Ped Message",
		ped_message_logs_details = "${consoleName} sent a ped message with the following message: `${pedMessage}`",
		attached_ped_message_logs_title = "Attached Ped Message",
		attached_ped_message_logs_details = "${consoleName} mesaaged with a peda with da followin' message: `${pedMessage}`",
		chat_ped_messages_enabled = "Ped messages yusa will now see in da chat.",
		chat_ped_messages_disabled = "Ped messages no longer yusa will see in da chat.",
		me_message_chat_title = "/me [${serverId}]",
		inspect_chat_title = "/inspect [${serverId}]",
		frisk_chat_title = "/frisk [${serverId}]",
		do_message_chat_title = "/do [${serverId}]",
		attempt_message_chat_title = "/attempt [${serverId}]",
		dice_message_chat_title = "/meesa hisa dice [${serverId}]",
		roll_message_chat_title = "/meesa hisa roll [${serverId}]",
		description_message_chat_title = "/meesa hisa description [${serverId}]",
		message_too_long = "Meesa issen too long, too many characters or lines!",
		card_command_wait = "You just drew a card, wait a bit before drawing another one.",
		ped_message_timeout = "Slow down cowabunga, wait a bit before sending another message."
	},

	ped_objects = {
		illegal_ped_object = "Uh-oh! Meesa not sposta add dat ped object to meself!",
		illegal_ped_weapon_object = "Uh-oh! Meesa not sposta add dat ped weapon object to meself!"
	},

	ped_task = {
		network_id_invalid = "Yousa network id is invalid.",
		ped_not_found = "Ped with network id `${networkId}` isa not found.",
		tracked_ped = "Tracked Ped",
		tracked_ped_is = "Ped (${entity}) isa:"
	},

	ped_spawn = {
		ped_missing_model = "Missing model parameter. ",
		ped_spawn_success = "Wesa successfully spawned ped.",
		ped_failed_spawn = "Failed to spawn ped.",
		invalid_weapon = "Disa weapon isa invalid.",
		ped_remove_success = "Wesa successfully removed spawned peds.",
		ped_failed_remove = "Failed to remove spawned peds.",
		ped_task_success = "Wesa successfully assigned '${task}' task to spawned peds.",
		ped_failed_task = "Meesa no can assign '${task}' task to spawned peds.",
		invalid_target = "Invalid target server ID. Yousa must check again.",
		missing_task = "Meesa sorry, but task parameter missing. Yousa must provide it.",
		invalid_task = "Invalid ped task '${task}'. Yousa must provide a valid task.",
		target_required = "This ped task requires a valid target. Yousa must provide one.",
		ped_emote_success = "Yousa did it! Successfully made spawned peds play '${emote}' emote.",
		ped_failed_emote = "Meesa sorry, but meesa no can make spawned peds play '${emote}' emote.",
		invalid_emote = "Invalid emote '${emote}'. Yousa input a valid emote.",
		missing_emote = "Missing emote parameter. Yousa must provide it.",

		emote_list = "Available ped emotes: ${list}.",
		task_list = "Mesa available ped tasks: ${list}.",

		spawn_ped_missing_perms = "Mesa tryin to spawn a new ped, but mesa no have da permissions.",
		remove_peds_missing_perms = "Mesa no let remove da peds mesa spawned witout da permissions.",
		ped_assign_task_missing_perms = "Mesa no allowed to assign tasks to da spawned peds witout da permissions."
	},

	ped_steal = {
		ped_steal_reset = "Da player peds mesa reset.",
		ped_steal_success = "Mesa successfully stole da skin of da ped.",
		ped_steal_failed = "Mesa no was able to steal da ped skin.",
		ped_not_found = "Mesa no find da player ped.",
		invalid_server_id = "Meesa sa sorry, dissa id for da server issa invalid."
	},

	ped_takeover = {
		failed_reset = "Meesa sorry, failed to switch back to original ped.",
		failed_reset_not_exist = "Yousa original ped no existen or issa not near yousa.",
		failed_takeover = "Meesa sorry, failed to takeover ped.",
		invalid_network_id = "Yousa network id issa invalid."
	},

	peds = {
		ped_robbing_injection = "Excessive ped-robbing! (Bypassed server-timeout, most likely using an injector to accomplish this.)",
		robbed_ped_logs_title = "Robbed Ped",
		robbed_ped_logs_details = "${consoleName} robbed a ped and received $${payout}."
	},

	pepper_spray = {
		press_to_pepper_spray = "Da pressa ~INPUT_ATTACK~ pa use da Pepper Spray.",
		using_pepper_spray = "Mesa use'n Pepper Spray."
	},

	phone = {
		app_settings = "Settings",
		app_contacts = "Contacts",
		app_calls = "Phone",
		app_messages = "Messages"
	},

	phone_numbers = {
		no_phone_number_set = "No phone number was set.",
		invalid_format = "Da phone number yousa' set was o' invalid format.",
		invalid_length = "Da phone number yousa' set was o' invalid length.",
		invalid_characters = "Da phone number yousa' set contained invalid characters.",
		phone_number_changed_to = "Yousa' phone number has been changed to `${phoneNumber}`.",
		phone_number_taken = "Da phone number `${phoneNumber}` is taken.",
		database_error = "Mesa bombad database gone underwater.",
		no_packages = "Yousa no have any packages for dis.",
		api_error = "Our back-end API mesa no understandin.",
		api_not_available = "Mesa back-end API no available.",
		phone_number_is_available = "Da phone number `${phoneNumber}` is available.",
		phone_number_is_not_available = "Da phone number `${phoneNumber}` is not available."
	},

	pictures = {
		selfie_description = "Picture of ${firstName} ${lastName}."
	},

	player_control = {
		unable_to_drive_for_yourself = "Yousa unable to take over for yourself.",
		drive_for_player_no_permissions = "Player attempted to drive for player but theysa didn't have da required permissions to do so.",
		player_is_not_nearby = "Da player with server ID ${serverId} isa not nearby.",
		player_is_not_the_drive_of_a_vehicle = "Da player with server ID ${serverId} isa not da driver of a vehicle.",
		press_to_stop_drive_for = "Press ~INPUT_FRONTEND_CANCEL~ to stop driving for player."
	},

	player_scales = {
		reset_player_scale_for = "Reset da player scale for ${consoleName}.",
		set_player_scale_to_for = "Mesa set da player scale ta `${scale}` por ${consoleName}",
		reset_player_scale = "Reset da player scale.",
		set_player_scale_to = "Mesa set da player scale ta `${scale}`.",
		set_player_scale_no_permission = "Da player no have da required permission to set da player's scale.",
		player_is_already_set_to_scale = "${consoleName} issen already set to da scale ta `${scale}`.",
		you_are_already_set_to_scale = "Yousa already set to da scale ta `${scale}`.",
		player_is_not_scaled = "${consoleName} issen not scaled.",
		you_are_not_scaled = "Youse not scaled."
	},

	player_stats = {
		hp = "HHP",
		armor = "Armah",
		toggle_player_stats_no_permissions = "Mesa people not allowed to toggle player stats.",
		updated_render_range = "Mesa updated render range to ${renderRange}.",
		turned_player_stats_on = "Mesa turned on player stats.",
		turned_player_stats_off = "Mesa turned off player stats."
	},

	players = {
		player_left = "Player gone [${serverId}]"
	},

	pole_dancing = {
		press_to_strip_dance = "Pressa ~INPUT_CONTEXT~ to strip dance.",
		this_pole_is_occupied = "Disa pole already taken.",
		stop_dancing = "Mesa stop dancing, oke day?",
		change_dance = "Change Dance (${animationId}): ${animationId} mesa go.",

		no_model_name_set = "No model name set. Mesa confused.",
		invalid_model = "Model '${modelName}' isa invalid. Try another one.",
		pole_dancing_offset = "Model '${modelName}': vector3(${x}, ${y}, ${z})."
	},

	pools = {
		pools_overflowing = "Pools Overflowing: ~r~${poolsOverflowing}."
	},

	props = {
		illegal_prop_item_id = "Player attempted to use a prop item with an illegal item id. Mesa no understand.",
		spawn_prop_not_staff = "Player attempted to spawn a prop but they didn't have the required permissions to do so. You not have the required permissions to do that.",
		managing_props_help = "Yousa currently managin props. Walk up to a prop and press ~INPUT_CONTEXT~ to pick it up.",
		total_props = "Total Props: ${count}",
		active_props = "Active Props: ${count}",
		press_to_pick_up = "[${InteractionKey}] Pick Up",
		pick_up = "Pick Up",
		picking_up = "Picking Up",
		press_to_destroy = "[${InteractionKey}] Destroy",
		destroy = "Destroy",
		destroying = "Destroying",
		prop = "Prop",
		model_parameter_missing = "Da `model` parametia is missin.",
		model_parameter_invalid = "Da model `${model}` is an invalida model.",
		model_parameter_is_not_an_object = "Mesa thinks da model `${model}` issen't an object, okeyday?",
		spawned_prop_non_networked = "Mesa spawned a prop with the model `${model}`, but it no part of da network.",
		spawned_prop_networked = "Mesa spawned a prop with da model `${model}`, and it part of da network.",
		spawned_exact_prop = "Mesa spawned da exact prop.",
		failed_to_spawn_prop = "Oops, mesa no coulda spawn da prop with da model `${model}`.",
		not_able_to_spawn_in_vehicle = "Yousa no can spawn a prop while yousa in da vehicle.",
		not_able_to_spawn_while_dead = "Yousa no can spawn a prop while yousa dead.",
		not_able_to_spawn_while_moving = "Yousa have to stand still when spawning a prop.",
		stand_still_to_place_prop = "Yousa have to stand still to place a prop.",
		prop_no_interior = "Yousa can only place dissa prop outside.",

		invalid_prop_id = "Invalid prop id.",
		prop_deleted = "Prop with id ${propId} was deleted.",

		invalid_wipe_radius = "Invalid wipe radius (between 1 and 100).",
		wipe_successful = "Successfully wiped props.",
		wipe_props_missing_permissions = "Player attempted to wipe props but they didn't have the required permissions to do so.",

		placing_prop = "Placinka Prop",
		pickup_prop = "Pickinka Up Prop",
		setting_up_tire_wall = "Settin\' Up Tire Wall",
		destroying_tire_wall = "Destroyinka Tire Wall"
	},

	radio = {
		frequency = "Frequenkin",
		switch = "Switch",
		radio_turned_off = "Da radio has been turned off.",
		radio_removed = "Yousa lost yoosa radio.",
		no_radio = "Yousa don\'t have a radio.",
		unable_to_use_radio_while_cuffed = "Yousa can not use da radio while yousa are cuffed.",
		unable_to_use_radio_while_down = "Yousa can not use da radio while yousa are down.",
		unable_to_use_radio_as_animal = "Mesa no can use da radio as'n animal.",
		frequency_set_to_streamer = "Da frequency has been set.",
		frequency_set_to = "Da frequency has been set to ${frequency}.",
		frequency_already_set_to = "Da frequency issa already set to ${frequency}.",
		radio_volume_same = "Da radio volume issa already set to `${radioVolume}`.",
		radio_volume_reset = "Da radio volume has now been reset.",
		radio_volume_set = "Da radio volume has now been set to `${radioVolume}`.",
		radio_volume_current = "Yousa current radio volume issa set to `${radioVolume}`.",
		radio_volume_current_default = "Yousa current radio volume is default.",
		radio_sound_effects_same = "Da volume of da radio sound effects issen already set to `${radioSoundEffects}`.",
		radio_sound_effects_reset = "Da volume of da radio sound effects hassa now been reset.",
		radio_sound_effects_set = "Da volume of da radio sound effects hassa now been set to `${radioSoundEffects}`.",
		radio_sound_effects_current = "Da volume of da radio sound effects issen currently set to `${radioSoundEffects}`.",
		radio_sound_effects_current_default = "Da volume of da radio sound effects issen currently default.",

		radio_missing_last_freq = "Yousa no have a radio to join da last frequency.",

		radio_debug_failed = "Mesa no could toggle da radio debug.",
		radio_debug_off = "Successfully toggled radio debug off.",
		radio_debug_on = "Successfully toggled radio debug on.",

		radio_debug_no_permissions = "Mesa attempted to toggle da radio debug without proper permission.",

		decrypt_frequency = "[${InteractionKey}] Decrypt Frequency",
		decrypting_frequency = "Decrypting Frequency",
		decrypting_frequency_failed = "Failed to decrypt frequency.",
		decrypter_jammed = "Mesa thinks da decrypter issa jammed.",
		decrypted_frequency = "Frequency issa rounda `${frequency}`.",
		no_frequency_detected = "Nosa frequency detected."
	},

	remote_camera = {
		connected_to_camera = "Connected to camera #${id}",

		camera_distance = "Distansa: ${distance}m",
		out_of_range = "Outta range",

		disconnect = "Disconnect",
		view_feed = "View Feed",

		no_nearby_cameras = "Nosa nearby cameras",
		nearby_cameras = "${amount} nearby camera(s)",
		no_nearby_cameras_description = "There are no cameras near you.",

		camera_operator = "Da Opuratur: ${fullName}",

		camera_label = "${id}-boom",
		camera_distance = "Distansa: ${distance}m",
		connect = "Cunnact",

		something_went_wrong = "Mesa tink dat sumtin wentoonga wrong.",
		error_out_of_range = "Da camera is outta mesa range.",
		error_not_found = "Dere is no camera in dis place."
	},

	reskin = {
		plastic_surgery = "Jub jub plastik surgery",
		los_santos_police_dept = "LOS SANTOS POLICE DEPT",

		reskin_player_no_permissions = "Dis player noes have da permission to changeta da radio debug.",

		triggered_reskin_for_player = "Mesa triggered reskin for ${consoleName}.",

		triggered_reskin_for_player_logs_title = "Meesa Triggered Reskin For Player",
		triggered_reskin_for_player_logs_details = "${consoleName} triggered a reskin for ${targetConsoleName}.",

		triggered_reskin_for_self_logs_title = "Meesa Triggered Reskin For Mesa",
		triggered_reskin_for_self_logs_details = "${consoleName} triggered a reskin for themselves.",

		no_reskin_packages = "Yousa have no reskin packages.",
		redeemed_reskin_package = "Mesa Successfully Redeemed Reskin Package."
	},

	restaurants = {
		["table"] = "Table",
		press_to_table = "[${InteractionKey}] Table",

		table_title = "Mesa ${tableId}",
		seat = "Asiento ${seatId}",
		close_menu = "Cerrar menú",
		loading = "Cargando...",

		leave_seat = "Dejar asiento",
		view_menu = "Ver menú",
		change_seating_position = "Cambiar posición de asiento (${animationId})",

		sushi = "Sushi",
		drinks = "Bebidas",
		desserts = "Postres",

		aka = "Aka",
		kuro = "Kuro",
		shiro = "Shiro",
		midori = "Midori",
		nigiri = "Nigiri",
		sex_on_the_beach = "Sex on the Beach",
		mojito = "Mojito",
		pina_colada = "Piña Colada",
		tiramisu = "Tiramisú",
		chocolate_mousse = "Mousse de chocolate",

		food_replenish = "Yous hunger and thirst will be replenished wesa ${amount}%.",
		thirst_replenish = "Yous thirst will be replenished wesa ${amount}%.",
		hunger_replenish = "Yous hunger will be replenished wesa ${amount}%.",
		diving_drop_boost = "Gain ${amount}x mores drops from scuba trips for ${duration} minutes.",
		hunting_drop_boost = "Gain ${amount}x mores drops from hunting trips for ${duration} minutes.",
		garbage_drop_boost = "Gain ${amount}x mores drops from garbage runs for ${duration} minutes.",
		faster_progress_bars = "Haves ${amount}x faster progress bars for ${duration} minutes.",
		weapon_damage_multiplier = "Yousa have a ${amount}x damage multiplier for ${duration} minutes.",
		local_sales_multiplier = "Yousa have a ${amount}x sales multiplier for products sold to locals.",
		shorter_boosting_cooldown = "Yousa have a ${amount}x shorter cooldown between hacks on boosting.",
		swim_faster = "Yousa swim ${amount}x faster for ${duration} minutes.",
		walk_faster = "Yousa walk and run ${amount}x faster for ${duration} minutes.",
		health_generation = "Yousa have gradual health regeneration for ${duration} minutes.",
		better_stamina = "Yousa be able to run without running out of stamina for ${duration} minutes.",
		more_inventory_space = "Mesa helpin' yousa wif an extra ${amount} space inna yousa inventory fo ${duration} minutes.",

		buffs_note = "Da boosts will only start workin' afta yousa leave da area around da building."
	},

	riot_mode = {
		riot_mode_enabled = "Riot mode activated!",
		riot_mode_disabled = "Riot mode disabled. Any monsters dat already aggressive will keep fightin' until der end.",
		riot_mode_failed = "Mesa nah suceeded inna togglin' da riot mode.",
		riot_mode_missing_perms = "Yousa no havin' enough permission to turn onna riot mode.",

		riot_mode_enabled_help = "Mooey-mooey! Riot mode has been enabled.",
		riot_mode_disabled_help = "Mesa feliz. Riot mode has been disabled.",

		add_riot_player_no_permissions = "Yousa no have permissions bombad! Tried to add a player to the riot list.",
		remove_riot_player_no_permissions = "Yousa no have permissions bombad! Tried to remove a player from the riot list.",

		player_already_in_riot_list = "${consoleName} issa already in the riot list.",
		player_not_in_riot_list = "${consoleName} issa not in the riot list.",
		added_riot_player = "Mesa added ${consoleName} to the riot list.",
		failed_to_add_riot_player = "Faileden to add ${consoleName} tu da riyot list.",
		removed_riot_player = "Removed ${consoleName} frum da riyot list.",
		failed_to_remove_riot_player = "Faileden to remove ${consoleName} frum da riyot list"
	},

	safes = {
		how_to_use = "Usa yo \"A\" an \"D\" kees tu roteto saifo until you find da corroct combo. Starten by pressen \"D\".",
		lock_open = "Unlockeden",
		lock_closed = "Locked"
	},

	scoreboard = {
		player_list = "Playa Lista",
		players = "Playas",
		total = "Total",
		recent_disconnections = "Recent Disconnections",
		disconnected_player = "Meesa so sorry, dis player ees gone",
		id = "ID (Gunganese: ID)",
		name = "Name (Gunganese: Naam)",
		identifier = "Identifier (Gunganese: Identifier)",
		reason = "Reason (Gunganese: Da reason)",
		time_since_disconnection = "Time since disconnection (Gunganese: Time since disconnected)",

		you_are_now_metagaming = "Yousa now doin' Metagaming.",
		you_are_no_longer_metagaming = "Yousa not doin' Metagaming anymore."
	},

	screenshots = {
		screenshot_created = "Yousa taken good screenshot!",
		screenshot_failed = "Meesa not able to get screenshot from dat user.",
		screencapture_created = "Yousa successful in makin' screencapture.",
		user_not_found_with_server_id = "Mesa no can find a user wit da server ID.",
		invalid_lifespan_parameter = "Dis lifespan ting issa no good.",
		invalid_server_id_parameter = "Dis server ID ting issa no good.",
		invalid_duration_parameter = "Dis duration ting issa no good.",
		invalid_fps_parameter = "Dis fps ting issa no good.",
		missing_server_id_parameter = "Mesa need da server ID ting.",

		screenshot_error_client_false = "Mesa couldn't create da screenshot.",
		screenshot_error_user_not_found = "User no found. Mesa sorry.",
		screenshot_error_user_developer = "User isa developer.",
		screenshot_error_no_token = "Failed to get opfw token mookee.",
		screenshot_timeout = "Screenshot request timed out mookee."
	},

	scuba = {
		sunken_ship = "Sunken Ship mookee",
		gather_item = "Gather Item (${distance}m) mookee",

		collected_junk = "Collected Junk mookee.",
		collected_item = "Collected ${itemLabel} mookee.",
		collected_broken_item = "Collected Broken ${itemLabel} mookee.",

		collected_scuba_item_logs_title = "Collected Scuba Item mookee",
		collected_scuba_item_logs_details = "${consoleName} collected a scuba item and received `${itemName}` mookee."
	},

	scuba_gear = {
		equipping_scuba_tank = "Picking Scuba Ntambi",
		equipping_scuba_mask = "Picking Scuba Kamporopari"
	},

	security_cameras = {
		illegal_security_camera = "Mila bamba ma kamera za security za kijanja.",
		saved_security_cameras_to_file = "Meja '${amount}' kamera za security muri file y' server.",
		no_nearby_security_cameras = "Ntaho haboneka kamera za security hamwe yo gutegura.",
		no_city_ping = "Ntamenye ko hakoreshwa kamera zo mu majyaruguru.",
		offline = "Offline",
		camera_list = "Ibindi bintu bihuriye mu kamera",
		camera = "Kamera ${cameraId}",
		mission_row_pd = "Police ya Mission Row",
		pillbox_hospital = "Huplokk Hospital",
		jewelry_store = "Rockford Hills Jew-Riokook Store",
		principal_bank = "Principal Bank",
		bolingbroke_penitentiary = "Bolingbroke Penitentiary",
		fort_zancudo = "Fort Zancudo",
		del_perro_pier = "Del Perro Pier",
		flywheels_garage = "Flywheels Garage",
		sandy_shores_pd = "Sandy Shores PD",
		sandy_shores_hospital = "Sandy Shores Huplokk",
		davis_sheriffs_station = "Davis Sheriff's Station",
		vespucci_pd = "Vespucci Police Station",
		rockford_hills_pd = "Rockford Hills PD",
		la_mesa_pd = "La Mesa PD",
		beaver_bush_ranger_station = "Beava Bush Renga Steshon",
		cinema = "Cinama",
		st_fiacre_hospital = "St. Fiacre Hospittal",
		weazel_news = "Weazal News",
		palomino_fib_facility = "Palomino FIB Fasilitee",
		bank_1 = "Lijon Squaya Bank",
		bank_2 = "Rockford Hills Bank",
		bank_3 = "Alta Bank",
		bank_4 = "Burtun Bank",
		bank_5 = "Banham Canyon Bank",
		bank_6 = "Grand Senora Bank",
		bank_7 = "Paleeto Bay Bank",
		grocery_store_1 = "Davis LTD Gasaleen",
		grocery_store_2 = "Strawberry 24/7",
		grocery_store_3 = "Murrieta Heights Rob's Liker",
		grocery_store_4 = "Little Seoul LTD Gasoline",
		grocery_store_5 = "Vespucci Canals Rob's Liquor",
		grocery_store_6 = "Morningwood Rob's Liquor",
		grocery_store_7 = "Mirror Park LTD Gasoline",
		grocery_store_8 = "Downtown Vinewood 24/7",
		grocery_store_9 = "Tataviam Mountains 24/7",
		grocery_store_10 = "Banham Canyon Rob's Liquor",
		grocery_store_11 = "Banham Canyon 24/7",
		grocery_store_12 = "Richman Glen LTD Gasoline",
		grocery_store_13 = "Chumash 24/7",
		grocery_store_14 = "Harmony 24/7",
		grocery_store_15 = "Grand Senora Rob's Liquor",
		grocery_store_16 = "Senora Grande 24/7",
		grocery_store_17 = "Sandy Shores Licor Ace",
		grocery_store_18 = "Sandy Shores 24/7",
		grocery_store_19 = "Grapeseed LTD Gasolina",
		grocery_store_20 = "Monte Chiliad 24/7",

		-- NOTE: add-on
		paleto_247 = "Paleto Bay 24/7"
	},

	self_driving = {
		not_driving_a_vehicle = "Yousa not currently operating a vehicle.",
		not_a_self_driving_vehicle = "Dis vehicle yousa operating doen't support autopilot.",
		no_waypoint_set = "Mesa pleasen set a waypoint to marken your destination.",
		invalid_waypoint_set = "Theesa watepoint yousa seten cannot be driven to automatically.",
		self_driving_engaged = "Mesa autopilot bombed out. Press ~INPUT_SPRINT~ und ~INPUT_DUCK~ to control da cruise speed.",
		self_driving_disengaged = "Mesa turned off da autopilot.",
		destination_too_close = "Yousa marked destinashun too close, bombad.",
		self_driving_could_not_be_engaged = "Autopilot no could bombad."
	},

	shield = {
		no_weapon_equipped = "Yousa need a weapon equipped to equip da ballistic shield.",
		no_shield = "Yousa no have ballistic shield in yousa inventory."
	},

	shockwaves = {
		create_shockwave_missing_permissions = "Da player tryin' to create a shockwave but no have da required permissions.",
		push_player_missing_permissions = "Mesa sorry, yousa need more permissions to push other players.",
		shockwave_success = "Da boom boom been createden. Mesa so happy!",
		shockwave_failed = "Uh oh, da boom boom didn't worken. Mesa sorry.",

		invalid_server_id = "Mesa no understand server ID.",
		push_player_success = "Yousa pushed da playa successfully.",
		push_player_failed = "Mesa sorry, da pushin' of da playa failed."
	},

	shooting_ranges = {
		turn_on = "Turnen On (Cost: ${cost})",
		turn_off = "Turnen Off",
		toggle_through_targets = "Toggle Trough Targets (${modelId})",
		speed = "Speed (${speedLevel})",
		rotation = "Rotation (${rotationLevel})",
		clear_bullet_impacts = "Clear Bullet Impacts",
		illegal_shooting_spot_value = "Uh oh, Mesa no understanden dese values for shootings spots.",
		illegal_shooting_spot_id = "Uh oh, Mesa no finden this shootings spot. Please try againen.",
		not_enough_cash = "Yousa do not have enough cash."
	},

	shrooms = {
		press_to_pick_up_shrooms = "Press ~INPUT_CONTEXT~ to pick up Binks' shrooms.",
		picking_up_shrooms = "Picking up Binks' shrooms.",
		press_to_sell_shrooms = "Press ~INPUT_CONTEXT~ to sell Binks' shrooms.",
		local_not_interested = "Da local no seem interested right now.",
		not_interested = "Dis local no seem interested in yousa shrooms.",
		selling_shrooms = "Selling Binks' shrooms.",
		shrooms_not_ripe = "Desa shrooms no seem ripe yet, maybe let dem sit a little longer.",
		shroom_id = "shroom-${shroomId}"
	},

	skylift = {
		press_to_toggle_magnet = "Press ~INPUT_CONTEXT~ toza toggle-d magnet.",
		skylift_magnet_turned_off_logs_title = "Skylift Magnet Turned Off",
		skylift_magnet_turned_off_logs_details = "${consoleName} turned-da Skylift magnet off.",
		skylift_magnet_turned_on_logs_title = "Skylift Magnet Turned On",
		skylift_magnet_turned_on_logs_details = "${consoleName} turned-da Skylift magnet on.",
		skylift_attached_vehicle_logs_title = "Skylift Attached Vehicle",
		skylift_attached_vehicle_logs_details = "${consoleName} attached a vehicle to dere Skylift."
	},

	smoothies = {
		blend = "Squeeze-squeeze",
		close = "Close-squeeze",

		use_blender = "[${InteractionKey}] Use squeeze-squeeze machine",
		blending = "Squeeze-squeezing",

		smoothie_label = "Squeeze-squeeze drink (${flavors})",
		seperator = "Meesa"
	},

	snow = {
		hold_to_pick_up_snowballs = "Hold ~INPUT_CONTEXT~ to pick up cold-snowy-balls."
	},

	spawn = {
		spawn_now = "Spawn-me",
		last_position = "Last-squeezed-positionn",

		train_station = "Train-a-stationn",
		city_bus_station = "City-bus-a-stationn",
		paleto_bay_bus_station = "Paleto-bay-bus-a-stationn",

		mission_row_police_station = "Mission-Row PD-a-stationn",
		sandy_police_station = "Sandy-Shores PD-a-stationn",
		paleto_police_station = "Paleto Bay PD",

		mount_zonah = "Mount Zonah",
		sandy_hospital = "Sandy Shores Hospital",
		paleto_hospital = "Paleto Bay Hospital",

		battle_royale = "Battle Royale"
	},

	special_imports = {
		special_imports_blip = "Special Imports",

		purchased_vehicle = "Meesa successfully purchased ${label} for $${price}. The vehicle has been added to your garage.",

		something_went_wrong = "Exqueez me, someting went wrong.",
		not_enough_money = "Exqueez me, yousa do not have enough money.",
		invalid_package = "Uh-oh! That's an invalid package level. (Yousa need the godlike tier)",

		dealership_closed = "Dez-ler-ship is curren-ta-lee closed mesa.",

		purchased_vehicle_logs_title = "Special Imp-orts",
		purchased_vehicle_logs_details = "${consoleName} purchased a `${modelName}` special imp-orts vehicle for ${price} (Plate: `${plate}`).",

		marker_label = "${label} | $${price} | St-ock: ${stock}",
		marker_label_purchase = "[${SeatEjectKey}] Purchase ${label} for $${price}",
		marker_label_purchase_timer = "[${timer}s] Hold ${SeatEjectKey} to buy ${label} for $${price}",

		vehicle_sold_out = "${label} | No St-ock left mesa."
	},

	spectating = {
		cannot_spectate_self = "Yusa cannot spectate yourself.",
		failed_spectate = "Mesa sorry, mesa failed to spectate the player.",
		player_not_exist = "The player issa offline.",
		no_character_loaded = "Player does notsa have a character loaded.",
		not_same_instance = "The player issa notsa in da same instance as yusa.",

		loading_coords = "Loadinga Coordsa",
		preloading_area = "Preloadinga Areaa",
		finding_player = "Findinga Playera",

		invincibility_active = "Yusa is invincible: ~r~Active~w~",
		invincibility_inactive_dead = "Yusa is invincible: ~g~Inactive~w~ (dead)",
		invincibility_inactive = "Yusa is invincible: ~g~Inactive~w~",

		health_ok = "Yusa's health: ~g~${health} / ${maxHealth}~w~",
		health_bad = "Chulseetango: ~r~${health} / ${maxHealth}~w~",

		armor_ok = "Golobat: ~g~${armor} / ${maxArmor}~w~",
		armor_bad = "Golobat: ~r~${armor} / ${maxArmor}~w~",

		speed = "Speed: ${speed}${unit}",
		speed_mph = "mph",
		speed_kmh = "kmh",

		exit_spectate = "Press ~g~${InteractionKey}~w~ to exit nongunsa mode",

		spectate_logs_title = "Started Spectating",
		spectate_logs_details = "${consoleName} begunum nongunsa thechuk ${targetUser}.",

		spectate_stopped_logs_title = "Stopped Spectating",
		spectate_stopped_logs_details = "${consoleName} stoppenumo nongunsa thechuk."
	},

	spying = {
		microphone_bug_not_activated = "Dis bug has not been activated.",
		vehicle_tracker_not_activated = "Dis tracker has not been activated.",
		microphone_bug_active_with_battery = "Dis microphone bug is currently active. Its battery is at ${batteryPercentage}%. You can \"Use\" it to listen in on any conversations it may pick up.<br><br>Device Id: ${deviceId}.",
		microphone_bug_ran_out_of_battery = "Dis microphone bug has run out of battery. The physical microphone bug will decay after a week.<br><br>Device Id: ${deviceId}.",
		vehicle_tracker_active_with_battery = "Dis tracker for vehicle issen active. Saga, issen battery issen at ${batteryPercentage}%. As long as de vehicle dissen tracker issen attached to issen available, da trackeren will display on your map.<br><br>Device Id: ${deviceId}.",
		vehicle_tracker_ran_out_of_battery = "Dis vehicle tracker issen outta battery. Da physical vehicle tracker will decay after a week.<br><br>Device Id: ${deviceId}",
		scanning_for_devices = "Scannen For Devices",
		searching_for_devices = "Searchen For Devices",
		no_nearby_vehicle = "Nosa da wan vehecal nearby.",
		placing_vehicle_tracker = "Da tracker sirip hasa been placed.",
		error_using_vehicle_tracker = "Mesa so sorry, mesa no can place da vehecal tracker.",
		vehicle_tracker_placed = "Da vehicle tracker hasa been placed successfully.",
		error_using_microphone_bug = "Mesa so sorry, mesa no can place da microphone bug.",
		microphone_bug_placed = "Da microphone bug hasa been placed successfully.",
		placing_microphone_bug_on_vehicle = "Me puttin bug on da vehecal.",
		placing_microphone_bug_on_player = "Me puttin bug on da player.",
		placing_microphone_bug_on_ground = "Mesa placin' bug on ground.",
		error_using_device_scanner = "Uh-oh! Mesa havin' trouble usin' the device scanner.",
		error_searching_for_devices = "Dissen a no-bueno! Mesa havin' trouble searchin' for devices.",
		found_devices = "Mesa found ${totalDevices} devices!",
		no_nearby_devices_found = "No devices nearby. Dissen a no-bueno.",
		microphone_bug = "Microphone Bug",
		microphone_bug_destroy = "Microphone Bug\n[${InteractionKey}] Mesa destroy.",
		vehicle_tracker = "Vehicle Tracker",
		vehicle_tracker_destroy = "Vehicle Tracker\n[${InteractionKey}] Mesa destroy.",
		destroying_device = "Makin' boom-boom device",
		tracker_will_appear_on_map = "This tracker already be activated. It gonna appear on yer map as long as the vehicle be available and the tracker got battery.",
		spy_ui_info = "Listenin' in on microphone bug (#${deviceId})",
		spy_ui_location = "${location}, ${time}",
		spy_ui_exit = "Press ESC to stop listenin' in on microphone bug",
		spy_ui_connecting = "Connectin' to microphone bug (#${deviceId})",
		spy_ui_connection_failed = "Failed to connect to microphone bug (#${deviceId})",
		spy_ui_awaiting_data = "Da hopenen data...",
		spy_ui_data_failed = "Data oot fail"
	},

	starter_car = {
		your_vehicle_is_nearby = "Yousa personal vehicle issa parked nearby.",
		would_you_like_directions = "Mesa give yousa directions to get to it?",
		press_to_respond = "Press ~INPUT_FRONTEND_ACCEPT~ to accept or ~INPUT_FRONTEND_CANCEL~ to decline.",
		follow_the_checkpoints = "Follow them shuttles.",

		received_logs_title = "Received Started Car",
		received_logs_details = "${consoleName} received a started car (Model: ${modelName})."
	},

	status = {
		status_reset = "Meesa successfully reset the status for ${consoleName}.",
		status_reset_failed = "Meesa no find any user with server ID `${serverId}`.",
		reset_status_not_staff = "Meesa attempted to reset a player's status without required permissions.",
		status_reset_for_all = "Meesa successfully reset the status for everyone.",
		status_disabled = "Disabled statuses (stress, hunger and thirst).",
		status_enabled = "Enabled statuses (stress, hunger and thirst).",
		failed_to_set_body_armor_level = "Failed to execute the `/set_body_armor` command correctly.",
		set_body_armor_level_player = "Meesa successully set da body armor level for ${consoleName} to `${bodyArmorLevel}`.",
		set_body_armor_level_everyone = "Meesa successully set everyones's body armor level to `${bodyArmorLevel}`.",
		set_body_armor_level_self_title = "Set Body Armor Level For Mesa",
		set_body_armor_level_self_details = "${consoleName} set mesa own body armor level to `${bodyArmorLevel}`.",
		set_body_armor_level_everyone_title = "Set Body Armor Level For Every Gungan",
		set_body_armor_level_everyone_details = "${consoleName} set body armor level for every Gungan to `${bodyArmorLevel}`.",
		set_body_armor_level_player_title = "Mesa Set Body Armor Level For Player",
		set_body_armor_level_player_details = "${consoleName} updayed ${targetConsoleName} and set der body armor level to `${bodyArmorLevel}`.",
		set_body_armor_level_player_not_staff = "Yousa gotta be in da boss' club to change another player's body armor level.",
		set_body_armor_level_self_not_staff = "Yousa no be in da boss' club to change mesa own body armor level.",
		stress_level_warning = "Yousa too stressed! Lower yousa stress by smoking Cigarettes, Joints or doing activities like Yoga."
	},

	streamer_mode = {
		enabled_streamer_mode = " mesa enabled streamer mode.",
		disabled_streamer_mode = " mesa disabled streamer mode."
	},

	sync = {
		missing_hour = "No hour provided.",
		invalid_hour = "Local time override is invalid. Da value should be a time between 0:00 and 23:59.",
		hour_changed = "Da hour has now been set to `${hour}`.",
		set_hour_not_staff = "Attempted to set da hour without required permissions.",

		local_time_override_enabled = "Set local time to ${hour}:${minute}.",
		local_time_override_disabled = "Meesa reset local time to default.",
		local_weather_override_enabled = "Meesa set local weather to `${weatherName}`.",
		local_weather_override_disabled = "Meesa reset local weather to default.",

		missing_minute = "No minute provided.",
		invalid_minute = "Minute `${minute}` is invalid. Da value should be between 0 and 59.",
		minute_changed = "Da minute has now been set to `${minute}`.",
		set_minute_not_staff = "Meesa attempted to set da minute without required permissions.",

		missing_weather = "No weather provided.",
		invalid_weather = "Mesa no undastan '${weatherName}'. Value mesa weather names are CLEAR, EXTRASUNNY, CLOUDS, OVERCAST, RAIN, CLEARING, THUNDER, SMOG, FOGGY, XMAS, SNOWLIGHT, and BLIZZARD.",
		weather_changed = "Mesa setten da weather to '${weatherName}'.",
		weather_advanced = "Mesa advanced da weather to '${weatherName}'.",
		weather_advance_fail = "Oh no, mesa no could advance da weather naturally.",
		set_weather_not_staff = "Yousa no have da permissions to set da weather.",
		advance_weather_not_staff = "Yousa no have da permissions to advance da weather.",

		time_frozen = "Da tomeesa shud be frozen now.",
		time_unfrozen = "Da tomeesa no be frozen anymore.",
		freeze_time_not_staff = "Ex-squeeze me, yousa no be authorized to freeze da tomeesa.",

		weather_frozen = "Da weadas be frozen now.",
		weather_unfrozen = "Da weadas no be frozen anymore.",
		freeze_weather_not_staff = "Ex-squeeze me, yousa no be authorized to freeze da weadas.",

		blackout_enabled = "Mesa seein' a blackout in da city now.",
		blackout_disabled = "Da blackout no be present in da city anymore.",
		blackout_not_staff = "Ex-squeeze me, yousa no be authorized to toggle a blackout.",

		weather_changed_title = "Wetha Changed",
		weather_changed_details = "${consoleName} changed da wetha to `${weatherName}`.",

		weather_changed_success = "Successfully changed wetha to `${weatherName}`.",
		weather_change_failed = "Failed to change wetha.",
		weather_parameter_invalid = "Invalid weatherName parameter.",
		weather_parameter_missing = "Missing weatherName parameter.",

		time_parameters_invalid = "Invalid hour or minute parameter.",
		time_currently_transitioning = "Da time is currently transitioning, please wait.",
		time_successfully_transitioned = "Mesa successfully transitioned da time to `${hour}:${minute}`.",
		time_successfully_set = "Mesa successfully set da time to `${hour}:${minute}`."
	},

	tablet = {
		you_dont_have_a_tablet = "Yousa don't have a tablet.",

		app_snake = "SNAKE",
		app_tetris = "TETRIS",
		app_chess = "CHESS",
		app_minesweeper = "MINESWEEPER",
		app_flappy_bird = "FLAPPY BIRD",
		app_geoguesser = "GEO-GUESSER",
		app_pdm = "PDM catalog",
		app_edm = "EDM catalog",
		app_cat_pictures = "CAT PICTURES",

		folder_games = "GAMES",
		folder_productivity = "PRODUCTIVITY",

		snake_title = "Snàke",
		snake_description = "Yousa use da arrow keys to move up, down, left, and right.",
		snake_start_game = "Start Gàmme",
		snake_difficulty = "Difficultà:",
		snake_difficulty_easy = "Eàsy",
		snake_difficulty_medium = "Medium",
		snake_difficulty_hard = "Hàrd",

		snake_game_over = "Gàmme Over!",
		snake_over_description = "Final score: ${score}.",
		snake_new_game = "New Gàmme",

		tetris_description = "Yousa use da arrow keys to move left and right.",
		tetris_play = "New Gàmme",
		tetris_game_over = "Gàmme Over",
		tetris_restart = "Restàrt",
		tetris_score = "Yos score",

		chess_title = "Chess",
		chess_your_turn = "Yosa turn",
		chess_ai_turn = "AI hassa thinking",
		chess_you_lost = "Yosa lost",
		chess_you_won = "Yosa won",
		chess_draw = "Draw",

		chess_play_as = "Playen asen:",
		chess_play_as_b = "Blacken",
		chess_play_as_w = "Whiten",
		chess_difficulty = "Difficulten:",
		chess_difficulty_level = "Level ${level}",
		chess_start = "Starten Game",

		minesweeper_title = "Minesweeper",
		minesweeper_win = "Yosa won",
		minesweeper_loose = "Yosa lost",
		minesweeper_difficulty = "Difficulten:",
		minesweeper_start = "Staht Gaim",
		minesweeper_flags_used = "${used}/${total} Flagged",

		flappy_bird_title = "Fleppee Boid",
		flappy_bird_score = "Final score:",
		flappy_bird_game_over = "Gaim Ovah",
		flappy_bird_start = "Pwess da canvas to start"
	},

	tattoos = {
		tattoos_refreshed = "Tattoos wefreshed.",
		something_went_wrong = "Somethin' wen' wong.",
		user_does_not_have_sent_character_loaded = "Da user does not have da sent cha'acta loaded.",
		user_has_no_character_loaded = "Da user does not have any cha'acta loaded.",
		user_not_found = "Jar Jar not find da senten user on da server mesa.",
		invalid_character_id = "Oooops! Invalid character id mesa thinkin.",
		invalid_license_identifier = "Mesa no understand that license mesa thinks."
	},

	teleporters = {
		enter_mechanic_shop = "Enter Mechanic Shop",
		enter_mechanic_shop_interact = "[${InteractionKey}] Enter Mechanic Shop",

		exit_mechanic_shop = "Exit Mechanic Shop",
		exit_mechanic_shop_interact = "[${InteractionKey}] Exit Mechanic Shop",

		enter_coroner = "Come inna Coroner",
		enter_coroner_interact = "[${InteractionKey}] Come inna Coroner",

		exit_coroner = "Mooey Mooey Ootini",
		exit_coroner_interact = "[${InteractionKey}] Mooey Mooey Ootini",

		enter_fib = "Nungen FIB",
		enter_fib_interact = "[${InteractionKey}] Nungen FIB",

		exit_fib = "Mooey Mooey FIB",
		exit_fib_interact = "[${InteractionKey}] Mooey Mooey FIB",

		enter_iaa_base = "Nungen IAA Base",
		enter_iaa_base_interact = "[${InteractionKey}] Nungen IAA Base",

		exit_iaa_base = "Mooey Mooey IAA Base",
		exit_iaa_base_interact = "[${InteractionKey}] Mooey Mooey IAA Base",

		enter_server_room = "Nungen Server Room",
		enter_server_room_interact = "[${InteractionKey}] Nungen Server Room",

		exit_server_room = "Mooey-out sa Server Room",
		exit_server_room_interact = "[${InteractionKey}] Mooey-out sa Server Room",

		enter_warehouse_shop = "Mooey-in sa Warehouse",
		enter_warehouse_shop_interact = "[${InteractionKey}] Mooey-in sa Warehouse",

		exit_warehouse_shop = "Mooey-out sa Warehouse",
		exit_warehouse_shop_interact = "[${InteractionKey}] Mooey-out sa Warehouse",

		enter_office_shop = "Mooey-in sa Office",
		enter_office_shop_interact = "[${InteractionKey}] Mooey-in sa Office",

		exit_office_shop = "Mooey-out sa Office",
		exit_office_shop_interact = "[${InteractionKey}] Mooey-out sa Office",

		enter_cocaine_lab = "Sa Enter Cocaine Lab",
		enter_cocaine_lab_interact = "[${InteractionKey}] Sa Enter Cocaine Lab",

		exit_cocaine_lab = "Sa Exit Cocaine Lab",
		exit_cocaine_lab_interact = "[${InteractionKey}] Sa Exit Cocaine Lab",

		enter_mayor_office = "Sa Enter Mayor's Office",
		enter_mayor_office_interact = "[${InteractionKey}] Sa Enter Mayor's Office",

		exit_mayor_office = "Sa Exit Mayor's Office",
		exit_mayor_office_interact = "[${InteractionKey}] Sa Exit Mayor's Office",

		enter_exclusive_dealership = "Sa Enter Exclusive Dealership",
		enter_exclusive_dealership_interact = "[${InteractionKey}] Bamba ka Exclusive Dealership",

		exit_exclusive_dealership = "Kosya Bamba ka Exclusive Dealership",
		exit_exclusive_dealership_interact = "[${InteractionKey}] Kosya Bamba ka Exclusive Dealership",

		enter_casino = "Bamba ka Casino",
		enter_casino_interact = "[${InteractionKey}] Bamba ka Casino",

		exit_casino = "Kosya Bamba ka Casino",
		exit_casino_interact = "[${InteractionKey}] Kosya Bamba ka Casino",

		enter_roof = "Bamba ka Roof",
		enter_roof_interact = "[${InteractionKey}] Bamba ka Roof",

		exit_roof = "Kosya Bamba ka Roof",
		exit_roof_interact = "[${InteractionKey}] Yusa hop off roof",

		enter_penthouse = "Yusa go inside Penthouse",
		enter_penthouse_interact = "[${InteractionKey}] Yusa go inside Penthouse",

		exit_penthouse = "Yusa leave Penthouse",
		exit_penthouse_interact = "[${InteractionKey}] Yusa leave Penthouse",

		enter_parking_garage = "Yusa go inside Parking Garage",
		enter_parking_garage_interact = "[${InteractionKey}] Yusa go inside Parking Garage",

		exit_parking_garage = "Yusa leave Parking Garage",
		exit_parking_garage_interact = "[${InteractionKey}] Yusa leave Parking Garage",

		enter_surgery = "Yusa go inside Surgery",
		enter_surgery_interact = "[${InteractionKey}] Enter Goober Surgery",

		exit_surgery = "Leave Goober Surgery",
		exit_surgery_interact = "[${InteractionKey}] Leave Goober Surgery",

		enter_icu = "Enter Goober Life Support",
		enter_icu_interact = "[${InteractionKey}] Enter Goober Life Support",

		exit_icu = "Leave Goober Life Support",
		exit_icu_interact = "[${InteractionKey}] Leave Goober Life Support",

		enter_underground_tunnel = "Enter Goober Underground Tunnel",
		enter_underground_tunnel_interact = "[${InteractionKey}] Enter Goober Underground Tunnel",

		exit_underground_tunnel = "Leave Goober Underground Tunnel",
		exit_underground_tunnel_interact = "[${InteractionKey}] Leave Goober Underground Tunnel",

		use_secret_tunnel_exit = "Kaba kúneya Kás'a'kárí'imbí",
		use_secret_tunnel_exit_interact = "[${InteractionKey}] Kaba kúneya Kás'a'kárí'imbí",

		enter_hangar = "Gugí Gánga'í",
		enter_hangar_interact = "[${InteractionKey}] Gugí Gánga'í",

		exit_hangar = "Tápa Gánga'í",
		exit_hangar_interact = "[${InteractionKey}] Tápa Gánga'í",

		enter_loading_bay = "Gugí Címfí",
		enter_loading_bay_interact = "[${InteractionKey}] Gugí Címfí",

		exit_loading_bay = "Tápa Címfí",
		exit_loading_bay_interact = "[${InteractionKey}] Tápa Címfí"
	},

	test_server = {
		you_are_not_in_a_vehicle = "Yousa no ina vehicle.",
		you_are_in_a_vehicle = "Yousa currently ina vehicle.",
		invalid_vehicle_preset = "Invalid vehicle preset.",
		fully_upgraded = "Meesa successfully upgraded vehicle.",
		applied_preset = "Meesa successfully applied preset.",
		spawned_car = "Spawned `${modelName}`.",
		just_spawned_a_car = "Yousa just spawned a car, wait ${time} before spawning another one."
	},

	time_scale = {
		invalid_time_scale = "The value ${timeScale} issa invalid time scale.",
		set_time_scale_missing_permissions = "Player attempted to set the time scale but they didn't have the required permissions.",
		time_scale_set_to = "Mesa set da time scale to ${timeScale}.",
		time_scale_disabled = "Mesa disabled da time scale override.",
		time_scale_already_set_to = "Mesa da time scale issen already set to ${timeScale}.",
		time_scale_is_already_disabled = "Mesa da time scale issen already disabled."
	},

	titanic = {
		created_titanic = "Mesa created a Titanic with da sinken time of ${sinkTime} minute(s).",
		failed_to_create_titanic = "Mesa failed to create Titanic.",
		create_titanic_missing_permissions = "Da playa attempted to create a Titanic, but theysa no have da required permissions."
	},

	top_down = {
		not_in_valid_vehicle = "Yousa not in a valid vehicle (only cars/bikes).",
		top_down_on = "Boss Nass, top-down view activated.",
		top_down_off = "Top-down view deactivated, muy muy."
	},

	trackers = {
		error_finding_tracker = "Exsqueeze me, an error occurred while finding your tracker.",
		tracker_visible = "Yoursa tracker issa visible now.",
		tracker_hidden = "Yoursa tracker issa hidden now.",
		tracker = "Tracker",
		trackers = "Trackers",
		stockade_robbery_tracker = "Stockade Truck (10-78)",
		tracked_vehicle = "Tracked Vehicle (${trackerId})",
		tracked_player = "${displayName}",
		battle_royale_teammate = "${name}",
		tracker_character = "${lastName} ${firstName} (${departmentLabel})",
		tracker_character_unit_id = "${unitId}: ${lastName} ${firstName} (${departmentLabel})",
		trackers_in_category = "Trackers will now be stored inside of their categories on the map.",
		trackers_split = "Trackers will now be split into individual blips.",

		department_sasp = "SASP",
		department_bcso = "BCSO",
		department_sahp = "SAHP",
		department_doc = "DOC",
		department_park_rangers = "Park Ranger",
		department_medical = "EMS",
		department_doctor = "Doctor",
		department_bcfd = "BCFD",

		department_police_undercover = "Undercover PD",

		department_police_training = "PD Training",
		department_ems_training = "EMS Training"
	},

	trading_cards = {
		access_store = "[${InteractionKey}] Accesa Store",

		buy_pack = "Buy ${packName}",
		store_title = "Store Card",

		successfully_bought_pack = "Successfully bought pack of trading cards",
		failed_buy_pack = "Failed to buy pack. Do you have enough money?",

		just_showed_trading_cards = "You just showed a trading card. Please wait a bit.",

		unpack_successfull = "Meesa successfully open dissen pack.",
		failed_unpack = "Meesa have failed to open dissen pack.",
		failed_unpack_no_cards = "Meesa failed to open dissen pack. Dere is no available trading cards.",

		edition = "Gungan-Edition",
		rarity = "Rarity",

		rarity_bronze = "Brons",
		rarity_silver = "Silva",
		rarity_gold = "Gold",
		rarity_holo = "Holo",
		rarity_foil = "Foil",
		rarity_relic = "Relic",
		rarity_headache = "Headache",
		rarity_missprint = "Missprint",
		rarity_ethereal = "Ethereal",
		rarity_promotional = "Promotional",

		rarity_custom = "Custom",

		press_to_access_buyback = "Mesa helpfully suggestin' ya press ~INPUT_CONTEXT~ ta access da card buyback.",
		buyback_title = "Trading Card Buyback",
		close_menu = "Close Mesa Menu",
		sell_cards = "Sell all ${rarity} cards",

		failed_selling = "Mesa sorry, but mesa failed ta sell yer cards.",
		no_cards_of_type = "Ya no have any ${rarity} cards.",
		successfully_sold_cards = "Mesa happy ta say mesa sold ${amount} ${rarity} card(s) fer $${earned}.",

		studio_blip = "945 Studios"
	},

	training = {
		on_team_attackers = "Yousa on da attack!\nTime left: ${time}",
		on_team_defenders = "Yousa defendin'!\nTime left: ${time}",
		attackers = "Meesa attackers:",
		defenders = "Meesa defenders:",
		waiting_for_players = "Meesa waitin for more players. \nDer must be one player on each team atleast.",
		none = "No data",
		match_starting_in = "Da match will start in ${seconds} seconds.",
		loading_match = "Meesa waitin for players to load. \nDa match will begin in ${seconds} seconds.",
		attackers_help_text = "Kill all da defenders before da cooldown is over to win!",
		defenders_help_text = "Kill all da attackers or wait till da cooldown is over to win!",
		attacker = "UKA-UKA",
		defender = "NUB NUB",
		attackers_won = "Mooie mooie, uka-uka wonnen!",
		defenders_won = "Nub nub, defenders wonnen!"
	},

	trains = {
		spawn_train_missing_permissions = "Mm, mesa no spawna train. No permitten",

		invalid_track_id = "Yousa give invalid track ID. Not good!",
		spawned_train_on_track = "Okeeday, mesa spawned train on track ${trackId}.",
		failed_to_spawn_train = "Oooh mooey mooey, mesa no can spawn train."
	},

	traps = {
		rearming = "Rearming...",
		press_to_rearm = "[${InteractionKey}] Press [${e}] to rearma.",
		rearm = "Rearma",
		e = "E"
	},

	treasure_maps = {
		no_treasure_map_with_tier = "Err no treasure map witta tier ${mapTier}.",
		treasure_map_does_not_have_piece = "Treasure map witta tier ${mapTier} don't gots piece ${pieceNumber}.",
		spawn_map_piece_missing_permissions = "Player trynna spawn a map piece wit no propa permissions.",

		sketchy_map = "Sketchy Map",
		worn_map = "Worn Map",
		fancy_map = "Fancy Map",
		exquisite_map = "Exquisite Map",

		map_piece_tier_1_description = "Issa look like der be some gibberish under a nasty piece of gum.",
		map_piece_tier_2_description = "A rather legit looking shard of a map. Even if da ink be running a little bit.",
		map_piece_tier_3_description = "Dis map piece sparkles a bit in da sunlight.",
		map_piece_tier_4_description = "Dis intricate, bootiful map piece smells like money.",

		map_tier_1_description = "Looks like it was hand sketched on a napkin. Ignore da curious stain.",
		map_tier_2_description = "Dis map is quite worn but it looks like it might lead to something decent.",
		map_tier_3_description = "Very nice \"sparkly\" map wif a \"100% Real\" Seal in da lower right hand corner.",
		map_tier_4_description = "Dis map looks more expensive than most treasures. Let's Go!!!!",

		press_to_combine_pieces = "Press ~INPUT_CONTEXT~ to combine pieces of map ${mapTier}.",

		treasure_map = "Treasure Map (Tier ${mapTier})"
	},

	tsunami = {
		the_ocean_scaler_intensity_already_set_to = "Da ocean scaler intensity iss already set ta `${intensity}`.",
		no_ocean_scaler_intensity_set = "Mesa thinkin dare iss no ocean scaler intensity set yet!",
		set_ocean_scaler_to = "Set da ocean scaler intensity ta `${intensity}`.",
		reset_ocean_scaler = "Reset da ocean scaler intenisty.",
		set_ocean_scaler_no_permission = "Da player no have da required permission ta set da ocean scaler."
	},

	tuner_shop = {
		purchase_label = "[${SeatEjectKey}] Buy ${label} for $${price}",
		purchase_label_far = "${label} | $${price}",
		purchase_label_timer = "[${timer}] ${label} | $${price}",
		purchase_label_sale = "[${SeatEjectKey}] Buy ${label} for $${price} (-${discount}%)",
		purchase_label_sale_far = "On-Sale | ${label} | $${price} (-${discount}%)",
		purchase_label_sale_timer = "[${timer}] ${label} | $${price} (-${discount}%)",

		failed_vehicle_spawn = "Failed to spawn the vehicle.",
		not_enough_funds = "Not enough funds to complete the purchase.",
		area_not_clear = "Mesa bombad spawn area no clear.",
		something_went_wrong = "Yousa mesa sorry, something no workin whilsa purchasing da vehicle.",

		purchased_vehicle = "Mesa purchased ${label} for $${price}.",

		tuner_shop_blip = "Midnight Tunershop",

		log_title = "Tunershop Purchase",
		log_description = "Mesa purchased da `${label}` for $${price}.",
		log_description_discount = "Mesa purchased da `${label}` for $${price} with a ${discount}% discount."
	},

	vape = {
		press_to_use = "Press ~INPUT_CONTEXT~ to take a hit. Press ~INPUT_FRONTEND_CANCEL~ to put vape away."
	},

	vdm = {
		failed_vdm = "Meesa no able to VDM the player.",
		invalid_entity = "Meesa no finden vehicle or driver.",
		invalid_network_id = "Invalid network id.",
		invalid_target = "Invalid target.",
		cleared_vdm = "${amount} vdm targets cleared.",
		failed_vdm_clear = "Meesa failed to clear vdm targets.",
		added_vdm_target = "NPC with network id ${networkId} is now targetting ${target}.",

		vdm_no_permissions = "Player attempted to run the vdm command without proper permission."
	},

	vending_machines = {
		vending_coffee = "Press ~INPUT_CONTEXT~ to purchase a Gungan Coffee. Its a cost $${cost}.",
		vending_coffee_not_enough_cash = "Mesa thinks yousa do not have enough cash to purchase a Coffee. It's cost is $${cost}.",
		vending_snack = "Press ~INPUT_CONTEXT~ to purchase a Snack. Its cost is $${cost}.",
		vending_snack_not_enough_cash = "Mesa thinks yousa do not have enough cash to purchase a Snack. Its cost is $${cost}.",
		vending_soda = "Press ~INPUT_CONTEXT~ to purchase a Soda. Its cost is $${cost}.",
		vending_soda_not_enough_cash = "Mesa thinks yousa do not have enough cash to purchase a Soda. Its cost is $${cost}.",
		vending_water = "Press ~INPUT_CONTEXT~ to purchase a Water Bottle. Its cost is $${cost}.",
		vending_water_not_enough_cash = "Meesa sorry, yousa dont gots enough cash to purchase a water bottle. Da cost is $${cost}.",
		vending_machine_damaged = "Disa Vending Machine is damaged. Pleasa check again later.",
		vending_water_cooler = "Press ~INPUT_CONTEXT~ to gets a Cup of Water.",

		refill_bottle = "Press ~INPUT_CONTEXT~ to refill bottle.",
		refilling_bottle = "Refilling bottle..."
	},

	voice = {
		illegal_radio_frequency = "Meesa no allow yousa to access illegal radio frequencies.",
		voice_chat = "Voice Chat",
		voice_server_connected = "Connected to da voice server. Sending voice data to relevant players.",
		voice_server_disconnected = "Yousa disconnected from da voice server. Waitin' for da connection.",
		voice_muted = "Da voice chat has been muted.",
		voice_unmuted = "Da voice chat has been unmuted.",
		broadcasting_voice_to_players = "Broadcastin' to players:",
		listening_to_virtual_players = "Listenin' to virtual players:",
		radio = "Radio",
		phone = "Phone",
		muted_players = "Muted players:",
		connected = "Connected: ${connected}",
		muted = "Muted: ${muted}",
		boolean_true = "True",
		boolean_false = "False",
		target_channel = "Target channel: ${targetChannel}",
		actual_channel = "Actual Channel: ${actualChannel}",
		target_radius = "Target Radius: ${targetRadius}",
		actual_radius = "Actual Radius: ${actualRadius}",

		invalid_server_id = "Meesa sorry, server id invalid.",
		failed_toggle_listen = "Oh no, meesa couldn't turn on or off listen status.",
		listeners = "Listeners:",
		listening_to = "Meesa listening to:",

		failed_toggle_muted = "Sorry, meesa couldn't mute or unmute.",
		toggle_muted_on = "${consoleName} is now muted from voice chat.",
		toggle_muted_off = "${consoleName} is now unmuted from voice chat.",

		affected_by_jammer = "Meesa hearin jam-jam or somethin, mesa thinkin radio gettin affectin.",

		listening_missing_permissions = "Player trynna tah-toggle their listening status, but they no have the big permissions.",
		voice_mute_missing_permissions = "Player trynna tah-toggle anutha players muted status, but they no have the big permissions."
	},

	washrooms = {
		use_sink = "[${InteractionKey}] Use Sink",
		using_sink = "Meesa usin da sink."
	},

	weed_field = {
		pick_weed = "Press ~INPUT_CONTEXT~ to pick weed.",
		picking_weed = "Meesa pickin weed."
	},

	wizard = {
		action_missing_permissions = "Mesa attempted to make a playa do a wizard action without proper permissions.",
		action_radius_missing_permissions = "Mesa attempted to make playas in a certain radius do wizard actions without proper permissions.",
		run_as_missing_permissions = "Mesa attempted to run a command as another playa without proper permissions.",

		menu_title = "Da Wizard",

		ragdoll_player = "Ragdoll",
		ragdoll_player_force = "Ragdoll (Force)",
		punch_player = "Force Punch",
		taze_player = "Tase",
		exit_vehicle_player = "Exit Vehicle",
		yank_steering_wheel_player = "Floga jalo ongo gasha",
		flashbang_player = "Fanta fwekifi",
		paper_bag_player = "Senejõn honk ni jopan",
		ignite_player = "Ko wesan",
		explode_player = "Sa'ya-sa'ya",
		quietly_revive_player = "Revive drouda kijanyan",
		play_sound = "Gogola Saesa",

		play_sound_knocking = "Kakonkoni",
		play_sound_discord = "Discord",
		play_sound_phone_call = "Phone ankinasa",
		play_sound_message = "Mesaga",
		play_sound_twitter = "Twitter",

		invalid_radius = "Jan hu tu!",
		invalid_server_id = "Jan tu ne masana.",

		ragdoll_failed = "Droti-jalokampu hongo sia.",
		ragdoll_success = "Yousa successfully made ${consoleName} ragdoll.",

		punch_success = "Yousa successfully made ${consoleName} punch.",
		punch_failed = "Mesa failed to make player punch.",

		explode_success = "Yousa successfully made ${consoleName} explode.",
		explode_failed = "Mesa failed to make player explode.",

		ignite_success = "Yousa successfully lit ${consoleName} on fire.",
		ignite_failed = "Mesa failed to light player on fire.",

		punch_radius_failed = "Mesa failed to make players in radius punch.",
		punch_radius_success = "Yousa successfully made players in a ${radius} radius punch.",

		ragdoll_radius_success = "Mesa made players inna ${radius} radius ragdoll.",
		ragdoll_radius_failed = "Mesa no able to make players in radius ragdoll.",

		flashbang_success = "Ah, mooey mooey... Successfully flashbanged ${consoleName}.",
		flashbang_failed = "Mesa no able to flashbang dissa player.",

		flashbang_radius_success = "Mesa dido flashbang players inna ${radius} radius.",
		flashbang_radius_failed = "Mesa no able to flashbang players in radius.",

		missing_command = "Missing command, mesa thinks.",
		run_as_success = "Okiday, mesa successfully ran command as ${consoleName}.",
		run_as_failed = "Mesa not able to run command as ${consoleName}.",

		no_nearby_vehicle = "No vula-cra nearby.",
		reversing_failed = "Mesa not able to makeped reverse.",
		driving_forwards_failed = "Mesa not able to makeped drive through.",
		reversing_success = "Yoosah mesa succesfully made ped reverse.",
		driving_forwards_success = "Yoosah mesa succesfully made ped drive through.",

		vehicle_temp_action_missing_permissions = "Player attempted to run a vehicle temp action without proper permissions. Mesa thinking this is not ok."
	},

	yoga = {
		yoga_mat_use = "[${InteractionKey}] Yoga Mat",
		yoga_mat = "Yoga Matoo",
		press_to_stop_yoga = "Pressa ~INPUT_CONTEXT~ to stop doing yoga."
	},

	zombies = {
		hold_to_continue_looting_zombie = "[${InteractionKey}] Lootinga Zombie",
		press_to_loot_zombie = "[${InteractionKey}] Loota Zombie",
		looting_zombie = "Lootinga Zombien",
		zombie_looting_injection = "Excessiven zombie looting! (Bypassaden server-timeout, mostsa likely usinga an injectoren to accomplishen thisen.)",

		zombie_trip_limit = "You feelen too tireden to continue lootinga zombies. Mayben trya againa tomorrow."
	},

	-- global/*
	entities = {
		in_no_ped_population_area = "You are in a 'no ped population area'. Boss dookie boom? (Translation: This area has no Gungan folk around.)",
		not_in_no_ped_population_area = "Yousa not in a 'no ped population area'."
	},

	explosions = {
		invalid_explosion_type = "Boom type `${explosionType}` issa not valid.",
		invalid_camera_shake = "Camera shake `${cameraShake}` issa not valid.",
		invalid_damage_scale = "Damage scale `${damageScale}` issa not valid.",
		created_explosion = "Mesa created a boom of type `${explosionTypeName}` with a damage scale of `${damageScale}` and camera shake of `${cameraShake}`.",
		create_explosion_not_developer = "Player attempted to create a boom but they were not a developer."
	},

	functions = {
		year = "slallam",
		years = "slallams",
		month = "sorac",
		months = "soracs",
		day = "saito",
		days = "saitos",
		hour = "noopa",
		hours = "noopas",
		minute = "vinoo",
		minutes = "vinoos",
		second = "seck",
		seconds = "secks",
		just_now = "wa ee doo noo",
		unknown = "Unkoo",
		flipped_vehicle_logs_title = "Fliped Vheecl",
		flipped_vehicle_logs_details = "${consoleName} fliped a vheecl.",
		failed_to_find_ground = "Meessa no finda da ground, mesa teleported yousa to da closest road.",

		time_in = "in ${time} ${unit}",
		time_ago = "${time} ${unit} ago"
	},

	states = {
		invalid_network_id = "Meesa sorry, dissa no good network id.",
		debug_states_failed = "Meesa sorry, meesa no find any states for dissa entity.",
		no_states = "Dis entity no have any state.",
		printed_states = "Meesa printed states of entity ${networkId}.",

		get_entity_states_missing_permissions = "Yousa no have da right permissions to getsa dissa entity's states."
	},

	-- illegal/*
	corner = {
		corner_ped = "Corner Ped - ${cornerPedDistance}m (${cornerPedTimer})",
		corner_ped_title = "Corner Ped",
		corner_ped_already_active = "Meesa sorry, but dersa already a corner ped waiting for you.",
		no_node_found = "Nogo found peds listen drugs.",
		no_sell_area = "Yousa not in area wheresa peds listen drugs.",
		inside_areas_none = "Inside Areas: None-sa",
		inside_areas = "Inside Areas: ${insideAreas}",
		not_able_to_sell = "Yousa not able to sell now. Walk around for bit, then try sell again."
	},

	stockade = {
		dispatch = "[Dispatch]",
		status_1a = "10-78, A Stockade has pressed the emergency button and issa requesting backup at ${streetName}.",
		status_1b = "10-78, A Stockade has pressed the emergency button and issa requesting backup at ${streetName} near ${crossingRoad}.",
		status_2a = "10-78, Da alarm system has detected dat a Stockade is currently havin' its doors tinkered wif and is requestin' backup at ${streetName}.",
		status_2b = "10-78, Da alarm system has detected dat a Stockade is currently havin' its doors tinkered wif and is requestin' backup at ${streetName} near ${crossingRoad}.",
		status_3a = "10-78, Da alarm system has detected dat a Stockade has had its doors improperly opened and is requestin' backup at ${streetName}.",
		status_3b = "10-78, Da alarm system has detected dat a Stockade has had its doors improperly opened and is requestin' backup at ${streetName} near ${crossingRoad}.",
		grab_valuables = "[${InteractionKey}] Graba Valuables (${valuablesRemaining} mesa left)",
		grabbing_valuables = "Grabin mesa Valuables.",
		use_advanced_lockpick = "[${InteractionKey}] Use Advanced Lockpick",
		lockpicking_stockade = "Lockpicking Stockade",

		status_blip = "Stockade",

		stockade_reward_logs_title = "Stockade Reward",
		cash_pickup_logs_details = "${consoleName} recogio $${cashAmount} en cash",
		item_pickup_logs_details = "${consoleName} recogio 1x ${itemName}.",

		reward_diamonds = "You grabbed mesa diamond.",
		reward_gold_bar = "Yousa grabbed a gold bar.",
		reward_cash = "Yousa grabbed somen cash.",
		reward_keycard_red = "Yousa grabbed a Red Keycard.",

		stockade_logs_title = "Stockade Activated",
		stockade_logs_details = "${consoleName} activated a stockade."
	},

	-- interfaces/*
	interface = {
		no_interfaces_are_focused = "Nosa interfaces are set as focused.",
		interfaces_focused = "Focused Interfaces:\n${interfacesFocused}"
	},

	-- jobs/*
	bean_machine = {
		start_delivery = "Starten a delivery.",
		press_to_start_delivery = "Press ~g~${InteractionKey} ~w~to starten a delivery.",
		already_in_delivery = "Yousa already haben an active delivery.",
		not_bean_machine_employee = "Yousa must be a Bean Machine employee to start a delivery.",
		finish_delivery = "Finish da delivery.",
		press_to_finish_delivery = "Press ~g~${InteractionKey} ~w~to finish da delivery.",
		started_delivery = "Started a delivery to ${deliveryName}. Da location has been marked on yousa map.",
		finished_delivery = "Da delivery to ${deliveryName} has been completed. Yousa received $${deliveryPrice} and $${distanceBonus} in tip, totalling $${totalPrice}.",
		error_finishing_delivery = "An error occurred while trying to finish yousa delivery.",
		finished_delivery_title = "Meesa Finished Bean Machine Delivery-sa",
		finished_delivery_details = "${consoleName} finished a Bean Machine delivery-sa and received $${deliveryPrice} and $${distanceBonus} in tip-sa, totalling $${totalPrice}.",
		delivery_blip = "Bean Machine Delivery-sa"
	},

	burger_shot = {
		start_delivery = "Start a delivery-sa.",
		press_to_start_delivery = "Press ~g~${InteractionKey} ~w~to start a delivery-sa.",
		already_in_delivery = "Yousa already have an active delivery-sa.",
		not_burger_shot_employee = "Yousa must be a Burger Shot employee-sa to start a delivery-sa.",
		finish_delivery = "Okeeday, finish the delivery.",
		press_to_finish_delivery = "Yousa press ~g~${InteractionKey} ~w~to finish the delivery.",
		started_delivery = "Yousa started a delivery to ${deliveryName}. The location has been marked on humongous map.",
		finished_delivery = "The delivery to ${deliveryName} has been completed. Yousa received $${deliveryPrice} and $${distanceBonus} in tip, totalling $${totalPrice}.",
		error_finishing_delivery = "Oh no, mesa tink deresa was a problem finishing yousa delivery.",
		finished_delivery_title = "Finished Burger Shot Delivery",
		finished_delivery_details = "${consoleName} kluddo a Burger Shot delivery and received $${deliveryPrice} un $${distanceBonus} in tip, totalling $${totalPrice}.",
		delivery_blip = "Burger Shot Delivery"
	},

	duty = {
		toggle_duty_status_no_permissions = "Mesa no allowed to togglen on duty status via mesa command.",

		duty_status_on = "Mesa successfully wenten on duty.",
		duty_status_off = "Mesa successfully wenten off duty.",
		duty_status_failed = "Mesa didn't successfully togglen on duty status.",

		training_status_on = "Successfully toggled training mode on.",
		training_status_off = "Mesa successfully toggled training mode off.",
		training_status_failed = "Mesa failed to toggle training mode.",

		emergency_call = "Yousa emergency callin. Press ENTER to receive it.",

		toggled_operator_status_on = "Toggled operator status on.",
		toggled_operator_status_off = "Toggled operator status off."
	},

	job_center = {
		life_invader = "Life Invader",
		life_invader_blip = "Apply for a Job",
		ui_close_menu = "Close Mesa",
		press_to_browse_jobs = "Press ~INPUT_CONTEXT~ to browse jobs.",
		change_job = "Change Job: ${jobName}",
		job_unemployed = "Uneemploe Gungan",
		job_transportation = "Trucker Gungan",
		job_taxi = "Taxi Driver Gungan",
		job_journalist = "Journalist Gungan",
		job_government = "Waste Collector Gungan",
		job_mechanic = "Tow Driver Gungan",
		job_delivery = "Delivery Job Gungan",
		changed_job_already_set_to_job = "Yousa already haveda da job ${jobName}.",
		changed_job_success = "Mesa set your job to ${jobName} successfully.",
		changed_job_success_go_to_coords = "Mesa set your job to ${jobName} successfully. Follow da waypoint on yousa map to get started.",
		changed_job_failure = "An oopsie occurred while trying to set yousa job to ${jobName}.",
		changed_job_title = "Meesa Joben Changed!",
		changed_job_details = "${consoleName} dagaan job to `${jobName}`."
	},

	jobs = {
		job_refreshed = "Job refreshed.",
		something_went_wrong = "Oopps! Mesa made some bombad mistake!",
		user_does_not_have_sent_character_loaded = "Nosa character loaded. Try again!",
		user_has_no_character_loaded = "Nosa character loaded. Try again!",
		user_not_found = "Theysa no find the user on server. Try again!",
		invalid_character_id = "Invalid character id. Try again!",
		invalid_license_identifier = "Invalid license identifier. Try again!"
	},

	police = {
		aim_assist_enabled = "Mesa aimsa will now be vauled wif great flapests.",
		aim_assist_disabled = "Yousa aimsa will now be worsa dan da moolah-krup. Mesa recommenden to re-enable da aim assisten immediately.",
		you_are_not_police = "Disa feature issen seulement for policen, not for da moolah-krup.",

		undercover_enabled = "Yousa now undercoveren.",
		undercover_disabled = "Yousa no longer undercoveren.",

		npc_vehicle = "Disa vehicle issen noten player owned vehicle.",
		not_in_a_vehicle = "Yousa noten currently driven a vehicle.",
		invalid_minutes = "Meesa sorry, dat be invalid time! (between 1 minute and 12 hours).",

		not_on_duty = "Yousa no on duty.",
		failed_impound = "Meesa sorry, meesa no able to impound vehicle.",
		not_near_impound = "Yousa no near da PD impound.",
		impound_success = "Meesa successfully impounded vehicle wif plate `${plate}` for ${minutes} minutes.",

		access_impound = "[${InteractionKey}] Access Impound",
		impound_lot = "Impound Lot",
		exit_impound = "Exit Impound",
		no_impounded_vehicles = "Der be no vehicles currently on hold.",
		failed_impound_list = "Meesa sorry, meesa no able to get impounded vehicles.",
		impound_owner = "Meesa: #${cid}",
		withdraw_success = "Yousa successfully withdrew vehicle.",
		failed_withdraw = "Yousa failed to withdraw vehicle.",
		vehicle_not_impounded = "Vehicle id not caught right now.",

		impound_logs_title = "PD Impound",
		impound_logs_details = "${consoleName} put a vehicle with the plate ${plate} on police hold for ${minutes} minutes.",

		impound_withdraw_logs_title = "PD Withdraw",
		impound_withdraw_logs_details = "${consoleName} withdrew a vehicle with the plate ${plate} from the PD impound (Time left: ${timeLeft}).",

		none = "Mesa",
		active = "Mooie",
		not_active = "Not mooie",
		active_robberies = "\nMooie Store: ${store}.\nMooie Bank: ${bank}\nMooie Jewelry: ${jewelry}",

		failed_dispatch = "Mooie mooesoo toonga dispatch message.",
		dispatch_title = "[Dispatch]",
		dispatch_message = "${author}: ${message}",
		invalid_dispatch_message = "Mooie mooesoo toonga dispatch message (Maximoo 255 characters).",
		in_training = "Yousa are currently in training mooie.",
		cannot_use_dispatch = "Yousa cannot use dispatch right now.",

		dispatch_message_logs_title = "Dispatch Message",
		dispatch_message_logs_details = "${consoleName} mesa ganna dispatch message: `${message}`.",

		no_keys = "Oosah, mesa no have da keys to dis vehicle.",
		invalid_drive_mode = "Mesa no tink dis drive mode issa valid.",
		not_in_police_vehicle = "Yousa no in a police vehicle, mooie.",
		drive_mode_too_fast = "Yousa going too fasto to change drive modes.",
		drive_mode_already_set = "Mesa buyin' mooey mooley. Yousa drive mode issen already set to `${mode}`.",
		drive_mode_failed = "Ouch time. Failed to set drive mode.",
		drive_mode_set = "Exsqueeze me. Successfully set drive mode to `${mode}`.",

		mode_s = "Sport-Mode. Yeez betta betta clatta cava.",
		mode_d = "Drive-Mode. Yeez hassen more safety-safety.",

		drive_mode_logs_title = "Drive Mode Changed. Oke-day.",
		drive_mode_logs_details = "${consoleName} changed their drive mode to `${mode}`. Tis'n a whole mesa, happy shoober!"
	},

	state = {
		license_heli = "Helicopter License",
		license_fw = "Fixed Wing License",
		license_cfi = "Certified Flight Instructor License",
		license_hw = "Heavyweight License",
		license_hwh = "Heavyweight Helicopter License",
		license_perf = "Performance License",
		license_utility = "Utility License",
		license_commercial = "Commercial License",
		license_management = "Management License",
		license_military = "Military License",
		license_special = "Special Aircraft License",
		license_hunting = "Hunting License",
		license_fishing = "Fishing License",
		license_weapon = "Gungan Daraja ya Silaha",
		gave_character_license = "Messeji kwa ${characterName} imepewa daraja ya `${licenseLabel}`.",
		character_already_has_license = "${characterName} tayari ana daraja ya `${licenseLabel}`",
		removed_character_license = "Messeji kwa `${characterName}` imeondoa daraja ya `${licenseLabel}`.",
		character_does_not_have_license = "${characterName} hana daraja ya `${licenseLabel}`",
		license_not_found = "Daraja ya `${licenseName}` haikupatikana.",
		user_not_found_with_character_id = "Mtumiaji hajapatikana na kitambulisho cha wahusika `${characterId}`.",
		no_license_added = "Meesa no license added.",
		invalid_character_id = "Da character ID dat wass added issa invalid.",
		no_character_id_added = "Meesa no character ID added.",
		your_licenses_are = "Yousa licenses are as following: ${licenses}",
		player_licenses_are = "${characterName} has da following licenses: ${licenses}",
		you_have_no_licenses = "Yousa have no licenses.",
		player_has_no_licenses = "${characterName} has no licenses.",
		failed_to_get_licenses = "Failed to get licenses.",
		license_list = "Available licenses: ${licenseList}."
	},

	tow = {
		press_to_access_spawner = "Press ~INPUT_CONTEXT~ to mesa vehicle spawner.",
		tow_vehicles = "Tow Mesa",
		vehicle_list = "Vehicle List Mesa",
		park_vehicle = "Park Mesa",
		parked_vehicle = "Parked vehicle mesa.",
		no_vehicle_to_park = "There mesa no vehicle to park.",
		close_menu = "Close Mesa",
		purchased_vehicle = "Purchased vehicle mesa.",
		shop_on_timeout = "The vehicle shop is mesa on a timeout. Please try again mesa.",
		spawn_area_not_clear = "The spawn mesa area is not clear.",
		purchase_funds = "Insufficient mesa funds.",
		return_button = "Return mesa",

		toggled_messages_on = "Toggled mesaagess on.",
		toggled_messages_off = "Toggled mesaagess off."
	},

	weazel_news = {
		press_to_access_spawner = "Press ~INPUT_CONTEXT~ to accessa da vehicle spawnsa.",
		weazel_news = "Weazel News",
		vehicle_list = "Vehicle Lista",
		close_menu = "Close Menu",
		return_button = "Returna",
		park_vehicle = "Parka Vehicle",
		parked_vehicle = "Parked vehicle.",
		no_vehicle_to_park = "Der issa no vehicle to park.",
		spawned_vehicle = "Spawned vehicle.",
		spawner_on_timeout = "Da vehicle spawnsa issa on mesaagee timeout. Please tries again.",
		spawn_area_not_clear = "Mesa mesa spawn area not clear."
	},

	-- menus/*
	hydrogen = {
		number1_of_number2 = "${number2} is ${number1}"
	},

	native = {
		player_label = "[${source}] ${name}"
	},

	-- vehicles/*
	alert = {
		triggered_vehicle_alert = "Ouch! Vehicle Alert'sa triggered at ${locationLabel} for vehicle with plate `${plateText}`.",
		vehicle_alert_blip = "Vehicle Alert"
	},

	boats = {
		anchor_disconnected = "Yousa un-anchored successfully.",
		anchored_successfully = "Yousa locked da anchor successfully.",
		removing_anchor = "Me is disconnecting da anchor...",
		deploying_anchor = "Me is deploying da anchor!",
		no_vehicle_nearby = "Sorry, mesa no see any boats nearby that yousa can anchor at. Yousa should try again later!"
	},

	car_wash = {
		use_car_wash = "Meesa suggest yous press ~INPUT_CONTEXT~ to use da Car Wash. Da cost be $${cost}.",
		stop_car_to_wash = "Stop your vehicle to use da Car Wash.",
		vehicle_already_clean = "Dis vehicle too clean to be washed.",
		car_wash = "Car Wash",
		air_unit_damaged = "Dis Air Unit be damaged.",
		air_unit_not_enough_cash = "Yous no have enough cash to use da Air Unit.",
		air_unit_exit_vehicle = "Exit da vehicle to use da Air Unit.",
		air_unit_press_to_use = "Press ~g~${SeatEjectKey} ~w~to use da Air Unit for $${cost}.",
		air_unit_purchase_cleaning_kit = "Sa press ~g~${InventoryKey} ~w~to purchase a Cleaning Kit.",
		cleaning_vehicle = "Dukeen Vehicle",
		not_enough_money = "Sa don't have enough money to use the Air Unit.",
		vehicle_not_in_range = "Da vehicle moved to far away to be cleaned."
	},

	carrier = {
		use_catapult = "Sa press ~INPUT_CONTEXT~ to hook into catapult.",
		use_launch = "Sa press ~INPUT_VEH_HANDBRAKE~ to launch."
	},

	damage = {
		vehicle = "Vehicle-ID: ${entity}",
		general = "General: ${value}",
		body = "Body: ${value}",
		engine = "Engine: ${value}",
		petrol_tank = "Gungan: Tank: ${value}",
		temperature = "Gungan: Temperature: ${value}",
		tracked_vehicle = "Gungan: Tracked Vehicle",

		debug_vehicle_on = "Gungan: Toggled vehicle debug on.",
		debug_vehicle_off = "Gungan: Toggled vehicle debug off."
	},

	fuel = {
		exit_to_fuel = "Gungan: Mesa outta da vehicle to refuel.",
		press_to_fuel = "Gungan: Press ~g~${InteractionKey} ~w~tosa refuel da vehicle.",
		fuel_pump_text = "Gungan: Fuel Cost: $${fuelCost}~n~Press ~g~E ~w~tosa stop fuelinga.",
		vehicle_text = "Gungan: Fuel Level: ${fuelLevel}%",
		tank_full = "Gungan: Da tank is full.",
		vehicle_busy = "Gungan: Da nearby vehicle issen busy.",
		purchase_jerry_can = "Press ~g~${InventoryKey} ~w~to purchase a Jerry Can.",
		gas_station = "Gas Station",
		petrolcan_fuel_text = "Meza Petrol messa left: ${petrolAmount}%~n~Press ~g~E ~w~to stop fueling.",
		player_busy = "Yousen busy wif something elseen.",
		fuel_level_set_to = "Da fuel level has been set to `${fuelLevel}`.",
		not_in_a_vehicle = "Yousen not in a vehicle.",
		vehicle_engine_on = "Da engine is still-a running.",

		set_fuel_no_permissions = "Da player attempted to set a vehicle's fuel level  without proper permissions.",

		vehicle_exploded_logs_title = "Mesa Mess Messed Up!",
		vehicle_exploded_logs_details = "${consoleName} refueled a mesa and boom-boomed it because of the vroom-vroom."
	},

	gadgets = {
		helicopter_camera_vehicle_info_metric = "Go-Speed: ${speed} km/h\nCarsa-Modelo: ${model}\nPlatea-Thingy: ${plate}",
		helicopter_camera_vehicle_info_imperial = "Go-Speed: ${speed} mp/h\nCarsa-Modelo: ${model}\nPlatea-Thingy: ${plate}",
		helicopter_camera_altitude = "Lifty-Lifty: ${altitude}ft AGL",
		helicopter_camera_altitude_asl = "Lifty-Lifty: ${altitude}ft ASL",
		unknown = "Mesa-No-Understandy"
	},

	garages = {
		garage_empty = "Yousa Got Nothing In You Garage!",
		impound_lot = "Impound Gungan",
		police_impound = "Police Impound Gungan",
		engine = "Gonga",
		body = "Baga",
		vehicle_in = "Inw",
		vehicle_out = "Outw",
		vehicle_at_police_impound = "Yousa vehicle issen on police hold oke-day.",
		vehicle_at_impound = "Yousa vehicle issen located at the Impound Lot.",
		waypoint_to_impound = "A waypoint to the Impound Gungan has been marked on yousa GPS.",
		unable_to_withdraw = "Unable to withdraw vehicle as it can currently be found at ${location}.",
		waypoint_to_vehicle = "A waypoint to yousa vehicle has been marked on yousa GPS.",
		vehicle_currently_at = "Mesa vehicle canza be founden at ${location}.",
		vehicle_in_garage = "Yousa can finden yousa vehicle inen ${garageName}.",
		insufficient_funds = "Yousa do not haven enough money to withdrawen dissa vehicle.",
		error_withdrawing = "Mesa bin bombad-ed! Der wasen an error while mesa wasen tryin' to withdrawen yousa vehicle.",
		withdraw_timeout = "Please mesa asken yousa to wait for a bit before trying to withdrawen another vehicle.",
		garage_in_use = "Disssen garage issen currently in use, please waiten a moment.",
		invalid_model = "Invalid or bombad vehicle model.",
		vehicle_in_the_way = "Mesa found a vehicle blockin' da spawn point.",
		vehicle_is_out = "Yoursa vehicle already out.",
		vehicle_stored = "Yoursa vehicle has been stored.",
		error_storing = "Meesa sorry, failed to store the vehicle. Issa the vehicle yours?",
		no_nearby_vehicle = "No nearby vehicles found, okeyday?",
		no_vehicles_to_retrieve = "Yousa no vehicles to retrieve!",
		vehicle_retrieved = "Da vehicle has been successfully retrieved, okeyday!",
		error_retrieving = "Whooops! An error occurred while trying to retrieve your vehicle.",
		not_enough_balance_to_retrieve = "Yousa no enough balance in either of your accounts to retrieve dissa vehicle.",
		press_to_access = "Press ~INPUT_CONTEXT~ tosa access theh garrage",
		ui_return = "Returna",
		ui_vehicle_list = "Vehicles List",
		ui_store_vehicle = "Store Vehicles",
		ui_vehicle_sell = "Sell Vehicles",
		ui_retrieve_vehicle = "Retrieve Vehicle",
		ui_close_menu = "Close Menu",
		garage_letter = "Garrage ${letter}",
		garage_emergency = "${type} Garrage",
		emergency_type_1 = "PD",
		emergency_type_2 = "EMS",
		no_vehicles_impounded = "None of yousa vehicless are impounded!",
		you_must_retrieve_this_vehicle = "You willa have tosa retrieve this vehicle in order to get access to it.",
		garage = "Garaaji",
		retrieved_vehicle_logs_title = "Nabinko Gafirii",
		retrieved_vehicle_logs_details = "${consoleName} nabinweewa gafirii nayije nabo na plate `${plate}` gari ya cost ${price}.",

		state_loading_model = "Kukupalla kinu cha modeli...",
		state_withdrawing = "Kuchukua...",

		state_retrieve_searching = "Kuwindi...",
		state_retrieving = "Kuning'inza...",

		state_storing = "Kuhifadhi...",

		state_loading = "Kinu cha modeli kinapakia...",

		vehicle_weight = "Uzito: ${weight}",
		last_garage_letter = "Ya mwisho - Garaaji la ${letter}",
		last_garage_impound = "Ya mwisho - Eneo la kupiga chini",
		no_last_garage_letter = "Nog last garaj",

		purchase_vehicle = "Presa ~INPUT_CONTEXT~ tu kine the shop",
		emergency_shop = "Vekilik Shop",
		exit_shop = "Exit Shop",
		purchase_success = "${label} mesa purchased successio. Added to yousa garaj.",
		purchase_failed = "Failed moo to Vekilik.",
		already_owned = "Yousa mesa in control of dissa vekil model.",
		maximum_owned = "Yousa cannot control moar dan 6 vekils.",
		not_enough_money = "Yousa don't has enouch moni to kine dissa vekil.",

		sold_vehicle = "Sold ${label} for $${price}.",
		failed_sell_vehicle = "Mesa failed ta sell vehicle.",

		sold_vehicle_logs_title = "Sold Vehicle",
		sold_vehicle_logs_details = "${consoleName} sold a `${modelName}` emergency vehicle with plate `${plate}` for ${price}.",

		purchased_vehicle_logs_title = "Purchased Vehicle",
		purchased_vehicle_logs_details = "${consoleName} purchased a `${modelName}` emergency vehicle for ${price} (Plate: `${plate}`).",

		-- NOTE: `toggle_garage_debug` command:
		toggle_garage_debug_toggled_on = "Mesa toggled da garage debug on.",
		toggle_garage_debug_toggled_off = "Mesa toggled da garage debug off."
	},

	handlings = {
		set_handling_override_not_super_admin = "Da playah attempted to set a handlin' override without propa permissions.",
		remove_handling_override_not_super_admin = "Da playah attempted to remove a handlin' override without propa permissions."
	},

	keys = {
		no_nearby_player = "No nearby playah found.",
		no_nearby_vehicle = "No nearby vehicle found.",
		no_keys_for_vehicle = "Yousa do not have da keys to dis vehicle.",
		vehicle_locked = "Vehicle Locked",
		vehicle_unlocked = "Vehicle Unlocked",
		h_to_hotwire = "[H] Hotwire",
		received_keys = "Mesa received keysen for vehicle wesa plate ${plate}.",
		received_keys_no_plate = "Mesa received keysen for vehicle.",
		you_are_not_in_a_vehicle = "Yousa not in a vehicle.",
		you_are_in_a_vehicle = "Yousa currently in a vehicle.",
		hotwired_vehicle_with_plate_number = "Hotwired vehicle wesa plate number '${plateNumber}'.",
		unable_to_hotwire_vehicle = "Mesa cant hotwire vehicle.",
		picked_up_keys = "Mesa picked up keysen for `${plate}`.",
		invalid_server_id = "Invalid server ID. Meesa no understand.",
		hotwired_vehicle_for_player = "Made ${displayName} hotwire da vehicle theysa in."
	},

	modifications = {
		wheels_reset = "The wheels are being reset.",
		wheels_already_reset = "The wheels are already in their default position.",
		wheels_modified = "Da wheels been modified.",
		wheels_none_specified = "Yousa no wheels specified.",
		wheels_none_valid_specified = "No valid wheels specified.",
		not_in_a_car = "Yousa not in a car.",
		invalid_value = "Invalid value."
	},

	plates = {
		plate_number_is_available = "Plate number `${plateNumber}` is available.",
		plate_number_is_not_available = "Plate number `${plateNumber}` is not available.",
		missing_valid_plate_number = "Missing a valid 'plate number' parameter.",
		missing_valid_vehicle_id = "Missing a valid 'vehicle id' parameter.",
		database_error = "Meesa sorry, but a big problem with the database happened.",
		no_custom_plate_package = "Yousa no have custom plate package. Check out our webstore for moresa informations!",
		api_error = "Oh no! Back-end API returned an error.",
		api_not_available = "Sorry, but our back-end API is not available at the moment.",
		vehicle_does_not_belong_to_player = "That vehicle ID `${vehicleId}` no belong to yousa!",
		vehicle_id_does_not_exist = "Sorry, but that vehicle ID `${vehicleId}` no exist.",
		you_have_no_character_loaded = "Yousa no have any character loaded right now.",
		vehicle_plate_changed = "Meesa changed the plate number of dissa vehicle with ID `${vehicleId}` to `${plateNumber}`.",

		you_are_not_in_a_vehicle = "Yousa not in a vehicle!",
		fake_plate_active = "Meesa successfully generated a fake plate for yousa vehicle.",
		fake_plate_inactive = "Meesa resetted dissa vehicle's plate back to original.",

		fake_plate_missing_permissions = "Player attempted to set a fake plate via command without mesas permission!"
	},

	runways = {
		you_are_not_in_a_plane = "You are notsa in a plane!",
		ifr_disabled = "IFR has been disabled!",
		ifr_enabled = "IFR hasa been enabled."
	},

	sirens = {
		sirens_muted_on = "Bomba-Dinka sirensen all MULA MUTE-sa.",
		sirens_muted_off = "Bomba-Dinka sirensen BIG CLANKA-MUTE-sa."
	},

	spawner = {
		press_to_access_spawner = "Paaduusa ~INPUT_CONTEXT~ jerry-phem spawneren.",

		parked_vehicle = "Victory! Jolly pawa parken vehicleen.",

		spawner_burger_shot = "Burger Shot Delivery Tings-en",
		spawner_bean_machine = "Bean Machine Delivery Tings-en",
		spawner_weazel_news = "Weazel News Tings-en",
		close_menu = "Close Moolah-Moolaha",
		vehicle_list = "List-en of Vehicle Tings",
		park_vehicle = "Parken Vehicle Ting-en",
		return_button = "Mesa return",

		failed_spawn = "Mesa failed to spawn veesa-duba.",
		failed_area = "Mesa area no clear.",
		failed_job = "Yousa no have da correct job.",
		failed_generic = "Something mesa went wrong."
	},

	vehicles = {
		flip_flipping = "Flipping veesa-duba",
		flip_unable = "Yousa unable to flip a veesa-duba while there are people inside.",
		vehicle_busy = "Please wait, da veesa-duba issa busy!",
		hold_to_eject = "Hold To Eject",
		taking_keys = "Taking Keys",
		belt_on = "Belt On",
		belt_off = "Belt Off",
		mileage = "Distance Traveled",
		vehicle_mileage_amount = "This veesa-duba has traveled ${miles} miles.",
		not_in_driver_seat = "Yousa must be in da driver seat to check da mileage.",
		not_driving_vehicle = "Yousa not drivin' a vehicle.",
		vehicle_locked = "Da vehicle issa locked.",
		gear_animation_enabled = "Da gear animation (and sounds) have now been enabled.",
		gear_animation_disabled = "Da gear animation (and sounds) have now been disabled.",
		manual_gears_enabled = "Manual gearing has now been enabled.",
		manual_gears_disabled = "Manual gearing has now been disabled.",
		manual_gear_set_to = "Gear set to ${gearId}.",
		speed_limiter_set_to_metric = "Da speed limiter will limit da speed at ${speed} km/h.",
		speed_limiter_set_to_imperial = "Da speed limiter will limit da speed at ${speed} mp/h.",
		speed_limiter_reset = "Da speed limiter will now limit da speed at da speed da vehicle was at when toggled.",
		speed_limiter_on_metric = "Speed limiter set to ${speed} km/h.",
		speed_limiter_on_imperial = "Speed limiter set to ${speed} mp/h.",
		speed_limiter_on_plane_metric = "Speed limiter set to ${speed} km/h and altitude at ${altitude} meters.",
		speed_limiter_on_plane_imperial = "Yousa speed limiter set to ${speed} mp/h and ${altitude} ft.",
		speed_limiter_on_helicopter_metric = "Yousa speed limiter set to ${altitude} meters (hover).",
		speed_limiter_on_helicopter_imperial = "Yousa speed limiter set to ${altitude} ft (hover).",
		autopilot_metric = "~g~Autopilot~s~: ${altitude}m ~c~/~s~ ${speed}km/h",
		autopilot_imperial = "~g~Autopilot~s~: ${altitude}ft ~c~/~s~ ${speed}knots",
		you_are_cuffed = "Yousa are cuffed.",
		belt_is_on_and_vehicle_is_locked = "Yousa belt issen on and da vehicle issen locked.",
		belt_is_on = "Yosa belt issa on.",
		vehicle_is_locked = "Da vehicle issa locked.",

		nearest_player_not_vehicle = "Da nearest player issa not in a vehicle.",
		no_dead_player_nearby = "There issa no dead player in a vehicle near yousa.",
		dragging_out_player = "Yosa dragging outta player outta da vehicle.",
		vehicle_too_fast = "Da vehicle issa moving too fast.",

		modifying_brakes = "Modifying brakes",
		toggle_brakes_on = "Yosa toggled brakes off.",
		toggle_brakes_off = "Yosa toggles brakes on.",
		failed_modify_brakes = "Failed to modify brakes.",

		toggle_disabled_brakes_no_permissions = "Meesa no tink thissa allow. Player tried to toggle disabled brakes witout correct permissions.",

		-- NOTE: `add_vehicle` command:
		add_vehicle_not_super_admin = "Player tried to add vehicle to someone's garage witout proper permissions.",
		add_vehicle_added_vehicle_for_everyone = "Meesa ready! Added vehicle wid model name `${modelName}` for everyone.",
		add_vehicle_added_vehicle_for_player = "Added vehicle wid model name `${modelName}` for ${consoleName}.",
		add_vehicle_added_vehicle = "Meesa got it! Added vehicle wid model name `${modelName}`.",
		add_vehicle_character_not_loaded = "Mesa thinks yousa didn't load any characters.",
		add_vehicle_target_user_not_found = "Mesa not find the target user.",
		add_vehicle_invalid_input = "Sorry, mesa not understand. Invalid input.",
		add_vehicle_no_permissions = "No permissions to do that.",
		add_vehicle_user_not_found = "User not found in mesa database.",
		add_vehicle_invalid_player = "Jeesa sorry. Mesa not find a player with server ID `${serverId}`.",
		add_vehicle_invalid_model_name = "Mesa not think `${modelName}` is a valid model name.",
		add_vehicle_no_model_name = "Picture not added. Please add a model name.",

		added_vehicle_for_everyone_logs_title = "Meesa Added Vehicle Foh Ev'ryone",
		added_vehicle_for_everyone_logs_details = "${consoleName} added a vehicle with model name `${modelName}` to everyones's garages.",
		added_vehicle_for_player_logs_title = "Meesa Added Vehicle Foh Playa",
		added_vehicle_for_player_logs_details = "${consoleName} added a vehicle with model name `${modelName}` to ${targetConsoleName}'s garage.",
		added_vehicle_logs_title = "Meesa Added Vehicle",
		added_vehicle_logs_details = "${consoleName} added vehicle with model name `${modelName}` to their garage.",

		-- NOTE: `toggle_vehicle_weapons` command:
		toggle_vehicle_weapons_not_super_admin = "Mesa helpin', but dis playa tryin to toggle vehicle weapons witout da right permissions.",
		toggled_vehicle_weapons_on = "Mesa toggled vehicle weapons on.",
		toggled_vehicle_weapons_off = "Mesa toggled vehicle weapons off.",
		toggled_vehicle_weapons_vehicle_is_not_networked = "Da vehicle yousa in is not networked.",
		toggled_vehicle_weapons_not_in_a_vehicle = "Yousa not in a vehicle.",
		toggled_vehicle_weapons_target_user_not_found = "Target user not found.",
		toggled_vehicle_weapons_player_not_in_a_vehicle = "Target player is not in a vehicle.",
		toggled_vehicle_weapons_for_player_on = "Meesa toggled da vehicle weapons on for ${consoleName}.",
		toggled_vehicle_weapons_for_player_off = "Meesa toggled da vehicle weapons off for ${consoleName}.",
		toggled_vehicle_weapons_for_everyone = "Meesa toggled da vehicle weapons for everyone.",

		toggled_vehicle_weapons_on_logs_title = "Toggled Vehicle Weapons On",
		toggled_vehicle_weapons_on_logs_details = "${consoleName} toggled da weapons for a vehicle on.",
		toggled_vehicle_weapons_off_logs_title = "Toggled Vehicle Weapons Off",
		toggled_vehicle_weapons_off_logs_details = "${consoleName} rechooseda weapons for a vehicle off.",
		toggled_vehicle_weapons_on_for_player_logs_title = "Rechoosed Vehicle Weapons On For Player",
		toggled_vehicle_weapons_on_for_player_logs_details = "${consoleName} rechooseda weapons for ${targetConsoleName}'sa vehicle on.",
		toggled_vehicle_weapons_off_for_player_logs_title = "Rechoosed Vehicle Weapons Off For Player",
		toggled_vehicle_weapons_off_for_player_logs_details = "${consoleName} rechooseda weapons for ${targetConsoleName}'sa vehicle off.",
		toggled_vehicle_weapons_for_everyone_logs_title = "Toggled Vehicle Weapons For Everyone",
		toggled_vehicle_weapons_for_everyone_logs_details = "${consoleName} mesa toggled da weapons fo everyone's vehicle.",

		breaking_window = "Breaking Window",
		not_near_window = "Yousa not close enough to a window.",
		not_near_vehicle = "No vehicle nearby.",

		wheelie_no_vehicle = "No Vehicle",
		wheelie_engine_off = "Engine Off",
		wheelie_idling = "Idling",
		wheelie_ready = "Ready",
		wheelie_boosting = "Boosting",

		invalid_power_level = "Invalid power level (1 - 5)."
	},

	vin_numbers = {
		cad_title = "[CAD]",

		checking_vin = "Yousa checkin VIN",
		not_driver = "Yousa not drivin a vehicle.",
		failed_vin_get = "Failed to get the VIN.",
		vin_checked = "Da VIN numbah of this vehicle issa `${vin}`.",
		vin_scratched = "Da VIN numbah issa scratched.",

		looking_up_vin = "Looking Up VIN",
		invalid_vin = "Invalid or missin VIN numbah.",
		failed_vin_lookup = "Failed to lookup VIN numbah.",
		vin_lookup_details = "VIN numbah `${vin}` issa registered to vehicle with plate `${plate}` owned by `${fullName}`.",
		vin_lookup_unregistered = "VIN `${vin}` mesa no check wit any vehicle."
	},

	wheels = {
		press_to_slash = "[${InteractionKey}] Mesa holdin to slash",
		hold_to_slash = "Mesa holdin to slash",
		slashing_tire = "Mesa slashin da tire"
	},

	-- weapons/*
	ammo = {
		unboxing_ammo = "Unboxin ammo",
		failed_unbox = "Failed to unboxin da ammo.",
		failed_unbox_full = "Yousa cannot carry any more of dissa ammo.",
		unbox_success = "Successfully unbox ${amount}x ${ammoType}.",
		unbox_success_box = "Successfully unboxin an ammo box.",

		type_pistol = "pistol ammo",
		type_smg = "sub ammo",
		type_rifle = "rifle gunguantogga",
		type_sniper = "sniper gunguantogga",
		type_shotgun = "12 gauge gunguantogga",
		type_stungun = "taser gunguantogga",

		fill_ammo_success = "Muy wesa filled ammo.",
		fill_ammo_failed = "Failed to fill ammo. Oopsie day big mistaka!"
	},

	weapons = {
		pick_up_fire_extinguisher = "Holda ~INPUT_CONTEXT~ to pick up the Fire Extinguisher. (Alderaan?)",
		press_to_drop_fire_extinguisher = "Pressa ~INPUT_FRONTEND_RRIGHT~ to drop the Fire Extinguisher. (Yee-hoo!)",
		illegal_fire_extinguisher_model = "Muy wesa attempted to delete a fire extinguisher on all clients with a model that wasn't a fire extinguisher. Oopsie day big mistaka!",

		airsoft_mode_on = "Meesa turned on airsoft mode.",
		airsoft_mode_off = "Meesa turned off airsoft mode.",
		airsoft_mode_failed = "Meesa failed to turn off airsoft mode.",

		no_weapon_equipped = "No weapon equip.",
		no_ammo = "No ammo for dissa weapon.",
		infinite_ammo = "Yousa havin' infinite ammo for dissa weapon.",
		ammo_count = "Yousa havin' ${clips} full clips (${total} rounds in total).",
		ammo_count_loose = "Yousa havin' ${clips} full clips and 1 clip with ${loose} rounds (${total} rounds in total).",

		firing_mode_0 = "Firing mode set to default.",
		firing_mode_1 = "Semi-Automatic firing mode is set.",
		firing_mode_2 = "Weapon safety is turned on.",

		safety_is_on = "Okeyday, weapon safety is on.",

		firing_mode_set_1 = "Semi-Automatic firing mode is now activated.",
		firing_mode_set_2 = "Weapon safety is now turned on.",

		folded_stock = "Folded Stock",
		unfolded_stock = "Unfolded Stock",
		failed_to_toggle_stock = "Mesa sorry, failed to toggle stock.",
		weapon_has_no_stock = "This weapon has no stock."
	},

	-- a shared "alpha" locale category uwu - also know, some features such as the ${InteractionKey} will be missing here, so don't try to use it
	alpha = {
		check_in = "[E] Check In",
		check_in_timer = "[${remaining}s] Wait, mesa check in.",
		check_in_escorted = "Mee-sa am bein escorted!",
		checking_in = "Mesa checkin' in",
		doctor_notified = "A doctor has been notified, so y'all gonna have to wait",
		leave_bed = "Press ~INPUT_CONTEXT~ to leave dat bed",
		you_have_been_charged = "Y'all been charged $${cost} for dem injuries",
		beds_occupied = "Weesa got no more room in da beds",
		patient_checked_in = "Patient checked in at bed ${bed}",
		stop_bleeding = "[E] Stop Bleedin'",
		stopping_bleeding = "Mesa stoppin' da bleedin'",
		bleeding_stopped = "Da bleedin' stopped",
		overdose_effects = "Yousa feelin' da overdose effects.",
		you_have_parasite = "Yousa got a parasite, uh-oh",
		you_have_multiple_parasite = "Yousa have multiple parasites",
		bandage = "[E] Bandage Wounds",
		bandaging = "Bandaging Wounds",
		wounds_bandaged = "Wounds Bandaged",
		treat_injury = "[E] ${label} Injury",
		treating_injury = "Treating ${label} Injury",
		injury = "${label} Injury",
		cpr_done = "CPR successful",
		cpr_fail = "Mesa unable to locate person",
		went_on_duty = "Mesa went on-duty",
		went_off_duty = "Mesa went off-duty",
		on_duty = "on duty",
		off_duty = "off duty",
		press_to_sign = "Press ~g~E ~w~to sign ",
		open_vehicle_spawner = "Press ~g~E ~w~to open the vehicle spawner",
		open_heli_spawner = "Mesa pressa ~g~E ~w~luki naw helicopter menu",
		open_boat_spawner = "Mesa pressa ~g~E ~w~luki naw boat menu",
		on = "wisa",
		off = "gana",
		sign_as_doctor = "Mesa pressa ~g~E ~w~luki lakka ${status} como un doctor",
		close_menu = "Dunga menu",
		vehicle_list = "Lista pa los vehículos",
		park_vehicle = "Parke loki vehículo",
		clear_area = "Porfa, grasias par limpiar el garage antes pa spawnea un vehículo",
		unable_to_extra = "Nada puede cambia 'extras' pa sto vehículo!",
		warning = "Atencion",
		invalid_input = "Input ta toro invalido.",
		unable_to_extra_on_vehicle = "Nada puede cambia 'extras' pa sto vehículo!",
		heli_here_already = "Mesa yewz already ona helipad",
		ems_air_hq = "EMS Air HQ",
		ems_boat_hq = "EMS Boat HQ",
		ems_garage = "EMS Garage",
		e_to_get_treated = "[E] Get Treated - $1250",
		get_treated = "Get Treated - $1250",
		you_are_being_treated = "Yousa being treated",
		being_treated = "Being Treated",
		minute = "minute",
		minutes = "minutes",
		second = "second",
		seconds = "seconds",
		kurwa_and = "and", -- there's no direct translation for "and",
		wait_for_paramedic = "Pleezsa wait for a paramedik to arrive or wait ${time} to respawn",
		cannot_respawn_currently = "Yousa cannot respawn at dis time",
		hold_to_respawn = "Mesa help yousa. Hold ~b~ENTER ~w~to respawn or wait for a paramedic to arrive",
		hold_to_respawn_secondslol = "Mesa help yousa. Hold ~b~ENTER (${seconds}) ~w~to respawn or wait for a paramedic to arrive",
		passed_out = "Yousa passed out",
		light = "Lighta",
		moderate = "Moderateen",
		heavy = "Heava",
		severe = "Sevea",
		arms_injured = "Yousa arms too injured, unnable to fire",
		injuryb = "Injury",
		bleeding_multiple_injuries = "Yousa bleeding with multiple injuries",
		feels_irritated = "feelsa irritated",
		feels_painful = "feelsa painful",
		feels_extremely_painful = "muy muy dolosa",
		multiple_injuries = "Tienes múltiples heridas",
		bleeding = "sangrando",
		bleeding_with_injury = "sangrando con ${label} herida",
		bleeding_reduced = "Sangrado reducido",
		bleeding_self_stopped = "El sangrado se detuvo por sí solo",
		thanks_for_loot = "Fuiste robado mientras estabas inconsciente. Algunos objetos pueden faltar.",
		serial_number = "Número de serie: ${serialNumber}<br> Esta arma está registrada a nombre de ${fullName} (#${characterId}).",
		serial_number_unknown = "Número de serie: desconocido.",
		badge_owner = "<i>Dis badj belonks tu <b>${fullName} (${positionName})</b>.</i>",
		badge_owner_unknown = "Badge Ohna issa unknown.",
		citizen_card_owner = "<i>Dis citijen kaard belonks tu <b>${fullName} (#${characterId})</b>.</i>",
		citizen_card_has_portrait = "<i>Issa got pictur.</i>",
		picture_pending = "<i>Da pictur issa still processin...</i>",
		picture_selfie_owner = "<i>Dis issa pictur of <b>${fullName}</b>.</i>",
		bought_by = "Bought by ${buyerName} (${buyerCid}).",
		bought_by_unknown = "Da buyer of dis item issa unknown.",
		cigarette_pack = "${cigarettes} sairollas left.",
		evidence_incomplete = "Dissa bag o' evidence is incomplete.",
		evidence_type = "Evidence Type",
		processed_picked_up = "<i>Picked up by ${pickupName} an' processed by ${processName}.</i>",
		picked_up = "<i>Picked up by ${pickupName}.</i>",
		processed_by = "<i>Processed by ${processName}.</i>",
		evidence_casings = "Dem casings came back to serial number ${serialNumber} which was held by ${buyerName} (${buyerCid}) at de time o' use.",
		evidence_bullets = "Bullet impacts seems ta have been created by ${bulletLabel}.",
		evidence_clothing = "Mesa suggestin' dis be a piece of clothing (${clothingType}).",
		evidence_car_dna = "DNA was picked up from vehicle with mesa plate number ${plateNumber} and traces back to ${DNAOwnerName} (${DNAOwner}).",
		evidence_dna = "${fullName} #${characterId} mesas collected deir DNA.",
		evidence_fingerprint = "Mesa found ${fullName} #${characterId}'s finprints.",
		evidence_not_processed = "This evidence bag has not been processed yet, okeyday?",
		additional_information = "Mesa got some additional info for ya:",
		picked_up_at_location = "Mesa picked dis up at dis location:",
		clothing_dna_trace = "DNA traces come back to ${fullName} (#${cid}).",
		clothing_dna_trace_unprocessed = "Dabilah Haa Utinni Teezah DNA goana haa peedun",
		timestamp_of_pickup = "Timestamp haa pickup:",
		weapon_name = "Pew Pew Name:",
		casings_picked_up = "Casings peedun haa joppa:",
		bullet_label = "Label haa pew pew:",
		impacts_found = "Impacts haa tayca in da loocal area:",
		right_foot = "Foot haa Right",
		left_foot = "Foot haa Left",
		right_hand = "Hand haa Right",
		left_hand = "Hand haa Left",
		right_knee = "Knee haa Right",
		left_knee = "Knee haa Left",
		head = "Head",
		neck = "Neck",
		right_arm = "Arm haa Right",
		left_arm = "Arm haa Left",
		chest = "Mesa",
		pelvis = "Pelbis",
		right_shoulder = "Right Sholda",
		left_shoulder = "Left Sholda",
		right_wrist = "Right Wrista",
		left_wrist = "Left Wrista",
		tounge = "Tounge-a",
		upper_lip = "Upa Lipa",
		lower_lip = "Low-a Lipa",
		right_thigh = "Right Thigha",
		left_thigh = "Left Thigha",
		lower_spine = "Low-a Spinny",
		center_spine = "Center Spinny",
		upper_spine = "Upa Spinny",
		root_spine = "Root Spinny",
		right_clavicle = "Right Clava",
		left_clavicle = "Left Clava",
		note_signed_by = "<b>Signed by:</b> <i>${name} (#${cid})</i>",
		map_location = "<b>Mesa location:</b> <i>${x}, ${y}</i>",
		smart_watch_hover = "<i>Dis smart watch belong to <b>${name} (#${cid})</b>. Issa track <b>${stepsWalked}</b> steps.</i>",
		item_contains = "<b>Mesa got:</b> <i>${contents}</i>.",
		item_engraving = "<b>Mesa carving:</b> <i>${message}</i>.",
		evidence_incomplete = "Dissa bag o' evidence is incomplete."
	}
}
