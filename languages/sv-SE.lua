if not OP then OP = {} end
if not OP.Global then OP.Global = {} end
if not OP.Global.Locales then OP.Global.Locales = {} end
if not OP.Global.Locales.Languages then OP.Global.Locales.Languages = {} end

-- AUTO LOCALES: 8 (do not change)

OP.Global.Locales.Languages["sv-SE"] = {
	-- configuration settings for language
	largeNumberSeparator = ",", -- with it set as ",", 1000000 -> 1,000,000 in a lot of labels
	floatSeparator = ".", -- with it set as ".", (25 + (1/5)) -> 25.2
	useMetric = false,

	-- locales shared between all resources
	shared = {
		system = "Systemet",
		warning = "Varning",
		invalid_input = "Ogiltigt inmatning.",
		missing_input = "Saknad inmatning.",
		player_not_found = "Kunde inte hitta spelaren med server-ID `${serverId}`.",
		something_went_wrong = "Något gick fel. Försök igen.",
		yes = "Ja",
		no = "Nej"
	},

	-- animations/*
	emotes = {
		get_in_trunk = "Tryck ~INPUT_ENTER~ för att gå in i bagageluckan.",
		put_boombox_in_trunk = "Tryck ~INPUT_ENTER~ för att lägga boomboxen i bagageluckan.",
		put_player_in_trunk = "Tryck ~INPUT_ENTER~ för att lägga spelaren i bagageluckan.",
		put_player_in_seat = "[${VehicleEnterKey}] Placera i sätet.",
		trunk_interaction_display = "[${VehicleEnterKey}] Klättra Ut [${InteractionKey}] Öppna/Stäng Bagageutrymme",
		trunk_open_close_display = "[${InteractionKey}] Öppna/Stäng Bagageutrymme",
		boombox_already_in_trunk = "Det finns redan en boombox i bagageutrymmet.",
		the_trunk_is_occupied = "Bagageutrymmet är upptaget.",
		unable_to_toggle_carry = "Vänligen vänta en stund innan du byter bärning.",
		carry_disabled_animal = "Animal Peds kan inte bära.",

		cancel_piggyback = "Tryck på ~INPUT_FRONTEND_RRIGHT~ för att avbryta ryggtransport.",
		piggyback_hop_on = "[${InteractionKey}] hoppa på",
		stop_piggyback = "Tryck på ~INPUT_VEH_HEADLIGHT~ för att sluta bära på någon.",

		lockpicking_cuffs = "Låsspikning av Handbojor",
		lockpick_cuffs_too_fast = "Du rörde dig för snabbt.",
		success_lockpick_cuffs = "Lyckades låsspika handbojor.",
		failed_lockpick_cuffs = "Misslyckades med att låsspika handbojor.",
		lockpick_lost = "Du tappade din låsspik.",

		not_cuffed = "Du är inte handbojad.",
		unable_to_lockpick = "Du kan inte låsspika handbojorna.",

		lockpick_cuffs_logs_title = "Låsspikade Handbojor",
		lockpick_cuffs_logs_details = "${consoleName} lyckades låsspika sina handbojor med en `${itemName}`.",

		you_are_not_being_carried = "Du blir för tillfället inte buren av någon.",
		successfully_uncarried = "Tvingade avbryt bärning framgångsrikt.",
		failed_uncarried = "Kunde inte tvinga avbryt bärning.",
		uncarry_missing_permissions = "Försökte tvinga avbryt bärning utan nödvändiga behörigheter.",

		uncarry_logs_title = "Tvinga avbryt bärning",
		uncarry_logs_details = "${consoleName} tvingade ${targetName} att sluta bära dem.",

		failed_carry_npc = "Misslyckades att bära NPC.",
		carry_npc_something_wrong = "Något gick fel medan du försökte bära peden.",

		e_to_struggle = "Tryck E för att kämpa emot",
		cant_struggle_dead = "Du kan inte kämpa emot när du är död.",
		struggle_to_quick = "Du är utmattad efter att ha kämpat, vänta en stund och försök igen.",
		struggle_logs_title = "Kämpat Fri",
		struggle_logs_details = "${consoleName} kämpade sig fri från ${targetName} som bar på dem."
	},

	-- base/*
	admin = {
		feature_toggle_not_admin = "Försökte aktivera '${featureName}' antingen för sig själv eller någon annan, men hade inte tillräckliga rättigheter att göra det.",
		feature_toggle_activated_logs_title = "Fjärraktiverade Funktion",
		feature_toggle_activated_logs_details_state = "${consoleName} har bytt `${featureName}` till ${newState} för spelaren ${targetConsoleName}.",
		feature_toggle_activated_all_logs_title = "Fjärrstyrt aktiveringsalternativ för alla",
		feature_toggle_activated_all_logs_details = "${consoleName} har bytt `${featureName}` för alla.",
		feature_toggle_activated_self_logs_title = "Aktiverat alternativ",
		feature_toggle_activated_self_on_logs_details = "${consoleName} har aktiverat `${featureName}` för sig själva.",
		feature_toggle_activated_self_off_logs_details = "${consoleName} har inaktiverat `${featureName}` för sig själva.",
		feature_toggle_success = "Bytte till ${featureName} för ${consoleName}.",
		feature_toggle_success_all = "Bytte till ${featureName} för alla.",
		feature_toggle_failed = "Kunde inte byta till ${featureName} för server ID ${serverId}.",
		feature_toggle_success_on = "Bytte till ${featureName} på för ${consoleName}.",
		feature_toggle_success_off = "Bytte till ${featureName} av för ${consoleName}.",

		noclip_toggle_activated_self_logs_title = "Noclip Bytt",
		noclip_toggle_activated_self_on_logs_details = "${consoleName} bytte till noclip på positionen `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`. (I fordon: ${inVehicle})",
		noclip_toggle_activated_self_off_logs_details = "${consoleName} stängde av noclip vid positionen `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`.",

		model_name_not_provided = "Inget modellnamn angivet.",
		model_name_invalid = "Modellnamnet `${modelName}` är ogiltigt.",
		failed_to_spawn_vehicle = "Misslyckades med att utföra kommandot `/spawn_vehicle` korrekt.",
		spawned_vehicle_for_player = "Lyckades spawna `${modelName}` för ${consoleName}.",
		spawned_vehicle_for_everyone = "Lyckades spawna `${modelName}` för alla.",
		spawn_vehicle_for_player_not_staff = "Spelaren försökte spawn en fordon för någon annan, men hade inte tillstånd att göra det.",
		spawn_vehicle_for_self_not_staff = "Spelaren försökte spawn en fordon för sig själv men hade inte tillstånd att göra det.",
		replace_vehicle_no_permissions = "Spelaren försökte byta ut sitt fordon men hade inte tillstånd att göra det.",
		create_vehicle_no_permissions = "Spelaren försökte skapa ett fordon men hade inte tillstånd att göra det.",
		spawned_vehicle_for_self_title = "Spawnat fordon",
		spawned_vehicle_for_self_details = "${consoleName} spawnade ett fordon med modellnamn `${modelName}`.",
		spawned_vehicle_for_player_title = "Spawnat fordon för spelare",
		spawned_vehicle_for_player_details = "${consoleName} spawnade ett fordon med modellnamn `${modelName}` för spelaren ${targetConsoleName}.",
		spawned_vehicle_for_everyone_title = "Spawnat fordon för alla",
		spawned_vehicle_for_everyone_details = "${consoleName} spawnade ett fordon med modellnamn `${modelName}` för alla.",

		vehicle_created = "Fordonet har skapats.",
		failed_vehicle_creation = "Kunde inte skapa fordon.",

		invalid_amount = "Ogiltigt belopp.",

		added_cash_title = "Lade Till Pengar",
		added_cash_details = "${consoleName} lade till $${amount} pengar.",
		added_cash_to_player_title = "Lade Till Pengar Till Spelare",
		added_cash_to_player_details = "${consoleName} lade till $${amount} pengar till ${targetConsoleName}.",
		added_cash_to_everyone_title = "Lade Till Pengar Till Alla",
		added_cash_to_everyone_details = "${consoleName} lade till $${amount} pengar till alla.",

		removed_cash_title = "Tog bort kontanter",
		removed_cash_details = "${consoleName} tog bort $${amount} kontanter.",
		removed_cash_from_player_title = "Tog bort kontanter från spelare",
		removed_cash_from_player_details = "${consoleName} tog bort $${amount} kontanter från ${targetConsoleName}.",
		removed_cash_from_everyone_title = "Tog bort kontanter från alla",
		removed_cash_from_everyone_details = "${consoleName} tog bort $${amount} kontanter från alla.",

		added_bank_title = "Lade till pengar i banken",
		added_bank_details = "${consoleName} lade till $${amount} i banken.",
		added_bank_to_player_title = "Lade Till Bank Till Spelare",
		added_bank_to_player_details = "${consoleName} lade till ${amount} bank till ${targetConsoleName}.",
		added_bank_to_everyone_title = "Lade Till Bank Till Alla",
		added_bank_to_everyone_details = "${consoleName} lade till ${amount} bank till alla.",

		removed_bank_title = "Tog Bort Bank",
		removed_bank_details = "${consoleName} tog bort ${amount} bank.",
		removed_bank_from_player_title = "Tog Bort Bank Från Spelare",
		removed_bank_from_player_details = "${consoleName} tog bort ${amount} bank från ${targetConsoleName}.",
		removed_bank_from_everyone_title = "Tog bort Bank från Alla",
		removed_bank_from_everyone_details = "${consoleName} tog bort $${amount} från varje persons Bank.",

		added_cash = "Lade till $${amount} i Kontanter.",
		added_cash_to_player = "Lade till $${amount} i Kontanter till ${targetConsoleName}.",
		added_cash_to_everyone = "Lade till $${amount} i Kontanter till alla.",

		removed_cash = "Tog bort $${amount} i Kontanter.",
		removed_cash_from_player = "Tog bort $${amount} i Kontanter från ${targetConsoleName}.",
		removed_cash_from_everyone = "Tog bort $${amount} i Kontanter från alla.",

		added_bank = "Lade till $${amount} till banken.",
		added_bank_to_player = "Lade till $${amount} till banken för ${targetConsoleName}.",
		added_bank_to_everyone = "Lade till $${amount} till banken för alla.",

		removed_bank = "Tog bort $${amount} från banken.",
		removed_bank_from_player = "Tog bort $${amount} från banken för ${targetConsoleName}.",
		removed_bank_from_everyone = "Tog bort $${amount} från banken för alla.",

		money_event_not_admin = "Försökte aktivera händelse '${moneyEvent}' utan adminrättigheter.",

		spawned_item_title = "Spawna objekt",
		spawned_item_details = "${consoleName} spawna ${amount}x '${itemName}' för sig själv.",
		spawned_item_for_player_title = "Spawna Objekt För Spelare",
		spawned_item_for_player_details = "${consoleName} spawna ${amount}x `${itemName}` för ${targetConsoleName}.",
		spawned_item_for_everyone_title = "Spawna Objekt För Allmänheten",
		spawned_item_for_everyone_details = "${consoleName} spawna ${amount}x `${itemName}` för alla.",

		report_title = "RAPPORT-${reportId} ${reporterName}",
		report_logs_title = "Rapport",
		report_logs_details = "${consoleName} skapade en rapport (${reportId}) med följande meddelande: `${reportMessage}`",

		announcement_staff_title = "Personalmeddelande från personalen",
		announcement_server_title = "Servermeddelande",

		announcement_logs_title = "Meddelande till hela servern",
		announcement_logs_details = "${consoleName} skickade följande meddelande till hela servern: '${announcementMessage}'",
		announcement_not_admin = "Försök att skicka ut ett personalmeddelande trots att du inte är personal.",

		announcement_maintenance = "Servern kommer att stängas ner om ${minutes} minuter för underhåll.",
		announcement_update = "Servern kommer att stängas ner om ${minutes} minuter för uppdatering.",
		announcement_restart = "Servern kommer att stängas av om ${minutes} minuter för omstart.",

		posted_announcement = "Meddelande tillkännagivet.",
		posted_announcement_locale = "Meddelande tillkännagivet från språkområdet.",
		failed_to_post_announcement = "Det gick inte att tillkännage meddelandet eftersom inget meddelande lades till.",
		failed_to_post_announcement_locale = "Det gick inte att tillkännage meddelandet eftersom meddelandet på det valda språkområdet inte stöds.",

		staff_title = "PERSONAL ${staffName}",
		staff_message_logs_title = "Personalmeddelande",
		staff_message_logs_details = "${consoleName} skickade följande meddelande i personalchatten: `${staffMessage}`",
		staff_message_illegal = "Spelaren försökte skicka ett meddelande i personalchatten, men var inte personal.",

		staff_pm_title = "PERSONAL PM ${transmissionTitle}",
		staff_pm_logs_title = "Personal PM",
		staff_pm_logs_details = "${senderConsoleName} skickade följande meddelande till ${recipientConsoleName}: `${staffPrivateMessage}`",
		staff_pm_not_logged_in = "Du är inte inloggad.",
		staff_pm_not_user_not_found = "Användaren med server ID ${serverId} kunde inte hittas.",
		staff_pm_not_recipient_not_staff = "Den spelare du försöker skicka meddelandet till är inte en personalmedlem.",
		staff_pm_unable_to_message_self = "Du kan inte skicka meddelanden till dig själv.",
		staff_pm_warning = "Varning: Personalmeddelanden",
		staff_pm_first_time = "Vi ser att du aldrig har använt personalmeddelanden förr. För att svara på ett personalmeddelande, använd /staffpm-kommandot.",

		external_staff_message = "Extern personalmeddelande",
		external_staff_message_from_player = "Extern personalmeddelande från ${playerName}",
		external_staff_message_content = "${staffMessage} (Du kan inte svara på detta meddelande.)",

		unable_to_staff_message_yourself = "Det går inte att skicka personalmeddelanden till dig själv.",
		message_sent = "Meddelande skickat.",
		player_not_found = "Spelare hittades inte.",
		missing_valid_target_source_parameter = "Saknar giltigt 'målets källa' parameter.",
		missing_valid_message_parameter = "Saknar giltigt 'meddelande' parameter.",

		invalid_coordinates = "Ogiltiga x-, y-, z- eller w-koordinater angivna.",
		player_not_loaded_character = "Spelaren har inte laddat karaktär.",
		teleport_successful = "Teleporterade spelaren framgångsrikt.",

		player_revived_success = "Spelare återupplivad framgångsrikt.",

		missing_valid_license_identifier_parameter = "Saknar giltig parameter för 'licenseIdentifier'.",

		illegal_entity_wipe = "Spelaren försökte rensa entiteter, men hade inte behörighet.",
		wiped_entities = "Rensade entiteter",
		wipe_entities_logs_title = "Rensade entiteter",
		wipe_entities_logs_details = "${consoleName} utförde en rensning av entiteter med följande konfiguration: avstånd = `${distance}`, ignorera lokala entiteter = `${ignoreLocalEntities}`, modellnamn = `${modelName}`.",

		wipe_awaiting_confirmation = "Rensningen väntar nu på bekräftelse. Skriv `ja` eller `nej` för att bekräfta eller avbryta (löper ut om 60 sekunder).\n\nValda parametrar är:\n- avstånd: `${distance}`\n- ignorera lokala entiteter: `${ignoreLocalEntities}`\n- modellnamn: `${modelName}`",
		wipe_awaiting_big_title = "Varning för stor renshet",
		wipe_awaiting_confirmation_big = "**Hej, du är på väg att rensa ett mycket stort område, se till att detta är vad du tänkt göra!**\nSkriv `ja` eller `nej` för att bekräfta eller avbryta (löper ut om 60 sekunder).\n\n- avstånd: `${distance}`\n- ignorera lokala entiteter: `${ignoreLocalEntities}`\n- modellnamn: `${modelName}`",
		cancelled_wipe = "Rensningen har avbrutits.",

		there_is_people_nearby = "Det finns spelare i närheten som kan se dig noclippa!",

		cant_while_spectating = "Du kan inte göra detta medan du åskådar.",

		you_have_been_kicked = "Du har blivit kickad av ${kicker} för anledning `${reason}`.",
		you_have_been_kicked_no_reason = "Du har blivit kickad av ${kicker} utan specificerad anledning.",

		logs_player_kicked_title = "Spelare Kickad",
		logs_player_kicked_details = "${consoleName} har blivit kickad från servern av ${kicker} för anledning `${reason}`.",
		logs_player_kicked_no_reason_details = "${consoleName} har blivit kickad från servern av ${kicker} utan specificerad anledning.",

		you_have_been_banned = "Du har blivit bannad av ${banner} för anledningen `${reason}`.",
		you_have_been_banned_no_reason = "Du har blivit bannad utan specificerad anledning av ${banner}.",

		banner_name_generic = "en personalmedlem",

		ban_alert_title = "Bannad från servern",
		ban_alert_description_banner = "Du skulle ha blivit automatiskt bannad av ${banner} för anledningen `${reason}`.",
		ban_alert_description = "Du har automatiskt blivit bannlyst från systemet på grund av anledningen `${reason}`.",

		logs_player_banned_title = "Spelare bannad",
		logs_player_banned_system_title = "Spelar bannad av systemet",
		logs_player_banned_details = "${consoleName} har blivit bannad från servern av ${banner} för anledningen `${reason}`.",
		logs_player_banned_no_reason_details = "${consoleName} har blivit bannlyst från servern av ${banner} utan angiven anledning.",

		player_kicked = "${consoleName} har blivit sparkad från servern.",
		player_banned = "${consoleName} har blivit bannlyst från servern.",

		ban_double_kill = "Dubbel död!",
		ban_triple_kill = "😧 Trippel död!!!",
		ban_quadrouple_kill = "😨 FYRDUBBLA DÖDARNA!!!!!!",
		ban_killing_spree = "🤯 DÖDSSVITER (${count})!!!!!!",

		kick_player_not_staff = "Försökte sparka en spelare utan tillräckliga behörigheter.",
		ban_player_not_staff = "Försök att banna en spelare utan tillräckliga behörigheter.",

		hide_staff_not_staff = "Försök att dölja sin personalstatus utan tillräckliga behörigheter.",
		toggle_staff_not_staff = "Försök att byta tillgänglighet för personal utan tillräckliga behörigheter.",

		logs_hide_staff_title = "Personal dold",
		logs_hide_staff_hidden_details = "${consoleName} har dolt sin personalstatus.",
		logs_hide_staff_shown_details = "${consoleName} har visat sin personalstatus.",

		logs_toggle_staff_title = "Personalväxling",
		logs_toggle_staff_off_details = "${consoleName} har stängt av sin tillgänglighet som personal.",
		logs_toggle_staff_on_details = "${consoleName} har aktiverat sin tillgänglighet som personal.",

		staff_hidden = "Din personalstatus är nu dold.",
		staff_shown = "Din personalstatus är nu synlig.",
		staff_toggled_on = "Din tillgänglighet som personal har aktiverats.",
		staff_toggled_off = "Din tillgänglighet som personal har stängts av.",

		staff_feature_unavailable = "Denna funktion är otillgänglig när din tillgänglighet som personal är avstängd.",

		failed_toggle_tracker = "Kunde inte växla spelartracker.",
		unable_track_player = "Kan inte spåra spelaren.",
		success_enable_tracker = "Spelartracker aktiverad för `${playerName}`.",
		success_disable_tracker = "Spelartracker avaktiverad.",
		not_tracking_player = "Du spårar inte en spelare.",
		already_tracking_player = "Du spårar redan en spelare.",

		toggle_player_track_no_permissions = "Försökte växla spelarspårning utan korrekta behörigheter.",
		set_job_no_permissions = "Försökte sätta yrke utan korrekta behörigheter.",
		toggle_reflection_no_permissions = "Försökte aktivera skadereflektion utan tillräckliga behörigheter.",

		success_enable_reflection = "Skadereflektionen aktiverades framgångsrikt.",
		success_disable_reflection = "Skadereflektionen avaktiverades framgångsrikt.",
		failed_toggle_reflection = "Misslyckades med att aktivera/släcka skadereflektionen.",

		reflection_logs_title = "Skadereflektion påslagen/avslagen",
		reflection_logs_enabled_details = "${consoleName} har aktiverat skadereflektionen.",
		reflection_logs_disabled_details = "${consoleName} har avaktiverat skadereflektionen.",

		headache_logs_title = "Utlöst huvudvärk",
		headache_logs_details = "${consoleName} har utlöst huvudvärk för ${targetConsoleName}.",
		trigger_headache_no_permissions = "Försökte utlösa huvudvärk utan korrekta rättigheter.",

		success_trigger_headache = "Lyckades utlösa huvudvärk för ${playerName}.",
		failed_trigger_headache = "Kunde inte utlösa huvudvärk.",

		protective_mode_not_staff = "Försökte aktivera serverns skyddsläge utan tillräckliga behörigheter.",
		protective_mode_toggled_on = "Serverns skyddsläge har nu aktiverats. Krävd mängd speltid för att ansluta till servern har satts till `${playtime}`.",
		protective_mode_toggled_off = "Serverns skyddsläge har nu inaktiverats.",
		protective_mode_already_on = "Serverns skyddsläge har redan aktiverats med krävd speltid på `${playtime}`.",
		protective_mode_already_off = "Serverns skyddsläge är redan inaktiverat.",
		logs_protective_mode = "Server skyddsläge",
		logs_protective_mode_on = "${consoleName} aktiverade serverns skyddsläge med krävd speltid: `${playtime}`.",
		logs_protective_mode_off = "${consoleName} deaktiverade serverns skyddsläge.",

		spawn_item_not_staff = "Försökte tillkalla en föremål utan korrekta behörigheter",
		no_item_name = "Inget föremålsnamn angivet.",
		invalid_item_name = "${itemName} är inte ett giltigt föremålsnamn.",
		item_spawned = "Tillkallade ${amount}x `${itemName}` för ${consoleName}.",
		item_spawned_for_everyone = "Spawnade ${amount}x `${itemName}` för alla.",

		set_warning_message_not_staff = "Försökte ändra serverns varningsmeddelande utan tillräckliga behörigheter.",
		warning_message_set_to = "Varningsmeddelandet har ändrats till `${warningMessage}`.",
		warning_message_removed = "Varningsmeddelandet har tagits bort.",
		warning_message_error = "Ett fel uppstod när varningsmeddelandet försöktes ändras.",
		warning_message_identical = "Du kan inte ändra varningsmeddelandet till vad det redan är satt till.",
		warning_message_set_to_title = "Varningsmeddelande inställt",
		warning_message_set_to_details = "${consoleName} har inställt varningsmeddelandet till `${warningMessage}`.",
		warning_message_removed_title = "Varningsmeddelande borttaget",
		warning_message_removed_details = "${consoleName} har tagit bort varningsmeddelandet.",

		indestructibility_on = "Togglat på 'Obestridlighet'.",
		indestructibility_off = "Togglat av 'Obestridlighet'.",
		speed_boost_on = "Togglat på 'Speed Boost'",
		speed_boost_off = "Togglat av 'Speed Boost'.",
		nitro_boost_on = "Aktiverade 'Nitro Boost'.",
		nitro_boost_off = "Avaktiverade 'Nitro Boost'.",
		no_nearby_vehicles_on = "Aktiverade 'Inga Närliggande Fordon'.",
		no_nearby_vehicles_off = "Avaktiverade 'Inga Närliggande Fordon'.",
		speed_up_progress_bar_on = "Aktiverade 'Snabba upp framstegsindikatorn'.",
		speed_up_progress_bar_off = "Avaktiverade 'Snabba upp framstegsindikatorn'.",
		invisibility_on = "Aktiverade 'Osynlighet'.",
		invisibility_off = "Avaktiverade 'Osynlighet'.",
		wallhack_on = "Aktiverade 'Wallhack'.",
		wallhack_off = "Avaktiverade 'Wallhack'.",
		aimbot_on = "Aktiverade 'Aimbot'.",
		aimbot_off = "Stängde av 'Aimbot'.",
		player_bones_on = "Aktiverade 'Spelarben'.",
		player_bones_off = "Stängde av 'Spelarben'.",
		vehicle_smoke_on = "Aktiverade 'Fordonsrök'.",
		vehicle_smoke_off = "Stängde av 'Fordonsrök'.",

		peeking_on = "Aktiverade snoka-läge.",
		peeking_off = "Stängde av snoka-läge.",

		watching_on = "Aktiverade tittar-läge.",
		watching_off = "Stängde av tittar-läge.",
		watching_label = "Tittar på: ${nearby}",

		evidence_view_on = "Aktiverade visning av bevis.",
		evidence_view_off = "Stängde av bevisvisningsläget.",
		evidence_view_title = "Bytte till bevisvisningsläge",
		evidence_view_details_on = "${consoleName} aktiverade avancerat visningsläge för bevisvisning.",
		evidence_view_details_off = "${consoleName} inaktiverade avancerat visningsläge för bevisvisning.",

		report_muted_no_reason = "Du har blivit tystad från rapportkommandot utan angivet skäl.",
		report_muted = "Du har blivit tystad från rapportkommandot med anledning: `${reason}`.",

		already_sending_report = "Du skickar redan en rapport. Vänligen vänta.",
		unable_to_send_identical_report = "Du kan inte skicka två identiska rapporter efter varandra.",

		already_sending_staff_message = "Du skickar redan ett meddelande till personal. Vänligen vänta.",
		unable_to_send_identical_staff_message = "Du kan inte skicka två identiska personalmeddelanden efter varandra inom 30 sekunder.",

		tp_coords_invalid_coordinates = "Ogiltiga koordinater.",
		tp_coords_teleported_to_coordinates = "Teleporterad till koordinater X: ${x}, Y: ${y}, Z: ${z}.",

		teleported_to_waypoint = "Teleporterad till markör vid ${locationLabel}.",
		no_waypoint_set = "Du måste ange en vägvisarepunkt.",

		teleported_to_coordinates_logs_title = "Teleport till Koordinater",
		teleported_to_coordinates_logs_details = "${consoleName} teleporterad till koordinater X: ${x}, Y: ${y}, Z: ${z}.",
		teleported_to_waypoint_logs_title = "Teleport till Vägvisarepunkt",
		teleported_to_waypoint_logs_details = "${consoleName} teleporterad till en vägvisarepunkt vid ${locationLabel}.",

		teleport_to_coordinates_not_staff = "Spelaren försökte teleportera till koordinater men de var inte personal.",
		teleport_to_waypoint_not_staff = "Spelaren försökte teleportera till en waypoint men är inte en personalmedlem.",

		failed_isolate = "Misslyckades med att isolera spelare.",
		invalid_server_id = "Ogiltigt server-id.",
		isolate_success_on = "${consoleName} har blivit isolerad framgångsrikt.",
		isolate_success_off = "Isoleringen av ${consoleName} har stoppats framgångsrikt.",

		isolate_missing_permissions = "Spelaren försökte isolera en annan spelare utan rätt behörighet.",

		population_density_set_to = "Populationstätheten har satts till ${multiplierLabel}%. ökning.",
		population_density_set_off = "Population Density Multiplier-override har stängts av.",
		population_density_is_not_on = "Population Density Multiplier-override är inte påslaget.",
		population_density_already_set_to = "Population Density Multiplier-override är redan satt till ${multiplierLabel}%.",

		population_density_not_super_admin = "Spelaren försökte sätta Population Density Multiplier-override utan tillräckligt med behörigheter.",

		enabled_features_list = "Aktiverade funktioner:",
		aimbot_feature = "Aimbot",
		disabled_collisions_feature = "Inaktiverade Kollisioner",
		disabled_recoil_feature = "Inaktiverad Rekyl",
		evidence_view_feature = "Bevisvy",
		hit_indicator_feature = "Träffindikator",
		indestructibility_feature = "Odödlighet",
		infinite_ammo_feature = "Oändligt ammo",
		invisibility_feature = "Osynlighet",
		muted_sirens_feature = "Tysta Sirener",
		nitro_boost_feature = "Nitro Boost",
		no_nearby_vehicles_feature = "Inga närbelägna fordon",
		peeking_feature = "Tjuvkikande",
		roll_control_feature = "Rullstyrning",
		speed_boost_feature = "Hastighetsboost",
		speed_up_progress_bar_feature = "Snabba upp framstegsindikatorn",
		sticky_feet_feature = "Klibbiga fötter",
		wallhack_feature = "Genomväggssyn",
		watching_feature = "Övervakning",
		fortnite_feature = "Fortnite",
		reflection_feature = "Skadereflektion",
		stable_cam_feature = "Stallningskamera",

		you_are_not_in_a_vehicle = "Du är inte i ett fordon.",
		repaired_vehicle = "Reparerade fordonet.",

		success_nos_refill = "Fyllde på NOS med framgång.",
		failed_nos_refill = "Misslyckades med att fylla på NOS.",

		refill_nitro_missing_permissions = "Spelaren försökte fylla på sin NOS utan tillräckliga behörigheter.",

		register_invalid_character_id = "Ogiltigt karaktärs-ID.",
		register_invalid_slot = "Ogiltig inventeringsplats.",
		register_weapon_success = "Vapen i slot ${slotId} har nu registrerats för karaktär med karaktärs-id ${cid}.",
		register_weapon_failed = "Misslyckades med att registrera vapen.",

		register_weapon_missing_permissions = "Spelaren försökte registrera ett vapen utan tillräckliga behörigheter.",

		vehicle_smoke_invalid_class = "Bilrök kan inte aktiveras för den här bilklassen.",

		repair_vehicle_not_super_admin = "Spelaren försökte reparera en bil utan tillräckliga behörigheter.",

		repaired_vehicle_logs_title = "Reparerad bil",
		repaired_vehicle_logs_details = "${consoleName} reparade det fordon de befann sig i.",

		unable_to_enter_vehicle_while_dead = "Du kan inte gå in i en bil medan du är död.",
		the_closest_vehicle_had_no_free_seats = "Det närmaste fordonet hade inga lediga platser.",
		there_are_no_nearby_vehicles = "Det finns inga närliggande fordon.",
		vehicle_not_found_network = "Fordonet med nätverks-ID hittades inte.",
		entered_vehicle = "Försökte gå in i närliggande ${vehicleName}.",

		set_vehicle_modifications_logs_title = "Fordonstillbehör ändrad",
		set_vehicle_modifications_logs_details = "${consoleName} ändrade fordonstillbehör för ett fordon med plåten `${vehiclePlate}`. Ändringarna som gjordes var: modtyp-${modType}, modIndex-${modIndex}, anpassade däck-${customTires}.",

		set_vehicle_livery_logs_title = "Ändra fordonets utseende",
		set_vehicle_livery_logs_details = "${consoleName} ändrade utseendet på fordonet med registreringsnumret `${vehiclePlate}` till utseendet med index `${liveryIndex}`.",

		set_livery_missing_permissions = "Spelare försökte ändra utseendet på ett fordon utan tillräckliga behörigheter.",
		set_modifications_missing_permissions = "Spelare försökte ändra en modifiering på ett fordon utan tillräckliga behörigheter.",

		set_vehicle_modification = "Modifierade fordonets utseende för modifieringstyp `${modType}` till index `${modIndex}`. (Anpassade däck: ${customTires})",
		mod_index_invalid_for_type = "Mod index `${modIndex}` är ogiltigt för modtypen `${modType}`.",
		mod_type_invalid = "Modtyp `${modType}` är ogiltig.",
		no_mod_type_set = "Ingen modtyp är inställd.",

		set_vehicle_livery = "Ställ in fordonets dekal på `${liveryIndex}`.",
		no_livery_index_set = "Ingen dekalindex är inställd (minst: 1).",
		you_are_not_the_driver = "Du är inte föraren av fordonet.",
		vehicle_is_not_a_plane_or_heli = "Fordonet är inte ett flygplan eller helikopter.",
		livery_index_invalid = "Ogiltigt dekalindex (max: ${maxLiveries}).",
		vehicle_has_no_liveries = "Fordonet har inga dekaler.",

		invalid_plate_number = "Ogiltigt nummer på registreringsskylt.",
		set_fake_plate_number = "Registreringsskylten för fordonet är satt till `${plateNumber}`.",

		invalid_dirt_level = "Ogiltig nivå på smutsighet.",
		set_dirt_level = "Fordonets smutsighet är satt till `${dirtLevel}`.",

		set_dirt_level_not_super_admin = "Spelaren försökte sätta smutsighetsnivån för fordonet utan nödvändiga behörigheter.",

		set_fake_plate_not_super_admin = "Spelaren försökte sätta en fejkad registreringsskylt för fordonet utan nödvändiga behörigheter.",

		already_fake_disconnecting = "Du försöker redan att fejka en frånkoppling. Var vänlig vänta.",
		started_fake_disconnect = "Fejkade frånkoppling har påbörjats. Upprepa kommandot för att stoppa den.",
		stopped_fake_disconnect = "Fejkad frånkoppling har stoppats.",

		fake_disconnect_not_super_admin = "Spelaren försökte fejka en frånkoppling utan nödvändiga rättigheter.",

		disabled_idle_cam = "Inaktiv kamera har stängts av.",
		enabled_idle_cam = "Inaktiv kamera har aktiverats igen.",

		created_vehicle_smoke_for_player_logs_title = "Skapade fordonrök",
		created_vehicle_smoke_for_player_logs_details = "${consoleName} skapade rök från fordonet.",

		player_info_not_staff = "Försökte få information om en spelares karaktär utan korrekt tillstånd.",
		player_info_title = "${consoleName}",
		player_info = "${fullName} #${characterId}\nHar ${playtime} speltid.\n${jobName}, ${departmentName}, ${positionName}\n\n${backstory}",

		inventory_name_missing = "Saknar namn på inventariumparameter.",
		force_inventory_missing_perms = "Försökte tvinga öppna inventarium utan korrekt tillstånd.",

		auto_driving_engaged = "Automatisk körning har aktiverats (Stil: ${style}).",
		auto_driving_updated = "Automatisk körning hastighet/plats har uppdaterats.",
		auto_driving_disengaged = "Automatisk körning har avbrutits.",
		not_auto_driving = "Du kör inte automatiskt.",
		invalid_auto_drive_speed = "Ogiltig eller saknad hastighet för automatisk körning.",
		reset_auto_drive_speed = "Återställ automatisk körningshastighet till standard.",
		set_auto_drive_speed = "Sätt automatisk körningshastighet till ${speed} mph.",

		disable_collisions_on = "Dina kollisioner är nu avstängda.",
		disable_collisions_off = "Dina kollisioner är nu aktiverade.",
		failed_toggle_collisions = "Kunde inte växla avstängda kollisioner.",

		disabled_recoil_on = "Rekyl avstängd.",
		disabled_recoil_off = "Rekyl aktiverad.",

		attachment_missing = "Saknar bifogad parameter.",
		no_weapon_equipped = "Inget vapen utrustat.",
		attachment_invalid = "Bifogningen är ogiltig eller inte tillgänglig för detta vapen.",
		attachment_failed_toggle = "Det gick inte att växla bifogning på detta vapen.",
		attachment_on = "Bifogning '${attachment}' har aktiverats.",
		attachment_off = "Bifogning '${attachment}' har avaktiverats.",

		tint_invalid = "Ogiltig vapentyning.",
		tint_range_invalid = "Ogiltigt vapentintintervall (måste vara mellan 0 och ${max}).",
		tint_failed_set = "Misslyckades med att sätta vapenfärg.",
		tint_removed = "Vapenfärgen har tagits bort.",
		tint_set = "Vapenfärgen har ställts in på `${tint}` (${tintIndex}).",
		no_weapon_tint = "Det här vapnet har inga färger.",

		weapon_attachment_missing_perms = "Försökte att aktivera eller avaktivera ett vapen tillbehör utan tillräcklig behörighet.",
		weapon_tint_missing_perms = "Försökte att sätta en vapenfärg utan tillräcklig behörighet.",

		no_attachments = "Inga tillbehör",
		available_attachments = "Tillgängliga tillbehör",
		current_attachments = "Nuvarande tillbehör",
		no_attachments = "Inga tillbehör",
		attachments_list = "Tillbehör:",
		tint_label = "Nyans: \"${tintLabel}\" (${tintIndex})",

		item_name_failed_set = "Det gick inte att ange alternativ namn för föremålet.",
		item_name_removed = "Alternativt namn för föremålet har tagits bort.",
		item_name_set = "Alternativt namn för föremålet har satts till '${itemName}'.",
		item_name_invalid_slot = "Ogiltig eller saknad föremålsplats.",

		cleaned_ped = "Personen ${consoleName} har rensats från smuts.",
		cleaned_ped_self = "Din karaktär har rensats.",
		clean_ped_failed = "Det gick inte att rensa karaktären.",
		cleaned_ped_for_all = "Alla karaktärer har rensats.",
		clean_ped_no_permission = "Försökte rensa en annan spelares karaktär utan tillräckliga behörigheter.",

		item_durability_set_success = "Hållbarheten har satts till ${amount}% för föremålet i slot ${slotId}.",
		item_durability_set_failed = "Det gick inte att sätta hållbarheten.",
		item_durability_invalid_amount = "Ogiltig hållbarhetsnivå (0 <> 100).",
		item_durability_set_no_permission = "Försökte sätta hållbarheten för ett föremål utan tillräckliga behörigheter.",

		item_metadata_set_no_permission = "Försök att ställa in ett items metadata utan nödvändiga behörigheter.",
		item_metadata_invalid_metadata = "Ogiltig item metadata.",
		item_metadata_set_success = "Metadata för items i slot ${slotId} har framgångsrikt ställts in.",
		item_metadata_set_failed = "Misslyckades att ställa in metadata.",

		advanced_metagame_on = "Aktiverade avancerat metaspel.",
		advanced_metagame_off = "Avaktiverade avancerat metaspel.",

		identity_set = "Din identitet har framgångsrikt satts till `${name}`.",
		identity_reset = "Din identitet har framgångsrikt återställts.",
		identity_set_failed = "Misslyckades med att sätta ditt identitetsnamn.",
		identity_hud = "Identitet: ${playerName}",

		set_identity_no_permission = "Spelaren försökte sätta sitt spelarnamn utan tillräckliga behörigheter.",

		invalid_range_parameter = "Ogiltigt intervallparameter.",
		wipe_first_owned_success = "Raderade framgångsrikt alla ${amount} entiteter som först ägdes av spelaren med server id `${serverId}`.",
		wipe_first_owned_success_range = "Raderade framgångsrikt alla ${amount} entiteter som först ägdes av spelaren med server id `${serverId}` inom ${range}m räckvidd.",
		wipe_first_owned_failed = "Misslyckades med att radera föremål som först ägdes av spelaren med server-id ${serverId}.",

		invalid_radius_parameter = "Ogiltigt radie (mellan 1 och 500).",
		scooped_up_players = "Samlat upp ${amount} spelare.",
		scoop_invalid = "Du har inte samlat upp några spelare.",
		unscooped_players = "Av-samlade ${amount} av ${total} spelare.",
		unscoop_failed = "Misslyckades med att av-samla spelare.",

		unscoop_missing_permissions = "Spelaren försökte av-samla utan korrekta rättigheter.",

		toggle_collisions_missing_permissions = "Spelaren försökte växla mellan kollisioner utan korrekta rättigheter.",
		wipe_first_owned_missing_permissions = "Spelaren försökte radera först ägda objekt utan rättigheter.",

		freeze_missing_permissions = "Spelaren försökte frysa eller avfrysa en annan spelare utan rättigheter.",

		freeze_success = "Lyckades frysa ${consoleName}.",
		failed_freeze = "Kunde inte frysa spelaren.",
		unfreeze_success = "Lyckades avfrysa ${consoleName}.",
		failed_unfreeze = "Kunde inte avfrysa spelaren.",

		freeze_logs_title = "Frysning av spelare",
		freeze_logs_details = "${consoleName} frös ${targetName}.",
		unfreeze_logs_title = "Avfrostade spelare",
		unfreeze_logs_details = "${consoleName} avfrostade ${targetName}.",

		slap_kill_reason = "Slagit",
		slap_success = "${consoleName} slog ${targetName} framgångsrikt.",
		slap_failed = "Det gick inte att bjuda på spelaren.",
		slap_logs_title = "Slog spelare",
		slap_logs_details = "${consoleName} slog ${targetName}.",
		slap_missing_permissions = "Spelaren försökte slå en annan spelare utan rättigheter.",

		damaged_player = "Skadade ${consoleName} framgångsrikt för ${damage} skada.",
		damage_player_failed = "Det gick inte att skada spelaren.",
		damage_player_logs_title = "Skadad Spelare",
		damage_player_logs_details = "${consoleName} skadade ${targetConsoleName} med ${damage} skada.",
		damage_player_missing_permissions = "Spelaren försökte skada en annan spelare utan tillräckliga behörigheter.",

		refill_nitro_logs_title = "Efterfyllde Nitro",
		refill_nitro_logs_details = "${consoleName} efterfyllde sitt nitro.",

		isolated_logs_title = "Spelarisolering",
		isolated_off_logs_details = "${consoleName} stängde av isoleringen för ${targetName}.",
		isolated_on_logs_details = "${consoleName} aktiverade isoleringen för ${targetName}.",

		character_data_logs_title = "Spelarkaraktärsdata",
		character_data_logs_details = "${consoleName} kontrollerade ${targetName}s spelarkaraktärsdata (CID: ${characterId}).",

		item_name_logs_title = "Namnändring för föremål",
		item_name_logs_details = "${consoleName} bytte namn på föremålen i plats ${slot} till `${nameOverride}`.",

		toggle_attachment_logs_title = "Toggla Bilaga",
		toggle_attachment_logs_details = "${consoleName} aktiverade bilagan `${attachment}`.",

		tint_logs_title = "Sätt färgnyans",
		tint_logs_details = "${consoleName} satte färgindex på sitt vapen till ${tintIndex}.",

		population_multiplier_logs_title = "Befolkningsmultiplikator",
		population_multiplier_logs_details = "${consoleName} satte befokningsmultiplikatorn till ${populationMultiplier}.",

		fake_disconnect_logs_title = "Falsk Frånkoppling",
		fake_disconnect_on_logs_details = "${consoleName} aktiverade sin falska frånkoppling.",
		fake_disconnect_off_logs_details = "${consoleName} inaktiverade sin falska frånkoppling.",

		identity_logs_title = "Identitetsöverskridning",
		identity_on_logs_details = "${consoleName} ändrade sin identitet till `${playerName}`.",
		identity_off_logs_details = "${consoleName} återställde sin identitet.",

		clean_ped_logs_title = "Rengjord Ped",
		clean_ped_logs_details = "${consoleName} rensade ${targetName}s ped.",

		collisions_logs_title = "Kollisioner",
		collisions_off_logs_details = "${consoleName} stängde av kollisioner.",
		collisions_on_logs_details = "${consoleName} slog på kollisioner.",

		invalid_job_search = "Ogiltig sökning efter jobb (måste vara minst 3 tecken).",
		failed_job_search = "Kunde inte söka efter jobb.",
		job_search_no_results = "Inga jobb hittades.",
		job_search_results = "Sätt ${consoleName}s jobb till \"${jobName}, ${departmentName}, ${positionName}\" (Poäng: ${score}).",

		job_reset_success = "Jobbet har återställts framgångsrikt för ${consoleName}.",
		failed_job_reset = "Misslyckades med att återställa jobbet."
	},

	anti_cheat = {
		illegal_client_event = "Gå direkt till fängelse. Gå inte förbi Gå. Samla inte $200.",
		illegal_server_event = "Gå direkt till fängelse. Gå inte förbi Gå. Samla inte $200.",
		bad_entity_spawn = "Skapade en entity med modellnamn `${modelName}`.",
		bad_entity_title = "Dålig enhet skapad",
		bad_entity_message = "${consoleName} skapade enhet med modellnamn `${modelName}`.",
		detected_entity_title = "Upptäckt enhet skapad",
		detected_entity_message = "${consoleName} skapade enhet med modellnamn `${modelName}`.",
		added_model_to_list = "Lade till modell `${modelName}` (${modelHash}) i upptäcktslistan.",
		model_already_added_to_list = "Modell `${modelName}` (${modelHash}) finns redan i upptäcktslistan.",
		removed_model_to_list = "Tog bort modell `${modelName}` (${modelHash}) från upptäcktslistan.",
		model_not_in_list = "Modellen ${modelName} (${modelHash}) är inte tillagd i upptäckningslistan.",
		set_model_detected_not_staff = "Spelaren försökte lägga till en modell på upptäckningslistan, men hade inte rättigheter att göra det.",
		set_model_undetected_not_staff = "Spelaren försökte ta bort en modell från upptäckningslistan, men hade inte rättigheter att göra det.",
		add_detection_area_not_staff = "Spelaren försökte lägga till en upptäckningsområde, men hade inte rättigheter att göra det.",
		remove_detection_area_not_staff = "Spelaren försökte ta bort ett upptäckningsområde, men hade inte rättigheter att göra det.",
		detection_area_close = "[${InteractionKey}] Ta bort identifieringsområde (${areaId})",
		detection_area = "Identifieringsområde (${areaId})",

		ban_notification_title = "Anti-Cheat",
		ban_notification = "Bannlyst ${consoleName} för `${banReason}`.",

		bad_screen_word_ban = "Vi har hört talas om öppna bokprov, men detta är löjligt.",
		blacklisted_command_ban = "Tyvärr har du inte behörighet att utföra denna kommando. Kontakta serveradministratörerna om du tror att detta är ett fel.",
		damage_modifier_ban = "Din kraftnivå kan inte vara över 9000.",
		distance_taze_ban = "Din imponerande prestation från avstånd uppskattades inte.",
		fast_movement_ban = "Flygning är inte aktiverat på den här servern.",
		freecam_ban = "Du verkar ha haft en utomkroppslig upplevelse.",
		honeypot_ban = "Du försökte aktivera din kreativa läge men hade inte rättigheter att göra det.",
		hotwire_driving_ban = "Vroom Vroom, jag är i min mammas bil.",
		illegal_freeze_ban = "Du vet att varm mat är mycket bättre än fryst mat?",
		illegal_ped_change_ban = "Det är farligt att utföra plastisk kirurgi på sig själv.",
		illegal_spectating_ban = "Du måste vara en FIB-agent för att titta på andra spelare eller använda /gamemode spectator för att titta.",
		illegal_vehicle_modifier_ban = "Till skillnad från Dom Toretto från Fast and Furious, är vi inte familj.",
		invincibility_ban = "Du är inte den svarta riddaren, du kan inte vara odödlig.",
		ped_spawn_ban = "Du försökte utföra mitos, men det fanns inte tillräckligt med sol för fotosyntes.",
		player_blips_ban = "Luftrummet är fullt, UAV otillgängligt.",
		runtime_texture_ban = "Mod menyn du har, använda den du får inte.",
		spiked_resource_ban = "Att försöka ändra på scriptet utan tillåtelse är som att försöka ändra slutet på en historia bara för att du inte gillar det.",
		text_entry_ban = "Att inspektera element är inte tillåtet i den här webbläsaren.",
		thermal_night_vision_ban = "Brighter Nights är inte tillåtet.",
		vehicle_modification_ban = "Du kunde inte hitta strålkastarvätskan till din bil.",
		vehicle_spam_ban = "Counter terrorists win.",
		vehicle_spawn_ban = "Du försökte använda redstone på en gruvtunnelvagn men hade ingen strömskena.",
		weapon_spawn_ban = "Du försökte att använda FiveM:s 'Pay to Win'-väg där du faktiskt betalade för att bli bannad.",

		mp_f_freemode_01_label = "Fritt läge (kvinnlig)",
		mp_m_freemode_01_label = "Fritt läge (manlig)",
		player_one_label = "Franklin",
		player_two_label = "Trevor",
		player_zero_label = "Michael",

		notification_distance_taze = "Anti-Cheat: ${displayName} taserade någon över ett väldigt stort avstånd (${distance}m).",
		notification_bad_screen_word = "Anti-Cheat: ${displayName} har ${count} triggerord på sin skärm.",

		notification_freecam_detected = "Anti-Cheat: Freecam upptäckt",
		notification_illegal_vehicle_modifier = "Anti-Cheat: Fordonsmodifierare",
		notification_illegal_vehicle_spawn = "Anti-Cheat: Fordon Spawnaed",
		notification_fast_movement = "Anti-Cheat: Snabb rörelse",
		notification_illegal_freeze = "Anti-Cheat: Olagligt frysa",
		notification_invincibility = "Anti-Cheat: Oövervinnlighet",
		notification_vehicle_modification = "Anti-Cheat: Fordonsmodifiering",
		notification_damage_modifier = "Anti-Cheat: Skadomodifiering",
		notification_illegal_weapon = "Anti-Cheat: Olagligt vapen",
		notification_spawned_object = "Anti-Cheat: Objekt skapat",
		notification_driving_hotwire = "Anti-Cheat: Körning vid varningssignal",

		ig_orleans_label = "Sasquatch",
		u_m_m_jesus_01_label = "Jesus",
		u_m_y_babyd_label = "Bodybuilder",
		u_m_y_imporage_label = "Superhjälte",
		a_m_m_bevhills_02_label = "Vit kille",
		a_m_m_fatlatin_01_label = "Tjock kille",
		a_m_m_hasjew_01_label = "Judisk pedofil",
		a_m_m_beach_01_label = "Topless-ped (svart, man)",
		a_m_m_beach_02_label = "Topless-ped (vit, man)",
		a_m_m_afriamer_01_label = "Tjock svart kille",
		ig_jimmydisanto_label = "Jimmy",
		ig_jimmydisanto2_label = "Jimmy 2",
		a_m_y_musclbeac_01_label = "Halvnaken strandkille",
		csb_ramp_marine_label = "Marinkille",
		s_f_y_stripperlite_label = "Stripper-ped",
		mp_f_stripperlite_label = "Stripper-ped 2",
		mp_m_marston_01_label = "Saknar armar och ben",
		mp_m_niko_01_label = "Niko (GTA IV)",

		high_fov_warning = "Din synvinkel är ovanligt hög",
		high_fov_description = "Detta orsakas troligen av en FOV-modifier",
		high_fov_debug = "Aktuell: ${fov}",

		illegal_oxy_run = "Spelaren slutförde en syrerunda snabbare än mänskligt möjligt.",

		fast_movement_warning = "Du har flaggats för att röra dig för snabbt! Vänligen meddela en utvecklare och berätta vad du gjorde då detta hände eftersom du inte borde ta emot detta chattmeddelande.",
		invincibility_warning = "Du har flaggats för att vara oövervinnlig! Vänligen meddela en utvecklare och berätta vad du gjorde då detta hände eftersom du inte borde ta emot detta chattmeddelande.",
		damage_modifier_warning = "Du har flaggats för att ha en ogiltig skademodifierare! Vänligen meddela en utvecklare och berätta vad du gjorde då detta hände eftersom du inte borde ta emot detta chattmeddelande.",
		freeze_warning = "Du har blivit flaggad för att vara nedfryst när du inte ska vara det! Vänligen meddela en utvecklare och berätta vad du gjorde som orsakade detta, eftersom du inte borde få detta chattmeddelande.",

		distance_taze_screenshot = "Anti-Cheat: Taze på avstånd (${distance}m)",
		spectating_screenshot = "Anti-Cheat: Tittar på",
		fast_movement_screenshot = "Anti-Cheat: Snabb rörelse",
		illegal_freeze_screenshot = "Anti-Cheat: Olovlig nedfrysning",
		illegal_vehicle_modifier_screenshot = "Anti-Cheat: Fordonsmodifierare (${modifierName} = ${modifierValue})",
		damage_modifier_screenshot = "Anti-Cheat: ogiltig skademodifierare (${activeModifier}/${currentModifier})",
		illegal_weapon_screenshot = "Anti-Cheat: olagligt vapen (${weaponLabel})",
		illegal_vehicle_spawn_screenshot = "Anti-Cheat: olagligt fordon (${modelName})",
		vehicle_modification_screenshot = "Anti-Cheat: modifierat fordon (${types})",
		thermal_night_vision_screenshot = "Anti-Cheat: Termiskt/nattseende (${nativeName})",
		text_entry_screenshot = "Anti-Cheat: textinmatning (${textEntry})",
		player_blips_screenshot = "Anti-Cheat: spelarikoner",
		modified_fov_screenshot = "Anticheat: Modifierad FOV (${fov})",
		ped_change_screenshot = "Anticheat: Olagligt Pedbyte",
		invincibility_screenshot = "Anticheat: Odödlig",
		runtime_texture_screenshot = "Anticheat: Körningstextur (${textureDict}, ${textureName})",
		bad_screen_word_screenshot = "Anticheat: Dåligt skärmsord (${words})",
		freecam_detected_screenshot = "Anticheat: Freecam upptäckt (${distance}m)",
		driving_hotwire_screenshot = "Anticheat: Körning med startkablar"
	},

	authentication = {
		ip_not_found = "Vi kunde inte hämta din IP-adress.",
		authenticating_local_server = "Autentiserar med lokal server ...",
		authenticating_global_server = "Autentiserar med OP-FW-servrar ...",
		error_fetching_data = "Ett fel inträffade vid hämtning av dina data.",
		region_blocked = "Denna server har blockerat regionen du ansluter från.",
		server_config_not_loaded = "Serverkonfigurationen har inte laddats.",
		something_went_horribly_wrong = "Något gick fruktansvärt fel. Försök igen.",
		local_firewall_enabled = "Det lokala brandväggen är aktiverad.",

		local_firewall_on = "Aktiverat det lokala brandväggen med blockmeddelandet `${blockMessage}`.",
		local_firewall_re_enabled = "Återaktiverade den lokala brandväggen med blockmeddelandet `${blockMessage}`.",
		local_firewall_off = "Inaktiverade den lokala brandväggen.",
		local_firewall_blocked = "Lokal brandvägg: Blockerade ${playerName} (${licenseIdentifier})",

		developer = "utvecklare",
		super_admin = "superadmin",
		staff = "personal",
		reconnect = "återanslut",
		random = "slumpvis",
		beginner = "nybörjare",
		custom = "anpassad",
		christmas = "jul",
		casino = "kasino",

		job_low = "lågbetald anställning",
		job_medium = "medelbetald anställning",
		job_high = "högbetald anställning",

		banned_globally = "Du har blivit bannad globalt från alla OP-FW-servrar.\n\nBanhaskod: ${banHash}\nBanns orsak: ${banReason}\n\nOm du tror att det här är en felaktig bannlysning, gå med i OP-FW:s discordserver för information om hur du kan överklaga på ${frameworkDiscord}",
		banned_locally = "Du har blivit bannad från ${communityName}.\n\nBanhaskod: ${banHash}\nBannad av: ${creatorName}\nBanns orsak: ${banReason}\nTid-stämpel: ${timestamp}\n\n${indefiniteOrExpires}\n\nGå med i vår discord-server för information om hur du kan överklaga på ${communityDiscord}.",
		banned_locally_no_creator = "Du har blivit bannad från ${communityName}.\n\nBan Hash: ${banHash}\nBanorsak: ${banReason}\nTidsstämpel: ${timestamp}\n\n${indefiniteOrExpires}\n\nGå med i vår discord-kanal för information om hur du kan överklaga ditt straff på ${communityDiscord}.",
		ban_indefinite = "Denna ban är tills vidare.",
		ban_expires = "Denna ban upphör om ${timeLeft}.",
		not_whitelisted = "Du har inte blivit whitelistad på denna server. För information om hur du ansöker, vänligen gå med i vår discord-kanal.\n\n${communityDiscord}",
		api_error = "Ett fel inträffade vid hämtning av dina data. (felkod ${errorCode})",
		pepega_moderate = "Du har blivit globalt bannad från alla OP-FW-servrar utan några specificerade skäl.",
		pepega_ultimate = "Du har blivit bannad från denna server.",
		ban_code_not_found = "Du har blivit globalt bannad från alla OP-FW-servrar. Vi kunde inte hitta någon data för din ban-kod.",
		fraud_chargeback = "Bedrägeri / Chargeback",
		threatening_ddos = "Hotar att attackera vår infrastruktur.",
		unknown = "Okänd",
		api_offline = "Vår back-end service är för närvarande otillgänglig och kan därför inte hämta dina data. Försök igen snart.",
		protective_mode_on = "Server Protective Mode är för närvarande aktiverat på denna server vilket innebär att endast spelare med en viss mängd speltid kan ansluta till servern. Detta är endast tillfälligt och servern bör återgå till normalt snart.\n\nGå med i vår discord för mer information om detta på ${communityDiscord}.",
		server_restarting = "Servern startar om för tillfället. Försök igen om några minuter.",
		connection_cancelled = "Denna anslutning avbröts eftersom en annan redan är aktiv.",
		no_reason_provided = "Ingen anledning angiven.",
		discord_whitelist_id_not_found = "Vi kunde inte hitta din Discord-ID. Se till att du har Discord öppet i bakgrunden och att du har tillåtit FiveM att hämta data från din Discord-klient.\n\n${communityDiscord}"
	},

	chat = {
		default = "Standard",

		chat_group_information = "Du har lagts till i en chattgrupp. Tryck på **TAB** för att växla mellan dina tillgängliga chattgrupper.\n\nMeddelanden som skickas utan '/' som prefix kommer att sändas till andra medlemmar i denna grupp."
	},

	commands = {
		command_unavailable = "Detta kommando är inte tillgängligt!",

		command_list = "${commands}",
		substitute_list = "${substitutes}",

		substitute_command_for = "Detta är ett ersättningskommando för `${command}`.",

		-- the "substitutes" is basically just a shortcut command, so if you do /lang, it'll execute /language.
		-- you can put as many substitutes as you'd like by doing "/lang, /lang2, /lang3", all these 3 commands will be valid substitutes
		-- the main difference between the _command and _command_substitutes is substitutes will not show as suggestions in the chat
		-- if no substitutes are wanted, simply leave an empty string with ""

		-- animations/carry
		carry_command = "bära",
		carry_command_help = "Växla bärning.",
		carry_command_substitutes = "",

		uncarry_command = "avbära",
		uncarry_command_help = "Tvinga spelaren som bär dig att sluta bära dig.",
		uncarry_command_substitutes = "",

		piggyback_command = "ryggdunk",
		piggyback_command_help = "Ryggdunka en annan spelare.",
		piggyback_command_substitutes = "",

		pick_cuffs_command = "plocka-handfängsel",
		pick_cuffs_command_help = "Bryt ut ur handfängsel med en låspick.",
		pick_cuffs_command_substitutes = "",

		struggle_command = "slåss",
		struggle_command_help = "Försök att kämpa dig ur någons grepp.",
		struggle_command_substitutes = "",

		handsup_command = "händerupp",
		handsup_command_help = "Lyft (eller sänk) upp händerna som ett tecken på att ge upp.",
		handsup_command_substitutes = "händer, geupp, hu",

		-- animations/chairs
		sit_command = "sitt",
		sit_command_help = "Försök att sätta dig på en närliggande stol.",
		sit_command_parameter_variation = "variation",
		sit_command_parameter_variation_help = "Vilken sittande animationsvariation som ska spelas (1-6).",
		sit_command_substitutes = "stol",

		-- animations/emotes
		ragdoll_command = "ragdoll",
		ragdoll_command_help = "Aktiverar/Avaktiverar slumpmässigt fallande karaktär.",
		ragdoll_command_substitutes = "",

		-- base/admin
		report_command = "rapportera",
		report_command_help = "Skicka ett meddelande till alla aktiva personalmedlemmar.",
		report_command_parameter_message = "meddelande",
		report_command_parameter_message_help = "Meddelandet du vill skicka.",
		report_command_substitutes = "",

		announce_command = "annonsera",
		announce_command_help = "Sänd en röstmeddelande till alla spelare.",
		announce_command_parameter_message = "meddelande",
		announce_command_parameter_message_help = "Meddelandet du vill sända.",
		announce_command_substitutes = "",

		staff_pm_command = "personal_pm",
		staff_pm_command_help = "Skicka ett meddelande till antingen en personalmedlem eller till en spelare som en personalmedlem.",
		staff_pm_command_parameter_server_id = "server-id",
		staff_pm_command_parameter_server_id_help = "Spelarens server-id som du försöker skicka meddelande till.",
		staff_pm_command_parameter_message = "meddelande",
		staff_pm_command_parameter_message_help = "Meddelandet du vill skicka.",
		staff_pm_command_substitutes = "staffpm",

		staff_command = "personal",
		staff_command_help = "Sänd ett meddelande till alla aktiva personalmedlemmar.",
		staff_command_parameter_message = "meddelande",
		staff_command_parameter_message_help = "Meddelandet du vill skicka.",
		staff_command_substitutes = "",

		wipe_command = "radera",
		wipe_command_help = "Radera oönskade objekt från kartan.",
		wipe_command_parameter_distance = "avstånd",
		wipe_command_parameter_distance_help = "Om du bara vill radera objekt inom ett visst avstånd, ange ett avstånd här. Lämna det på `false` eller `0` för hela kartan.",
		wipe_command_parameter_ignore_local_entities = "ignorera lokala objekt",
		wipe_command_parameter_ignore_local_entities_help = "Ignorera icke-nätverksanslutna objekt? Om du städar upp från en fuskare rekommenderas det att du sätter detta på `true` eller `1`.",
		wipe_command_parameter_model_name = "modell namn",
		wipe_command_parameter_model_name_help = "Om du bara vill ta bort objekt av ett visst modellnamn, ange modellnamnet här. Annars lämna tomt, sätt till `false` eller `0`. Du kan också ställa in detta till `fordon` eller `peds`.",
		wipe_command_substitutes = "",

		noclip_command = "noclip",
		noclip_command_help = "Växla noclip.",
		noclip_command_parameter_server_id = "server-id",
		noclip_command_parameter_server_id_help = "Om du vill växla noclip för någon annan, ange deras server-id här.",
		noclip_command_substitutes = "",

		safe_noclip_command = "sakert_noclip",
		safe_noclip_command_help = "Växlar noclip-läge men endast om det inte finns någon i närheten som kan se dig göra det (personal med \"staff\" undantaget).",
		safe_noclip_command_substitutes = "snoclip",

		delete_vehicle_command = "radera_fordon",
		delete_vehicle_command_help = "Radera ett fordon i närheten.",
		delete_vehicle_command_parameter_ignore_heading = "ja",
		delete_vehicle_command_parameter_ignore_heading_help = "Vill du ignorera spelarens riktning? Om du lämnar detta tomt kommer det att fungera som ett `nej`.",
		delete_vehicle_command_substitutes = "rmb",

		delete_vehicle_interactively_command = "radera_fordon_interaktivt",
		delete_vehicle_interactively_command_help = "Toggla interaktiv radering av fordon.",
		delete_vehicle_interactively_command_substitutes = "rfi",

		kick_command = "sparka",
		kick_command_help = "Sparka en spelare från servern.",
		kick_command_parameter_server_id = "server id",
		kick_command_parameter_server_id_help = "Server ID:t för den spelare du vill sparka.",
		kick_command_parameter_reason = "anledning",
		kick_command_parameter_reason_help = "Anledningen till att spelaren blev sparkad. Detta kan lämnas tomt.",
		kick_command_substitutes = "",

		ban_command = "ban",
		ban_command_help = "Banna en spelare från servern.",
		ban_command_parameter_server_id = "server id",
		ban_command_parameter_server_id_help = "Spelarens server ID som du försöker att banna.",
		ban_command_parameter_expire = "utgå",
		ban_command_parameter_expire_help = "Längden på spelarens ban. Detta kan lämnas tomt, sätt som `0` eller `false` för en obegränsad ban. Du kan använda d/v/t för längden. (t.ex. `3d2t` -> 3 dagar, 2 timmar)",
		ban_command_parameter_reason = "anledning",
		ban_command_parameter_reason_help = "Anledningen bakom spelarens bannlysning. Detta kan lämnas tomt.",
		ban_command_substitutes = "",

		staff_hidden_command = "personal_dold",
		staff_hidden_command_help = "Växla om andra spelare kan se din personalkategori eller inte.",
		staff_hidden_command_substitutes = "",

		staff_toggle_command = "personal_tillgänglighet",
		staff_toggle_command_help = "Växla din personal tillgänglighet. Om du växlar det av kommer rapporter, personal meddelanden och personalmeddelanden att inte visas.",
		staff_toggle_command_substitutes = "",

		protective_mode_command = "skyddsläge",
		protective_mode_command_help = "Växla serverns skyddsläge. Detta kommer att avbryta nya anslutningar från spelare med mindre än det angivna antalet nödvändig speltid. Denna kontroll är exkluderad för personal och server supporters.",
		protective_mode_command_parameter_enabled = "aktiverad",
		protective_mode_command_parameter_enabled_help = "Ska kontrollen vara aktiverad? Giltiga alternativ är: `true`, `false`, `1` och `0`.",
		protective_mode_command_parameter_playtime = "speltid",
		protective_mode_command_parameter_playtime_help = "Den nödvändiga speltiden (sekunder) för att acceptera en ny anslutning.",
		protective_mode_command_substitutes = "",

		spawn_vehicle_command = "spawnfordon",
		spawn_vehicle_command_help = "Spawna ett fordon.",
		spawn_vehicle_command_parameter_model_name = "modell namn",
		spawn_vehicle_command_parameter_model_name_help = "Modellnamnet på fordonet du vill spawna.",
		spawn_vehicle_command_parameter_server_id = "server id",
		spawn_vehicle_command_parameter_server_id_help = "Server-id:n för spelaren som du vill spawna fordonet för. Du kan lämna det blankt eller använda `0` för att välja dig själv.",
		spawn_vehicle_command_substitutes = "sv",

		create_vehicle_command = "skapa_fordon",
		create_vehicle_command_help = "Spawna ett fordon på marken på din nuvarande plats utan att teleportera dig inuti det.",
		create_vehicle_command_parameter_model_name = "modellnamn",
		create_vehicle_command_parameter_model_name_help = "Modellnamnet på fordonet du vill spawn.",
		create_vehicle_command_parameter_ground = "mark",
		create_vehicle_command_parameter_ground_help = "Ska fordonet spawnas på marken?",
		create_vehicle_command_substitutes = "cv",

		replace_vehicle_command = "ersätt_fordon",
		replace_vehicle_command_help = "Ersätt ditt nuvarande fordon med ett annat.",
		replace_vehicle_command_parameter_model_name = "modellnamn",
		replace_vehicle_command_parameter_model_name_help = "Modellnamnet på fordonet du vill spawn.",
		replace_vehicle_command_substitutes = "rv",

		aimbot_command = "aimbot",
		aimbot_command_help = "Aktivera/daktivitetera 'aimbot'.",
		aimbot_command_parameter_server_id = "server id",
		aimbot_command_parameter_server_id_help = "Om du vill aktivera/deaktivera 'aimbot' för någon annan, skriv in deras server id här.",
		aimbot_command_parameter_targets = "mål",
		aimbot_command_parameter_targets_help = "Målsätt server id (fungerar endast när du ändrar för dig själv). (Kommer filtrera mål endast till spelare med dessa server id)",
		aimbot_command_substitutes = "",

		player_bones_debug_command = "spelarben-debug",
		player_bones_debug_command_help = "Aktivera/deaktivera spelarben-debuggaren.",
		player_bones_debug_command_parameter_server_id = "server-id",
		player_bones_debug_command_parameter_server_id_help = "Om du vill aktivera/deaktivera spelarben-debuggaren för någon annan, fyll i deras server-id här.",
		player_bones_debug_command_substitutes = "spelarben",

		wallhack_command = "vägggenomskådning",
		wallhack_command_help = "Aktivera/deaktivera 'vägggenomskådning'.",
		wallhack_command_parameter_server_id = "server-id",
		wallhack_command_parameter_server_id_help = "Om du vill aktivera 'wallhack' för någon annan, ange deras server-ID här.",
		wallhack_command_substitutes = "",

		speed_boost_command = "hastighets_boost",
		speed_boost_command_help = "Aktivera/daktivera 'hastighets boost'.",
		speed_boost_command_parameter_server_id = "server-ID",
		speed_boost_command_parameter_server_id_help = "Om du vill aktivera/daktivera 'hastighets boost' för någon annan, ange deras server-ID här.",
		speed_boost_command_substitutes = "",

		nitro_boost_command = "nitro_boost",
		nitro_boost_command_help = "Aktivera/daktivera 'nitro boost'.",
		nitro_boost_command_parameter_server_id = "server id",
		nitro_boost_command_parameter_server_id_help = "Om du vill aktivera 'nitro boost' för någon annan, skriv deras server id här.",
		nitro_boost_command_substitutes = "nitro",

		indestructibility_command = "orörlighet",
		indestructibility_command_help = "Aktiverar eller avaktiverar 'orörlighet'.",
		indestructibility_command_parameter_server_id = "server id",
		indestructibility_command_parameter_server_id_help = "Om du vill aktivera eller avaktivera 'orörlighet' för någon annan, skriv deras server id här.",
		indestructibility_command_substitutes = "ind, god, god_mode, godmode",

		no_nearby_vehicles_command = "ingen_närliggande_fordon",
		no_nearby_vehicles_command_help = "Aktiverar eller inaktiverar 'ingen närliggande fordon'.",
		no_nearby_vehicles_command_parameter_server_id = "server id",
		no_nearby_vehicles_command_parameter_server_id_help = "Om du vill aktivera eller inaktivera 'ingen närliggande fordon' för någon annan, skriv in deras server id här.",
		no_nearby_vehicles_command_substitutes = "",

		disable_collisions_command = "avaktivera_kollisioner",
		disable_collisions_command_help = "Avaktivera kollisioner med fordon och människor i en 10 meter radie.",
		disable_collisions_command_substitutes = "kollisioner",

		ghost_command = "spöke",
		ghost_command_help = "Denna kommando gör att du kan använda /titta, bli osynlig och /kollisioner.",
		ghost_command_substitutes = "",

		job_command = "jobb",
		job_command_help = "Uppdaterar någons jobb baserat på sökning.",
		job_command_parameter_server_id = "server id",
		job_command_parameter_server_id_help = "Spelarens server-id eller 0 för att välja dig själv.",
		job_command_parameter_search = "sök",
		job_command_parameter_search_help = "Jobb/avdelning/position namn eller del av namnet för att söka eller `none` för att ta bort jobbet.",
		job_command_substitutes = "",

		reset_job_command = "reset_job",
		reset_job_command_help = "Återställer någons yrke till arbetslös.",
		reset_job_command_parameter_server_id = "server id",
		reset_job_command_parameter_server_id_help = "Spelarens server-id eller 0 för att välja dig själv.",
		reset_job_command_substitutes = "",

		watching_command = "watching",
		watching_command_help = "Visar dig alla spelare som tittar på i närheten.",
		watching_command_substitutes = "",

		disable_recoil_command = "disable_recoil",
		disable_recoil_command_help = "Inaktiverar all vapenrekylen.",
		disable_recoil_command_substitutes = "",

		infinite_ammo_command = "infinite_ammo",
		infinite_ammo_command_help = "Växlar mellan oändlig amunition.",
		infinite_ammo_command_substitutes = "",

		track_player_command = "spåra_spelare",
		track_player_command_help = "Slår på spårning för en viss spelare.",
		track_player_command_parameter_server_id = "server id",
		track_player_command_parameter_server_id_help = "Spelarens server-ID du vill spåra. Lämna tomt för att stänga av.",
		track_player_command_substitutes = "",

		reflect_damage_command = "reflektera_skada",
		reflect_damage_command_help = "Växlar skadereflektion. (Alla spelare som skadar dig kommer att skadas själva)",
		reflect_damage_command_substitutes = "reflektera",

		trigger_headache_command = "utlösa_huvudvärk",
		trigger_headache_command_help = "Får den angivna spelaren att laga under en kort tid.",
		trigger_headache_command_parameter_server_id = "server id",
		trigger_headache_command_parameter_server_id_help = "Server-ID för spelaren som du vill utlösa huvudvärk för.",
		trigger_headache_command_substitutes = "huvudvärk",

		stick_command = "fastna",
		stick_command_help = "Fäst på bilen du är ovanpå.",
		stick_command_substitutes = "",

		unstick_command = "lossa",
		unstick_command_help = "Lossa från bilen du är fäst vid.",
		unstick_command_substitutes = "",

		clean_ped_command = "rena_ped",
		clean_ped_command_help = "Rengör en karaktärs blod, kula träffar, smuts mm.",
		clean_ped_command_parameter_server_id = "server id",
		clean_ped_command_parameter_server_id_help = "Server-ID för spelaren vars ped du vill rensa.",
		clean_ped_command_substitutes = "",

		toggle_vehicle_smoke_command = "toggle_vehicle_smoke",
		toggle_vehicle_smoke_command_help = "Växla 'fordonsrök'.",
		toggle_vehicle_smoke_command_parameter_server_id = "server id",
		toggle_vehicle_smoke_command_parameter_server_id_help = "Om du vill växla 'fordonsrök' för någon annan, ange deras server ID här.",
		toggle_vehicle_smoke_command_parameter_color_r = "röd färg",
		toggle_vehicle_smoke_command_parameter_color_r_help = "Det röda värdet på rökens färg (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_g = "grön färg",
		toggle_vehicle_smoke_command_parameter_color_g_help = "Det gröna värdet på rökens färg (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_b = "blå färg",
		toggle_vehicle_smoke_command_parameter_color_b_help = "Det blåa värdet på rökens färg (0 - 255).",
		toggle_vehicle_smoke_command_substitutes = "fordon_rök, rök",

		speed_up_progress_bar_command = "hastighetsfaktor_fortsättningsfält",
		speed_up_progress_bar_command_help = "Aktiverar alternativet 'hastighetsfaktor_fortsättningsfält'.",
		speed_up_progress_bar_command_parameter_server_id = "server-id",
		speed_up_progress_bar_command_parameter_server_id_help = "Om du vill aktivera alternativet 'hastighetsfaktor_fortsättningsfält' för någon annan, ange deras server-id här.",
		speed_up_progress_bar_command_substitutes = "hastighetsfaktor",

		invisibility_command = "osynlighet",
		invisibility_command_help = "Aktiverar alternativet 'osynlighet'.",
		invisibility_command_parameter_server_id = "servers ID",
		invisibility_command_parameter_server_id_help = "Om du vill aktivera/daktivera 'osynlighet' för någon annan, ange deras servers ID här.",
		invisibility_command_substitutes = "inv, osynlig, osynlighet",

		add_cash_command = "lägg_till_pengar",
		add_cash_command_help = "Lägg till pengar till en annan spelares karaktär.",
		add_cash_command_parameter_amount = "belopp",
		add_cash_command_parameter_amount_help = "Mängden pengar du vill ge till spelaren.",
		add_cash_command_parameter_server_id = "servers ID",
		add_cash_command_parameter_server_id_help = "Spelarens server ID. Om det lämnas tomt väljs du automatiskt.",
		add_cash_command_substitutes = "",

		remove_cash_command = "ta_bort_kontanter",
		remove_cash_command_help = "Ta bort kontanter från en spelares karaktär.",
		remove_cash_command_parameter_amount = "belopp",
		remove_cash_command_parameter_amount_help = "Beloppet av kontanter du vill ta bort från spelaren.",
		remove_cash_command_parameter_server_id = "server id",
		remove_cash_command_parameter_server_id_help = "Spelarens server ID. Om det lämnas tomt väljs du automatiskt.",
		remove_cash_command_substitutes = "",

		add_bank_command = "lägg_till_bank",
		add_bank_command_help = "Lägg till bankbalans till en spelares karaktär.",
		add_bank_command_parameter_amount = "belopp",
		add_bank_command_parameter_amount_help = "Beloppet av bankbalans som du vill ge till spelaren.",
		add_bank_command_parameter_server_id = "server id",
		add_bank_command_parameter_server_id_help = "Spelarens server-ID. Om det lämnas tomt, väljs du automatiskt.",
		add_bank_command_substitutes = "",

		remove_bank_command = "ta_bort_bank",
		remove_bank_command_help = "Ta bort bankbalans från en spelares karaktär.",
		remove_bank_command_parameter_amount = "belopp",
		remove_bank_command_parameter_amount_help = "Det belopp av bank-balance, du vill ta bort från spelaren.",
		remove_bank_command_parameter_server_id = "server ID",
		remove_bank_command_parameter_server_id_help = "Spelarens server ID. Om det lämnas tomt, väljs du automatiskt.",
		remove_bank_command_substitutes = "",

		spawn_item_command = "spawn_item",
		spawn_item_command_help = "Används för att spawn objekt.",
		spawn_item_command_parameter_item_name = "objektnamn",
		spawn_item_command_parameter_item_name_help = "Namnet på objektet du vill spawna. Det måste vara *objektnamnet*, och därmed fungerar inte dess etikett(er).",
		spawn_item_command_parameter_amount = "mängd",
		spawn_item_command_parameter_amount_help = "Antal av objektet du vill skapa. Om det lämnas tomt, väljs en enhet.",
		spawn_item_command_parameter_server_id = "server id",
		spawn_item_command_parameter_server_id_help = "Server-ID för spelaren du vill skapa objektet för. Om det lämnas tomt väljs du själv.",
		spawn_item_command_parameter_battle_royale_only = "endast Battle Royale",
		spawn_item_command_parameter_battle_royale_only_help = "Gör detta objekt endast tillgängligt i Battle Royale.",
		spawn_item_command_substitutes = "si",

		warning_message_command = "varningsmeddelande",
		warning_message_command_help = "Lägg till globala servermeddelanden för alla spelare.",
		warning_message_command_parameter_message = "meddelande",
		warning_message_command_parameter_message_help = "Meddelandet du vill visa för spelarna. Du kan lämna denna parameter tom för att ta bort varningsmeddelandet.",
		warning_message_command_substitutes = "",

		tp_coords_command = "tp_koordinater",
		tp_coords_command_help = "Teleportera till vissa koordinater.",
		tp_coords_command_parameter_x = "x",
		tp_coords_command_parameter_x_help = "Den X-koordinat du vill teleportera till.",
		tp_coords_command_parameter_y = "y",
		tp_coords_command_parameter_y_help = "Den Y-koordinat du vill teleportera till.",
		tp_coords_command_parameter_z = "z",
		tp_coords_command_parameter_z_help = "Den Z-koordinat du vill teleportera till. Detta parameter är valfritt, lämnas tomt så söks automatiskt efter markkoordinaterna.",
		tp_coords_command_substitutes = "tpc",

		tp_waypoint_command = "tp_waypoint",
		tp_waypoint_command_help = "Teleportera till din sparade markör.",
		tp_waypoint_command_substitutes = "tp_marker, tp",

		isolate_player_command = "isolate_player",
		isolate_player_command_help = "Isolerar en spelare och avvisar allt de försöker göra.",
		isolate_player_command_parameter_server_id = "server id",
		isolate_player_command_parameter_server_id_help = "Målet som spelaren är isolerad mot.",
		isolate_player_command_substitutes = "isolerad",

		show_all_evidence_command = "show_all_evidence",
		show_all_evidence_command_help = "Visar alla närliggande bevis för patronhöljen.",
		show_all_evidence_command_substitutes = "all_evidence, show_evidence, evidence",

		population_density_command = "befolkningstäthet",
		population_density_command_help = "Byt ut det globala bostäderstäthetsmultiplikatorn.",
		population_density_command_parameter_multiplier = "multiplikator",
		population_density_command_parameter_multiplier_help = "Den bostadsdensitetsmultiplikator du vill ställa in. Om du lämnar detta tomt stängs det av. Giltiga värden är från 0,0 till 1,0.",
		population_density_command_substitutes = "befolkning, densitet, pop",

		repair_vehicle_command = "reparera_fordon",
		repair_vehicle_command_help = "Reparera fordonet du befinner dig i.",
		repair_vehicle_command_substitutes = "fixa",

		enter_vehicle_command = "gå_om_bord_i_fordon",
		enter_vehicle_command_help = "Tvinga din spelarkaraktär att kliva in i det fordon du är närmast till (tvingar dig att kliva ut från ditt nuvarande fordon om du sitter i ett).",
		enter_vehicle_command_parameter_network_id = "nätverks-ID",
		enter_vehicle_command_parameter_network_id_help = "Nätverks-ID för fordonet du vill gå in i. (valfritt)",
		enter_vehicle_command_substitutes = "gv",

		set_modification_command = "sätt_modifikation",
		set_modification_command_help = "Sätt fordonsmodifieringar på det fordon du sitter i.",
		set_modification_command_parameter_mod_type = "modifikationstype",
		set_modification_command_parameter_mod_type_help = "ID för den modifikationstyp du vill sätta.",
		set_modification_command_parameter_mod_index = "modifieringsindex",
		set_modification_command_parameter_mod_index_help = "ID:n på den modifiering du vill sätta.",
		set_modification_command_parameter_custom_tires = "anpassade däck",
		set_modification_command_parameter_custom_tires_help = "Anpassade däck?",
		set_modification_command_substitutes = "sm",

		set_livery_command = "sätt_livery",
		set_livery_command_help = "Sätt liveryn på fordonet du befinner dig i.",
		set_livery_command_parameter_livery_index = "livery index",
		set_livery_command_parameter_livery_index_help = "Indexet på den livery du vill sätta.",
		set_livery_command_substitutes = "",

		set_fake_plate_command = "sätt_falskt_reg",
		set_fake_plate_command_help = "Sätter det falska registreringsnumret på fordonet du befinner dig i.",
		set_fake_plate_command_parameter_plate_number = "registreringsnummer",
		set_fake_plate_command_parameter_plate_number_help = "Det registreringsnummer du önskar att sätta.",
		set_fake_plate_command_substitutes = "reg",

		set_dirt_level_command = "sätt_smuts_nivå",
		set_dirt_level_command_help = "Rengör fordonet du befinner dig i.",
		set_dirt_level_command_parameter_dirt_level = "smuts nivå",
		set_dirt_level_command_parameter_dirt_level_help = "Det nivå av smuts du vill sätta (mellan 0 och 15).",
		set_dirt_level_command_substitutes = "smd",

		player_info_command = "spelarinfo",
		player_info_command_help = "Returnerar information om en viss spelare.",
		player_info_command_parameter_server_id = "server ID",
		player_info_command_parameter_server_id_help = "Spelarens server-ID du vill ha information om. Om detta lämnas blankt väljs du själv.",
		player_info_command_substitutes = "spelare, si",

		inventory_command = "inventory",
		inventory_command_help = "Öppna en specificerad inventering.",
		inventory_command_parameter_inventory_name = "inventeringsnamn",
		inventory_command_parameter_inventory_name_help = "Namnet på lagret du vill öppna.",
		inventory_command_substitutes = "",

		character_inventory_command = "karaktärslager",
		character_inventory_command_help = "visar dig en annan spelares lager.",
		character_inventory_command_parameter_server_id = "server-id",
		character_inventory_command_parameter_server_id_help = "Server-id:n för den spelaren.",
		character_inventory_command_substitutes = "fickor",

		fake_disconnect_command = "falskt_avslut",
		fake_disconnect_command_help = "Utlöser en serie händelser för att få det att verka som om du kopplade från servern. Detta kommer också att aktivera din noclip om den inte redan är på.",
		fake_disconnect_command_substitutes = "fejka_lämna, dc",

		set_identity_command = "sätt_identitet",
		set_identity_command_help = "Åsidosätter ditt spelarnamn.",
		set_identity_command_parameter_player_name = "spelarnamn",
		set_identity_command_parameter_player_name_help = "Det namn du vill ha eller lämna tom för att återställa.",
		set_identity_command_substitutes = "identitet",

		disable_idle_cam_command = "inaktivera_idle_kamera",
		disable_idle_cam_command_help = "Inaktiverar den lediga kameran från att aktiveras.",
		disable_idle_cam_command_substitutes = "inaktivera_idle, idle",

		auto_drive_command = "auto_kör",
		auto_drive_command_help = "Kör automatiskt till det angivna vägledningspunkten eller kör slumpmässigt runt om ingen är inställd.",
		auto_drive_command_parameter_style = "stil",
		auto_drive_command_parameter_style_help = "Körstil (normal, skyndsam, hänsynslös, bakåt).",
		auto_drive_command_substitutes = "",

		drive_speed_command = "körhastighet",
		drive_speed_command_help = "Ställ in krysshastigheten för auto-kör-kommandot.",
		drive_speed_command_parameter_speed = "hastighet",
		drive_speed_command_parameter_speed_help = "Den hastighet du vill ställa in (i mph).",
		drive_speed_command_substitutes = "",

		toggle_weapon_attachment_command = "byt_vapen_tillbehör",
		toggle_weapon_attachment_command_help = "Växlar ett vapentillbehör för vapnet du för närvarande håller.",
		toggle_weapon_attachment_command_parameter_attachment = "tillbehör",
		toggle_weapon_attachment_command_parameter_attachment_help = "Tillbehöret du vill växla.",
		toggle_weapon_attachment_command_substitutes = "vapen_tillbehör, tillbehör",

		set_weapon_tint_command = "sätt_vapen_färg",
		set_weapon_tint_command_help = "Sätter eller tar bort färgen på vapnet du för närvarande håller.",
		set_weapon_tint_command_parameter_tint = "nyans",
		set_weapon_tint_command_parameter_tint_help = "Den nyans du vill använda (lämna tom för att ta bort).",
		set_weapon_tint_command_substitutes = "vapen_nyans, nyans",

		set_item_name_override_command = "sätt_överstyr_namn_på_föremål",
		set_item_name_override_command_help = "Sätter eller tar bort namn-override för det angivna föremålet.",
		set_item_name_override_command_parameter_slot = "plats",
		set_item_name_override_command_parameter_slot_help = "Numret på platsen för föremålet vars namn du vill ändra.",
		set_item_name_override_command_parameter_item_name = "föremålsnamn",
		set_item_name_override_command_parameter_item_name_help = "Föremålsnamn för översättning (lämna tomt för att ta bort översättningen).",
		set_item_name_override_command_substitutes = "set_name_override, name_override",

		set_durability_command = "set_durability",
		set_durability_command_help = "Sätter hållbarheten på alla föremål i en viss slot.",
		set_durability_command_parameter_slot = "slot",
		set_durability_command_parameter_slot_help = "Vilken slot som hållbarheten ska sättas för.",
		set_durability_command_parameter_amount = "antal",
		set_durability_command_parameter_amount_help = "Den hållbarhetsmängd att sätta (standard är 100).",
		set_durability_command_substitutes = "hållbarhet",

		set_metadata_command = "sätt_metadata",
		set_metadata_command_help = "Sätter alla föremåls metadata på en viss plats.",
		set_metadata_command_parameter_slot = "plats",
		set_metadata_command_parameter_slot_help = "Vilken plats att sätta föremåls hållbarhet i.",
		set_metadata_command_parameter_metadata = "metadata",
		set_metadata_command_parameter_metadata_help = "Metadata JSON för att sätta.",
		set_metadata_command_substitutes = "metadata",

		refill_nitro_command = "påfyll_nitro",
		refill_nitro_command_help = "Fyller på din bils nitrotank.",
		refill_nitro_command_substitutes = "",

		register_weapon_command = "registrera_vapen",
		register_weapon_command_help = "Registrerar ett vapen i en specifik slot för en specifik karaktärs-ID.",
		register_weapon_command_parameter_slot = "slot",
		register_weapon_command_parameter_slot_help = "Platsen där vapnet befinner sig.",
		register_weapon_command_parameter_character_id = "karaktärs-ID",
		register_weapon_command_parameter_character_id_help = "Karaktärs-ID för den karaktär du vill registrera vapnet till.",
		register_weapon_command_substitutes = "",

		advanced_metagame_command = "avancerad_metagaming",
		advanced_metagame_command_help = "Superadmin-kommando som hjälper dig att ta din metagaming till nästa nivå.",
		advanced_metagame_command_substitutes = "am",

		list_weapon_attachments_command = "lista_weapon_attachments",
		list_weapon_attachments_command_help = "Ställer in eller tar bort färgtonen på vapnet du håller just nu.",
		list_weapon_attachments_command_substitutes = "weapon_attachments, attachments",

		wipe_first_owned_command = "torka_första_ägda",
		wipe_first_owned_command_help = "Raderar alla enheter som först ägdes av en viss spelare.",
		wipe_first_owned_command_parameter_server_id = "server-id",
		wipe_first_owned_command_parameter_server_id_help = "Spelarens server-id.",
		wipe_first_owned_command_parameter_range = "område",
		wipe_first_owned_command_parameter_range_help = "Området du vill radera objekt i eller lämna tomt för att radera allt.",
		wipe_first_owned_command_substitutes = "",

		freeze_command = "frys",
		freeze_command_help = "Fryser en spelare.",
		freeze_command_parameter_server_id = "server-id",
		freeze_command_parameter_server_id_help = "Server-id:n för spelaren du vill frysa.",
		freeze_command_substitutes = "",

		unfreeze_command = "upptina",
		unfreeze_command_help = "Upptinar en spelare.",
		unfreeze_command_parameter_server_id = "server id",
		unfreeze_command_parameter_server_id_help = "Server id:n på spelaren du vill upptina.",
		unfreeze_command_substitutes = "",

		slap_command = "klappa",
		slap_command_help = "Klappar en spelare (dödar dem).",
		slap_command_parameter_server_id = "server id",
		slap_command_parameter_server_id_help = "Server id:n på spelaren du vill klappa.",
		slap_command_substitutes = "",

		damage_player_command = "skada_spelare",
		damage_player_command_help = "Skada en spelares hälsa.",
		damage_player_command_parameter_server_id = "server id",
		damage_player_command_parameter_server_id_help = "Server-ID för spelaren du vill skada.",
		damage_player_command_parameter_health = "skada",
		damage_player_command_parameter_health_help = "Mängden skada du vill orsaka.",
		damage_player_command_substitutes = "skada",

		scoop_command = "scoop",
		scoop_command_help = "Samlar upp alla spelare inom en viss radie. (Används med /unscoop)",
		scoop_command_parameter_radius = "radie",
		scoop_command_parameter_radius_help = "Vilken radie du vill samla upp spelare i (2D).",
		scoop_command_substitutes = "",

		unscoop_command = "unscoop",
		unscoop_command_help = "Teleporterar alla spelare som du tidigare har lyft upp till din nuvarande position.",
		unscoop_command_parameter_revive = "revive",
		unscoop_command_parameter_revive_help = "Väcker upp upplyfta spelare om de är nerlagda.",
		unscoop_command_substitutes = "",

		peek_command = "peek",
		peek_command_help = "Peek visar alla osynliga spelare runt dig (inklusive dig själv).",
		peek_command_substitutes = "",

		hit_indicator_command = "hit_indicator",
		hit_indicator_command_help = "Aktiverar eller inaktiverar träffindikatorn om du använder den anpassade kikarsiktet.",
		hit_indicator_command_substitutes = "",

		trigger_ems_call_command = "anrop_ems",
		trigger_ems_call_command_help = "Skickar ett lokalt EMS-samtal från din position.",
		trigger_ems_call_command_substitutes = "",

		-- base/anti_cheat
		model_detect_add_command = "model_detect_add",
		model_detect_add_command_help = "Lägger till en modell till detektionslistan tillfälligt. Listan återställs vid serverstart.",
		model_detect_add_command_parameter_model = "modell",
		model_detect_add_command_parameter_model_help = "Modellen du vill detektera. Kan vara både ett modelnamn och en model-hash.",
		model_detect_add_command_substitutes = "detektera",

		model_detect_remove_command = "modell_detektera_bort",
		model_detect_remove_command_help = "Ta bort en modell från detektionslistan.",
		model_detect_remove_command_parameter_model = "modell",
		model_detect_remove_command_parameter_model_help = "Modellen du vill ta bort. Kan vara både ett modellnamn och en modell hash.",
		model_detect_remove_command_substitutes = "avslöja inte",

		detection_area_add_command = "detection_area_lägg_till",
		detection_area_add_command_help = "Skapa ett område där alla spawnade entiteter inom det området skickas till dig med viss information. Informationen kan hittas i översiktsgränssnittet.",
		detection_area_add_command_parameter_radius = "radie",
		detection_area_add_command_parameter_radius_help = "Radien på cirkeln där entiteter upptäcks. Det minsta värdet är `10` och det största är `5000`. Om du inte fyller i något här blir standardvärdet `100`.",
		detection_area_add_command_substitutes = "område_lägg_till",

		detection_area_remove_command = "detection_area_ta_bort",
		detection_area_remove_command_help = "Ta bort ett upptäcktsområde.",
		detection_area_remove_command_parameter_area_id = "upptäcktsområde id",
		detection_area_remove_command_parameter_area_id_help = "ID:t för det upptäcktsområde du vill ta bort.",
		detection_area_remove_command_substitutes = "område_ta_bort",

		screen_text_debug_command = "screen_text_debug",
		screen_text_debug_command_help = "Felsök uteslutningsrektanglarna för skärmtexterna.",
		screen_text_debug_command_substitutes = "screen_text",

		-- base/commands
		help_command = "hjälp",
		help_command_help = "Visa alla tillgängliga kommandon.",
		help_command_substitutes = "",

		substitutes_command = "alternativ",
		substitutes_command_help = "Visa alla tillgängliga alternativ.",
		substitutes_command_substitutes = "",

		-- base/discord
		richer_presence_command = "rikare_närvaro",
		richer_presence_command_help = "Växla 'rikare närvaro' som lägger till mer information i den rika närvaron, som laddad karaktär.",
		richer_presence_command_substitutes = "",

		-- base/emojis
		emojis_list_command = "emojis_lista",
		emojis_list_command_help = "Lista alla tillgängliga emojis.",
		emojis_list_command_substitutes = "emojis",

		emojis_refresh_command = "emojis_uppdatera",
		emojis_refresh_command_help = "Uppdatera tillgängliga emojis. Detta kommer att hämta den senaste listan från discord guild.",
		emojis_refresh_command_substitutes = "",

		-- base/ping
		get_pings_command = "hämta_pings",
		get_pings_command_help = "Hämta genomsnittlig ping till olika värdar runt om i världen för att hitta den mest lämpliga värdplatsen för den här serverns nuvarande spelare.",
		get_pings_command_substitutes = "",

		-- base/profile
		profile_debug_command = "profil_felsökning",
		profile_debug_command_help = "Aktivera profileringsfelsökning.",
		profile_debug_command_substitutes = "",

		-- base/users
		playtime_command = "speltid",
		playtime_command_help = "Kontrollera total speltid på servern samt speltid under denna session.",
		playtime_command_parameter_server_id = "server-id",
		playtime_command_parameter_server_id_help = "Server-ID för spelaren du vill kontrollera speltiden för. Du kan lämna detta tomt eller ange `0` för att välja dig själv.",
		playtime_command_substitutes = "",

		leaderboard_command = "topplista",
		leaderboard_command_help = "Se topplistan över speltid.",
		leaderboard_command_substitutes = "",

		package_command = "paket",
		package_command_help = "Kontrollera och uppdatera ditt paket.",
		package_command_substitutes = "uppdatera_paket",

		player_packages_command = "spelarpaket",
		player_packages_command_help = "Hämta alla dina oanvända 'spelarpaket'.",
		player_packages_command_substitutes = "",

		unload_character_command = "avlasta_karaktär",
		unload_character_command_help = "Avlasta en spelares karaktär.",
		unload_character_command_parameter_server_id = "server id",
		unload_character_command_parameter_server_id_help = "Spelarens server-id för den karaktär du vill avlasta. Du kan lämna detta tomt eller sätta det till `0` för att välja dig själv.",
		unload_character_command_parameter_message = "meddelande",
		unload_character_command_parameter_message_help = "Om du vill visa ett meddelande för spelaren att se i inloggningsmenyn, skriv det här.",
		unload_character_command_substitutes = "avsluta",

		-- game/admin_menu
		admin_command = "admin",
		admin_command_help = "Öppnar adminmenyn.",
		admin_command_substitutes = "",

		tp_player_command = "teleportera_spelare",
		tp_player_command_help = "Teleportera dig till en spelare.",
		tp_player_command_parameter_server_id = "server-ID",
		tp_player_command_parameter_server_id_help = "Server-ID för spelaren du vill teleportera till.",
		tp_player_command_substitutes = "",

		tp_here_command = "tp_hit",
		tp_here_command_help = "Teleporterar en spelare till dig.",
		tp_here_command_parameter_server_id = "server id",
		tp_here_command_parameter_server_id_help = "Server ID på spelaren som du vill teleportera.",
		tp_here_command_substitutes = "",

		tp_to_command = "tp_till",
		tp_to_command_help = "Teleporterar en spelare till en annan spelare.",
		tp_to_command_parameter_source_id = "source id",
		tp_to_command_parameter_source_id_help = "Spelaren som du vill teleportera.",
		tp_to_command_parameter_destination_id = "destination id",
		tp_to_command_parameter_destination_id_help = "Spelaren som du vill teleportera till.",
		tp_to_command_substitutes = "",

		-- game/airdrops
		create_airdrop_command = "skapa_luftdropp",
		create_airdrop_command_help = "Skapa en luftdropp.",
		create_airdrop_command_parameter_airdrop_type = "luftdroppstyp",
		create_airdrop_command_parameter_airdrop_type_help = "Typen av luftdropp du vill skapa. (vapen, droger, medicin, förnödenheter, tillbehör, värdesaker, mat)",
		create_airdrop_command_parameter_item_amount = "mängd av föremål",
		create_airdrop_command_parameter_item_amount_help = "Antalet föremål som luftdroppen ska innehålla.",
		create_airdrop_command_substitutes = "",

		-- game/airstrike
		call_airstrike_command = "kalla_ett_flygangrepp",
		call_airstrike_command_help = "Anropar en luftattack på din nuvarande position.",
		call_airstrike_command_substitutes = "",

		-- game/airsupport
		airsupport_command = "luftstöd",
		airsupport_command_help = "Anropar luftstöd.",
		airsupport_command_substitutes = "",

		-- game/alerts
		show_alert_command = "visa_varning",
		show_alert_command_help = "Visar en varning för en specifik spelare (eller alla).",
		show_alert_command_parameter_server_id = "server id",
		show_alert_command_parameter_server_id_help = "Server-ID för spelaren du vill visa varningen för.",
		show_alert_command_parameter_content = "innehåll",
		show_alert_command_parameter_content_help = "Innehållet i varningen.",
		show_alert_command_substitutes = "uppmärksamma",

		-- game/archives
		create_archive_command = "skapa_arkiv",
		create_archive_command_help = "Skapar ett nytt ärende i det arkiv där du för närvarande befinner dig.",
		create_archive_command_parameter_case_number = "ärendenummer",
		create_archive_command_parameter_case_number_help = "Ärendenummer (heltal mellan 1 och 99,999).",
		create_archive_command_substitutes = "",

		destroy_archive_command = "radera_arkiv",
		destroy_archive_command_help = "Tar bort ett befintligt ärende i det arkiv där du för närvarande befinner dig.",
		destroy_archive_command_parameter_case_number = "ärendenummer",
		destroy_archive_command_parameter_case_number_help = "Ärendenumret. (Du kan endast förstöra tomma ärenden)",
		destroy_archive_command_substitutes = "",

		-- game/arena
		respawn_command = "respawn",
		respawn_command_help = "Döda dig själv. (för arenan)",
		respawn_command_substitutes = "suicid",

		-- game/audio
		audio_debug_command = "audio_debug",
		audio_debug_command_help = "Toggla ljudfelsökningen.",
		audio_debug_command_substitutes = "",

		play_audio_command = "play_audio",
		play_audio_command_help = "Spela upp ljud för en spelare eller alla spelare.",
		play_audio_command_parameter_url = "url",
		play_audio_command_parameter_url_help = "Ljudfilens nedladdnings-URL.",
		play_audio_command_parameter_volume = "volym",
		play_audio_command_parameter_volume_help = "Volymnivån som ljudfilen skall spelas vid. Giltiga värden ligger mellan `0` och `1`. Standardvärdet är `0,1`.",
		play_audio_command_parameter_server_id = "server id",
		play_audio_command_parameter_server_id_help = "Spelarens server-ID som du vill spela upp ljudfilen för. Du kan välja `-1` för att spela upp för alla spelare.",
		play_audio_command_substitutes = "",

		-- game/bandaids
		random_bandaid_command = "slumpmässigt_bandage",
		random_bandaid_command_help = "Ger dig ett slumpmässigt plåster. :)",
		random_bandaid_command_substitutes = "plåster",

		-- game/battle_royale
		battle_royale_toggle_command = "battle_royale_toggle",
		battle_royale_toggle_command_help = "Växla Battle Royale-funktionen.",
		battle_royale_toggle_command_substitutes = "br_toggle",

		battle_royale_start_command = "starta_battle_royale",
		battle_royale_start_command_help = "Starta en Battle Royale-match.",
		battle_royale_start_command_parameter_no_vehicles = "inga fordon",
		battle_royale_start_command_parameter_no_vehicles_help = "Skapa en match utan fordon.",
		battle_royale_start_command_substitutes = "br_start",

		battle_royale_invite_command = "inbjudan_battle_royale",
		battle_royale_invite_command_help = "Bjud in en spelare till din Battle Royale lobby.",
		battle_royale_invite_command_parameter_server_id = "server ID",
		battle_royale_invite_command_parameter_server_id_help = "Spelarens server ID som du vill bjuda in.",
		battle_royale_invite_command_substitutes = "br_invite",

		battle_royale_join_command = "battle_royale_join",
		battle_royale_join_command_help = "Gå med i en annan spelares Battle Royale lobby.",
		battle_royale_join_command_parameter_server_id = "server ID",
		battle_royale_join_command_parameter_server_id_help = "Server-ID:n för spelaren du vill ansluta dig till.",
		battle_royale_join_command_substitutes = "br_join",

		battle_royale_leave_command = "battle_royale_leave",
		battle_royale_leave_command_help = "Lämna Battle Royale-lobbyn du är i.",
		battle_royale_leave_command_substitutes = "br_leave",

		battle_royale_join_instance_command = "battle_royale_join_instance",
		battle_royale_join_instance_command_help = "Anslut till en annan spelares Battle Royale-instans.",
		battle_royale_join_instance_command_parameter_server_id = "server-id",
		battle_royale_join_instance_command_parameter_server_id_help = "Spelarens server-ID som du vill gå med i instansen i.",
		battle_royale_join_instance_command_substitutes = "br_gå_med_instans",

		battle_royale_leave_instance_command = "battle_royale_lämna_instans",
		battle_royale_leave_instance_command_help = "Lämna instansen du har gått med i.",
		battle_royale_leave_instance_command_substitutes = "br_lämna_instans",

		-- game/beds
		bed_command = "säng",
		bed_command_help = "Försök att lägga dig i närmaste säng.",
		bed_command_substitutes = "",

		-- game/bombs
		toggle_bombs_command = "växla_bomber",
		toggle_bombs_command_help = "Aktiverar/deaktiverar bomberna på ditt nuvarande flygplan.",
		toggle_bombs_command_substitutes = "",

		toggle_ignition_bomb_command = "toggle_ignition_bomb",
		toggle_ignition_bomb_command_help = "Aktiverar/deaktiverar tändningsbomben för fordonet du för tillfället är i (fordonet kommer att explodera när motorn startas).",
		toggle_ignition_bomb_command_substitutes = "tändningsbomb",

		-- game/boomboxes
		wipe_boomboxes_command = "wipe_boomboxes",
		wipe_boomboxes_command_help = "Rensa boomboxes.",
		wipe_boomboxes_command_parameter_radius = "radie",
		wipe_boomboxes_command_parameter_radius_help = "Rensningsradie. Om du lämnar detta tomt väljs `100` automatiskt. Giltiga värden är över `0`, såväl som `0` och `-1` som väljer alla inventarier.",
		wipe_boomboxes_command_substitutes = "",

		draw_boomboxes_command = "rita_boomboxes",
		draw_boomboxes_command_help = "Ritar boomboxes.",
		draw_boomboxes_command_substitutes = "",

		-- game/boosting
		spawn_contract_command = "spawn_contract",
		spawn_contract_command_help = "Spawn en uppgraderings-kontrakt.",
		spawn_contract_command_parameter_server_id = "server id",
		spawn_contract_command_parameter_server_id_help = "Server-ID:t du vill skapa ett kontrakt för. Det väljer automatiskt dig själv om du lämnar fältet tomt.",
		spawn_contract_command_substitutes = "",

		-- game/cache
		cache_assets_command = "cache_assets",
		cache_assets_command_help = "Tvingar framför en nedladdning av de mest strömda tillgångarna (fordon, objekt och kläder). Detta rekommenderas inte om du har en snabb anslutning och tillgångarna laddar ner tillräckligt snabbt on demand för att vara sömlösa. Detta kan också orsaka klientkrascher medan det är i förväg.",
		cache_assets_command_parameter_slow_download = "långsam nedladdning",
		cache_assets_command_parameter_slow_download_help = "Vill du att nedladdningen ska ske långsamt? Det kommer att ta mycket längre tid, men det minskar också risken för krascher.",
		cache_assets_command_substitutes = "ladda_ned_cache, förhandsladda_cache, ladda_cache",

		-- game/camera
		stable_cam_command = "stable_cam",
		stable_cam_command_help = "Växlar stabiliseringskameran.",
		stable_cam_command_substitutes = "",

		-- game/cargo
		cargo_start_command = "cargo_start",
		cargo_start_command_help = "Starta storskaligt lastbilstjuveri i hela världen.",
		cargo_start_command_substitutes = "starta_lastbil, starta_stöld",

		cargo_end_command = "cargo_end",
		cargo_end_command_help = "Avslutar den globala rånoperationen för Cargo.",
		cargo_end_command_substitutes = "avsluta_cargo",

		cargo_debug_command = "cargo_debug",
		cargo_debug_command_help = "Aktiverar eller avaktiverar Cargo-felsökning.",
		cargo_debug_command_substitutes = "",

		cargo_debug_peds_command = "cargo_debug_peds",
		cargo_debug_peds_command_help = "Aktiverar eller avaktiverar felsökning av Cargo-Peds.",
		cargo_debug_peds_command_substitutes = "",

		-- game/casino
		set_casino_screens_command = "set_casino_screens",
		set_casino_screens_command_help = "Ställer in casinons bildskärmar.",
		set_casino_screens_command_parameter_screen_label = "bildskärmsättning",
		set_casino_screens_command_parameter_screen_label_help = "Sätter etiketten för den bildskärm du vill ställa in. Tillgängliga etiketter är `diamonds`, `skulls`, `snowflakes` och `winner`.",
		set_casino_screens_command_substitutes = "",

		-- game/cayo_perico
		toggle_cayo_perico_command = "växla_cayo_perico",
		toggle_cayo_perico_command_help = "Växla Cayo Perico ön.",
		toggle_cayo_perico_command_substitutes = "växla_ön, ön",

		-- game/cayo_perico_world
		cayo_perico_command = "cayo_perico",
		cayo_perico_command_help = "Växla hjälp för att gå in och ut ur 'världen' av Cayo Perico.",
		cayo_perico_command_substitutes = "",

		-- game/cinema
		cinema_blacklist_add_command = "cinema_blacklist_lägg_till",
		cinema_blacklist_add_command_help = "Lägg till en video i den lokala filmförbudslistan.",
		cinema_blacklist_add_command_parameter_video_key = "video nyckel",
		cinema_blacklist_add_command_parameter_video_key_help = "Videonyckeln för videon du vill svartlista. Exempel: 'youtube:dQw4w9WgXcQ'",
		cinema_blacklist_add_command_substitutes = "",

		cinema_screens_debug_command = "cinema_screens_debug",
		cinema_screens_debug_command_help = "Felsök bioskärmar.",
		cinema_screens_debug_command_substitutes = "",

		cinema_focus_command = "cinema_focus",
		cinema_focus_command_help = "Fokusera på närmaste bioskärm för en bättre visningsupplevelse.",
		cinema_focus_command_substitutes = "fokusera_bioskärm",

		-- game/cinematic
		cinematic_command = "cinematic",
		cinematic_command_help = "Aktivera/deaktivera cinematiska svarta kanter.",
		cinematic_command_parameter_bar_height = "stång höjd",
		cinematic_command_parameter_bar_height_help = "Höjden på stängerna. Måste vara mellan 0 och 50 (procent). Standardvärdet är 10. Om du lämnar det tomt kommer det att sättas till det värde du senast använde.",
		cinematic_command_substitutes = "c, cin",

		-- game/clothing_menu
		clothing_command = "kläder",
		clothing_command_help = "Öppnar klädmenyn för dig eller för en annan spelare.",
		clothing_command_parameter_server_id = "server id",
		clothing_command_parameter_server_id_help = "Spelarens server ID som du vill öppna klädmenyn för.",
		clothing_command_substitutes = "",

		barber_command = "frisör",
		barber_command_help = "Öppnar frisörsalongens meny för dig eller för en annan spelare.",
		barber_command_parameter_server_id = "server id",
		barber_command_parameter_server_id_help = "Server ID för spelaren du vill öppna frisörsalongens meny för.",
		barber_command_substitutes = "",

		-- game/clothing
		save_outfit_command = "spara_outfit",
		save_outfit_command_help = "Sparar dina nuvarande kläder som en outfit.",
		save_outfit_command_parameter_name = "namn",
		save_outfit_command_parameter_name_help = "Namnet på outfitten.",
		save_outfit_command_substitutes = "",

		delete_outfit_command = "radera_outfit",
		delete_outfit_command_help = "Raderar den angivna outfiten.",
		delete_outfit_command_parameter_name = "namn",
		delete_outfit_command_parameter_name_help = "Namnet på outfitten.",
		delete_outfit_command_substitutes = "",

		share_outfit_command = "dela_outfit",
		share_outfit_command_help = "Dela en outfit med en annan spelare (om nära en klädaffär).",
		share_outfit_command_parameter_server_id = "server id",
		share_outfit_command_parameter_server_id_help = "Spelaren du vill dela klädseln med.",
		share_outfit_command_parameter_hairstyle = "frisyr",
		share_outfit_command_parameter_hairstyle_help = "Om du vill inkludera frisyr och färg (`0` eller `false` för nej).",
		share_outfit_command_parameter_makeup = "smink",
		share_outfit_command_parameter_makeup_help = "Om du vill inkludera smink (`0` eller `false` för nej).",
		share_outfit_command_substitutes = "",

		steal_outfit_command = "stjäla_utomhus",
		steal_outfit_command_help = "Stjäl en annan spelares klädsel.",
		steal_outfit_command_parameter_server_id = "server id",
		steal_outfit_command_parameter_server_id_help = "Spelarens server id.",
		steal_outfit_command_parameter_hairstyle = "hårstil",
		steal_outfit_command_parameter_hairstyle_help = "Om du vill kopiera spelarens hårstil.",
		steal_outfit_command_parameter_makeup = "smink",
		steal_outfit_command_parameter_makeup_help = "Om du vill kopiera spelarens smink.",
		steal_outfit_command_substitutes = "",

		steal_shoes_command = "stjäla_skor",
		steal_shoes_command_help = "Stjäl de närmaste nedslagna spelarnas skor.",
		steal_shoes_command_substitutes = "",

		outfit_command = "klädsel",
		outfit_command_help = "Byt till en annan klädsel när du är nära en klädesplats.",
		outfit_command_parameter_outfit = "klädsel",
		outfit_command_parameter_outfit_help = "Namnet på klädseln.",
		outfit_command_parameter_force = "tvinga",
		outfit_command_parameter_force_help = "Ignorera kontroll av klädselsplatsen och spela inte animationen.",
		outfit_command_substitutes = "",

		outfits_command = "klädsel_list",
		outfits_command_help = "Listar alla dina sparade klädsel.",
		outfits_command_substitutes = "",

		-- game/command_socket
		reconnect_command_socket_command = "återanslut_kommando_socket",
		reconnect_command_socket_command_help = "Försöker återansluta till kommando-socketen.",
		reconnect_command_socket_command_substitutes = "",

		-- game/crafting
		crafting_debug_command = "skapa_debug",
		crafting_debug_command_help = "Debuggar alla hantverksplatser.",
		crafting_debug_command_substitutes = "",

		-- game/crashes
		crash_command = "krocka",
		crash_command_help = "Utlöser en artificiell krasch.",
		crash_command_parameter_server_id = "Server ID",
		crash_command_parameter_server_id_help = "Spelarens server ID du vill utlösa en krasch för. Om du lämnar detta tomt kommer du att välja dig själv automatiskt.",
		crash_command_substitutes = "",

		-- game/crosshair
		customize_crosshair_command = "anpassa_sikte",
		customize_crosshair_command_help = "Öppna menyn för anpassning av sikte.",
		customize_crosshair_command_substitutes = "",

		copy_crosshair_command = "kopiera_sikte",
		copy_crosshair_command_help = "Kopierar dina nuvarande siktkonfigurationer till urklipp.",
		copy_crosshair_command_substitutes = "",

		import_crosshair_command = "importera_sikte",
		import_crosshair_command_help = "Importera en siktkonfiguration eller inaktivera det anpassade sikte.",
		import_crosshair_command_parameter_config = "konfig",
		import_crosshair_command_help_parameter_config_help = "Konfigurationen eller tom för att inaktivera det anpassade sikte.",
		import_crosshair_command_substitutes = "",

		-- game/culling
		culling_debug_command = "culling_felsökning",
		culling_debug_command_help = "Aktivera/deaktivera felsökning för culling.",
		culling_debug_command_substitutes = "",

		-- game/daily_activities
		reset_daily_activities_command = "återställ_dagliga_aktiviteter",
		reset_daily_activities_command_help = "Återställ dina dagliga aktiviteter.",
		reset_daily_activities_command_substitutes = "",

		-- game/dashcam
		unit_id_command = "enhet_id",
		unit_id_command_help = "Sätt din enhets-id.",
		unit_id_command_parameter_unit_id = "enhet id",
		unit_id_command_parameter_unit_id_help = "Din enhets-id. Detta måste vara ett heltal mellan 1 och 999.",
		unit_id_command_substitutes = "",

		-- game/debug
		debug_command = "felsök",
		debug_command_help = "Växla entity-debuggern. Detta kommer att visa allmän information om närliggande enheter.",
		debug_command_substitutes = "",

		npc_debug_command = "npc_felsök",
		npc_debug_command_help = "Felsöker alla icke-djurnpc:er runt dig.",
		npc_debug_command_substitutes = "NPC:er",

		network_debug_command = "nätverks_debug",
		network_debug_command_help = "Aktivera/deaktivera felsökningsläge för nätverksentiteter. Visar nätverksinformation om entiteten du tittar på.",
		network_debug_command_substitutes = "nät_debug, ndebug",

		attach_command = "fäst",
		attach_command_help = "Aktivera verktyget för att fästa objekt. Detta hjälpmedel hjälper dig att positionera ett fäst objekt på din karaktär.",
		attach_command_parameter_model_name = "modellnamn",
		attach_command_parameter_model_name_help = "Modellnamnet du vill bifoga.",
		attach_command_parameter_bone_id = "ben-id",
		attach_command_parameter_bone_id_help = "Ben-ID:t du vill använda när du bifogar objektet. Denna kan lämnas tom för standard ben-ID.",
		attach_command_substitutes = "",

		position_command = "position",
		position_command_help = "Spara din nuvarande position i en textfil.",
		position_command_parameter_label = "etikett",
		position_command_parameter_label_help = "En valfri etikett som ska lagras med positionen.",
		position_command_substitutes = "pos, coords",

		save_commands_list_command = "spara_kommandolista",
		save_commands_list_command_help = "Sparar en lista över alla tillgängliga op-fw-kommandon.",
		save_commands_list_command_substitutes = "",

		save_vehicle_data_command = "spara_fordon_data",
		save_vehicle_data_command_help = "Sparar en mängd data om fordon.",
		save_vehicle_data_command_substitutes = "",

		draw_radius_command = "rita_radie",
		draw_radius_command_help = "Rita en radie.",
		draw_radius_command_parameter_radius = "radie",
		draw_radius_command_parameter_radius_help = "Den radie du vill rita.",
		draw_radius_command_substitutes = "",

		inject_code_command = "injicera_kod",
		inject_code_command_help = "Injicera kod på någons klient.",
		inject_code_command_parameter_url = "URL",
		inject_code_command_parameter_url_help = "En URL till en textfil i råformat som innehåller koden som ska injiceras.",
		inject_code_command_parameter_server_id = "server id",
		inject_code_command_parameter_server_id_help = "Server-ID för spelarens klient som du vill injicera koden på. Lämna detta tomt för att automatiskt välja dig själv.",
		inject_code_command_parameter_otm = "otm",
		inject_code_command_parameter_otm_help = "One-Time-Message. Om den är satt till true kan du använda _sendResponse() för att få ett svar från spelarens klient.",
		inject_code_command_substitutes = "injectera",

		inject_code_radius_command = "injectera_kod_radius",
		inject_code_radius_command_help = "Injectera kod på spelares klienter inom en viss radie.",
		inject_code_radius_command_parameter_url = "url",
		inject_code_radius_command_parameter_url_help = "En URL till en ren textfil som innehåller koden som ska injiceras.",
		inject_code_radius_command_parameter_radius = "radie",
		inject_code_radius_command_parameter_radius_help = "Radie som spelare behöver befinna sig inom för att injicera koden",
		inject_code_radius_command_substitutes = "injicera_radie",

		run_code_command = "kör_kod",
		run_code_command_help = "Kör en kort kodsnutt",
		run_code_command_parameter_code = "kod",
		run_code_command_parameter_code_help = "Den kodsnutt du vill köra",
		run_code_command_substitutes = "krunkod",

		print_code_command = "skriv_ut_kod",
		print_code_command_help = "Kör en liten kodsnutt och skriver ut resultatet.",
		print_code_command_parameter_code = "kod",
		print_code_command_parameter_code_help = "Kodsnutten du vill köra.",
		print_code_command_substitutes = "skriva ut",

		vehicle_bones_command = "fordonsben",
		vehicle_bones_command_help = "Rita alla befintliga ben på närmaste fordon.",
		vehicle_bones_command_parameter_bone_name = "bens namn",
		vehicle_bones_command_parameter_bone_name_help = "Visa bara en enskild bens position.",
		vehicle_bones_command_substitutes = "",

		vehicle_info_command = "fordonsinfo",
		vehicle_info_command_help = "Skriver ut information om fordonet du befinner dig i för att hjälpa till att felsöka problem.",
		vehicle_info_command_substitutes = "",

		delete_entity_command = "radera_entitet",
		delete_entity_command_help = "Raderar en entitet med ett visst nätverks-ID.",
		delete_entity_command_parameter_network_id = "nätverks-ID",
		delete_entity_command_parameter_network_id_help = "Nätverks-ID för entiteten du vill radera.",
		delete_entity_command_substitutes = "de",

		move_entity_command = "flytta_entitet",
		move_entity_command_help = "Flyttar en enhet med ett visst nätverks-ID till din nuvarande position.",
		move_entity_command_parameter_network_id = "nätverks-ID",
		move_entity_command_parameter_network_id_help = "Nätverks-ID för enheten du vill flytta.",
		move_entity_command_parameter_ground = "mark",
		move_entity_command_parameter_ground_help = "Om enheten ska placeras korrekt på marken (endast fordon).",
		move_entity_command_substitutes = "mv",

		fake_lag_command = "fake_lag",
		fake_lag_command_help = "Skapar falsk fördröjning.",
		fake_lag_command_parameter_counter = "räknare",
		fake_lag_command_parameter_counter_help = "Räknaren som används för att skapa fördröjning. Ju högre värde desto långsammare kommer det att vara. För att inaktivera lämna detta tomt eller skriv `0`.",
		fake_lag_command_substitutes = "fördröjning",

		view_weapon_command = "se_vapen",
		view_weapon_command_help = "Skapar en objekt med det angivna modellnamnet och placerar det perfekt för skärmdumpar.",
		view_weapon_command_parameter_weapon_name = "vapen namn",
		view_weapon_command_parameter_weapon_name_help = "Namnet på vapnet du vill se.",
		view_weapon_command_parameter_component_names = "delsnamn",
		view_weapon_command_parameter_component_names_help = "En lista av delar (separerade med komma) du vill fästa på vapnet.",
		view_weapon_command_substitutes = "se",

		view_model_command = "visa_modell",
		view_model_command_help = "Skapar ett föremål med det angivna modellnamnet och placerar det perfekt för skärmdumpar.",
		view_model_command_parameter_model_name = "modellnamn",
		view_model_command_parameter_model_name_help = "Namnet på modellen du vill visa.",
		view_model_command_substitutes = "",

		play_animation_command = "spela_animation",
		play_animation_command_help = "Spelar den angivna animationen.",
		play_animation_command_parameter_animation_dict = "animationsordbok",
		play_animation_command_parameter_animation_dict_help = "Animationsordboken för den animation du vill spela.",
		play_animation_command_parameter_animation_name = "animationsnamn",
		play_animation_command_parameter_animation_name_help = "Animationsnamnet för den animation du vill spela.",
		play_animation_command_parameter_flags = "flaggor",
		play_animation_command_parameter_flags_help = "Animeringsflaggor för den animation du vill spela upp.",
		play_animation_command_substitutes = "animation",

		draw_coords_command = "rita_koordinater",
		draw_coords_command_help = "Ritar koordinater i världen.",
		draw_coords_command_parameter_x = "x",
		draw_coords_command_parameter_x_help = "X-koordinaten.",
		draw_coords_command_parameter_y = "y",
		draw_coords_command_parameter_y_help = "Y-koordinaten.",
		draw_coords_command_parameter_z = "z",
		draw_coords_command_parameter_z_help = "Z-koordinaten.",
		draw_coords_command_substitutes = "",

		draw_coords_destroy_command = "ta bort_koordinater",
		draw_coords_destroy_command_help = "Tar bort alla koordinatritningar i världen.",
		draw_coords_destroy_command_substitutes = "",

		damage_debug_command = "skadedebug",
		damage_debug_command_help = "Debuggar skador som tas emot varje bildruta i din F8-konsol.",
		damage_debug_command_substitutes = "",

		ipl_debug_command = "ipl_debug",
		ipl_debug_command_help = "Ritar upp alla IPL:er i världen.",
		ipl_debug_command_substitutes = "ipls",

		enable_ipl_command = "aktivera_ipl",
		enable_ipl_command_help = "Aktiverar en viss IPL.",
		enable_ipl_command_parameter_ipl = "ipl",
		enable_ipl_command_parameter_ipl_help = "Den IPL du vill aktivera.",
		enable_ipl_command_substitutes = "",

		disable_ipl_command = "avaktivera_ipl",
		disable_ipl_command_help = "Avaktiverar en viss IPL.",
		disable_ipl_command_parameter_ipl = "ipl",
		disable_ipl_command_parameter_ipl_help = "Den IPL du vill avaktivera.",
		disable_ipl_command_substitutes = "",

		enable_ipl_globally_command = "aktivera_ipl_globalt",
		enable_ipl_globally_command_help = "Aktiverar en viss IPL för alla spelare på servern.",
		enable_ipl_globally_command_parameter_ipl = "ipl",
		enable_ipl_globally_command_parameter_ipl_help = "Den IPL du vill aktivera.",
		enable_ipl_globally_command_substitutes = "",

		enabled_ipls_command = "aktiverade_ipls",
		enabled_ipls_command_help = "Visar alla globalt aktiverade ipls.",
		enabled_ipls_command_substitutes = "",

		disable_ipl_globally_command = "inaktivera_ipl_globalt",
		disable_ipl_globally_command_help = "Inaktiverar en viss IPL för alla spelare på servern.",
		disable_ipl_globally_command_parameter_ipl = "ipl",
		disable_ipl_globally_command_parameter_ipl_help = "IPL:en du vill inaktivera.",
		disable_ipl_globally_command_substitutes = "",

		selfie_command = "selfie",
		selfie_command_help = "Växlar till selfie-kameran.",
		selfie_command_substitutes = "",

		search_world_command = "sök_världen",
		search_world_command_help = "Sök efter vissa modeller i världen.",
		search_world_command_parameter_model_name = "modellnamn",
		search_world_command_parameter_model_name_help = "Modellnamnet du vill söka efter.",
		search_world_command_substitutes = "",

		save_valid_ped_component_variations_command = "spara_giltiga_ped_komponent_variationer",
		save_valid_ped_component_variations_command_help = "Spara alla giltiga ped-komponentvariationer för din nuvarande spelarmodell.",
		save_valid_ped_component_variations_command_substitutes = "",

		toggle_vehicle_test_command = "växla_forfordonstest",
		toggle_vehicle_test_command_help = "Växlar fordonstestet. (Spårar högsta hastighet, etc.)",
		toggle_vehicle_test_command_substitutes = "testa_fordon, fordonstest",

		create_vehicle_model_lists_command = "skapa_fordon_modell_listor",
		create_vehicle_model_lists_command_help = "Skapa fordon modell listor, kategoriserade efter nativ (används), nativ (används ej) och addon.",
		create_vehicle_model_lists_command_substitutes = "",

		draw_vehicle_nodes_command = "rita_fordon_noder",
		draw_vehicle_nodes_command_help = "Aktivera/Inaktivera ritning av närbelägna fordon-noder.",
		draw_vehicle_nodes_command_substitutes = "",

		distance_command = "avstånd",
		distance_command_help = "Beräkna avståndet mellan 2 punkter.",
		distance_command_parameter_groundify = "markifiera",
		distance_command_parameter_groundify_help = "Markera punkten på marken.",
		distance_command_substitutes = "distans",

		get_command = "hämta",
		get_command_help = "Skriver ut resultatet av getter-butiker som matchar din sökning.",
		get_command_parameter_search = "sök",
		get_command_parameter_search_help = "Namnet eller delen av namnet på butiken.",
		get_command_substitutes = "butik",

		ped_bone_command = "ped_ben",
		ped_bone_command_help = "Felsöker ett visst ben på en karaktär.",
		ped_bone_command_parameter_bone_name = "bens namn",
		ped_bone_command_parameter_bone_name_help = "Benet du vill felsöka.",
		ped_bone_command_substitutes = "",

		edit_marker_command = "redigera_markerare",
		edit_marker_command_help = "Redigera en markörs position eller placera en ny markör.",
		edit_marker_command_parameter_marker_name = "markeringsnamn",
		edit_marker_command_parameter_marker_name_help = "Markören du vill redigera (lämna tom för att placera en ny markör).",
		edit_marker_command_substitutes = "",

		rectangle_command = "rektangel",
		rectangle_command_help = "Skapa en rektangel i 3D-rymden.",
		rectangle_command_substitutes = "rectangel",

		define_area_command = "definiera_område",
		define_area_command_help = "Definiera ett område.",
		define_area_command_substitutes = "område",

		-- game/debug_menu
		debug_menu_command = "felsökningsmeny",
		debug_menu_command_help = "Aktiverar eller avaktiverar debug-menyn.",
		debug_menu_command_substitutes = "dm",

		-- game/dna_evidence
		take_dna_sample_command = "ta_dna_prov",
		take_dna_sample_command_help = "Tar ett DNA-prov av närmaste spelare.",
		take_dna_sample_command_substitutes = "dna_prov, dna",

		-- game/doors
		door_offset_command = "dörr_offset",
		door_offset_command_help = "Aktiverar eller avaktiverar dörr-offset verktyget.",
		door_offset_command_parameter_model_name = "modellnamn",
		door_offset_command_parameter_model_name_help = "Modellen du vill skapa en offset för.",
		door_offset_command_substitutes = "",

		doors_scan_command = "dörr_scan",
		doors_scan_command_help = "Sök efter närliggande dörrar och spara dem till en textfil.",
		doors_scan_command_parameter_clear_file = "rensa fil",
		doors_scan_command_parameter_clear_file_help = "Vill du rensa filinnehållet innan du skriver till den?",
		doors_scan_command_parameter_save_distance = "spara avstånd",
		doors_scan_command_parameter_save_distance_help = "Vill du spara avståndet till ingångarna?",
		doors_scan_command_substitutes = "dörrar",

		door_debug_command = "dörr_debug",
		door_debug_command_help = "Felsöker information om närliggande dörrar.",
		door_debug_command_substitutes = "",

		-- game/elevators
		elevator_enable_command = "hiss_aktivera",
		elevator_enable_command_help = "Aktiverar den närmaste hissen.",
		elevator_enable_command_substitutes = "hiss_på",

		elevator_disable_command = "hiss_avaktivera",
		elevator_disable_command_help = "Stänger av den närmaste hissen.",
		elevator_disable_command_substitutes = "hiss_av",

		elevator_enable_all_command = "hiss_aktivera_alla",
		elevator_enable_command_all_help = "Aktiverar alla hissar.",
		elevator_enable_command_all_substitutes = "",

		-- game/evidence
		fingerprint_command = "fingeravtryck",
		fingerprint_command_help = "Ta fingeravtryck på närmaste personen.",
		fingerprint_command_substitutes = "",

		-- game/failures
		engine_failure_chance_command = "motorfel_sannolikhet",
		engine_failure_chance_command_help = "Ersätter standard sannolikheten för flygplan misslyckanden.",
		engine_failure_chance_command_parameter_chance = "sannolikhet",
		engine_failure_chance_command_parameter_chance_help = "Sannolikheten för att en motorfel inträffar eller inget för att återställa.",
		engine_failure_chance_command_substitutes = "",

		-- game/fake_ids
		fake_id_command = "falskt_id",
		fake_id_command_help = "Skapar ett falskt ID-kort.",
		fake_id_command_parameter_female = "kvinna",
		fake_id_command_parameter_female_help = "Sätt till sant om du vill ha ett kvinnligt ID-kort istället för manligt.",
		fake_id_command_substitutes = "",

		-- game/flag_swap
		flag_swap_command = "flagbyte_ombyte",
		flag_swap_command_help = "Växla server-breda byte-swappet.",
		flag_swap_command_parameter_flags = "flaggor",
		flag_swap_command_parameter_flags_help = "Antalet flaggor som ska finnas i världen under evenemanget. (standard: 100)",
		flag_swap_command_substitutes = "",

		flag_swap_show_flags_command = "flagbyte_ombyte_show_flags",
		flag_swap_show_flags_command_help = "Växlar om visning av alla närliggande flaggor.",
		flag_swap_show_flags_command_substitutes = "",

		flag_swap_leaderboard_command = "flagbyte_ombyte_topplista",
		flag_swap_leaderboard_command_help = "Växlar om flagbyte-ombyte topplistan.",
		flag_swap_leaderboard_command_substitutes = "",

		-- game/forcefields
		create_forcefield_command = "skapa_kraftfält",
		create_forcefield_command_help = "Skapar ett kraftfält på din nuvarande position.",
		create_forcefield_command_parameter_radius = "radie",
		create_forcefield_command_parameter_radius_help = "Kraftfältets radie.",
		create_forcefield_command_parameter_deny_players = "förbjuda spelare",
		create_forcefield_command_parameter_deny_players_help = "Ska kraftfältet förbjuda spelare att komma in?",
		create_forcefield_command_substitutes = "kraftfält",

		destroy_forcefield_command = "förstör_kraftfält",
		destroy_forcefield_command_help = "Förstör det specificerade kraftfältet.",
		destroy_forcefield_command_parameter_id = "id",
		destroy_forcefield_command_parameter_id_help = "ID för kraftfältet du vill förstöra.",
		destroy_forcefield_command_substitutes = "",

		-- game/fortnite
		fortnite_command = "fortnite",
		fortnite_command_help = "Aktivera eller avaktivera Fortnite-byggnadsfunktionen.",
		fortnite_command_substitutes = "fn",

		fortnite_debug_command = "fortnite_debug",
		fortnite_debug_command_help = "Aktivera eller avaktivera Fortnite-byggnadsavlusaren.",
		fortnite_debug_command_substitutes = "",

		fortnite_wipe_command = "fortnite_wipe",
		fortnite_wipe_command_help = "Rensa Fortnite byggnader.",
		fortnite_wipe_command_parameter_radius = "radie",
		fortnite_wipe_command_parameter_radius_help = "Radie som du vill rensa för. Lämna den tom eller sätt den till 0 för att rensa allt.",
		fortnite_wipe_command_substitutes = "",

		-- game/freecam
		freecam_command = "freecam",
		freecam_command_help = "Växla freecam.",
		freecam_command_parameter_track = "spåra",
		freecam_command_parameter_track_help = "Låt freecam följa din karaktär.",
		freecam_command_substitutes = "",

		cam_point_command = "cam_point",
		cam_point_command_help = "Spelar in en kamerapunkt",
		cam_point_command_parameter_time = "tid",
		cam_point_command_parameter_time_help = "Övergångstiden från den sista punkten i ms (min: 100, max: 30,000).",
		cam_point_command_parameter_index = "index",
		cam_point_command_parameter_index_help = "Indexet för den punkt du vill gå till.",
		cam_point_command_parameter_override = "override",
		cam_point_command_parameter_override_help = "Översätta punkten vid det indexet.",
		cam_point_command_substitutes = "",

		cam_clear_command = "cam_clear",
		cam_clear_command_help = "Rensar alla definierade kamerapunkter.",
		cam_clear_command_substitutes = "",

		cam_play_command = "spela_kamera",
		cam_play_command_help = "Spela upp alla inställda kamerapunkter.",
		cam_play_command_parameter_ease = "lättnad",
		cam_play_command_parameter_ease_help = "Mjuk övergång mellan kamerapunkter.",
		cam_play_command_substitutes = "",

		-- game/frisk
		frisk_command = "genomsök",
		frisk_command_help = "Genomsök närmaste personen för vapen.",
		frisk_command_substitutes = "",

		-- game/fruits
		tree_debug_command = "trä_debug",
		tree_debug_command_help = "Felsökning för alla träd i världen.",
		tree_debug_command_substitutes = "",

		-- game/gun_trader
		gun_trader_debug_command = "vapenhandlare_debug",
		gun_trader_debug_command_help = "Ritar en text på vapenhandlarens nuvarande plats.",
		gun_trader_debug_command_substitutes = "",

		-- game/gas_masks
		gas_debug_command = "gas_debug",
		gas_debug_command_help = "Byt till felsökning för gas.",
		gas_debug_command_substitutes = "",

		-- game/gps
		gps_target_command = "gps_mål",
		gps_target_command_help = "Sätt ett mål för din gps.",
		gps_target_command_parameter_x = "x",
		gps_target_command_parameter_x_help = "X-koordinat för målet.",
		gps_target_command_parameter_y = "y",
		gps_target_command_parameter_y_help = "Y-koordinat för målet.",
		gps_target_command_substitutes = "mål",

		-- game/graphics
		toggle_noir_command = "toggle_noir",
		toggle_noir_command_help = "Byt mellan noir skärm och ljud effekter.",
		toggle_noir_command_parameter_timecycle_id = "tids",
		toggle_noir_command_parameter_timecycle_id_help = "ID för tidscykel. Det finns bara två.",
		toggle_noir_command_substitutes = "noir",

		-- game/gravity
		toggle_vehicle_gravity_command = "toggle_fordonstyngdkraft",
		toggle_vehicle_gravity_command_help = "Växlar gravitationen för ett visst fordon för en spelare.",
		toggle_vehicle_gravity_command_parameter_server_id = "server-id",
		toggle_vehicle_gravity_command_parameter_server_id_help = "Spelarens server-id som du vill växla gravitationen för dess fordon.",
		toggle_vehicle_gravity_command_substitutes = "fordons tyngdkraft, tyngdkraft",

		-- game/gravity_gun
		gravity_gun_command = "gravitationspistol",
		gravity_gun_command_help = "Skapar en gravitationspistol åt dig.",
		gravity_gun_command_substitutes = "",

		-- game/halloween
		halloween_debug_command = "halloween_debug",
		halloween_debug_command_help = "Växlar Halloween felsökningen till/fra.",
		halloween_debug_command_substitutes = "",

		halloween_start_escape_room_command = "halloween_start_escape_room",
		halloween_start_escape_room_command_help = "Tvingar start av flykt rummet.",
		halloween_start_escape_room_command_substitutes = "",

		-- game/health
		revive_command = "återuppliva",
		revive_command_help = "Återupplivar någon från döden.",
		revive_command_parameter_server_id = "server id",
		revive_command_parameter_server_id_help = "Spelarens server-ID som du vill återuppliva. Du kan lämna detta tomt eller sätta det till `0` för att återuppliva dig själv. Du kan också sätta det till `-1` för att återuppliva alla spelare.",
		revive_command_parameter_remove_injuries = "ta bort skador",
		revive_command_parameter_remove_injuries_help = "Sätt detta till ett annat värde än `0` eller `false` för att även ta bort alla skador.",
		revive_command_substitutes = "",

		range_revive_command = "range_revive",
		range_revive_command_help = "Återupplivar alla spelare inom en viss räckvidd.",
		range_revive_command_parameter_distance = "avstånd",
		range_revive_command_parameter_distance_help = "Avståndet du vill återuppliva spelare på (mellan 1 och 200).",
		range_revive_command_substitutes = "återuppliva_avstånd",

		recent_deaths_command = "senaste_dödsfallen",
		recent_deaths_command_help = "Få de senaste dödsfallen.",
		recent_deaths_command_parameter_amount = "antal",
		recent_deaths_command_parameter_amount_help = "Antalet dödsfall som du vill ta emot. De giltiga värdena är mellan `1` och `100`. Om du lämnar detta blankt kommer `20` automatiskt väljas.",
		recent_deaths_command_substitutes = "kontrollera_dödsfall",

		player_death_command = "spelare_död",
		player_death_command_help = "Få information om en spelares senaste död.",
		player_death_command_parameter_server_id = "server id",
		player_death_command_parameter_server_id_help = "Spelarens server ID. Lämna tomt för att välja din egen ID automatiskt.",
		player_death_command_substitutes = "kontrollera_död",

		death_timer_command = "dödstimer",
		death_timer_command_help = "Ändra tiden för respawn efter död.",
		death_timer_command_parameter_time = "tid",
		death_timer_command_parameter_time_help = "Tiden i sekunder du vill ställa in timern till. För att ta bort översättningen, lämna detta tomt.",
		death_timer_command_substitutes = "",

		-- game/hitmarkers
		hitmarkers_command = "träffmarkeringar",
		hitmarkers_command_help = "Slå på eller av ljud för träffmarkeringar.",
		hitmarkers_command_substitutes = "",

		-- game/hud
		watermark_command = "vattenstämpel",
		watermark_command_help = "Slå på eller av vattenstämpeln i mitten av skärmen.",
		watermark_command_substitutes = "",

		metrics_toggle_command = "mätvärden",
		metrics_toggle_command_help = "Slå på eller av mätvärdena i mitten av skärmen.",
		metrics_toggle_command_substitutes = "mätvärden, mätvärdesvisning",

		toggle_small_metrics_command = "toggle_small_metrics",
		toggle_small_metrics_command_help = "Växlar den lilla displayen för mätvärden (om /mätvärden också är växlad).",
		toggle_small_metrics_command_substitutes = "liten_mätare",

		toggle_phone_gps_command = "toggle_phone_gps",
		toggle_phone_gps_command_help = "Växlar minimappen som visas när du öppnar din telefon till fots.",
		toggle_phone_gps_command_substitutes = "telefon_gps",

		toggle_advanced_hud_command = "toggle_advanced_hud",
		toggle_advanced_hud_command_help = "Växlar den avancerade fordons-hud-en (RPM, växlar, etc.).",
		toggle_advanced_hud_command_substitutes = "avancerad_hud",

		toggle_hud_gauges_command = "vaxla_hud_matare",
		toggle_hud_gauges_command_help = "Vaxlar hudmatare (hastighet och varv/minut)",
		toggle_hud_gauges_command_substitutes = "matare",

		set_gauge_needle_command = "satt_matarenal",
		set_gauge_needle_command_help = "Satter stilen av HUD-matarenal (hastighet och varv/minut)",
		set_gauge_needle_command_parameter_needle = "mataren",
		set_gauge_needle_command_parameter_needle_help = "Matarens stil (pil/linje).",
		set_gauge_needle_command_substitutes = "gauge_needle",

		-- game/hunting
		animal_debug_command = "animal_debug",
		animal_debug_command_help = "Aktiverar/Deaktiverar felsökning för djur.",
		animal_debug_command_substitutes = "",

		-- game/injuries
		inspect_command = "inspect",
		inspect_command_help = "Inspekterar den närmaste spelaren efter skador.",
		inspect_command_substitutes = "",

		-- game/instances
		instance_create_command = "instance_create",
		instance_create_command_help = "Skapar en instans.",
		instance_create_command_substitutes = "i_create",

		instance_destroy_command = "instance_destroy",
		instance_destroy_command_help = "Förstör en instans.",
		instance_destroy_command_parameter_instance_id = "instans id",
		instance_destroy_command_parameter_instance_id_help = "ID-numret på instansen du vill radera.",
		instance_destroy_command_substitutes = "i_radera",

		instance_add_player_command = "instance_add_player",
		instance_add_player_command_help = "Lägger till en spelare till en instans.",
		instance_add_player_command_parameter_instance_id = "instans id",
		instance_add_player_command_parameter_instance_id_help = "ID-numret på instansen du vill lägga till en spelare till.",
		instance_add_player_command_parameter_server_id = "server id",
		instance_add_player_command_parameter_server_id_help = "Spelarens server-ID som du vill lägga till i instansen. Detta parameter är valfritt och om det lämnas blankt så väljer du automatiskt dig själv.",
		instance_add_player_command_substitutes = "i_add",

		instance_remove_player_command = "instance_remove_player",
		instance_remove_player_command_help = "Ta bort en spelare från en instans.",
		instance_remove_player_command_parameter_instance_id = "instans-ID",
		instance_remove_player_command_parameter_instance_id_help = "ID-numret på instansen som du vill ta bort en spelare från.",
		instance_remove_player_command_parameter_server_id = "server id",
		instance_remove_player_command_parameter_server_id_help = "Server-ID för spelaren du vill ta bort från instansen. Detta är ett valfritt parameter och kommer automatiskt välja dig själv om det lämnas tomt.",
		instance_remove_player_command_substitutes = "i_ta_bort",

		instance_get_players_command = "instance_hämta_spelare",
		instance_get_players_command_help = "Hämta alla spelare i en instans.",
		instance_get_players_command_parameter_instance_id = "instans id",
		instance_get_players_command_parameter_instance_id_help = "ID:n på instansen som du vill hämta spelarna från.",
		instance_get_players_command_substitutes = "i_spelare",

		quick_instance_command = "snabb_instans",
		quick_instance_command_help = "Skapar en instans och lägger till dig och en lista med spelare i den.",
		quick_instance_command_parameter_server_ids = "server-id:n",
		quick_instance_command_parameter_server_ids_help = "En kommaseparerad lista med server-id:n som du vill lägga till i instansen.",
		quick_instance_command_substitutes = "",

		-- game/interiors
		interior_debug_command = "interior_debug",
		interior_debug_command_help = "Toggla visning av felsökningtext för interiörer.",
		interior_debug_command_substitutes = "",

		draw_interiors_command = "ritainteriörer",
		draw_interiors_command_help = "Toggla ritning av interiörer.",
		draw_interiors_command_substitutes = "interiörer",

		draw_interior_portals_command = "ritainteriörportaler",
		draw_interior_portals_command_help = "Toggla ritning av interiörportaler.",
		draw_interior_portals_command_substitutes = "interiörportaler, portaler",

		random_interior_command = "slump_interiör",
		random_interior_command_help = "Teleportera till en slumpmässig interiör.",
		random_interior_command_substitutes = "",

		-- game/inventory
		trunk_command = "baklucka",
		trunk_command_help = "Försöker komma åt ett närliggande bagageutrymmesinventarium.",
		trunk_command_substitutes = "",

		wipe_ground_inventories_command = "radera_markinventarier",
		wipe_ground_inventories_command_help = "Radera markinventarier.",
		wipe_ground_inventories_command_parameter_radius = "radie",
		wipe_ground_inventories_command_parameter_radius_help = "Raderingsradien. Om du lämnar detta tomt väljs `100` automatiskt. Giltiga värden är över `0`, samt `0` och `-1`, som väljer alla inventarier.",
		wipe_ground_inventories_command_substitutes = "raderainvs, radera_inventarier, radera_mark",

		refresh_inventory_command = "uppdatera_inventory",
		refresh_inventory_command_help = "Tvingar en uppdatering av en viss inventory.",
		refresh_inventory_command_parameter_inventory_name = "inventorynamn",
		refresh_inventory_command_parameter_inventory_name_help = "Namnet på den inventory du vill uppdatera.",
		refresh_inventory_command_substitutes = "",

		toggle_big_inventory_command = "växla_stort_inventory",
		toggle_big_inventory_command_help = "Tillfälligt ökar antalet platser i din karaktärs inventory till 250.",
		toggle_big_inventory_command_substitutes = "stort_inventory",

		item_lookup_command = "föremålsupplookning",
		item_lookup_command_help = "Sök efter ett föremål med dess ID.",
		item_lookup_command_parameter_item_id = "föremåls-ID",
		item_lookup_command_parameter_item_id_help = "ID:t för det föremål du vill söka efter.",
		item_lookup_command_substitutes = "föremål",

		-- game/items
		clear_map_command = "rensa_karta",
		clear_map_command_help = "Rensar den sparade platsen för en karta.",
		clear_map_command_parameter_slot = "kartsplats",
		clear_map_command_parameter_slot_help = "Inventariets plats där kartan finns.",
		clear_map_command_substitutes = "",

		-- game/jackpot
		jackpot_command = "jackpot",
		jackpot_command_help = "Växla jackpot-gränssnittet.",
		jackpot_command_substitutes = "",

		jackpot_take_fees_command = "jackpot_take_fees",
		jackpot_take_fees_command_help = "Ta en avgift från alla jackpot-inventarier.",
		jackpot_take_fees_command_substitutes = "",

		-- game/locate
		locate_entity_command = "hitta_entitet",
		locate_entity_command_help = "Hitta en viss entitet på kartan.",
		locate_entity_command_parameter_filter = "filter",
		locate_entity_command_parameter_filter_help = "Vilket filter entiteten ska matcha (id: 12345, plåt: 90FMK072, osv.)",
		locate_entity_command_substitutes = "le",

		-- game/loot
		loot_debug_command = "loot_debug",
		loot_debug_command_help = "Toggla loot debuggen.",
		loot_debug_command_substitutes = "",

		-- game/lottery
		lottery_command = "lotteri",
		lottery_command_help = "Få den nuvarande statusen för lotteriet.",
		lottery_command_substitutes = "",

		claim_lottery_command = "kräva_lotteri",
		claim_lottery_command_help = "Kräva dina lotterivinster.",
		claim_lottery_command_substitutes = "",

		roll_lottery_command = "rulla_lotteri",
		roll_lottery_command_help = "Rulla lotteriet manuellt.",
		roll_lottery_command_substitutes = "",

		-- game/magazines
		refresh_magazines_command = "uppdatera_magasin",
		refresh_magazines_command_help = "Uppdatera magasinen om det har skett ändringar i databasen.",
		refresh_magazines_command_substitutes = "",

		-- game/mdt
		mdt_command = "mdt",
		mdt_command_help = "Växla MDT-gränssnittet.",
		mdt_command_substitutes = "",

		-- game/mechanics
		check_vehicle_upgrades_command = "check_vehicle_upgrades",
		check_vehicle_upgrades_command_help = "Kontrollerar om det närliggande fordonet har en motoruppgradering på nivå 5.",
		check_vehicle_upgrades_command_substitutes = "kolla_uppgraderingar, uppgraderingar",

		-- game/mining
		mining_debug_command = "mining_debug",
		mining_debug_command_help = "Växla gruvdrifts-felsökning.",
		mining_debug_command_substitutes = "",

		-- game/miscellaneous
		-- these two commands should remain the same on all languages in case someone joins in with a language they don't know.
		-- you can change the _help parts though if you'd like, not the "language code" though.
		language_command = "language",
		language_command_help = "Ställ in ditt föredragna språk. Bytet sparas för framtida sessioner. Ändringen sker omedelbart.",
		language_command_parameter_language = "språkkod",
		language_command_parameter_language_help = "Språkkoden du vill aktivera. För att se ditt nuvarande språk samt alla tillgängliga språk, skriv / languages. För standardspråket, lämna detta argument tomt.",
		language_command_substitutes = "språk",

		languages_command = "språk",
		languages_command_help = "Kontrollera ditt nuvarande språk samt alla andra tillgängliga språk.",
		languages_command_substitutes = "språk",

		ping_command = "ping",
		ping_command_help = "Få din nuvarande fördröjning till servern.",
		ping_command_substitutes = "",

		ooc_command = "ooc",
		ooc_command_help = "Sänd ett meddelande ut ur roll till hela servern.",
		ooc_command_parameter_message = "ooc meddelande",
		ooc_command_parameter_message_help = "Meddelandet du vill skicka.",
		ooc_command_substitutes = "",

		ooc_local_command = "ooc_local",
		ooc_local_command_help = "Sänd ett meddelande ut ur roll till närliggande spelare.",
		ooc_local_command_parameter_message = "ooc meddelande",
		ooc_local_command_parameter_message_help = "Meddelandet du vill skicka.",
		ooc_local_command_substitutes = "looc, oocl, ooclocal",

		ooc_on_command = "ooc_på",
		ooc_on_command_help = "Aktivera OOC-chatten om den är avstängd.",
		ooc_on_command_substitutes = "",

		ooc_off_command = "ooc_av",
		ooc_off_command_help = "Stäng av OOC-chatten om den är påslagen.",
		ooc_off_command_substitutes = "",

		copy_license_command = "kopiera_licens",
		copy_license_command_help = "Kopiera din egen Rockstar-licensidentifierare till Urklipp. (Används av personal för att identifiera dig)",
		copy_license_command_substitutes = "",

		clear_chat_command = "rensa_chatt",
		clear_chat_command_help = "Rensa chatten.",
		clear_chat_command_substitutes = "rensa, cls",

		clear_chat_all_command = "rensa_chat_alla",
		clear_chat_all_command_help = "Rensa chatten för alla.",
		clear_chat_all_command_substitutes = "rensaallt, rensaalla",

		mute_command = "tyst",
		mute_command_help = "Tysta en spelare från OOC-chatten och rapportkommandot.",
		mute_command_parameter_server_id = "server id",
		mute_command_parameter_server_id_help = "Spelarens server-ID som du vill tysta.",
		mute_command_parameter_expire = "utgång",
		mute_command_parameter_expire_help = "Längden på spelarens tystnad. Detta kan lämnas blankt på `0` eller `false` för en obestämd tystnad. Du kan använda w/d/h för längden. (ex: `3d2h` -> 3 dagar, 2 timmar)",
		mute_command_parameter_reason = "anledning",
		mute_command_parameter_reason_help = "Orsaken bakom spelarens tystnad.",
		mute_command_substitutes = "",

		unmute_command = "avtysta",
		unmute_command_help = "Avbryt tystnad för en spelare från OOC och rapporteringskommandot.",
		unmute_command_parameter_server_id = "serverid",
		unmute_command_parameter_server_id_help = "Server-ID för spelaren du vill avtysta.",
		unmute_command_substitutes = "",

		use_measurement_command = "använd_måttenhet",
		use_measurement_command_help = "Åsidosätt den föredragna måttenheten för denna plats.",
		use_measurement_command_parameter_measurement = "måttenhet",
		use_measurement_command_parameter_measurement_help = "Mätsystemet du vill använda. Giltiga värden är `Imperial` och `Metric`. Du kan lämna den här parametern tom eller ange ett ogiltigt värde för att använda standardinställningen.",
		use_measurement_command_substitutes = "mätning, mät",

		no_copyright_command = "ingen_upphovsrätt",
		no_copyright_command_help = "Denna kommando kommer att inaktivera alla potentiellt upphovsrättsskyddade ljud som kommer från ramverket när den är aktiverad.",
		no_copyright_command_substitutes = "",

		picture_command = "bild",
		picture_command_help = "Spawna en bild med en anpassad URL.",
		picture_command_parameter_url = "url",
		picture_command_parameter_url_help = "Bildens URL.",
		picture_command_parameter_description = "beskrivning",
		picture_command_parameter_description_help = "Bildens beskrivning.",
		picture_command_substitutes = "",

		tps_command = "tps",
		tps_command_help = "Få serverns nuvarande TPS.",
		tps_command_substitutes = "",

		uptime_command = "uptime",
		uptime_command_help = "Kontrollera serverns upptid.",
		uptime_command_substitutes = "",

		auto_run_command = "auto_spring",
		auto_run_command_help = "Sätt en tangentbordsknapp för automatisk löpning.",
		auto_run_command_parameter_control_id = "kontroll-id",
		auto_run_command_parameter_control_id_help = "ID:n för den kontroll du vill binda till automatisk löpning.",
		auto_run_command_substitutes = "",

		walk_forwards_command = "gå_framåt",
		walk_forwards_command_help = "Gör att du eller en annan spelare går framåt automatiskt (med försök att undvika hinder).",
		walk_forwards_command_parameter_server_id = "server ID",
		walk_forwards_command_parameter_server_id_help = "Server-ID:n för spelaren som du vill få att gå framåt.",
		walk_forwards_command_parameter_sprint = "sprinta",
		walk_forwards_command_parameter_sprint_help = "Oavsett om spelaren ska springa medan den går framåt eller inte. (Standard: false)",
		walk_forwards_command_substitutes = "",

		-- game/money
		cash_command = "cash",
		cash_command_help = "Visa din kontantsaldo.",
		cash_command_substitutes = "",

		bank_command = "bank",
		bank_command_help = "Visa ditt banksaldo.",
		bank_command_substitutes = "",

		give_cash_command = "ge_cash",
		give_cash_command_help = "Ge en annan spelare en viss summa pengar.",
		give_cash_command_parameter_server_id = "server id",
		give_cash_command_parameter_server_id_help = "Server-ID för spelaren du vill ge pengar.",
		give_cash_command_parameter_amount = "mängd",
		give_cash_command_parameter_amount_help = "Beloppet som du vill ge till spelaren i kontanter.",
		give_cash_command_substitutes = "",

		bill_player_command = "skicka_räkning",
		bill_player_command_help = "Skicka en viss summa pengar som en räkning till en annan spelare.",
		bill_player_command_parameter_server_id = "server id",
		bill_player_command_parameter_server_id_help = "Server-ID för spelaren som du vill skicka räkningen till.",
		bill_player_command_parameter_amount = "belopp",
		bill_player_command_parameter_amount_help = "Beloppet för kontanter som du vill fakturera spelaren.",
		bill_player_command_substitutes = "bill",

		-- game/notepads
		notepad_command = "anteckningsbok",
		notepad_command_help = "Aktivera eller inaktivera anteckningsboken.",
		notepad_command_substitutes = "",

		notepad_debug_command = "anteckningsbok_felsökning",
		notepad_debug_command_help = "Visar alla närliggande anteckningsboks-ID.",
		notepad_debug_command_substitutes = "",

		notepad_info_command = "anteckningsbok_info",
		notepad_info_command_help = "Ger information om en viss anteckningsbok.",
		notepad_info_command_parameter_notepad_id = "anteckningsboks-ID",
		notepad_info_command_parameter_notepad_id_help = "ID:et på anteckningsboken du vill ha information om.",
		notepad_info_command_substitutes = "",

		wipe_notepads_command = "radera_anteckningsböcker",
		wipe_notepads_command_help = "Raderar alla anteckningsblock inom en viss radie.",
		wipe_notepads_command_parameter_radius = "radie",
		wipe_notepads_command_parameter_radius_help = "Den radie du vill radera anteckningsblocken i (Max = 100).",
		wipe_notepads_command_substitutes = "",

		sign_notepad_command = "signera_anteckningsblock",
		sign_notepad_command_help = "Signerar ett anteckningsblock. (Sätter ditt namn längst ner och förhindrar vidare redigering)",
		sign_notepad_command_parameter_slot = "slot",
		sign_notepad_command_parameter_slot_help = "Inventarieslotet där anteckningsblocket finns.",
		sign_notepad_command_substitutes = "signera",

		-- game/notices
		add_notice_command = "add_notice",
		add_notice_command_help = "Lägger till ett flytande meddelande på din nuvarande position.",
		add_notice_command_parameter_message = "meddelande",
		add_notice_command_parameter_message_help = "Meddelandet du vill lägga till.",
		add_notice_command_substitutes = "",

		remove_notice_command = "remove_notice",
		remove_notice_command_help = "Tar bort ett visst meddelande som lagts till genom /add_notice.",
		remove_notice_command_parameter_message_id = "meddelande id",
		remove_notice_command_parameter_message_id_help = "Id:t på meddelandet du vill ta bort.",
		remove_notice_command_substitutes = "",

		-- game/objects
		frozen_objects_scan_command = "frostade_objekt_scan",
		frozen_objects_scan_command_help = "Skannar efter frostade objekt av en modell-hash och skriver det till en fil på servern.",
		frozen_objects_scan_command_parameter_model_name = "modellnamn",
		frozen_objects_scan_command_parameter_model_name_help = "Modellnamnet på objektet du vill skanna efter.",
		frozen_objects_scan_command_substitutes = "frostade_objekt",

		-- game/orbitcam
		orbitcam_command = "omloppscam",
		orbitcam_command_help = "Aktivera eller avaktivera omloppscam.",
		orbitcam_command_substitutes = "omlopp",

		-- game/overview
		overview_command = "överblick",
		overview_command_help = "Aktivera överblicksgränssnittet. Överblicksgränssnittet är ett OOC-interaktionsmeny, informationscenter och en datapresentation.",
		overview_command_substitutes = "",

		-- game/oxy
		oxy_tutorial_command = "oxy_guide",
		oxy_tutorial_command_help = "Spela Oxy-genomgången nästa gång du startar en runda.",
		oxy_tutorial_command_substitutes = "",

		-- game/panel
		panel_command = "panel",
		panel_command_help = "Visar en mini-adminpanel som låter dig se spelarnas anteckningar och lägga till nya.",
		panel_command_parameter_server_id = "server id",
		panel_command_parameter_server_id_help = "Server-ID för spelaren vars panel du vill se (måste vara online eller nyligen kopplad).",
		panel_command_substitutes = "",

		-- game/ped_messages
		me_command = "jag",
		me_command_help = "Beskriv vad din karaktär gör.",
		me_command_parameter_message = "meddelande",
		me_command_parameter_message_help = "Meddelandet som du vill skicka för att beskriva dina handlingar.",
		me_command_substitutes = "",

		do_command = "gör",
		do_command_help = "Visualisera bättre en rollspelsscenario.",
		do_command_parameter_message = "meddelande",
		do_command_parameter_message_help = "Meddelandet som du vill skicka för att hjälpa till att visualisera en rollspelsscenario.",
		do_command_substitutes = "",

		description_command = "beskrivning",
		description_command_help = "Bifoga ett meddelande till din ped för att beskriva dess funktioner.",
		description_command_parameter_message = "meddelande",
		description_command_parameter_message_help = "Meddelandet du vill bifoga till din ped.",
		description_command_substitutes = "",

		attempt_command = "försök",
		attempt_command_help = "Försök med 50% chans att lyckas.",
		attempt_command_parameter_message = "meddelande",
		attempt_command_parameter_message_help = "Ett meddelande om vad du försöker göra.",
		attempt_command_substitutes = "",

		dice_command = "tärning",
		dice_command_help = "Kasta en vanlig tärning.",
		dice_command_substitutes = "",

		roll_command = "rulla",
		roll_command_help = "En mer avancerad tärning med anpassade inställningar.",
		roll_command_parameter_rolls = "kast",
		roll_command_parameter_rolls_help = "Antal tärningskast du vill göra. Du kan göra högst 20.",
		roll_command_parameter_max = "max",
		roll_command_parameter_max_help = "Den högsta siffran du kan få i ett tärningskast. Den högsta siffran här är 100 000.",
		roll_command_substitutes = "",

		card_command = "kort",
		card_command_help = "Dra ett slumpmässigt kort.",
		card_command_substitutes = "",

		ped_messages_command = "ped_meddelanden",
		ped_messages_command_help = "Växla om ped-meddelanden ska visas i chatten eller inte.",
		ped_messages_command_substitutes = "",

		-- game/ped_spawn
		ped_spawn_command = "ped_spawn",
		ped_spawn_command_help = "Spawnar en NPC.",
		ped_spawn_command_parameter_model = "modell",
		ped_spawn_command_parameter_model_help = "Modellen för NPC:n du vill spawn.",
		ped_spawn_command_parameter_weapon = "vapen",
		ped_spawn_command_parameter_weapon_help = "Vilket vapen NPC:n ska ha (valfritt, \"false\" för att hoppa över).",
		ped_spawn_command_parameter_fearless = "orädd",
		ped_spawn_command_parameter_fearless_help = "Om NPC:n ska vara rädd för vapen/etc. (standard: nej).",
		ped_spawn_command_substitutes = "",

		ped_task_command = "npc_uppgift",
		ped_task_command_help = "Tilldelar dina skapade karaktärer en uppgift.",
		ped_task_command_parameter_task = "uppgift",
		ped_task_command_parameter_task_help = "Uppgiften som ska utföras av skapade karaktärer.",
		ped_task_command_parameter_target = "mål",
		ped_task_command_parameter_target_help = "Server-id för karaktär som ska vara målet (valfritt).",
		ped_task_command_substitutes = "",

		ped_emote_command = "ped_emote",
		ped_emote_command_help = "Låter dina skapade karaktärer utföra en viss rörelse.",
		ped_emote_command_parameter_emote = "rörelse",
		ped_emote_command_parameter_emote_help = "Rörelsen som ska utföras av skapade karaktärer.",
		ped_emote_command_substitutes = "",

		ped_remove_command = "ped_remove",
		ped_remove_command_help = "Tar bort alla dina skapade karaktärer.",
		ped_remove_command_substitutes = "",

		list_ped_emotes_command = "list_ped_emotes",
		list_ped_emotes_command_help = "Listar alla tillgängliga emotes för karaktärer.",
		list_ped_emotes_command_substitutes = "",

		list_ped_tasks_command = "list_ped_tasks",
		list_ped_tasks_command_help = "Listar alla tillgängliga uppdrag för karaktärer.",
		list_ped_tasks_command_substitutes = "",

		-- game/ped_steal
		ped_steal_command = "ped_steal",
		ped_steal_command_help = "Stjäl en annan spelares karaktär.",
		ped_steal_command_parameter_server_id = "server id",
		ped_steal_command_parameter_server_id_help = "Server ID:t för spelaren vars karaktär du vill stjäla.",
		ped_steal_command_substitutes = "stjäl_ped",

		-- game/ped_takeover
		takeover_ped_command = "ta_över_ped",
		takeover_ped_command_help = "Gör så att du kontrollerar en viss NPC.",
		takeover_ped_command_parameter_network_id = "network id",
		takeover_ped_command_parameter_network_id_help = "Nätverks-ID:t av NPC:en du vill ta över.",
		takeover_ped_command_substitutes = "ta_över",

		-- game/ped_tasks
		ped_debug_command = "ped_debug",
		ped_debug_command_help = "Debuggar information om en NPC.",
		ped_debug_command_parameter_network_id = "network id",
		ped_debug_command_parameter_network_id_help = "Nätverks-ID:t av NPC:en.",
		ped_debug_command_substitutes = "",

		-- game/phone_numbers
		custom_phone_number_command = "anpassat_telefonnummer",
		custom_phone_number_command_help = "Ändra ditt telefonnummer.",
		custom_phone_number_command_parameter_phone_number = "telefonnummer",
		custom_phone_number_command_parameter_phone_number_help = "Telefonnumret du vill ändra till. Se till att det följer formatet XXX-XXXX",
		custom_phone_number_command_substitutes = "anpassat_nummer",

		phone_number_available_command = "telefonnummer_tillgängligt",
		phone_number_available_command_help = "Kontrollera om ett telefonnummer är tillgängligt.",
		phone_number_available_command_parameter_phone_number = "telefonnummer",
		phone_number_available_command_parameter_phone_number_help = "Det telefonnummer du vill kontrollera om det är tillgängligt. Se till att det följer formatet XXX-XXXX.",
		phone_number_available_command_substitutes = "nummer_tillgängligt",

		-- game/player_control
		drive_for_command = "kör_för",
		drive_for_command_help = "Ta över en annan spelares fordon och kör åt dem.",
		drive_for_command_parameter_server_id = "server-ID",
		drive_for_command_parameter_server_id_help = "Server-ID:t för spelaren du vill ta över åt.",
		drive_for_command_substitutes = "",

		-- game/player_scales
		set_player_scale_command = "sätt_spelare_skala",
		set_player_scale_command_help = "Sätt spelarens skala.",
		set_player_scale_command_parameter_scale = "skala",
		set_player_scale_command_parameter_scale_help = "Skalan som du vill sätta dem till.",
		set_player_scale_command_parameter_server_id = "server ID",
		set_player_scale_command_parameter_server_id_help = "Server-ID som du vill använda för att sätta skalan. Om du lämnar detta tomt så väljs du automatiskt.",
		set_player_scale_command_substitutes = "spelare_skala, sätt_spelar_storlek, spelar_storlek",

		-- game/player_stats
		player_stats_command = "spelarstatistik",
		player_stats_command_help = "Aktiverar spelarstatistik funktionen.",
		player_stats_command_parameter_render_range = "renderingsområde",
		player_stats_command_parameter_render_range_help = "Ändrar renderingsområde för spelare. Standard är 200.",
		player_stats_command_substitutes = "",

		-- game/pole_dancing
		pole_dancing_offset_command = "pole_dancing_offset",
		pole_dancing_offset_command_help = "Aktiverar debug-verktyg för pole dancing offset.",
		pole_dancing_offset_command_parameter_model_name = "modellnamn",
		pole_dancing_offset_command_parameter_model_name_help = "Modellnamn du vill finjustera.",
		pole_dancing_offset_command_substitutes = "",

		-- game/properties
		properties_debug_command = "egenskaper_felsökning",
		properties_debug_command_help = "Aktivera eller avaktivera felsökningsläge för egenskaper.",
		properties_debug_command_substitutes = "egenskaper",

		-- game/props
		props_manage_command = "hantera_föremål",
		props_manage_command_help = "Hantera närliggande föremål.",
		props_manage_command_substitutes = "hantera_föremål, hf",

		spawn_prop_command = "skapa_föremål",
		spawn_prop_command_help = "Skapa ett föremål.",
		spawn_prop_command_parameter_model_hash = "modell",
		spawn_prop_command_parameter_model_hash_help = "Modellen för föremålet du vill skapa.",
		spawn_prop_command_parameter_network = "nätverk",
		spawn_prop_command_parameter_network_help = "Vill du nätverka objektet? Det rekommenderas att du endast aktiverar detta för objekt som ska kunna röra på sig.",
		spawn_prop_command_parameter_no_pickup = "ingen upphämtning",
		spawn_prop_command_parameter_no_pickup_help = "Ska detta objekt bara kunna plockas upp av superadmin?",
		spawn_prop_command_substitutes = "",

		spawn_exact_prop_command = "spawn_ett_exakt_objekt",
		spawn_exact_prop_command_help = "Skapa ett objekt på din exakta position.",
		spawn_exact_prop_command_parameter_model_name = "modellnamn",
		spawn_exact_prop_command_parameter_model_name_help = "Modellen för den prop du vill skapa.",
		spawn_exact_prop_command_parameter_ground = "mark",
		spawn_exact_prop_command_parameter_ground_help = "Om propen ska skapas på marken eller inte.",
		spawn_exact_prop_command_substitutes = "",

		props_debug_command = "props_debug",
		props_debug_command_help = "Debuggar alla props omkring dig.",
		props_debug_command_substitutes = "",

		delete_prop_command = "delete_prop",
		delete_prop_command_help = "Raderar en prop utifrån dess ID.",
		delete_prop_command_parameter_prop_id = "prop ID",
		delete_prop_command_parameter_prop_id_help = "ID-numret för den prop du försöker radera.",
		delete_prop_command_substitutes = "",

		wipe_props_command = "radera_props",
		wipe_props_command_help = "Raderar props runt dig.",
		wipe_props_command_parameter_radius = "radie",
		wipe_props_command_parameter_radius_help = "Radien för rensning (1-250).",
		wipe_props_command_substitutes = "",

		-- game/radio
		radio_command = "radio",
		radio_command_help = "Aktiverar eller avaktiverar radio-gränssnittet.",
		radio_command_substitutes = "",

		radio_debug_command = "radio_debug",
		radio_debug_command_help = "Aktiverar eller avaktiverar radio-felsökning.",
		radio_debug_command_substitutes = "",

		frequency_command = "frekvens",
		frequency_command_help = "Sätt vilken frekvens din radio ska använda.",
		frequency_command_parameter_frequency = "frekvens",
		frequency_command_parameter_frequency_help = "Frekvensen du vill ansluta till.",
		frequency_command_substitutes = "freq",

		force_frequency_command = "tvingad_frekvens",
		force_frequency_command_help = "Anslut till en radiokanal utan att behöva en radio eller vara i tjänst.",
		force_frequency_command_parameter_frequency = "frekvens",
		force_frequency_command_parameter_frequency_help = "Frekvensen du vill ansluta till.",
		force_frequency_command_substitutes = "",

		random_frequency_command = "slumpmässig_frekvens",
		random_frequency_command_help = "Sätter din radio till en slumpmässig frekvens.",
		random_frequency_command_substitutes = "slump_fre, sfrek",

		radio_sounds_command = "radio_ljud",
		radio_sounds_command_help = "Justera ljudvolymen för radioljudseffekter.",
		radio_sounds_command_parameter_volume = "ljudvolymnivå",
		radio_sounds_command_parameter_volume_help = "Ljudvolymnivån för radioljudseffekterna. Värdet måste vara mellan 0 och 1. Standardvärdet är 0.1. Lämna fältet tomt för att få din nuvarande ljudvolymnivå.",
		radio_sounds_command_substitutes = "",

		radio_volume_command = "radio_volym",
		radio_volume_command_help = "Justera radions volym.",
		radio_volume_command_parameter_volume = "volymnivå",
		radio_volume_command_parameter_volume_help = "Radions volymnivå. Värdet måste vara mellan 0 och 1. Standardvärdet är 0,5. Lämna detta tomt för att visa din nuvarande volymnivå.",
		radio_volume_command_substitutes = "",

		-- game/relationships
		relationships_debug_command = "debug_relationer",
		relationships_debug_command_help = "Växla mellan av/på för att visa felsökning av NPC-relationer.",
		relationships_debug_command_substitutes = "",

		-- game/reskin
		reskin_command = "omsättning",
		reskin_command_help = "Inled en omsättning för en spelare.",
		reskin_command_parameter_server_id = "server id",
		reskin_command_parameter_server_id_help = "Server-ID för spelaren du vill ändra utseendet på. Lämna detta tomt för att automatiskt välja dig själv.",
		reskin_command_substitutes = "",

		redeem_reskin_command = "omvandla_utseende",
		redeem_reskin_command_help = "Omvandla ett köpt utseende.",
		redeem_reskin_command_substitutes = "",

		-- game/riot_mode
		toggle_riot_mode_command = "kravall_läge",
		toggle_riot_mode_command_help = "Aktiverar eller avaktiverar kravall-läge för alla spelare.",
		toggle_riot_mode_command_substitutes = "",

		add_riot_player_command = "lägg_till_kravallspelare",
		add_riot_player_command_help = "Lägg till en spelare i 'kravall-listan' som kommer få omgivande medborgare att attackera den spelaren.",
		add_riot_player_command_parameter_server_id = "server id",
		add_riot_player_command_parameter_server_id_help = "Server-ID för spelaren du vill lägga till. Lämna detta tomt för att automatiskt välja dig själv.",
		add_riot_player_command_substitutes = "",

		remove_riot_player_command = "remove_riot_player",
		remove_riot_player_command_help = "Ta bort en spelare från 'kravall-listan'.",
		remove_riot_player_command_parameter_server_id = "server id",
		remove_riot_player_command_parameter_server_id_help = "Server-ID för spelaren du vill ta bort. Lämna detta tomt för att automatiskt välja dig själv.",
		remove_riot_player_command_substitutes = "",

		-- game/scoreboard
		metagame_command = "meta",
		metagame_command_help = "Slå på/av konstant visning av spelares server-ID.",
		metagame_command_substitutes = "metaspel, m",

		-- game/security_cameras
		security_cameras_command = "kameror",
		security_cameras_command_help = "Slå på/av kamerorna.",
		security_cameras_command_substitutes = "sec, seckam, seckameror, seckamera, seckameror, kameror, kamera, säkerhetskamera, säkerhetskameror, säkerhetskamerorna",

		security_cameras_scan_command = "kameror_scan",
		security_cameras_scan_command_help = "Hämta alla kända säkerhetskameraobjekt och lagra dem i en textfil.",
		security_cameras_scan_command_substitutes = "scan, scan_cams, scancams",

		security_cameras_health_command = "kamerors_hälsa",
		security_cameras_health_command_help = "Aktiverar verktyget för att felsöka kamerorna.",
		security_cameras_health_command_substitutes = "kam_hälsa",

		-- game/shield
		shield_command = "sköld",
		shield_command_help = "Aktiverar den ballistiska skölden.",
		shield_command_substitutes = "",

		-- game/shockwaves
		create_shockwave_command = "skapa_chockvåg",
		create_shockwave_command_help = "Skapar en chockvåg på din nuvarande position.",
		create_shockwave_command_parameter_force = "styrka",
		create_shockwave_command_parameter_force_help = "Kraften i stötvågen (1-1000).",
		create_shockwave_command_parameter_radius = "radie",
		create_shockwave_command_parameter_radius_help = "Radie på stötvågen (1-100).",
		create_shockwave_command_substitutes = "stötvåg",

		push_player_command = "skjut_spelare",
		push_player_command_help = "Skjut en spelare eller fordonet som hen befinner sig i bort från dig.",
		push_player_command_parameter_server_id = "server id",
		push_player_command_parameter_server_id_help = "Server id för spelaren.",
		push_player_command_substitutes = "skjut",

		-- game/shrooms
		draw_shroom_areas_command = "rita_svampområden",
		draw_shroom_areas_command_help = "Rita alla svampområden och lägg till fler.",
		draw_shroom_areas_command_substitutes = "svampområden",

		-- game/spying
		search_for_devices_command = "sök_efter_enheter",
		search_for_devices_command_help = "Sök efter närliggande enheter.",
		search_for_devices_command_substitutes = "sök_enheter, sökenheter, s4d",

		-- game/spectating
		spectate_command = "titta",
		spectate_command_help = "Titta på en viss spelare.",
		spectate_command_parameter_server_id = "server id",
		spectate_command_parameter_server_id_help = "Server-ID:t för spelaren du vill titta på.",
		spectate_command_substitutes = "spec",

		-- game/status
		status_reset_command = "återställ_status",
		status_reset_command_help = "Återställ statusnivåer.",
		status_reset_command_parameter_server_id = "server id",
		status_reset_command_parameter_server_id_help = "Spelarens server ID som du vill återställa statusen för. Om det lämnas tomt, väljs du automatiskt.",
		status_reset_command_substitutes = "sr",

		toggle_status_command = "toggle_status",
		toggle_status_command_help = "Stänger av (eller aktiverar) vissa statusar som hunger, törst och stress.",
		toggle_status_command_substitutes = "",

		set_body_armor_command = "set_body_armor",
		set_body_armor_command_help = "Sätt någon annans kroppsskyddsnivå.",
		set_body_armor_command_parameter_server_id = "server id",
		set_body_armor_command_parameter_server_id_help = "ServerIDn för spelaren vars rustning du vill ange. Du kan lämna detta fält tomt eller sätta värdet till `0` för att välja dig själv. Du kan också välja `-1` för att sätta rustningsnivån för alla spelare.",
		set_body_armor_command_parameter_body_armor_level = "rustningsnivå",
		set_body_armor_command_parameter_body_armor_level_help = "Rustningsnivån du vill ställa in. Värdet kan vara mellan `0` till `100`. Om du lämnar detta fält tomt eller anger ett ogiltigt värde kommer standardvärdet `100` att användas.",
		set_body_armor_command_substitutes = "skyddsväst, pansar",

		-- game/streamer_mode
		toggle_streamer_mode_command = "toggle_streamer_mode",
		toggle_streamer_mode_command_help = "Växla strömmarläge. Detta kommer att förhindra spelare från att använda de '18+' emoticons när du är i närheten och liknande.",
		toggle_streamer_mode_command_substitutes = "streamer_läge, streamer",

		-- game/sync
		time_hour_command = "tid_timme",
		time_hour_command_help = "Ställ in nuvarande klocktimme.",
		time_hour_command_parameter_hour = "timme",
		time_hour_command_parameter_hour_help = "Timmen du vill ställa in klockan till. Värdet måste vara mellan 0 och 23.",
		time_hour_command_parameter_transition = "övergång",
		time_hour_command_parameter_transition_help = "Om tiden ska ändras med en mjuk övergång (ja/nej, standard är nej).",
		time_hour_command_substitutes = "timme",

		time_minute_command = "tid_minut",
		time_minute_command_help = "Ställ in nuvarande klockminut.",
		time_minute_command_parameter_minute = "minut",
		time_minute_command_parameter_minute_help = "Minuten du vill ställa klockan till. Värdet måste vara mellan 0 och 59.",
		time_minute_command_substitutes = "minut",

		local_time_command = "lokal_tid",
		local_time_command_help = "Sätter tiden, men endast för dig.",
		local_time_command_parameter_time = "tid",
		local_time_command_parameter_time_help = "Tiden du vill ställa den lokala klockan till. Värdet måste vara mellan 0:00 och 23:59.",
		local_time_command_substitutes = "",

		local_weather_command = "lokal_väder",
		local_weather_command_help = "Sätter vädret, men endast för dig.",
		local_weather_command_parameter_weather = "väder",
		local_weather_command_parameter_weather_help = "Vädret du vill ställa det lokala vädret till. Tar samma värden som /weather.",
		local_weather_command_substitutes = "",

		brighter_nights_command = "ljusare_natter",
		brighter_nights_command_help = "Sätter tiden till 12:00 och vädret till extrasunny, men endast för dig.",
		brighter_nights_command_substitutes = "",

		weather_command = "vader",
		weather_command_help = "Ändrar vädret.",
		weather_command_parameter_weather = "vädernamn",
		weather_command_parameter_weather_help = "Namnet på vädret du vill att det ska vara. Giltiga vädernamn är EXTRASUNNY, CLEAR, CLOUDS, SMOG, FOGGY, OVERCAST, RAIN, THUNDER, CLEARING, NEUTRAL, SNOW, BLIZZARD, SNOWLIGHT, XMAS och HALLOWEEN.",
		weather_command_substitutes = "",

		advance_weather_command = "förbättra_väder",
		advance_weather_command_help = "Naturligt förbättra till nästa väder.",
		advance_weather_command_substitutes = "",

		freeze_time_command = "frysa_tid",
		freeze_time_command_help = "Växla om tiden är fryst eller inte.",
		freeze_time_command_substitutes = "",

		freeze_weather_command = "frysa_väder",
		freeze_weather_command_help = "Växla om vädret är fryst eller inte.",
		freeze_weather_command_substitutes = "",

		blackout_command = "svart_out",
		blackout_command_help = "Växla om en svart ut är aktiv eller inte.",
		blackout_command_substitutes = "",

		-- game/tablet
		tablet_command = "surfplatta",
		tablet_command_help = "Öppnar surfplatta UI (om du har en surfplatta).",
		tablet_command_substitutes = "",

		-- game/test_server
		set_vehicle_preset_command = "sätt_forvaltning_for_fordon",
		set_vehicle_preset_command_help = "Uppgraderar fullständigt och applicerar färger med angivet förval för fordonet du befinner dig i.",
		set_vehicle_preset_command_parameter_preset = "förval",
		set_vehicle_preset_command_parameter_preset_help = "Färgförval du vill använda (röd, blå, grön, gul, orange, vit, svart).",
		set_vehicle_preset_command_substitutes = "fordons_forval",

		detach_all_doors_command = "lossa_alla_dorrar",
		detach_all_doors_command_help = "Lossar alla dörrar på fordonet du befinner dig i.",
		detach_all_doors_command_substitutes = "",

		pop_all_tires_command = "spräng_alla_däck",
		pop_all_tires_command_help = "Spränger alla däck på fordonet du befinner dig i.",
		pop_all_tires_command_substitutes = "",

		upgrade_vehicle_fully_command = "uppgradera_forrdon_fullständigt",
		upgrade_vehicle_fully_command_help = "Uppgraderar det fordon du befinner dig i fullständigt.",
		upgrade_vehicle_fully_command_substitutes = "",

		random_vehicle_colors_command = "slumpmässiga_fordonfärger",
		random_vehicle_colors_command_help = "Slumpmässigt bestämmer färgen på fordonet du befinner dig i.",
		random_vehicle_colors_command_parameter_lights = "ljus",
		random_vehicle_colors_command_parameter_lights_help = "Om ljusen på fordonet också ska slumpmässigt bestämmas (xenon och neon).",
		random_vehicle_colors_command_substitutes = "",

		starve_command = "svälj",
		starve_command_help = "Sätter din hunger och törst till 0.",
		starve_command_substitutes = "",

		car_command = "bil",
		car_command_help = "Spawnar en slumpmässig bil.",
		car_command_substitutes = "",

		-- game/time_scale
		set_time_scale_command = "tidskalautställning",
		set_time_scale_command_help = "Ställer in serverns tidskalautställning.",
		set_time_scale_command_parameter_time_scale = "tidskalautställning",
		set_time_scale_command_parameter_time_scale_help = "Tidskalautställning du vill ställa in. Värdet måste vara mellan 0 och 1.",
		set_time_scale_command_substitutes = "tidskalautställning, långsamrörelse",

		-- game/titanic
		create_titanic_command = "skapa_titanic",
		create_titanic_command_help = "Skapa en Titanic som sjunker.",
		create_titanic_command_parameter_sink_time = "sjunktid",
		create_titanic_command_parameter_sink_time_help = "Antal minuter det ska ta innan båten är under vatten.",
		create_titanic_command_substitutes = "",

		-- game/top_down
		top_down_command = "överifrån",
		top_down_command_help = "Växlar till överifrån-vy.",
		top_down_command_substitutes = "",

		-- game/trackers
		tracker_command = "spårare",
		tracker_command_help = "Växla synlighet på din spårare.",
		tracker_command_substitutes = "",

		trackers_split_command = "spårare_delade",
		trackers_split_command_help = "Växla mellan att ha spårare lagrade inuti en kategori på kartan och att ha dem uppdelade.",
		trackers_split_command_substitutes = "",

		-- game/trains
		trains_debug_command = "tåg_debug",
		trains_debug_command_help = "Växla tågdebuggning.",
		trains_debug_command_substitutes = "",

		spawn_train_command = "spawn_tåg",
		spawn_train_command_help = "Spawna ett tåg.",
		spawn_train_command_parameter_track_id = "spår id",
		spawn_train_command_parameter_track_id_help = "Spåret du vill spawn tåget på. (1 till 12)",
		spawn_train_command_substitutes = "",

		-- game/treasure_maps
		spawn_map_piece_command = "spawn_kartbit",
		spawn_map_piece_command_help = "Spawna en karta bit.",
		spawn_map_piece_command_parameter_map_tier = "karttiers",
		spawn_map_piece_command_parameter_map_tier_help = "Karttiers till vilken du vill spawna en bit.",
		spawn_map_piece_command_parameter_piece_number = "delnummer",
		spawn_map_piece_command_parameter_piece_number_help = "Delnumret du vill spawn.",
		spawn_map_piece_command_substitutes = "",

		-- game/tsunami
		set_ocean_scaler_command = "set_ocean_scaler",
		set_ocean_scaler_command_help = "Modifiera globalt havsskalaren.",
		set_ocean_scaler_command_parameter_intensity = "intensitet",
		set_ocean_scaler_command_parameter_intensity_help = "Den intensitet du vill ställa in den på.",
		set_ocean_scaler_command_substitutes = "ocean_scaler, set_waves_intensity, waves_intensity",

		-- game/vdm
		vdm_command = "påkörning",
		vdm_command_help = "Försöker få den angivna NPC:n att köra på målet.",
		vdm_command_parameter_target = "mål",
		vdm_command_parameter_target_help = "Server-ID för målet.",
		vdm_command_parameter_network_id = "nätverks ID",
		vdm_command_parameter_network_id_help = "Nätverks-ID:n hos målets fordon.",
		vdm_command_substitutes = "",

		vdm_clear_command = "påkörning_rensa",
		vdm_clear_command_help = "Rensar alla dina påkörningsmål.",
		vdm_clear_command_substitutes = "",

		-- game/voice
		voice_debug_command = "röst_debug",
		voice_debug_command_help = "Aktivera/deaktivera röstdebuggning.",
		voice_debug_command_parameter_server_id = "server id",
		voice_debug_command_parameter_server_id_help = "Om du vill byta till 'röstdelningssökning' för någon annan, ange deras server-id här.",
		voice_debug_command_substitutes = "",

		muted_areas_debug_command = "muted_areas_debug",
		muted_areas_debug_command_help = "Ritar alla dämpade röstområden.",
		muted_areas_debug_command_substitutes = "muted_areas",

		listen_command = "lyssna",
		listen_command_help = "Växlar lyssningsläge för en viss användare. (Du kan höra vad de säger)",
		listen_command_parameter_server_id = "Server-id",
		listen_command_parameter_server_id_help = "Användaren du vill lyssna på.",
		listen_command_substitutes = "",

		toggle_voice_mute_command = "toggle_voice_mute",
		toggle_voice_mute_command_help = "Tystar eller un-tystar någon från röstchatten.",
		toggle_voice_mute_command_parameter_server_id = "server id",
		toggle_voice_mute_command_parameter_server_id_help = "Användaren du vill tysta/av-tysta.",
		toggle_voice_mute_command_substitutes = "voice_mute",

		-- game/wizard
		wizard_command = "wizard",
		wizard_command_help = "Öppnar en guide-menyn.",
		wizard_command_parameter_server_id = "server id",
		wizard_command_parameter_server_id_help = "Välj en viss spelare i menyn (valfritt).",
		wizard_command_substitutes = "",

		ragdoll_player_command = "ragdoll_player",
		ragdoll_player_command_help = "Låter en spelare ragdoll:a.",
		ragdoll_player_command_parameter_server_id = "server id",
		ragdoll_player_command_parameter_server_id_help = "Server-ID för spelaren du vill låta ragdoll:a.",
		ragdoll_player_command_parameter_force = "kraft",
		ragdoll_player_command_parameter_force_help = "Tillämpa en slumpmässig kraft på spelaren efter att ha låtit dem ragdoll:a.",
		ragdoll_player_command_substitutes = "",

		ragdoll_radius_command = "ragdoll_radius",
		ragdoll_radius_command_help = "Tvingar alla spelare inom en given radie att ragdoll slumpmässigt.",
		ragdoll_radius_command_parameter_radius = "radie",
		ragdoll_radius_command_parameter_radius_help = "Radien i vilken spelare kommer ragdoll.",
		ragdoll_radius_command_parameter_force = "kraft",
		ragdoll_radius_command_parameter_force_help = "Applicera en slumpmässig kraft på spelaren efter att de har blivit ragdoll.",
		ragdoll_radius_command_substitutes = "",

		punch_radius_command = "punch_radius",
		punch_radius_command_help = "Tvingar alla spelare inom en given radie att slå slumpmässigt.",
		punch_radius_command_parameter_radius = "radie",
		punch_radius_command_parameter_radius_help = "Radie där spelare kommer att slåss slumpmässigt.",
		punch_radius_command_substitutes = "",

		flashbang_command = "flashbang",
		flashbang_command_help = "Tänder en blixtlampa på en viss spelare.",
		flashbang_command_parameter_server_id = "server-id",
		flashbang_command_parameter_server_id_help = "Server ID för målet spelaren.",
		flashbang_command_substitutes = "",

		flashbang_radius_command = "flashbang_radius",
		flashbang_radius_command_help = "Tänder en blixtlampa på varje spelare inom en viss radie.",
		flashbang_radius_command_parameter_radius = "radie",
		flashbang_radius_command_parameter_radius_help = "Radie inom vilken spelare kommer att bli flashbangade.",
		flashbang_radius_command_parameter_include_self = "inkludera dig själv",
		flashbang_radius_command_parameter_include_self_help = "Om du vill flashbanga dig själv också.",
		flashbang_radius_command_substitutes = "",

		punch_command = "knocka",
		punch_command_help = "Tvingar en viss spelare att slå slumpvis.",
		punch_command_parameter_server_id = "server id",
		punch_command_parameter_server_id_help = "Server-ID för målspelaren.",
		punch_command_substitutes = "",

		explode_command = "explodera_spelare",
		explode_command_help = "Spränger en viss spelare.",
		explode_command_parameter_server_id = "server-ID",
		explode_command_parameter_server_id_help = "Server-ID för målet som ska sprängas.",
		explode_command_substitutes = "",

		ignite_player_command = "tända_spelare",
		ignite_player_command_help = "Tänder eld på en spelare för en kort stund.",
		ignite_player_command_parameter_server_id = "server-ID",
		ignite_player_command_parameter_server_id_help = "Server-ID för målet som ska tändas eld på.",
		ignite_player_command_substitutes = "tända, bränna",

		run_command_as_command = "kör_kommando_som",
		run_command_as_command_help = "Låter en annan spelare köra en kommando.",
		run_command_as_command_parameter_server_id = "server id",
		run_command_as_command_parameter_server_id_help = "Server ID för spelaren du vill köra kommandot som.",
		run_command_as_command_parameter_command = "kommando",
		run_command_as_command_parameter_command_help = "Kommandot du vill låta spelaren köra.",
		run_command_as_command_substitutes = "köras, sudo",

		ped_reverse_command = "ped_reverse",
		ped_reverse_command_help = "Låter närmaste NPC i en fordon backa.",
		ped_reverse_command_substitutes = "",

		ped_forwards_command = "ped_framåt",
		ped_forwards_command_help = "Får den närmaste fotgängaren i ett fordon att köra framåt.",
		ped_forwards_command_substitutes = "",

		-- global/entities
		local_entities_debug_command = "lokala_entiteter_debug",
		local_entities_debug_command_help = "Aktiverar/deaktiverar felsökningsfunktionen för lokala entiteter.",
		local_entities_debug_command_substitutes = "lentity",

		no_ped_population_areas_debug_command = "ingen_ped_befolkning_områden_debug",
		no_ped_population_areas_debug_command_help = "Aktiverar/deaktiverar 'inga fotgängar populationsområden' felsökare.",
		no_ped_population_areas_debug_command_substitutes = "",

		-- global/explosions
		create_explosion_command = "skapa_explosion",
		create_explosion_command_help = "Skapa en explosion.",
		create_explosion_command_parameter_explosion_type = "explosionstyp",
		create_explosion_command_parameter_explosion_type_help = "Explosionstypen.",
		create_explosion_command_parameter_damage_scale = "skada skala",
		create_explosion_command_parameter_damage_scale_help = "Skada som orsakas.",
		create_explosion_command_parameter_camera_shake = "kamera skaka",
		create_explosion_command_parameter_camera_shake_help = "Kamera skakning.",
		create_explosion_command_substitutes = "exp, spränga, explosion",

		-- global/functions
		confirm_yes_command = "ja",
		confirm_yes_command_help = "Bekräftar den nuvarande åtgärden.",
		confirm_yes_command_substitutes = "ja",

		confirm_no_command = "nej",
		confirm_no_command_help = "Avbryter den nuvarande åtgärden.",
		confirm_no_command_substitutes = "avbryt, stopp",

		-- global/states
		entity_states_command = "entity_states",
		entity_states_command_help = "Skriver ut alla delstater av en viss enhet.",
		entity_states_command_parameter_network_id = "nätverks-ID",
		entity_states_command_parameter_network_id_help = "Nätverks-ID:et för enheten.",
		entity_states_command_substitutes = "",

		-- illegal/corner
		corner_command = "hörn",
		corner_command_help = "Sälj droger till en person i närheten. Den drog du säljer baseras på platsen du befinner dig på.",
		corner_command_substitutes = "",

		corner_debug_command = "hörn_debug",
		corner_debug_command_help = "Visa alla säljområden.",
		corner_debug_command_substitutes = "",

		-- interfaces/interfaces
		clear_uis_command = "rensa_gränssnitt",
		clear_uis_command_help = "Rensa allt fokus från gränssnittet.",
		clear_uis_command_substitutes = "",

		interface_focuses_command = "gränssnitt_fokus",
		interface_focuses_command_help = "Kontrollera vilka gränssnitt som är inställda som fokus.",
		interface_focuses_command_substitutes = "gränssnittsfokus, fokus, fokuserar",

		--jobs/duty
		toggle_duty_status_command = "byt_arbetsstatus",
		toggle_duty_status_command_help = "Växlar din arbetsstatus.",
		toggle_duty_status_command_parameter_server_id = "server id",
		toggle_duty_status_command_parameter_server_id_help = "Målserver id eller tom om du vill växla din egen arbetsstatus.",
		toggle_duty_status_command_substitutes = "arbetsstatus, arbete",

		toggle_training_command = "byt_träningsstatus",
		toggle_training_command_help = "Växlar din träningsstatus.",
		toggle_training_command_substitutes = "träningsstatus, träning",

		toggle_operator_status_command = "växla_operator_status",
		toggle_operator_status_command_help = "Växla din status som nödoperatör. Med denna aktiverad kommer du att få möjligheten att acceptera 911-samtal.",
		toggle_operator_status_command_substitutes = "operatör, växla_operator, operator_status",

		-- jobs/police
		aim_assist_command = "sikte_assistans",
		aim_assist_command_help = "Växla PD-sikteassistans. (Till minne av Nathan Spencer.)",
		aim_assist_command_substitutes = "",

		undercover_command = "undercover",
		undercover_command_help = "Växla om du är under täckmantel eller inte. Detta kommer att dölja olika saker som vanligtvis avslöjar din polis-status.",
		undercover_command_substitutes = "",

		active_robberies_command = "aktiva_rån",
		active_robberies_command_help = "Visar alla för tillfället aktiva butiker, banker och juvelaffärer.",
		active_robberies_command_substitutes = "",

		pd_impound_command = "pd_beslagta",
		pd_impound_command_help = "Denna kommando beslagtar en spelares fordon under en viss period av tid.",
		pd_impound_command_parameter_minutes = "minuter",
		pd_impound_command_parameter_minutes_help = "Hur länge fordonet ska beslagtas (mellan 1 minut och 12 timmar).",
		pd_impound_command_substitutes = "",

		dispatch_command = "disponera",
		dispatch_command_help = "Skickar ett meddelande till polisens disponering.",
		dispatch_command_parameter_message = "meddelande",
		dispatch_command_parameter_message_help = "Meddelandet du vill skicka.",
		dispatch_command_substitutes = "",

		police_drive_mode_command = "polis_kör_läge",
		police_drive_mode_command_help = "Växla körläge för ditt polisfordon.",
		police_drive_mode_command_parameter_mode = "läge",
		police_drive_mode_command_parameter_mode_help = "Det läge du vill ha. \"D\" för drive och \"S\" för sport (sport är standard).",
		police_drive_mode_command_substitutes = "kör_läge",

		-- jobs/state
		license_give_command = "ge_licens",
		license_give_command_help = "Ge en licens.",
		license_give_command_parameter_character_id = "karaktärs ID",
		license_give_command_parameter_character_id_help = "ID:t för karaktären du vill ge licensen till.",
		license_give_command_parameter_license = "licens",
		license_give_command_parameter_license_help = "Licensen du vill ge. Du kan se vilka licenser som finns tillgängliga genom att använda `/license_list`.",
		license_give_command_substitutes = "utfärda_licens, lägg_till_licens",

		license_remove_command = "ta_bort_licens",
		license_remove_command_help = "Ta bort en licens.",
		license_remove_command_parameter_character_id = "karaktärs-id",
		license_remove_command_parameter_character_id_help = "ID:t för karaktären du vill ta bort licensen från.",
		license_remove_command_parameter_license = "licens",
		license_remove_command_parameter_license_help = "Licensen du vill ta bort. Du kan lista ut de tillgängliga licenserna genom att använda`/license_list`.",
		license_remove_command_substitutes = "ta_bort_licens",

		license_list_command = "licens_lista",
		license_list_command_help = "Lista alla tillgängliga licenser.",
		license_list_command_substitutes = "lista_licenser",

		licenses_check_command = "kontrollera_licenser",
		licenses_check_command_help = "Kontrollera någons licenser.",
		licenses_check_command_parameter_character_id = "karaktärs-id",
		licenses_check_command_parameter_character_id_help = "ID för karaktären vars licenser du vill kontrollera.",
		licenses_check_command_substitutes = "licens_kontroll, kontrollera_licens, kontrollera_licenser",

		licenses_command = "licenser",
		licenses_command_help = "Få dina licenser.",
		licenses_command_substitutes = "",

		-- jobs/tow
		toggle_mechanic_messages_command = "togglea_mekaniker_meddelanden",
		toggle_mechanic_messages_command_help = "Slå på eller av mottagande av mekaniker meddelanden.",
		toggle_mechanic_messages_command_substitutes = "mekaniker_meddelanden",

		-- vehicles/boats
		toggle_anchor_command = "togglea_ankare",
		toggle_anchor_command_help = "Slå på eller av ankaret på en närliggande båt.",
		toggle_anchor_command_substitutes = "ankare",

		-- vehicles/damage
		vehicle_damage_debug_command = "fordons_skade_felsökning",
		vehicle_damage_debug_command_help = "Felsöker fordonets aktuella skadevärden.",
		vehicle_damage_debug_command_substitutes = "",

		-- vehicles/fuel
		set_fuel_command = "sättbränsle",
		set_fuel_command_help = "Sätt bränslenivån för fordonet du är i.",
		set_fuel_command_parameter_fuel_level = "bränslenivå",
		set_fuel_command_parameter_fuel_level_help = "Bränslenivån du vill sätta den till. Om du lämnar denna tom så kommer det automatiskt väljas `100`.",
		set_fuel_command_substitutes = "bränsle",

		-- vehicles/garages
		toggle_garage_debug_command = "växlagaragefelsökning",
		toggle_garage_debug_command_help = "Växla felsökning för garaget.",
		toggle_garage_debug_command_substitutes = "garage_debug",

		-- vehicles/keys
		give_key_command = "ge_nyckel",
		give_key_command_help = "Ge en fordonsnyckel till en person i närheten.",
		give_key_command_parameter_server_id = "server id",
		give_key_command_parameter_server_id_help = "Server-id för en spelare du vill ge nyckeln till. Lämna detta tomt (eller använd 0) för att ge den till personen närmast dig.",
		give_key_command_substitutes = "ge_nyckel",

		hotwire_vehicle_command = "hacka_tändning",
		hotwire_vehicle_command_help = "Omedelbart hacka tändningen på fordonet du sitter i.",
		hotwire_vehicle_command_parameter_server_id = "server id",
		hotwire_vehicle_command_parameter_server_id_help = "Får en annan spelare att omedelbart starta fordonet de är i.",
		hotwire_vehicle_command_substitutes = "starta",

		pickup_keys_command = "plocka_upp_nycklar",
		pickup_keys_command_help = "Låter dig plocka upp nycklarna till det närmaste fordonet.",
		pickup_keys_command_substitutes = "",

		-- vehicles/modifications
		wheel_offset_command = "hjul_justering",
		wheel_offset_command_help = "Ändra hjulens justering på ett fordon.",
		wheel_offset_command_parameter_wheels = "fram/bak",
		wheel_offset_command_parameter_wheels_help = "Vilka hjul vill du ändra på?",
		wheel_offset_command_parameter_value = "värde",
		wheel_offset_command_parameter_value_help = "Beloppet du vill att det ska ändras. Detta kan vara någonstans från -0.15 till 0.15, 0 är standard.",
		wheel_offset_command_substitutes = "",

		wheel_rotation_command = "hjul_rotation",
		wheel_rotation_command_help = "Ändra rotation på ett fordon's hjul.",
		wheel_rotation_command_parameter_wheels = "fram/bak",
		wheel_rotation_command_parameter_wheels_help = "Vilka hjul vill du ändra på?",
		wheel_rotation_command_parameter_value = "värde",
		wheel_rotation_command_parameter_value_help = "Mängden du vill att det ska ändras. Detta kan vara från -0.5 till 0.5, där 0 är standard.",
		wheel_rotation_command_substitutes = "",

		-- vehicles/plates
		fake_plate_command = "falsk_skylt",
		fake_plate_command_help = "Aktivera/deaktivera en falsk skylt på det aktuella fordonet.",
		fake_plate_command_substitutes = "",

		plate_available_command = "registrering_ledig",
		plate_available_command_help = "Kontrollera om ett registreringsnummer är ledigt för kommandot `/custom_plate`.",
		plate_available_command_parameter_plate_number = "registreringsnummer",
		plate_available_command_parameter_plate_number_help = "Registreringsnumret du vill kontrollera. Registreringsnummer kan endast vara upp till 8 tecken långa och kan endast bestå av stora bokstäver och siffror.",
		plate_available_command_substitutes = "",

		custom_plate_command = "anpassad_registrering",
		custom_plate_command_help = "Ange en anpassad registreringsskylt för ett av dina fordon.",
		custom_plate_command_parameter_vehicle_id = "fordons-id",
		custom_plate_command_parameter_vehicle_id_help = "Fordons-IDn du vill ha den anpassade registreringsskylten på. (Du hittar denna ID i din garage)",
		custom_plate_command_parameter_plate_number = "registreringsnummer",
		custom_plate_command_parameter_plate_number_help = "Det registreringsnummer du vill sätta. Registreringsskyltar kan endast vara upp till 8 tecken långa och kan bara bestå av stora bokstäver och siffror.",
		custom_plate_command_substitutes = "",

		-- vehicles/runways
		ifr_command = "ifr",
		ifr_command_help = "Toggla IFR-läge (visa landningsassistans för närliggande landningsbanor).",
		ifr_command_substitutes = "",

		-- vehicles/sirens
		mute_sirens_command = "dämpa_sirener",
		mute_sirens_command_help = "Dämpar alla sirener och horn.",
		mute_sirens_command_substitutes = "",

		-- vehicles/vehicles
		flip_command = "vänd",
		flip_command_help = "Vänd upp en vält bil.",
		flip_command_substitutes = "",

		toggle_roll_control_command = "aktivera_roll_styrning",
		toggle_roll_control_command_help = "Aktiverar eller deaktiverar roll- och luftkontroll.",
		toggle_roll_control_command_substitutes = "roll_styrning",

		enable_ls_customs_command = "aktivera_ls_customs",
		enable_ls_customs_command_help = "Aktivera eller deaktivera menyn för LS Customs.",
		enable_ls_customs_command_substitutes = "ls_customs",

		toggle_gear_animation_command = "växel_animation",
		toggle_gear_animation_command_help = "Växlar mellan att visa eller dölja växlingsanimationer och ljud i fordon.",
		toggle_gear_animation_command_substitutes = "växelanim, växelljud",

		turtle_vehicle_command = "vänd_for_forset",
		turtle_vehicle_command_help = "Vänder ditt fordon uppochner.",
		turtle_vehicle_command_substitutes = "vänd_forset",

		door_command = "dörr",
		door_command_help = "Öppna eller stäng en dörr på ett fordon.",
		door_command_parameter_door_id = "dörr id (1-6)",
		door_command_parameter_door_id_help = "Vilken fordörr vill du öppna? Detta parameter överskrivs om du är passagerare. Du kan också använda detta kommando utanför ett fordon.",
		door_command_substitutes = "",

		window_command = "fönster",
		window_command_help = "Växla ett fordonets fönster.",
		window_command_parameter_window_id = "fönster id (1-4)",
		window_command_parameter_window_id_help = "Vilket fönster på fordonet vill du öppna? Detta parameter överskrivs om du är passagerare.",
		window_command_substitutes = "",

		shuffle_command = "blanda",
		shuffle_command_help = "Byt plats med en annan passagerare i fordonet.",
		shuffle_command_substitutes = "flytta_plats",

		seat_command = "plats",
		seat_command_help = "Byt till en annan plats i fordonet.",
		seat_command_parameter_seat_id = "plats id (1-6)",
		seat_command_parameter_seat_id_help = "Vilken plats vill du försöka byta till?",
		seat_command_substitutes = "",

		engine_command = "motor",
		engine_command_help = "Tänd eller stäng av fordonets motor.",
		engine_command_substitutes = "",

		mileage_command = "mätarställning",
		mileage_command_help = "Kolla fordonets mätarställning.",
		mileage_command_substitutes = "",

		toggle_disabled_brakes_command = "tryckav_bromsar",
		toggle_disabled_brakes_command_help = "Aktiverar eller inaktiverar bromsarna på närmaste fordon.",
		toggle_disabled_brakes_command_substitutes = "inaktivera_bromsar",

		manual_toggle_command = "manuell_växling",
		manual_toggle_command_help = "Aktivera eller inaktivera manuell växling för fordon.",
		manual_toggle_command_substitutes = "",

		speed_limiter_command = "hastighetsbegränsare",
		speed_limiter_command_parameter_speed = "hastighet",
		speed_limiter_command_parameter_speed_help = "Vilken hastighet vill du att hastighetsbegränsaren ska använda? Om du vill återställa hastighetsbegränsaren till normalt beteende, lämna denna parameter tom.",
		speed_limiter_command_help = "Aktivera hastighetsbegränsaren och sätt en förinställd hastighetsgräns.",
		speed_limiter_command_substitutes = "sl, cc, cruise_control",

		add_vehicle_command = "add_vehicle",
		add_vehicle_command_help = "Lägg till ett fordon i någons garage.",
		add_vehicle_command_parameter_model = "modell",
		add_vehicle_command_parameter_model_help = "Modellnamnet eller modell-hashen för fordonet du vill lägga till.",
		add_vehicle_command_parameter_server_id = "server-id",
		add_vehicle_command_parameter_server_id_help = "Spelarens server-ID som du vill ge ett fordon åt. Lämna detta tomt för att välja dig själv automatiskt.",
		add_vehicle_command_substitutes = "",

		toggle_vehicle_weapons_command = "växla_fordon_vapen",
		toggle_vehicle_weapons_command_help = "Växla om vapnen på fordonet kan användas eller ej.",
		toggle_vehicle_weapons_command_parameter_server_id = "server id",
		toggle_vehicle_weapons_command_parameter_server_id_help = "Spelarens serverID som du vill växla fordonets vapen för. Lämna detta tomt för att automatiskt välja dig själv.",
		toggle_vehicle_weapons_command_substitutes = "fordon_vapen",

		wheelie_command = "wheelie",
		wheelie_command_help = "Växlar wheelie läge. (Tryck på skift när du är i en bil.)",
		wheelie_command_parameter_power_level = "kraftnivå",
		wheelie_command_parameter_power_level_help = "Hur mycket kraft att tillämpa (standard är 2,5, sänk det om wheelien är för stark, höj det om den är för svag).",
		wheelie_command_substitutes = "",

		-- vehicles/vin_numbers
		vin_number_command = "vin_number",
		vin_number_command_help = "Returnerar VIN-numret för det fordon du kör.",
		vin_number_command_substitutes = "vin",

		vin_lookup_command = "vin_lookup",
		vin_lookup_command_help = "Söker upp VIN-numret för ett fordon.",
		vin_lookup_command_parameter_vin_number = "VIN-nummer",
		vin_lookup_command_parameter_vin_number_help = "VIN-numret du vill kontrollera.",
		vin_lookup_command_substitutes = "sök_vin, lv",

		-- weapons/ammo
		fill_ammo_command = "fyll_ammo",
		fill_ammo_command_help = "Fyll på all din vapenammunition.",
		fill_ammo_command_substitutes = "",

		-- weapons/recoil
		crosshair_command = "riktmedel",
		crosshair_command_help = "Växla riktmedlet.",
		crosshair_command_substitutes = "",

		aim_down_sight_command = "sikta",
		aim_down_sight_command_help = "Automatiskt sikta när du högerklickar även om du är i tredje person.",
		aim_down_sight_command_substitutes = "ads",

		-- weapons/weapons
		check_ammo_command = "kolla_ammo",
		check_ammo_command_help = "Kollar hur mycket ammo du har totalt för vapnet du håller i just nu.",
		check_ammo_command_substitutes = "ammo",

		toggle_airsoft_mode_command_command = "byt_airsoft_läge",
		toggle_airsoft_mode_command_command_help = "Växlar airsoft-läge (för hela servern), vilket gör att alla vapen gör otroligt låg skada.",
		toggle_airsoft_mode_command_command_substitutes = "airsoft_läge, airsoft",

		toggle_folded_stock_command_command = "byt_vikbar_kolv",
		toggle_folded_stock_command_command_help = "Växlar mellan att fälla ut och fälla in kolven på vapnet du för närvarande håller i.",
		toggle_folded_stock_command_command_substitutes = "fälld_kolv, kolv"
	},

	connections = {
		your_account_is_connecting = "Ditt konto ansluter från en ny session."
	},

	controls = {
		menu_control_up = "Meny Upp",
		menu_control_down = "Meny Ner",
		menu_control_left = "Meny Vänster",
		menu_control_right = "Meny Höger",

		menu_control_up_alternative = "Meny Upp Alternativ",
		menu_control_down_alternative = "Meny Ner Alternativ",
		menu_control_left_alternative = "Alternativ för vänster meny",
		menu_control_right_alternative = "Alternativ för höger meny"
	},

	core = {
		version = "Version"
	},

	discord = {
		one_player = "1 spelare",
		multiple_players = "${playerAmount} spelare",
		join_with_fivem = "Gå med med FiveM",
		discord_guild = "Discord-guild",
		richer_presence_on = "Mer detaljerad status visas nu.",
		richer_presence_off = "Mer detaljerad status visas inte längre."
	},

	emojis = {
		emoji_list = "Emoji-lista: ${emojis}",
		refresh_emojis_no_permissions = "Spelaren försökte uppdatera emojis utan tillräckliga behörigheter.",
		api_reported_no_updates = "Discord API rapporterade inga uppdateringar i emoji-listan.",
		emojis_added = "Lade till ${added} emoji(er).",
		emojis_removed = "Tog bort ${removed} emoji(er).",
		emojis_updated = "Lade till ${added} emoji(er) och tog bort ${removed} emoji(er)."
	},

	errors = {
		script_location = "Skriptplats",
		additional_information = "Ytterligare information",
		error_report = "Felrapport",
		send_report = "Skicka rapport",
		abort_report = "Avbryt rapport",
		input_placeholder = "Vänligen berätta vad du gjorde när detta fel inträffade...",
		oh_no = "Åh nej,",
		an_error_has_occurred = "ett fel har inträffat!",
		error_occured_information = "Detta indikerar att något inte fungerar korrekt eller enligt avsikt. Vi ber dig vänligen att hjälpa oss att lösa detta problem genom att tillhandahålla ytterligare detaljer om vad du gjorde när detta fel uppstod."
	},

	ping = {
		get_pings_missing_permissions = "Spelaren försökte hämta pingar men hade inte behörighet att göra det.",
		getting_pings = "Hämtar pingar från alla spelare. Detta kan ta några sekunder.",
		host_data = "${position}. ${location} - ${averagePing} Genomsnittlig Ping (baserat på ${totalPings} spelare), 10% Låg: ${averagePingLow}, 10% Hög: ${averagePingHigh}",
		list_hosts = "${listHosts}"
	},

	profile = {
		profile_debug_enabled = "Profildebuggern har aktiverats. Kontrollera F8-konsolen för utdata.",
		profile_debug_disabled = "Profildebuggern har inaktiverats."
	},

	queue = {
		joining_the_queue = "Går med i kön...",
		timed_out_before_joining = "Du tajmade ut innan du hann ansluta till servern.",
		server_reload_while_in_loading = "Serverns kärna laddas om och eftersom du inte laddades in korrekt så kickades du automatiskt ut.",
		server_reload_while_in_queue = "Serverns kärna startas om. Vänligen anslut till kön igen.",
		took_too_long_to_connect = "Det tog för lång tid för dig att ansluta!",
		queue_position_with_priority = "🐌 Du är nummer ${queueEntryId}/${queueLength} i kön med ${priorityName} prioritet. 🕐${queueTime}${liveOnTwitch}",
		queue_position_without_priority = "🐌 Du är nummer ${queueEntryId}/${queueLength} i kön. 🕐${queueTime}\nTrött på att stå i kö? Stöd oss för kön prioritet!\n\n${webstoreURL}${liveOnTwitch}",
		live_on_twitch = "\n\nÄr du uttråkad? Kolla in dessa streamers! \n${streamers}",
		server_is_starting = "Väntar på att servern ska starta...",
		cancelled_before_server_start = "Anslutningen avbröts innan servern hade startat.",
		kicked_from_queue = "Du har blivit kickad från kö för anledningen `${reason}`.",
		kicked_from_queue_no_reason = "Du har blivit kickad från kö utan angiven anledning.",
		missing_slots_parameter = "Saknar `slots` parameter.",
		invalid_slots_parameter = "Ogiltig `slots` parameter.",
		slots_parameter_out_of_range = "Parametern `slots` måste vara mellan `0` och `1025`.",
		slots_already_set_to = "Serverplatserna är redan inställda på `${slots}`.",
		slots_set_to = "Serverplatserna har nu ställts in på `${slots}`.",

		invalid_license_identifier_parameter = "Saknad eller ogiltig parameter för 'licenseIdentifier'.",
		invalid_target_position_parameter = "Saknad eller ogiltig parameter för 'targetPosition'.",
		player_not_found_in_queue = "Spelaren hittades inte i kön.",
		player_queue_moved_success = "Spelarens position i kön har uppdaterats.",
		player_queue_skipped_success = "Spelaren har hoppat över kön framgångsrikt.",
		queue_is_not_ready = "Kön är inte redo, så den kan inte hoppas över.",

		welcome_to = "Välkommen till"
	},

	restart = {
		restart_30_minutes = "Servern kommer att starta om om 30 minuter!",
		restart_15_minutes = "Servern kommer att starta om om 15 minuter!",
		restart_10_minutes = "Servern kommer att starta om om 10 minuter!",
		restart_5_minutes = "Servern kommer att starta om om 5 minuter!",
		restart_3_minutes = "Servern kommer att starta om om 3 minuter!",
		restart_2_minutes = "Servern kommer att starta om om 2 minuter!",
		restart_1_minute = "Servern kommer att starta om om 1 minut!",
		server_restarting = "Servern startar om. Du kan återansluta om några minuter.",
		executed_restart_command = "Restartkommandot utfört.",
		already_executed_restart_command = "Restartkommandot har redan utförts."
	},

	routes = {
		route_not_found = "Rutt ${route} hittades inte.",
		route_restricted = "Rutt ${route} är begränsad.",
		internal_server_error = "Internt serverfel."
	},

	users = {
		playtime = "Speltid",
		player_playtime = "${playerName} (Position ${position})\nTotal speltid: ${totalPlaytime}\nSession speltid: ${sessionPlaytime}",
		leaderboard = "Ledartavla",
		your_position = "Din position",
		logs_user_reject_connection_title = "Anslutning avvisad",
		logs_user_reject_connection_details = "Avvisade anslutning från ${consoleName} (`${reason}`).",
		logs_user_connected_title = "Användare ansluten",
		logs_user_connected_details = "${consoleName} har anslutit till servern.",
		logs_user_joined_title = "Användare har anslutit",
		logs_user_joined_details = "${consoleName} har anslutit till servern.",
		logs_user_dropped_title = "Användare frånkopplad",
		logs_user_dropped_details = "${consoleName} har frånkopplats från servern efter att ha spelat i ${playtime}, anledning: `${reason}`.",
		logs_character_loaded_title = "Karaktär Laddad",
		logs_character_loaded_details = "${consoleName} har laddat karaktär ${fullName} (${characterId}).",
		logs_character_unloaded_title = "Karaktär Avladdad",
		logs_character_unloaded_details = "${consoleName} har avladdat karaktär ${fullName} (${characterId}).",
		logs_character_unloaded_details_reason = "${consoleName} har avladdat karaktär ${fullName} (${characterId}) med anledning `${reason}`.",
		logs_character_created_title = "Karaktär Skapad",
		logs_character_created_details = "${consoleName} har skapat karaktär ${fullName} (${characterId}).",
		logs_character_deleted_title = "Roll Bort för Karaktär",
		logs_character_deleted_details = "${consoleName} har raderat karaktär ${fullName} (${characterId}).",
		server_core_is_restarting = "Serverns kärna startar om.",
		you_timed_out = "Du har blivit utloggad pågrund av inaktivitet.",
		kicked_for_no_specified_reason = "Du har blivit utkickad utan angiven anledning.",
		kicked_player = "En spelare har blivit utkickad.",
		kicked_player_and_removed_reconnect_priority = "En spelare har blivit utkickad och deras återanslutningsprioritet har tagits bort.",
		kicked_player_and_failed_to_remove_reconnect_priority = "En spelare har blivit utkickad men det gick inte att ta bort deras återanslutingsprioritet.",
		removed_player_from_queue = "Tog bort spelare från kön.",
		player_not_found = "Spelare hittades inte.",
		missing_license_identifier = "Saknar `licenseIdentifier`.",
		package = "Paket",
		package_updated = "Ditt paket har uppdaterats till `${packageName}`.",
		package_updated_remaining_time = "Ditt paket har uppdaterats till `${packageName}`. Det kommer att förfalla om ${remainingTime}.",
		package_expired = "Ditt paket har förfallit.",
		package_same = "Ditt paket är `${packageName}`.",
		package_same_remaining_time = "Ditt paket är `${packageName}`. Det kommer att förfalla om ${remainingTime}.",
		no_package = "Du har inte något paket.",
		fetching_package_error = "Ett fel uppstod under försök att hämta dina paketdata.",
		check_playtime_not_staff = "Spelaren försökte kolla någon annans speltid, men hade inte tillräckliga behörigheter för att göra det.",
		reason_unknown = "Orsak okänd.",

		unloaded_character = "Avladdad karaktär.",
		user_does_not_have_sent_character_loaded = "Användaren har inte den skickade karaktären laddad.",
		user_has_no_character_loaded = "Användaren har ingen karaktär laddad.",
		user_not_found = "Den sökta användaren hittades inte på servern.",
		invalid_character_id = "Ogiltigt karaktärs-id-parameter skickad.",
		invalid_license_identifier = "Ogiltigt licensidentifieringsparameter skickad.",

		unload_character_not_staff = "Spelaren försökte avladda en karaktärs karaktär men de var inte personal.",

		unloaded_character_for_player_logs_title = "Avladdad karaktär för spelare",
		unloaded_character_for_player_logs_details = "${consoleName} avladdade ${targetConsoleName}'s karaktär ${characterFullName} (${characterId}) med anledningen `${message}`.",
		unloaded_character_for_player_no_reason_logs_details = "${consoleName} avlastade ${targetConsoleName}'s karaktär ${characterFullName} (${characterId}) utan angiven anledning.",
		unloaded_character_self_logs_title = "Avlastade Karaktär",
		unloaded_character_self_logs_details = "${consoleName} avlastade sin egen karaktär ${characterFullName} (${characterId}) med anledningen `${message}`.",
		unloaded_character_self_no_reason_logs_details = "${consoleName} avlastade sin egen karaktär ${characterFullName} (${characterId}) utan angiven anledning.",

		unloaded_character_for_user = "Laddade ur karaktär ${characterFullName} (${characterId}) för ${consoleName}.",
		user_with_server_id_has_no_character_loaded = "Användaren med server-ID `${serverId}` har ingen laddad karaktär.",
		user_with_server_id_not_found = "Kunde inte hitta användaren med server-ID `${serverId}` på servern.",

		custom_plate = "Anpassad skylt",
		custom_character_id = "Anpassat karaktärs-ID",
		custom_phone_number = "Anpassat telefonnummer",
		reskin = "Byt utseende",

		no_player_packages = "Du har inga spelarpaket.",
		player_packages = "Spelarpaket:\n${playerPackages}",
		player_package = "- ${label}: ${amount}x",

		appreciated_tier = "Upattat nivå",
		respected_tier = "Respekterat nivå",
		heroic_tier = "Heroisk nivå",
		legendary_tier = "Legendarisk nivå",
		godlike_tier = "Gudalik nivå"
	},

	-- game/*
	admin_menu = {
		menu_title = "Admin meny",
		spectate_player = "Spectatea spelare",
		teleport_player = "Teleportera till spelare",
		teleport_player_here = "Teleportera spelare till dig",
		failed_teleport_to_player = "Kunde inte teleportera till spelare.",
		failed_teleport_player_here = "Kunde inte teleportera spelare till dig.",
		invalid_target_server_id = "Ogiltigt destinationsserver-ID.",
		invalid_destination_server_id = "Ogiltigt målserver-ID.",
		invalid_source_server_id = "Ogiltigt källserver-ID.",
		failed_teleport_player_to_player = "Kunde inte teleportera spelare till spelare.",
		teleported_player_to_player = "Teleporterade spelare till spelare.",

		teleport_player_missing_permissions = "Spelaren försökte teleportera en annan spelare men hade inte nödvändiga rättigheter för att göra det."
	},

	afk = {
		you_are_afk = "Du är AFK. Din karaktär kommer snart att bli oinloggad.",
		move_mouse = "Rör på musen för att sluta vara inaktiv.",
		you_have_been_unloaded_for_being_afk = "Du har varit inaktiv under en längre tid. Tänk på att gå till karaktärsvalsskärmen nästa gång."
	},

	airdrops = {
		create_airdrop_missing_permissions = "Spelaren försökte skapa ett paket med fallskärm men saknade behörighet för att göra det.",
		created_airdrop = "Skapade ett paket med fallskärm av typen `${airdropType}` med totalt ${itemAmount} stycken föremål."
	},

	airports = {
		airport = "Flygplats",
		press_to_access_spawner = "Tryck ~INPUT_CONTEXT~ för att öppna fordonsspawner.",
		no_spawner_licenses = "Du har inga licenser för denna fordonsåterförsäljare.",
		vehicle_lists = "Fordonslistor",
		parked_vehicle = "Parkera fordon.",
		press_to_park_vehicle = "Tryck på ~INPUT_CONTEXT~ för att parkera fordonet.",
		no_vehicle_to_park = "Det finns inget fordon att parkera.",
		park_vehicle = "Parkera fordon",
		park_vehicle_outside = "Parkera fordon utanför",
		close_menu = "Stäng menyn",
		spawned_vehicle = "Skapade fordon.",
		spawner_on_timeout = "Fordonsåterförsäljaren tar en paus. Försök igen senare.",
		spawn_area_not_clear = "Området är inte tomt nog för att skapa fordon.",
		return_button = "Återgå",
		deposit = "$${amount} Insättning",
		no_deposit = "Ingen Insättning",
		deposit_not_enough_money = "Du har inte tillräckligt med pengar för att betala insättningen."
	},

	airstrike = {
		create_airstrike_missing_permissions = "Spelaren försökte skapa en flygbombning men hade inte de nödvändiga behörigheterna för att göra det.",

		airstrike_success = "Flygbombning skapad framgångsrikt.",
		airstrike_failed = "Misslyckades med att skapa en flygbombning."
	},

	airsupport = {
		create_airsupport_missing_permissions = "Spelaren försökte kalla in luftstöd men hade inte de nödvändiga behörigheterna för att göra det.",

		distance = "Avstånd: ${distance}${unit}",
		time_to_impact = "ETI: ${timeToImpact}",

		out_of_range = "~r~FÖR LÅNGT BORT",

		km = "km",
		mi = "mi",

		airsupport_failed = "Misslyckades med att kalla flygstöd."
	},

	alcohol = {
		now_sober = "Du är nykter igen.",
		drunk_state_1 = "Du är lätt berusad.",
		drunk_state_2 = "Du är full.",
		drunk_state_3 = "Du är mycket full.",
		drunk_state_4 = "Du är farligt full."
	},

	alerts = {
		close = "Stäng",

		alert_title = "Varning",

		invalid_server_id = "Ogiltigt server-id.",
		missing_content = "Saknar innehåll.",

		show_alert_success = "Visade varning till spelare.",
		show_alert_everyone_success = "Meddelandet har lyckats skickas till alla.",
		show_alert_failed = "Det gick inte att skicka meddelandet till spelaren.",

		show_alert_missing_permissions = "Spelaren försökte skicka en varning till en annan spelare men hade inte tillräckliga behörigheter."
	},

	arcade = {
		use_arcade_machine = "Tryck ~INPUT_CONTEXT~ för att använda Arkadmaskinen. Kostnaden är $${cost}.",
		finished_arcade_logs_title = "Slutförd Arkad",
		finished_arcade_logs_details = "${consoleName} har slutfört en arkadspel med poängen `${score}`."
	},

	archives = {
		press_to_access_archives = "Tryck på ~INPUT_CONTEXT~ för att komma åt arkiven.",
		archives_title = "Arkiv",
		no_archives = "Det finns inga arkiv här.",
		close_menu = "Stäng Meny",
		archive_label = "Ärende Nr. ${case}",

		failed_get_archives = "Kunde inte hämta arkiv.",
		failed_not_on_duty = "Du är inte i tjänst.",

		archive_created = "Arkiv med ärendenr. ${case} skapades framgångsrikt.",
		invalid_case_number = "Ogiltigt ärendenummer (ett heltal mellan 1 och 99999).",
		not_near_archive = "Du är inte nära ett arkiv.",
		failed_create_archive = "Misslyckades med att skapa arkiv.",
		archive_already_exists = "Ärendenumret finns redan i detta arkiv.",
		archive_destroyed = "Arkiv med ärendenummer ${case} har raderats.",
		archive_maximum_case_count = "Du kan inte skapa fler ärenden.",
		failed_destroy_archive = "Misslyckades att radera arkivet.",
		destroy_not_empty = "Du kan bara ta bort tomma arkiv.",

		create_archive_logs_title = "Skapat arkiv",
		create_archive_logs_details = "${consoleName} skapade ett ärende i arkivet `${archiveName}` med ärendenummer `${caseNumber}`.",
		destroy_archive_logs_title = "Arkiv förstört",
		destroy_archive_logs_details = "${consoleName} förstörde en fall i `${archiveName}` arkivet med fallnummer `${caseNumber}`."
	},

	arena = {
		player_died = "${name} dog.",
		player_killed = "${killerName} dödade ${name} med ${deathCause} (${distance}m).",
		hud_info = "Antal spelare: ${playerAmount}\n\nDödsfall: ${deaths}\nDödade: ${kills}",
		press_to_access_menu = "Tryck på ~INPUT_INTERACTION_MENU~ för att komma åt Arenamenyn.",
		this_command_is_only_for_arena = "Denna kommando är enbart för Arena.",
		stand_still_to_respawn = "Stå stilla i 5 sekunder för att återuppstå.",
		respawn_cancelled = "Återuppståndelsen har avbrutits eftersom du rörde på dig.",
		arena_suicide_reason = "Självmord",
		arena = "Arena",
		ordered_airdrop = "Beställt luftsläpp",

		store = "Butik",
		team = "Lag",
		leaderboard = "Leaderboard",
		search = "Sök",
		add_to_cart = "Lägg till i kundvagn",
		unlocks_at_level = "Låses upp på nivå ${level}",
		show_vehicles = "Visa fordon",
		hide_vehicles = "Dölj fordon",
		balance = "Saldo: $${balance}",
		shopping_cart = "${items} varor ($${cost})",
		buy_now = "Köp nu",
		call_airdrop = "Kalla Airdrop",
		empty = "Tom",
		clear_cart = "Töm varukorgen",
		can_not_afford = "Kan inte köpa",
		brokie_lol = "Fattigt skämt",
		confirmation_exit_arena = "Är du säker på att du vill lämna arenan?",
		confirmation_buy_now = "Är du säker på att du vill köpa ${label} för $${cost}?",
		yes = "Ja",
		no = "Nej",
		empty_slot = "Tom slot",
		team_name = "Lagnamn",
		level = "Nivå",
		arena = "Arena",
		battle_royale = "Slagfält Royale",
		arena_gun_game = "Arena Gevärsfight",
		lottery = "Lotto",
		daily_tasks = "Dagliga uppgifter",
		categories = "Kategorier",
		refresh = "Uppdatera",
		refreshing = "Uppdaterar...",
		not_available = "Ej tillgängligt",

		kill = "Döda",
		headshot = "Headshot",
		killstreak = "Dödstripp",
		assist = "Assist",

		level = "Nivå",
		position = "Position",
		name = "Namn",
		kills = "Dödade",
		deaths = "Dödsfall",
		kd = "K/D",
		hits = "Träffar",
		hits_headshots = "HS",
		headshot_ratio = "HS-förhållande",
		damage_dealt = "Skada gjord",
		damage_taken = "Skada tagen",
		matches_played = "Spelade matcher",
		wins = "Vinster",
		win_ratio = "Vinstförhållande",
		xp = "XP",
		money_won = "Vunna pengar",
		average_percentage = "Genomsnittlig procent",
		streak = "Streak"
	},

	atms = {
		withdraw = "Ta ut",
		deposit = "Sätt in",
		balance = "Saldo",
		transfer = "Överför",
		back = "Tillbaka",

		amount = "Belopp",
		target = "Mottagare",

		failed_deposit = "Kunde inte sätta in pengar",
		failed_withdraw = "Kunde inte ta ut pengar",
		failed_transfer = "Kunde inte överföra pengar",

		processing = "Bearbetar...",
		counting_bills = "Räknar pengar...",

		something_went_wrong = "Något gick fel.",
		error_not_online = "Mottagaren är inte tillgänglig.",
		error_not_enough_money = "Inte tillräckligt med pengar.",
		deposit_amount_big = "ATM-insättningar är begränsade till $4,000.",
		withdraw_amount_big = "ATM-uttag är begränsade till $6,000.",

		retrieving_card = "Hämtar kort",
		atm_damaged = "Denna ATM är skadad",

		press_to_use = "Tryck på ~g~${InteractionKey} ~w~för att använda ATM",
		press_to_interact_bank = "Tryck på ~g~${InteractionKey} ~w~för att interagera med banken",

		deposit_log_bank_title = "Bankinsättning",
		deposit_log_atm_title = "ATM-insättning",
		deposit_log = "${consoleName} satte in $${amount}.",

		withdraw_log_bank_title = "Bankuttag",
		withdraw_log_atm_title = "ATM Utdrag",
		withdraw_log = "${consoleName} tog ut $${amount}.",

		transfer_log_title = "Bank Överföring",
		transfer_log = "${consoleName} (#${characterId}) överförde $${amount} till ${targetConsoleName} (#${targetCharacterId})."
	},

	attachments = {
		cancel_attachments = "Avbryt",
		finish_attachments = "Godkänn",

		modifying_attachments = "Ändrar ${amount} Tillbehör",

		failed_apply = "Kunde inte tillämpa tillbehör.",
		no_item = "Vapnet finns inte i din inventory längre.",
		no_attachment = "Du har inte det nödvändiga tillbehöret.",
		no_paint = "Du har ingen färg.",
		success = "Tillbehören applicerades lyckat.",

		not_available = "Du har inte detta tillbehör i ditt inventarium.",

		attachment_label_suppressor = "Dämpare",
		attachment_label_flashlight = "Ficklampa",
		attachment_label_extended_clip = "Förlängd magasin",
		attachment_label_extended_pistol_clip = "Förlängd pistolmagasin",
		attachment_label_extended_smg_clip = "Förlängd SMG-magasin",
		attachment_label_extended_shotgun_clip = "Förlängd hagelmagasin",
		attachment_label_luxury = "Lyxig yta",
		attachment_label_incendiary = "Brandrök Patroner",
		attachment_label_tracer = "Spårpatroner",
		attachment_label_hollow_point = "Hålspetspatroner",
		attachment_label_scope = "Sikte",
		attachment_label_grip = "Grepp",
		attachment_label_drum = "Trummagasin",
		attachment_label_heavy_barrel = "Tungt Pipa",
		attachment_label_armor_piercing = "Pansarsprängande Patroner",
		attachment_label_explosive = "Explosiva Patroner",
		attachment_label_sight = "Holografiskt Sikte",
		attachment_label_pistol_sight = "Pistol Sikte",
		attachment_label_fmj = "Full Metal Jacket ronder",
		attachment_label_scope_nv = "Nattsynssikte",
		attachment_label_scope_thermal = "Termiskt sikte",

		attachment_label_luxury1 = "Pimp",
		attachment_label_luxury2 = "Ballas",
		attachment_label_luxury3 = "Hustler",
		attachment_label_luxury4 = "Rock",
		attachment_label_luxury5 = "Hater",
		attachment_label_luxury6 = "Lover",
		attachment_label_luxury7 = "Player",
		attachment_label_luxury8 = "Kungen",
		attachment_label_luxury9 = "Vagos",

		attachment_label_luxury_knife_1 = "VIP Variant",
		attachment_label_luxury_knife_2 = "Kroppsvakt Variant",

		attachment_label_stock_folded = "Hopfälld Kolv",
		attachment_label_stock_unfolded = "Utfälld Kolv",

		attachment_label_skin_patriotic = "Patriotisk Mönster",
		attachment_label_skin_brushstroke = "Penseldrag Mönster",
		attachment_label_skin_skull = "Skalle Mönster",
		attachment_label_skin_leopard = "Leopard Mönster",
		attachment_label_skin_zebra = "Zebra Mönster",
		attachment_label_skin_geometric = "Geometriskt Mönster",

		label_no_skin = "Ingen Mönster",

		no_tint = "Ingen toning",

		tint_normal_0 = "Svart",
		tint_normal_1 = "Grön",
		tint_normal_2 = "Guld",
		tint_normal_3 = "Rosa",
		tint_normal_4 = "Armé",
		tint_normal_5 = "LSPD",
		tint_normal_6 = "Orange",
		tint_normal_7 = "Platinum",

		tint_mk2_0 = "Klassisk svart",
		tint_mk2_1 = "Klassisk grå",
		tint_mk2_2 = "Klassisk Tvåfärgad",
		tint_mk2_3 = "Klassisk vit",
		tint_mk2_4 = "Klassisk beige",
		tint_mk2_5 = "Klassisk grön",
		tint_mk2_6 = "Klassisk blå",
		tint_mk2_7 = "Klassisk jordfärg",
		tint_mk2_8 = "Klassisk brun & svart",
		tint_mk2_9 = "Röd kontrast",
		tint_mk2_10 = "Blå kontrast",
		tint_mk2_11 = "Gul kontrast",
		tint_mk2_12 = "Orange kontrast",
		tint_mk2_13 = "Fet rosa",
		tint_mk2_14 = "Fet lila och gul",
		tint_mk2_15 = "Fet orange",
		tint_mk2_16 = "Fet grön och lila",
		tint_mk2_17 = "Fet röda detaljer",
		tint_mk2_18 = "Fet gröna detaljer",
		tint_mk2_19 = "Fet cyan detaljer",
		tint_mk2_20 = "Fet gula detaljer",
		tint_mk2_21 = "Fet röd och vit",
		tint_mk2_22 = "Fet blå och vit",
		tint_mk2_23 = "Metallisk guld",
		tint_mk2_24 = "Metallisk platina",
		tint_mk2_25 = "Metallisk grå och lila",
		tint_mk2_26 = "Metallisk lila och lime",
		tint_mk2_27 = "Metallisk röd",
		tint_mk2_28 = "Metallisk grön",
		tint_mk2_29 = "Metallisk blå",
		tint_mk2_30 = "Metallisk vit och aqua",
		tint_mk2_31 = "Metallisk röd och gul",

		tint_ray_0 = "Rymdstridskämpe",
		tint_ray_1 = "Lila",
		tint_ray_2 = "Grön",
		tint_ray_3 = "Orange",
		tint_ray_4 = "Rosa",
		tint_ray_5 = "Guld",
		tint_ray_6 = "Platina",

		last_concat = "och",

		attachments_logs_title = "Tillbehör och tints",
		attachments_logs_details = "${consoleName} modifierade sitt `${weaponName}`: ${modifications}.",

		removed_attachments = "Tog bort ${removed}",
		added_attachments = "Lade till ${added}",
		tint_changed = "Ändrade toning från `${fromTint}` till `${toTint}`"
	},

	audio = {
		audio_id = "Ljud ${audioId}",
		illegal_sound_effect = "Försökte be andra klienter att spela upp ett externt ljud.",
		url_invalid = "Den angivna URL:en är inte giltig. Den måste laddas upp på en säker anslutning. (https://)",
		url_missing = "Vänligen lägg till URL till ljudet du försöker spela upp.",
		play_audio_no_permissions = "Spelaren försökte spela upp ett ljud, men hade inte nödvändiga behörigheter att göra det.",
		played_audio_for_self = "Spelade ljud för dig själv.",
		played_audio_for_player = "Spelade ljud för ${consoleName}.",
		played_audio_for_everyone = "Spelade ljud för alla.",
		played_audio_effect_for_everyone_title = "Spelade ljud effekt för alla",
		played_audio_effect_for_everyone_details = "${consoleName} spelade en ljud effekt för alla. Ljud effekten hade URL '${url}' och inställdes på att spelas på volymnivå '${volume}'.",
		played_audio_effect_for_player_title = "Spelade ljud effekt för spelare",
		played_audio_effect_for_player_details = "${consoleName} spelade upp en ljud effekt för ${targetConsoleName}. Ljudeffekten hade URL:en `${url}` och var inställd att spela på volymnivån `${volume}`."
	},

	balls = {
		press_to_pick_up_ball = "Tryck ~INPUT_CONTEXT~ för att plocka upp bollen."
	},

	banana_peels = {
		slipped_logs_title = "Halkade på bananskal",
		slipped_logs_details = "${consoleName} halkade på ett bananskal medan ${slipForce}.",

		slip_0 = "gick",
		slip_1 = "sprang",
		slip_2 = "sprintade"
	},

	bandaids = {
		label = "${type} Plåster",

		baby_yoda = "Baby-Yoda",
		batman = "Batman",
		care_bear = "Omvårdnadssystrar",
		hello_kitty = "Hej-Kitty",
		hotwheels = "Hot-Wheels",
		mc_queen = "Blixt-McQueen",
		minions = "Minions",
		pony = "Mitt-Lilla-Ponny",
		power_puff = "Power-Puff",
		spiderman = "Spiderman",
		star_wars = "Star-Wars",

		failed_random_bandaid = "Kunde inte hitta ett slumpmässigt plåster.",

		received_bandaid_logs_title = "Mottagit Plåster",
		received_bandaid_logs_details = "${consoleName} mottog 1x ${bandaid} efter lufttransport.",
		spawned_bandaid_logs_details = "${consoleName} gav sig själv 1x ${bandaid}."
	},

	battle_royale = {
		failed_to_toggle_battle_royale = "Misslyckades med att växla Battle Royale läget.",
		toggled_battle_royale_on = "Växlade Battle Royale läget på.",
		toggled_battle_royale_off = "Stängde av Battle Royale.",
		battle_royale_info = "Du står i kö för Battle Royale!\nDet är för närvarande ${battleRoyaleQueueLength} spelare i kön.",
		toggle_battle_royale_missing_permissions = "Spelaren försökte aktivera Battle Royale men hade inte tillräckliga behörigheter att göra det.",
		start_battle_royale_missing_permissions = "Spelaren försökte starta Battle Royale men hade inte tillräckliga behörigheter att göra det.",
		unable_to_start_battle_royale_not_active = "Kan inte starta Battle Royale eftersom Battle Royale inte är aktiverat.",
		not_enough_players_in_queue = "Det går inte att starta Battle Royale då det inte finns tillräckligt med spelare i kön.",
		zone_idling = "Zonen är nu pausad.",
		zone_advancing = "Zonen är nu aktiverad.",
		player_died = "${name} har dött: ${remainingPlayers} kvar.",
		player_killed = "${name} blev dödad av ${killerName} av anledningen ${deathCause} från ett avstånd av ${distance}m: ${remainingPlayers} kvar.",
		player_won = "${name} har vunnit!",
		your_team = "Ditt lag:",
		received_lobby_invite = "Du har fått en inbjudan till lobbyn från ${serverId}. Skriv `/br_join ${serverId}` för att gå med!",
		unable_to_invite_yourself = "Du kan inte bjuda in dig själv.",
		unable_to_join_yourself = "Du kan inte gå med själv.",
		player_already_invited = "Spelaren med ID `${serverId}` har redan blivit bjuden in.",
		sent_player_invite = "Skickade inbjudan till spelaren med ID ${serverId}",
		joined_lobby = "Du har gått med i lobbyn.",
		player_not_invited = "Du har inte blivit inbjuden till den här lobbyn.",
		you_are_not_in_a_lobby = "Du är inte i någon lobby.",
		left_lobby = "Du har lämnat lobbyn.",
		created_match = "Skapade en match med ${playerAmount} spelare.",
		created_match_no_vehicles = "Skapade en match utan fordon med ${playerAmount} spelare.",
		zone_complete = "Zonen är komplett.",
		battle_royale_match_info = "Nuvarande zon: ${zoneId}/${zoneAmount}\nKvarvarande tid: ${remainingTime}s\nNuvarande läge: ${currentlyLabel}\nKvarvarande spelare: ${remainingPlayers}\nDödad: ${kills}",
		idling = "Står stilla",
		advancing = "Framryckning",
		battle_royale = "Slaget om överlevandet",
		press_to_deploy_parachute = "Tryck på ~INPUT_PARACHUTE_DEPLOY~ för att öppna fallskärmen.",
		join_battle_royale_instance_missing_permissions = "Spelaren försökte ansluta till en Battle Royale-instans men hade inte behörighet att göra det.",
		no_match_found = "${consoleName} är inte i någon match.",
		joined_instance = "Anslöt till ${consoleName}s instans.",
		leave_battle_royale_instance_missing_permissions = "Spelaren försökte lämna en Battle Royale-instans men hade inte de nödvändiga behörigheterna att göra det.",
		left_instance = "Lämnade instansen.",
		failed_to_leave_instance = "Misslyckades med att lämna instans eftersom du inte var i någon.",
		already_in_match = "Misslyckades med att ansluta till instans eftersom du redan är i en match.",
		lobby_is_full = "Lobbyn du försökte ansluta till är full.",
		zone_center = "Zoncentrum",
		team_marker = "Lagmarkör",
		trophy_information_top = "${name} är bäst!",
		trophy_information_bottom = "Det var totalt ${playerAmount} spelare i matchen och du dödade ${kills} av dem.",
		not_able_to_join_while_in_match = "Du kan inte gå med i en lobby medan du är i en match."
	},

	bazaar = {
		access_bazaar = "Tryck på ~INPUT_CONTEXT~ för att komma åt den här affären.",

		bazaar_blip = "Basar",

		no_items = "Du har inget att sälja här.",
		price_about = "omkring $${price}",

		sold_logs_title = "Basarförsäljning",
		sold_logs_details = "${consoleName} sålde ${amount}x `${itemName}` för $${price}.",

		sold_items = "Du sålde ${amount}x ${label} för $${money}.",
		failed_sell_items = "Gick inte att sälja föremål.",

		junk_collector = "Skräpinsamlare",
		tool_collector = "Verktygsinsamlare",
		waste_collector = "Avfallshanterare",
		ammo_collector = "Ammunitionsinsamlare",

		close_menu = "Stäng Meny"
	},

	beds = {
		no_nearby_available_bed_found = "Ingen tillgänglig säng hittades i närheten.",
		press_to_leave_bed = "Tryck ~INPUT_CONTEXT~ för att lämna sängen."
	},

	blackjack = {
		play_blackjack = "Tryck ~INPUT_CONTEXT~ för att spela Blackjack.",
		play_blackjack_high_limit = "Tryck ~INPUT_CONTEXT~ för att spela på höginsats blackjack."
	},

	blindfold = {
		blindfolding_player = "Sätter papperspåse på spelaren",
		blindfolding_self = "Sätter på papperspåse.",
		hold_to_take_blindfold_off = "Håll ~INPUT_VEH_HEADLIGHT~ för att ta av påsen.",
		hold_to_take_blindfold_off_holding = "Fortsätt att hålla för att ta av påsen."
	},

	blips = {
		comedy_club = "Standup-klubb",
		bean_machine = "Bönautomaten",
		arcade_bar = "Arkadbar",
		japanese_restaurant = "Japansk restaurang",
		luxury_autos = "Lyxbilar",
		rockford_records = "Rockford Records",
		dispensary = "Apotek",
		haunted_high_school = "Hemsökt gymnasium",
		sushi_restaurant = "Sushi-restaurang",

		bank = "Bank",
		hospital = "Sjukhus",
		bolingbroke = "Bolingbroke-fängelset",
		police_department = "Polisavdelning",
		motel = "Motell",
		tattoo_parlor = "Tatueringsstudio",
		repair_shop = "Reparationsverkstad",
		material_vendor = "Materialförsäljare",
		pdm = "Premium Deluxe Motorsport",
		ls_customs = "Los Santos Customs",
		jewelry_store = "Vangelico Smycken",
		pd_air_hq = "Polisens Luft HQ",
		pd_sea_hq = "Polishavets huvudkontor på sjön",
		ems_air_hq = "Sjukvårdens huvudkontor i luften",
		ems_boat_hq = "Sjukvårdens huvudkontor på vattnet",
		ems_garage = "Sjukvårdens garage"
	},

	blockage = {
		restricted_area = "Detta är en begränsad zon. Vänligen återvänd!"
	},

	bombs = {
		not_in_plane = "Du är inte i ett flygplan.",
		not_in_plane_anymore = "Du är inte längre i ett flygplan.",
		interaction_menu = "~INPUT_CONTEXT~ Släpp ${name} bomb, ~INPUT_VEH_HEADLIGHT~ Byt typ.",
		too_low = "Du är för lågt för att släppa bomber.",

		you_are_not_in_a_vehicle = "Du kör inte ett fordon för närvarande.",
		ignition_bomb_on = "Växlat på tändningsbomben.",
		ignition_bomb_off = "Toggade av tändbomman.",
		failed_ignition_bomb = "Misslyckades med att toggla tändbomman.",

		recharging_countermeasures = "Laddar upp kontramått ${percentage}%",

		ignition_bomb_triggered_logs_title = "Tändbomba aktiverad",
		ignition_bomb_triggered_logs_details = "${consoleName} startade motorn på ett fordon som hade en bomb kopplad till sin tändning.",

		toggle_ignition_bomb_missing_permissions = "Spelaren försökte toggla en tändbomba men de hade inte de nödvändiga behörigheterna."
	},

	boomboxes = {
		boombox = "Boombox",
		play = "Spela",
		pause = "Pausa",
		skip_song = "Hoppa över låt",
		volume = "Volym",
		music = "Musik",

		store_boombox = "Förvara Boomboxen i din inventering",
		put_boombox_down = "Lägg ner Boomboxen på marken",
		use_boombox = "Använd Boomboxen",
		hold_to_pick_boombox_up = "Håll inne för att plocka upp Boomboxen",
		illegal_boombox_item_id = "Försöker använda en illegal Boombox-objekt-id.",
		logs_attempted_to_add_song_title = "Försökte lägga till låt",
		logs_attempted_to_add_song_details = "${consoleName} försökte lägga till en låt med videolänken `${url}` på boombox med ID `${boomboxId}`.",
		wipe_boomboxes_not_staff = "Spelaren försökte rensa bort boomboxar, men hade inte tillräckliga rättigheter för att göra det.",
		logs_wiped_all_boomboxes_title = "Rensade bort alla boomboxar",
		logs_wiped_all_boomboxes_details = "${consoleName} rensade bort alla boomboxar.",
		logs_wiped_nearby_boomboxes_title = "Rensade bort närliggande boomboxar",
		logs_wiped_nearby_boomboxes_details = "${consoleName} rensade bort alla boomboxar inom en radie av `${radius}`.",
		radius_invalid = "En radie på `${radius}` är inte ett giltigt värde.",
		wiped_all_boomboxes = "Rensade bort ${boomboxesWiped} boomboxar.",
		wiped_nearby_boomboxes = "Raderade ${boomboxesWiped} boomboxar inom en radie av `${radius}`.",
		failed_to_wipe_boomboxes = "Misslyckades med att radera boomboxar.",
		no_boomboxes = "Det fanns inga boomboxar att radera.",
		no_boomboxes_within_radius = "Det fanns inga boomboxar att radera inom en radie av `${radius}`."
	},

	boosting = {
		boosting_contracts = "Kontraktspåskjutning",
		join_queue = "Gå med i kö",
		leave_queue = "Lämna kö",

		transfer_crypt = "Överför CRYPT",
		transfer_crypt_info = "Ange beloppet och spelarens server ID du vill överföra till.",

		amount = "Belopp",
		server_id = "Server-ID",

		transfer = "Överför",
		cancel = "Avbryt",

		start_contract = "Starta kontrakt",
		start_contract_info = "Är du säker på att du vill starta detta kontrakt?",

		yes = "Ja",
		no = "Nej",

		transfer_contract = "Överför kontrakt",
		transfer_contract_info = "Ange server-ID för personen du vill överföra kontraktet till.",

		decline_contract = "Avvisa avtal",
		decline_contract_info = "Är du säker på att du vill avböja detta kontrakt?",

		cancel_contract = "Avbryt avtal",
		cancel_contract_info = "Är du säker på att du vill avbryta detta kontrakt?",

		no_contracts = "Du har inga tillgängliga kontrakt. Gå med i kön för att få några.",

		model = "Modell",
		plate = "Registreringsnummer",
		buy_in = "Inköp",
		expires_in = "Löper ut om",

		start_contract_type = "Vad vill du göra?",
		start_contract_type_info = "Vill du lämna av eller utföra en VIN-avstrykning? En VIN-avstrykning kostar ytterligare ${cost} CRYPT.",

		drop_off = "Lämna av",
		vin_scratch = "VIN-avstrykning",

		start_contract = "Starta kontrakt",
		transfer_contract = "Överför kontrakt",
		decline_contract = "Avvisa avtal",
		mark_pickup = "Markera upphämtning",
		cancel_contract = "Avbryt avtal",

		new_contract = "Du har ett nytt uppdragskontrakt. (Klass: ${className})",
		started_contract = "Påbörjade kontrakt.",
		failed_contract = "Misslyckat kontrakt.",
		completed_contract = "Avslutat kontrakt. Du fick ${payout} CRYPT.",
		completed_contract_vin_scratch = "Avslutat kontrakt. Fordonet kan hittas i ditt garage.",
		marked_pickup = "Upphämtning markerad.",

		vehicle_tracker_is_being_hacked = "Fordonssökaren hackas. Det återstår ${hacksRemaining} hack.",
		use_chip_to_hack_vehicle_tracker = "Använd en chip för att hacka fordons trackern. Det återstår ${hacksRemaining} hacker.",
		vehicle_hacking_is_timed_out = "Du måste vänta lite innan du kan hacka igen. Det återstår ${hacksRemaining} hacker.",
		drop_the_vehicle_off = "Släpp av fordonet vid den markerade platsen.",
		drop_off = "Lämna av",
		exit_the_vehicle = "Lämna fordonet och lämna området för att slutföra uppdraget.",

		vehicle_is_being_tampered = "Ett fordon i närheten av ${locationLabel} manipuleras. Modellen är ${modelLabel} (klass ${className}) och registreringsskylten är ${plate}.",
		vehicle_tamper = "Försök till fordonsmanipulering (${plate})",
		vehicle_tracker_alert = "Fordonspårningsvarning (${plate})",

		exit_the_vehicle_to_scratch = "Stig ur fordonet för att utföra VIN-kratning.",

		scratch = "VIN-kratning.",
		press_to_scratch = "Tryck på ~g~E ~w~för VIN-kratning.",

		scratching_vehicle = "Kratning av fordon",

		deleted_boosted_vehicle_logs_title = "Borttaget boostat fordon",
		deleted_boosted_vehicle_logs_details = "${consoleName} tog bort boostat fordon med ID ${vehicleId}.",

		spawned_contract = "Kontrakt framgångsrikt spawant.",
		spawned_contract_for = "Kontraktet för ${displayName} har skapats.",

		spawn_contract_no_permissions = "Spelaren försökte skapa ett kontrakt utan tillräckliga behörigheter.",

		already_max_vin_scratched_vehicles = "Du har redan uppnått det maximala antalet VIN-skrapade fordon i din garage.",
		contract_has_expired = "Det här kontraktet har gått ut.",
		you_already_have_a_contract_started = "Du har redan påbörjat ett kontrakt."
	},

	brochure = {
		welcome_to = "Välkommen till",
		san_andreas = "San Andreas",

		getting_started = "Komma igång",
		getting_started_1 = "Du har precis anlänt till flygplatsen och undrar förmodligen vart du ska gå härifrån? Alla nya medborgare får en gratis startbil. Det kanske inte är den bästa, men den är din att behålla. Du hittar den på parkeringsplatsen.",
		getting_started_2 = "Om du inte vill köra kan du också gå, be en vän att hämta dig eller ringa en taxi med din telefon. Du kan komma åt din telefon genom att använda muskeln \"P\".",
		getting_started_3 = "De flesta fordon har bagageutrymmen där du inte bara kan lägga föremål utan också andra personer. Du kan /carry någon, gå sedan fram till bagageutrymmet, öppna det (/door) och sätta in dem. På samma sätt kan du också få ut dem igen. Om du har välter ditt fordon kan du /flip det tillbaka på sina hjul.",

		where_now = "Var är du nu?",
		where_now_1 = "Nu när du har skaffat ditt första fordon kan du börja utforska staden. Eftersom du behöver hålla dig närd och hydrerad så är en livsmedelsbutik en bra plats att börja på. Där kan du köpa mat och dryck. Dessutom kan du köpa bandage som hjälper dig att återhämta dig från skador.",
		where_now_2 = "När du har fyllt på med förnödenheter bör du åka till domstolen och hämta ditt medborgarkort. Det fungerar som ditt ID-kort, körkort och vapenlicens.",

		getting_a_job = "Skaffa ett jobb",
		getting_a_job_1 = "Hur tjänar man pengar? Du kan börja med att söka jobb. Du kan hitta jobbannonser på Life Invader. Dess röda portföljikon finns på kartan. Här kan du hitta ett urval av jobb som du kan söka.",
		getting_a_job_2 = "För att bli lastbilschaufför måste du leverera varor till olika platser. Du måste först köpa en lastbil från lastbilshögkvarteret för $2,000.",
		getting_a_job_3 = "När du anmäler dig till leveransjobbet kan du hämta en leverans fylld med paket på leveranshögkvarteret. Du måste sedan leverera paketen till olika platser i staden. Du kan öppna bakdörren på leveransbilen genom att gå fram till den och öppna /door.",
		getting_a_job_4 = "Du kan också bli en sophämtare. På sophämtningsbyrån kan du hämta en sopbil och börja samla skräp.",
		getting_a_job_5 = "När du har antagit ett av jobben kommer du kunna se olika markörer på din karta. En waypoint visar dig var du ska gå för att komma igång.",

		your_appearance = "Ditt utseende",
		your_appearance_1 = "Kläder som byxor, skor, tröjor och mer kan bytas på vilken klädbutik som helst, kostnadsfritt. Din frisyr, skägg och smink kan ändras på en barberarsalong. Du kan hitta både klädbutiker och barberarsalonger på kartan.",
		your_appearance_2 = "När du har flugit in för första gången kommer du inte längre kunna ändra din allmänna utseende som hudfärg, ansiktsdrag, osv. Om du råkade förstöra ditt utseende eller om du blev klar för snabbt kan du använda /report och be om en ny design.",

		medical_care = "Medicinsk vård",
		medical_care_1 = "Om du skadar dig kan du gå till sjukhuset för att anmäla dig och få behandling. Du kan hitta sjukhuset på kartan. Du kan också använda bandage eller första hjälpen-kit för att läka dig själv.",
		medical_care_2 = "Om du återupplivas utan att ha blivit förd till sjukhuset eller om du stänger av spelet medan du är nere, kan du förlora några av dina föremål. En serveromstart räknas som att stänga av spelet.",

		safety_hint = "Tips: Du kan ta bort säkringen från ditt vapen genom att trycka på ALT och mittmusknappen. Var försiktig!",

		closing_sentence = "Det finns mycket mer att göra i staden! Fråga runt och skaffa några vänner ;)"
	},

	cache = {
		download_progress = "Nedladdningsframsteg:\n- Fordon: ${vehiclesDone}/${vehiclesTotal}\n- Objekt: ${objectsDone}/${objectsTotal}\n- Personer: ${pedsDone}/${pedsTotal}\n- Kläder: ${clothingRequested}/${clothingTotal}",
		slow_download_enabled = "Långsam nedladdning har aktiverats.",
		slow_download_disabled = "Långsam nedladdning har inaktiverats."
	},

	capri_sun = {
		capri_sun_name = "Capri Sun (${flavor})"
	},

	cargo = {
		start_cargo_no_permissions = "Spelaren försökte starta Cargo-kuppen men hade inte behörighet att göra det.",
		end_cargo_no_permissions = "Spelaren försökte avsluta Cargo-kuppen men hade inte behörighet att göra det.",
		cargo_already_active = "Cargo är redan igång.",
		started_cargo = "Cargo har startats.",
		cargo_not_active = "Cargo är inte aktiv.",
		ended_cargo = "Cargo har avslutats.",
		cargo_crate = "Lastkorg",
		use_chip_to_hack_crate = "Använd ~g~Chip ~w~ för att hacka korgen.",
		crate_is_being_hacked = "Korgen hackas.",
		crate_will_unlock_in = "Korgen öppnas om ~g~${time}~w~.",
		press_k_to_access = "Tryck på ~g~K ~w~ för att komma åt."
	},

	casino = {
		set_casino_screen_id_not_staff = "Spelaren försökte ställa in casino-skärm-ID men hade inte behörighet att göra det.",
		successfully_set_screen_label = "Skärmarna har ställts in till skärmen med etiketten `${screenLabel}`.",
		successfully_queued_screen_label = "Skärmen med etiketten `${screenLabel}` har lagts till i kön.",
		failed_to_set_screen_label = "Det gick inte att ställa in skärmarna till skärmen med etiketten `${screenLabel}`.",
		invalid_screen_label = "Skärmetiketten `${screenLabel}` är ogiltig.",
		missing_screen_label = "Parameter för 'skärmetikett' saknas.",
		set_screen_label_already_set_to = "Skärmlabeln är redan inställd på `${screenLabel}`.",
		only_available_in_the_casino = "Du kan bara göra detta när du är inne på casinot.",
		casino_blip = "Kasino"
	},

	cayo_perico = {
		approaching_out_of_bounds = "Du närmar dig kartgränserna",
		out_of_bounds = "Du är utanför kartgränserna"
	},

	cayo_perico_world = {
		keep_heading_in_direction_in = "Håll riktning ${direction} för att komma till Cayo Perico.\n(${distanceToTeleport}m kvar)",
		keep_heading_in_direction_out = "Håll riktning ${direction} för att komma till Los Santos.\n(${distanceToTeleport}m kvar)",

		south = "syd",
		south_east = "sydöst",
		east = "öst",
		north_east = "nordöst",
		north = "norr",
		north_west = "nordväst",
		west = "väst",

		not_the_driver = "Du måste vara föraren av fordonet för att flyga till Cayo Perico.",
		not_a_cayo_vehicle = "Du måste vara i en båt, flygplan eller helikopter för att ta dig till Cayo Perico.",
		entering_cayo_perico_logs_title = "Går in i Cayo Perico",
		entering_cayo_perico_logs_details = "${consoleName} går in i Cayo Perico.",
		exiting_cayo_perico_logs_title = "Lämnar Cayo Perico",
		exiting_cayo_perico_logs_details = "${consoleName} lämnar Cayo Perico.",
		entering_cayo_perico_with_passengers_logs_title = "Går In i Cayo Perico Med Passagerare",
		entering_cayo_perico_with_passengers_logs_details = "${consoleName} går in i Cayo Perico med ${passengersAmount} passagerare.",
		exiting_cayo_perico_with_passengers_logs_title = "Lämnar Cayo Perico Med Passagerare",
		exiting_cayo_perico_with_passengers_logs_details = "${consoleName} lämnar Cayo Perico med ${passengersAmount} passagerare."
	},

	christmas = {
		claimed_advent_calendar_hatch_title = "Öppnade julkalenderlucka",
		claimed_money = "${consoleName} har erhållit $${amount}.",
		claimed_item = "${consoleName} har erhållit `${itemLabel}`.",
		claimed_vehicle = "${consoleName} har erhållit en jul-specialbil.",
		claimed_queue_priority = "${consoleName} har erhållit en vecka av jul-kön prioritet.",

		claimed_advent_calendar_bonus_title = "Öppnade julkalenderbonus",
		claimed_advent_calendar_bonus_details = "${consoleName} har erhållit julkalenderns bonus, vilket är en fordon med modellnamnet `${modelName}`."
	},

	cinema = {
		failed_to_find_cinema_identifier = "Kunde inte hitta bioidentifierare.",

		screen_model_size = "Storlek: x: ${sizeX}, y: ${sizeY}",
		screen_model_offset = "Förflyttning: x: ${offsetX}, y: ${offsetY}, z: ${offsetZ}",
		screen_model_rotation = "Rotation: ${rotation}",
		screen_model_volume = "Volym: ${volumeRadius} (${volumeCutOffRadius})",
		screen_model_model = "Modell: ${modelName}",

		locked = "Låst",

		add_video_to_queue_title = "Lägg till video i kö",
		add_video_to_queue_details = "${consoleName} lade till en video i kön i en biograf med videonyckeln `${videoType}:${videoId}`.",

		blacklisted_video = "Filmen med nyckeln `${videoKey}` är blockerad.",
		failed_to_blacklist_video = "Misslyckades med att blockera filmen med nyckeln `${videoKey}`.",
		video_is_already_blacklisted = "Filmen med nyckeln `${videoKey}` är redan blockerad.",

		blacklist_video_missing_permissions = "Spelaren försökte blockera en film, men saknade behörigheterna för det.",

		watching_movie = "Tittar på ${title}.",

		cinema = "Biograf",
		doppler_cinema = "Dopplerbiograf",
		sandy_cinema = "Sandybiograf",
		tv = "TV",
		monitor = "Skärm",
		laptop = "Laptop",
		projector = "Projektor",

		zoom = "Zooma in och ut",
		slow = "Långsam",
		toggle_lights = "Slå av/på ljus",
		exit = "Avsluta",

		-- NOTE: UI locales
		title = "Titel",
		length = "Längd",
		date = "Datum",
		author = "Författare",
		queue = "Kö",
		search_through_library = "Sök i biblioteket...",
		add_to_library = "Lägg till video i biblioteket (URL)..."
	},

	cinematic = {
		cinematic = "Filmisk",
		black_bars_set_to = "De filmiska svarta banden har nu ställts in på ${blackBarsHeight}%."
	},

	claymores = {
		arm_claymore = "[${InteractionKey}] Sätt på",
		disarm_claymore = "[${InteractionKey}] Stäng av",

		disarming = "Avväpning",
		arming = "Beväpning"
	},

	clothing = {
		outfit_failed = "Kunde inte tillämpa outfit.",
		missing_outfit = "Saknad outfit.",
		missing_outfit_name = "Saknat outfitnamn.",
		no_nearby_clothing_spot = "Inget klädbyte i närheten.",
		trunk_closed = "Bagageluckan är stängd.",
		trunk_too_far = "Du är för långt bort från bagageluckan.",
		moved_too_far_trunk = "Du rörde dig för långt bort från bagageluckan.",
		invalid_job = "Du har inte det nödvändiga arbetet för att använda detta klädbyte.",
		outfit_list = "Outfits",
		no_saved_outfits = "Du har inga sparade outfits.",
		saved_outfit = "Sparade klädseln ${name} med framgång.",
		replaced_outfit = "Ersatte klädseln ${name} med framgång.",
		failed_save_outfit_exists = "Misslyckades med att spara, klädseln ${name} finns redan.",
		failed_save_outfit = "Misslyckades med att spara klädsel.",
		deleted_outfit = "Raderade klädseln ${name} med framgång.",
		failed_delete_outfit_doesnt_exists = "Misslyckades med att radera klädseln ${name}, den existerar inte.",
		failed_delete_outfit = "Misslyckades med att radera klädsel.",

		invalid_server_id = "Ogiltigt eller saknade server-id.",
		player_model_missmatch = "Du kan inte dela din klädsel med den här spelaren.",
		player_too_far = "Spelaren är för långt bort.",
		shared_outfit_too_far = "${displayName} delade en outfit med dig men du är inte nära en klädplats.",
		outfit_shared = "Outfit delad framgångsrikt.",
		outfit_not_shared = "Misslyckades med att dela outfit.",
		shared_outfit = "${displayName} delade en outfit med dig. Skriv `ja` för att acceptera eller `nej` för att avböja. (Detta kommer att löpa ut om 30 sekunder)",
		applied_shared_outfit = "Outfiten som delades har tillämpats framgångsrikt.",
		declined_shared_outfit = "Avböjde delad outfit.",

		no_nearby_dead_player = "Ingen död spelare i närheten.",
		failed_to_steal_shoes = "Misslyckades med att stjäla skor.",

		loading_model = "Laddar ped modell...",
		loading_spawn = "Spawna spelar ped...",
		loading_set_data = "Sätter ped-data...",
		loading_tattoos = "Sätter tatueringar...",
		loading_finalize = "Avslutar..."
	},

	clothing_bag = {
		packed_outfit = "Lyckades packa outfit i väska.",
		packed_outfit_failed = "Misslyckades med att packa outfit i väska.",

		item_description_filled = "Har outfiten \"<i>${outfit}</i>\" packad.",
		item_description_empty = "Har <b>ingen</b> outfit packad.",

		bag_empty = "Denna klädbag är tom.",
		wrong_ped_model = "Denna outfit verkar inte passa dig.",
		cant_use_in_vehicle = "Du kan inte använda en klädväska i ett fordon.",
		cant_use_while_moving = "Du kan inte använda en klädväska medan du rör dig.",

		opening_bag = "Öppnar Väska"
	},

	clothing_menu = {
		component = "Komponent",
		texture = "Textur",
		palette = "Palett",

		clothing = "Kläder",
		accessories = "Tillbehör",
		face = "Ansikte",
		outfits = "Outfits",

		reset_zoom = "Återställ zoom",
		zoom_level = "Zoomnivå",

		variation = "Variation",
		color = "Färg",
		secondary_color = "Sekundär Färg",
		opacity = "Opacitet",

		press_to_access = "Tryck ~INPUT_CONTEXT~ för att komma åt klädaffären.",
		press_no_freemode = "Denna ped-modell kan inte komma åt klädaffären.",
		press_no_freemode_barber = "Denna ped-modell kan inte komma åt barberaren.",
		press_to_access_barber = "Tryck ~INPUT_CONTEXT~ för att komma åt barberaren.",
		press_to_change_outfit = "Tryck ~INPUT_CONTEXT~ för att byta kläder.",

		clothingstore = "Klädbutik",
		barbershop = "Barberare",

		changing_area = "Omklädningsområde",

		switch_outfit = "Byt till denna outfit.",
		replace_outfit = "Ersätt denna klädsel.",
		new_outfit = "Spara outfiten",
		no_saved_outfits = "Inga sparade outfits.",

		save_outfit_title = "Spara ny outfit",
		save_outfit_label = "Namn på outfiten:",
		save_outfit_button = "Spara",

		replace_outfit_title = "Ersätt outfit",
		replace_outfit_description = "Är du säker på att du vill ersätta outfiten som heter ${outfit}?",
		replace_outfit_button = "Ersätt",

		delete_outfit_title = "Radera outfit",
		delete_outfit_description = "Är du säker på att du vill radera outfiten som heter ${outfit}?",
		delete_outfit_button = "Ta bort",

		packing_outfit_title = "Packa Outfit",
		packing_outfit_description = "Välj kokdet du vill packa outfitten \"${outfit}\" i.",

		cancel_button = "Avbryt",

		remove_button = "Ta bort ${label}",
		menu_description = "Tryck på \"V\" för att växla kamera. Du kan dra reglagen med musen eller använda piltangenterna. Du kan trycka på \"A\" och \"D\" för att justera din position.",

		failed_toggle_clothing_menu = "Misslyckades med att växla klädmenyn.",
		clothing_menu_success = "Öppnade klädmenyn för ${consoleName}.",
		barber_menu_success = "Misslyckades med att växla barber shop-menyn.",
		failed_toggle_barber_menu = "Öppnade barber shop-menyn för ${consoleName}.",
		invalid_server_id = "Ogiltigt server-id.",

		clothing_menu_missing_permissions = "Spelaren försökte öppna klädmenyn för en annan spelare, men hade inte de nödvändiga behörigheterna.",

		hats_and_helmets = "Hattar/Hjälmar",
		glasses = "Glasögon",
		earrings = "Örhängen",
		left_wrist = "Vänster handled",
		right_wrist = "Höger handled",

		pants = "Byxor",
		shoes = "Skor",
		undershirt = "Undertröja",
		necklaces_and_ties = "Halsband & Slips",
		decals = "Dekaler",
		shirts = "Skjortor",
		arms = "Armar",
		masks = "Masker",
		armor = "Rustning",
		parachute_and_bag = "Fallskärm & Väska",

		hair = "Hår",

		blemishes = "Skönhetsfläckar",
		facial_hair = "Facial Hair",
		eyebrows = "Ögonbryn",
		ageing = "Åldrande",
		makeup = "Makeup",
		blush = "Rouge",
		complexion = "Hudton",
		sun_damage = "Solskador",
		lipstick = "Läppstift",
		moles_and_freckles = "Mol & Fräknar",
		chest_hair = "Brösthår",
		body_blemishes = "Kroppsskador",
		add_body_blemish = "Lägg till kroppsskada"
	},

	command_socket = {
		connected = "Ansluten till kommandosocket.",
		disconnected = "Frånkopplad från kommandosocket.",
		failed_reconnect = "Misslyckades med att återansluta till kommandosocket."
	},

	crafting = {
		menu_title = "Tillverkning",
		close_menu = "Stäng Meny",

		smelt_glass = "Smält sönderslagna flaskor",
		press_to_smelt_glass = "[${SeatEjectKey}] Smält sönderslagna flaskor",
		smelting_glass = "Smälter ${usedItems}",
		smelted_glass = "Smält ${usedItems} till glas.",
		failed_smelt_glass = "Misslyckades med att smälta glas.",

		craft_steel = "Tillverka stål",
		press_to_craft_steel = "[${SeatEjectKey}] Tillverka stål",
		crafting_steel = "Formar ${usedItems}",
		crafted_steel = "Har format ${usedItems} till stål.",
		failed_craft_steel = "Misslyckades med att forma stål.",

		scrapping_item = "Skrotar ${usedItems}",
		scrapped_item = "Extraherade skrotmetall från ${usedItems}.",

		scrap_knife = "Skrota Knivar",
		press_to_scrap_knife = "[${SeatEjectKey}] Skrota Knivar",
		failed_scrap_knife = "Misslyckades med att skrota kniv.",

		scrap_item = "Skrota Föremål",
		press_to_scrap_item = "[${SeatEjectKey}] Skrota Föremål",
		failed_scrap_item = "Misslyckades med att skrota föremål.",

		cut_item = "Skär potatis",
		press_to_cut_item = "[${SeatEjectKey}] Skär potatis",
		cutting_item = "Skär 3 potatisar",
		cut_item_done = "Skar potatisar till pommes frites.",
		failed_cut_item = "Misslyckades med att skära potatisar.",

		fry_item = "Stek pommes frites",
		press_to_fry_item = "[${SeatEjectKey}] Stek pommes frites",
		frying_item = "Steker pommes frites",
		fried_item = "Stekte belgiska pommes frites.",
		failed_fry_item = "Misslyckades med att steka pommes frites.",

		grill_item = "Grilla råa köttbullar",
		press_to_grill_item = "[${SeatEjectKey}] Grilla råa köttbullar",
		grilling_item = "Grillar köttbullar",
		grilled_item = "Grillade biffar.",
		failed_grill_item = "Misslyckades med att grilla biffarna.",

		hamburger_recipe = "Hamburgare",
		cheeseburger_recipe = "Cheeseburgare",

		assemble_burger = "Montera burger",
		press_to_assemble_burger = "[${SeatEjectKey}] Montera burger",
		assembling_burger = "Monterar hamburgare",
		assembled_burger = "Monterad hamburgare",
		failed_assemble_burger = "Misslyckades med att montera en hamburgare.",

		assembling_cheeseburger = "Monterar cheeseburgare",
		assembled_cheeseburger = "Monterad cheeseburgare",
		failed_assemble_cheeseburger = "Misslyckades med att montera en cheeseburgare.",

		mix_avocado_smoothie = "Blanda avokado smoothie",
		press_to_mix_avocado_smoothie = "[${SeatEjectKey}] Blanda avokado smoothie",
		mixing_avocado_smoothie = "Blandar avokado smoothie",
		mixed_avocado_smoothie = "Blandad avokado smoothie",
		failed_mix_avocado_smoothie = "Misslyckades med att blanda avokado smoothie.",

		fill_nitro_tank = "Fyll nitrotank",
		press_to_fill_nitro_tank = "[${SeatEjectKey}] Fyll nitrotank",
		filling_nitro_tank = "Fyller nitrotank",
		filled_nitro_tank = "Nitrotank fylld",
		failed_fill_nitro_tank = "Misslyckades att fylla nitrotank.",

		craft_sheet_metal = "Tillverka plåt",
		press_to_craft_sheet_metal = "[${SeatEjectKey}] Tillverka plåt",
		crafting_sheet_metal = "Tillverkar plåt",
		crafted_sheet_metal = "Tillverkade plåten.",
		failed_craft_sheet_metal = "Misslyckades att tillverka plåten.",

		craft_empty_tank = "Montera ihop tom tank",
		press_to_craft_empty_tank = "[${SeatEjectKey}] Montera ihop tom tank",
		crafting_empty_tank = "Monterar ihop tom tank",
		crafted_empty_tank = "Monterade ihop tom tank.",
		failed_craft_empty_tank = "Det gick inte att montera tom tank.",

		craft_valve = "Montera Ventil",
		press_to_craft_valve = "[${SeatEjectKey}] Montera Ventil",
		crafting_valve = "Monterar Ventil",
		crafted_valve = "Monterade ventil.",
		failed_craft_valve = "Det gick inte att montera ventil.",

		craft_nitro_tank = "Montera Nitrotank",
		press_to_craft_nitro_tank = "[${SeatEjectKey}] Montera Nitrotank",
		crafting_nitro_tank = "Monterar Nitrotank",
		crafted_nitro_tank = "Monterade nitrotank.",
		failed_craft_nitro_tank = "Det gick inte att montera nitrotank.",

		salvage_meth_table = "Sanera Metamfetamin Bord",
		press_to_salvage_meth_table = "[${SeatEjectKey}] Sanera Metamfetamin Bord",
		salvaging_meth_table = "Sanerar Metamfetamin Bord",
		salvaged_meth_table = "Metamfetamin Bord Sanerades.",
		failed_salvage_meth_table = "Kunde inte sanera Metamfetamin Bord.",

		refill_vape = "Fyll Vape",
		press_to_refill_vape = "[${SeatEjectKey}] Fyll Vape",
		refilling_vape = "Fyller Vape",
		refilled_vape = "Vape fylld.",
		failed_refill_vape = "Kunde inte fylla upp Vape.",

		deconstructing_item = "Avmonterar ${usedItems}",
		deconstructed_item = "Nedmonterade ${usedItems}.",

		deconstruct_pistol = "Nedmontera Pistol",
		press_to_deconstruct_pistol = "[${SeatEjectKey}] Nedmontera Pistol",
		failed_deconstruct_pistol = "Misslyckades med att nedmontera pistol.",

		deconstruct_smg = "Nedmontera SMG",
		press_to_deconstruct_smg = "[${SeatEjectKey}] Nedmontera SMG",
		failed_deconstruct_smg = "Misslyckades med att nedmontera SMG.",

		deconstruct_shotgun = "Nedmontera Hagelgevär",
		press_to_deconstruct_shotgun = "[${SeatEjectKey}] Nedmontera Hagelgevär",
		failed_deconstruct_shotgun = "Misslyckades med att nedmontera Hagelgevär.",

		deconstruct_rifle = "Demontera Gevär",
		press_to_deconstruct_rifle = "[${SeatEjectKey}] Demontera Gevär",
		failed_deconstruct_rifle = "Misslyckades med att demontera Gevär.",

		extract_copper = "Utvinna Koppar",
		press_extract_copper = "[${SeatEjectKey}] Utvinna Koppar",
		extracting_copper = "Utvinning av koppar pågår",
		extracted_copper = "Koppar utvunnen.",
		failed_extract_copper = "Misslyckades med att utvinna koppar.",

		processing_item = "Bearbetar ${usedItems}",
		processed_item = "Bearbetad ${usedItems}.",

		process_copper = "Bearbeta Koppar Nuggets",
		press_process_copper = "[${SeatEjectKey}] Bearbeta kopparnuggor",
		failed_process_copper = "Misslyckades med att bearbeta kopparnuggor.",

		process_rubber = "Bearbeta gummi",
		press_process_rubber = "[${SeatEjectKey}] Bearbeta gummi",
		failed_process_rubber = "Misslyckades med att bearbeta gummi.",

		process_aluminium = "Bearbeta aluminium",
		press_process_aluminium = "[${SeatEjectKey}] Bearbeta aluminium",
		failed_process_aluminium = "Misslyckades med att bearbeta aluminium.",

		process_steel = "Bearbeta stål",
		press_process_steel = "[${SeatEjectKey}] Bearbeta stål",
		failed_process_steel = "Misslyckades med att bearbeta stål.",

		craft_lens = "Tillverka Lins",
		press_craft_lens = "[${SeatEjectKey}] Tillverknings Lins",
		crafting_lens = "Tillverkar Lins",
		crafted_lens = "Tillverkad lins.",
		failed_craft_lens = "Misslyckades med att tillverka lins.",

		craft_sight = "Tillverka sikte",
		press_craft_sight = "[${SeatEjectKey}] Tillverka sikte",
		crafting_sight = "Tillverkar sikte",
		crafted_sight = "Tillverkat sikte.",
		failed_craft_sight = "Misslyckades med att tillverka sikte.",

		craft_pistol_sight = "Tillverka pistol sikte",
		press_craft_pistol_sight = "[${SeatEjectKey}] Tillverka pistol sikte",
		crafting_pistol_sight = "Tillverka Pistolsikte",
		crafted_pistol_sight = "Tillverkat pistolsikte.",
		failed_craft_pistol_sight = "Misslyckades med att tillverka pistolsikte.",

		craft_scope = "Tillverka Kikarsikte",
		press_craft_scope = "[${SeatEjectKey}] Tillverka Kikarsikte",
		crafting_scope = "Tillverkar Kikarsikte",
		crafted_scope = "Tillverkat kikarsikte.",
		failed_craft_scope = "Misslyckades med att tillverka kikarsikte.",

		craft_grip = "Tillverka Grepp",
		press_craft_grip = "[${SeatEjectKey}] Tillverka Grepp",
		crafting_grip = "Tillverkar Grepp",
		crafted_grip = "Tillverkat grepp.",
		failed_craft_grip = "Misslyckades med att tillverka grepp.",

		craft_extended_clip = "Tillverka förlängt magasin",
		press_craft_extended_clip = "[${SeatEjectKey}] Tillverka förlängt magasin",
		crafting_extended_clip = "Tillverkar förlängt magasin",
		crafted_extended_clip = "Tillverkade förlängda magasin.",
		failed_craft_extended_clip = "Misslyckades med att tillverka förlängt magasin.",

		craft_extended_smg_clip = "Tillverka förlängt SMG-magasin",
		press_craft_extended_smg_clip = "[${SeatEjectKey}] Tillverka förlängt SMG-magasin",
		crafting_extended_smg_clip = "Tillverkar förlängt SMG-magasin",
		crafted_extended_smg_clip = "Tillverkade förlängda SMG-magasin.",
		failed_craft_extended_smg_clip = "Misslyckades med att tillverka förlängd SMG-magasin.",

		craft_extended_shotgun_clip = "Tillverka förlängd hagelgevärs-magasin",
		press_craft_extended_shotgun_clip = "[${SeatEjectKey}] Tillverka förlängd hagelgevärs-magasin",
		crafting_extended_shotgun_clip = "Tillverkar förlängd hagelgevärs-magasin",
		crafted_extended_shotgun_clip = "Förlängt hagelgevärs-magasin tillverkat.",
		failed_craft_extended_shotgun_clip = "Misslyckades med att tillverka förlängd hagelgevärs-magasin.",

		craft_extended_pistol_clip = "Tillverka förlängd pistol-magasin",
		press_craft_extended_pistol_clip = "[${SeatEjectKey}] Tillverka förlängd pistol-magasin",
		crafting_extended_pistol_clip = "Tillverkar förlängt pistoltidningsklipp",
		crafted_extended_pistol_clip = "Tillverkat förlängt pistoltidningsklipp",
		failed_craft_extended_pistol_clip = "Misslyckades med att tillverka förlängt pistoltidningsklipp",

		craft_drum = "Tillverka trummagasin",
		press_craft_drum = "[${SeatEjectKey}] Tillverka trummagasin",
		crafting_drum = "Tillverkar trummagasin",
		crafted_drum = "Tillverkat trummagasin",
		failed_craft_drum = "Misslyckades med att tillverka trummagasin",

		craft_suppressor = "Tillverka ljuddämpare",
		press_craft_suppressor = "[${SeatEjectKey}] Tillverka ljuddämpare",
		crafting_suppressor = "Tillverka dämpare",
		crafted_suppressor = "Tillverkad dämpare.",
		failed_craft_suppressor = "Misslyckades med att tillverka dämpare.",

		craft_flashlight = "Tillverka ficklampa",
		press_craft_flashlight = "[${SeatEjectKey}] Tillverka ficklampa",
		crafting_flashlight = "Tillverkar ficklampa",
		crafted_flashlight = "Tillverkad ficklampa.",
		failed_craft_flashlight = "Misslyckades med att tillverka ficklampa.",

		mix_paint = "Blanda färg",
		press_mix_paint = "[${SeatEjectKey}] Blanda färg",
		mixing_paint = "Blandar färg",
		mixed_paint = "Blandad färg.",
		failed_mix_paint = "Misslyckades att blanda färg.",

		modify_knuckle = "Modifiera Mässingsknogjärn",
		press_modify_knuckle = "[${SeatEjectKey}] Modifiera Mässingsknogjärn",
		modifying_knuckle = "Modifierar Mässingsknogjärn",
		modified_knuckle = "Modifierade Mässingsknogjärn.",
		failed_modify_knuckle = "Misslyckades att modifiera Mässingsknogjärn.",

		craft_jammer = "Tillverka Störsändare",
		press_craft_jammer = "[${SeatEjectKey}] Tillverka Störsändare",
		crafting_jammer = "Tillverkar Störsändare",
		crafted_jammer = "Tillverkade Störsändare.",
		failed_craft_jammer = "Misslyckades att tillverka Störsändare.",

		craft_advanced_repair_kit = "Tillverka avancerat reparationssats",
		press_craft_advanced_repair_kit = "[${SeatEjectKey}] Tillverka avancerat reparationssats",
		crafting_advanced_repair_kit = "Tillverkar avancerad reparationssats",
		crafted_advanced_repair_kit = "Tillverkade avancerade reparationssats.",
		failed_craft_advanced_repair_kit = "Kunde inte tillverka avancerad reparationssats.",

		pulverize_aluminium = "Krossa aluminium",
		press_pulverize_aluminium = "[${SeatEjectKey}] Krossa aluminium",
		pulverizing_aluminium = "Krossar aluminium",
		pulverized_aluminium = "Krossat aluminium.",
		failed_pulverize_aluminium = "Misslyckades med att pulverisera aluminium.",

		pulverize_steel = "Pulverisera Stål",
		press_pulverize_steel = "[${SeatEjectKey}] Pulverisera Stål",
		pulverizing_steel = "Pulveriserar Stål",
		pulverized_steel = "Pulveriserat stål.",
		failed_pulverize_steel = "Misslyckades med att pulverisera stål.",

		mix_thermite = "Blanda Termite",
		press_mix_thermite = "[${SeatEjectKey}] Blanda Termite",
		mixing_thermite = "Blandar Termite",
		mixed_thermite = "Blandad termite.",
		failed_mix_thermite = "Misslyckades med att blanda termite.",

		deconstruct_phone = "Demontera Mobiltelefon",
		press_deconstruct_phone = "[${SeatEjectKey}] Demontera Mobiltelefon",
		failed_deconstruct_phone = "Det gick inte att demontera mobiltelefonen.",

		deconstruct_radio = "Demontera Radio",
		press_deconstruct_radio = "[${SeatEjectKey}] Demontera Radio",
		failed_deconstruct_radio = "Det gick inte att demontera radion.",

		deconstruct_raspberry = "Demontera Raspberry",
		press_deconstruct_raspberry = "[${SeatEjectKey}] Demontera Raspberry",
		failed_deconstruct_raspberry = "Det gick inte att demontera Raspberry.",

		deconstruct_chip = "Demontera mikrochip",
		press_deconstruct_chip = "[${SeatEjectKey}] Demontera mikrochip",
		failed_deconstruct_chip = "Misslyckades med att demontera mikrochip.",

		craft_device_scanner = "Tillverka enhetsscanner",
		press_craft_device_scanner = "[${SeatEjectKey}] Tillverka enhetsscanner",
		crafting_device_scanner = "Tillverkar enhetsscanner",
		crafted_device_scanner = "Tillverkade enhetsscanner.",
		failed_craft_device_scanner = "Misslyckades med att tillverka enhetsscanner.",

		craft_decryption_key = "Tillverka avkrypteringsnyckel",
		press_craft_decryption_key = "[${SeatEjectKey}] Tillverka avkrypteringsnyckel",
		crafting_decryption_key = "Tillverknings avkrypteringsnyckel",
		crafted_decryption_key = "Tillverkad avkrypteringsnyckel.",
		failed_craft_decryption_key = "Misslyckades med att tillverka avkrypteringsnyckel.",

		craft_tire_wall = "Tillverka däckvägg",
		press_craft_tire_wall = "[${SeatEjectKey}] Tillverka däckvägg",
		crafting_tire_wall = "Tillverkar däckvägg",
		crafted_tire_wall = "Tillverkad däckvägg.",
		failed_craft_tire_wall = "Misslyckades med att tillverka däckvägg.",

		fix_tire_wall = "Laga däckvägg",
		press_fix_tire_wall = "[${SeatEjectKey}] Laga däckvägg",
		fixing_tire_wall = "Lagar däckvägg",
		fixed_tire_wall = "Fixade däckvägg.",
		failed_fix_tire_wall = "Kunde inte fixa däckvägg.",

		saw_shotgun = "Sågad hagelgevär",
		press_saw_shotgun = "[${SeatEjectKey}] Såga av hagelgevär",
		sawing_shotgun = "Sågar av hagelgevär",
		sawed_shotgun = "Sågade av hagelgevär.",
		failed_saw_shotgun = "Kunde inte såga av hagelgevär.",

		bake_brownies = "Baka Brownies",
		press_bake_brownies = "[${SeatEjectKey}] Baka Brownies",
		baking_brownies = "Bakar Brownies",
		baked_brownies = "Bakade brownies.",
		failed_bake_brownies = "Kunde inte baka brownies.",

		mix_brushstroke_paint = "Blanda penselsträckfärg",
		press_mix_brushstroke_paint = "[${SeatEjectKey}] Blanda penselsträckfärg",
		mixing_brushstroke_paint = "Blandar penselsträckfärg",
		mixed_brushstroke_paint = "Blandat penselsträckfärg.",
		failed_mix_brushstroke_paint = "Kunde inte blanda penselsträckfärg.",

		mix_skull_paint = "Blanda dödskallefärg",
		press_mix_skull_paint = "[${SeatEjectKey}] Blanda dödskallefärg",
		mixing_skull_paint = "Blandar dödskallefärg",
		mixed_skull_paint = "Blandat dödskallefärg.",
		failed_mix_skull_paint = "Kunde inte blanda dödskallefärg.",

		mix_leopard_paint = "Blanda Leopardfärg",
		press_mix_leopard_paint = "[${SeatEjectKey}] Blanda Leopardfärg",
		mixing_leopard_paint = "Blandar Leopardfärg",
		mixed_leopard_paint = "Leopardfärgen är blandad.",
		failed_mix_leopard_paint = "Det gick inte att blanda leopardfärg.",

		mix_zebra_paint = "Blanda Zebramönsterfärg",
		press_mix_zebra_paint = "[${SeatEjectKey}] Blanda Zebramönsterfärg",
		mixing_zebra_paint = "Blandar Zebramönsterfärg",
		mixed_zebra_paint = "Zebramönsterfärgen är blandad.",
		failed_mix_zebra_paint = "Det gick inte att blanda zebramönsterfärg.",

		mix_geometric_paint = "Blanda Geometrisk Färg",
		press_mix_geometric_paint = "[${SeatEjectKey}] Blanda Geometrisk Färg",
		mixing_geometric_paint = "Blandar Geometrisk Färg",
		mixed_geometric_paint = "Blandade geometrisk färg.",
		failed_mix_geometric_paint = "Misslyckades med att blanda geometrisk färg.",

		mix_patriotic_paint = "Blanda Patriotisk Färg",
		press_mix_patriotic_paint = "[${SeatEjectKey}] Blanda Patriotisk Färg",
		mixing_patriotic_paint = "Blandar Patriotisk Färg",
		mixed_patriotic_paint = "Blandade patriotisk färg.",
		failed_mix_patriotic_paint = "Misslyckades med att blanda patriotisk färg.",

		craft_radio_decrypter = "Tillverka Radio Dekrypterare",
		press_craft_radio_decrypter = "[${SeatEjectKey}] Tillverka Radio Dekrypterare",
		crafting_radio_decrypter = "Tillverkar Radio Dekrypterare",
		crafted_radio_decrypter = "Tillverkade radio dekrypterare.",
		failed_craft_radio_decrypter = "Misslyckades att tillverka radio dekrypterare.",

		craft_grenade_shell = "Tillverka Granat Hölje",
		press_craft_grenade_shell = "[${SeatEjectKey}] Tillverka Granat Hölje",
		crafting_grenade_shell = "Tillverkar Granat Hölje",
		crafted_grenade_shell = "Tillverkade granathölje.",
		failed_craft_grenade_shell = "Misslyckades med att tillverka granatskal.",

		craft_grenade_pin = "Tillverka Granatnål",
		press_craft_grenade_pin = "[${SeatEjectKey}] Tillverka Granatnål",
		crafting_grenade_pin = "Tillverkar Granatnål",
		crafted_grenade_pin = "Tillverkade granatnål.",
		failed_craft_grenade_pin = "Misslyckades med att tillverka granatnål.",

		craft_gas_grenade = "Tillverka Gasgranat",
		press_craft_gas_grenade = "[${SeatEjectKey}] Tillverka Gasgranat",
		crafting_gas_grenade = "Tillverkar Gasgranat",
		crafted_gas_grenade = "Tillverkade gasgranater.",
		failed_craft_gas_grenade = "Misslyckades med att skapa gasgranat.",

		break_apart_ring = "Bryt isär ring",
		press_break_apart_ring = "[${SeatEjectKey}] Bryt isär ring",
		breaking_ring = "Bryter isär ring",
		broke_ring = "Bröt isär ring.",
		failed_break_ring = "Misslyckades med att bryta isär ring.",

		no_required_items = "Du har inte alla nödvändiga föremål.",

		debug_multi = "- Flera utgångar -",

		used_crafting_station_title = "Tillverkningsstation",
		used_crafting_station_details = "${consoleName} använde en tillverkningsstation för att skapa ${amount} st ${itemName}."
	},

	crashes = {
		crash_failed = "Misslyckades med att utlösa krasch för ${consoleName}.",
		crash_success = "Lyckades utlösa krasch för ${consoleName}.",
		server_id_invalid = "Ogiltigt server-ID."
	},

	creation = {
		turn_right = "Sväng höger",
		turn_left = "Sväng Vänster"
	},

	creation_menu = {
		character_creation = "Skapa Karaktär",
		new_character = "NY KARAKTÄR",

		select_a_model = "Välj en modell.",

		heritage = "Arv",
		heritage_description = "Välj för att välja dina föräldrar.",
		mom = "Mamma",
		mom_description = "Välj din mamma.",
		dad = "Pappa",
		dad_description = "Välj din pappa.",
		resemblance = "Likhet",
		resemblance_description = "Välj om dina funktioner påverkas mer av din mor eller far.",
		skin_tone = "Hudton",
		skin_tone_description = "Välj om din hudton påverkas mer av din mamma eller pappa.",
		divorced = "Skild",
		divorced_description = "Välj om dina föräldrar är skilda.",

		["in"] = "in",
		out = "Ute",
		up = "Upp",
		down = "Ned",
		brow = "Ögonbryn",
		brow_description = "Gör ändringar på dina fysiska kännetecken.",

		squint = "Sneda",
		wide = "Breda",
		eyes = "Ögon",
		eyes_description = "Gör ändringar på dina fysiska kännetecken.",

		narrow = "Smala",
		wide = "Breda",
		nose = "Näsa",
		nose_description = "Gör ändringar på dina fysiska kännetecken.",

		short = "Kort",
		long = "Lång",
		crooked = "Krokig",
		curved = "Rundad",
		nose_profile = "Näsprofil",
		nose_profile_description = "Gör ändringar i dina fysiska egenskaper.",

		broken_left = "Sönder vänster",
		broken_right = "Sönder höger",
		tip_up = "Spets uppåt",
		tip_down = "Spets nedåt",
		nose_tip = "Nästipp",
		nose_tip_description = "Gör ändringar i dina fysiska egenskaper.",

		cheekbones = "Kindben",
		cheekbones_description = "Gör ändringar i dina fysiska egenskaper.",

		gaunt = "Smal",
		puffed = "Utblåst",
		cheeks = "Kinderna",
		cheeks_description = "Gör ändringar i dina fysiska egenskaper.",

		thin = "Smal",
		fat = "Tjock",
		lips = "Läppar",
		lips_description = "Gör ändringar på dina fysiska egenskaper.",

		round = "Rund",
		square = "Fyrkantig",
		jaw = "Käke",
		jaw_description = "Gör ändringar på dina fysiska egenskaper.",

		chin_profile = "Hakprofil",
		chin_profile_description = "Gör ändringar på dina fysiska egenskaper.",

		pointed = "Spetsig",
		rounded = "Rundad",
		bum = "Bum",
		chin_shape = "Hakform",
		chin_shape_description = "Gör ändringar på dina fysiska egenskaper.",

		thick = "Tjock",
		neck_thickness = "Halsens Tjocklek",
		neck_thickness_description = "Gör ändringar på dina fysiska egenskaper.",

		features = "Funktioner",
		appearance = "Utseende",
		save_and_continue = "Spara & Fortsätt",
		components = "Komponenter",
		props = "Rekwisiter",
		ambient_females = "Ambient Kvinnor",
		ambient_male = "Ambient Män",
		animals = "Djur",
		cutscene = "Filmsekvens",
		gang_female = "Gäng Kvinna",
		gang_male = "Gäng Man",
		multiplayer = "Multiplayer",
		scenario_female = "Scenario Kvinna",
		scenario_male = "Scenario Man",
		story = "Berättelse",
		story_scenario_female = "Berättelsescenario Kvinna",
		story_scenario_male = "Berättelsescenario Man",
		models = "Modeller",

		features_description = "Välj för att ändra dina ansiktsfunktioner.",

		unknown_hair = "Okänt hår (${hairId})",
		unknown_eyebrow = "Okjent ögonbryn (${eyebrowId})",
		unknown_facial_hair = "Okänt skägg (${facialHairId})",
		unknown_skin_blemish = "Okänd hudblemma (${skinBlemishId})",
		unknown_skin_aging = "Okänd hudåldring (${skinAgingId})",
		unknown_skin_complexion = "Okänd hudton (${skinComplexionId})",
		unknown_moles_and_freckles = "Okända fläckar & fräknar (${molesAndFrecklesId})",
		unknown_skin_damage = "Okänt hudskada (${skinDamageId})",
		unknown_eye_makeup = "Okänd ögonmakeup (${eyeMakeupId})",
		unknown_blusher = "Okänd rouge (${blusherId})",
		unknown_lipstick = "Okänd läppstift (${lipstickId})",
		unknown_chest_hair = "Okänd brösthår (${chestHairId})",

		color = "Färg",
		opacity = "Opacitet",

		hair = "Hår",
		hair_description = "Gör ändringar på din utseende.",

		eyebrows = "Ögonbryn",
		eyebrows_description = "Gör ändringar på din utseende.",

		facial_hair = "Facial Hair",
		facial_hair_description = "Gör ändringar i ditt utseende.",

		skin_blemishes = "Hudfläckar",
		skin_blemishes_description = "Gör ändringar i ditt utseende.",

		skin_aging = "Åldrande av huden",
		skin_aging_description = "Gör ändringar i ditt utseende.",

		skin_complexion = "Hudkomplexion",
		skin_complexion_description = "Gör ändringar i ditt utseende.",

		moles_and_freckles = "Molar och fräknar",
		moles_and_freckles_description = "Gör ändringar i ditt utseende.",

		skin_damage = "Hudskador",
		skin_damage_description = "Gör ändringar i ditt utseende.",

		eye_color = "Ögonfärg",
		eye_color_description = "Gör ändringar i ditt utseende.",

		eye_makeup = "Ögonsmink",
		eye_makeup_description = "Gör ändringar i ditt utseende.",

		blusher = "Rouge",
		blusher_description = "Gör ändringar i ditt utseende.",

		lipstick = "Läppstift",
		lipstick_description = "Gör ändringar i ditt utseende.",

		chesthair = "Bröstbehåring",
		chesthair_description = "Gör ändringar i ditt utseende.",

		ready_to_start_playing = "Redo att börja spela?",
		no = "Nej",
		go_back = "Gå tillbaka.",
		yes = "Ja",
		you_will_not_be_able_to_return = "Du kommer inte att kunna återvända.",

		freemode = "Fria spelarläget",
		freemode_description = "Välj om du vill använda en modell från det fria spelarläget. Modellerna från det fria spelarläget kan anpassas mycket.",

		sex = "Kön",
		sex_description = "Välj kön för din karaktär.",
		male = "Man",
		female = "Kvinna",

		props_description = "Välj dina favoritrekvisita.",

		hat = "Hatt",
		glass = "Glasögon",
		ear = "Örhängen",
		watch = "Klocka",
		bracelet = "Armband",

		appearance_description = "Välj för att ändra ditt utseende.",
		components_description = "Välj dina föredragna komponenter.",

		none = "Ingen",

		texture = "Textur ${textureId}",
		drawable = "Teckning ${drawableId}",

		clean_shaven = "Rakad",

		face = "Ansikte",
		mask = "Mask",
		hair = "Hår",
		torso = "Överkropp",
		leg = "Underkropp",
		parachute_and_bag = "Fallskärm / väska",
		shoes = "Skor",
		accessory = "Tillbehör",
		undershirt = "Undertröja",
		kevlar = "Kevlar",
		badge = "Märke",
		torso_two = "Överkropp 2"
	},

	crosshair = {
		copied_config = "Kopierade inställningar till urklipp.",
		imported_config = "Importerade inställningar.",
		disabled_crosshair = "Inaktiverade anpassade sikte.",

		invalid_url_title = "Ogiltig bild-URL",
		invalid_url_description = "Bild-URL:en du angav är ogiltig. Det måste vara en direkt länk till bilden, inte en länk till en webbplats som innehåller bilden. Det måste börja med en av följande URL:er:",
		cancel_button = "Okej",

		center = "Mitten",
		main = "Huvud",
		outer = "Yttre",
		kill = "Döda Flash",

		enabled = "Aktiverad",
		size = "Storlek",
		image = "Bild",
		length = "Längd",
		offset = "Förskjutning",
		secondary_offset = "Sekundär Förskjutning",
		rotation = "Rotation",
		color = "Färg",
		duration = "Varaktighet (ms)"
	},

	clip_saver = {
		start_recording = "Starta inspelning",
		clip_save = "Spara klipp",
		clip_discard = "Släng klipp"
	},

	compass = {
		north = "N",
		north_east = "NO",
		east = "Ö",
		south_east = "SO",
		south = "S",
		south_West = "SW",
		west = "V",
		north_west = "NV"
	},

	courthouse = {
		press_to_use_gavel = "Tryck ~INPUT_CONTEXT~ för att använda klubban."
	},

	daily_activities = {
		press_to_daily_activities = "[${InteractionKey}] Dagliga aktiviteter",
		daily_activities = "Dagliga aktiviteter",
		resets_in = "Återställs om ${resetsIn}...",
		complete_the_other_tasks_to_unlock = "Fullfölj de andra uppgifterna för att låsa upp...",
		remain = "${remain} kvar",
		remain_money = "${remain} SEK kvar",
		claimed = "Har hävdat",
		claim = "Hävda",
		streak_reward = "När din följd är 7 eller högre, får du en annan gratis daglig spinn på lyckohjulet.",

		reset_daily_activities_no_permissions = "Spelaren försökte återställa sina dagliga aktiviteter utan lämpliga behörigheter.",
		reset_daily_activities = "Återställ dagliga aktiviteter.",

		parachute_from_location = "Fallskärm från ${location}.",
		gamble_at_blackjack = "Spela ${amount} händer vid Blackjack-bordet.",
		bring_in_items = "Ta med följande föremål.",
		kills_in_arena = "Få ${amount} dödande i Arenan.",
		headshot_kills_in_arena = "Få ${amount} dödande med huvudskott i Arenan.",
		punch_locals = "Slå ${amount} lokalbefolkningen.",
		move_from_place_to_place = "Förflytta från ${from} till ${to} på ${time} sekunder.",
		put_bets_in_jackpot = "Satsa på ${amount} i Jackpoten.",
		win_bets_in_jackpot = "Vinn föremål värda $${amount} i Jackpoten.",
		chop_vehicles = "Kapa ${amount} fordon.",
		purchase_ammo = "Köp ${amount} ammunition.",
		collect_items_from_diving = "Samla ${amount}x ${itemLabel} från dykning.",
		take_zombie_pills = "Ta ${amount} zombiepiller.",
		dig_up_a_treasure = "Gräv upp en skatt med hjälp av en skattkarta.",
		refine_gems = "Förädla ${amount} ädelstenar.",
		visit_location = "Besök ${location}.",
		visit_the_location = "Besök ${location}."
	},

	dashcam = {
		video = "Video",
		time = "Tid",
		date = "Datum",

		unit_id = "Enhets-ID",
		unit_name = "Enhetsnamn",
		unit_speed = "Enhetshastighet",

		state_seal_one = "Detta fordon är licensierat till",
		state_seal_two = "delstaten San Andreas",
		state_seal_three = "All obehörig användning är föremål för tunga straff enligt 13 S.A. Penal. Code 502 (a).",

		kmh = "km / h",
		mph = "mp / h",

		set_unit_id_to = "Din enhets-ID har nu ställts in på ${unitId}.",
		reset_unit_id = "Ditt enhets-ID har nu återställts.",
		failed_to_set_unit_id = "Misslyckades med att ställa in din enhets-ID.",
		unit_id_already_set_to = "Ditt enhets-ID är redan inställt på ${unitId}.",
		unit_id_already_reset = "Ditt enhets-ID har redan återställts.",
		invalid_unit_id = "Enhet-ID måste vara ett heltal mellan 1 och 999.",

		unit_id_vehicles_updated = "Dina nödfordon har uppdaterats för att återspegla ditt nya enhets-ID `${unitId}`."
	},

	debug = {
		ped = "Pedestrian",
		vehicle = "Fordon",
		object = "Objekt",
		network_id = "Nätverks-ID",
		owned_by_us = "Ägs av oss",
		owned_by = "Ägs av",
		one_state_set = "1 tillstånd satt",
		many_states_set = "${count} tillstånd satta",
		no_states = "Inga tillstånd",
		entity_health = "Hälsa ${health}/${maxHealth}",
		owned_by_server = "Server",
		first_owned_short = "Första ägare: ${firstOwned}",
		network_id_side = "Nätverks-ID: ${networkId}",
		no_target = "Inget mål",
		invalid_radius_parameter = "Ogiltigt `radius`-parameter.",
		inject_code_not_developer = "Spelaren försökte injicera kod men är inte en utvecklare.",
		inject_code_invalid_player = "Det finns inga spelare med server-id `${serverId}`.",
		inject_code_success_for_everyone = "Koden har framgångsrikt injicerats för alla.",
		inject_code_success_for_player = "Koden har framgångsrikt injicerats för ${consoleName}.",
		inject_code_success = "Koden har framgångsrikt injicerats.",
		inject_code_target_user_not_found = "Målningsanvändaren hittades inte.",
		inject_code_invalid_text = "Ogiltig text.",
		inject_code_invalid_input = "Ogiltig input.",
		inject_code_no_permissions = "Inga behörigheter.",
		inject_code_user_not_found = "Användaren hittades inte.",
		inject_code_invalid_url = "Ogiltig URL.",
		inject_code_invalid_radius = "Ogiltig radie.",
		game_pools = "Spelpooler:",
		ped_config_flags = "Ped Konfigurationsflaggor:",
		ped_is = "Ped Är:",
		vehicle_is = "Fordon Är:",
		native_calls = "Nativ Anrop: ${trueNativeCallsLastFrame} (${totalNativeCalls})",
		player_speed = "Spelarhastighet: ${playerSpeed}",
		player_ped = "Spelar-Ped: ${playerPedId}",
		heading = "Huvudinriktning: ${heading}",
		coords = "Koordinater: ${coords}",
		rotation = "Rotation: ${rotation}",
		velocity = "Hastighet: ${velocity}",
		ground_material = "Markmaterial: ${material}",
		g_force = "G-kraft: ${force}",
		debug_print_f8 = "Debug information har skrivits ut i din F8-konsol.",
		no_vehicle_bone = "Inget ben med namnet \"${boneName}\"",

		distance = "Avstånd: ${distance}m",
		distance_first = "Första positionen sparades.",

		get_search_invalid = "Ogiltig sökning (minst 2 tecken).",

		disabled_ped_bone_debug = "Inaktiverade ped-ben debuggning.",

		mph = "mph",
		vehicle_speed = "Hastighet: ${speed}",
		vehicle_average = "Medelhastighet: ${speed}",
		vehicle_top_speed = "Topp-hastighet: ${speed}",
		vehicle_acceleration = "0 till 60: ${time}",
		vehicle_acceleration_120 = "0 till 120: ${time}",
		vehicle_acceleration_150 = "0 till 150: ${time}",
		vehicle_acceleration_force = "Start-styrka: ${force}",

		invalid_network_id = "Ogiltigt nätverks-ID.",
		delete_entity_success = "Lyckades ta bort enhet med nätverks ID ${networkId}.",
		delete_entity_failed = "Det gick inte att radera objektet.",
		delete_entity_no_permissions = "Spelaren försökte radera ett objekt utan tillräcklig behörighet.",

		move_entity_success = "Objektet med nätverks-ID ${networkId} flyttades framgångsrikt.",
		move_entity_failed = "Det gick inte att flytta objektet.",
		move_entity_no_permissions = "Spelaren försökte flytta ett objekt utan tillräcklig behörighet.",

		fake_lag_updated = "Falsk fördröjning räknaren har uppdaterats till `${counter}`.",
		fake_lag_already_set_to = "Falsk fördröjning räknaren är redan inställd på `${counter}`.",
		fake_lag_enabled = "Falsk fördröjning har aktiverats med räknare `${counter}`.",
		fake_lag_invalid_counter_value = "Värdet `${counter}` är ogiltigt för räknaren för falsk fördröjning.",
		fake_lag_disabled = "Falsk fördröjning har avaktiverats.",
		fake_lag_not_enabled = "Falsk fördröjning är inte aktiverad.",

		weapon_name_missing = "Saknad vapenparametrar.",
		weapon_name_invalid = "`${weaponName}` är inte ett giltigt vapennamn.",
		model_name_missing = "Saknad modellnamnsparameter.",
		model_name_invalid = "`${modelName}` är inte ett giltigt modellnamn.",
		model_view_enabled = "Model-view aktiverad.",
		model_view_disabled = "Model-view avaktiverad.",
		invalid_component = "Ogiltig komponent `${componentName}`.",

		animation_currently_playing = "Spelar för närvarande en animation.",
		invalid_or_missing_animation_dict = "Ogiltig eller saknad animationsordlista `${animationDict}`.",
		missing_animation_name = "Ogiltigt eller saknat animationsnamn `${animationName}`.",
		invalid_animation_flags = "Ogiltiga animationsflaggor.",
		animation_played = "Spelar `${animationDict}` `${animationName}` (flaggor: ${flags}).",
		no_flags = "N/A",

		invalid_coordinates = "Ogiltiga koordinater.",
		added_coordinates_draw = "Lade till koordinaterna `x: ${x}, y: ${y}, z: ${z}` till draw list med ID `${drawId}`.",
		no_coordinate_draws_to_destroy = "Det fanns inga koordinatritningar att förstöra.",
		destroyed_coordinate_draws = "Förstörde `${drawingCoordinatesAmount}` koordinatritningar.",

		debug_damage_enabled = "Skadediagnostisering aktiverat.",
		debug_damage_disabled = "Skadediagnostisering inaktiverat.",

		enabled_network_debug = "Enhetsnätverksfelsökning aktiverad.",
		disabled_network_debug = "Enhetsnätverksfelsökning avaktiverat.",
		failed_network_debug = "Misslyckades med att aktivera enhetsnätverksfelsökning.",

		network_owner_subscription_no_permissions = "Försökte prenumerera på enhetens nätverksägare utan rättigheterna.",

		missing_ipl = "Saknad ipl-parameter.",
		enabled_ipl = "Ipl '${ipl}' har aktiverats.",
		disabled_ipl = "Ipl '${ipl}' har avaktiverats.",

		enabled_ipl_globally = "Ipl '${ipl}' har aktiverats globalt.",
		failed_enabled_ipl_globally = "Misslyckades med att aktivera ipl globalt.",
		disabled_ipl_globally = "Ipl: ${ipl} har inaktiverats globalt.",
		failed_disabled_ipl_globally = "Misslyckades med att inaktivera ipl globalt.",

		enabled_ipls_list = "Aktiverade IPL: ${list}.",
		no_ipls_enabled = "Ingen IPL är aktiverad.",

		missing_code = "Parameterkoden saknas.",
		run_code_success = "Kodsnutt utförd utan problem.",
		run_code_error = "Kodsnutt gav ett fel.",

		searching_world = "Söker i världen:\n${modelNames}",
		copied_clipboard = "Kopierade koordinater till urklipp.",

		saved_vehicle_model_lists_to_file = "Fordonets modellistor har sparats i en fil på servern.",

		network_debug_logs_title = "Växlat nätverksfelsökning",
		network_debug_logs_details_on = "${consoleName} växlade sin nätverksfelsökning på.",
		network_debug_logs_details_off = "${consoleName} växlade sin nätverksfelsökning av."
	},

	debug_menu = {
		menu_title = "Debug-menyn",

		timecycles = "Tidscykler",
		weather = "Väder",
		reset = "Återställ",
		refresh_interior = "Uppdatera interiör"
	},

	dna_evidence = {
		taking_sample = "Tar DNA-prov",
		already_taking_sample = "Du tar redan ett dna-prov av en spelare.",
		sample_no_player = "Ingen spelare som du kan ta ett DNA-prov av finns i närheten.",
		sample_no_bags = "Du har inga bevispåsar.",
		dna_evidence_bag = "DNA-bevis",

		evidence_failed = "Misslyckades med att ta DNA-bevis.",

		evidence_text = "Bevistyp: DNA-bevis\nDNA samlades in från ${fullName} #${characterId}\n\nYtterligare information:\n • Tidsstämpel för insamling: ${time}"
	},

	doors = {
		locked = "Låst",
		unlocked = "Olåst",
		locked_press_to_unlock = "[${InteractionKey}] Låst",
		unlocked_press_to_lock = "[${InteractionKey}] Olåst",
		locking = "Låser",
		unlocking = "Låser upp",
		jewelry_store_closed = "Smyckesaffären är för tillfället stängd. Vänligen kom tillbaka senare.",
		bank_closed = "Banken är för tillfället stängd. Vänligen kom tillbaka senare.",
		store_closed = "Butiken är för tillfället stängd. Vänligen kom tillbaka senare.",
		failed_to_sync_doors = "Misslyckades med att synkronisera dörrar. Något gick troligtvis fel. Vänligen försök igen.",
		saved_doors_to_file = "Sparade `${amount}` dörrar till en fil på servern.",
		no_nearby_doors = "Det finns inga närliggande dörrar att spara.",
		lockpicking_door = "Låsstyrdörr",

		debug_doors_on = "Felsökningsläge för dörrar påslaget.",
		debug_doors_off = "Felsökningsläge för dörrar avslaget.",
		doors_no_job = "N/A"
	},

	elevators = {
		use_elevator = "[${InteractionKey}] Använd hiss",
		elevator_title = "Hiss",
		close_menu = "Stäng meny",
		already_on_floor = "Du är redan på den här våningen.",

		no_elevator_nearby = "Det finns ingen hiss i närheten.",
		elevator_enabled = "Hiss #${elevatorId} aktiverad.",
		elevator_disabled = "Lyckades stänga av hiss #${elevatorId}.",
		elevator_toggle_failed = "Misslyckades med att växla hiss.",
		elevator_enabled_all = "Alla hissar aktiverade.",

		out_of_service = "Utanför tjänst",
		out_of_service_help = "Denna hiss är för tillfället utanför tjänst.",

		current = "Nuvarande",
		up = "Upp",
		down = "Ned",

		floor_tunnel_entrance = "Tunnelingång",
		floor_underground_tunnel = "Underjordisk Tunnel",

		floor_lounge = "Lounge",

		floor_garage = "Garage",
		floor_lobby = "Lobby",
		floor_roof = "Tak",
		floor_helipad = "Helikopterplatta",

		floor_shop = "Butik",

		floor_casino = "Kasino",
		floor_security = "Säkerhet",
		floor_loading_bay = "Lastbrygga",
		floor_vault = "Värderum",

		floor_second_floor = "Andra våningen",
		floor_icu = "Intensivvårdsavdelning",
		floor_ground = "Bottenvåning",
		floor_surgery = "Operationssal",

		floor_entrance = "Ingång",
		floor_server_room = "Serverrum",

		floor_50 = "Våning 50",
		floor_49 = "Våning 49",
		floor_47 = "Våning 47",
		floor_basement = "Källare",

		floor_exclusive_dealership = "Exklusiv bilhandel",
		floor_mayors_office = "Borgmästarens kontor",
		floor_mechanic_shop = "Verkstad",

		floor_fourth_floor = "4:e Våningen",
		floor_third_floor = "3:e Våningen",

		floor_obelisk = "Obelisk",
		floor_hangout = "Häng-område",
		floor_penthouse = "Penthouse",
		floor_theatre_office = "Teaterkontor",
		floor_psychiatrists_office = "Psykologens Kontor",
		floor_nightclub_garage = "Nattklubb Garage",
		floor_submarine = "Ubåt",

		floor_lower_penthouse = "Nedre Penthouse",
		floor_middle_penthouse = "Mellersta Penthouse",
		floor_upper_penthouse = "Övre Penthouse",

		floor_showroom = "Utställningshall",
		floor_office = "Kontor",
		floor_doj_office = "Justitiedepartementets kontor",

		floor_penthouse_top = "Penthouse (Översta våningen)",
		floor_penthouse_entrance = "Penthouse (Ingång)",

		floor_containment = "Inneslutningsrum",

		doj_office = "Justitiedepartementets kontor"
	},

	emails = {
		title = "OP E-post",
		email_domain = "san-andreas.gov",

		app_title = "E-post",

		error_loading_emails = "Något gick fel när du försökte ladda dina e-postmeddelanden.",

		new_email_notification = "~o~Nytt E-postmeddelande",

		email_label = "E-post",
		password_label = "Lösenord",
		set_password = "Sätt Lösenord",
		inbox = "Inkorg",
		outbox = "Skickat",
		new_email = "Nytt E-postmeddelande",

		loading = "Laddar...",
		failed_load_email = "Misslyckades med att ladda e-postinnehåll.",

		from_label = "Från",
		to_label = "Till",

		send_email = "Skicka",

		no_emails = "Inga e-postmeddelanden.",
		to_email = "till ${email}",

		error_no_subject = "Saknar ämne för e-postmeddelande.",
		error_invalid_target = "Ogiltig e-postadress.",
		error_subject_too_long = "E-postämne för långt.",
		error_body_too_long = "E-postkroppen för lång.",
		error_body_missing = "Saknar e-postkropp.",
		error_failed_send = "Misslyckades med att skicka e-postmeddelande.",
		error_password_empty = "Lösenordet kan inte vara tomt.",
		error_password_update_failed = "Misslyckades med att uppdatera lösenordet."
	},

	emote_items = {
		give_item = "[${InteractionKey}] Ge ${itemName}",
		received_item = "${firstName} gav dig en ${itemName}.",
		give_item_success = "Lyckades ge ${itemName} till spelaren.",
		give_item_failed = "Misslyckades med att ge ${itemName} till spelaren."
	},

	exclusive_dealership = {
		marker_label = "${label} | $${price}",
		marker_label_purchase = "[${SeatEjectKey}] Köp ${label} för $${price}",

		confirm_purchase = "Bekräfta köp",
		confirm_purchase_label = "${label} | $${price}",

		deny_purchase = "Glöm det, jag vill inte köpa det",
		accept_purchase = "Ja, jag vill köpa det",
		accept_purchase_info = "Är du säker på att du vill köpa detta fordon? Denna åtgärd kan inte ångras.",

		purchased_vehicle = "Köpte en ${label} för $${price}.",
		insufficient_funds = "Otillräckliga pengar.",
		area_not_clear = "Området där du vill spawn av fordonet är inte tomt.",
		invalid_package = "Fel supporter donation.",
		something_went_wrong = "Någonting gick fel.",

		failed_vehicle_spawn = "Kunde inte spawn det här fordonet. Det kommer fortfarande finnas i ditt garage.",

		next_rotation_in = "Nästa rotation om: ${time}",

		exclusive_dealership_blip = "Exklusivt Deluxe Motorsport",
		exclusive_buyback_blip = "Prestige Wheels Exchange",

		buyback_vehicle_help = "Tryck på ~INPUT_CONTEXT~ för att få tillgång till utbytet.",
		buyback_title = "Prestige Wheels Exchange",
		sell_closest_vehicle = "Sälj din ${label} för $${price} (${percent}% av dess pris)?",
		deny_sale = "Glöm det, jag vill behålla den.",
		accept_sale = "Ja, jag är säker.",
		accept_sale_description = "Är du säker på att du vill sälja ditt fordon för $${price}? Detta kan inte ångras.",
		are_you_sure_sell = "Är du säker på att du vill sälja den?",
		no_vehicle_to_sell = "Inga salubara fordon i närheten.",
		vehicle_not_owned = "Du äger inte detta fordon.",
		sale_success = "Du har sålt din `${label}` för $${price}.",

		sale_log_title = "EDM Inköp återköp",
		sale_log_description = "${consoleName} sålde deras `${label}` för $${price}.",

		log_title = "Köp hos EDM",
		log_description = "Köpte `${label}` för $${price}."
	},

	failures = {
		engine_failure_chance = "Satt motorfel chans till `${chance}`.",
		failure_chance_invalid = "Motorfel chansen måste vara mellan 1 och 1500.",
		engine_failure_reset = "Återställde standard motorfel chans."
	},

	fake_ids = {
		press_to_purchase = "Tryck ~INPUT_CONTEXT~ för att köpa falskt-ID.",

		store_title = "Falskt-ID butik",

		female_id = "Kvinnlig Falsk-ID",
		male_id = "Manlig Falsk-ID",
		close_menu = "Stäng Menyn",

		logs_purchased_title = "Köpt Falsk-ID",
		logs_purchased_details = "${consoleName} köpte en ${type} (${firstName} ${lastName} #${characterId}).",

		something_went_wrong = "Något gick fel.",
		failed_not_on_duty = "Du måste vara i tjänst för att köpa en falsk-ID.",
		failed_not_enough_money = "Du har inte tillräckligt med pengar för att köpa en falsk-ID.",
		purchase_success = "Köpte en Falsk-ID för $3 000."
	},

	fingerprint = {
		taking_fingerprint = "Tar fingeravtryck",
		already_fingerprinting = "Du tar redan fingeravtryck på en spelare.",
		sample_no_player = "Ingen spelare i närheten som du kan ta fingeravtryck på.",
		sample_no_bags = "Du har inga bevispåsar.",
		fingerprint_evidence = "Fingeravtryck",

		evidence_failed = "Misslyckades med att ta fingeravtryck.",

		evidence_text = "Bevistyp: Fingeravtryck\nFingeravtryck av ${fullName} #${characterId}\n\nYtterligare information:\n • Tidpunkt för upptagning: ${time}"
	},

	fireworks = {
		fire_firework = "[${InteractionKey}] Elda Fyrverkeri"
	},

	flag_swap = {
		toggle_flag_swap_no_permissions = "Försökte växla flaggor utan rättigheter.",

		toggled_flag_swap_on = "Växlade flaggor på.",
		toggled_flag_swap_off = "Toggla flagga-byte av.",

		showing_flags = "Visar flaggor.",
		not_showing_flags = "Visar inte längre flaggor.",

		flag_swap_leaderboard = "Flag Swap Leaderboard",
		ongoing = "Ongoing",
		not_ongoing = "Not Ongoing",
		position_and_name = "${position}. ${name}",
		flag_count = "${flags} flags",
		players_with_most_flags_will_show_here = "The players with the most amount of flags will show here."
	},

	forcefields = {
		invalid_radius = "Ogiltig radie (måste vara mellan 1 och 200).",
		failed_create = "Misslyckades att skapa kraftfält.",
		forcefield_marker = "ID: ${id}",
		invalid_forcefield_id = "Ogiltigt kraftfält ID.",
		failed_destroy = "Misslyckades att ta bort kraftfält.",

		create_forcefield_no_permissions = "Spelaren försökte skapa ett kraftfält men hade inte nödvändiga behörigheter att göra det.",
		destroy_forcefield_no_permissions = "Spelaren försökte ta bort ett kraftfält men hade inte nödvändiga behörigheter att göra det."
	},

	fortnite = {
		add_building_no_permissions = "Spelaren försökte lägga till en Fortnite-byggnad men hade inte nödvändiga behörigheter att göra det.",
		wipe_buildings_no_permissions = "Spelaren försökte ta bort Fortnite-byggnader men hade inte behörighet att göra det.",

		no_buildings_in_radius = "Det finns inga byggnader inom en radie av ${radius}.",
		no_buildings = "Det finns inga byggnader.",
		wiped_buildings_in_radius = "Raderade ${removedBuildings} byggnader inom en radie av ${radius}.",
		wiped_buildings = "Raderade ${removedBuildings} byggnader."
	},

	freecam = {
		enabled_freecam = "Aktiverade frikamera.",
		disabled_freecam = "Inaktiverade frikamera.",
		freecam_failed = "Kunde inte aktivera frikameran. Har du noclip eller liknande aktiverat?",

		freecam_logs_title = "Bytte frikamera",
		freecam_on_logs_details = "${consoleName} aktiverade sitt frikamera.",
		freecam_off_logs_details = "${consoleName} inaktiverade sitt frikamera.",

		track_player_logs_title = "Spårning",
		track_player_logs_details = "${consoleName} spårar ${targetName} med orbitkameran.",

		freecam_no_permission = "Försökte aktivera frikamera utan nödvändiga rättigheter.",
		track_player_no_permission = "Försökte spåra en spelare med frikameran utan nödvändiga rättigheter.",

		freecam_inactive = "Du är inte i frikamera just nu.",
		added_point = "Lade till kamerapunkt vid index ${index} (Transition: ${transition}ms).",
		disable_freecam = "Avaktivera frikamera för att spela upp punkter.",
		not_enough_points = "Du behöver minst 2 punkter för att spela upp.",
		already_replaying = "Du spelar redan upp kamerapunkterna.",
		cleared_points = "Rensade alla kamerapunkter.",
		replaced_point = "Ersatte kamerapunkt vid index ${index} (Transition: ${transition}ms).",
		moved_to_point = "Flyttade frikameran till kamerapunkt ${index} (Transition: ${transition}ms).",
		invalid_point_index = "Ogiltigt kameraindex."
	},

	frisk = {
		frisk_no_player = "Ingen spelare i närheten som du kan visitera.",
		already_frisking = "Du visiterar redan en spelare.",
		frisk_failed = "Det gick inte att visitera spelaren.",
		frisking = "Visiterar spelare",

		frisk_category_0 = "Verkar inte ha några vapen.",
		frisk_category_1 = "Verkar möjligen ha ett vapen.",
		frisk_category_2 = "Verkar ha ett vapen.",
		frisk_category_3 = "Verkar definitivt ha ett stort vapen.",
		frisk_category_4 = "Har definitivt en stor vapen."
	},

	fruits = {
		pick_fruit = "[${InteractionKey}] Plocka ${fruit}",
		picking_fruit = "Plockar ${fruit}",

		shake_tree = "Tryck ~INPUT_CONTEXT~ för att skaka trädet.",
		shaking_tree = "Skakar Trädet",

		tree_klonk = "Något föll från trädet och träffade ditt huvud."
	},

	gas_masks = {
		gas_grenade = "Gasgranat",
		in_gas_circle = "I en gascirkel!",
		not_in_gas_circle = "Inte i en gascirkel.",
		gas_time_left = "Du har ${gasTime} sekunder kvar av gasmasken.",
		hold_to_take_gas_mask_off = "Håll ~INPUT_VEH_HEADLIGHT~ för att ta av gasmasken.",
		hold_to_take_gas_mask_off_holding = "Fortsätt hålla för att ta av gasmasken."
	},

	gps = {
		altitude = "Höjd",
		latitude = "Latitud",
		longitude = "Longitud",
		speed = "Hastighet",

		distance = "Avstånd",
		heading = "Riktning",

		reset_target = "Återställ GPS mål.",
		set_gps_target = "Sätt GPS mål till ${x}, ${y}.",
		gps_blip = "GPS Mål",
		no_gps_item = "Du har inte en GPS.",

		collar_no_target = "Denna halsband har ingen telefon kopplad till den.",
		collar_timeout = "Du har precis skickat en ping, vänta en stund innan du skickar en till.",
		collar_sent = "Pinging av ${firstName} ${lastName} (${phoneNumber}) lyckades.",

		mph = "mph",
		kph = "km/h",
		ft = "ft",
		m = "m",
		km = "km",
		mi = "mile",
		deg = "°"
	},

	gravity = {
		gravity_success_on = "Toggade av gravitationen för ${consoleName}.",
		gravity_success_off = "Toggade på gravitationen igen för ${consoleName}.",
		gravity_client_failed = "Misslyckades med att ändra gravitationen för ${consoleName}.",
		gravity_failed = "Något gick fel när du försökte ändra gravitationen.",
		invalid_server_id = "Ogiltigt server-ID.",
		yourself = "dig själv"
	},

	gravity_gun = {
		name_override = "Gravity-Gun",

		failed_item_spawn = "Misslyckades med att skapa Gravity-Gun-objektet."
	},

	grills = {
		campfire = "Lägereld",
		use_campfire = "[${InteractionKey}] Använd lägereld",
		grill = "Grill",
		use_grill = "[${InteractionKey}] Använd grill"
	},

	gumballs = {
		use_gumball_machine = "[${InteractionKey}] Sätt i mynt",
		using_gumball_machine = "Sätter i mynt",
		not_enough_money = "Du har inte tillräckligt med pengar för att köpa en tuggummi.",
		something_went_wrong = "Något gick fel när du försökte köpa en tuggummi.",

		flavor = "Tuggummi (${flavor})"
	},

	gun_running = {
		insert_key = "Sätt in nyckel: ${key}",
		wrong_key = "Du använde fel nyckel.",
		decrypting = "Dekrypterar",
		guns_disabled = "Vapenhandel är för närvarande inaktiverat.",
		high_level_cooldown = "Misslyckades med att upprätta länk med FIB-servern, försök igen senare.",
		failed_start_run = "Misslyckades med att starta vapenhandel.",
		hack_timeout = "Uppkopplingen till servern tappades, försök igen.",

		drop_blip = "Vapencontainer",

		drill_container = "Tryck ~INPUT_CONTEXT~ för att borra upp behållaren.",

		drilling_container = "Borrar upp behållaren",
		failed_drill = "Misslyckades med att borra upp behållaren.",
		drill_success = "Lyckades borra upp behållaren och hittade ${item} x1.",

		started_run_logs_title = "Vapenrån",
		started_run_logs_details = "${consoleName} startade vapenrånshacket.",
		finished_run_logs_title = "Vapenrån Leverans",
		finished_run_logs_details = "${consoleName} borrade upp vapenbehållaren och fick 1x ${item}."
	},

	gun_trader = {
		press_e_to_talk = "Tryck ~INPUT_CONTEXT~ för att prata med Jim.",
		trader_closed = "Jims butik är för tillfället stängd.",

		trader_locked = "Jim behöver några saker från dig innan han är villig att öppna sin butik.",
		unlock_trader = "Ge föremålet till Jim.",

		purchase = "Köp",
		out_of_stock = "Slut på lager.",

		failed_trader_closed = "Misslyckades att köpa vapen, Jim's butik är stängd.",
		failed_no_stock = "Misslyckades att köpa vapen, det finns inget lager kvar.",
		failed_no_money = "Misslyckades att köpa vapen, du har inte tillräckligt med pengar.",
		failed_something_went_wrong = "Misslyckades att köpa vapen, något gick fel.",
		failed_trader_not_locked = "Misslyckades att låsa upp, Jim's butik är redan olåst.",
		failed_no_item = "Misslyckades att låsa upp, Jim behöver inte den varan.",
		failed_no_enough_items = "Misslyckades att låsa upp, du har inte tillräckligt många av den varan.",

		bought_gun_logs_title = "Jims Vapenbutik",
		bought_gun_logs_details = "${consoleName} köpte 1x ${itemName} för $${price} från Jim.",

		trader_active = "Handlare (öppet)",
		trader_inactive = "Handlare (stängt)",

		slogan_1 = "Kom ihåg den första regeln i en skottlossning ... ha en pistol!",
		slogan_2 = "Vapen har bara två fiender: rost och politiker",
		slogan_3 = "När i tvivel ... ta upp den!",
		slogan_4 = "En pistol i handen är bättre än en polis på telefonen.",

		copyright = "Upphovsrätt © 2009-2016 Jim's Gun Shop NC. Alla rättigheter förbehållna."
	},

	hacking = {
		local_disk = "Lokal disk (C:)",
		network = "Nätverk",
		external_device = "Extern enhet (J:)",
		hack_connect = "HackConnect.exe",
		brute_force = "BruteForce.exe",

		my_computer = "Min Dator",
		power_off = "Stäng av",

		password_cracked = "Lösenord krossat!",
		brute_force_failed = "Bruteforce misslyckades!",

		writing_data = "Skrivar data till buffert...",
		executing_code = "Kör skadlig kod...",
		memory_leak_detected = "Minnesläcka upptäckt, stänger ner..."
	},

	halloween = {
		is_in_school = "Är i skolan: ${isInSchool}",
		yes = "Ja",
		no = "Nej",
		press_to_hide_in_locker = "Tryck ~INPUT_CONTEXT~ för att gömma dig i skåpet.",
		locker_is_occupied = "Skåpet är upptaget.",
		press_to_exit_locker = "Tryck ~INPUT_CONTEXT~ för att lämna skåpet.",
		failed_to_start_escape_room = "Misslyckades med att starta flyktrummet.",
		started_escape_room = "Startade flyktrummet med ${playerAmount} spelare.",
		start_escape_room_missing_permissions = "Spelaren försökte starta ett flyktrum men hade inte tillräckliga rättigheter att göra det.",
		escape_instructions = "När ni har klarat av uppdraget kommer dörrarna att låsas upp och ni kan lämna byggnaden.",
		answer_the_phone = "Svara i telefonen.",

		-- NOTE: temp
		none = "Ingen"
	},

	health = {
		successfully_revived_player = "Lyckades återuppliva ${consoleName}.",
		successfully_revived_player_removed_injuries = "Lyckades återuppliva ${consoleName} och ta bort deras skador.",
		successfully_revived_everyone = "Lyckades återuppliva alla.",
		successfully_revived_everyone_removed_injuries = "Lyckades återuppliva alla och ta bort deras skador.",
		failed_to_revive = "Kunde inte utföra kommandot `/revive` korrekt.",
		revive_player_not_staff = "En spelare försökte återuppliva en annan spelare utan nödvändiga behörigheter.",
		revive_self_not_staff = "Spelaren försökte återuppliva sig själv eller någon annan, men hade inte tillräckliga behörigheter för att göra det.",
		revived_self_removed_injuries_title = "Återupplivade sig själv och tog bort skador",
		revived_self_removed_injuries_details = "${consoleName} återupplivade sig själv och tog bort sina skador.",
		revived_self_title = "Återupplivade sig själv",
		revived_self_details = "${consoleName} återupplivade sig själv.",
		revived_everyone_removed_injuries_title = "Återupplivade alla och tog bort skador",
		revived_everyone_removed_injuries_details = "${consoleName} återupplivade alla och tog bort deras skador.",
		revived_everyone_title = "Återupplivade Alla",
		revived_everyone_details = "${consoleName} återupplivade alla.",
		revived_player_removed_injuries_title = "Återupplivade Spelare och Avlägsnade Skador",
		revived_player_removed_injuries_details = "${consoleName} återupplivade ${targetConsoleName} och avlägsnade deras skador.",
		revived_player_title = "Återupplivade Spelare",
		revived_player_details = "${consoleName} återupplivade ${targetConsoleName}.",
		get_recent_deaths_not_staff = "Spelaren försökte hämta nyligen döda, men hade inte behörighet för att göra det.",
		get_player_last_death_not_staff = "Spelaren försökte hämta en annan spelares senaste död, men hade inte tillräckliga behörigheter för att göra så.",
		recent_deaths = "Senaste dödsfall",
		no_recent_deaths = "Det finns inga senaste dödsfall.",
		recent_deaths_list_entry = "${recentDeathId}. ${consoleName} dog för ${timer} sekunder sedan.",
		target_user_not_found = "Målet användaren hittades inte.",
		no_server_id_sent = "Inget server-ID skickat.",
		no_permissions = "Inga behörigheter.",
		user_not_found = "Användaren hittades inte.",
		player_death = "Spelardöd",
		player_death_recent = "${consoleName} dog senast för ${timer} sekunder sedan.",
		no_recent_death = "${consoleName} har inte dött nyligen.",
		death_alcohol_poisoning = "Du svimmade på grund av alkoholförgiftning.",
		character_has_hardcore_died = "${fullName} har dött. Du kan välja en annan karaktär.",

		death_timer_override_already_set_to = "Överstyrningen för dödstimern har redan ställts in på `${time}`.",
		set_death_timer_override = "Överstyrningen för dödstimern har ställts in på `${time}`.",
		time_parameter_is_invalid = "Parametern 'time' är ogiltig.",
		death_timer_override_removed = "Överstyrningen för dödstimern har tagits bort.",
		no_death_timer_override_set = "Det finns ingen återställning av dödstimern inställd.",

		invalid_distance = "Ogiltigt område för återupplivning (måste vara mellan 1 och 50).",
		no_players_in_range = "Det finns inga nedslagna spelare inom en radie på ${distance}m.",
		successfully_revived_range = "Lyckades återuppliva ${amount} spelare inom en radie på ${distance}m.",
		failed_revive_range = "Misslyckades med att återuppliva spelare.",
		range_revive_not_staff = "Spelaren försökte återuppliva spelare inom en viss radie, men hade inte rätt behörigheter för att göra det."
	},

	hitmarkers = {
		hitmarkers_enabled = "Träffmarkeringar aktiverade.",
		hitmarkers_disabled = "Träffmarkeringar inaktiverade."
	},

	hud = {
		mph = "mi/h",
		kmh = "km/h",
		knots = "knop",
		ft = "fot",
		m = "m",
		belt = "BÄLTE",
		limiter = "HASTIGHETSBEGRA",
		fuel = "bränsle",
		nitro = "kväve",
		battery = "batteri",
		fps = "BPS",
		ping = "PING",
		autopilot = "automatpilot",
		ground_asl = "AGH/HÖJD (${unit})",
		heading = "RIKTNING",
		gear = "växel",
		rpm = "varv/minut",
		degrees = "°C",
		degrees_f = "°F",
		steps_walked_deaths = "${stepsWalked} steg ~t~/~w~ ${deaths} nedgångar",
		altitude_temperature = "${altitude} ${unit} ~t~/~w~ ${temperature}${degrees}",
		scuba_timer = "Syre kvar: ${timer}",

		muted = "Muterad",

		fps_unit = "fps",
		ping_unit = "ms",

		smart_warnings = "Varning: ${warnings}!",
		dehydrated = "uttorkad",
		starving = "svältande",
		injured = "skadad",
		seriously_injured = "allvarligt skadad",
		incapacitated = "oförmögen",
		stressed = "stressad",

		and_seperator = "och",

		toggle_phone_gps_off = "Stängde av telefonens GPS.",
		toggle_phone_gps_on = "Aktiverade telefonens GPS.",

		advanced_hud_on = "Aktiverade den avancerade HUD:en.",
		advanced_hud_off = "Stängde av den avancerade HUD:en.",

		hud_gauges_on = "Tog på hudgauger.",
		hud_gauges_off = "Toggla av hudgauger."
	},

	hunting = {
		hold_to_skin = "[${InteractionKey}] Håll inne för att flå.",
		skinning_animal = "Flår dött djur.",
		meat_too_damaged = "Köttet från detta djur är för skadat.",
		animal_is_being_skinned = "Djuret blir flått."
	},

	identification = {
		los_santos = "Los Santos",
		citizen_card = "Medborgarkort",
		first_name = "Förnamn",
		last_name = "Efternamn",
		gender = "Kön",
		gender_male = "Man",
		gender_female = "Kvinna",
		date_of_birth = "Födelsedatum",
		citizen_id = "Medborgar-ID",

		citizenship = "Medborgarskap",
		citizenship_value = "USA",
		surname = "Efternamn",
		issued_on = "Utfärdat",
		expires_on = "Utgångsdatum",

		month_1 = "Jan",
		month_2 = "Feb",
		month_3 = "Mar",
		month_4 = "Apr",
		month_5 = "Maj",
		month_6 = "Jun",
		month_7 = "Jul",
		month_8 = "Aug",
		month_9 = "Sep",
		month_10 = "Okt",
		month_11 = "Nov",
		month_12 = "Dec",

		citizen_card_details = "${förnamn} ${efternamn} | Födelsedatum: ${födelsedatum} | Kön: ${kön} | Medborgar-ID: ${karakterId}",
		just_showed_citizen_card = "Du visade precis ett medborgarkort. Vänligen vänta lite.",

		hunting_license = "Jaktlicens",
		hunting_license_details = "Jaktlicens | ${firstName} ${lastName} | Medborgar-ID: ${characterId}",
		fishing_license = "Fiskelicens",
		fishing_license_details = "Fiskelicens | ${firstName} ${lastName} | Medborgar-ID: ${characterId}",
		pilot_license = "Flygcertifikat",
		pilot_license_details = "Flygcertifikat | ${firstName} ${lastName} | Medborgar-ID: ${characterId}",
		weapon_license = "Vapenlicens",
		weapon_license_details = "Vapenlicens | ${firstName} ${lastName} | Medborgar-ID: ${characterId}",
		just_showed_license = "Du visade precis ett körkort. Vänligen vänta en stund.",

		just_showed_badge = "Du visade precis en bricka. Vänligen vänta en stund.",
		sasp_badge = "SASP-bricka",
		sasp_badge_details = "SASP | ${firstName} ${lastName} | Position: ${positionName}",
		bcso_badge = "BCSO-bricka",
		bcso_badge_details = "BCSO | ${firstName} ${lastName} | Position: ${positionName}",
		sahp_badge = "SAHP-bricka",
		sahp_badge_details = "SAHP | ${firstName} ${lastName} | Position: ${positionName}",
		iaa_badge = "IAA-bricka",
		iaa_badge_details = "IAA | ${firstName} ${lastName} | Position: ${positionName}",
		fib_badge = "FIB-märke",
		fib_badge_details = "FIB | ${firstName} ${lastName} | Position: ${positionName}",
		swat_badge = "SWAT-märke",
		swat_badge_details = "SWAT | ${firstName} ${lastName} | Position: ${positionName}",
		management_badge = "Ledningsmärke",
		management_badge_details = "Ledning | ${firstName} ${lastName} | Position: ${positionName}",
		ems_badge = "EMS ID",
		ems_badge_details = "EMS | ${firstName} ${lastName} | Position: ${positionName}",
		doctor_badge = "Doktor-ID",
		doctor_badge_details = "Doktor | ${firstName} ${lastName} | Position: ${positionName}",
		bcfd_badge = "BCFD-märke",
		bcfd_badge_details = "BCFD | ${firstName} ${lastName} | Position: ${positionName}",
		state_security_badge = "State Security ID",
		state_security_badge_details = "State Security Department | ${firstName} ${lastName}",
		doj_badge = "DOJ ID",
		doj_badge_details = "DOJ | ${firstName} ${lastName} | Position: ${positionName}",
		doc_badge = "FÄNG Badge",
		doc_badge_details = "FÄNG | ${firstName} ${lastName} | Position: ${positionName}",

		badge_type_sasp = "San Andreas statliga polis",
		badge_type_bcso = "Blaine County sheriffkontoret",
		badge_type_sahp = "San Andreas motorvägspolis",
		badge_type_iaa = "Myndigheten för interna affärer",
		badge_type_fib = "Federala undersökningsbyrån",
		badge_type_swat = "Specialstyrkor för vapen och taktik",
		badge_type_management = "SASP ledning",
		badge_type_ems = "Akutsjukvårdstjänster",
		badge_type_doctor = "Medicinsk specialisttjänst",
		badge_type_bcfd = "Blaine County brandkår",
		badge_type_state_security = "Statens säkerhetsavdelning",
		badge_type_doj = "Justitiedepartementet",
		badge_type_doc = "Fängelsevårdsverket",

		badge_type_short_sasp = "SASP",
		badge_type_short_bcso = "BCSO",
		badge_type_short_sahp = "SAHP",
		badge_type_short_iaa = "IAA",
		badge_type_short_fib = "FIB",
		badge_type_short_swat = "SWAT",
		badge_type_short_management = "Ledning",
		badge_type_short_ems = "Ambulans",
		badge_type_short_doctor = "Läkare",
		badge_type_short_bcfd = "BCFD",
		badge_type_short_state_security = "SSD",
		badge_type_short_doc = "FÄNG"
	},

	import_export = {
		press_to_access = "Tryck ~INPUT_CONTEXT~ för att komma åt Import/Export-menyn.",

		pound = "lb",
		pounds = "lbs",
		minutes = "minuter",

		total = "Totalt",
		header = "Cayo Perico - Import / Export",
		header_small = "Skicka och hämta varor snabbt och enkelt från Cayo Perico.",

		loading = "Laddar...",

		order_arrived = "Anlänt",
		claim = "Kräv",

		claim_cayo = "Kräv på Cayo",
		claim_lsia = "Kräv på LSIA",

		big_goods = "Stora varor",
		go_postal = "Go Postal",
		caipira = "Caipira Airlines",

		no_items = "Inga varor att skicka.",

		confirm_dialog = "Är du säker på att du vill skicka ${total}lb för $${price}? Denna leverans kan inte avbrytas.",
		confirm = "Ja",

		no_active_order = "Du har inga aktiva leveranser.",
		order_not_completed = "Din leverans har inte kommit fram ännu.",

		order_claimed = "Du har hämtat din leverans.",

		not_enough_items = "Du har inte tillräckligt med föremål att skicka.",
		not_enough_money = "Du har inte tillräckligt med pengar för att skapa sändningen.",
		already_has_order = "Du har redan en aktiv sändning.",
		something_went_wrong = "Något gick fel.",

		order_success = "Din sändning är på väg! Den kommer att anlända om ${minutes} minuter.",

		created_shipment_title = "Sändning skapad",
		created_shipment_details = "${consoleName} har skapat en sändning för ${weight}lbs för $${price} med ${company}.",

		claimed_shipment_title = "Sändning hävdad",
		claimed_shipment_details = "${consoleName} har hämtat en försändelse på ${weight}lbs från ${company}.",

		blip_label = "Import / Export"
	},

	injuries = {
		inspect_no_player = "Ingen spelare nära som du kan inspektera.",
		already_inspecting = "Du inspekterar redan en spelare.",
		inspect_failed = "Misslyckades med att inspektera spelaren.",
		inspecting = "Inspekterar Spelare",
		no_injuries = "Inga skador eller blödningar",
		patient_bleeding = "Patienten blöder.",
		injury = "${label} Skada"
	},

	instances = {
		instance_created_added = "Skapa en instans med ID ${instanceId} (Lade till spelare: ${serverIds}).",
		instance_created = "Skapa en instans med ID ${instanceId}.",
		instance_creation_failed = "Misslyckades med att skapa instans.",
		instance_destroyed = "Förstör instans med ID ${instanceId}.",
		instance_destruction_failed = "Misslyckades med att förstöra instans.",
		instance_id_parameter_invalid = "Instans-ID-parametern är ogiltig.",
		added_player_to_instance = "Lade till ${consoleName} till instansen med ID ${instanceId}.",
		failed_to_add_player_to_instance = "Misslyckades med att lägga till spelaren till instansen.",
		server_id_parameter_invalid = "Server-ID-parametern är ogiltig.",
		removed_player_from_instance = "Tog bort ${consoleName} från instansen med ID `${instanceId}`.",
		failed_to_remove_player_from_instance = "Det gick inte att ta bort spelaren från instansen.",
		instance_players = "Spelare i instansen med ID `${instanceId}`: `${players}`.",
		failed_to_get_instance_players = "Det gick inte att hämta spelarna från instansen.",
		no_players = "Inga spelare.",

		instance_hud = "Instans ID: ${instanceId}",

		create_instance_not_developer = "Spelaren försökte skapa en instans men de var inte en utvecklare.",
		destroy_instance_not_developer = "Spelaren försökte förstöra en instans men de var inte en utvecklare.",
		add_player_to_instance_not_developer = "Spelaren försökte lägga till en spelare till en instans men de var inte en utvecklare.",
		remove_player_from_instance_not_developer = "Spelaren försökte ta bort en spelare från en instans men de var inte en utvecklare.",
		get_players_from_instance_not_developer = "Spelaren försökte hämta spelarna från en instans men de var inte en utvecklare."
	},

	interiors = {
		in_interior = "Inne i interiör: ${interiorId} (${portals} portaler).",
		in_room_id = "I rum: ${roomId} (${roomName}).",
		total_interiors = "Totalt antal interiörer: ${totalInteriors} (${totalInteriorPortals} totalt antal portaler).",
		total_unloaded_interiors = "Totalt antal avlastade interiörer: ${totalUnloadedInteriors} (${totalUnloadedInteriorPortals} totalt antal avlastade portaler).",
		portal_text = "id=${portalId} f=${flags}"
	},

	inventory = {
		access_trunk = "Flytta hit för att komma åt bagageluckan",

		used = "Använt",
		added = "Tillagt",

		pounds = "lb",

		store = "Lagra",
		gas_station = "Bensinstation",
		gas_station_backdoor = "Bensinstationens Bakre Ingång",
		cleaning_station = "Städstationen",
		grocery_store = "Livsmedelsbutik",
		penthouse_fridge = "Kylskåp",
		mug_shots = "Mug Shots",
		prison_store = "Fängelseaffären",
		fruit_vendor = "Frukthandlare",
		supermarket = "Stormarknad",
		island_store = "Ö-affär",
		travel_agency = "Resebyrå",
		island_bar = "Ö-bar",
		burger_bar = "Burgerbar",
		tool_store = "Verktygsbutik",
		gun_store = "Ammu-Nation",
		discount_store = "Rabattbutik",
		gun_store_with_shooting_range = "Ammu-Nation med Skjutbana",
		green_wonderland = "Gröna Underlandet",
		irish_pub = "Irländsk krog",
		bar = "Bar",
		midnight = "Midnight Tunershop",
		cinema = "Bio",
		strip_club = "Strippklubb",
		police_store = "Polisbutik",
		fib_store = "FIB-butik",
		police_badge_store = "Polisens badge-disk",
		doc_badge_store = "FÄNG Badge Skrivbord",
		flower_store = "Staceys blomsteraffär",
		gift_store = "Del Perro presenter",
		ems_store = "EMS-butik",
		drug_store = "Läkemedelsskåp",
		ems_badge_store = "EMS-badge-disk",
		doj_badge_store = "DOJ-badge-disk",
		state_security_store = "Statens säkerhetsbutik",
		pharmacy = "Apotek",
		chop_shop = "Sågverk",
		courthouse = "Domstol",
		burger_shot = "Burger Shot",
		burger_shot_fridge = "Burger Shot Kylskåp",
		erp_shop = "ERP-butik",
		pet_shop = "Djuraffär",
		bean_machine = "Bönmaskin",
		hunting_store = "Jaktbutik",
		fishing_store = "Fiskebutik",
		los_santos_golf_club = "Los Santos golfklubb",
		arcade_bar = "Arkadbaren",
		japanese_restaurant = "Japansk Restaurang",
		["945_studios"] = "945 Studios",
		grain_mill = "Kvarn",
		pd_prefix = "Polis",
		ems_prefix = "Akutmedicin",
		government_prefix = "Regering",
		wonderland_prefix = "WL",
		br_prefix = "BR",
		inventory_overweight = "Din inventory är för tung!",
		vehicle_locked = "Fordonet är låst.",
		press_to_access_store = "Tryck på ~INPUT_REPLAY_SHOWHOTKEY~ för att komma åt affären.",
		press_to_access_locker = "Tryck på ~INPUT_REPLAY_SHOWHOTKEY~ för att komma åt din privata förvaring.",
		press_to_access_shared_storage = "Tryck på ~INPUT_REPLAY_SHOWHOTKEY~ för att komma åt delad förvaring.",

		inspect_weapon = "Serienumret på den här ${itemName} verkar vara `${itemId}`.",
		inspect_weapon_broken = "Serienumret på den här ${itemName} verkar vara `${itemId}`, den verkar också vara helt sönder.",

		searching_dumpster = "Söker igenom soptunnan",

		nameable_title = "Namn på föremål:",

		locker_restricted = "Det här föremålet verkar inte passa i din förvaring.",

		press_to_access_shredder = "[${InteractionKey}] Öppna dokumentförstöraren.",

		invalid_item_id = "Ogiltigt föremåls-ID.",
		item_not_found = "Föremålet med ID `${itemId}` kunde inte hittas.",
		item_lookup = "${label} (${itemId}) finns för närvarande i ${inventoryName}:${inventorySlot}.",

		big_inventory_disabled = "Återställ karaktärens förvaringsplatser till standard.",
		big_inventory_enabled = "Tillfälligt ökat antalet förvaringsplatser för din karaktär.",

		press_to_open_public_inventory = "~INPUT_REPLAY_SHOWHOTKEY~ Öppna ${label}",

		burgershot_counter = "Burgershot-disk",

		inventory_name_missing = "Saknar namnet på inventariet.",

		shredder_title = "Papperskvarn",
		shredder_description = "Varning: Alla föremål som flyttas hit kommer att raderas omedelbart och kan inte återställas.",

		npc_vehicle_inventory = "NPC-inventering",

		store_help = "För att köpa något, dra ett föremål från det sekundära inventariet till ditt eget.",
		store_tax = "Butiksskatt",
		store_tax_percentage = "${tax}%",

		missing_job = "Du har inte det krävda yrket för att använda den här inventariet.",

		item_is_broken = "Den här föremålet är trasigt.",
		battle_royale_item = "Detta föremål kan endast användas i Battle Royale-matcher.",
		battle_royale_item_disallowed = "Det här föremålet är inte tillåtet i Battle Royale-matcher.",

		broken_food = "Den här maten är förstörd.",
		broken_drugs = "Det här läkemedlet är utgånget.",
		vape_empty = "Denna vape är tom.",

		craft_combine = "Tillverka <i>${output}</i>",
		combining = "Tillverkar",

		carve_jack_o_lantern = "Skär ut <i>Jack-o-lantern</i>",
		crush_cocoa_beans = "Krossa <i>Kakaobönor</i>",
		mix_hot_chocolate = "Blanda <i>Varm choklad</i>",
		crush_raw_ruby = "Krossa <i>Rå ruby</i>",
		crush_raw_sapphire = "Krossa <i>Rå safir</i>",

		search = "Sök",
		amount = "Mängd",
		use = "Använd",
		close = "Stäng",

		done = "KLART",
		burnt = "BRÄNT",
		danger = "FARA",
		fuel = "Bränsle: ${fuel}",

		item_does_stack = "Detta föremål staplas.",
		item_does_not_stack = "Detta föremål staplas inte.",
		individual_weight = "Individuell vikt",
		stack_amount = "Antal i stapel",

		logs_secondary_inventory_title = "Sekundär inventory öppnad",
		logs_secondary_inventory_details = "${consoleName} öppnade en sekundär inventering med namn `${inventoryName}`.",
		logs_ground_inventory_created_title = "Markinventering Skapad",
		logs_ground_inventory_created_details = "${consoleName} skapade en markinventering med namn `${inventoryName}`.",

		logs_item_moved_title = "Föremål Flyttat",
		logs_item_moved_details = "${consoleName} flyttade ${moveAmount}x ${itemLabel} till ${endInventory}:${endSlot} från inventering ${startInventory}:${startSlot}.",

		logs_item_purchased_title = "Föremål Köpt",
		logs_item_purchased_no_tax_details = "${consoleName} köpte ${purchaseAmount} st `${itemLabel}` för $${purchaseCost}.",
		logs_item_purchased_tax_details = "${consoleName} köpte ${purchaseAmount} st `${itemLabel}` för $${purchaseCost} med en extra avgift på $${taxCost} på grund av en försäljningsskatt på ${salesTaxPercentage} %.",

		radius_invalid = "En radie på `${radius}` är inte ett giltigt värde.",
		wiped_all_ground_inventories = "Tog bort ${inventoriesWiped} marklager.",
		wiped_nearby_ground_inventories = "Tog bort ${inventoriesWiped} marklager inom en radie på `${radius}`.",
		failed_to_wipe_ground_inventories = "Misslyckades med att rensa markinventarier.",
		no_ground_inventories = "Det fanns inga markinventarier att rensa.",
		no_ground_inventories_within_radius = "Det fanns inga markinventarier att rensa inom en radie på `${radius}`.",

		wipe_inventories_not_staff = "Spelaren försökte rensa inventarier men hade inte behörighet att göra det.",

		logs_wiped_all_ground_inventories_title = "Rensade Alla Markinventarier",
		logs_wiped_all_ground_inventories_details = "${consoleName} rensade alla markinventarier.",

		logs_wiped_nearby_ground_inventories_title = "Raderade närliggande markinventarier",
		logs_wiped_nearby_ground_inventories_details = "${consoleName} raderade alla markinventarier inom en radie av `${radius}`.",

		logs_combined_title = "Kombinerade föremål",
		logs_combined_details = "${consoleName} kombinerade ${inputs} för att skapa 1x ${output}.",

		press_use_campfire = "[${InteractionKey}] Använd lägereld",
		use_campfire = "Använd lägereld",

		dumpster_sandwich = "Möglig smörgås",
		dumpster_beer = "Gammalt öl",
		dumpster_milk = "Utgången duvmjölk",
		dumpster_meat = "Dammat kött (lite mögligt)",
		dumpster_fries = "Gamla pommes frites",
		dumpster_brownies = "Uttorkade brownies",
		dumpster_pizza_slice = "Möglig pizzaslice",
		dumpster_banana = "Hårig banan (mycket mosig)",

		-- items & item descriptions
		body_armor = "Kroppsskydd",
		body_armor_description = "Förbered dig för krig, eller bara en vanlig dag på LS gator.",
		first_aid_kit = "Första Hjälpen-kit",
		first_aid_kit_description = "\"Gör-det-själv\"-läkarkit.",
		bandages = "Bandage",
		bandages_description = "För alla småskador och sår.",
		oxygen_tank = "Syretank",
		oxygen_tank_description = "En lungexpansionspacka.",
		ifak = "IFAK",
		ifak_description = "\"En PD-kraftpack som säkrar W:na när den används. Att ta mer än 1 kommer resultera i känslor av EZ-klingande tillsammans med att dela ut deltagarmedaljer till förbrytarna när de besegras.\"<br><br>-Joe, 2020",

		citizen_card = "Medborgarkort",
		citizen_card_description = "Fungerar som identifikation, vapenlicens och körkort.",
		phone = "Mobil",
		phone_description = "never:tm:",
		radio = "Radio",
		radio_description = "Användbart redskap för alla meta-spelare där ute!",
		smart_watch = "Smartklocka",
		smart_watch_description = "Hatar du att behöva använda kontanter överallt? Använd bara din smartklocka! Den har även inbyggd kompass, klocka, GPS och stegräknare! Gå bara inte ut och spring kl 2 på natten.",
		tablet = "Surplatta",
		tablet_description = "En mycket stor telefon.",

		gps = "GPS",
		gps_description = "Tillfredsställ alla dina gadget-behov.",

		gps_collar = "GPS-halsband",
		gps_collar_description = "Ett GPS-halsband för att spåra dina husdjur.",

		boosting_tablet = "Boostingplatta",
		boosting_tablet_description = "Används för att få _helt lagliga_ kontrakt.",

		hunting_license = "Jaktkort",
		hunting_license_description = "Ett jaktkort för jakt.",
		fishing_license = "Fiskekort",
		fishing_license_description = "Ett fiskekort för fiske.",
		pilot_license = "Pilotlicens",
		pilot_license_description = "En pilotlicens för att flyga flygplan och liknande.",
		weapon_license = "Vapenlicens",
		weapon_license_description = "En vapenlicens för att äga och bära högre klass av vapen.",

		sasp_badge = "SASP-Emblem",
		sasp_badge_description = "Ett emblem för tjänstemän vid San Andrease polisavdelning.",
		sahp_badge = "SAHP-Emblem",
		sahp_badge_description = "Ett emblem för tjänstemän vid San Andrease Motorvägspolis.",
		bcso_badge = "BCSO-Emblem",
		bcso_badge_description = "Ett emblem för biträdande sheriff vid Blaine County Sheriffs kontor.",
		iaa_badge = "IAA-Emblem",
		iaa_badge_description = "Ett emblem för agenter vid Internal Affairs Agency.",
		fib_badge = "FBI-Emblem",
		fib_badge_description = "Ett emblem för agenter vid Federala Utredningsbyrån.",
		swat_badge = "SWAT-märke",
		swat_badge_description = "Ett märke för tjänstemän inom Specialvapen- och taktikavdelningen.",
		management_badge = "Chefsmärke",
		management_badge_description = "Ett märke för agenter inom SASP:s ledningsavdelning.",
		ems_badge = "EMS-ID",
		ems_badge_description = "Ett ID-kort för EMS-paramedicin.",
		doctor_badge = "Doktor-ID",
		doctor_badge_description = "Ett ID-kort för läkare.",
		bcfd_badge = "BCFD",
		bcfd_badge_description = "Ett märke för brandmän inom Blaine County Fire Department.",
		state_security_badge = "Statlig säkerhetslegitimation",
		state_security_badge_description = "En legitimation för agenter från det statliga säkerhetsskyddet.",
		doj_badge = "DOJ-märke",
		doj_badge_description = "Ett märke för anställda på justitiedepartementet.",
		doc_badge = "FÄNG Badge",
		doc_badge_description = "En badge för anställda på Fängelsevårdsverket.",

		radio_chop_shop = "Chop Shop-radio",
		radio_chop_shop_description = "Används för att ta emot information om 'heta' fordon från de fiktiva personerna som driver chop shopen.",

		binoculars = "Kikare",
		binoculars_description = "En måstenhet för alla som smyger runt i Los Santos!",
		photo_camera = "Kamera",
		photo_camera_description = "Nikon & Igna har utvecklat den senaste professionella kameran på marknaden. Med sin avancerade lins (70-300mm f/4.5-5.6E) kan du fånga även de finaste detaljerna, även små saker på marken.",

		remote_camera = "Fjärrkamera",
		remote_camera_description = "En kamera som kan placeras var som helst och kan ses på avstånd.",
		remote_monitor = "Fjärrmonitor",
		remote_monitor_description = "En bärbar monitor som kan användas för att se fjärrkameror.",

		handcuffs = "Handbojor",
		handcuffs_description = "För den kompletta ERP-upplevelsen.",
		bolt_cutter = "Bultsax",
		bolt_cutter_description = "ERP:en var inte så rolig som förväntat...",
		drill = "Borr",
		drill_description = "Jag satsar på att många människor runt här skulle ha användning för detta... med tanke på hur de verkar ha några skruvar lösa.",
		umbrella = "Paraply",
		umbrella_description = "Känn dig som Poppins.",
		watch = "Klocka",
		watch_description = "Ingen tid för försiktighet.",
		compass = "Kompass",
		compass_description = "43.3068 N 0.7668 W",
		map = "Karta",
		map_description = "Visar var du är på väg och var du har varit. Eller kanske var du där borta?",
		glass_breaker = "Nöd Fönster Kross",
		glass_breaker_description = "Används för att krossa bilfönster i nödsituationer.",

		picture = "Bild",
		picture_description = "Samlar alla minnen av dig och dina vänner.",

		brochure = "Broschyr",
		brochure_description = "En hjälpsam broschyr för att komma igång i staden.",

		basic_repair_kit = "Grundläggande Reparationskit",
		basic_repair_kit_description = "Det får saker att fungera, men bara knappt.",
		advanced_repair_kit = "Avancerat Reparationskit",
		advanced_repair_kit_description = "Används för att reparera trasiga själar.",
		basic_lockpick = "Enkel Låsmek",
		basic_lockpick_description = "Används för att låsa upp lås.",
		advanced_lockpick = "Avancerad Låsmek",
		advanced_lockpick_description = "Dölj dina barn, dölj din fru.",
		cleaning_kit = "Städset",
		cleaning_kit_description = "Perfekt för att rengöra ditt fordon, eller blodfläckarna som du har låtit torka i bakre delen av bagageutrymmet.",

		microphone_bug = "Mikrofon Bugg",
		microphone_bug_description = "Används för att avlyssna samtal.",
		vehicle_tracker = "Fordons spårare",
		vehicle_tracker_description = "Denna spårare är precis vad Michael behöver, som i över sju år har misstänkt att hans fru Amanda har varit otrogen med tennisinstruktören han fick henne.",
		device_scanner = "Enhetsskanner",
		device_scanner_description = "Används för att skanna efter närliggande övervakningsenheter.",
		radio_decryptor = "Radioavkrypterare",
		radio_decryptor_description = "Avkrypterar radiokanaler om den är ansluten till en radio.",

		paper_bag = "Papperspåse",
		paper_bag_description = "Perfekt för att förvara matvaror eller kanske någons huvud, död eller levande.",
		burger_shot_delivery = "Burger Shot-måltid",
		burger_shot_delivery_description = "En underbar samling av alla de slarviga köttiga underverken de serverar.",
		bean_machine_delivery = "Bean Machine-leverans",
		bean_machine_delivery_description = "En påse full av underbara godsaker från en liten kaffebutik uppe i stan.",

		ear_defenders = "Öronskydd",
		ear_defenders_description = "Används för att skydda öronen från höga ljud.",

		clothing_bag = "Klädpåse",
		clothing_bag_description = "Oroa dig aldrig igen för mode-nödsituationer! Klädpåsen låter dig lagra din favoritoutfit och omedelbart utrusta den var du än går. Denna påse har all magi som en fe, minus bibbidi-bobbidi-boo.",

		raw_morganite = "Rå Morganit",
		raw_morganite_description = "Morganit i dess naturliga form, färsk från gruvan.",
		raw_ruby = "Rå Rubin",
		raw_ruby_description = "Rubin i dess naturliga form, färsk från gruvan.",
		raw_sapphire = "Rå Safir",
		raw_sapphire_description = "Safir i dess naturliga form, färsk från gruvan.",
		raw_emerald = "Rå Smaragd",
		raw_emerald_description = "Smaragd i dess naturliga form, färsk från gruvan.",

		ruby_dust = "Rubin Puder",
		ruby_dust_description = "Puder från en Rubin.",
		sapphire_dust = "Safir Puder",
		sapphire_dust_description = "Damm från en safir.",

		morganite = "Morganit",
		morganite_description = "Skuren och polerad morganit.",
		ruby = "Rubin",
		ruby_description = "Skuren och polerad rubin.",
		sapphire = "Safir",
		sapphire_description = "Skuren och polerad safir.",
		emerald = "Smaragd",
		emerald_description = "Skuren och polerad smaragd.",

		ring = "Ring",
		ring_description = "Bara en tom ring.",

		morganite_ring = "Morganitring",
		morganite_ring_description = "En vacker ring med en stor morganit i mitten. Perfekt för bröllop, bästa vänner eller helt främlingar.",
		ruby_ring = "Rubinring",
		ruby_ring_description = "En vacker ring med en stor Rubin i mitten. Perfekt för bröllop, bästa vänner eller främlingar.",
		sapphire_ring = "Safirring",
		sapphire_ring_description = "En vacker ring med en stor Safir i mitten. Perfekt för bröllop, bästa vänner eller främlingar.",
		emerald_ring = "Smaragdring",
		emerald_ring_description = "En vacker ring med en stor Smaragd i mitten. Perfekt för bröllop, bästa vänner eller främlingar.",
		diamond_ring = "Diamantring",
		diamond_ring_description = "En vacker ring med en stor diamant i mitten. Perfekt för bröllop, bästa vänner eller totala främlingar.",

		gemstone_scanner = "Ädelstensskanner",
		gemstone_scanner_description = "Användbart för att skanna ädelstenar.",

		extended_clip = "Förlängt magasin",
		extended_clip_description = "Mindre laddning.",
		grip = "Handtag",
		grip_description = "Handtag för pipan.",
		sight = "Holografiskt sikte",
		sight_description = "Hur man fixar dålig träffsäkerhet.",
		scope = "Kikarsikte",
		scope_description = "Så du kan få distansbonus.",
		suppressor = "Tystare",
		suppressor_description = "Bang bang blir mer pew pew.",
		flashlight = "Ficklampa",
		flashlight_description = "Se i mörkret typ beat.",
		extended_pistol_clip = "Utökad Magasin (Pistol)",
		extended_pistol_clip_description = "Mindre laddningstid.",
		extended_smg_clip = "Utökad Magasin (SMG)",
		extended_smg_clip_description = "Mindre laddningstid.",
		extended_shotgun_clip = "Utökad Magasin (Hagelgevär)",
		extended_shotgun_clip_description = "Mindre laddningstid.",
		drum = "Trommamagasin",
		drum_description = "Någonsin behöva ladda om igen.",
		pistol_sight = "Pistol Sikte",
		pistol_sight_description = "Hur man fixar dåligt sikte.",

		aluminium_plate = "Aluminiumplatta",
		aluminium_plate_description = "Varning: Skyddar inte mot kulor... knarkis.",
		aluminium_rod = "Aluminiumstång",
		aluminium_rod_description = "Försök att inte slå dina vänner för hårt i huvudet med detta.",
		copper_nugget = "Kopparnugget",
		copper_nugget_description = "Liten bit av den söta, gyllene bruna saken.",
		copper_wire = "Koppartråd",
		copper_wire_description = "Allsidig tråd som kan användas till nästan allt inom elektronik.",
		lens = "Linssystem",
		lens_description = "Används i glasögon och mikroskop, din jävla nörd.",
		polymer_resin = "Polymerharts",
		polymer_resin_description = "Inte den rökbara typen, men fortfarande intressant.",
		screws = "Skruvar",
		screws_description = "Vad håller ni på med, skruvar?",
		spring = "Fjäder",
		spring_description = "Vet inte varför, men folk älskar att rengöra dessa?",

		grenade_shell = "Granatkolv",
		grenade_shell_description = "En kolv för en granat.",
		grenade_pin = "Granatnål",
		grenade_pin_description = "En nål för en granat.",

		paint = "Målarfärg",
		paint_description = "Användbart för staket och hus, men bör inte sniffas.",
		paint_brush = "Målarborste",
		paint_brush_description = "Användbar för att måla.",

		skin_patriotic = "Patriotisk hud",
		skin_patriotic_description = "För alla er rödblodiga amerikaner där ute.",
		skin_brushstroke = "Penselsträck hud",
		skin_brushstroke_description = "För alla er konstälskare där ute.",
		skin_skull = "Skallhud",
		skin_skull_description = "För alla er edgy kids där ute.",
		skin_leopard = "Leopardhud",
		skin_leopard_description = "För alla djurälskare där ute.",
		skin_zebra = "Zebraskinn",
		skin_zebra_description = "För alla djurälskare där ute.",
		skin_geometric = "Geometriskt mönster",
		skin_geometric_description = "För alla matte-nördar där ute.",

		refillable_bottle = "Återanvändbar flaska",
		refillable_bottle_description = "Rädda sköldpaddorna på riktigt.",

		capri_sun = "Capri Sun",
		capri_sun_description = "En läckerhet från din barndom.",

		gumball = "Tuggummi",
		gumball_description = "Ett tuggummi, vad mer vill du att jag ska säga?",

		water = "Vatten",
		water_description = "Farligt! Dihydrogenmonoxid är färglöst och luktfritt. Oavsiktlig inandning av DHMO kan vara dödlig. Prolongerad exponering av dess fasta form orsakar allvarlig vävnadsskada. Symptom vid intag av DHMO kan inkludera överdriven svettning och urinering, samt en känsla av uppblåsthet, illamående, kräkningar och elektrolyt obalans.",
		hamburger = "Hamburger",
		hamburger_description = "Amerikans smak!",
		belgian_fries = "Belgiska Pommes Frites",
		belgian_fries_description = "För förbättrad smak, DM:a @Giv3n#0753 och skicka honom bara \"fritas\".",
		coke = "Koks",
		coke_description = "Pablo?",
		wonder_waffle = "Underbart Våffel",
		wonder_waffle_description = "Vegansk, laktosfri, mejerifri, äggfri, glutenfri, ekologisk, antibiotikafri, sojafri, utan fruktos, nötfri, ej GMA, sockerfri, fettsnål och lågkolhydrat",
		cheeseburger = "Cheeseburgare",
		cheeseburger_description = "fettdam, fet, gummiaktig, dubbel deluxe, halvklabbig dubbel, smetig dubbel, riktigt duglig, stor, oljig, kall och fet, vanlig dubbel, stor fet, saftigaste, kingsize, deluxe, jäkligt bra, dubbel, fet, vanlig, trippel, gummiaktig, saftig, syndig, medioker, blöt, fet, riktigt stor och gratis",
		donut = "Donut",
		donut_description = "Varför finns det ett hål mitt i bwo",
		green_apple = "Grön Äpple",
		green_apple_description = "Det är som en Red Bull men det fanns inga objekt i spelet som matchade en Red Bull burk.",
		sandwich = "Smörgås",
		sandwich_description = "Det är veganskt.",
		taco = "Taco",
		taco_description = "El Brayans specialitet.",
		smores = "S'mores",
		smores_description = "ja",
		tic_tac = "Tic Tac",
		tic_tac_description = "Oxy? Nej betjänt, jag äter bara tic tacs!",
		pizza_slice = "Pizzabit",
		pizza_slice_description = "En liten bit av pizzan för dig.",
		hot_dog = "Korv med Bröd",
		hot_dog_description = "Skynda att äta denna festmåltid.",
		nachos = "Nachos",
		nachos_description = "Nachos bra nog för Encarnación!",
		vanilla_ice_cream = "Vaniljglass",
		vanilla_ice_cream_description = "För de enkla människorna utan smak i livet.",
		chocolate_ice_cream = "Chokladglass",
		chocolate_ice_cream_description = "Respektabel smak, inte alltför ovanlig.",
		vanilla_milkshake = "Vanilj Milkshake",
		vanilla_milkshake_description = "En klassisk milkshake från diner, passar fantastiskt med en burger och pommes!",
		chocolate_milkshake = "Chokladmilkshake",
		chocolate_milkshake_description = "En fantastiskt god shake, bara hoppas att CIA inte är efter dig innan du tar första klunken...",

		dog_food = "Hundmat",
		dog_food_description = "Hundmat är mat speciellt formulerad och avsedd för konsumtion av hundar och andra relaterade kaniner.",
		cat_food = "Kattmat",
		cat_food_description = "Kattmat är mat avsedd för konsumtion av katter. Katter har specifika krav på sina näringsämnen.",
		dog_treats = "Hundgodis",
		dog_treats_description = "Läckra godisar för din bästa hund.",
		cat_treats = "Kattgodis",
		cat_treats_description = "Delikata godisar för din lokala katt.",

		burger_buns = "Hamburgerbröd",
		burger_buns_description = "Lägg något gott mellan dessa brödskivor.",
		cheese = "Ost",
		cheese_description = "Tänk att vara laktosintolerant, förlorare.",
		lettuce = "Salladsblad",
		lettuce_description = "Den gröna saken som inte säljs på gatan.",
		patty = "Burgarkött",
		patty_description = "En dag kommer en liten man att hitta den hemliga formeln för detta kött, tills dess, fortsätt vända på burgarna, stekare.",
		potato = "Potatis",
		potato_description = "Det enda från Ryssland som inte är en AK eller Mail-order Brud.",
		raw_fries = "Rå Pommes Frites",
		raw_fries_description = "I princip bara en potatis, men någon la inte tillräckligt med ansträngning för att göra det till något.",
		raw_patty = "Rå Biff",
		raw_patty_description = "90% Riktigt Kött, de andra 10% gick förlorade i översättningen av förpackningen.",

		apple = "Äpple",
		apple_description = "Håll de onda doktorerna borta!",
		banana = "Banan",
		banana_description = "misstänkt",
		cherry = "Körsbär",
		cherry_description = "Överst (Om det är din preferens).",
		kiwi = "Kiwi",
		kiwi_description = "Frukt, inte djur. (Får inte förväxlas med A-32.)",
		mango = "Mango",
		mango_description = "Snälla, skjut inte! Låt bara mangon vara...",
		orange = "Apelsin",
		orange_description = "Du är glad att jag inte sa banan.",
		peach = "Persika",
		peach_description = "Inte en rumpa.",
		pineapple = "Ananas",
		pineapple_description = "Pennananas äppelpenna.",
		pomegranate = "Granatäpple",
		pomegranate_description = "Var glad över att vi stavade rätt.",
		strawberry = "Jordgubbe",
		strawberry_description = "Vanligtvis hittas i fält... för alltid.",
		watermelon = "Vattenmelon",
		watermelon_description = "Är det vatten eller melon? Vi kanske aldrig kommer att veta.",

		banana_peel = "Banan skal",
		banana_peel_description = "Ganska halkigt, var försiktig när du trampar på det.",

		beer = "Öl",
		beer_description = "Argt vatten.",
		vodka = "Vodka",
		vodka_description = "Русский стиль, cука ебать.",
		tequila = "Tequila",
		tequila_description = "Oroa dig inte, ingenting har lagts i din drink. ( ͡° ͜ʖ ͡°)",
		whiskey = "Whiskey",
		whiskey_description = "Endast för de mest förfallna alkoholisterna.",
		cider = "Cider",
		cider_description = "Vuxen äppeljuice",
		rum = "Rom",
		rum_description = "Dags att titta om Pirates of the Caribbean!",
		absinthe = "Absint",
		absinthe_description = "Varning: Innehåller alkohol. Låt endast barn dricka måttliga mängder.",
		wine = "Vin",
		wine_description = "Druvjuice.",

		moonshine = "Månsken",
		moonshine_description = "Det bästa sättet att bli full utan att staten vet.",
		yeast_packet = "Jästpåse",
		yeast_packet_description = "En påse jäst, används för att göra alkohol.",

		kimchi = "Kimchi",
		kimchi_description = "En kryddig koreansk sidorätt gjord av fermenterade grönsaker.",
		fish_sauce = "Fisksås",
		fish_sauce_description = "En kryddning gjord på fisk som har fått jäsa.",

		pumpkin = "Pumpa",
		pumpkin_description = "En stor orange grönsak som används till Halloween.",
		cabbage = "Vitkål",
		cabbage_description = "Perfekt till att göra egen kimchi.",

		smoothie = "Smoothie",
		smoothie_description = "Den perfekta blandningen av frukt, grönsaker och elektrolyter för att bota även de värsta bakfyllorna från gaming.",
		blender = "Blender",
		blender_description = "Den ultimata smoothie-blendern: eftersom en välbalanserad frukost är nyckeln till seger (och en god smoothie skadar aldrig heller).",

		cocoa_beans = "Kakaobönor",
		cocoa_beans_description = "Små bönor som används för att göra choklad.",
		cocoa_powder = "Kakaopulver",
		cocoa_powder_description = "Ett pulver gjort av kakaobönor.",
		hot_chocolate = "Varm choklad",
		hot_chocolate_description = "En varm dryck gjord av kakaopulver och mjölk.",

		jack_o_lantern = "Lanternapumpa",
		jack_o_lantern_description = "En pumpa med ett ansikte skuret i den.",

		cigarette = "Cigarette",
		cigarette_description = "Om du inte röker är du en fegis dawg",
		cigarette_pack = "Cigarette Pack",
		cigarette_pack_description = "För din pappa som har en cigaretterberoende (förhoppningsvis kommer han tillbaka efter att ha gått för att köpa dem).",

		cocaine_bag = "Cocaine Bag",
		cocaine_bag_description = "Mindre bitar av colombiansk historia.",
		cocaine_brick = "Cocaine Brick",
		cocaine_brick_description = "En bit av colombiansk historia.",
		joint = "Fimp",
		joint_description = "Fimp 420",
		oxy = "Oxy",
		oxy_description = "Har du några droger? Hjälper mot ryggont.",
		antibiotics = "Antibiotika",
		antibiotics_description = "Hjälper dig att bli av med infektioner och parasiter.",
		pain_killers = "Smärtstillande",
		pain_killers_description = "Det är peak selling time lace, jag behöver mina droger.",
		weed_seeds = "Weed Frön",
		weed_seeds_description = "Odlar 420 bro",
		weed_1q = "Weed 1q",
		weed_1q_description = "420 bro",
		weed_1oz = "Weed 1oz",
		weed_1oz_description = "1680 kr",

		oxy_prescription = "Oxy-recept",
		oxy_prescription_description = "Skumt oxy-recept.",

		brownies = "Brownies",
		brownies_description = "Klibbiga, luftiga och dubbelt så mycket choklad med bara en hint av extra kick för att verkligen få dig att luta dig tillbaka och ifrågasätta hela livet.",

		ejector_seat = "Ejector Seat",
		ejector_seat_description = "Ejecto Seato Cuz!",
		tuner_chip = "Tuner Chipp",
		tuner_chip_description = "Jag är snabbhet.",

		chip = "Chipp",
		chip_description = "Snygg hacker chipp.",
		decryption_key_red = "Röd dekrypteringsnyckel",
		decryption_key_red_description = "VISSTE DU? Den röda maffian är faktiskt bara en grupp fegisar.",
		decryption_key_green = "Grön dekrypteringsnyckel",
		decryption_key_green_description = "VISSTE DU? Koks var ursprungligen grön i färg.",
		decryption_key_blue = "Blå dekrypteringsnyckel",
		decryption_key_blue_description = "VISSTE DU? Det finns en blåfotad fågel? Referens: https://en.wikipedia.org/wiki/Blue-footed_booby",

		ballistic_shield = "Ballistiskt sköld",
		ballistic_shield_description = "Denna sköld bör användas när man ger sig ut i RP:s gängområden.",

		pet_porg = "Porg Polare",
		pet_porg_description = "Söt liten Porg Polare att ha på axeln och hålla dig sällskap. Söt och mysig, detta lilla djur kommer att sprida glädje vart du än går.",
		pet_duck = "Kvacktastisk Medhjälpare",
		pet_duck_description = "Med sitt glada kvackande och mjuka fjäderdräkt så är denna anka det perfekta tillskottet till dina äventyr. Den kommer glatt sitta på din axel, redo att utforska världen med dig.",
		pet_cat = "Axelkatt",
		pet_cat_description = "Denna fluffiga katt är alltid redo för en tupplur, och vad är bättre än att sova på din axel? Den kommer gladeligen krypa ihop och spinna medan du går om dina dagliga sysslor.",
		pet_cat_grey = "Lata Gizmo",
		pet_cat_grey_description = "Denna lilla, gråa katt är den ultimata i lathet. Den sitter nöjt på din axel och rör sig knappt, utom för att ge en lat stretch ibland.",
		pet_chicken = "Fjäderklädd kamrat",
		pet_chicken_description = "Denna bedårande lilla kyckling kommer gladeligen picka runt på din axel, dess mjuka fjädrar och nyfikna personlighet gör den till den perfekta följeslagaren för alla äventyr.",
		pet_shiba = "Tasspatrullen",
		pet_shiba_description = "Med sin lekfulla personlighet och mjuka päls är denna lilla shibahund den perfekta följeslagaren för alla äventyr. Den följer dig glatt vart du än går, dess viftande svans och glada skall lägger till en touch av glädje i din resa.",
		pet_mouse = "Rundis",
		pet_mouse_description = "Denna runda och fluffiga lilla chinchilla är den perfekta följeslagaren för alla dina äventyr. Dess mjuka päls och lekfulla personlighet gör det till den perfekta goskompisen, och den sitter glatt på din axel medan du går omkring din dag.",
		pet_raccoon = "Rascal tvättbjörnen",
		pet_raccoon_description = "Möt Rascal, den fluffiga tvättbjörnen som alltid är redo för äventyr. Med en välmatad kropp och en busig personlighet, kommer han gärna sitta på din axel och hjälpa dig leta efter skatter. Är du redo att ta med honom på ditt uppdrag?",

		hotwheels_mcqueen = "Blixt McQueen",
		hotwheels_mcqueen_description = "Jag är hastighet, svävar som en Cadillac, sticker som en BMW. KATCHOW KATCHOW KATCHOW",
		hotwheels_towmater = "Tow Mater",
		hotwheels_towmater_description = "Jag heter Mater, som i tomat men utan 'Tuh' ljudet.",

		boxing_gloves = "Boxningshandskar",
		boxing_gloves_description = "Gör dig till Rocky, men du kommer förmodligen inte få en uppföljare...",
		leash = "Koppel",
		leash_description = "Ingen kommer att veta varför du köpte detta, men de kommer definitivt att döma dig för att ha det.",

		shrooms = "Svampar",
		shrooms_description = "Någon sa att man skulle lägga dessa på pizza, men nu lägger pizzan sig själv på mig... vänta, vem är jag?",

		bucket = "Hink",
		bucket_description = "Kan användas som improviserad hjälm.",
		fertilizer = "Gödsel",
		fertilizer_description = "För en grönare värld.",

		aluminium_powder = "Aluminium Pulver",
		aluminium_powder_description = "Ett mångsidigt pulver som är mycket användbart inom industriella och kemiska applikationer. När det kombineras med specifika ingredienser kan det skapa högt reaktiva termitreaktioner, vilket skapar intensiv värme och ljus.",
		iron_oxide = "Järnoxidpulver",
		iron_oxide_description = "Ett vanligt förekommande pulver sammansatt av järn- och syremolekyler, som används inom olika industriella processer. När det blandas med vissa ämnen kan det delta i högt exoterma reaktioner, vilket frigör värme och energi.",

		gold_bar = "Guldstång",
		gold_bar_description = "Används för reparationer och hantverk.",

		aluminium = "Rå aluminium",
		aluminium_description = "Används för reparationer och hantverk.",
		glass = "Grov glas",
		glass_description = "Används för reparationer och hantverk.",
		rubber = "Oformad gummi",
		rubber_description = "Används för reparationer och hantverk.",
		scrap_metal = "Skrapskrot",
		scrap_metal_description = "Används för reparationer och hantverk.",
		steel = "Rått stål",
		steel_description = "Används för reparationer och hantverk.",

		purified_aluminium = "Renad aluminium",
		purified_aluminium_description = "Används för professionella reparationer.",
		tempered_glass = "Härdat Glas",
		tempered_glass_description = "Används för professionella reparationer.",
		vulcanized_rubber = "Vulkaniserat Gummi",
		vulcanized_rubber_description = "Används för professionella reparationer.",
		processed_metal = "Bearbetat Metall",
		processed_metal_description = "Används för professionella reparationer.",
		refined_steel = "Raffinerat Stål",
		refined_steel_description = "Används för professionella reparationer.",

		power_saw = "El-såg",
		power_saw_description = "Används för sågning av saker.",

		thermite = "Termitt",
		thermite_description = "Mycket instabilt pulver, inte till för att lukta på.",
		fake_plate = "Falskt registreringsskylt",
		fake_plate_description = "Hehe, skiten jagar mig inte.",
		evidence_bag_empty = "Tomt bevispåse",
		evidence_bag_empty_description = "Kan du förbättra det?",
		evidence_bag = "Bevispåse",
		evidence_bag_description = "Förseglad påse för att bevara bevis i brottsbekämpningen.",
		fingerprint_evidence = "Fingeravtrycksbevis",
		fingerprint_evidence_description = "Hjälper dig att fånga brottslingar med fingeravtryck.",

		ammo_box = "Stor ammunitionslåda",
		ammo_box_description = "Perfekt när du behöver skjuta mycket. Innehåller 60 patroner av varje ammo typ.",

		stungun_ammo = "Taserpatron",
		stungun_ammo_description = "Mindre än dödlig.",
		pistol_ammo = "Pistolammo",
		pistol_ammo_description = "Perfekt för dagligt bruk. Passar i de flesta handhållna vapen.",
		sub_ammo = "Subammo",
		sub_ammo_description = "Vill du tömma ett magasin mot en rivaliserande grupp? Denna prisvärda tillgång tillåter dig att göra just det. För full effekt rekommenderas en kulsprutepistol.",
		rifle_ammo = "Rifle ammunition",
		rifle_ammo_description = "Det här är för alla hardcore bankrånare som vill massakrera lite poliser på vägen.",
		sniper_ammo = "Sniper ammunition",
		sniper_ammo_description = "Skrud på din initiering!",
		shotgun_ammo = "Hagelgevär ammunition",
		shotgun_ammo_description = "Folk tror det finns krut i dessa! Clownerna... de är fyllda av kärlek och glädje.",

		silver_watches = "Silverklockor",
		silver_watches_description = "Kolla upp dig!",
		necklaces = "Halsband",
		necklaces_description = "Lägg till lite extra bling till din outfit!",
		gold_watches = "Guldklockor",
		gold_watches_description = "Och... var fick du dessa ifrån, exakt?",
		diamonds = "Diamanter",
		diamonds_description = "Du behöver 24 för att göra en full rustning. Jag skulle rekommendera att du tar 27 så att du också kan göra en hacka.",

		weather_spell_snow = "Väderspell (Snö)",
		weather_spell_snow_description = "Att använda denna föremål tillåter dig att tillfälligt kontrollera vädret och få det att snöa! Det är engångsbruk, använd med omsorg. Om du använder två väderspells samtidigt kommer den andra att bara sättas i kö.",
		weather_spell_rain = "Väderformel (Regn)",
		weather_spell_rain_description = "Genom att använda denna sak kan du tillfälligt kontrollera vädret och få det att regna! Den kan bara användas en gång, så använd med försiktighet. Om du använder två väderformler samtidigt förblir den andra i kö.",
		weather_spell_thunder = "Väderformel (Åska)",
		weather_spell_thunder_description = "Genom att använda denna sak kan du tillfälligt kontrollera vädret och få ett åskoväder! Den kan bara användas en gång, så använd med försiktighet. Om du använder två väderformler samtidigt förblir den andra i kö.",

		zombie_pill = "Zombie Piller",
		zombie_pill_description = "En konstig piller som gör ännu konstigare saker... Svälj på egen risk. Att ha en pistol på dig för att skydda dig från våldsamma drömmar kan vara klokt.",

		acid = "Syra",
		acid_description = "Gör dig hög permanent. Det finns inget sätt att undvika det.",

		rose = "Ros",
		rose_description = "Jag vet inte man, erp antar jag (?).",

		teddy_bear = "Teddybjörn",
		teddy_bear_description = "En vän som faktiskt kommer att lyssna på dig.",

		self_driving_chip = "Självkörande Processor",
		self_driving_chip_description = "Döda rådjur överallt... helt jävla kul.",

		ticket_50 = "$50 Lotteribiljett",
		ticket_50_description = "Lägg lite pengar i potten.",
		ticket_250 = "$250 Lotteribiljett",
		ticket_250_description = "Nu börjar det hända, ta den chansen.",
		ticket_500 = "$500 Lotteribiljett",
		ticket_500_description = "Titta på dig, det är hela din veckolön!",

		avocado = "Avokado",
		avocado_description = "Liten grön knölig frukt, skulle vara bra att göra en dip av.",
		avocado_smoothie = "Avokado-smoothie",
		avocado_smoothie_description = "Hälsosam grön juice, ignorera bitarna.",

		raspberry = "Hallon",
		raspberry_description = "https://i.redd.it/jbcj0uqbihg41.jpg",

		antenna = "Antenn",
		antenna_description = "Fånga alla frekvenser.",
		battery_pack = "Batteripaket",
		battery_pack_description = "Strömförsörjer alla dina elektronikenheter.",
		cpu = "CPU",
		cpu_description = "Datorns hjärta.",
		knob = "Reglage",
		knob_description = "Twista och vrid på det.",
		pcb_board = "Kretskort",
		pcb_board_description = "För prototyper av dina nästa uppfinningar.",
		screen = "Skärm",
		screen_description = "Se vad du gör.",
		sd_card = "SD-kort",
		sd_card_description = "För alla dina lagringsbehov.",
		wires = "Kablar",
		wires_description = "Håller allt samman.",

		note = "Notera",
		note_description = "Några anteckningar, vet inte man.",

		pigeon_milk = "Duvemjölk",
		pigeon_milk_description = "\"Borde ha druckit duvemjölk den där saken kommer att knocka dig rätt ut\"\nMjölk extraherad av Vedder med kärlek.",

		bandana = "Bandana",
		bandana_description = "Massa gang-historia. (Bloods vinner)",

		battering_ram = "Batteri",
		battering_ram_description = "Ta de där dörrarna till slam-staden!",

		trading_card = "Bytkort",
		trading_card_description = "Ett samlarbytkort, måste få dem alla!",

		trading_card_pack = "Bytkortspaket",
		trading_card_pack_description = "Ett paket med slumpmässiga bytkort, låt oss få några bra dragningar.",

		boombox = "Boombox",
		boombox_description = "Spela musik och vara störande var som helst, när som helst!",

		lighter = "Tändare",
		lighter_description = "vissa män vill bara se världar brinna",

		nitro_tank = "Nitrotank",
		nitro_tank_description = "Perfekt när du har behov av hastighet.",

		empty_nitro_tank = "Tom Nitrótank",
		empty_nitro_tank_description = "Likvärdigt med en tom konservburk.",

		sheet_metal = "Plåt",
		sheet_metal_description = "Perfekt för att uppgradera din 2x2.",

		valve = "Ventil",
		valve_description = "Half Life 3 När?",

		empty_tank = "Tom Tank",
		empty_tank_description = "Innehåller inte längre propan eller propan-tillbehör.",

		pepper_spray = "Pepparspray",
		pepper_spray_description = "MINA ÖGON!",

		jail_card = "Fängelsekort",
		jail_card_description = "Kort för att komma ut ur fängelse!",

		vape = "Geek Bar",
		vape_description = "Försöker du se cool ut? Trött på att vara en fegis? Ta en puff bwo!",

		acetone = "Aceton",
		acetone_description = "Perfekt för att ta bort färg eller sniffa det, Cooper style.",

		bleach = "Bleach",
		bleach_description = "Drick inte detta.",

		ammonia = "Ammoniak",
		ammonia_description = "Blanda med bleach för en magisk överraskning.",

		lithium_batteries = "Litiumbatterier",
		lithium_batteries_description = "Inte tillåtet på kommersiella flygplan, om du inte vill gå i luften.",

		meth_bag = "Meth Bag",
		meth_bag_description = "Kallad \"Cooper's Spice\". En del av den renaste kristallen som någonsin har passerat Alamo sjöns gränser.",

		meth_table = "Meth-bord",
		meth_table_description = "Ett roligt Breaking Bad-referens om att koka meth.",

		campfire = "Lägereld",
		campfire_description = "Kan placeras var som helst i världen. Perfekt för camping, jakt och fiske! Denna föremål kan inte plockas upp igen.",
		tent = "Tält",
		tent_description = "Kan placeras var som helst i världen. Perfekt för camping, jakt och fiske!",
		cloth_tent = "Tygtält",
		cloth_tent_description = "Kan placeras varsomhelst i världen. Perfekt för camping, jakt och fiske!",
		canvas_tent = "Kanvas Tält",
		canvas_tent_description = "Kan placeras varsomhelst i världen. Perfekt för camping, jakt och fiske!",
		plastic_chair = "Plaststol",
		plastic_chair_description = "Kan placeras varsomhelst i världen. Perfekt för camping, jakt och fiske!",
		fishing_chair = "Fiskestol",
		fishing_chair_description = "Kan placeras varsomhelst i världen. Perfekt för camping, jakt och fiske!",
		yoga_mat = "Yogamatta",
		yoga_mat_description = "Kan placeras var som helst i världen. Perfekt för camping, jakt och fiske!",
		cooler_box = "Kylväska",
		cooler_box_description = "Kan placeras var som helst i världen. Perfekt för camping, jakt och fiske!",
		parasol = "Parasoll",
		parasol_description = "Kan placeras var som helst i världen. Perfekt för camping, jakt och fiske!",
		parasol_table = "Parasollbord",
		parasol_table_description = "Kan placeras var som helst i världen. Perfekt för camping, jakt och fiske!",
		table = "Bord",
		table_description = "Kan placeras var som helst i världen. Perfekt för camping, jakt och fiske!",
		towel = "Handduk",
		towel_description = "Kan placeras var som helst i världen. Perfekt för camping, jakt och fiske!",
		disposable_grill = "Engångsgrill",
		disposable_grill_description = "Kan placeras var som helst i världen. Perfekt för camping, jakt och fiske! Detta föremål kan inte plockas upp igen.",
		grill = "Grill",
		grill_description = "Kan placeras var som helst i världen. Perfekt för camping, jakt och fiske!",
		police_barrier = "Polisbarriär",
		police_barrier_description = "Kan placeras var som helst i världen.",
		dummy = "Träningsskytt",
		dummy_description = "Kan placeras var som helst i världen.",
		target = "Mål",
		target_description = "Kan placeras var som helst i världen.",
		large_target = "Stort mål",
		large_target_description = "Kan placeras var som helst i världen.",
		cone = "Kona",
		cone_description = "Kan placeras var som helst i världen.",
		spike_strips = "Spikmatta",
		spike_strips_description = "Kan placeras var som helst i världen.",
		floodlight = "Översvämning",
		floodlight_description = "Kan placeras var som helst i världen.",
		left_diversion_sign = "Vänster Omdirigeringsskylt",
		left_diversion_sign_description = "Kan placeras var som helst i världen.",
		right_diversion_sign = "Höger Omdirigeringsskylt",
		right_diversion_sign_description = "Kan placeras var som helst i världen.",
		stop_sign = "Stoppskylt",
		stop_sign_description = "Kan placeras var som helst i världen.",
		bear_trap = "Björnfälla",
		bear_trap_description = "Kan placeras var som helst i världen.",
		barrier = "Barriär",
		barrier_description = "Din standard konstruktionsbarriär.",
		traffic_barrier = "Trafikbarriär",
		traffic_barrier_description = "En barriär för att se till att trafiken vet vad som pågår.",
		small_barrier = "Liten barriär",
		small_barrier_description = "Skithög liten babybarrikad.",
		traffic_barrel = "Trafikfat",
		traffic_barrel_description = "Det ser ut att vara möjligt att slå sönder, men låt bli... eller?",
		pedestrian_barrier = "Gångbarriär",
		pedestrian_barrier_description = "Bra att ha om inte det är en Travis Scott-konsert...",

		bandit_1 = "Bandit 1",
		bandit_1_description = "Kan placeras var som helst i världen.",
		bandit_2 = "Bandit 2",
		bandit_2_description = "Kan placeras var som helst i världen.",
		hostage_1 = "Gisslan 1",
		hostage_1_description = "Kan placeras var som helst i världen.",
		hostage_2 = "Gisslan 2",
		hostage_2_description = "Kan placeras var som helst i världen.",

		director_chair = "Regissörsstol",
		director_chair_description = "Kan placeras var som helst i världen. Bekvämt sittande på språng.",
		beach_chair = "Strandstol",
		beach_chair_description = "Kan placeras var som helst i världen. Bekväm sittplats för när du är på språng.",
		green_fishing_chair = "Grön Fiskarstol",
		green_fishing_chair_description = "Kan placeras var som helst i världen. Bekväm sittplats för när du är på språng.",
		blue_fishing_chair = "Blå Fiskarstol",
		blue_fishing_chair_description = "Kan placeras var som helst i världen. Bekväm sittplats för när du är på språng.",

		tire_wall = "Däckvägg",
		tire_wall_description = "När du behöver skydd men det inte finns någon.",

		claymore = "Klaymor",
		claymore_description = "Den ultimata anti-personella minan.",

		tv_stand = "TV-ställ",
		tv_stand_description = "Använd detta för att placera en TV var som helst du vill.",
		tv_remote = "TV-fjärrkontroll",
		tv_remote_description = "Universal fjärrkontroll (kvantbatterier ingår ej).",

		firework_rocket = "Fyrverkeriraket",
		firework_rocket_description = "En enkel fyrverkeriraket. Perfekt för fjärde juli.",
		firework_battery = "Fyrverkeribatteri",
		firework_battery_description = "Ett fyrverkeribatteri. Skjuter 4 fyrverkerier samtidigt.",

		pole = "Gul stolpe",
		pole_description = "Perfekt för att stoppa vem som helst på deras spår.",

		gasoline_bottle = "Gasflaska",
		gasoline_bottle_description = "För en snabb påfyllning till din bil eller ....öh....dig själv?",

		radio_jammer = "Radiostörningsenhet",
		radio_jammer_description = "Perfekt för att störa alla typer av inkommande och utgående radioöverföringar.",

		winner_trophy = "Vinnartrofé",
		winner_trophy_description = "Du är bäst!",

		treasure_map = "Skattkarta",
		treasure_map_description = "En blekt och väderbiten karta som lovar outtömlig rikedom till de som kan dechiffrera dess kryptiska ledtrådar. X-märket markerar platsen, men resan till skatten kan vara farlig och full av utmaningar.",
		treasure_map_piece = "Skrapsak av skattkarta",
		treasure_map_piece_description = "Ett trasigt fragment av en större skattkarta, kanske förlorat eller medvetet gömt. Den bär på en del av mysteriet, en pusselbit som väntar på att lösas. Samla alla bitar, sätt samman kartan och lås upp hemligheterna kring en förlorad skatt. Var beredd på rivaliserande skattletare och oväntade hinder längs vägen!",

		flag = "Flag",
		flag_description = "Hold onto it tightly!",

		black_dildo = "Svart dildo",
		black_dildo_description = "Vi ska få fram den erkännandet på ett sätt eller annat.",
		pink_dildo = "Rosa dildo",
		pink_dildo_description = "Handgjord, skuren och testad av Bugsy Middleman.",

		bean_coffee = "Bönkaffe",
		bean_coffee_description = "Bönvatten...det är allt det egentligen är.",
		cappuccino = "Cappuccino",
		cappuccino_description = "Espresso med bröstmjölk, jag menar bröstmjölk, jag menar bröstmjölk...",
		espresso = "Espresso",
		espresso_description = "Tillräckligt med energi för att driva ditt hem, allt i en liten kopp.",
		cream_cookie = "Gräddkaka",
		cream_cookie_description = "Krämig, precis som du vill ha den.",
		cheesecake = "Cheesecake",
		cheesecake_description = "Får inte förväxlas med en tårta gjord av ost.",
		chocolate_cake = "Chokladkaka",
		chocolate_cake_description = "Deliciös kaka gjord av finaste kakaobönor.",
		cupcake = "Muffins",
		cupcake_description = "En fluffig kaka fylld och täckt med magisk enhörningskräm.",
		pink_lemonade = "Rosa citronsaft",
		pink_lemonade_description = "Absolut inte bara vanlig citronsaft färgad rosa för att kunna ta dubbelt så mycket betalt...",

		irish_coffee = "Irländskt kaffe",
		irish_coffee_description = "Nysbryggt kaffe med en skvätt original irish whiskey i det.",

		chip_10 = "$10 markeringssten",
		chip_10_description = "En spelmarkör. Kan användas för att spela. Objektet kan konverteras till pengar på casinot.",
		chip_50 = "$50 markeringssten",
		chip_50_description = "En spelmarkör. Kan användas för att spela. Objektet kan konverteras till pengar på casinot.",
		chip_100 = "$100 markeringssten",
		chip_100_description = "En spelmarkör. Kan användas för att spela. Objektet kan konverteras till pengar på casinot.",
		chip_500 = "$500 markeringssten",
		chip_500_description = "En spelmarkör. Kan användas för att spela. Objektet kan konverteras till pengar på casinot.",
		chip_1000 = "1000-kronorschips",
		chip_1000_description = "En spelchips som kan användas för spel. Föremålet kan konverteras till pengar på kasinot.",
		chip_5000 = "5000-kronorschips",
		chip_5000_description = "En spelchips som kan användas för spel. Föremålet kan konverteras till pengar på kasinot.",
		chip_10000 = "10000-kronorschips",
		chip_10000_description = "En spelchips som kan användas för spel. Föremålet kan konverteras till pengar på kasinot.",

		grubs = "Mask",
		grubs_description = "Perfekt för fiske.",
		leeches = "Blodiglar",
		leeches_description = "Perfekt för fiske.",
		earthworms = "Daggmaskar",
		earthworms_description = "Perfekt för fiske.",
		fishing_rod = "Fiskespö",
		fishing_rod_description = "Perfekt för fiske.",
		raw_meat = "Rått kött",
		raw_meat_description = "En färsk köttbit.",
		cooked_meat = "Kokt kött",
		cooked_meat_description = "Kött som precis har blivit tillagat.",
		burnt_meat = "Bränt kött",
		burnt_meat_description = "Kött som har blivit bränt.",
		leather = "Läder",
		leather_description = "En fin päls direkt från rådjuret.",
		wood = "Trä",
		wood_description = "En bit trä direkt från ett träd.",
		charcoal = "Träkol",
		charcoal_description = "Överlägset vanligt kol.",

		beef_jerky = "Biff Jerky",
		beef_jerky_description = "Några goda bitar av biff jerky.",
		oreos = "Birthday Cake Oreos",
		oreos_description = "Några läckra kakor med en hint av födelsedagstårta.",
		nerds_chunks = "Nerds Bitar",
		nerds_chunks_description = "En påse med godsaker av Nerds godis kluster, läckert!",
		reeses_pieces = "Reese's Pieces",
		reeses_pieces_description = "Det perfekta mellanmålet när du är lite hungrig, men inte tillräckligt hungrig för att äta en hel måltid.",
		kettle_chips = "Kettle Chips (Honey-BBQ)",
		kettle_chips_description = "De bästa chipsen i världen.",
		cheetos = "Cheetos",
		cheetos_description = "Det bästa tilltugget för dina spelsessioner.",
		peanuts = "Saltade jordnötter",
		peanuts_description = "En burk med jordnötter, perfekt för mellanmål.",

		rice = "Ris",
		rice_description = "Det är mjuka och fluffiga korn.",
		nori = "Nori",
		nori_description = "Detta är sjögräs fast fancy.",
		soy_sauce = "Sojasås",
		soy_sauce_description = "Sojasås är en kryddig smaksättning med en rik umami-smak som är perfekt för marinader, kryddning, dipp och är låg i kalorier och hög i protein.",
		eggs = "Ägg",
		eggs_description = "Mångsidiga och näringsrika, ägg är perfekta för omeletter, pajer och bakverk.",
		lime = "Lime",
		lime_description = "Syrlig och rik på C-vitamin, lime ger smak åt drinkar, marinader och dressings.",
		coconut = "Kokosnöt",
		coconut_description = "Söt och krämig, kokosnöt förbättrar desserter, curryrätter och smoothies. Dabba.",
		sugar = "Sockeer",
		sugar_description = "Det är kokain men inte olagligt och ger dig diabetes.",

		golf_ball = "Golfboll",
		golf_ball_description = "Används för golfspel.",
		golf_ball_yellow = "Gul golfboll",
		golf_ball_yellow_description = "Används för golfsport.",
		golf_ball_orange = "Orange golfboll",
		golf_ball_orange_description = "Används för golfsport.",
		golf_ball_pink = "Rosa golfboll",
		golf_ball_pink_description = "Används för golfsport.",

		gas_mask = "Gasmask",
		gas_mask_description = "Skyddar mot alla typer av gaser, till och med farmors fisar.",
		nv_goggles = "Nattsynsglasögon",
		nv_goggles_description = "Hjälper dig att se i mörkret.",
		thermal_goggles = "Termiska glasögon",
		thermal_goggles_description = "Hjälper dig se igenom väggar (inte faktiskt xD).",

		green_rolls = "Gröna Rullar",
		green_rolls_description = "För oss som behöver mer än den genomsnittliga mängden.",
		rolling_paper = "Rullpapper",
		rolling_paper_description = "Det snabba papperet att rulla ihop och röka bort din smärta.",

		arena_pill = "Arena Piller",
		arena_pill_description = "Ett märkligt piller som gör ännu mer märkliga saker ... Svälj på egen risk. Att bära en pistol för att skydda sig från våldsamma drömmar är kanske klokt.",

		shovel = "Skopa",
		shovel_description = "En stadig grävverktyg för att avslöja dolda skatter och avtäcka hemligheter i alla miljöer, vilket gör den till en värdefull tillgång för entusiastiska skattletare.",

		electric_fuse = "Elektrisk säkring",
		electric_fuse_description = "Den elektriska säkringen är en nödvändig artikel för rånrums. Den måste placeras i säkringsboxen för att driva nyckelkortslåset.",
		keycard_green = "Grön nyckelkort",
		keycard_green_description = "Används för att öppna lagringar fulla av medicinska förnödenheter.",
		keycard_blue = "Blå nyckelkort",
		keycard_blue_description = "Används för att öppna lagringar fyllda med teknisk utrustning.",
		keycard_red = "Röd Keycard",
		keycard_red_description = "Används för att öppna en vapenlager.",

		magazine = "Tidning",
		magazine_description = "En tidning.",

		bank_rockfish = "Bank Rockfisk",
		black_and_yellow_rockfish = "Svart och Gul Rockfisk",
		black_rockfish = "Svart Rockfisk",
		blackgill_rockfish = "Svartgälle Rockfisk",
		blackspotted_rockfish = "Svartprickig Rockfisk",
		blue_rockfish = "Blå Rockfisk",
		bocaccio = "Bocaccio",
		bronzespotted_rockfish = "Bronzepickig Rockfisk",
		brown_rockfish = "Brun rockfisk",
		cabezon = "Cabezon",
		calico_rockfish = "Calico rockfisk",
		california_scorpionfish = "Kalifornisk skorpionfisk",
		canary_rockfish_variant_1 = "Kanariske rockfisk (Variant 1)",
		canary_rockfish_variant_2 = "Kanariske rockfisk (Variant 2)",
		chilipepper_rockfish = "Chilipepper rockfisk",
		china_rockfish = "Kinesisk rockfisk",
		copper_rockfish_variant_1 = "Kopparröd rockfisk (Variant 1)",
		copper_rockfish_variant_2 = "Kopparröd rockfisk (Variant 2)",
		cowcod = "Kohi cod",
		darkblotched_rockfish = "Mörkfläckig rockfisk",
		deacon_rockfish = "Deacon Rockfish",
		dusky_rockfish_dark_version = "Mörk Dusky Rockfish",
		dusky_rockfish_light_version = "Ljus Dusky Rockfish",
		flag_rockfish = "Flag Rockfish",
		gopher_rockfish = "Gopher Rockfish",
		grass_rockfish_dark_version = "Mörk Grass Rockfish",
		grass_rockfish_light_version = "Ljus Grass Rockfish",
		greenblotched_rockfish = "Grönfläckig Rockfish",
		greenspotted_rockfish = "Grönprickig Rockfish",
		greenstriped_rockfish = "Grönrandig Rockfish",
		halfbanded_rockfish = "Halvbandad rocka",
		honeycomb_rockfish = "Honungskaka rocka",
		kelp_greenling_female = "Tånggrönling (hona)",
		kelp_greenling_male = "Tånggrönling (hane)",
		kelp_rockfish = "Tång rocka",
		lingcod = "Lingcod",
		olive_rockfish = "Oliv rocka",
		pacific_ocean_perch = "Stillahavs havsabborre",
		pacific_sand_sole = "Stillahavs sandtunga",
		pacific_sanddab = "Stillahavs sandabborre",
		quillback_rockfish_variant_1 = "Piggryggad rocka (Variant 1)",
		quillback_rockfish_variant_2 = "Piggryggad rocka (Variant 2)",
		redbanded_rockfish = "Radbandad Rocka",
		rock_sole = "Stenig Tunga",
		rosy_rockfish = "Rosig Rocka",
		rougheye_rockfish = "Rödögad Rocka",
		shortraker_rockfish = "Korthuggen Rocka",
		silvergray_rockfish = "Silvrig Grå Rocka",
		speckled_rockfish = "Fläckig Rocka",
		squarespot_rockfish = "Fyrkantig Fläckig Rocka",
		starry_flounder = "Stjärnflundra",
		starry_rockfish = "Stjärnig rocka",
		tiger_rockfish_dark_version = "Tigrerad Rocka (Mörk version)",
		tiger_rockfish_pink_version = "Tigrerad Rocka (Rosa version)",
		treefish = "Trädgädda",
		vermilion_rockfish = "Vermilion Rockfish",
		widow_rockfish = "Änka Rockfish",
		yelloweye_rockfish_adult = "Gulögd Rockfish (Vuxen)",
		yelloweye_rockfish_juvenile = "Gulögd Rockfish (Ungdom)",
		yellowtail_rockfish = "Gulstjärtad Rockfish",

		bank_rockfish_description = "Bank rockfish är ovalformade fiskar med litet huvud och taggar. De är dyster röda eller rödbruna, ofta med en klar rosa-orange zon längs den laterala linjen och svarta fläckar på kroppen och spoliken på den dorsala fenan.",
		black_and_yellow_rockfish_description = "Sebastes chrysomelas, vanligtvis känt som svartgul rockfisk, är en marin fiskart i familjen Sebastidae. Den återfinns i klippiga områden i Stilla havet utanför Kalifornien och Baja California.",
		black_rockfish_description = "Svart rockfisk, också känd under olika namn som svart seaperch, svartrockabborre, svartrockad, havsabborre, svart snapper och stillahavsöring, är en art av marin strålfenig fisk som tillhör underfamiljen Sebastinae, rockfiskar, inom familjen Scorpaenidae.",
		blackgill_rockfish_description = "En art som ibland fångas utanför Washington-kusten av kommersiella fiskare som använder uttertrål och långrev. Tidigare en vanligt fångad art utanför Kaliforniens kust.<br><br>Små versioner kan hittas till havs, men äldre svartgäddor flyttar till djupt vatten.",
		blackspotted_rockfish_description = "Sebastes melanostictus, svartprickig rocka, är en art av marina fiskar tillhörande underfamiljen Sebastinae, rockor, en del av familjen Scorpaenidae. Den finns i norra Stilla havet.",
		blue_rockfish_description = "Blå rockfisk eller blå havabborre är en art av marina benfiskar som tillhör underfamiljen Sebastinae, rockfiskarna, och familjen Scorpaenidae. Den finns i nordöstra Stilla havet och sträcker sig från norra Baja California till centrala Oregon. Endast hittas vid flodmynningar, inte direkt i floderna.",
		bocaccio_description = "Bocaccio rockfisken är en art av marina benfiskar som tillhör underfamiljen Sebastinae, rockfiskarna, och familjen Scorpaenidae. Den finns i nordöstra Stilla havet. Även känd som \"röd snapper\".",
		bronzespotted_rockfish_description = "Sebastes gilli, bronzespotted rockfish, är en fiskart som tillhör underfamiljen Sebastinae, rockfishes, och familjen Scorpaenidae. Den finns i östra centrala Stilla havet.",
		brown_rockfish_description = "Den bruna rockfishen, vars andra namn inkluderar brown seaperch, chocolate bass, brown bass och brown bomber, är en art av marina benfiskar som tillhör underfamiljen Sebastinae, rockfishes och familjen Scorpaenidae. Den finns i nordöstra Stilla havet.",
		cabezon_description = "Cabezon är en stor art av skulpin som är inhemska till Stilla havskusten i Nordamerika. Även om släktnamnet översätts bokstavligen som \"skorpionfisk\", tillhör riktiga skorpionfiskar den besläktade familjen Scorpaenidae.",
		calico_rockfish_description = "Sebastes dallii, kaliko rockfish är en art av marina benfiskar som tillhör underfamiljen Sebastinae, rockfiskar, som ingår i familjen Scorpaenidae. Den finns i östra centrala Stilla havet.<br><br>Hanar blir könsmogna först vid sju års ålder, medan honor når könsmognad vid nio års ålder.",
		california_scorpionfish_description = "Scorpaena guttata är en fiskart i familjen skorpionfiskar som är känd under det gemensamma namnet Kalifornisk skorpionfisk. Den är inhemska till östra Stilla havet, där den kan hittas längs kusten av Kalifornien och Baja California.",
		canary_rockfish_variant_1_description = "Canary rockfish, också känd som orange rockfish, är en art av marina strålfeniga fiskar som tillhör underfamiljen Sebastinae, rockfishes, i familjen Scorpaenidae. Den är inhemska till vattnen i Stilla havet utanför västra Nordamerika.",
		canary_rockfish_variant_2_description = "Canary rockfish, också känd som orange rockfish, är en art av marina strålfeniga fiskar som tillhör underfamiljen Sebastinae, rockfishes, en del av familjen Scorpaenidae. Den är infödd till vattnen i Stilla havet utanför västra Nordamerika.",
		chilipepper_rockfish_description = "Sebastes goodei, chilipepper rockfish och chilipepper, är en art av marina strålfeniga fiskar som tillhör underfamiljen Sebastinae, rockfishes, en del av familjen Scorpaenidae. Denna art lever främst utanför kusten av västra Nordamerika från Baja California till Vancouver.",
		china_rockfish_description = "Kina-rockan, även kallad gulrandig rocka eller gulprickig rocka, är en art av marina benfiskar som tillhör underfamiljen Sebastinae, rockfiskar, och familjen Scorpaenidae. Den är inhemska till vattnen i Stilla havet utanför västra Nordamerika.",
		copper_rockfish_variant_1_description = "Koppar-rockan, även känd som koppar-sälggörs, är en art av marina benfiskar som tillhör underfamiljen Sebastinae, rockfiskar, och familjen Scorpaenidae. Den finns i östra Stilla havet.<br><br>De kommer aldrig att ses i generiska oceaner, eftersom de bara vill vara nära toppen eller botten.",
		copper_rockfish_variant_2_description = "Kopparrockan, även känd som kopparhavsgös, är en art av marina benfiskar som tillhör underfamiljen Sebastinae, rockfiskarna, och familjen Scorpaenidae. Den finns i östra Stilla havet.<br><br>De kommer aldrig att ses i vanliga hav eftersom de endast vill vara nära ytan eller längst ner.",
		cowcod_description = "Sebastes levis, också kallad cowcod eller ko-rockfisk, är en art av marina benfiskar som tillhör underfamiljen Sebastinae, rockfiskarna, och familjen Scorpaenidae. Den finns i östra Stilla havet.<br><br>Spannet i storlek skapar konkurrensfördelar.",
		darkblotched_rockfish_description = "Darkblotched rockfish, också känt under namnen blackblotched rockfish, blackmouth rockfish och blotchie, är en djupkroppfisk.",
		deacon_rockfish_description = "Sebastes diaconus, deacon rockfish, är en art av marina benfiskar som tillhör underfamiljen Sebastinae, rockfiskar, i familjen Scorpaenidae. Den finns i östra Stilla havet. <br><br>Hanar kommer alltid att leva längre än honor.",
		dusky_rockfish_dark_version_description = "Sebastes ciliatus är en art av rockfish vanligtvis känd som dusky rockfish. Den återfinns typiskt i norra Stilla havet.",
		dusky_rockfish_light_version_description = "Sebastes ciliatus är en typ av rockfisk som oftast hittas i norra Stilla havet.",
		flag_rockfish_description = "Sebastes rubrivinctus, även känd som flaggroocka, spanska flaggan, röd- och vitbandad rocka eller barberpole, är en typ av marint strålfenigt fisk som tillhör underfamiljen Sebastinae, rockfiskar, i familjen Scorpaenidae. Den finns i Östra Stilla havet.",
		gopher_rockfish_description = "Gopher rockfisk, också känd som gopher sea perch, är en typ av marina strålfeniga fiskar som tillhör underfamiljen Sebastinae, rockfiskar, i familjen Scorpaenidae. Den finns i östra Stilla havet, främst utanför Kalifornien.",
		grass_rockfish_dark_version_description = "Sebastes rastrelliger, gräsrockfisk, är en art av havsfisk som tillhör underfamiljen Sebastinae, rockfiskar, och familjen Scorpaenidae. Den är vanlig i vattnen i Stilla havet.<br><br>Vanligtvis fångas den av fritidsfiskare med krok och lina.",
		grass_rockfish_light_version_description = "Sebastes rastrelliger, gräsrockfisk, är en art av havsfisk som tillhör underfamiljen Sebastinae, rockfiskar, och familjen Scorpaenidae. Den är vanlig i vattnen i Stilla havet.<br><br>Vanligtvis fångas den av fritidsfiskare med krok och lina.",
		greenblotched_rockfish_description = "Grönfläckig Rockfish är en djuphavsart som finns enskilt eller i små grupper inom stenstrukturer på djup mellan 55 m (180 fot) och 490 m (1 610 fot). De når en maximal längd på 54 cm (21 tum), med honorna som är större än hanarna.<br><br>Grönfläckiga, Grönprickiga och Grönrandiga delar alla samma egenskaper och beteenden.",
		greenspotted_rockfish_description = "Sebastes chlorostictus, grönprikig rockfish, är en art av marina strålfeniga fiskar som tillhör underfamiljen Sebastinae, rockfishes, i familjen Scorpaenidae. Den finns i östra Stilla havet.<br><br>Grönfläckiga, Grönprickiga och Grönrandiga delar alla samma egenskaper och beteenden.",
		greenstriped_rockfish_description = "Sebastes elongatus, den grönräfflade rockan, randig rockan, jordgubbsrockan, poinsettas, reina eller serena, är en art av marina benfiskar som tillhör underfamiljen Sebastinae, rockfiskarna, i familjen Scorpaenidae. Den finns i nordöstra Stilla havet.<br><br>Grönfläckig, Grönprickig och Grönstrimmig delar alla samma egenskaper och beteenden.",
		halfbanded_rockfish_description = "Sebastes semicinctus, den halvbandade rockan är en art av marina benfiskar som tillhör underfamiljen Sebastinae, rockfiskarna, i familjen Scorpaenidae. Den finns i Östra Stilla havet.",
		honeycomb_rockfish_description = "Honeycomb Rockfish har en kompakt och bred kropp, med en bredd som är 35% till 39% av standardlängden. De är täckta med taggar. De har en brun, rödbrun eller gulbrun färg med 4 till 6 vita fläckar slumpmässigt utspridda ovanför sin laterallinje.",
		kelp_greenling_female_description = "En hona av kelpgrönling är fylld med små, rödbruna till gyllene fläckar på en grå till brun bakgrund. Fenorna är mestadels gul-orange. Hanar tenderar att vara olivgråa till brunaktiga, med oregelbundna blå fläckar på framsidan till två tredjedelar av deras kroppar. <br><br>Vanligast förekommande i vatten grundare än 328 fot.",
		kelp_greenling_male_description = "Hannen av kelp greenling är brunaktig-oliv till grå, med oregelbundet formade blå fläckar med svarta linjer på ryggen och huvudet. Både honan och hannen har en liten buskig utskjutning (cirrus) ovanför varje öga. Denna art kan bli upp till 60cm lång.<br><br>Vanligtvis hittad i vatten som är grundare än 328 fot.",
		kelp_rockfish_description = "Sebastes atrovirens, kelp rockfish, är en art av marin benfisk som tillhör underfamiljen Sebastinae, rockfishes, och familjen Scorpaenidae. Den är infödd i Stilla havet längs kusten av Kalifornien i USA och Baja California i Mexiko.",
		lingcod_description = "Lingcod är hänsynslösa rovdjur och kan väga över 80 pund (35 kg) och mäta 60 tum (150 cm) i längd. De karaktäriseras av en stor mun med 18 vassa tänder. Deras färg är variabel, oftast med mörkbruna eller kopparfärgade fläckar arrangerade i kluster.",
		olive_rockfish_description = "Olivfärgad klippfisk, Acanthoclinus fuscus, är en långfenad fisk i familjen Plesiopidae. Endast hittad i Nya Zeelands intertidalzonen och i klippbassänger vid lågvatten, fisken växer upp till en längd av upp till 30 cm.",
		pacific_ocean_perch_description = "Stillahavsrockan, även känd som Stillahavsrödspätta, Rosfisk, Röd havabborre eller Röd rocka, är en fisk vars utbredning sträcker sig över norra Stilla havet: från södra Kalifornien runt Stilla havet till norra Honshu, Japan, inklusive Berings hav.",
		pacific_sand_sole_description = "Stillahavs sandsula, även känd som bara sandsula, är en plattf species som lever i nordöstra Stillahavet där den lever på sandiga bottnar. Den enda arten i släktet Psettichthys, den sträcker sig från Berings hav till norra Kalifornien.",
		pacific_sanddab_description = "Stilla havs-tunga är en plattfiskart. Det är utan tvekan den vanligaste sanddaben, och dess habitat delas med den långfeniga sanddaben och den fläckiga sanddaben. Det är en medelstor plattfisk, med en ljusbrun färg fläckad med brunt eller svart, ibland med vita eller orange fläckar.",
		quillback_rockfish_variant_1_description = "Quillback rockfish, även känd som quillback seaperch, är en art av marina benfiskar som tillhör underfamiljen Sebastinae, rockfiskar, inom familjen Scorpaenidae. Denna art lever främst i saltvattenrev. Den genomsnittliga vuxna individen väger 2-7 pund och kan nå 1 m i längd.<br><br>Runt Kalifornien lever dessa i 15 år. Runt Kanada lever dessa i minst 95 år. Bevisar att CA > US.",
		quillback_rockfish_variant_2_description = "Quillback rockfish, även känt som piggryggig rockfisk, är en marint benfiskart som tillhör underfamiljen Sebastinae, rockfiskar, som är en del av familjen Scorpaenidae. Denna art bor främst i saltvattenrev. Den genomsnittliga vuxna väger 2–7 pund och kan nå en längd på 1 meter. <br><br> Runt Cali lever dessa i 15 år. Runt Kanada lever dessa i minst 95 år. Bevisar CA> US.",
		redbanded_rockfish_description = "Rödbandad rockfisk, även känd som bandit, barber pole, flag rockfish, Spanish flag, Hollywood, convict och canary, är en marint benfiskart som tillhör underfamiljen Sebastinae, rockfiskar, som är en del av familjen Scorpaenidae. Den finns i norra Stilla havet.",
		rock_sole_description = "Sandsolespigg (Lepidopsetta bilineata) är en plattfisk tillhörande familjen Pleuronectidae. Den är en bottenlevande fisk som lever på sand- och grusbottnar på djup upp till 575 meter (1886 fot), men vanligtvis hittas den mellan 0 och 183 meter (0 och 600 fot).",
		rosy_rockfish_description = "Rosenröd sjufjälling (Sebastes rosaceus) är en art av marina fiskar som tillhör underfamiljen Sebastinae, en del av familjen Scorpaenidae. Den återfinns i östra Stilla havet.",
		rougheye_rockfish_description = "Rougheye rockfish är en rockfisk i släktet Sebastes. Den är också känd som svartstrupig rockfisk eller svartspettsrockfisk och växer till en maximal längd av cirka 97 cm, med en rekordvikt enligt IGFA på 14 lb 12 oz.",
		shortraker_rockfish_description = "Som vuxna är shortraker rockfish en av de största rockfiskarterna. Under vattnet är de ljusrosa, orangerosa eller röda med fläckar och sadlar. Alla fenor har lite svart och ryggfenan kan ha vit spets. Munnen är röd och kan ha svarta fläckar. <br> <br>Shortraker rockfish är bland de längst levande marina arterna på jorden och har dokumenterats som så gamla som 157 år.",
		silvergray_rockfish_description = "Silvergrå bergtorsk är en smal bergtorsk art med reducerade huvudtaggar. De har skymningsläppar och en underkäke som är lång och sticker ut bortom överkäken. De har en framträdande symfysisk knöl vid spetsen av sin underkäke.",
		speckled_rockfish_description = "Sebastes ovalis, fläckig bergtorsk, är en art av marina broskfiskar som tillhör underfamiljen Sebastinae, bergtorskarna, som är en del av familjen Scorpaenidae. Den finns i djupa klippiga områden i Stilla havet.",
		squarespot_rockfish_description = "Squarespot rockfish, eller Sebastes hopkinsi som den heter på latin, är en art av marina benfiskar som tillhör underfamiljen Sebastinae, eller rockfishes som de också kallas, och familjen Scorpaenidae. Denna art återfinns i östra delarna av Stilla havet.",
		starry_flounder_description = "Starry flounder, eller grindstone, emery wheel och long-nosed flounder som den också kallas, är en vanligt förekommande plattfisk som finns vid kanten av norra Stilla havet.",
		starry_rockfish_description = "Starry rockfish, även känd som spotted corsair, spotted rockfish, chinafish och red rock cod, är en art av marina benfiskar som tillhör underfamiljen Sebastinae, eller rockfishes som de också kallas, och familjen Scorpaenidae. Den finns i östra delarna av Stilla havet.",
		tiger_rockfish_dark_version_description = "Tiger rockfish, även kallad tigerhavsabborre, banded rockfish och black-banded rockfish, är en art av marina strålfeniga fiskar som tillhör underfamiljen Sebastinae, rockfiskarna, i familjen Scorpaenidae. Den är infödd i vattnen utanför västra Nordamerikas kust i Stilla havet.",
		tiger_rockfish_pink_version_description = "Tiger rockfish, även kallad tigerhavsabborre, banded rockfish och black-banded rockfish, är en art av marina strålfeniga fiskar som tillhör underfamiljen Sebastinae, rockfiskarna, i familjen Scorpaenidae. Den är infödd i vattnen utanför västra Nordamerikas kust i Stilla havet.",
		treefish_description = "Trädfisken är en art av marin benfisk som tillhör underfamiljen Sebastinae, klippfiskar, av familjen Scorpaenidae. Den är inhemska till östra Stilla havet.",
		vermilion_rockfish_description = "Sebastes miniatus, vermilionfisk, röd snapper, röd stenfisk och Rasher, är en art av marin benfisk som tillhör underfamiljen Sebastinae, klippfiskar, i familjen Scorpaenidae.",
		widow_rockfish_description = "Änkefisken, eller brun bombarderare, är en art av marin benfisk som tillhör underfamiljen Sebastinae, klippfiskar, i familjen Scorpaenidae. Den finns i nordöstra Stilla havet.",
		yelloweye_rockfish_adult_description = "Gulögd skärling är en art av marina broskfiskar som tillhör underfamiljen Sebastinae, skärlingar, och familjen Scorpaenidae. Det är en av de största medlemmarna i släktet Sebastes och namnet härrör från dess färgning.",
		yelloweye_rockfish_juvenile_description = "Gulögd skärling är en art av marina broskfiskar som tillhör underfamiljen Sebastinae, skärlingar, och familjen Scorpaenidae. Det är en av de största medlemmarna i släktet Sebastes och namnet härrör från dess färgning.",
		yellowtail_rockfish_description = "Sebastes flavidus, även känd som gulstjärtad snapper, är en art av marina benfiskar som tillhör underfamiljen Sebastinae, rockfiskar, som ingår i familjen Scorpaenidae. Denna art lever främst utanför kusten av västra Nordamerika från Kalifornien till Alaska. <br><br> Larver och juveniler lever nära ytan, medan vuxna lever i djupare vatten över steniga rev.",

		weapon_dagger = "Antik kavalleridolk",
		weapon_bat = "Basebollträ",
		weapon_bottle = "Krossad flaska",
		weapon_crowbar = "Kofot",
		weapon_unarmed = "Näve",
		weapon_flashlight = "Ficklampa",
		weapon_golfclub = "Golfklubba",
		weapon_hammer = "Hammare",
		weapon_hatchet = "Yxa",
		weapon_knuckle = "Brassknogjärn",
		weapon_knife = "Kniv",
		weapon_machete = "Machete",
		weapon_switchblade = "Fällkniv",
		weapon_nightstick = "Polisbatong",
		weapon_wrench = "Rörtång",
		weapon_battleaxe = "Stridsyxa",
		weapon_poolcue = "Poolkø",
		weapon_stone_hatchet = "Stenyxa",
		weapon_candycane = "Polkagris",

		weapon_pistol = "Pistol",
		weapon_pistol_mk2 = "Pistol Mk II",
		weapon_combatpistol = "Combatpistol",
		weapon_appistol = "AP-pistol",
		weapon_stungun = "Elchockpistol",
		weapon_pistol50 = "Pistol .50",
		weapon_snspistol = "SNS-pistol",
		weapon_snspistol_mk2 = "SNS-pistol Mk II",
		weapon_heavypistol = "Kraftfull pistol",
		weapon_vintagepistol = "Vintagepistol",
		weapon_flaregun = "Lyktvapen",
		weapon_marksmanpistol = "Marksmanpistol",
		weapon_revolver = "Kraftfull revolver",
		weapon_revolver_mk2 = "Kraftfull revolver Mk II",
		weapon_doubleaction = "Dubbeldragsrevolver",
		weapon_raypistol = "Up-n-Atomizer",
		weapon_ceramicpistol = "Keramikpistol",
		weapon_navyrevolver = "Marinerevolver",
		weapon_gadgetpistol = "Perico-pistol",
		weapon_stungun_mp = "Elchockare (MP)",
		weapon_pistolxm3 = "WM 29-pistol",

		weapon_microsmg = "Micro-PSG",
		weapon_smg = "PSG",
		weapon_smg_mk2 = "PSG Mk II",
		weapon_assaultsmg = "Attack PSG",
		weapon_combatpdw = "Strids-PDW",
		weapon_machinepistol = "Kulsprute-PSG",
		weapon_minismg = "Liten PSG",
		weapon_raycarbine = "Helvetesmaskin",

		weapon_pumpshotgun = "Pump-hagelgevär",
		weapon_pumpshotgun_mk2 = "Pump Hagle Mk II",
		weapon_sawnoffshotgun = "Kortskaftad Hagle",
		weapon_assaultshotgun = "Assault Hagle",
		weapon_bullpupshotgun = "Bullpup Hagle",
		weapon_musket = "Musköt",
		weapon_heavyshotgun = "Tung Hagle",
		weapon_dbshotgun = "Dubbel Pipa Hagle",
		weapon_autoshotgun = "Sweeper Hagle",
		weapon_combatshotgun = "Combat Hagle",

		weapon_assaultrifle = "Assault Gevär",
		weapon_assaultrifle_mk2 = "Assault Gevär Mk II",
		weapon_carbinerifle = "Karbin Gevär",
		weapon_carbinerifle_mk2 = "Karbin Gevär Mk II",
		weapon_advancedrifle = "Avancerad Gevär",
		weapon_specialcarbine = "Specialkarbin",
		weapon_specialcarbine_mk2 = "Specialkarbin Mk II",
		weapon_bullpuprifle = "Bullpup-gevär",
		weapon_bullpuprifle_mk2 = "Bullpup-gevär Mk II",
		weapon_compactrifle = "Kompakt Gevär",
		weapon_militaryrifle = "Militärgevär",
		weapon_heavyrifle = "Tungt Gevär",
		weapon_tacticalrifle = "Tjänstegevär",

		weapon_mg = "Kulspruta",
		weapon_combatmg = "Stridskulspruta",
		weapon_combatmg_mk2 = "Stridskulspruta Mk II",
		weapon_gusenberg = "Gusenberg-sopmaskin",

		weapon_sniperrifle = "Krypskyttegevär",
		weapon_heavysniper = "Kraftfullt krypskyttegevär",
		weapon_heavysniper_mk2 = "Kraftfullt krypskyttegevär Mk II",
		weapon_marksmanrifle = "Marksman-gevär",
		weapon_marksmanrifle_mk2 = "Marksman-gevär Mk II",
		weapon_precisionrifle = "Precision-gevär",

		weapon_rpg = "RPG",
		weapon_grenadelauncher = "Granatkastare",
		weapon_grenadelauncher_smoke = "Rökgranatkastare",
		weapon_minigun = "Minigun",
		weapon_firework = "Fyrverkerikastare",
		weapon_railgun = "Railgun",
		weapon_hominglauncher = "Homing Launcher",
		weapon_compactlauncher = "Kompakt Granat",
		weapon_rayminigun = "Änkanmaker",
		weapon_emplauncher = "Kompakt EMP-avfyrare",
		weapon_stinger = "RPG",
		weapon_railgunxm3 = "Coil Railgun",

		weapon_grenade = "Granat",
		weapon_bzgas = "BZ Gas",
		weapon_molotov = "Molotov Cocktail",
		weapon_stickybomb = "Klibbig Bomb",
		weapon_proxmine = "Närhetsmina",
		weapon_snowball = "Snöbollar",
		weapon_pipebomb = "Rörbomb",
		weapon_ball = "Baseboll",
		weapon_smokegrenade = "Rökgranat", -- OBS: kallas "Tårgas",
		weapon_flare = "Nödraket",
		weapon_acidpackage = "Syrapaket",

		weapon_petrolcan = "Bensindunk",
		gadget_parachute = "Fallskärm",
		weapon_fireextinguisher = "Brandsläckare",
		weapon_hazardcan = "Farlig Bensindunk",
		weapon_fertilizercan = "Gödseldunk",

		red_parachute = "Röd fallskärm",
		blue_parachute = "Blå fallskärm",
		black_parachute = "Svart fallskärm",

		weapon_dagger_description = "Du har haft den pirat-inspirerade looken ett tag, men saknar en farlig vapen för att fullända den? Skaffa denna dolk med skyddat handtag.",
		weapon_bat_description = "Aluminiumsbasebollträ med läderhandtag. Lätt men kraftfull för alla storslagna slagmän där ute.",
		weapon_bottle_description = "Det är inte smart och det är inte vackert, men oftast är inte heller killen som kommer mot dig med en kniv. När allt annat misslyckas så får denna jobbet gjort.",
		weapon_crowbar_description = "Tung, robust kofot som smittats från högkvalitativt, härdat stål för extra hävstångskraft när du behöver få jobbet gjort.",
		weapon_unarmed_description = "När allt annat misslyckas, sätt knogarna i arbete och kämpa med det du har.",
		weapon_flashlight_description = "Förstärk din rädsla för mörker med denna kortdistans, batteridrivna ljuskälla. Praktisk för slag med trubbiga föremål.",
		weapon_golfclub_description = "Standardslängd på golfklubba med mittjärn och gummihandtag för ett dödligt kort spel.",
		weapon_hammer_description = "En robust, mångsidig hammare med trähandtag och böjd klo, denna gammal klassiker spikar fortfarande konkurrensen.",
		weapon_hatchet_description = "Tillverka bränsle... av dina polare med denna lättanvända, lätt att dölja yxa.",
		weapon_knuckle_description = "Perfekt för att slå ut guld tänder eller som en gåva till trofépartnern som har allt.",
		weapon_knife_description = "Denna kniv med 7\" kolfiberblad är dubbelsidig med en tandad rygg för att ge förbättrad stick- och tryckförmåga.",
		weapon_machete_description = "Amerikas vapenhandel med Västafrika handlar inte bara om att ge. Återupptäck det enkla livet med denna rostiga röjkniv.",
		weapon_switchblade_description = "Från din ficka till skaftdjupt i den andra killens revben på mindre än en sekund: fällknivar kommer aldrig att gå ur stil.",
		weapon_nightstick_description = "24\" slagstång av polycarbonat",
		weapon_wrench_description = "En favorit bland överlevnadsexperter och våldsamma fäder över hela världen, tydligen fungerar den också som någon form av verktyg.",
		weapon_battleaxe_description = "Om det är tillräckligt bra för medeltida fotsoldater, moderna gränsbevakare och envisa föräldrar, så är det tillräckligt bra för dig.",
		weapon_poolcue_description = "Åh, det finns inget ljud så tillfredsställande som ljudet av en perfekt break, särskilt när det är den andra personens ryggrad.",
		weapon_stone_hatchet_description = "2,5 miljoner års forskning och utveckling och vi är fortfarande här.",
		weapon_candycane_description = "En festlig polkagris. Den är lite kladdig.",

		weapon_pistol_description = "Standardpistol. En .45 kaliber stridspistol med en magasinkapacitet på 12 rundor som kan förlängas till 16.",
		weapon_pistol_mk2_description = "Balans, enkelhet, precision: ingenting håller freden som ett förlängt pipa i den andra killens mun.",
		weapon_combatpistol_description = "En kompakt, lätt halvautomatisk pistol utformad för lagföring och personligt försvar. 12-rundig magasin med möjlighet att förlängas till 16 rundor.",
		weapon_appistol_description = "Högpentrerande, fullautomatisk pistol. Rymmer 18 ronder i magasinet med möjlighet att utöka till 36 rundor.",
		weapon_stungun_description = "Zapptastiskt roligt för hela familjen!",
		weapon_pistol50_description = "Skjut aldrig en stor kaliber man med en liten kaliber kula.",
		weapon_snspistol_description = "Som kondomer eller hårspray, detta ryms i din ficka för en natt på stan. Priset på en flaska på en klubb, det är hälften så träffsäkert som en champagnekork och dubbelt så dödligt.",
		weapon_snspistol_mk2_description = "Den ultimata handväskfyllaren: Om du vill göra lördagsnatten riktigt speciell är detta din biljett.",
		weapon_heavypistol_description = "Tungviktsmästaren i magasinedrivna, halvautomatiska handeldvapenvärlden. Levererar precision och en allvarlig underarms träningspass varje gång.",
		weapon_vintagepistol_description = "Vad du egentligen behöver är en mer igenkännbar pistol. Stick ut från mängden vid ett beväpnat rån med denna ingraverade pistol.",
		weapon_flaregun_description = "Använd för att signalera nödläge eller berusad spänning. Varning: peka direkt på individer kan orsaka spontanförbränning. En del av Heists.",
		weapon_marksmanpistol_description = "Inte för den riskaverta. Se till att träffa rätt då du kommer behöva ladda om lika mycket som du skjuter.",
		weapon_revolver_description = "En handeldvapen med tillräckligt med kraft för att stoppa en rasande noshörning, och tung nog att slå den till döds om du är utan ammunition.",
		weapon_revolver_mk2_description = "Om du kan lyfta den här handeldvapnet är det det närmaste du kommer att skjuta någon med en godståg.",
		weapon_doubleaction_description = "För ibland är hämnd som godast serverad sex gånger i snabb följd, rakt mellan ögonen.",
		weapon_raypistol_description = "Republikanska rymdrangerspecifikationer, nybakat från den galaktiska kriget mot socialism: ingen ammunition, ingen magasin, bara en brutal energipuls efter den andra.",
		weapon_ceramicpistol_description = "Inte mormors keramik. Även om denna pistolskärm är tillräckligt liten för att passa i hennes handväska och inte skapar en metallhittare.",
		weapon_navyrevolver_description = "Ett riktigt museiföremål. Vill du veta hur Vilda Västern vanns - med långsam återladdningshastighet och en hel hög med blodutgjutelser.",
		weapon_gadgetpistol_description = "Ett dödligt skott. Var inte ömtålig. Du kommer inte skrapa upp titan-nitrid-finishen.",
		weapon_stungun_mp_description = "Zaptastiskt kul för hela familjen!",
		weapon_pistolxm3_description = "En kompakt, lätt pistol som avfyrar 9mm kulor. Mycket effektiv på nära håll.",

		weapon_microsmg_description = "Kombinerar kompakt design med hög eldhastighet på cirka 700-900 skott per minut.",
		weapon_smg_description = "Detta är känt som en bra allroundkulspruta. Lätt och med en noggrann kikarsikte och magasinkapacitet på 30 skott.",
		weapon_smg_mk2_description = "Lätt och kompakt, med en eldhastighet som kan döda väldigt blodigt: gör om varje trångt utrymme till en dödszon med ett välsmort avtryck.",
		weapon_assaultsmg_description = "Ett högkapacitets submachinegun som är både kompakt och lätt. Rymmer upp till 30 kulor i en magasin.",
		weapon_combatpdw_description = "Vem sa att personliga vapen inte kunde vara värdiga för militär personal? Tack vare våra lobbyister, inte kongressen. Integrerad dämpare.",
		weapon_machinepistol_description = "Detta helautomatiska vapen är virveltrumman till din twin-engine V8 bas: ingen drive-by låter helt rätt utan den.",
		weapon_minismg_description = "Allt mer populär sedan marknadsföringsteamet tittade bortom spec ops-enheter och började bry sig om de små killarna i låginkomstområden.",
		weapon_raycarbine_description = "Republikansk rymdrangerspecial. Om du vill förvandla en liten grön man till små gröna klumpar, är detta det enda amerikanska sättet att göra det.",

		weapon_pumpshotgun_description = "Standardhagelgevär idealiskt för nära stridsområden. En hög spridning av projektiler kompenserar för dess lägre precision på långt avstånd.",
		weapon_pumpshotgun_mk2_description = "Endast en sak pumpar mer än handling än en pump-action: se upp, rekyl är nästan lika dödligt som skottet.",
		weapon_sawnoffshotgun_description = "Detta enkelpipiga, sågade hagelgevär kompenserar för dess korta räckvidd och ammo-kapacitet med förödande effektivitet i närstrid.",
		weapon_assaultshotgun_description = "Helt automatisk hagelgevär med 8-rundigt magasin och hög eldhastighet.",
		weapon_bullpupshotgun_description = "Kompenserar för sin långsamma pumpuppslagsfart med räckvidd och spridning. Decimerar allt i sin projektilväg.",
		weapon_musket_description = "Beväpnad med inget annat än musköter och en överlägsenhetskomplex, erövrade britterna över halva världen. Äg vapnet som byggde ett imperium.",
		weapon_heavyshotgun_description = "Vapnet att ta till när du verkligen behöver göra en hemsk röra av rummet. Bäst använd i närheten av lätt torkbara ytor.",
		weapon_dbshotgun_description = "Gör en sak, gör den väl. Vem behöver hög eldhastighet när din första skott gör den andra personen till en fin dimma?",
		weapon_autoshotgun_description = "Hur många effektiva verktyg för upploppskontroll kan du stoppa i dina byxor? OK, två. Men det här är det andra.",
		weapon_combatshotgun_description = "Det finns bara en halvautomatisk hagelgevär med en eldhastighet som får LSFD:s brandlarm att tjuta, och du tittar på det.",

		weapon_assaultrifle_description = "Detta standardassaultgevär skryter med en stor kapacitet magasin och långdistansnoggrannhet.",
		weapon_assaultrifle_mk2_description = "Den definitiva revisionen av en all-time klassiker: allt som krävs är lite arbete, och utseendet kan döda trots allt.",
		weapon_carbinerifle_description = "Genom att kombinera långdistans precision med en högkapacitetsmagasin, kan Carbine Rifle räknas med att göra träffen.",
		weapon_carbinerifle_mk2_description = "Detta är handgjort, skräddarsytt kraft: du kan inte leverera en hagel av kulor med mer kärlek och omsorg om du satte in dem för hand.",
		weapon_advancedrifle_description = "Den mest lätta och kompakta av alla automatgevär, utan att kompromissa med precision och eldhastighet.",
		weapon_specialcarbine_description = "Kombinationen av precision, manövrerbarhet, eldkraft och låg rekyl gör denna automatkarbin till ett mycket mångsidigt vapen för alla stridssituationer.",
		weapon_specialcarbine_mk2_description = "Mästaren av alla vapen har precis fått en allvarlig uppgradering: buga för mästaren.",
		weapon_bullpuprifle_description = "Den senaste kinesiska importen som tar Amerika med storm, denna karbin är känd för sitt balanserade handhavande. Lättviktig och mycket behärskad vid automatisk eld.",
		weapon_bullpuprifle_mk2_description = "Så precis, så utsökt, det är inte så mycket ett regn av skott som en symfoni.",
		weapon_compactrifle_description = "Halva storleken, all kraft, dubbelt så mycket rekyl: ingen farligare sätt att visa att man \"kompenserar för något\".",
		weapon_militaryrifle_description = "Denna enormt kraftfulla automatkarbin var designad för högt kvalificerade och exceptionellt skickliga soldater. Ja, du kan köpa den.",
		weapon_heavyrifle_description = "Tyngre betyder bättre, eller hur?! Ja, vi kör på det.",
		weapon_tacticalrifle_description = "Denna säsongens måste-ha-hardware för poliskår, militärpersonal och alla som är fast i en kamp till döden med antingen poliskår eller militärpersonal.",

		weapon_mg_description = "Ett allmänt syfte kulsprutgevär som kombinerar en robust design med pålitlig prestanda. Långdistans penetrerande kraft. Mycket effektivt mot stora grupper.",
		weapon_combatmg_description = "Lätt, kompakt kulsprutgevär som kombinerar utmärkt manövrerbarhet med en hög eldhastighet till förödande effekt.",
		weapon_combatmg_mk2_description = "Du kan aldrig ha för mycket av en bra sak: trots allt, om den första skottet räknas, då måste de nästa hundra eller så räknas dubbelt.",
		weapon_gusenberg_description = "Fullända din look med ett förbudsvapen. Ser bra ut när det sticker ut från en Roosevelt eller när du har en ränderad kostym på dig.",

		weapon_sniperrifle_description = "Standard skarpskytterifle. Idealisk för situationer som kräver noggrannhet på långt avstånd. Begränsningar inkluderar långsam omladdningshastighet och mycket låg eldhastighet.",
		weapon_heavysniper_description = "Har pansarbrytande kulor för tung skada. Levereras med laserkikare som standard.",
		weapon_heavysniper_mk2_description = "Långt borta, men ändå alltid intimt: om du letar efter en säker grund för det långdistansförhållandet, är det här den.",
		weapon_marksmanrifle_description = "Oavsett om du är nära eller en störande lång väg bort så kommer detta vapen att få jobbet gjort. Ett multiverktyg för olika avstånd.",
		weapon_marksmanrifle_mk2_description = "Känd inom militära kretsar som \"The Dislocator\", detta mod-set kommer förstöra både målet och din axel, i den ordningen.",
		weapon_precisionrifle_description = "En gevär för perfektionister. Varför nöja sig med rakt mellan ögonen, när du kan ha rakt genom den överlägsna frontal gyrusen?",

		weapon_rpg_description = "Ett bärbar, axelmonterad, anti-tank vapen som skjuter explosiva granater. Mycket effektivt för att ta ner fordon eller stora grupper av angripare.",
		weapon_grenadelauncher_description = "En lätt och kompakt granatkastare med semi-automatisk funktion. Rymmer upp till 10 granater.",
		weapon_grenadelauncher_smoke_description = "\"Du får en rökgranat, du får en rökgranat, du får en rökgranat!\" - Oprah",
		weapon_minigun_description = "En förödande sexpipig kulspruta som har Gatling-stil roterande pipor. Mycket hög eldhastighet (2000 till 6000 skott per minut).",
		weapon_firework_description = "Lägg till lite glamour till spektaklet med denna fyrverkeripistol, garanterat att få oohs och aahs från publiken.",
		weapon_railgun_description = "Allt du behöver veta är - magneter, och den gör fruktansvärda saker mot det som den pekar på.",
		weapon_hominglauncher_description = "Infraröd och styrd missilstartare. För alla dina rörliga målbildsbehov.",
		weapon_compactlauncher_description = "Fokusgrupper som använde den vanliga modellen föreslog att den var för noggrann och fann det besvärligt att använda med en hand på gasreglaget. Lätt fixat.",
		weapon_rayminigun_description = "Republikanska rymdrangers special. GÅ AHEAD, SÄG ATT JAG KOMPENSERAR FÖR NÅGOT. JAG UTMANAR ER.",
		weapon_emplauncher_description = "Skjut på drönare och helikoptrar för att göra dem sömniga.",
		weapon_stinger_description = "En axelskjuten mark-til-luft missil som kan ta ner fiende flygande fordon.",
		weapon_railgunxm3_description = "Allt du behöver veta är att det använder magneter och orsakar förödelse mot allt det pekar på.",

		weapon_grenade_description = "Standardfragmentationsgranat. Dra i snöret, kasta sen skydda dig. Idealisk för att eliminera grupper av fiender.",
		weapon_bzgas_description = "Använd för att puffa på personer du inte gillar.",
		weapon_molotov_description = "En rå men högst effektiv brandvätskebaserad vapen. Inget happy hour med denna cocktail.",
		weapon_stickybomb_description = "En plastexplosionsladdning med en fjärrutlösare. Kan kastas och sedan detonerad eller fästas på ett fordon och sedan detonerad.",
		weapon_proxmine_description = "Lämna en present till dina vänner med dessa rörelsesensor landminor. Kort fördröjning efter aktivering.",
		weapon_snowball_description = "Var redo och redo att samla din Crew för en vänlig snöbollskamp, men varnade, dessa isiga småsaker kan packa en stöt.",
		weapon_pipebomb_description = "Kom ihåg, det räknas inte som en IED när du köper den i en affär och använder den i ett förstavärldensland.",
		weapon_ball_description = "Signerad av Babe Ruth, helt inte en fejk.",
		weapon_smokegrenade_description = "Tårgasgranat, särskilt effektiv för att handikappsa flera angripare. Långvarig exponering kan vara dödlig.",
		weapon_flare_description = "Kasta för luftsläpp.",
		weapon_acidpackage_description = "En paket med syra. Använd den för att göra en röra.",

		weapon_petrolcan_description = "Lämnar en bensinsträng som kan tändas.<br><br>Bensin som återstår: ${petrolAmount}%.",
		gadget_parachute_description = "Denna nylon sportfallskärm har en ram-air parafoil design för ökad kontroll över riktning och hastighet.",
		weapon_fireextinguisher_description = "Brandsläckare även kallad \"rökmaskin\".",
		weapon_hazardcan_description = "Som en bensindunk, men värdelös.",
		weapon_fertilizercan_description = "En klassisk burk med gödsel, inget bättre för dina grödor.",

		red_parachute_description = "Precis som den vanliga fallskärmen men i rött.",
		blue_parachute_description = "Precis som den vanliga fallskärmen men i blått.",
		black_parachute_description = "Precis som den vanliga fallskärmen, fast i svart färg.",

		-- NOTE: Addon weapons
		weapon_addon_huntingrifle = "Jaktrifle",
		weapon_addon_huntingrifle_description = "Din go-to-rifle för jaktändamål.",

		weapon_addon_vfcombatpistol = "VF Combat-pistol",
		weapon_addon_vfcombatpistol_description = "Lägg på ett leende och vänta på blixten.",

		weapon_addon_dp9 = "D&P 9-pistol",
		weapon_addon_dp9_description = "12 chanser att fånga Dubben.",

		weapon_addon_dutypistol = "SIG Sauer P226",
		weapon_addon_dutypistol_description = "Det ursprungliga trådlösa hemskyddssystemet.",

		weapon_addon_gardonepistol = "Gardone-Pistol",
		weapon_addon_gardonepistol_description = "När i tvivel, töm magasinet.",

		weapon_addon_endurancepistol = "Uthållighetspistol",
		weapon_addon_endurancepistol_description = "Viagran för handeldvapen.",

		weapon_addon_sentinelshotgun = "Vaktgeväret",
		weapon_addon_sentinelshotgun_description = "Enkelriktad Morddispenser.",

		weapon_addon_sentinelbbshotgun = "Beanbag-geväret",
		weapon_addon_sentinelbbshotgun_description = "Leksak för vuxna.",

		-- TODO: Add a description for this one
		weapon_addon_stungun = "Coil Elektroschockpistol",
		weapon_addon_stungun_description = "Zaptastiskt roligt för hela familjen!",

		weapon_addon_mp9 = "B&T MP9",
		weapon_addon_mp9_description = "Liten och snabb, precis som personen som håller i den här...",

		weapon_addon_rc4 = "Remington R4-C",
		weapon_addon_rc4_description = "Liten och kvick, det perfekta vapnet att ha med i ditt lag. Så länge inte rödhåriga personer håller i det.",

		weapon_addon_pp19 = "PP-19 Vityaz",
		weapon_addon_pp19_description = "Toppen av rysk excellens, perfekt för alla typer av \"raid\".",

		weapon_addon_m9a3 = "Beretta M9A3",
		weapon_addon_m9a3_description = "Allt du behöver för att få dina smutsiga gärningar gjorda billigt.",

		weapon_addon_357mag = "357 Magnum",
		weapon_addon_357mag_description = "Från trafikstopp till zombies, den här revolvern är en sheriffs bästa vän.",

		weapon_addon_m870 = "Remington M870",
		weapon_addon_m870_description = "Perfekt för sport och jakt, även om att skjuta på danskar inte riktigt kan räknas som sport... eller hur?",

		weapon_addon_rpk16 = "RPK-16",
		weapon_addon_rpk16_description = "Den mest perfekta kulsprutan som någonsin funnits, bara glöm inte sportdressen.",

		weapon_addon_tacknife = "Ultimat Taktisk Kniv",
		weapon_addon_tacknife_description = "Äntligen har du nått nivå 100. Överste skulle vara stolt.",

		weapon_addon_reaper = "Skördeman",
		weapon_addon_reaper_description = "Machete, men mer påkostad.",

		weapon_addon_berserker = "Berserker",
		weapon_addon_berserker_description = "Cool yxa.",

		weapon_addon_katana = "Katana",
		weapon_addon_katana_description = "Ninja, yeah.",

		weapon_addon_stidvc = "STI DVC 2011",
		weapon_addon_stidvc_description = "Framtiden är här nu, gamla man, bara i en mindre kaliber ...",

		weapon_addon_g36c = "Heckler & Koch G36C",
		weapon_addon_g36c_description = "Dimensioner som en kulsprutepistol med terminalballistik av patronen 5.56mm NATO. Utvecklad för specialtaktiska tillämpningar av polis- och militära specialstyrkor.",

		weapon_addon_vandal = "RGX Vandal",
		weapon_addon_vandal_description = "Valorant pog.",

		weapon_addon_ak74 = "AK-74",
		weapon_addon_ak74_description = "оставайся привязанным или хлопай в ладоши.",

		weapon_addon_p320b = "P320",
		weapon_addon_p320b_description = "We're not in London anymore bruv.",

		weapon_addon_mk18 = "MK18",
		weapon_addon_mk18_description = "\"Bära vapen eller få kapad\" - George Washington (förmodligen)",

		weapon_addon_glock = "Glock 17",
		weapon_addon_glock_description = "Den mest populära handeldvapnet i världen.",

		weapon_addon_colt = "Colt 1851 Navy",
		weapon_addon_colt_description = "Originalrevolvern, den som startade allt.",

		weapon_addon_hk433 = "H&K 433",
		weapon_addon_hk433_description = "H&K 433 är ett tyskt automatgevär som utvecklades av Heckler & Koch år 2009.",

		weapon_addon_m6ic = "LWRC M6IC",
		weapon_addon_m6ic_description = "Den perfekta vapnet för den perfekta personen, glöm bara inte dressen.",

		weapon_addon_hk416 = "H&K 416",
		weapon_addon_hk416_description = "H&K 416, Ferrari bland skjutvapen - snygg, kraftfull och garanterad att väcka uppmärksamhet. Det är som att ha en personlig tränare för ditt avtryckarfinger, ger resultat som kommer att göra dina fiender avundsjuka. Säg hej till din nya BFF (Best Firearm Forever)!"
	},

	items = {
		move_to_repair = "Flytta hit för att reparera fordonet.",
		repairing_vehicle = "Reparerar fordon",
		using_first_aid_kit = "Använder första hjälpen-kit",
		using_bandages = "Använder bandage",
		using_ifak = "Använder IFAK",
		move_to_wash = "Flytta hit för att tvätta fordonet",
		vehicle_too_clean = "Fordonet är för rent för att tvättas.",
		move_to_put_fake_plate = "Flytta hit för att sätta på en falsk registreringsskylt.",
		unable_to_repair = "Du kan inte reparera fordonet medan det finns spelare i det.",
		failed_lockpicking = "Misslyckad låsöppning",
		lockpicking_succeeded = "Låsöppning lyckades.",
		hotwiring_vehicle = "Startar bilen utan nycklar",
		lockpick_broke = "Inbrottswerktyget gick sönder",
		failed_hotwire = "Misslyckades med att starta bilen utan nycklar",
		unpacking_green_rolls = "Packar upp gröna rullar",
		you_do_not_have_enough_rolling_paper = "Du har inte tillräckligt med rullpapper.",
		rolling_joint = "Rullar en joint",
		rolling_joints = "Rullar joints",
		changing_license_plate = "Byter registreringsskylt",
		equipping_parachute = "Utrustar ${itemName} fallskärm",
		lockpicking_vehicle = "Bryter upp fordonsdörr",
		illegal_weather_name = "Försöker använda en ogiltig väderformel.",
		equipping_body_armor = "Tar på sig kroppsskydd",
		illegal_burger_shot_delivery_item_id = "Försöker använda en leverans från Burgershot med en ogiltig föremåls-ID.",
		illegal_lighter_item_id = "Försöker använda en tändare med ett ogiltigt föremåls-ID.",
		unable_to_use_lighter_in_vehicle = "Du kan inte använda en tändare i ett fordon.",
		not_possible_in_a_vehicle = "Den här åtgärden är inte möjlig i ett fordon.",
		just_used_bandage = "Du använde just en första hjälpen-remedier. Vänta en stund innan du använder en annan.",
		drank_gasoline_death = "Bensinförgiftning",
		drank_bleach_death = "Förgiftning av blekmedel",

		failed_burger_shot_delivery = "Misslyckades att öppna måltid från burgershot.",
		failed_bean_machine_delivery = "Misslyckades att öppna leverans från bean machine.",

		burger_shot_delivery_empty = "Den där måltiden från burgershot var tom.",
		bean_machine_delivery_empty = "Den där leveransen från bean machine var tom.",

		logs_used_weather_spell_title = "Använde väderspråket",
		logs_used_weather_spell_details = "${consoleName} använde väderspråket `${itemName}`.",

		you_have_used_jail_card = "Du har använt ett 'komma ut ur fängelse kort'!",
		you_are_not_in_jail = "Du är inte i fängelse.",

		stored_map_location = "Karta uppdaterad.",
		failed_location_map = "Kunde inte uppdatera kartpositionen.",
		updated_waypoint = "Satt waypoint till kartpositionen.",

		cleared_map = "Rensade sparad kartposition.",
		failed_clear_map = "Kunde inte rensa sparad kartposition.",
		clear_map_invalid_slot = "Ogiltig inventory slot."
	},

	jackpot = {
		press_to_deposit = "Tryck ~INPUT_REPLAY_SHOWHOTKEY~ för att sätta in föremål i Online Jackpot.",
		can_only_withdraw_at_casino = "Du kan endast ta ut pengar på casinot.",

		jackpot = "Jackpot",
		inventory = "Inventering",
		history = "Historik",
		no_items_in_inventory = "Det verkar som att du inte har några föremål i din virtuella inventory.",
		you_can_deposit_at_the_casino = "Du kan sätta in föremål på casinot.",
		close = "Stäng",
		bet = "Satsning",
		your_chance = "Din chans: ${chance}%",
		character_bet = "${characterName} satsade ${itemAmount} föremål värda $${itemWorth}",
		pot = "Potten: $${jackpotWorth}",
		items = "Föremål: ${jackpotItemAmount}",
		withdraw = "Ta ut (${withdrawAmount})",
		quick_sell = "Snabb försäljning ($${quickSellWorth})",
		inventory_value = "Värde: $${inventoryWorth}",
		inventory_total_items = "Totalt antal föremål: ${inventoryTotalItems}",
		daily_fee_information = "Varje dag klockan 6:00 BST tas föremål bort som 'lagringsavgift' om dess värde är >= 5% av ditt totala inventarie.",

		take_fee_no_permissions = "Spelaren försökte ta ut jackpotavgifter utan behörighet.",
		took_jackpot_fees = "Tog ut jackpotavgifter. Tog bort ${removedTotalItems} föremål med ett totalt värde av $${removedTotalWorth} från ${inventories} inventarier."
	},

	jail = {
		press_to_leave_jail = "Tryck på ~INPUT_CONTEXT~ för att lämna fängelset.",

		menu_title = "Fängelsemeny",
		check_remaining_time = "Kontrollera återstående tid",
		leave_city = "Lämna staden",
		leave_jail = "Lämna fängelset",
		close_menu = "Stäng meny",

		sentence_reduced = "Ditt straff har minskats med ${amount} månader, du har ${remaining} månader kvar.",
		sentence_over = "Ditt straff är över.",
		remaining_time = "Återstående tid: ${remaining} månader.",
		jailed = "Du har blivit fängslad i ${amount} månader.",

		mission_help_1 = "Tryck på ~INPUT_CONTEXT~ för att städa golvet.",
		mission_help_2 = "Tryck på ~INPUT_CONTEXT~ för att äta något.",
		mission_help_3 = "Tryck på ~INPUT_CONTEXT~ för att träna.",

		mission_1 = "Städa golvet.",
		mission_2 = "Äta en smörgås.",
		mission_3 = "Träna.",

		mission_blip = "Fängebelsesmission"
	},

	kiosks = {
		read_catalog = "Tryck på ~g~${InteractionKey} ~w~för att läsa katalogen"
	},

	leashes = {
		press_to_use_leash = "[${InteractionKey}] Använd Koppel",
		putting_leash_on = "Sätter på koppel.",
		press_to_take_leash_off = "[${InteractionKey}] Ta av koppel",
		takeing_leash_off = "Tar av koppel."
	},

	letterboxes = {
		press_to_access = "Tryck på ~g~${SeatEjectKey} ~w~för att komma åt ${type}",
		letterbox_broken = "${type} är trasig.",

		type_letterbox = "brevlåda",
		type_newsdisp = "tidningsdispenser",
		type_postbox = "postlåda"
	},

	locate = {
		invalid_filter_value = "Ogiltigt filtervärde.",
		locate_failed = "Kunde inte hitta enhet som matchar `${filter}`.",
		something_went_wrong = "Misslyckades med att hitta enheten.",
		locate_success = "Lyckades hitta enhet som matchar `${filter}` vid (${x}, ${y}, ${z}) (instans = ${instance}).",

		locate_entity_no_permissions = "Spelaren försökte lokalisera en enhet utan tillräcklig behörighet.",

		locate_entity_logs_title = "Lokaliserade enhet",
		locate_entity_logs_details = "${consoleName} försökte lokalisera enhetstyp `${filterType}` med värde `${filterValue}`."
	},

	login = {
		exit_city = "Lämna staden.",
		press_to_exit_city = "Tryck på ~g~${InteractionKey} ~w~för att lämna staden.",
		bad_words_in_character_creation = "Försökte skapa en karaktär med ett eventuellt olämpligt ord i antingen namnet eller bakgrunden: \"${badWords}\"",
		disallowed_words_in_character_name = "Försökte skapa en karaktär med ett eventuellt olämpligt namn: \"${characterName}\"",
		disallowed_birthday_ban = "Försökte skapa en karaktär med ett eventuellt olämpligt födelsedatum: \"${birthday}\"",

		welcome_to = "Välkommen till",
		press = "Tryck",
		enter = "ENTER",
		to_join = "för att ansluta",
		changelogs = "Ändringslogg",
		fetching_character_data = "Hämtar karaktärsdata...",
		yes = "Ja",
		no = "Nej",
		exit_game = "Avsluta spelet",
		are_you_sure_you_want_to_exit = "Är du säker på att du vill avsluta spelet?",
		exiting_game = "Avslutar spelet...",
		delete_character = "Ta bort",
		select_character = "Välj",
		new_character = "Ny Karaktär",
		empty_slot = "Tom plats",
		male = "Man",
		female = "Kvinna",
		name = "Namn",
		dob = "Födelsedatum",
		born = "Född ${dob}",
		gender = "Kön",
		cash = "Kontanter",
		bank = "Bank",
		story = "Berättelse",
		loading_character = "Laddar Karaktär...",
		deleting_character = "Tar bort Karaktär...",
		create_character = "Skapa Karaktär",
		first_name = "Förnamn",
		last_name = "Efternamn",
		date_of_birth = "Födelsedatum",
		character_backstory = "Karaktärsbakgrund",
		cancel = "Avbryt",
		complete = "Färdigställ",
		creating_character = "Skapar karaktär...",
		are_you_sure_you_want_to_delete = "Är du säker på att du vill ta bort den här karaktären? Det går inte att ångra åtgärden.",
		stop_download = "Stoppa Nerladdning",
		start_download = "Starta Nerladdning",
		slow_download = "Långsam Nerladdning",
		regular_download = "Vanlig Nerladdning",
		back = "Tillbaka",
		copy_license = "Licens-ID",
		copy_license_success = "Kopierat!",
		cache_assets = "Cachade tillgångar",
		download_assets = "Vill du ladda ner och cacha de flesta av serverns tillgångar? Detta kan leda till följande:",
		cache_assets_less_lag = "Potentiellt färre lagg, mindre borttappade bildrutor och hurvudtaget färre höga pings under spelets gång. Speciellt om du har en långsammare dator eller internetuppkoppling.",
		cache_assets_crashes = "Det kan orsaka att ditt spel kraschar under processen. Om detta händer, använd alternativet 'langsam nedladdning' istället.",
		cache_assets_restart = "När det är klart rekommenderar vi att du startar om spelet eftersom det kan orsaka fördröjningar för resten av sessionen.",
		cache_assets_disk = "Detta tar upp lite diskutrymme så se till att det finns tillgängligt utrymme. Efter en uppdatering kan det också vara värt att rensa din gamla cache för att frigöra utrymme.",
		vehicles = "Fordon",
		objects = "Objekt",
		peds = "Människor",
		clothing = "Kläder",
		main_menu = "Huvudmeny",
		gta_settings = "GTA-inställningar",
		discord = "Discord",
		framework = "Ramverk",
		rules = "Serverregler",
		notice = "Meddelande",
		language = "Språk",
		support_the_server = "Stöd Servern",
		battle_royale = "Strids-royale",
		arena = "Arena",
		queue = "Kö",
		queue_position_with_priority = "🐌 Du är ${queuePosition}/${queueTotal} i kön med ${queuePriorityName} prioritet. 🕐${queueTime}",
		queue_position_without_priority = "🐌 Du är ${queuePosition}/${queueTotal} i kön. 🕐${queueTime}",
		you_are_through = "Du är inne!",
		join_server = "Gå med i Server",
		tired_of_queueing = "Trött på att köa? Stöd oss för kö-prioritet!",
		joining_battle_royale = "Ansluter till Battle Royale",
		joining_arena = "Ansluter till Arena",
		refresh = "Uppdatera",
		refreshing = "Uppdaterar...",

		missing_character_creation_data = "Saknar data för karaktärsskapande.",
		invalid_first_name = "Saknas eller ogiltigt förnamn (2 till 100 tecken).",
		invalid_last_name = "Saknas eller ogiltigt efternamn (2 till 100 tecken).",
		invalid_date_of_birth = "Saknas eller ogiltigt födelsedatum.",
		invalid_backstory = "Saknas eller ogiltig bakgrundshistoria (1 till 5 000 tecken).",

		bad_words = "Det finns några olämpliga ord i ditt karakärsnamn eller i bakgrundshistorian.",
		disallowed_name = "Det finns vissa oacceptabla ord i ditt karaktärsnamn.",
		disallowed_birthday = "Ditt födelsedatum är inte tillåtet.",
		numbers_not_allowed = "Nummer är inte tillåtna i karaktärsnamn.",
		something_went_wrong = "Något gick fel när försökte skapa din karaktär.",
		character_slot_occupied = "Den här karaktärsskivan är redan upptagen.",
		name_already_taken = "Det här namnet är redan taget.",
		illegal_character_slot = "Du kan inte skapa en karaktär på den här skivan.",
		character_already_loaded = "Du har redan en karaktär laddad.",

		new_citizen = "Ny Medborgare",
		los_santos_police_dept = "LOS SANTOS POLISAVDELNING",

		welcome_msg_title = "Välkommen till ${communityName}!",
		welcome_msg = "Du har fått några föremål för att hjälpa dig komma igång. Du kan använda föremålen i din varma lista genom att använda 1-5 tangenter.\n\n*Tryck på tangenten 1 för att läsa din broschyr.*",

		press_to_go_back_to_menu = "Tryck på ~g~${InteractionKey}~w~ för att återgå till menyn.",
		go_back_to_menu = "Gå tillbaka till menyn.",

		developer = "Utvecklare",
		super_admin = "Superadmin",
		staff = "Personal",
		reconnect = "Anslut igen",
		christmas = "Jul",
		casino = "Kasino",
		random = "Slumpmässig",
		beginner = "Nybörjare",
		custom = "Anpassad",

		appreciated_tier = "Uppskattad nivå",
		respected_tier = "Respekterad nivå",
		heroic_tier = "Hjältemodig nivå",
		legendary_tier = "Legendarisk nivå",
		godlike_tier = "Gudaliknande nivå"
	},

	loot = {
		press_to_pick_up = "Tryck ~INPUT_CONTEXT~ för att plocka upp ${itemLabel}."
	},

	lottery = {
		lottery_announcement = "Lotteriutrop",
		lottery_about_to_roll = "En vinnare kommer att dras om 5 minuter för dagens lotteri. Totala vinstpotten står just nu på $${totalPot} där du har satsat $${betAmount}. Din vinstchans är ${odds}%. ",
		current_lottery_pot = "Totala prispotten är för närvarande på $${totalPot} där du har satsat $${betAmount}. Din chans att vinna är ${odds}%.",
		drew_a_lottery_winner = "En vinnare för lotteriet har dragits.",
		roll_lottery_no_permission = "Spelaren försökte dra lotteriet men hade inte tillstånd att göra det.",
		winner_has_been_picked = "${fullName} har vunnit lotteripotten på $${totalPot}! De satsade $${betAmount} och deras chans att vinna var ${odds}%.",
		claimed_lottery_winnings = "Hämtade alla lotterivinster.",
		no_lottery_winnings = "Du har inga outnyttjade lotteri vinster.",
		internal_server_error = "Ett internt serverfel har inträffat.",
		use_disabled_animal = "Du kan inte använda lotteriet som ett djur ped.",

		lottery_log_title = "Vann Lotteriet",
		lottery_log_description = "${fullName} (#${characterId}) har vunnit lotteripotten på $${totalPot}. De satsade $${betAmount}."
	},

	lucky_wheel = {
		hold_to_spin_lucky_wheel = "Håll ~INPUT_CONTEXT~ för att snurra Lyckohjulet. Kostnaden är $${cost}.",
		hold_to_spin_lucky_wheel_free_one_left = "Håll ~INPUT_CONTEXT~ för att snurra Lyckohjulet. Du har 1 gratis snurr kvar idag.",
		hold_to_spin_lucky_wheel_free_multiple_left = "Håll ~INPUT_CONTEXT~ för att snurra Lyckohjulet. Du har ${spins} gratis snurr kvar idag.",
		continue_holding_to_spin_lucky_wheel = "Fortsätt hålla ~INPUT_CONTEXT~ för att snurra Lyckohjulet.",
		unable_to_spin_lucky_wheel = "Du har redan snurrat Lyckohjulet lika många gånger som tillåtet idag. Nästa snurr tillgängligt om ${time}.",
		not_enough_balance_to_spin = "Du har inte tillräckligt med pengar för att snurra hjulet. Kostnaden är $${cost}.",
		lucky_wheel_is_occupied = "Lyckohjulet är för närvarande upptaget. Vänligen vänta.",

		logs_lucky_wheel_reward_title = "Lyckohjulets Belöning",
		logs_lucky_wheel_reward_vehicle_details = "${consoleName} har snurrat på hjulet och vann en bil.",
		logs_lucky_wheel_reward_vehicle_given_details = "${consoleName} har fått en bil med modellnamnet `${modelName}`.",
		logs_lucky_wheel_reward_money_details = "${consoleName} har snurrat på hjulet och vann $${amount}.",
		logs_lucky_wheel_reward_chips_details = "${consoleName} har snurrat hjulet och vunnit $${amount} i marker.",
		logs_lucky_wheel_reward_jewelry_details = "${consoleName} har snurrat på hjulet och vann smycken med namnet `${itemName}`.",
		logs_lucky_wheel_reward_item_details = "${consoleName} har snurrat på hjulet och vann en föremål med namnet `${itemName}`.",
		logs_lucky_wheel_reward_queue_priority_details = "${consoleName} har snurrat på hjulet och vunnit en vecka med köprioritet."
	},

	magazines = {
		issue_id = "Problem #${issueId}",
		releases_updated = "Utgåvor uppdaterade.",
		no_release_changes = "Inga utgivningsändringar",
		refresh_magazines_no_permissions = "Spelare försökte uppdatera magasinen utan rättigheter."
	},

	mdt = {
		mdt_title = "Mobil data terminal",
		loading_reports = "Laddar rapporter...",
		failed_report_load = "Det gick inte att ladda rapporter.",
		no_reports = "Inga rapporter.",
		loading = "Laddar...",

		title_placeholder = "Titel",
		body_placeholder = "Min rapport..."
	},

	mechanics = {
		move_here_check = "Flytta hit för att kolla efter uppgraderingar",
		checking_upgrades = "Kollar fordonsuppgraderingar",
		upgrades_list = "${armor}, ${engine}, ${brakes}, ${transmission} och ${turbo}.",

		has_no_turbo = "har ingen turbo installerad",
		has_turbo = "har en turbo installerad",

		armor_0 = "Ingen pansar",
		armor_1 = "20% pansaruppgradering",
		armor_2 = "40% pansaruppgradering",
		armor_3 = "60% pansaruppgradering",
		armor_4 = "80% pansaruppgradering",
		armor_5 = "100% pansaruppgradering",

		brakes_0 = "Standard Bromsar",
		brakes_1 = "Gatubromsar",
		brakes_2 = "Sportbromsar",
		brakes_3 = "Racerbromsar",

		transmission_0 = "Standardväxellåda",
		transmission_1 = "Gatuväxellåda",
		transmission_2 = "Sportväxellåda",
		transmission_3 = "Racerväxellåda",

		engine_0 = "Standardmotor",
		engine_1 = "Motor EMS Nivå 2",
		engine_2 = "Motor EMS Nivå 3",
		engine_3 = "Motor EMS Nivå 4",
		engine_4 = "Motor EMS Nivå 5",

		no_nearby_vehicle = "Inget fordon i närheten.",
		already_checking_upgrades = "Du kontrollerar redan ett fordon.",
		engine_is_running = "Fordonets motor är igång."
	},

	meth = {
		press_to_sell_meth = "Tryck ~INPUT_CONTEXT~ för att sälja Meth.",
		local_not_interested = "Personen verkar inte vara intresserad just nu.",
		selling_meth = "Säljer Meth."
	},

	mining = {
		drill_scan_stone = "[${InteractionKey}] Borra sten, [${SeatEjectKey}] Skanna sten.",
		scan_stone = "[${SeatEjectKey}] Skanna sten.",
		drill_stone = "[${InteractionKey}] Borra sten.",
		scanning_stone = "Skannar.",
		drilling = "Borrar.",
		failed_drill_stone = "Misslyckades med att borra i stenen.",
		drill_no_drops = "Du hittade inga ädelstenar i den här stenen.",
		drill_drops = "Du hittade några ädelstenar i stenen.",
		used_drill = "Din borr gick sönder.",
		still_shook = "Du är fortfarande skakad från den senaste explosionen och hittade inga ädelstenar i denna stenen.",

		recharging_scanner = "Laddar Scanner ${percentage}%",
		scanning = "Skannar ${percentage}%",

		refine_gemstones = "[${InteractionKey}] Förädla ädelstenar",
		refinery = "Raffinaderibord",
		exit_refinery = "Avsluta raffinaderi",
		no_gemstones = "Du har inga råa ädelstenar.",
		refining = "Raffinering 1x ${gemstone}",
		refine_success = "Förädlade 1x ${gemstone}.",
		failed_refine = "Misslyckades att raffinera ädelsten.",

		craft_rings = "[${InteractionKey}] Tillverka ringar",
		no_crafting_items = "Du har inte tillräckligt med föremål för att tillverka något här.",
		crafting = "Tillverkar 1x ${item}",
		crafting_table = "Tillverkningsbänk",
		crafting_success = "Tillverkade 1x ${gemstone}.",
		failed_crafting = "Misslyckades att tillverka föremål.",
		exit_crafting = "Avsluta tillverkningsbänk",

		engrave_ring = "[${InteractionKey}] Gravera ringar",
		no_engrave_items = "Du har inga ringar.",
		exit_engraving = "Avsluta gravering",
		engraving_table = "Gravyrstation",
		engraving = "Gravyr ${itemName}",
		engrave_message = "Gravyrmeddelande (max 100 tecken)",
		engrave_success = "Meddelandet har graverats framgångsrikt på ${itemName}.",
		failed_engrave = "Misslyckades med att gravera meddelandet.",

		no_sellable_items = "Du har ingenting att sälja här.",
		exit_shop = "Avsluta butik",
		shop = "Ädelstensbutik",
		sell_gemstones = "[${InteractionKey}] Sälja Ädelstenar",
		local_price = "Lokalt pris: $${price}",

		sold_gemstone = "Sålde 1x ${gemstone} för $${price}.",
		failed_sell_gemstone = "Kunde inte sälja ädelstenen.",
		failed_sell_no_item = "Du har inte föremålet du försökte sälja.",
		failed_sell_cap = "Säljaren vill inte köpa fler av den varan från dig.",

		mining_sold_item_title = "Sålda ädelstenar",
		mining_sold_item_details = "${consoleName} sålde 1x ${itemName} för $${price}.",

		mining_crafted_item_title = "Skapat föremål",
		mining_crafted_item_details = "${consoleName} skapade 1x ${itemName}.",

		mining_refined_item_title = "Raffinerad ädelsten",
		mining_refined_item_details = "${consoleName} raffinerade 1x ${itemName}.",

		mining_mined_title = "Brytning av ädelsten",
		mining_mined_details = "${consoleName} bröt ${output}.",

		mining_exploded_title = "Explosion vid brytning",
		mining_exploded_details = "${consoleName} sprängdes när de försökte bryta en ädelsten.",

		instability_0 = "Den här ädelstenen är stabil.",
		instability_1 = "Den här ädelstenen är något instabil.",
		instability_2 = "Den här ädelstenen är instabil.",
		instability_3 = "Den här ädelstenen är mycket instabil.",

		exhausted = "Du känner dig utmattad efter att ha varit i gruvan så länge.",
		very_exhausted = "Du känner dig mycket utmattad efter att ha varit i gruvan så länge."
	},

	miscellaneous = {
		language_unavailable = "Språket `${languageCode}` är ännu inte tillgängligt. Om du vill skapa översättningar för detta språk, är du välkommen att gå med i OP-FW:s utvecklings-Discord server för mer information på ${frameworkDiscord}!",
		same_language = "Du har redan ${languageCode} som ditt valda språk.",
		language_set = "Ditt föredragna språk har nu ställts in på ${languageCode}.",
		current_language = "Nuvarande språk",
		available_language_codes = "Tillgängliga språk",
		ping_pong = "Pong!",
		ping_response = "${ping}ms (återuppringningstid: ${callbackTime}ms)",
		ooc_first_time = "Vi ser att du inte har använt /ooc tidigare! Innan vi låter dig använda det, vill vi ge dig en liten varning. /ooc-kommandot ska bara användas i omedelbara situationer och alla icke-omedelbara frågor eller meddelanden bör skickas till vår Discord-kanal på ${communityDiscord}. Det är allt! För att börja använda /ooc, skriv /ooc_on. Du kommer att kunna stänga av det igen med /ooc_off.",
		ooc_not_logged_in = "Du är inte inloggad.",
		ooc_timed_out = "Du är för närvarande avstängd från OOC-chatten. Vänligen vänta.",
		ooc_muted_no_reason = "Du har blivit tystad från den globala OOC-chatten utan angivet skäl.",
		ooc_muted = "Du har blivit tystad från den globala OOC-chatten för följande anledning: `${reason}`.",
		global_ooc_title = "OOC ${playerDescriptor}",
		local_ooc_title = "LOKAL OOC ${playerDescriptor}",
		ooc_is_disabled = "Du har inaktiverat den globala OOC-chatten.",
		ooc_enabled = "Den globala OOC-chatten har nu aktiverats.",
		ooc_already_enabled = "Den globala OOC-chatten är redan aktiverad.",
		ooc_disabled = "Den globala OOC-chatten har nu inaktiverats.",
		ooc_already_disabled = "Den globala OOC-chatten är redan inaktiverad.",
		ooc_local_logs_title = "Lokalt OOC-meddelande",
		ooc_local_logs_details = "${consoleName} skickade följande meddelande i den lokala OOC-chatten: `${oocMessage}`.",
		ooc_global_logs_title = "Globalt OOC-meddelande",
		ooc_global_logs_details = "${consoleName} skickade följande meddelande i den globala OOC-chatten: `${oocMessage}`.",
		bad_ooc_message = "Försök att skicka möjligen dåligt meddelande i OOC-chatten: \"${oocMessage}\"",
		bad_ped_message = "Försök att skapa möjligen dåligt PEd-meddelande: \"${pedMessage}\"",
		bad_twitter_post = "Försök att skapa möjligen dålig Twitter-post: \"${twitterPost}\"",
		bad_phone_message = "Försökte skapa ett möjligt dåligt twitter-inlägg: \"${message}\"",
		mute_toggle_not_staff = "Spelare försökte tysta en annan spelare, men hade inte rätt behörigheter att göra det.",
		unmute_toggle_not_staff = "Spelare försökte ta bort tystning av en annan spelare, men hade inte rätt behörigheter att göra det.",
		user_not_found = "Vi kunde inte hitta en användare med server-ID `${serverId}`.",
		player_already_muted = "${consoleName} har redan tystats.",
		player_has_been_muted_no_reason = "${consoleName} har nu tystats utan specificerad anledning.",
		player_has_been_muted = "${consoleName} har nu blivit tystad med anledning: `${reason}`.",
		player_not_muted = "${consoleName} är inte tystad.",
		player_has_been_unmuted = "${consoleName} har nu fått röst tillbaka.",
		clear_chat_not_admin = "Spelaren försökte rensa chatten för alla spelare, men hade inte behörighet att göra det.",
		ooc_clear_chat_title = "Chatt Rensad",
		ooc_clear_chat_details = "${consoleName} rensade chatten för alla.",
		muted_player = "Tystad Spelare",
		muted_player_no_reason_details = "${consoleName} tystade ${targetConsoleName} utan någon specificerad anledning.",
		muted_player_details = "${consoleName} har tystat ${targetConsoleName} med anledning `${muteReason}`.",
		player_muted = "Spelare Tystad",
		player_muted_no_reason_details = "${targetConsoleName} har blivit tystad av ${consoleName} utan angiven anledning.",
		player_muted_details = "${targetConsoleName} har blivit tystad av ${consoleName} med anledning `${muteReason}`.",
		muted_self = "Själv Tystad",
		muted_self_no_reason_details = "${consoleName} har tystat sig själv utan angiven anledning.",
		muted_self_details = "${consoleName} har tystat sig själv med anledning `${muteReason}`.",
		unmuted_self = "Upptäckte själv",
		unmuted_self_details = "${consoleName} avaktiverade sig själv.",
		unmuted_player = "Upptäckte spelare",
		unmuted_player_details = "${consoleName} avaktiverade ${targetConsoleName}.",
		player_unmuted = "Spelare avaktiverad",
		player_unmuted_details = "${targetConsoleName} har blivit avaktiverad av ${consoleName}.",
		ooc_cancelled_same_as_last = "Ditt OOC-meddelande avbröts då du försökte skicka två identiska meddelanden i rad.",
		use_measurement_metric = "Du har valt att använda metriska systemet som din föredragna mätmetod.",
		use_measurement_imperial = "Du har valt imperial som ditt föredragna måttsystem.",
		use_measurement_default = "Du kommer nu använda standardmåttsystemet för din lokala inställning.",
		already_using_metric_measurement = "Du använder redan metriska måttenheter som ditt föredragna system.",
		already_using_imperial_measurement = "Du använder redan imperiala måttenheter som ditt föredragna system.",
		already_using_default_measurement = "Du använder redan standardmåttsystemet.",
		no_copyright = "Ingen Upphovsrätt",
		no_copyright_warning = "Hej! Är du en streamer eller innehållsskapare där DMCA och upphovsrättsliga anspråk är ett problem? Om så är fallet föreslår vi att du aktiverar kommandot `${noCopyrightCommand}` så att vi kan stoppa viss upphovsrättsskyddat material från att visas och spelas upp i ditt spel. Denna funktion börjar fungera så snart den aktiveras.",
		no_copyright_enabled = "Funktionen 'Inget Upphovsrätt' har aktiverats.",
		no_copyright_disabled = "Funktionen 'Inget Upphovsrätt' har inaktiverats.",
		server_tps = "Server TPS",
		server_tps_response = "${tps}",
		license_copied = "Licensen har kopierats till urklipp.",
		uptime = "Upptid: ${uptime}",

		picture_no_url = "Saknad URL.",
		picture_invalid_url = "Ogiltig URL, måste börja med https://.",
		picture_no_description = "Saknad beskrivning.",
		picture_failed = "Misslyckades med att skapa bild.",

		auto_run_already_set_to = "Auto-kör är redan satt till att styra ${controlId}.",
		auto_run_already_unset = "Auto-run är redan avstängd.",
		auto_run_set_to = "Auto-run har ställts in för att styra ${controlId}.",
		auto_run_unset = "Auto-run har stängts av.",

		invalid_server_id = "Ogiltigt server-ID",
		walk_forwards_success = "Gick framåt har aktiverats för ${displayName}.",
		walk_forwards_failed = "Misslyckades med att aktivera gå framåt för ${displayName}."
	},

	money = {
		invalid_server_id = "Ogiltigt server-ID.",
		invalid_amount = "Ogiltigt belopp.",
		something_went_wrong = "Något gick fel.",
		not_enough_cash = "Du har inte tillräckligt med pengar.",
		not_close_enough = "Du är inte tillräckligt nära spelaren.",
		user_not_available = "Användaren är inte tillgänglig.",

		bill_received = "${displayName} har skickat en faktura på $${amount}. Skriv \"/yes\" för att godkänna eller \"/no\" för att avböja.",
		bill_expired = "Din räkning från ${displayName} har gått ut.",
		bill_declined = "Du har avböjt räkningen från ${displayName}.",
		failed_bill_payment = "Misslyckades med att betala räkningen.",
		bill_success = "Betalt $${amount} räkning till ${displayName} framgångsrikt.",
		bill_created = "Du har skapat en räkning på $${amount} till ${displayName}.",

		givecash_success = "Du gav ${displayName} $${amount}.",

		give_cash_title = "Kontantöverföring",
		give_cash_details = "${consoleName} överförde $${amount} till ${targetConsoleName}.",
		paid_bill_title = "Betald Räkning",
		paid_bill_details = "${consoleName} betalade räkningen på $${amount} till ${targetConsoleName}.",
		bill_created_title = "Räkning Skapad",
		bill_created_details = "${consoleName} skapade en räkning på $${amount} till ${targetConsoleName}."
	},

	moonshine = {
		fill_chamber = "[${InteractionKey}] Fyll Kammer",
		collect_moonshine = "[${InteractionKey}] Samla Moonshine",
		fermenting = "Jäser ${percentage}%",
		filling_chamber = "Fyller Kammer",

		not_enough_items = "Du har inte tillräckligt med föremål för att fylla kammen.",
		something_went_wrong = "Något gick fel.",
		failed_fill = "Det gick inte att fylla på kammaren.",
		failed_empty = "Det gick inte att samla upp moonshine.",

		press_to_sell_moonshine = "Tryck ~INPUT_CONTEXT~ för att sälja Moonshine.",
		local_not_interested = "Lokalen verkar inte vara intresserad just nu.",
		selling_moonshine = "Säljer Moonshine."
	},

	nos = {
		press_to_install_nitro_tank = "Tryck ~INPUT_CONTEXT~ för att installera Nitro Tank.",
		installing_nitro_tank = "Installerar Nitro Tank",
		press_to_remove_nitro_tank = "Tryck ~INPUT_CONTEXT~ för att ta bort Nitro Tank.",
		removing_nitro_tank = "Tar Bort Nitrotank"
	},

	notepads = {
		take_notes = "Ta anteckningar...",
		press_to_open = "Tryck ~INPUT_DETONATE~ för att öppna den här anteckningsboken.",
		notepad_busy = "Någon annan använder denna anteckningsbok.",
		dropped_notepad_title = "Anteckningsbok tappad",
		dropped_notepad_text_title_details = "${consoleName} tappade en anteckningsbok med texten `${text}`.",
		updated_notepad_title = "Anteckningsbok uppdaterad",
		updated_notepad_text_title_details = "${consoleName} uppdaterade en anteckningsbok med texten `${text}`.",
		picked_up_notepad_title = "Anteckningsbok plockad upp",
		picked_up_notepad_text_title_details = "${consoleName} plockade upp en anteckningsbok med texten `${text}`.",
		invalid_notepad_id = "ogiltigt anteckningsblock ID.",
		failed_notepad_info = "Kunde inte hämta information om anteckningsblock.",
		notepad_info = "Anteckningsblocket ${notepadId} lämnades av ${droppedBy}.",
		failed_notepad_wipe = "Det gick inte att ta bort anteckningsblock.",
		invalid_notepad_wipe_radius = "Ogiltigt radie-värde (Min = 1, Max = 100).",
		notepad_wipe_success = "Tog bort ${amount} anteckningsblock.",
		sign_invalid_slot = "Ogiltig inventarieplats.",
		signed_notepad = "Signerade anteckningsblock i slot `${slotId}`.",
		failed_sign_notepad = "Misslyckades med att signera anteckningsblock.",
		sign_already_signed = "Du kan inte signera detta anteckningsblock.",

		notepad_info_missing_permissions = "Spelaren försökte hämta information om ett anteckningsblock utan tillräckliga behörigheter.",
		wipe_notepads_missing_permissions = "Spelaren försökte rensa anteckningsblock utan tillräckliga behörigheter."
	},

	notices = {
		message_too_long = "Meddelandet innehåller för många tecken eller rader!",
		invalid_notice_id = "Ogiltigt meddelande-id.",
		successfully_removed_notice = "Meddelandet togs bort.",
		failed_remove_notice = "Misslyckades med att ta bort meddelandet.",

		add_notice_missing_permissions = "Spelaren försökte lägga till en notis utan tillräckliga rättigheter.",
		remove_notice_missing_permissions = "Spelaren försökte ta bort en notis utan tillräckliga rättigheter."
	},

	objects = {
		saved_found_objects = "Sparade `${foundObjectsAmount}` hittade objekt av modellen `${modelName}` till en fil på servern.",
		no_nearby_objects_with_model_found = "Inga närliggande objekt hittades med modellen `${modelName}`.",
		invalid_model_name = "Modellen `${modelName}` är inte en giltig modell.",
		missing_model_name = "Saknad modellnamn."
	},

	orbitcam = {
		enabled_orbitcam = "Aktiverad orbitkamera.",
		disabled_orbitcam = "Inaktiverad orbitkamera.",
		orbitcam_failed = "Misslyckades med att aktivera orbitkameran. Har du noclip eller liknande aktiverat?",

		orbitcam_logs_title = "Toggling av Orbitkamera",
		orbitcam_on_logs_details = "${consoleName} aktiverade sin orbitkamera.",
		orbitcam_off_logs_details = "${consoleName} inaktiverade sin orbitkamera.",

		orbitcam_no_permission = "Försökte aktivera sin orbitkamera utan nödvändiga behörigheter."
	},

	overview = {
		header_title = "OP Ramverk - Översikt UI",
		select_information = "Information",
		select_activity_points = "Aktivitetspoäng",
		select_staff_points = "Personalpoäng",
		select_moderation = "Moderering",
		select_handling_overrides = "Handhavandet ignorerar",
		select_settings = "Inställningar",
		about_title = "Om översikten UI",

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

		about_activity_points_title = "Om Aktivitetspoäng",

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

		activity_points_this_week = "Denna Vecka",
		activity_points_last_week = "Förra veckan",
		activity_points_current = "Aktivitetspoäng: <b>${activityPoints} + ${gainAmount}/minut</b>",
		activity_points_current_no_gain = "Aktivitetspoäng: <b>${activityPoints}</b>",
		activity_points_goal_low = "<br><br>Ditt nuvarande aktivitetsmål är på 400 poäng för Låg Jobb Prioritet, med <b>återstående poäng: ${remainingPoints}</b>!",
		activity_points_goal_medium = "<br><br>Ditt nuvarande aktivitetsmål är på 700 poäng för Medium Jobb Prioritet, med <b>återstående poäng: ${remainingPoints}</b>!",
		activity_points_goal_high = "<br><br>Ditt nuvarande aktivitetsmål är på 1000 poäng för Hög Jobb Prioritet, med <b>återstående poäng: ${remainingPoints}</b>!",
		activity_points_goal_none = "<br><br>Du har för närvarande inga aktivitetsmål.",
		activity_points_not_enough = "Du hade inte tillräckligt med aktivitetspoäng för att få företräde i kön förra veckan.",
		activity_points_last_week_low = "Imponerande, du hade tillräckligt med aktivitetspoäng förra veckan för att få Låg Jobb Prioritering i kön!",
		activity_points_last_week_medium = "Fantastiskt, du hade tillräckligt med aktivitetspoäng förra veckan för att få Medium Jobb Prioritering i kön!",
		activity_points_last_week_high = "Otroligt, du hade tillräckligt med aktivitetspoäng förra veckan för att få Hög Jobb Prioritering i kön!",

		about_staff_points_title = "Om Personalpoäng",

		about_staff_points_text = [[
			Similar to the activity points for jobs, you will gain staff points when you're in the server with your staff availability toggled on.
			<br><br>
			Every minute, a certain amount of staff points is distributed to all active staff members. This means that if there are 4 staff members active, each person will get 25% of the staff points that minute. The amount of staff points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The staff points reset for everyone at the beginning of each week. Your eight most recent weeks will be available for display in a table below.
		]],

		staff_points_this_week = "Denna Vecka",
		staff_points_current = "Personalpoäng: <b>${staffPoints} + ${gainAmount}/minut</b>",
		staff_points_current_no_gain = "Personalpoäng: <b>${staffPoints}</b>",
		staff_points_table = "Personalpoängstabell",
		this_week = "Denna Vecka",
		one_week_ago = "1 vecka sedan",
		two_weeks_ago = "2 veckor sedan",
		three_weeks_ago = "3 veckor sedan",
		four_weeks_ago = "4 veckor sedan",
		five_weeks_ago = "5 veckor sedan",
		six_weeks_ago = "6 veckor sedan",
		seven_weeks_ago = "7 veckor sedan",
		eight_weeks_ago = "8 Veckor Sedan",
		previous_weeks_average = "Föregående Veckors Genomsnitt",

		about_detection_areas_title = "Upptäcktsområden",
		about_detection_areas_text = "Upptäcktsområden kan vara ett användbart verktyg för personalen när man försöker identifiera en fuskare som spawner oönskade fordon och / eller personer. För att skapa ett upptäcktsområde, använd `/detection_area_add`. När du har skapat ett område, visas det här. Endast de senaste 100 enheterna loggas i varje område.",
		detection_area_title = "Upptäcktsområde #${detectionAreaId}",

		about_sound_effects_title = "Ljudeffekter",
		about_sound_effects_text = "Dessa fält låter dig ändra vissa ljudeffekter. De kräver en länk till en .oog-fil för att fungera korrekt. Länken måste också vara en https:// URL och inte en http://. Ett enkelt sätt att ladda upp en fil är att ladda upp den till Discord, kopiera länken och klistra in den i fälten här.",
		radio_mic_click_on = "Radiomikrofonklick (På)",
		radio_mic_click_off = "Radiomikrofonklick (Av)",
		clipboard_animation = "Urklippsanimation",
		sound_effect_placeholder = "URL till .oog-fil...",
		sound_effect_save = "Spara",
		sound_effect_reset = "Återställ",

		staff_notifications_reports = "Anmälningsnotifikationer",
		staff_notifications_staff_chat = "Personalchattnotifikationer",
		staff_notifications_general = "Allmänna notifikationer",
		staff_notifications_anti_cheat = "Anti-Cheat-notifikationer",

		december_1 = "1:a december",
		december_2 = "2:a december",
		december_3 = "3:e december",
		december_4 = "4:e december",
		december_5 = "5:e december",
		december_6 = "6:e december",
		december_7 = "7 december",
		december_8 = "8 december",
		december_9 = "9 december",
		december_10 = "10 december",
		december_11 = "11 december",
		december_12 = "12 december",
		december_13 = "13 december",
		december_14 = "14 december",
		december_15 = "15 december",
		december_16 = "16 december",
		december_17 = "17 december",
		december_18 = "18 december",
		december_19 = "19 december",
		december_20 = "20 december",
		december_21 = "21 december",
		december_22 = "22:a december",
		december_23 = "23:e december",
		december_24 = "24:e december",
		hatch_closed = "STÄNGD",
		hatch_open = "ÖPPEN",
		hatch_claim = "TA",
		hatch_opened = "TATT",
		hatch_waiting = "VÄNTAR",

		about_advent_calendar_title = "Om adventskalendern",

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

		unlocks_in_days_hours_minutes_seconds = "${days} dagar, ${hours} timmar, ${minutes} minuter och ${seconds} sekunder",
		unlocks_in_hours_minutes_seconds = "${hours} timmar, ${minutes} minuter och ${seconds} sekunder",
		unlocks_in_minutes_seconds = "${minutes} minuter och ${seconds} sekunder",
		unlocks_in_seconds = "${seconds} sekunder",
		unlocks_in_an_unknown_amount_of_time = "en okänd tid",

		unopened_hatch = "Oöppnad lucka",
		won_money = "$${amount} kontanter",
		won_vehicle = "Fordon (julspecial)",
		won_queue_priority = "En vecka av köprioritet!",

		about_handling_overrides_title = "Handling-åsidosättanden",
		about_handling_overrides_text = "Skapa tillfälliga handling-åsidosättanden för hanteringsklasser dynamiskt. Åsidosättandena kommer att vara giltiga tills de tas bort eller servern startas om. Åsidosättandena görs för alla spelare på servern.",
		add_override = "Lägg till Override",
		add = "Lägg till",
		model_name = "Modellnamn...",
		field_name = "Fält...",
		value = "Värde...",
		current_overrides = "Nuvarande Overrides",

		about_explosion_events_title = "Explosionshändelser",
		about_explosion_events_about = "Här loggas information om de senaste 500 explosionerna. Detta bör hjälpa personalen att hitta modders.",
		about_unusual_explosions = "Ovanliga explosioner som inte sker normalt.",
		explosions_by_type_title = "Explosioner efter typ",
		players_causing_explosions_title = "Spelare som orsakar explosioner",
		show_common_events_off = "Visa vanliga händelser: AV",
		show_common_events_on = "Visa vanliga händelser: PÅ",

		explosion_events_type = "Typ",
		explosion_events_amount = "Antal",
		explosion_events_nearby = "I närheten",
		explosion_events_distance = "Avstånd",
		explosion_events_player = "Spelarnamn",

		illegal_weapons_title = "Spawnsade vapen",
		illegal_weapons_about = "Här loggas de senaste 500 förekomsterna av spawnsade vapen som upptäckts av systemet. När någon har ett spawnsat vapen betyder det inte nödvändigtvis att de moddar, eftersom moddare kan spawn vapen i andra spelares händer och därmed skulle andra spelare också visas här.",
		illegal_weapons_by_type = "Vapen sorterade efter typ",
		players_with_spawned_weapons = "Spelare med framkallade vapen",

		ped_models_title = "Spelarpedmodeller",
		ped_models_about = "Här listas varje spelare som inte använder en freemode-karaktärsmodell. Detta kan hjälpa till att hitta spelare som bara är här för att störa eller potentiella modders.",
		local_ped_models_title = "Lokala ped modeller",
		animal_ped_models_title = "Djurs ped modeller",

		fast_movement_title = "Snabb rörelse",
		fast_movement_about = "Här listas varje spelare som har flaggats för att röra sig för snabbt. Detta kan hjälpa till att hitta spelare som är potentiella modders.",

		damage_modifier_title = "Skadereglerare",
		damage_modifier_about = "Här listas alla spelare som har upptäckts ha modifierat sin skada. Detta kan hjälpa till att identifiera spelare som kan vara moddare.",

		bad_screen_word_title = "Olämpliga ord på skärmen",
		bad_screen_word_about = "Här listas alla spelare som har upptäckts ha vissa ord på skärmen. Detta kan hjälpa till att identifiera spelare som kan vara moddare.",

		freecam_detections_title = "Freecam-upptäckter",
		freecam_detections_about = "Här listas alla spelare som har upptäckts använda en freecam. Detta kan hjälpa till att identifiera spelare som kan vara moddare.",

		damage_modifier_name = "Spelarens namn",
		damage_modifier_expected = "Förväntat",
		damage_modifier_actual = "Verkligt",

		bad_words_name = "Spelarens namn",
		bad_words_words = "Utlösande ord",

		freecam_detections_name = "Spelarens namn",
		freecam_detections_distance = "Maximalt avstånd",

		hotwire_driving_detections_name = "Spelarens namn",

		model = "Modell",
		label = "Etikett",
		amount = "Belopp",
		console_name = "Spelare",
		expected = "Förväntat",
		actual = "Verkligt",
		words = "Ord",
		distance = "Avstånd",
		weapon = "Vapen",
		type = "Typ",
		nearby = "I närheten",

		no_entries = "Inga poster"
	},

	oxy = {
		press_to_talk_to_jc = "Tryck ~g~${InteractionKey} ~w~för att prata med JC.",
		tutorial_will_play_next_time = "Oxygen handledningen kommer att spelas nästa gång du gör ett jobb.",
		prescription_pick_up = "Hämta recept: ${label}",

		pick_up_the_prescriptions = "Hämta de förfalskade recepten markerade på din karta.",
		redeem_them_at_the_city = "När det är klart måste du lösa in dem i staden.",
		jc_will_be_expecting_some_back = "~y~JC ~w~kommer att förvänta sig 6 av ${pickUpAmount} Oxy tillbaka.",
		you_have_limited_time = "Du har en begränsad tid. Du måste återvända med pillerna inom ${time}.",
		press_to_hide_unimportant_blips_in_map = "Tryck ~INPUT_SPRINT~ för att dölja icke-missionsmarkörer när du är i pausmenyn.",
		consider_getting_a_smart_watch = "Överväg att skaffa en Smart Watch för att alltid kunna se din GPS.",

		press_to_pick_up_prescription = "Tryck på ~g~${InteractionKey} ~w~för att hämta receptet.",

		redeem_oxy_prescription = "Lös in Oxy-recept",
		press_to_redeem_prescription = "Tryck på ~g~${InteractionKey} ~w~för att lösa in receptet.",

		check_your_map_to_redeem_prescriptions = "Bra jobbat! Kolla din karta för att lösa in recepten. Du har ${time} kvar.",
		go_to_jc_to_finish_run = "Bra gjort! Återvänd till ~y~JC ~w~för att avsluta uppdraget. Du har ${time} kvar.",

		oxy_run_started_title = "Oxy-uppdrag startat",
		oxy_run_started_details = "${consoleName} startade ett oxy-uppdrag.",

		oxy_run_ended_title = "Oxy Run Avslutad",
		oxy_run_ended_details = "${consoleName} avslutade sin oxy run efter ${time} och tjänade $${payout}.",

		oxy_run_failed_title = "Oxy Run Misslyckades",
		oxy_run_failed_details = "${consoleName} misslyckades med sin oxy run.",

		you_failed_the_run = "Du misslyckades med runen. ~y~JC ~w~kommer inte vara nöjd med dig ett tag.",

		time_left = "Du har ${time} kvar.",

		accidental_call_1_part_1 = "Hej, vad säger min vän?",
		accidental_call_1_part_2 = "Okej, jag har satt upp en liten grej nu för det finns någon som kör oxy just nu.",
		accidental_call_1_part_3 = "Ja, jag har nedskrivet hans registreringsskylt, hans bil, allt.",
		accidental_call_1_part_4 = "Och, när han lämnar bilen för att leverera grejen, behöver jag att du hoppar in och tar den för mig.",
		accidental_call_1_part_5 = "Nej, han har ingen aning om att det kommer att vara vi, jag skickade honom downtown så han kommer troligen att tro att det är någon sorts gang eller något.",
		accidental_call_1_part_6 = "Lita på mig, det är enkelt.",
		accidental_call_1_part_7 = "Ååååh! Yo, vad säger du min kille?! Inte du, den andra mannen! Jag skickade två män! Inte du dock!",
		accidental_call_1_part_8 = "Du chillar ändå! Fel kille dock... men det var någon annan kille bro. Inte du dock.",
		accidental_call_1_part_9 = "Det var inte du. Du förstår vad jag säger? Det var inte du dock!",
		accidental_call_1_part_10 = "Men akta dig ändå, för om du jävlas så tar jag definitivt din bil.",
		accidental_call_1_part_11 = "Kärlek.",

		accidental_call_2_part_1 = "Hallå där, vad säger du?",
		accidental_call_2_part_2 = "Ja jag kan inte ljuga, jag vill bara smeta senap över dina fötter och slicka av det som en varmkorv och allt det där.",
		accidental_call_2_part_3 = "Hej älskling.",
		accidental_call_2_part_4 = "Vänta..",
		accidental_call_2_part_5 = "Åh fan, förlåt.",

		accidental_call_3_part_1 = "Hallååå, hur är det bro?",
		accidental_call_3_part_2 = "Ja ja, jag har precis gjort den nya hip-hop-låten du bad om bro.",
		accidental_call_3_part_3 = "Ja den går ungefär såhär..",
		accidental_call_3_part_4 = "Jag vill älska dig baby, jag vill älska dig, jag vill älska dig, jag vill kyssa dig på fötterna, jag vil-",
		accidental_call_3_part_5 = "Wooooah, woah woah.. Jag menade.. du vet.. det var inte jag dock..",
		accidental_call_3_part_6 = "Okej, fel nummer, min dårebror, förlåt..",

		accidental_call_4_part_1 = "Hallå bror, när kommer du över till mitt ställe och spelar My Little Pony med mig?",
		accidental_call_4_part_2 = "Det var ju alldeles för länge sen och du vet att jag gillar den glittrande och-",
		accidental_call_4_part_3 = "Okej.. du har ringt fel nummer, min dårebror, min fel.. du hörde inte det där va?",
		accidental_call_4_part_4 = "För om du gjorde det, så är du död, fattar du vad jag menar?",

		accidental_call_5_part_1 = "Mamma, jag är lite rädd just nu..",
		accidental_call_5_part_2 = "Ja, det var några killar utanför min dörr och jag vet inte vad jag ska göra mamma.",
		accidental_call_5_part_3 = "Jag är lite rädd, för jag tror att jag är i djupet du vet..",
		accidental_call_5_part_4 = "Mamma.. oh, ohh.. oh, hej! Vad säger du broder?",
		accidental_call_5_part_5 = "Ja, nej, gillar du mina skådespelartalanger och så?",
		accidental_call_5_part_6 = "Lita på mig dock, men spela aldrig in det samtalet igen broder, annars är du död.",
		accidental_call_5_part_7 = "Du vet vad jag menar? Jag kommer dit och jag kommer att skära dig på ett annat sätt broder.",
		accidental_call_5_part_8 = "Du förstår vad jag menar, bro?",
		accidental_call_5_part_9 = "Lita på mig angående det, dra åt helvete bro.",

		accidental_call_6_part_1 = "Yo yo lilla bro, kom hit yeah.",
		accidental_call_6_part_2 = "Din pappa är i telefonen bro, din pappa är i telefonen.",
		accidental_call_6_part_3 = "Jag vet att du inte sett honom bro, ta det där, ta det där, ta det där bro, ta det där, ta det där.",
		accidental_call_6_part_4 = "Hallå? Är det pappa?",
		accidental_call_6_part_5 = "Pappa?!",
		accidental_call_6_part_6 = ".. vänta nej det är inte pappa, det är någon annan! Nej! Varför-",
		accidental_call_6_part_7 = "Du är en idiot, jag kan inte tro att du gick på det där bro!",
		accidental_call_6_part_8 = "Åh herregud..",

		maxed_out_runs_part_1 = "Bro, jag vet att du gillar bröd men du behöver låta några andra i teamet få något.",
		maxed_out_runs_part_2 = "Sluta springa denna ruta bro.",
		maxed_out_runs_part_3 = "Gå prata med några av de andra vid Trash HQ eller nåt man.",

		mission_completed_1_part_1 = "Yoo wag1 bro, ay jag kan inte ljuga det var bra gjort, jag visste att jag kunde lita på dig bro.",
		mission_completed_1_part_2 = "Om du någonsin behöver tjäna lite mer cash, du vet var du kan hitta mig.",
		mission_completed_1_part_3 = "Jag kommer att ha gott om förråd snart, oroa dig inte för det.",

		mission_completed_2_part_1 = "Yo, vad säger du bro?",
		mission_completed_2_part_2 = "Jag kan inte ljuga, det jobbet var verkligen bra.",
		mission_completed_2_part_3 = "Ja, lita på mig, klienterna älskar dig just nu och jag älskar dig också, för vet du varför?",
		mission_completed_2_part_4 = "Du har gett mig pengar; Du har också fått pengar.",
		mission_completed_2_part_5 = "Ta det där, kom tillbaka senare dock, för jag behöver dig igen min kille.",

		mission_completed_3_part_1 = "Hej vad säger du bro.",
		mission_completed_3_part_2 = "Ay, jag kan inte ljuga, det där föremålet bakom dig var underbart bro.",
		mission_completed_3_part_3 = "Du kunde inte ha gjort det bättre bro.",
		mission_completed_3_part_4 = "Sista killen skruvade upp det, så jag är glad att jag har dig.",
		mission_completed_3_part_5 = "Kom tillbaka senare bro, lita på mig, jag har mer grejer för dig bro.",

		mission_completed_4_part_1 = "Yoooo, du kan sälja bra eller hur?",
		mission_completed_4_part_2 = "Du kanske måste vara en företagsman här ute bro, lita på mig dock.",
		mission_completed_4_part_3 = "Sättet du sålde det till dem var galet bro.",
		mission_completed_4_part_4 = "Ja ja, oy, tack för det dock.",
		mission_completed_4_part_5 = "Jag uppskattar dig på ett annat sätt, kom tillbaka senare så får du pillerna bro.",
		mission_completed_4_part_6 = "Jag har mer, ja ja, lita på mig dock.",

		mission_completed_5_part_1 = "Vad gör du här bro?",
		mission_completed_5_part_2 = "Åh, det är du! Yo, hur är det bro?",
		mission_completed_5_part_3 = "Ja, ey, tack för det- tack för det dock.",
		mission_completed_5_part_4 = "'för du välsignade mig rejält med det! Jag har massor av pengar nu, jag ska köpa mig en fräsch ny EDM-bil du förstår vad jag menar bro?",
		mission_completed_5_part_5 = "Dinka Blista, allt det där. Men kom tillbaka senare ändå, ärligt talat.",
		mission_completed_5_part_6 = "För jag har mer skit till dig bro.",

		mission_completed_6_part_1 = "Du borde ha sett Gogginschmiels ansikte tidigare bro.",
		mission_completed_6_part_2 = "Han såg ut som en idiot, jag kan inte ljuga.",
		mission_completed_6_part_3 = "Visste du inte att han var bakom dig?!",
		mission_completed_6_part_4 = "Han var svår, men bra jobbat ändå.",
		mission_completed_6_part_5 = "Jag kan inte ljuga, du är för bra på detta bro.",
		mission_completed_6_part_6 = "Kom tillbaka senare, jag har fler uppdrag åt dig bro.",

		mission_completed_7_part_1 = "Vad säger du bro?",
		mission_completed_7_part_2 = "Ay, jag kan inte ljuga, den där bilen bakom.. UNDERBAR bro.",
		mission_completed_7_part_3 = "Du kunde inte ha gjort det bättre bro.",
		mission_completed_7_part_4 = "Sista mannen fuckade upp, så jag är glad att jag har dig.",
		mission_completed_7_part_5 = "Kom tillbaka senare, bro, lita på mig, jag har mer skit åt dig, bro.",

		mission_completed_8_part_1 = "Hej, det här är bossen jag pratade om, bro. Ja, lita på mig, han är så sjuk, bro.",
		mission_completed_8_part_2 = "Den här killen är för sjuk.",
		mission_completed_8_part_3 = "Han levererar varje gång, i tid.",
		mission_completed_8_part_4 = "Kunderna älskar den här killen.",
		mission_completed_8_part_5 = "Lita på mig, han gör karriär, men du kommer aldrig att slå mig, dock.",
		mission_completed_8_part_6 = "'för att du måste vara en jävla idiot, du förstår vad jag menar?'",
		mission_completed_8_part_7 = "Men kärlek dock, kom tillbaka senare så har jag fler piller till dig bro.",

		mission_failed_1_part_1 = "Ja bro, jag kan inte ljuga för dig. Klienten ringde mig och sa att du inte ens levererade det till min man.",
		mission_failed_1_part_2 = "Vad händer bro?",
		mission_failed_1_part_3 = "Du har verkligen skitit i det här.",
		mission_failed_1_part_4 = "Gå härifrån bro.",
		mission_failed_1_part_5 = "Om jag ser dig igen, så är det över för dig.",

		mission_failed_2_part_1 = "Ja, vi har ett stort problem just nu.",
		mission_failed_2_part_2 = "Jag kan inte ljuga, du var för sent på plats, vad händer?",
		mission_failed_2_part_3 = "Javisst, mina kunder är upprörda!",
		mission_failed_2_part_4 = "Äh, spara din energi, försök inte ens hämta något av mig igen.",
		mission_failed_2_part_5 = "Helvete, du är klar, broder.",

		mission_failed_3_part_1 = "Ja, ja, ja, ja, hej, hej...",
		mission_failed_3_part_2 = "Jag kan inte ljuga, dock.",
		mission_failed_3_part_3 = "Du är den första jag någonsin kommer att säga detta till.",
		mission_failed_3_part_4 = "Du är en skithuvud.",
		mission_failed_3_part_5 = "Visste du det? Ja? Du är en skithuvud.",
		mission_failed_3_part_6 = "Vet du varför?",
		mission_failed_3_part_7 = "För att du inte ens levererade min skit, bro.",
		mission_failed_3_part_8 = "Skit i att komma tillbaka till min plats igen, bro.",
		mission_failed_3_part_9 = "Det är synbart för dig, jag svär på Gud, bro.",
		mission_failed_3_part_10 = "Jag har bilarna på och jag har vapnen redo.",
		mission_failed_3_part_11 = "Du har ingen chans, bro.",
		mission_failed_3_part_12 = "Ja, det är det.. dra åt helvete bro.",

		mission_failed_4_part_1 = "Tjena, vad säger du bro?",
		mission_failed_4_part_2 = "Ba' en snabb grej nu.",
		mission_failed_4_part_3 = "Om du någonsin närmar dig mig igen så är du död.",
		mission_failed_4_part_4 = "Ja, vet du varför?",
		mission_failed_4_part_5 = "'För att du är dålig bro, du misslyckas hela tiden med mina uppdrag bro.",
		mission_failed_4_part_6 = "Vad är det som händer med det?",
		mission_failed_4_part_7 = "Kunderna är arga, de kommer till mig och säger att jag är idioten bro.",
		mission_failed_4_part_8 = "Jag kan inte tro att jag gick till dig.",
		mission_failed_4_part_9 = "Jag trodde du var min kille eller något, bro",
		mission_failed_4_part_10 = "Men nej, du är bara en idiot, så dra åt helvete, bro.",
		mission_failed_4_part_11 = "Försvinn ur min synvinkel, bro.",

		mission_failed_5_part_1 = "Ja, du klarade inte den förra uppdraget så bra..",
		mission_failed_5_part_2 = "Jag kan inte ljuga bro, du fucka upp stort.",
		mission_failed_5_part_3 = "Så kom aldrig till min plats igen!",
		mission_failed_5_part_4 = "'För jag svär vid min mamma, jag kommer att slå dig, bro.",

		mission_failed_6_part_1 = "Yo, vad säger du mannen?",
		mission_failed_6_part_2 = "Ey, om du någonsin kommer till min plats igen mannen.",
		mission_failed_6_part_3 = "Jag ska ta fram rambo och låta den härja på ditt huvud mannen!",
		mission_failed_6_part_4 = "Jag svär vid Gud! Du fuckade upp mig mannen!",
		mission_failed_6_part_5 = "Kunderna ringer mig och berättar hur JÄVLA UPPRÖRDA de är just nu.",
		mission_failed_6_part_6 = "Det är ditt fel mannen, det är allt ditt fel..",

		mission_failed_7_part_1 = "Kom inte till min plats mannen, dra åt helvete mann.",

		mission_failed_8_part_1 = "Ey broder, dra tills du har rensat mina grejer.",

		mission_failed_9_part_1 = "Ey broder, dra tills du har rensat min grej.",
		mission_failed_9_part_2 = "Nej broder, kom aldrig tillbaka till mig tills mina saker är gjorda.",
		mission_failed_9_part_3 = "Du har riktigt klantat till det, försvinn härifrån broder.",

		mission_failed_10_part_1 = "Yo broder, du borde be för att du kommer hem ikväll broder.",
		mission_failed_10_part_2 = "För jag är på väg efter dig broder.",
		mission_failed_10_part_3 = "Yo broder, misslyckas aldrig med mig igen broder, jag svär på gud broder.",

		no_pills_1_part_1 = "Hej, vad händer bror.. Det är lite knepigt.",
		no_pills_1_part_2 = "Jag har ingenting just nu.",
		no_pills_1_part_3 = "Så, vad jag ska säga är..",
		no_pills_1_part_4 = "Stick härifrån, kom tillbaka en annan gång bror.",

		no_pills_2_part_1 = "Ja, vad säger du bror. Det är lite skitigt just nu..",
		no_pills_2_part_2 = "Jag har inget nu. Har inga piller bror!",
		no_pills_2_part_3 = "Ja, de skruvade mig! Jag har inget bror!",
		no_pills_2_part_4 = "Ay, jag ringde till de här killarna och sa.. Yo vad är läget, var är pillren?..",
		no_pills_2_part_5 = "Min kille sa att de inte ens finns här bro.",
		no_pills_2_part_6 = "De här killarna är på något Liberty City-grej eller något liknande bro..",
		no_pills_2_part_7 = "De tar för lång tid bro.",
		no_pills_2_part_8 = "Men lita på mig, när jag får mer, ska jag definitivt höra av mig till dig bro.",

		no_pills_3_part_1 = "Yo, vad säger du min kille?",
		no_pills_3_part_2 = "Vi har inga piller just nu bro, så varför kolla bort bro?",
		no_pills_3_part_3 = "Innan jag börjar bli arg, förstår du vad jag menar?",

		no_pills_4_part_1 = "Hej, vad händer broder? Inga piller just nu, så stick iväg.. stick iväg broder..",
		no_pills_4_part_2 = ".. stick iväg, du är klar broder, dra åt helvete broder.",
		no_pills_4_part_3 = "Stick härifrån broder, du är klar.",

		no_pills_5_part_1 = "Heeeeej min man!",
		no_pills_5_part_2 = "Hur går det broder? Jag kan inte ljuga, vi har inget just nu.",
		no_pills_5_part_3 = "Så det är lite svårt för dig just nu.",
		no_pills_5_part_4 = "Men kom tillbaka om en liten stund och jag fixar åt dig.",
		no_pills_5_part_5 = "Kärlek, bro.",

		no_pills_6_part_1 = "Bro... Jag sa till 2 personer innan dig att jag inte har något just nu..",
		no_pills_6_part_2 = "Så varför lyssnar du inte på dina små pojkar och går och knullar er själva som en kollektiv, min man.",
		no_pills_6_part_3 = "Du vet vad jag menar? Det är slut för dig här, fan ta dig bro.",

		no_pills_7_part_1 = "Ja, jag är den STORA grejen runt här, du vet vad jag menar?",
		no_pills_7_part_2 = "Men den stora grejen har inga stora piller just nu...så i princip måste din lilla grej dra åt helvete.",
		no_pills_7_part_3 = "Du vet vad jag menar, eller hur?",

		no_pills_8_part_1 = "Yo, yo, vad säger du?",
		no_pills_8_part_2 = "Ay, ay, ay, jag måste hålla mig gömd, bro.",
		no_pills_8_part_3 = "Jo, det var några poliser som kom hit tidigare. Jag kan inte ljuga.",
		no_pills_8_part_4 = "Vi har inga piller just nu, förstår du vad jag menar.",
		no_pills_8_part_5 = "Det är inte lämpligt för mig just nu. Kom tillbaka senare när det har lugnat ner sig, bro.",

		no_pills_9_part_1 = "Jo, jag kan inte ljuga. Några dårar kom och rånade mig.",
		no_pills_9_part_2 = "Men oroa dig inte, jag har ottarna på dem just nu.",
		no_pills_9_part_3 = "Så när vi har pillrena, kom tillbaka definitivt och jag borgenär dig, jag har dig bro.",

		no_pills_10_part_1 = "Hej, vad säger du bro?",
		no_pills_10_part_2 = "Jo, just nu är det någon jävla liga uppe i norr eller något bro.",
		no_pills_10_part_3 = "De rånade den där saken, så vi ska gå dit tillsammans, få tillbaka det och sedan borgenär vi dig bro.",
		no_pills_10_part_4 = "Tack för det.",

		no_pills_11_part_1 = "Hej, vad säger du? Jo, det är inget just nu bro... det är inget just nu.",
		no_pills_11_part_2 = "Det är lite peak för dig just nu. Det finns ingenting just nu.",
		no_pills_11_part_3 = "Men i grund och botten ska jag säga detta till dig, precis som jag säger till alla andra..",
		no_pills_11_part_4 = "Varför går du inte och drar åt helvete, och kom tillbaka senare. Kärlek.",

		no_pills_12_part_1 = "Nej, jag har ingenting på mig just nu, broder.",
		no_pills_12_part_2 = "Kom tillbaka senare, människa, kom tillbaka senare..",

		no_pills_13_part_1 = "Broder! Dra åt helvete, jag har inget på mig, broder!",
		no_pills_13_part_2 = "Jag har inget på mig, broder! Hey, var tyst, broder!",

		no_pills_14_part_1 = "Lyssna broder, jag har inga piller just nu.",
		no_pills_14_part_2 = "Så om du försöker få tag på att chinga broder, så kom på mig en gång till, jag ber dig bro.",

		no_pills_15_part_1 = "Nej, lyssna på mig bro... du pissar mig av nu.",
		no_pills_15_part_2 = "Jag kan inte ljuga för dig om det.",
		no_pills_15_part_3 = "Så jag kommer faktiskt att börja chinga dig om du inte drar åt helvete bro.",

		not_leaving_1_muffled_part_1 = "Okej, varför står bro fortfarande postad?",
		not_leaving_1_muffled_part_2 = "Är han en polis?",
		not_leaving_1_muffled_part_3 = "Ey, kolla om han är en snut bro, kolla om han är en snut bro.",

		not_leaving_2_part_1 = "Ey dra åt helvete bro, försvinn härifrån bro.",

		not_leaving_3_part_1 = "Bro, kan du sluta vara här just nu..",
		not_leaving_3_part_2 = "Jag försöker göra nåt. Du fattar vad jag menar.",
		not_leaving_3_part_3 = "Jag försöker kyssa min tjej bro, och du står här och stirrar på mig som nån idiot bro.",
		not_leaving_3_part_4 = "Försvinn bro.",

		not_leaving_4_part_1 = "Ey snälla bro, försvinn härifrån bro.",
		not_leaving_4_part_2 = "Åh jag svär på Gud broder.",

		not_leaving_5_part_1 = "Broder, du tar urinprov nu, jag kan inte ljuga..",
		not_leaving_5_part_2 = "Jag kommer faktiskt att komma dit och blöta ner dig min kille.",
		not_leaving_5_part_3 = "Du bättre dra åt helvete snabbt broder.",

		not_leaving_6_part_1 = "Broder.. jag är den stora bossen här broder.",
		not_leaving_6_part_2 = "Sluta agera som att du äger stället och dra åt helvete och gör min sak broder.",

		not_leaving_7_part_1 = "Hej jag svär på Gud, gör du detta igen ska jag ringa backup-dansarna broder.",
		not_leaving_7_part_2 = "De ska göra något annorlunda med dig broder.",

		not_leaving_8_muffled_part_1 = "Okej, blöta ner honom broder, blöta ner honom.. han tar för lång tid.",

		not_leaving_9_part_1 = "Broo, tvinga mig inte att ta fram den stora kniven broder.",
		not_leaving_9_part_2 = "Jag ber dig sluta trampa på MIN gata där broder.",
		not_leaving_9_part_3 = "Du bättre backa från din stil och göra din grej just nu, du tar för lång tid broder.",
		not_leaving_9_part_4 = "Du är i MITT hus och MIN lägenhet, tror du att du är någon stor kille broder.",
		not_leaving_9_part_5 = "Vänta bara, jag ska FÖRSTÖRA dig.",

		not_leaving_10_muffled_part_1 = "Ja, den här killen blir gasad i hörnet som om han äger min gata eller nåt bro.",

		not_leaving_11_part_1 = "Flytta på dig, kom igen bro...",
		not_leaving_11_part_2 = "Du är färdig här bro.",

		not_leaving_12_muffled_part_1 = "Ja, det är en svår situation för den här killen.",
		not_leaving_12_muffled_part_2 = "Han tar för lång tid bro, åh dra åt helvete bro!",
		not_leaving_12_muffled_part_3 = "Jag kan se dig just nu, dra åt helvete bro!",

		not_leaving_13_muffled_part_1 = "Mannen! Den här killen tar alldeles för lång tid på något..",
		not_leaving_13_muffled_part_2 = "Han är en idiot.. han måste vara en idiot eller något sådant bro..",
		not_leaving_13_muffled_part_3 = "Han är definitivt en idiot.",

		start_1_part_1 = "Hej broder, broo.. kom hit, kom hit..",
		start_1_part_2 = "Tjena, du försöker sälja mer oxy, bro?",
		start_1_part_3 = "Ayy, tack för det, tack för det..",
		start_1_part_4 = "Du vet vad du ska göra, eller hur?",
		start_1_part_5 = "Jag ska skicka dig positionen nu.",
		start_1_part_6 = "Kärlek dock.",

		start_2_part_1 = "Ay, vad händer bro! Kom hit riktigt snabbt min kille!",
		start_2_part_2 = "Jajamen.. Ska du köra oxy igen bro?",
		start_2_part_3 = "Kärlek för det brooo.",
		start_2_part_4 = "Du vet vad du ska göra ändå, självklart gör du det bro.",

		start_3_part_1 = "Ay.. ay bro, kom hit bro, kom hit bro.",
		start_3_part_2 = "Ska du köra lite oxy igen bro?",
		start_3_part_3 = "Eller hur? Kom.. kom.. du är inte en polis va?",
		start_3_part_4 = "Ok.. ok.. Kärlek dock, ay, ay, du vet vad du ska göra ändå, jag ska skicka dig ping och allt det där bro.",

		start_4_part_1 = "Ay! Är du den idioten från förra gången?!",
		start_4_part_2 = "Oi, kom hit bro! Du gjorde ett bra jobb förra gången, jag kan inte ljuga om det..",
		start_4_part_3 = "Så i princip ja.. gör det igen bro, du vet vad du ska göra, jag ska skicka pinget min kille.",
		start_4_part_4 = "Tack för det.",

		start_5_part_1 = "Ay kom hit du lilla idiot bro!",
		start_5_part_2 = "Ja, ja, ja.. jag vet- jag visste vem du var bro..",
		start_5_part_3 = "Säg det inte till mig, jag bryr mig inte vem du är bro.. men jag vet vem du är.",
		start_5_part_4 = "Men egentligen vad jag vill att du gör är att köra oxy pillerna igen.",
		start_5_part_5 = "Du vet grejorna från förra gången va? Du vet vad som gäller va?",
		start_5_part_6 = "Jag skickar det till dig på telefonen, bro. Tack på förhand.",

		start_6_part_1 = "Tjena, är det min kille där borta! Vad säger du bro!",
		start_6_part_2 = "Ayy, vad händer bro.. min kille.",
		start_6_part_3 = "Alltså, behöver faktiskt din hjälp igen för en liten grej..",
		start_6_part_4 = "Ja ja, du vet - du vet vad jag pratar om, du vet vad jag pratar om..",
		start_6_part_5 = "Oxy, ja ja, självklart gör du det. Äh, i princip kommer jag att skicka grejen på telefonen.",
		start_6_part_6 = "Du gör vad du måste göra storasyster, kärlek för det.",

		start_7_part_1 = "Ja, ja, ja, ja, ja, det är - hej, det är den där idioten från tidigare bro!",
		start_7_part_2 = "Jag minns den här killen! Ja, ay, du är en rolig kille bro, jag gillar dig, jag gillar dig...",
		start_7_part_3 = "Oi, jag behöver att du fixar oxy till mig igen, jag kan inte ljuga. Så skynda på det, stora man.",
		start_7_part_4 = "Jag skickar pinget till dig, jag skickar detaljerna.. Ja, ja..",
		start_7_part_5 = "Och kom ihåg..",
		start_7_part_6 = "Hälften av det är mitt, så ta inte något av det annars jag lovar jag ska attackera dig här, ok.",

		start_8_look_to_sides_part_1 = "Hej bro, jag svär att jag såg Gogginschmiel gå förbi där bro..",
		start_8_look_to_sides_part_2 = "Hej kom hit, kom hit, kom hit bro, sluta försöka lura bro.",
		start_8_look_to_sides_part_3 = "Yo, yo.. Vad jag behöver att du gör för mig just nu är att hämta pillerna åt mig.",
		start_8_look_to_sides_part_4 = "Jag behöver att du springer med pillerna åt mig, okej boss man.",
		start_8_look_to_sides_part_5 = "Jag skickar detaljerna om brottet till dig, du vet hur det går till.",
		start_8_look_to_sides_part_6 = "Men håll dig låg, för jag har sett massor av poliser som åker förbi där, okej?",
		start_8_look_to_sides_part_7 = "Men om du blir fast! Så snitcha inte på mig, för då är du död bror!",
		start_8_look_to_sides_part_8 = "Förstår du vad jag säger? Tack för det.",

		start_9_look_to_sides_part_1 = "Yo jag kan inte ljuga, jag såg precis en polis åka förbi där bror!",
		start_9_look_to_sides_part_2 = "Är du säker på att du inte blev följd eller något sånt?",
		start_9_look_to_sides_part_3 = "För jag kan inte ljuga, FIB håller på med något nästa nivå grejer just nu.",
		start_9_look_to_sides_part_4 = "De har massor av helikoptrar i luften och sånt, bro.",
		start_9_look_to_sides_part_5 = "Jag ser allt och vet allt, bro. Lita på mig på det.",
		start_9_look_to_sides_part_6 = "Jo jo.. han var helt på dig tidigare, bro, kommer du ihåg.. du kommer ihåg den Charger du åkte förbi, bro?",
		start_9_look_to_sides_part_7 = "Men han slog inte på ljusen? Lita på mig ändå..",
		start_9_look_to_sides_part_8 = "Ja, jag vet det, jag vet det.",

		start_burger_shot_part_1 = "Yo, jag såg dig på Burger Shot en gång.. steker du burgare eller hur?",
		start_burger_shot_part_2 = "Ja, jag kan inte ljuga, du behöver pengarna.",

		start_cop_1_part_1 = "Yo, jag kan lukta en snut från Maze Bank, bro..",
		start_cop_1_part_2 = "Jag kan säga att du är en snut.",
		start_cop_1_part_3 = "Du borde ringa backup innan jag börjar skjuta ditt lilla pojkbil, bro.",

		start_cop_2_part_1 = "Hej officer, vi hjälper bara de sjuka i Blaine County.",
		start_cop_2_part_2 = "Inget olagligt här bro.",

		start_gang_member_part_1 = "Jag svär att jag såg dig bli skjuten av den där klanen..",
		start_gang_member_part_2 = "Ja, ja, du fick verkligen ta stryk, jag kan se det på den där feta ansiktsmålningen.",

		start_group_part_1 = "Yo, jag hörde att ni boys vill ta lite oxy åt mig.",
		start_group_part_2 = "Jag kan inte ljuga, ju fler desto bättre just nu, men jag kan bara ge pillerna till en av er mandem.",
		start_group_part_3 = "Så se till att du tar det snällt, gå med ditt lilla gäng eller vad som helst och gör det här klart broder.",
		start_group_part_4 = "För tiden är pengar just nu broder, du förstår vad jag menar.",
		start_group_part_5 = "Du tar för lång tid och står här broder, skynda dig man, dra åt helvete broder.",

		start_knife_part_1 = "Ookayy, det där är en stor Rambo på din midja min broder!",
		start_knife_part_2 = "Broder bättre inte svinga det där omkring här, för det kommer att bli dåligt för dig min bror!",

		start_last_fail_part_1 = "Yooo, är det min kille från där borta? Vad säger du broder? Ay, hur är det och allt det där, min kille!",
		start_last_fail_part_2 = "Tja, egentligen ... Jag kan inte ljuga, jag behöver dig igen för en liten uppdrag.",
		start_last_fail_part_3 = "Ja ja ... du vet vad jag menar, du vet vad jag menar, oxy, ja, självklart vet du det.",
		start_last_fail_part_4 = "Tja, jag kommer skicka dig det på telefonen.",
		start_last_fail_part_5 = "Gör vad du behöver göra, storasyster / storebror, tack för det.",

		start_legendary_tier_part_1 = "Åh, så du spenderar pengar så där?",
		start_legendary_tier_part_2 = "Legendarisk nivå, okej, ser ut som att du kanske måste köpa hela våningen för EDM, min bror!",
		start_legendary_tier_part_3 = "Kom igen.",

		start_mechanic_part_1 = "Hej, reparerar du bilar?",
		start_mechanic_part_2 = "Yo, efter det här behöver jag att du finslipar min Asbo, för den har för många bucklor, bror.",

		start_mercedes_part_1 = "Yo, älskar den Mercedes du har bror!",
		start_mercedes_part_2 = "Jag kan inte ljuga, jag kommer att behöva köpa den av dig när du är klar med detta här lite saker bror.",

		start_no_gun_part_1 = "Kommer hit på ett vänligt besök som om du inte skulle bli rånad.",
		start_no_gun_part_2 = "Du har tur att de ooters inte är här just nu men..",
		start_no_gun_part_3 = "Var beredd nästa gång.",

		start_on_timer_1_part_1 = "Jag kan inte ljuga för dig bro, du misslyckades med den förra så vad gör du här bro?",
		start_on_timer_1_part_2 = "Nej bro, kom tillbaka senare när du bestämmer dig för att skärpa till dig din DJÄVEL.",

		start_on_timer_2_part_1 = "Nej bro, du misslyckades med mig senast bro..",
		start_on_timer_2_part_2 = "Gå och gör något annat min man.",

		start_on_timer_3_part_1 = "Verkligen? Tror du att du kan komma hit efter att ha fuckat upp så där bro?",
		start_on_timer_3_part_2 = "Du borde dra innan jag ringer på grabbarna på dig!",

		start_on_timer_4_part_1 = "Jag kan inte ljuga, förra gången du sket i det härdade du dig verkligen..",
		start_on_timer_4_part_2 = "Jag kan inte ljuga, det kommer att se väldigt dåligt ut om du stannar här i ungefär 2 sekunder till min vän..",

		start_on_timer_5_part_1 = "Tjena, vad händer?",
		start_on_timer_5_part_2 = "Jag kan inte ljuga, du sket i det stort förra gången och fick inte ens med dig pillren min vän...",
		start_on_timer_5_part_3 = "Du misslyckades rejält min vän..",
		start_on_timer_5_part_4 = "Kom aldrig ner hit igen kompis! Du fattar vad jag menar?",
		start_on_timer_5_part_5 = "Jag vet ditt namn, jag har sett ditt ansikte. Du är färdig här nere kompis.",

		start_on_timer_6_part_1 = "Ja, den här killen tror att han är tuff eller något? Han fuckade upp och kommer tillbaka till mig och låtsas vara ledsen...",
		start_on_timer_6_part_2 = "Nej kompis, det funkar inte så här omkring här nere.",
		start_on_timer_6_part_3 = "Du borde sticka nu min kille!",

		start_on_timer_7_part_1 = "Ja jag kan inte ljuga, den här killen FUCKADE upp..",
		start_on_timer_7_part_2 = "Ser du den här killen? Ser du den här idioten här, ja?",
		start_on_timer_7_part_3 = "Han har jävats bro, kom hit bro!",
		start_on_timer_7_part_4 = "Ja, jag kan inte ljuga, du är en idiot, kom tillbaka senare man.",

		start_on_timer_8_part_1 = "Ja, du är någon sorts kille bro..",
		start_on_timer_8_part_2 = "Den här killen går runt MIN grej bro.. stör MIN grej bro.. irriterar MINA människor bro.",
		start_on_timer_8_part_3 = "Sedan kommer han tillbaka och förväntar sig en påfyllning, förvänta dig att bli BETALD bro!",
		start_on_timer_8_part_4 = "Räkna med att få bröd bro.. du kommer inte att få något bröd bro..",
		start_on_timer_8_part_5 = "Du får smulor bro.. kom KNUFFA av min blocket bro!",
		start_on_timer_8_part_6 = "Kom ut härifrån bro, du är klar och allt därtill.",
		start_on_timer_8_part_7 = "Telefonen bara pingade också bro, du är klar bro! Jag har någon annan som fixar det bro.",

		start_over_31d_part_1 = "Alltså jag kan inte ljuga bro! Du har varit här för länge..",
		start_over_31d_part_2 = "Jag ber dig röra något snabbt och komma tillbaka, bro.",

		start_over_100k_part_1 = "Varför säljer du skräpmat när du redan har över 100 påsar med pengar?",
		start_over_100k_part_2 = "Det är inte kontanter visserligen? För isåfall kommer jag definitivt skicka ooters för att råna dig bro.",

		start_revving_part_1 = "Du, om du fortsätter att gasa den där skiten av en bil bro, så kommer vi få problem.",
		start_revving_part_2 = "Släpp pedalen innan jag släpper dig bro!",

		start_staff_1_part_1 = "Ey, borde du inte typ banlysa besserwissrar och göra andra nödvändiga saker istället för att prata med mig?",
		start_staff_1_part_2 = "Fan, jag behöver brödet men jag kollar på er admins.",

		start_staff_2_part_1 = "Du är den andra moderatorn som kör med syre idag..",
		start_staff_2_part_2 = "Ni borde vara på jobb, inte på det här jobbet dock.",

		start_streamer_part_1 = "Yo, det där är typ den där killen som tror att han är en stor streamer!",
		start_streamer_part_2 = "Yo Ls i chatten, fan den här killen!",

		start_stressed_part_1 = "Bro! Varför skakar dina händer?!",
		start_stressed_part_2 = "Ta en rökpaus eller något bro, för du är för stressad just nu.",

		start_subaru_part_1 = "Ey, den där Subarun bättre vara bra off-road g!",
		start_subaru_part_2 = "'för den här stigen jag kommer ta med dig är annorlunda!",

		start_under_10k_part_1 = "Bro, jag vet att du har mindre än 10k på ditt konto!",
		start_under_10k_part_2 = "Så varför tar du inte ditt fattiga röv och de här pillerna till platsen... snabbt min bror.",

		start_under_24h_part_1 = "Du är ett odjur bro! Fortsätt så.",

		start_zombie_pills_part_1 = "Okej, så du tog Z-piller och nu vill du ta Oxy-piller...",
		start_zombie_pills_part_2 = "Nä du är definitivt en knarkare!",

		still_pressing_e_1_part_1 = "Okej bror, varför gör du dig till måltavla bror?",
		still_pressing_e_1_part_2 = "Sluta komma tillbaka till platsen, bror. Jag skickade dig pinget, kolla din telefon min kille.",
		still_pressing_e_1_part_3 = "Ja ja, kolla på det, kolla på det..",

		still_pressing_e_2_part_1 = "Bror, är du- är du någon sorts dum kille eller något?",
		still_pressing_e_2_part_2 = "Bror, jag skickade dig just pinget, är du fan blind eller något, bror?",
		still_pressing_e_2_part_3 = "Kolla på telefonen bror, skärp dig bror!",

		still_pressing_e_3_part_1 = "Jag kan inte ljuga, om du gör det här en gång till mot mig, jag har sagt till dig för många gånger min kille..",
		still_pressing_e_3_part_2 = "Om du gör det där igen, ska jag definitivt skicka efter grabbarna efter dig bro.",

		still_pressing_e_4_part_1 = "Du driver med mig nu, försvinn bro!",

		still_pressing_e_5_part_1 = "Brooo, är du jävla dum eller?",
		still_pressing_e_5_part_2 = "Kommer tillbaka och pratar med mig på det sättet med din stora pojk-röst?",
		still_pressing_e_5_part_3 = "Du bättre backa nu, jag svär på Gud att jag kommer att göra dig illa bro!",

		still_pressing_e_6_muffled_part_1 = "Äy, den här killen är en idiot..",

		still_pressing_e_7_muffled_part_1 = "Äy, den här killen är verkligen en idiot, bror.",
		still_pressing_e_7_muffled_part_2 = "Han är definitivt en idiot, han fortsätter att komma tillbaka!",
		still_pressing_e_7_muffled_part_3 = "Han tror att jag kommer att bli argare, men jag blir inte argare, bror!",

		still_pressing_e_8_part_1 = "Äy, jag kan inte ljuga för dig, du börjar verkligen att irriteramig nu..",
		still_pressing_e_8_part_2 = "Så sluta trycka på E, bror.",

		still_pressing_e_9_part_1 = "Äy, jag kan inte ljuga, om du fortsätter att trycka på jävla E, bror.",
		still_pressing_e_9_part_2 = "Jag kommer meta och spränga dig i detta brorsan, dra åt helvete brorsan.",

		taking_too_long_1_part_1 = "Ey brorsan, du tar lite för lång tid min kille, du vet vad jag menar...",
		taking_too_long_1_part_2 = "Du bör snabba på grejen snabbt dock.",

		taking_too_long_2_part_1 = "Ey, om du fortsätter att ta så lång tid så kommer vi att ha stora problem för dig, du vet vad jag menar?",
		taking_too_long_2_part_2 = "Du är försenad brorsan, du är försenad just nu.. skynda på brorsan.",

		taking_too_long_3_part_1 = "Yoo brorsan, du tar alldeles för lång tid brorsan, försöker du stjäla mitt jobb eller något brorsan?",

		taking_too_long_5_part_1 = "Du tror väl inte att du är jättekul, eller hur? Tror du att det här är någon slags skämt, stora mannen?",
		taking_too_long_5_part_2 = "Kom, jag ber dig att komma till mig nu, bro. Se vad som händer med dig, bro.",

		taking_too_long_6_part_1 = "Du vågar väl inte jävlas med mig, bro... Jag vill ha min skit NU, fam.",
		taking_too_long_6_part_2 = "Skynda dig, bro.",

		taking_too_long_7_part_1 = "Bro, jag vet vilken bil du kör...",
		taking_too_long_7_part_2 = "Jag såg dig när du åkte, tro inte att du är säker.",

		taking_too_long_8_part_1 = "Okej, det är det sista nu ... detta är sista chansen min vän.",
		taking_too_long_8_part_2 = "Om det tar lång tid igen, kommer jag att ringa upp några gängmedlemmar och det kommer att bli klibbigt för dig min kille.",
		taking_too_long_8_part_3 = "Så du bättre skynda dig jävligt fort nu... klockan tickar min vän.",

		too_many_people_1_part_1 = "Hallå, jag kan inte ljuga, det är massor av människor runt omkring mig just nu min vän!",
		too_many_people_1_part_2 = "Varför är ni alla här? Försöker ni ta över området eller något min vän?",
		too_many_people_1_part_3 = "För jag svär vid Gud att jag har gängmedlemmar redo att döda någon här.",
		too_many_people_1_part_4 = "Du förstår vad jag menar, bro..",
		too_many_people_1_part_5 = "Gå tillbaka allihop, jag sa ALLIHOP, ja det innebär att du också, tusan dig bro!",

		too_many_people_2_part_1 = "Yo jag kan inte ljuga, det är för många människor just nu bro..",
		too_many_people_2_part_2 = "Du rör dig ganska misstänkt nu med alla dessa människor bredvid dig och allt det där, bro.",
		too_many_people_2_part_3 = "Du sa att det bara skulle vara 1 av dig runt dessa trakter, inte som 4 av er idioter, bro..",
		too_many_people_2_part_4 = "Jag bryr mig inte om du är i något slags gäng, bryr jag mig om det? Nej..",
		too_many_people_2_part_5 = "Backa nu du och dina människor innan det blir allvarligt, bror.",

		tutorial_1_part_1 = "Hej vad händer bror? Ska du köra något oxy åt mig, bror?",
		tutorial_1_part_2 = "Yo det är nice! Jag kan inte ljuga för dig just nu bror, jag har letat efter lite hjälp med allt detta bror.",
		tutorial_1_part_3 = "Lyssna här bror...",
		tutorial_1_part_4 = "Jag har en massa förfalskade recept skapade för mig uppe i norr, bror.",
		tutorial_1_part_5 = "Ja, men jag kan inte ljuga, jag behöver att du hämtar dessa saker för mig.",
		tutorial_1_part_6 = "Och sen behöver jag att du gör detta - Lyssna nu när jag pratar med dig!",
		tutorial_1_part_7 = "Ta dem till staden och lösa in dem!",
		tutorial_1_part_8 = "Ja, ja, du behöver lösa in dem.",
		tutorial_1_part_9 = "Jag skickar detaljerna till din telefon, så kolla din GPS och allt det där. Jag har din rygg.",
		tutorial_1_part_10 = "Men du får inte ta för lång tid, annars måste jag skicka skurkarna efter dig.",
		tutorial_1_part_11 = "Och lita på mig, det ser inte bra ut för dig där, jag kan inte ljuga om det.",
		tutorial_1_part_12 = "Ja, låt oss komma igång storasyster.. sluta prata med mig brorsan, sluta titta på mitt ansikte brorsan och skynda dig för fan brorsan.",

		tutorial_2_part_1 = "Hej vad är på gång brorsan? Vill du hjälpa mig med lite 'oxy'?",
		tutorial_2_part_2 = "Tjena, det är bra! Jag kan inte ljuga för dig just nu, jag har letat efter hjälp med allt det där brorsan.",
		tutorial_2_part_3 = "Tjena brorsan, jag har en massa förfalskade recept som tagits emot för mig uppe i norr här brorsan.",
		tutorial_2_part_4 = "Hey, vad jag behöver dig att göra är att springa ner och hämta dessa recept för mig bro-",
		tutorial_2_part_5 = "Ja, och sen lyssna här though- lyssna här though, ta ner dem till staden bro, och lösa in dem på apoteken.",
		tutorial_2_part_6 = "Yeah, yeah, yeah, yeah..",
		tutorial_2_part_7 = "Ja, jag kommer att skicka dig detaljerna på telefonen though, så kolla ditt GPS och allt det där bro, jag har dig bro.",
		tutorial_2_part_8 = "Men hördu.. du får inte ta för lång tid.. annars blir jag tvungen att skicka grabbarna efter dig bro.",
		tutorial_2_part_9 = "Och tro mig, det ser inte bra ut för dig just nu, jag kan inte ljuga om det.",
		tutorial_2_part_10 = "Ja, låt oss gå, broder. Sluta prata med mig, broder. Sluta titta på mitt ansikte, broder och skynda på, broder.",

		tutorial_3_part_1 = "Yo, vad är upp min bror? Vill du köra några oxy för mig just nu?",
		tutorial_3_part_2 = "Ja, ja, det är bra för mig då jag har letat efter hjälp på allt det där.",
		tutorial_3_part_3 = "Ja, ja, ja.. Jag har massor av förskrivna recept gjorda för mig här uppe i norr. Lita på mig på det.",
		tutorial_3_part_4 = "Men jag kan inte ljuga, jag behöver ATT DU hämtar mina recept, ja-",
		tutorial_3_part_5 = "Och sen i princip, tar du dem till staden och löser in dem på alla olika apotek och sånt, bro.",
		tutorial_3_part_6 = "Ja, jag fixar det åt dig, för vad jag ska göra nu är att...",
		tutorial_3_part_7 = "Ser du encron, bro? Jag skickar detaljerna om encron till dig, så kolla din GPS, min bror.",
		tutorial_3_part_8 = "Du får inte dröja för länge annars definitivt kommer få problem så skynda på, stora mannen.",
		tutorial_3_part_9 = "Ja, låt oss åka nu storasyster, sluta prata till mig brorsan, sluta kolla på mitt ansikte brorsan och skynda dig för fan brorsan.",
		tutorial_3_part_10 = "Kärlek brorsan, kärlek."
	},

	panel = {
		loading_title = "Laddar",
		error_title = "Något gick fel",

		was_banned = "Bannad",
		loading = "Laddar spelardata...",
		no_warnings = "Inga varningar",
		not_shown_warnings = "${count} fler visas inte",
		system_issuer = "Systemet",
		add_warning_title = "Lägg till varning",
		message_placeholder = "${playerName} gjorde en oopsie...",

		type_note = "Anteckning",
		type_warning = "Varning",
		type_strike = "Straff",
		type_system = "System",

		button_cancel = "Avbryt",
		button_add = "Lägg till",
		button_close = "Stäng",
		button_new = "Ny",

		invalid_server_id = "Ogiltigt server-ID.",

		failed_load_player = "Misslyckades att ladda spelarinformation. Har du angett ett giltigt server-ID?",
		failed_add_warning = "Misslyckades att lägga till varning.",

		get_info_no_permissions = "Spelare försökte hämta information om en annan spelare utan tillräckliga behörigheter.",

		user_indefinitely_banned_warning_no_reason = "Jag har oändligt bannlyst denna person utan en angiven anledning. Denna varning genererades automatiskt som ett resultat av bannlysningen.",
		user_indefinitely_banned_warning = "Jag har permanent bannlyst denna person med anledning av '${reason}'. Detta meddelande skapades automatiskt som ett resultat av bannlysningen.",
		user_temporarily_banned_warning_no_reason = "Jag har tillfälligt bannlyst denna person i ${displayTime} utan en specificerad anledning. Detta meddelande skapades automatiskt som ett resultat av bannlysningen.",
		user_temporarily_banned_warning = "Jag har tillfälligt bannlyst denna person med anledning av '${reason}' i ${displayTime}. Detta meddelande skapades automatiskt som ett resultat av bannlysningen."
	},

	panic = {
		press_panic_button = "Du har 5 sekunder på dig att trycka på din panikknapp (X).",
		panic_button_timeout = "Du tryckte inte på din panikknapp i tid.",

		panic_button_title = "[Dispens]",

		panic_button_unit = "10-14, ${unitId} ${lastName} ${label} nere.",
		panic_button_no_unit = "10-14, ${lastName} ${label} nere.",

		panic_blip = "10-14 ${lastName}",

		label_officer = "polis",
		label_paramedic = "ambulans"
	},

	paper_bags = {
		fill_bag = "[${SeatEjectKey}] Fyll Påse",
		no_bags = "Du har inga papperspåsar.",
		no_bag_items = "Du har inga föremål som du kan lägga i en papperspåse.",
		close_bag = "Stäng Väska",
		cancel_bag = "Avbryt",
		title = "Pappersväska",
		failed_fill = "Det gick inte att fylla pappersväskan.",
		filled_bag = "Pappersväskan fylldes lyckat."
	},

	parking_meters = {
		not_paid = "Inte Betald",
		insert_dollar = "[${InteractionKey}] Lägg till $${amount}",

		no_cash = "Du har inga pengar.",
		max_time = "Den här parkeringsautomaten är redan fylld till max.",
		failed_pay = "Det gick inte att betala parkeringsautomaten."
	},

	pawn_shops = {
		sell_items = "Sälj ${itemLabel}",
		press_to_sell_items = "[${InteractionKey}] Sälj ${itemLabel}",
		sold_items = "Sålde ${sellAmount}x ${itemLabel} för $${sellPrice}.",
		no_items_to_sell = "Du har inga ${itemLabel} att sälja.",
		daily_limit_reached = "Du har nått din dagliga gräns, försäljaren köper inte fler objekt.",
		illegal_pawn_shop_id = "Försöker skicka värden för en pantbank som inte finns.",
		used_pawn_shop_title = "Använd Pantbank",
		used_pawn_shop_details = "${consoleName} använde en pantbank och sålde ${sellAmount} `${itemLabel}` och fick $${sellPrice}."
	},

	ped_messages = {
		attempt_succeeded = "försökte ${attemptMessage} och lyckades",
		attempt_failed = "försökte ${attemptMessage} men misslyckades",
		dice_message = "kastade en tärning och fick ${diceNumber}",
		roll_message = "kastade en anpassad tärning med inställningarna ${rolls}d${max} och fick totalt ${totalValue}",
		citizen_card_message = "visade ett ID-kort (${characterId})",
		badge_message = "visade en bricka (${characterId})",
		license_message = "visade ett körkort (${characterId})",
		ped_message_logs_title = "Pedmeddelande",
		ped_message_logs_details = "${consoleName} skickade ett pedmeddelande med följande meddelande: `${pedMessage}`",
		attached_ped_message_logs_title = "Bifogat Pedmeddelande",
		attached_ped_message_logs_details = "${consoleName} bifogade ett budskap till peden med meddelandet: `${pedMessage}`",
		chat_ped_messages_enabled = "Pedmeddelanden kommer nu visas i chatten.",
		chat_ped_messages_disabled = "Pedmeddelanden kommer inte längre visas i chatten.",
		me_message_chat_title = "/me [${serverId}]",
		inspect_chat_title = "/undersök [${serverId}]",
		frisk_chat_title = "/genomsök [${serverId}]",
		do_message_chat_title = "/gör [${serverId}]",
		attempt_message_chat_title = "/försöker [${serverId}]",
		dice_message_chat_title = "/tärning [${serverId}]",
		roll_message_chat_title = "/slå [${serverId}]",
		description_message_chat_title = "/beskrivning [${serverId}]",
		message_too_long = "Meddelandet innehåller för många tecken eller rader!",
		card_command_wait = "Du har precis dragit ett kort, vänta lite innan du drar ett annat.",
		ped_message_timeout = "Var sakta, vänta lite innan du skickar ett annat meddelande."
	},

	ped_objects = {
		illegal_ped_object = "Försöker lägga till ett ped-objekt som inte finns i 'tillåtna' listan över ped-objekt.",
		illegal_ped_weapon_object = "Försöker lägga till ett ped-vapenobjekt som inte finns i vapenlistan."
	},

	ped_task = {
		network_id_invalid = "Ogiltigt nätverks-ID.",
		ped_not_found = "Ped med nätverks-ID: `${networkId}` hittades inte.",
		tracked_ped = "Spårad Ped",
		tracked_ped_is = "Ped (${entity}) är:"
	},

	ped_spawn = {
		ped_missing_model = "Saknar modellparameter.",
		ped_spawn_success = "Ped har skapats.",
		ped_failed_spawn = "Misslyckades med att skapa ped.",
		invalid_weapon = "Ogiltigt vapen.",
		ped_remove_success = "Avlägsnade alla spawande peds.",
		ped_failed_remove = "Misslyckades med att ta bort spawande peds.",
		ped_task_success = "Uppgiften '${task}' tilldelades peds och utfördes utan fel.",
		ped_failed_task = "Det gick inte att tilldela uppgiften '${task}' till skapade peds.",
		invalid_target = "Ogiltigt mål server-ID.",
		missing_task = "Saknad uppgiftsparameter.",
		invalid_task = "Ogiltig ped-uppgift '${task}'.",
		target_required = "Denna ped-uppgift kräver ett giltigt mål.",
		ped_emote_success = "Lyckades att få skapade peds att spela '${emote}' emote.",
		ped_failed_emote = "Det gick inte att få skapade peds att spela '${emote}' emote.",
		invalid_emote = "Ogiltig emote '${emote}'.",
		missing_emote = "Saknad emote-parameter.",

		emote_list = "Tillgängliga ped-emotes: ${list}.",
		task_list = "Tillgängliga ped-uppgifter: ${list}.",

		spawn_ped_missing_perms = "Försökte skapa en ped utan korrekta behörigheter.",
		remove_peds_missing_perms = "Försökte ta bort skapade peds utan korrekta behörigheter.",
		ped_assign_task_missing_perms = "Försökte tilldela en uppgift till skapade peds utan korrekta behörigheter."
	},

	ped_steal = {
		ped_steal_reset = "Spelarens ped har återställts.",
		ped_steal_success = "Ped-skinn har blivit framgångsrikt stulet.",
		ped_steal_failed = "Misslyckades med att stjäla ped-skinn.",
		ped_not_found = "Spelarens ped hittades inte.",
		invalid_server_id = "Ogiltigt server-id."
	},

	ped_takeover = {
		failed_reset = "Kunde inte växla tillbaka till ursprunglig karaktär.",
		failed_reset_not_exist = "Din ursprungliga karaktär existerar inte eller är inte i närheten.",
		failed_takeover = "Kunde inte ta över karaktär.",
		invalid_network_id = "Ogiltigt nätverks-id."
	},

	peds = {
		ped_robbing_injection = "Överdriven rån av karaktärer! (Undvek server-timeout, troligtvis använde de en injektor för att göra detta.)",
		robbed_ped_logs_title = "Rånade karaktärer",
		robbed_ped_logs_details = "${consoleName} rånade en karaktär och fick $${payout}."
	},

	pepper_spray = {
		press_to_pepper_spray = "Tryck på ~INPUT_ATTACK~ för att använda pepparsprayen.",
		using_pepper_spray = "Använder pepparspray."
	},

	phone = {
		app_settings = "Inställningar",
		app_contacts = "Kontakter",
		app_calls = "Telefon",
		app_messages = "Meddelanden"
	},

	phone_numbers = {
		no_phone_number_set = "Inget telefonnummer har angetts.",
		invalid_format = "Det angivna telefonnumret hade ogiltigt format.",
		invalid_length = "Det angivna telefonnumret hade ogiltig längd.",
		invalid_characters = "Det angivna telefonnumret innehöll ogiltiga tecken.",
		phone_number_changed_to = "Ditt telefonnummer har ändrats till `${phoneNumber}`.",
		phone_number_taken = "Telefonnumret ${phoneNumber} är upptaget.",
		database_error = "Ett fel uppstod i databasen.",
		no_packages = "Du har inga paket för detta.",
		api_error = "Vårt API har returnerat ett fel.",
		api_not_available = "Vårt API är inte tillgängligt.",
		phone_number_is_available = "Telefonnumret ${phoneNumber} är tillgängligt.",
		phone_number_is_not_available = "Telefonnumret ${phoneNumber} är inte tillgängligt."
	},

	pictures = {
		selfie_description = "Bild på ${firstName} ${lastName}."
	},

	player_control = {
		unable_to_drive_for_yourself = "Du kan inte ta över för dig själv.",
		drive_for_player_no_permissions = "Spelaren försökte köra för en annan spelare men hade inte tillstånd att göra det.",
		player_is_not_nearby = "Spelaren med server-id ${serverId} är inte i närheten.",
		player_is_not_the_drive_of_a_vehicle = "Spelaren med server-id ${serverId} är inte föraren av ett fordon.",
		press_to_stop_drive_for = "Tryck ~INPUT_FRONTEND_CANCEL~ för att sluta köra för spelaren."
	},

	player_scales = {
		reset_player_scale_for = "Återställ spelarskalan för ${consoleName}.",
		set_player_scale_to_for = "Sätter spelarskalen till `${scale}` för ${consoleName}.",
		reset_player_scale = "Återställer spelarskalen.",
		set_player_scale_to = "Sätter spelarskalen till `${scale}`.",
		set_player_scale_no_permission = "Spelaren hade inte tillåtelse att ändra en annan spelares skal.",
		player_is_already_set_to_scale = "${consoleName} har redan skal `${scale}`.",
		you_are_already_set_to_scale = "Du har redan skal `${scale}`.",
		player_is_not_scaled = "${consoleName} har inte något skal.",
		you_are_not_scaled = "Du är inte skalad."
	},

	player_stats = {
		hp = "HP",
		armor = "Armor",
		toggle_player_stats_no_permissions = "Spelare försökte aktivera spelarstatistik utan korrekt behörighet.",
		updated_render_range = "Uppdaterade renderingsområdet till ${renderRange}.",
		turned_player_stats_on = "Aktiverade spelarstatistik.",
		turned_player_stats_off = "Stängde av spelarstatistik."
	},

	players = {
		player_left = "Spelare lämnade [${serverId}]"
	},

	pole_dancing = {
		press_to_strip_dance = "Tryck på ~INPUT_CONTEXT~ för att Strip Dance.",
		this_pole_is_occupied = "Denna stång är upptagen.",
		stop_dancing = "Sluta dansa",
		change_dance = "Byt dans (${animationId})",

		no_model_name_set = "Inget modellnamn har angetts.",
		invalid_model = "Modellen '${modelName}' är ogiltig.",
		pole_dancing_offset = "Modell '${modelName}': vector3(${x}, ${y}, ${z})"
	},

	pools = {
		pools_overflowing = "Pooler översvämmade: ~r~${poolsOverflowing}"
	},

	props = {
		illegal_prop_item_id = "Spelaren försökte använda en egendomssak med en olaglig sak-id.",
		spawn_prop_not_staff = "Spelaren försökte spawna en egendom men de hade inte behörighet att göra det.",
		managing_props_help = "Du hanterar just nu rekvisita. Gå fram till rekvisitan och tryck på ~INPUT_CONTEXT~ för att plocka upp den.",
		total_props = "Totalt antal rekvisita: ${count}",
		active_props = "Aktiva rekvisita: ${count}",
		press_to_pick_up = "[${InteractionKey}] Plocka upp",
		pick_up = "Plocka upp",
		picking_up = "Plockar upp",
		press_to_destroy = "[${InteractionKey}] Förstör",
		destroy = "Förstör",
		destroying = "Förstör",
		prop = "Rekvisita",
		model_parameter_missing = "Parametern `model` saknas.",
		model_parameter_invalid = "Modellen `${model}` är en ogiltig modell.",
		model_parameter_is_not_an_object = "Modellen `${model}` är inte en objekt.",
		spawned_prop_non_networked = "Skapade en icke-nätverkad rekvisita med modell `${model}`.",
		spawned_prop_networked = "Skapade en nätverkad rekvisita med modell `${model}`.",
		spawned_exact_prop = "Skapade exakt rekvisita.",
		failed_to_spawn_prop = "Det gick inte att skapa rekvisita med modell `${model}`.",
		not_able_to_spawn_in_vehicle = "Du kan inte vara i ett fordon när du skapar en rekvisita.",
		not_able_to_spawn_while_dead = "Du kan inte vara död när du skapar en rekvisita.",
		not_able_to_spawn_while_moving = "Du måste stå stilla när du spawnar en objekt.",
		stand_still_to_place_prop = "Du måste stå stilla för att placera en objekt.",
		prop_no_interior = "Du kan endast placera den här objekten utomhus.",

		invalid_prop_id = "Ogiltigt objekt-ID.",
		prop_deleted = "Objektet med ID ${propId} raderades.",

		invalid_wipe_radius = "Ogiltig radie (mellan 1 och 100) för att radera objekt.",
		wipe_successful = "Objekt raderades.",
		wipe_props_missing_permissions = "Spelaren försökte radera objekt, men hade inte tillräckliga behörigheter att göra det.",

		placing_prop = "Placerar föremål",
		pickup_prop = "Plockar upp föremål",
		setting_up_tire_wall = "Ställer upp däckvägg",
		destroying_tire_wall = "Tar ner däckvägg"
	},

	radio = {
		frequency = "Frekvens",
		switch = "Växla",
		radio_turned_off = "Radion har stängts av.",
		radio_removed = "Du har tappat bort din radio.",
		no_radio = "Du har ingen radio.",
		unable_to_use_radio_while_cuffed = "Du kan inte använda radion medan du är handbojad.",
		unable_to_use_radio_while_down = "Du kan inte använda radion när du är ner/downad.",
		unable_to_use_radio_as_animal = "Du kan inte använda radion som djur.",
		frequency_set_to_streamer = "Frekvensen har satts.",
		frequency_set_to = "Frekvensen har satts till ${frequency}.",
		frequency_already_set_to = "Frekvensen är redan satt till ${frequency}.",
		radio_volume_same = "Radionvolymen är redan satt till `${radioVolume}`.",
		radio_volume_reset = "Radionvolymen har nu återställts.",
		radio_volume_set = "Radionvolymen har nu satts till `${radioVolume}`.",
		radio_volume_current = "Din nuvarande radionvolym är satt till `${radioVolume}`.",
		radio_volume_current_default = "Din nuvarande radiovolym är standard.",
		radio_sound_effects_same = "Volymen av radioljudeffekterna är redan inställd på `${radioSoundEffects}`.",
		radio_sound_effects_reset = "Volymen av radioljudeffekterna har nu återställts.",
		radio_sound_effects_set = "Volymen av radioljudeffekterna har nu ställts in på `${radioSoundEffects}`.",
		radio_sound_effects_current = "Volymen av radioljudeffekterna är för närvarande inställd på `${radioSoundEffects}`.",
		radio_sound_effects_current_default = "Volymen av radioljudeffekterna är för närvarande standard.",

		radio_missing_last_freq = "Du har ingen radio för att ansluta till den senaste frekvensen.",

		radio_debug_failed = "Misslyckades med att växla radiodebuggning.",
		radio_debug_off = "Radiodebuggning avstängd.",
		radio_debug_on = "Radiodebuggning påslagen.",

		radio_debug_no_permissions = "Försök att växla radiodebuggning utan tillräcklig behörighet.",

		decrypt_frequency = "[${InteractionKey}] Avkoda frekvens",
		decrypting_frequency = "Avkodar frekvens",
		decrypting_frequency_failed = "Misslyckades att avkoda frekvens.",
		decrypter_jammed = "Dekrypteraren verkar vara fastnat.",
		decrypted_frequency = "Frekvensen verkar vara runt `${frequency}`.",
		no_frequency_detected = "Ingen frekvens hittades."
	},

	remote_camera = {
		connected_to_camera = "Ansluten till kamera #${id}",

		camera_distance = "Avstånd: ${distance}m",
		out_of_range = "Utanför räckvidd",

		disconnect = "Koppla från",
		view_feed = "Visa kameraflöde",

		no_nearby_cameras = "Inga närliggande kameror",
		nearby_cameras = "${amount} närliggande kamera(s)",
		no_nearby_cameras_description = "Det finns inga kameror nära dig.",

		camera_operator = "Operatör: ${fullName}",

		camera_label = "Kamera #${id}",
		camera_distance = "Avstånd: ${distance}m",
		connect = "Anslut",

		something_went_wrong = "Något gick fel.",
		error_out_of_range = "Kameran är ur räckhåll.",
		error_not_found = "Kameran hittades inte."
	},

	reskin = {
		plastic_surgery = "Plastik Kirurgi",
		los_santos_police_dept = "LOS SANTOS POLIS AVDELNING",

		reskin_player_no_permissions = "Spelare försökte ändra radion utan rättigheter.",

		triggered_reskin_for_player = "Utlöste reskin för ${consoleName}.",

		triggered_reskin_for_player_logs_title = "Utlöste omformning för spelare",
		triggered_reskin_for_player_logs_details = "${consoleName} utlöste en omformning för ${targetConsoleName}.",

		triggered_reskin_for_self_logs_title = "Utlöste omformning för sig själv",
		triggered_reskin_for_self_logs_details = "${consoleName} utlöste en omformning för sig själv.",

		no_reskin_packages = "Du har inga omformningspaket.",
		redeemed_reskin_package = "Omformningspaketet har lösts in."
	},

	restaurants = {
		["table"] = "Table",
		press_to_table = "[${InteractionKey}] Bord",

		table_title = "Bord ${tableId}",
		seat = "Säte ${seatId}",
		close_menu = "Stäng Meny",
		loading = "Laddar...",

		leave_seat = "Lämna Sätet",
		view_menu = "Se Meny",
		change_seating_position = "Ändra Sittposition (${animationId})",

		sushi = "Sushi",
		drinks = "Drycker",
		desserts = "Efterrätter",

		aka = "Aka",
		kuro = "Kuro",
		shiro = "Shiro",
		midori = "Midori",
		nigiri = "Nigiri",
		sex_on_the_beach = "Sex on the beach",
		mojito = "Mojito",
		pina_colada = "Pina Colada",
		tiramisu = "Tiramisu",
		chocolate_mousse = "Chokladmousse",

		food_replenish = "Din hunger och törst kommer att fyllas upp med ${amount} %.",
		thirst_replenish = "Din törst kommer att fyllas upp med ${amount} %.",
		hunger_replenish = "Din hunger kommer att fyllas upp med ${amount} %.",
		diving_drop_boost = "Få ${amount} x fler föremål från dykningar i ${duration} minuter.",
		hunting_drop_boost = "Få ${amount} x fler föremål från jakt i ${duration} minuter.",
		garbage_drop_boost = "Få ${amount} x fler föremål från sophantering i ${duration} minuter.",
		faster_progress_bars = "Har ${amount} x snabbare framstegsbarer i ${duration} minuter.",
		weapon_damage_multiplier = "Ha en ${amount}x skademultiplikator i ${duration} minuter.",
		local_sales_multiplier = "Ha en ${amount}x försäljningsmultiplikator för produkter sålda till lokalbefolkningen.",
		shorter_boosting_cooldown = "Ha en ${amount}x kortare återställningstid mellan hackningar av boosting.",
		swim_faster = "Simm ${amount}x snabbare i ${duration} minuter.",
		walk_faster = "Gå och spring ${amount}x snabbare i ${duration} minuter.",
		health_generation = "Ha gradvis hälsoregenerering i ${duration} minuter.",
		better_stamina = "Kunna springa utan att tröttna i ${duration} minuter.",
		more_inventory_space = "Få ${amount} ytterligare inventarieplatser i ${duration} minuter.",

		buffs_note = "Buffarna aktiveras endast när du har lämnat närheten av byggnaden."
	},

	riot_mode = {
		riot_mode_enabled = "Riot mode har aktiverats.",
		riot_mode_disabled = "Riot mode har inaktiverats. Aggressiva NPC:er kommer fortsätta kämpa tills de dör.",
		riot_mode_failed = "Kunde inte aktivera/deaktivera Riot mode.",
		riot_mode_missing_perms = "Försökte aktivera/deaktivera Riot mode utan korrekt behörighet.",

		riot_mode_enabled_help = "Riot-läge har aktiverats.",
		riot_mode_disabled_help = "Riot-läge har inaktiverats.",

		add_riot_player_no_permissions = "Försökte lägga till en spelare till riot-listan utan rättigheter.",
		remove_riot_player_no_permissions = "Försökte ta bort en spelare från riot-listan utan rättigheter.",

		player_already_in_riot_list = "${consoleName} finns redan i riot-listan.",
		player_not_in_riot_list = "${consoleName} finns inte i riot-listan.",
		added_riot_player = "Lade till ${consoleName} i riot-listan.",
		failed_to_add_riot_player = "Det gick inte att lägga till ${consoleName} i upploppslistan.",
		removed_riot_player = "Tog bort ${consoleName} från upploppslistan.",
		failed_to_remove_riot_player = "Det gick inte att ta bort ${consoleName} från upploppslistan."
	},

	safes = {
		how_to_use = "Använd tangenterna \"A\" och \"D\" för att rotera kassaskåpet tills du hittar rätt kombination. Börja genom att trycka på \"D\".",
		lock_open = "Olåst",
		lock_closed = "Låst"
	},

	scoreboard = {
		player_list = "Spelarlista",
		players = "Spelare",
		total = "Totalt",
		recent_disconnections = "Senaste frånkopplingar",
		disconnected_player = "Frånkopplad spelare",
		id = "ID",
		name = "Namn",
		identifier = "Identifierare",
		reason = "Anledning",
		time_since_disconnection = "Tid sedan frånkoppling",

		you_are_now_metagaming = "Du Metagamar nu.",
		you_are_no_longer_metagaming = "Du Metagamar inte längre."
	},

	screenshots = {
		screenshot_created = "En skärmdump har skapats.",
		screenshot_failed = "Misslyckades med att ta en skärmdump från den angivna spelaren.",
		screencapture_created = "En skärminspelning har skapats.",
		user_not_found_with_server_id = "Kunde inte hitta användaren med det angivna server-ID:t.",
		invalid_lifespan_parameter = "Livslängdsparametern är ogiltig.",
		invalid_server_id_parameter = "Server-ID-parametern är ogiltig.",
		invalid_duration_parameter = "Varaktighetsparametern är ogiltig.",
		invalid_fps_parameter = "FPS-parametern är ogiltig.",
		missing_server_id_parameter = "Server-ID-parametern saknas.",

		screenshot_error_client_false = "Misslyckades med att skapa skärmbild",
		screenshot_error_user_not_found = "Användaren hittades inte.",
		screenshot_error_user_developer = "Användaren är en utvecklare.",
		screenshot_error_no_token = "Det gick inte att hämta opfw-token.",
		screenshot_timeout = "Tidsgränsen för begäran om skärmdump har löpt ut."
	},

	scuba = {
		sunken_ship = "Sänkt skepp",
		gather_item = "Samla Föremål (${distance}m)",

		collected_junk = "Samlade skräp.",
		collected_item = "Samlade ${itemLabel}.",
		collected_broken_item = "Samlade trasig ${itemLabel}.",

		collected_scuba_item_logs_title = "Samlade dykföremål",
		collected_scuba_item_logs_details = "${consoleName} samlade ett dykföremål och fick `${itemName}`."
	},

	scuba_gear = {
		equipping_scuba_tank = "Utrustning av dykflaska",
		equipping_scuba_mask = "Utrustning av dykmask"
	},

	security_cameras = {
		illegal_security_camera = "Försöker manipulera olagliga säkerhetskameror.",
		saved_security_cameras_to_file = "Har sparat `${amount}` säkerhetskameror till en fil på servern.",
		no_nearby_security_cameras = "Det finns inga närbelägna säkerhetskameror att spara.",
		no_city_ping = "Misslyckades med att pinga stadskamerorna.",
		offline = "Offline",
		camera_list = "Kamera Lista",
		camera = "Kamera ${cameraId}",
		mission_row_pd = "Mission Row PD",
		pillbox_hospital = "Pillbox sjukhuset",
		jewelry_store = "Rockford Hills smyckesaffär",
		principal_bank = "Huvudbanken",
		bolingbroke_penitentiary = "Bolingbroke-fängelset",
		fort_zancudo = "Fort Zancudo",
		del_perro_pier = "Del Perro pir",
		flywheels_garage = "Flywheels garage",
		sandy_shores_pd = "Sandy Shores-polisstation",
		sandy_shores_hospital = "Sandy Shores sjukhus",
		davis_sheriffs_station = "Davis sheriffstation",
		vespucci_pd = "Vespucci-polisstationen",
		rockford_hills_pd = "Rockford Hills-polisstation",
		la_mesa_pd = "La Mesa-polisstation",
		beaver_bush_ranger_station = "Beaver Bush Ranger Station",
		cinema = "Bio",
		st_fiacre_hospital = "St. Fiacre Sjukhus",
		weazel_news = "Weazel Nyheter",
		palomino_fib_facility = "Palomino FIB-anläggning",
		bank_1 = "Legion Square Bank",
		bank_2 = "Rockford Hills Bank",
		bank_3 = "Alta Bank",
		bank_4 = "Burton Bank",
		bank_5 = "Banham Canyon Bank",
		bank_6 = "Grand Senora Bank",
		bank_7 = "Paleto Bay Bank",
		grocery_store_1 = "Davis LTD Bensin",
		grocery_store_2 = "Strawberry 24/7",
		grocery_store_3 = "Murrieta Heights Rob's Liquor",
		grocery_store_4 = "Little Seoul LTD Bensin",
		grocery_store_5 = "Vespucci-kanalerna Robs Liquor",
		grocery_store_6 = "Morningwood Robs Liquor",
		grocery_store_7 = "Mirror Park LTD Bensin",
		grocery_store_8 = "Downtown Vinewood 24/7",
		grocery_store_9 = "Tataviam Mountains 24/7",
		grocery_store_10 = "Banham Canyon Robs Liquor",
		grocery_store_11 = "Banham Canyon 24/7",
		grocery_store_12 = "Richman Glen LTD Bensin",
		grocery_store_13 = "Chumash 24/7",
		grocery_store_14 = "Harmony 24/7",
		grocery_store_15 = "Grand Senora Robs Liquor",
		grocery_store_16 = "Grand Senora 24/7",
		grocery_store_17 = "Sandy Shores Liquor Ace",
		grocery_store_18 = "Sandy Shores 24/7",
		grocery_store_19 = "Grapeseed LTD Bensin",
		grocery_store_20 = "Mount Chiliad 24/7",

		-- NOTE: add-on
		paleto_247 = "Paleto Bay 24/7"
	},

	self_driving = {
		not_driving_a_vehicle = "Du kör för närvarande inte ett fordon.",
		not_a_self_driving_vehicle = "Företaget du kör tillåter inte autopilot.",
		no_waypoint_set = "Vänligen markera destinationen med en vägbeskrivning.",
		invalid_waypoint_set = "Vägbeskrivningen du angav kan inte nås automatiskt.",
		self_driving_engaged = "Autopiloten har aktiverats. Tryck ~INPUT_SPRINT~ och ~INPUT_DUCK~ för att styra hastigheten.",
		self_driving_disengaged = "Autopiloten har stängts av.",
		destination_too_close = "Den markerade destinationen är för nära.",
		self_driving_could_not_be_engaged = "Autopiloten kunde inte aktiveras."
	},

	shield = {
		no_weapon_equipped = "Du måste ha en vapen utrustat för att utrusta ballistisk sköld.",
		no_shield = "Du har inte en ballistisk sköld i din inventering."
	},

	shockwaves = {
		create_shockwave_missing_permissions = "En spelare försökte skapa en chockvåg, men saknade nödvändiga rättigheter.",
		push_player_missing_permissions = "Spelare försökte knuffa en annan spelare men saknade nödvändiga behörigheter.",
		shockwave_success = "Chockvåg skapades framgångsrikt.",
		shockwave_failed = "Kunde inte skapa chockvåg.",

		invalid_server_id = "Ogiltigt server-ID.",
		push_player_success = "Spelaren har tryckts framgångsrikt.",
		push_player_failed = "Det gick inte att trycka spelaren."
	},

	shooting_ranges = {
		turn_on = "Sätt På ($${cost})",
		turn_off = "Stäng Av",
		toggle_through_targets = "Växla genom målen (${modelId})",
		speed = "Hastighet (${speedLevel})",
		rotation = "Rotation (${rotationLevel})",
		clear_bullet_impacts = "Rensa skotthål",
		illegal_shooting_spot_value = "Försöker skicka ogiltiga värden för skottplatser.",
		illegal_shooting_spot_id = "Försöker skicka värden för en skjutplats som inte finns.",
		not_enough_cash = "Du har inte tillräckligt med kontanter."
	},

	shrooms = {
		press_to_pick_up_shrooms = "Tryck på ~INPUT_CONTEXT~ för att plocka upp svampar.",
		picking_up_shrooms = "Plockar upp svampar.",
		press_to_sell_shrooms = "Tryck på ~INPUT_CONTEXT~ för att sälja svampar.",
		local_not_interested = "Lokalen verkar inte vara intresserad just nu.",
		not_interested = "Denna person verkar inte vara intresserad av dina svampar.",
		selling_shrooms = "Säljer svampar.",
		shrooms_not_ripe = "Dessa svampar verkar inte vara mogna ännu, låt dem kanske sitta lite längre.",
		shroom_id = "svamp-${shroomId}"
	},

	skylift = {
		press_to_toggle_magnet = "Tryck på ~INPUT_CONTEXT~ för att växla magneten.",
		skylift_magnet_turned_off_logs_title = "Skylift Magneten Avstängd",
		skylift_magnet_turned_off_logs_details = "${consoleName} stängde av Skylift magneten.",
		skylift_magnet_turned_on_logs_title = "Skylift Magneten Påslagen",
		skylift_magnet_turned_on_logs_details = "${consoleName} slog på Skylift magneten.",
		skylift_attached_vehicle_logs_title = "Skylift Fästefordon",
		skylift_attached_vehicle_logs_details = "${consoleName} fäste ett fordon till deras Skylift."
	},

	smoothies = {
		blend = "Blanda",
		close = "Stäng",

		use_blender = "[${InteractionKey}] Använd Mixer",
		blending = "Blandning",

		smoothie_label = "Smoothie (${flavors})",
		seperator = "och"
	},

	snow = {
		hold_to_pick_up_snowballs = "Håll ~INPUT_CONTEXT~ för att plocka upp snöbollar."
	},

	spawn = {
		spawn_now = "Spawn Nu",
		last_position = "Senaste Plats",

		train_station = "Tågstation",
		city_bus_station = "Busstation",
		paleto_bay_bus_station = "Paleto Bay Busstation",

		mission_row_police_station = "Mission Row-polisstation",
		sandy_police_station = "Sandy Shores-polisstation",
		paleto_police_station = "Polisstationen i Paleto Bay",

		mount_zonah = "Mount Zonah",
		sandy_hospital = "Sjukhuset i Sandy Shores",
		paleto_hospital = "Sjukhuset i Paleto Bay",

		battle_royale = "Slagfältet"
	},

	special_imports = {
		special_imports_blip = "Special-importer",

		purchased_vehicle = "Du har köpt ${label} för $${price}. Fordonet har lagts till i ditt garage.",

		something_went_wrong = "Något gick fel.",
		not_enough_money = "Du har inte tillräckligt med pengar.",
		invalid_package = "Ogiltig paketnivå. (Du behöver nivån godlike)",

		dealership_closed = "Bilshoppen är för närvarande stängd.",

		purchased_vehicle_logs_title = "Specialimporter",
		purchased_vehicle_logs_details = "${consoleName} köpte en specialimporterad ${modelName}-bil för ${price} (Registrering: `${plate}`).",

		marker_label = "${label} | ${price} kr | Lager: ${stock}",
		marker_label_purchase = "[${SeatEjectKey}] Köp ${label} för ${price} kr",
		marker_label_purchase_timer = "[${timer}s] Håll in ${SeatEjectKey} för att köpa ${label} för ${price} kr",

		vehicle_sold_out = "${label} | Slut på lager"
	},

	spectating = {
		cannot_spectate_self = "Du kan inte följa dig själv.",
		failed_spectate = "Det gick inte att följa spelaren.",
		player_not_exist = "Spelaren är offline.",
		no_character_loaded = "Spelaren har ingen karaktär laddad.",
		not_same_instance = "Spelaren är inte i samma instans som du.",

		loading_coords = "Laddar koordinater",
		preloading_area = "Förvärlar område",
		finding_player = "Letar efter spelare",

		invincibility_active = "Odödlighet: ~r~Aktiv~w~",
		invincibility_inactive_dead = "Odödlighet: ~g~Inaktiv~w~ (död)",
		invincibility_inactive = "Odödlighet: ~g~Inaktiv~w~",

		health_ok = "Hälsa: ~g~${health} / ${maxHealth}~w~",
		health_bad = "Hälsa: ~r~${health} / ${maxHealth}~w~",

		armor_ok = "Skydd: ~g~${armor} / ${maxArmor}~w~",
		armor_bad = "Skydd: ~r~${armor} / ${maxArmor}~w~",

		speed = "Hastighet: ${speed}${unit}",
		speed_mph = "mph",
		speed_kmh = "km/h",

		exit_spectate = "Tryck ~g~${InteractionKey}~w~ för att avsluta åskådarläge",

		spectate_logs_title = "Började åskåda",
		spectate_logs_details = "${consoleName} började åskåda ${targetUser}.",

		spectate_stopped_logs_title = "Slutade åskåda",
		spectate_stopped_logs_details = "${consoleName} slutade åskåda."
	},

	spying = {
		microphone_bug_not_activated = "Denna bugg har inte aktiverats.",
		vehicle_tracker_not_activated = "Denna spårare har inte aktiverats.",
		microphone_bug_active_with_battery = "Denna buggmikrofon är för närvarande aktiv. Batteriet ligger på ${batteryPercentage}%. Du kan \"Använda\" den för att lyssna på samtal den kan uppfatta.<br><br>Enhetens id: ${deviceId}.",
		microphone_bug_ran_out_of_battery = "Denna buggmikrofon har tagit slut på batteri. Den fysiska buggen kommer att förfalla efter en vecka.<br><br>Enhetens id: ${deviceId}.",
		vehicle_tracker_active_with_battery = "Denna fordons tracker är för närvarande aktiv. Dess batteri är på ${batteryPercentage}%. Så länge som fordonet som denna tracker är monterad på är tillgängligt, kommer den att visas på din karta.<br><br>Enhet ID: ${deviceId}.",
		vehicle_tracker_ran_out_of_battery = "Denna fordons tracker har kört ur batteri. Den fysiska fordons trackern kommer att försvinna efter en vecka.<br><br>Enhet ID: ${deviceId}.",
		scanning_for_devices = "Söker efter enheter",
		searching_for_devices = "Letar efter enheter",
		no_nearby_vehicle = "Inget närliggande fordon.",
		placing_vehicle_tracker = "Placerar fordonsspårare",
		error_using_vehicle_tracker = "Det uppstod ett fel när du försökte placera fordonsspåraren.",
		vehicle_tracker_placed = "Fordonsspåraren har placerats framgångsrikt.",
		error_using_microphone_bug = "Det uppstod ett fel när du försökte placera mikrofonbunken.",
		microphone_bug_placed = "Mikrofonbunken har placerats framgångsrikt.",
		placing_microphone_bug_on_vehicle = "Placerar Bug på fordon",
		placing_microphone_bug_on_player = "Placerar Bug på spelare",
		placing_microphone_bug_on_ground = "Placera mikrofonburen på marken",
		error_using_device_scanner = "Det uppstod ett fel när du försökte använda enhetsskanningen.",
		error_searching_for_devices = "Det uppstod ett fel när du försökte söka efter enheter.",
		found_devices = "Hittade ${totalDevices} enheter.",
		no_nearby_devices_found = "Inga närliggande enheter hittades.",
		microphone_bug = "Mikrofon Bug",
		microphone_bug_destroy = "Mikrofon Bug\n[${InteractionKey}] Förstör",
		vehicle_tracker = "Fordonspositionering",
		vehicle_tracker_destroy = "Fordonspositionering\n[${InteractionKey}] Förstör",
		destroying_device = "Förstör enhet",
		tracker_will_appear_on_map = "Denna spårare har redan aktiverats. Den kommer att visas på din karta så länge fordonet är tillgängligt och spåraren har batteri.",
		spy_ui_info = "Avlyssning av mikrofonbugg (#${deviceId})",
		spy_ui_location = "${location}, ${time}",
		spy_ui_exit = "Tryck på ESC för att avsluta mikrofonbuggen",
		spy_ui_connecting = "Ansluter till mikrofonbugg (#${deviceId})",
		spy_ui_connection_failed = "Misslyckades med att ansluta till mikrofonbugg (#${deviceId})",
		spy_ui_awaiting_data = "Väntar på data...",
		spy_ui_data_failed = "Data misslyckades"
	},

	starter_car = {
		your_vehicle_is_nearby = "Ditt personliga fordon är parkerat i närheten.",
		would_you_like_directions = "Vill du ha vägbeskrivning för att hitta det?",
		press_to_respond = "Tryck på ~INPUT_FRONTEND_ACCEPT~ för att acceptera eller ~INPUT_FRONTEND_CANCEL~ för att avböja.",
		follow_the_checkpoints = "Följ checkpoints.",

		received_logs_title = "Mottaget startat fordon",
		received_logs_details = "${consoleName} mottog ett startat fordon (Modell: ${modelName})."
	},

	status = {
		status_reset = "Statusen har återställts för ${consoleName}.",
		status_reset_failed = "Ingen användare med server-ID `${serverId}` hittades.",
		reset_status_not_staff = "Försökte återställa en spelares status utan tillräckliga behörigheter.",
		status_reset_for_all = "Statusen har återställts för alla.",
		status_disabled = "Inaktiverade statusar (stress, hunger och törst).",
		status_enabled = "Aktiverade statusar (stress, hunger och törst).",
		failed_to_set_body_armor_level = "Misslyckades med att köra kommandot `/set_body_armor` korrekt.",
		set_body_armor_level_player = "Lyckades ställa in rustningsnivån för ${consoleName} till `${bodyArmorLevel}`.",
		set_body_armor_level_everyone = "Lyckades ställa in rustningsnivån för alla till `${bodyArmorLevel}`.",
		set_body_armor_level_self_title = "Ställa in Rustningsnivå för Sig Själv",
		set_body_armor_level_self_details = "${consoleName} ställde in sin egen rustningsnivå till `${bodyArmorLevel}`.",
		set_body_armor_level_everyone_title = "Ställa in Rustningsnivå för Alla",
		set_body_armor_level_everyone_details = "${consoleName} ställde in rustningsnivån för alla till `${bodyArmorLevel}`.",
		set_body_armor_level_player_title = "Sätt kroppsvärn för spelare",
		set_body_armor_level_player_details = "${consoleName} uppdaterade ${targetConsoleName} och satte deras kroppsvärn till `${bodyArmorLevel}`.",
		set_body_armor_level_player_not_staff = "Spelaren försökte sätta en annan spelares kroppsvärn men hade inte tillräckliga behörigheter att göra det.",
		set_body_armor_level_self_not_staff = "Spelaren försökte ställa in sitt eget kroppsvärn men hade inte tillräckliga behörigheter att göra det.",
		stress_level_warning = "Du är stressad! Sänk din stress genom att röka cigaretter, joints eller göra aktiviteter som yoga."
	},

	streamer_mode = {
		enabled_streamer_mode = "Aktiverad Streamer-läge.",
		disabled_streamer_mode = "Inaktiverad Streamer-läge."
	},

	sync = {
		missing_hour = "Ingen tidpunkt angiven.",
		invalid_hour = "Lokal tid överskridning är ogiltig. Värdet bör vara en tidpunkt mellan 0:00 och 23:59.",
		hour_changed = "Tiden har nu satts till `${hour}`.",
		set_hour_not_staff = "Försök att ställa in tiden utan nödvändiga behörigheter.",

		local_time_override_enabled = "Ställ in lokal tid till ${hour}:${minute}.",
		local_time_override_disabled = "Återställ lokal tid till standard.",
		local_weather_override_enabled = "Sätt lokal väder till `${weatherName}`.",
		local_weather_override_disabled = "Återställ lokal väder till standard.",

		missing_minute = "Ingen minut angiven.",
		invalid_minute = "Minuten `${minute}` är ogiltig. Värdet bör vara mellan 0 och 59.",
		minute_changed = "Minuten har nu ändrats till `${minute}`.",
		set_minute_not_staff = "Försök att ändra minuten utan nödvändig behörighet.",

		missing_weather = "Inget väder angivet.",
		invalid_weather = "Vädret `${weatherName}` är ogiltigt. De värden som är giltiga för vädernamn är CLEAR, EXTRASUNNY, CLOUDS, OVERCAST, RAIN, CLEARING, THUNDER, SMOG, FOGGY, XMAS, SNOWLIGHT och BLIZZARD.",
		weather_changed = "Vädret har nu ändrats till `${weatherName}`.",
		weather_advanced = "Vädret har avancerat till `${weatherName}`.",
		weather_advance_fail = "Misslyckades med att avancera vädret naturligt.",
		set_weather_not_staff = "Försökte ändra vädret utan nödvändiga tillstånd.",
		advance_weather_not_staff = "Försökte avancera vädret utan nödvändiga tillstånd.",

		time_frozen = "Tiden har nu frysts.",
		time_unfrozen = "Tiden är inte längre fryst.",
		freeze_time_not_staff = "Försökte frysa tiden utan nödvändiga behörigheter.",

		weather_frozen = "Vädret är nu fryst.",
		weather_unfrozen = "Vädret är inte längre fryst.",
		freeze_weather_not_staff = "Försökte frysa vädret utan nödvändiga behörigheter.",

		blackout_enabled = "Ett strömavbrott är nu närvarande i staden.",
		blackout_disabled = "Staden är inte längre föremål för strömavbrott.",
		blackout_not_staff = "Försökte växla strömavbrott utan nödvändiga behörigheter.",

		weather_changed_title = "Väder ändrades",
		weather_changed_details = "${consoleName} ändrade vädret till `${weatherName}`.",

		weather_changed_success = "Vädret ändrades framgångsrikt till `${weatherName}`.",
		weather_change_failed = "Misslyckades med att ändra vädret.",
		weather_parameter_invalid = "Ogiltigt parameter för väderName.",
		weather_parameter_missing = "VäderNamn parameter saknas.",

		time_parameters_invalid = "Ogiltigt timme- eller minutparameter.",
		time_currently_transitioning = "Tiden övergår för närvarande, vänligen vänta.",
		time_successfully_transitioned = "Tiden har framgångsrikt övergått till `${hour}:${minute}`.",
		time_successfully_set = "Tiden har framgångsrikt satts till `${hour}:${minute}`."
	},

	tablet = {
		you_dont_have_a_tablet = "Du har ingen surfplatta.",

		app_snake = "Orm",
		app_tetris = "Tetris",
		app_chess = "Schack",
		app_minesweeper = "Minröj",
		app_flappy_bird = "Flappy Bird",
		app_geoguesser = "Geo-Gissa",
		app_pdm = "PDM Katalog",
		app_edm = "EDM Katalog",
		app_cat_pictures = "Kattbilder",

		folder_games = "Spel",
		folder_productivity = "Produktivitet",

		snake_title = "Ormen",
		snake_description = "Använd piltangenterna för att gå upp, ner, vänster och höger.",
		snake_start_game = "Starta Spelet",
		snake_difficulty = "Svårighet:",
		snake_difficulty_easy = "Lätt",
		snake_difficulty_medium = "Medel",
		snake_difficulty_hard = "Svårt",

		snake_game_over = "Spelet Slut!",
		snake_over_description = "Slutpoäng: ${score}.",
		snake_new_game = "Nytt Spel",

		tetris_description = "Använd piltangenterna för att gå åt vänster och höger.",
		tetris_play = "Nytt Spel",
		tetris_game_over = "Spelet Slut",
		tetris_restart = "Starta Om",
		tetris_score = "Poäng",

		chess_title = "Schack",
		chess_your_turn = "Din tur",
		chess_ai_turn = "Datorn tänker",
		chess_you_lost = "Du förlorade",
		chess_you_won = "Du vann",
		chess_draw = "Oavgjort",

		chess_play_as = "Spela som:",
		chess_play_as_b = "Svart",
		chess_play_as_w = "Vit",
		chess_difficulty = "Svårighet:",
		chess_difficulty_level = "Nivå ${level}",
		chess_start = "Börja spela",

		minesweeper_title = "Svepgruva",
		minesweeper_win = "Du vann",
		minesweeper_loose = "Du förlorade",
		minesweeper_difficulty = "Svårighet:",
		minesweeper_start = "Starta spel",
		minesweeper_flags_used = "${used}/${total} Flaggor använda",

		flappy_bird_title = "Flappy Bird",
		flappy_bird_score = "Slutpoäng:",
		flappy_bird_game_over = "Spelet är slut",
		flappy_bird_start = "Tryck på duken för att börja"
	},

	tattoos = {
		tattoos_refreshed = "Tatueringar uppdaterade.",
		something_went_wrong = "Något gick fel.",
		user_does_not_have_sent_character_loaded = "Användaren har inte laddat den skickade karaktären.",
		user_has_no_character_loaded = "Användaren har ingen karaktär laddad.",
		user_not_found = "Användaren kunde inte hittas på servern.",
		invalid_character_id = "Ogiltigt karaktärs-id-skickat.",
		invalid_license_identifier = "Ogiltigt licensidentifierarparameter skickad."
	},

	teleporters = {
		enter_mechanic_shop = "Gå in på verkstad.",
		enter_mechanic_shop_interact = "[${InteractionKey}] Gå in på verkstaden.",

		exit_mechanic_shop = "Lämna verkstad.",
		exit_mechanic_shop_interact = "[${InteractionKey}] Lämna verkstad.",

		enter_coroner = "Gå in hos likbehandlare.",
		enter_coroner_interact = "[${InteractionKey}] Gå in hos likbehandlare.",

		exit_coroner = "Gå ut från befälhavarens kontor",
		exit_coroner_interact = "[${InteractionKey}] Gå ut från befälhavarens kontor",

		enter_fib = "Gå in på FIB",
		enter_fib_interact = "[${InteractionKey}] Gå in på FIB",

		exit_fib = "Gå ut från FIB",
		exit_fib_interact = "[${InteractionKey}] Gå ut från FIB",

		enter_iaa_base = "Gå in på IAA-basen",
		enter_iaa_base_interact = "[${InteractionKey}] Gå in på IAA-basen",

		exit_iaa_base = "Gå ut från IAA-basen",
		exit_iaa_base_interact = "[${InteractionKey}] Gå ut från IAA-basen",

		enter_server_room = "Gå in i serverrummet",
		enter_server_room_interact = "[${InteractionKey}] Gå in i serverrummet",

		exit_server_room = "Avsluta Serverrum",
		exit_server_room_interact = "[${InteractionKey}] Avsluta Serverrum",

		enter_warehouse_shop = "Gå in i Lager",
		enter_warehouse_shop_interact = "[${InteractionKey}] Gå in i Lager",

		exit_warehouse_shop = "Avsluta Lager",
		exit_warehouse_shop_interact = "[${InteractionKey}] Avsluta Lager",

		enter_office_shop = "Gå in i Kontor",
		enter_office_shop_interact = "[${InteractionKey}] Gå in i Kontor",

		exit_office_shop = "Avsluta Kontor",
		exit_office_shop_interact = "[${InteractionKey}] Avsluta Kontor",

		enter_cocaine_lab = "Gå in i Kokainlabbet",
		enter_cocaine_lab_interact = "[${InteractionKey}] Gå in i Kokainlabbet",

		exit_cocaine_lab = "Gå ut från Kokainlabbet",
		exit_cocaine_lab_interact = "[${InteractionKey}] Gå ut från Kokainlabbet",

		enter_mayor_office = "Gå in i Borgmästarens Kontor",
		enter_mayor_office_interact = "[${InteractionKey}] Gå in i Borgmästarens Kontor",

		exit_mayor_office = "Gå ut från Borgmästarens Kontor",
		exit_mayor_office_interact = "[${InteractionKey}] Gå ut från Borgmästarens Kontor",

		enter_exclusive_dealership = "Gå in i Exklusiva Bilförsäljningen",
		enter_exclusive_dealership_interact = "[${InteractionKey}] Gå in på Exklusiv Bilhandel",

		exit_exclusive_dealership = "Gå ut från Exklusiv Bilhandel",
		exit_exclusive_dealership_interact = "[${InteractionKey}] Gå ut från Exklusiv Bilhandel",

		enter_casino = "Gå in på Kasino",
		enter_casino_interact = "[${InteractionKey}] Gå in på Kasino",

		exit_casino = "Gå ut från Kasino",
		exit_casino_interact = "[${InteractionKey}] Gå ut från Kasino",

		enter_roof = "Gå upp på taket",
		enter_roof_interact = "[${InteractionKey}] Gå upp på taket",

		exit_roof = "Gå ner från taket",
		exit_roof_interact = "[${InteractionKey}] Gå av taket",

		enter_penthouse = "Gå in i penthouse",
		enter_penthouse_interact = "[${InteractionKey}] Gå in i penthouse",

		exit_penthouse = "Gå ut ur penthouse",
		exit_penthouse_interact = "[${InteractionKey}] Gå ut ur penthouse",

		enter_parking_garage = "Gå in i parkeringsgarage",
		enter_parking_garage_interact = "[${InteractionKey}] Gå in i parkeringsgarage",

		exit_parking_garage = "Gå ut från parkeringsgarage",
		exit_parking_garage_interact = "[${InteractionKey}] Gå ut från parkeringsgarage",

		enter_surgery = "Gå in i operationssalen",
		enter_surgery_interact = "[${InteractionKey}] Gå in i operationssalen",

		exit_surgery = "Gå ut från operationssalen",
		exit_surgery_interact = "[${InteractionKey}] Gå ut från operationssalen",

		enter_icu = "Gå in på intensivvårdsavdelningen",
		enter_icu_interact = "[${InteractionKey}] Gå in på intensivvårdsavdelningen",

		exit_icu = "Gå ut från intensivvårdsavdelningen",
		exit_icu_interact = "[${InteractionKey}] Gå ut från intensivvårdsavdelningen",

		enter_underground_tunnel = "Gå ned i underjordisk tunnel",
		enter_underground_tunnel_interact = "[${InteractionKey}] Gå ned i underjordisk tunnel",

		exit_underground_tunnel = "Gå upp till ytan",
		exit_underground_tunnel_interact = "[${InteractionKey}] Gå upp till ytan",

		use_secret_tunnel_exit = "Använd Hemlig Uppfart",
		use_secret_tunnel_exit_interact = "[${InteractionKey}] Använd Hemlig Uppfart",

		enter_hangar = "Gå in i Hangaren",
		enter_hangar_interact = "[${InteractionKey}] Gå in i Hangaren",

		exit_hangar = "Gå ut ur Hangaren",
		exit_hangar_interact = "[${InteractionKey}] Gå ut ur Hangaren",

		enter_loading_bay = "Gå in i Lastningsområdet",
		enter_loading_bay_interact = "[${InteractionKey}] Gå in i Lastningsområdet",

		exit_loading_bay = "Gå ut ur Lastningsområdet",
		exit_loading_bay_interact = "[${InteractionKey}] Gå ut ur Lastningsområdet"
	},

	test_server = {
		you_are_not_in_a_vehicle = "Du sitter inte i ett fordon.",
		you_are_in_a_vehicle = "Du sitter för närvarande i ett fordon.",
		invalid_vehicle_preset = "Ogiltigt fordonsförkonfiguration.",
		fully_upgraded = "Fordonet har uppgraderats.",
		applied_preset = "Förkonfiguration har tillämpats.",
		spawned_car = "Spawande `${modelName}`.",
		just_spawned_a_car = "Du har precis spawat en bil, vänta ${time} innan du spawar en annan."
	},

	time_scale = {
		invalid_time_scale = "Värdet ${timeScale} för tidsskala är ogiltigt.",
		set_time_scale_missing_permissions = "Spelaren försökte sätta tidsskalan men hade inte nödvändiga behörigheter.",
		time_scale_set_to = "Tidsrytmen har satts till ${timeScale}.",
		time_scale_disabled = "Tidsrytmens åsidosättande har inaktiverats.",
		time_scale_already_set_to = "Tidsrytmen är redan inställd på ${timeScale}.",
		time_scale_is_already_disabled = "Tidsrytmens åsidosättande är redan inaktiverat."
	},

	titanic = {
		created_titanic = "Har skapat en Titanic med sjunkande tid på ${sinkTime} minut(er).",
		failed_to_create_titanic = "Misslyckades med att skapa Titanic.",
		create_titanic_missing_permissions = "Spelare försökte skapa en Titanic, men hade inte tillräckliga behörigheter."
	},

	top_down = {
		not_in_valid_vehicle = "Du sitter inte i ett giltigt fordon (endast bilar/cyklar).",
		top_down_on = "Top-down vy aktiv.",
		top_down_off = "Top-down vy avaktiverad."
	},

	trackers = {
		error_finding_tracker = "Ett fel uppstod när din tracker skulle hittas.",
		tracker_visible = "Din tracker är nu synlig.",
		tracker_hidden = "Din tracker är nu dold.",
		tracker = "Tracker",
		trackers = "Trackers",
		stockade_robbery_tracker = "Stockade Lastbil (10-78)",
		tracked_vehicle = "Spårat fordon (${trackerId})",
		tracked_player = "${displayName}",
		battle_royale_teammate = "${name}",
		tracker_character = "${firstName} ${lastName} (${departmentLabel})",
		tracker_character_unit_id = "${unitId}: ${firstName} ${lastName} (${departmentLabel})",
		trackers_in_category = "Följare kommer nu lagras inom sin kategori på kartan.",
		trackers_split = "Följare kommer nu delas upp i individuella markeringar.",

		department_sasp = "SASP",
		department_bcso = "BCSO",
		department_sahp = "SAHP",
		department_doc = "DOC",
		department_park_rangers = "Parkvakt",
		department_medical = "Ambulans",
		department_doctor = "Doktor",
		department_bcfd = "Brand- & Räddningstjänst",

		department_police_undercover = "Civilklädd Polis",

		department_police_training = "Polisträning",
		department_ems_training = "EMT-träning"
	},

	trading_cards = {
		access_store = "[${InteractionKey}] Tillgång till butik",

		buy_pack = "Köp ${packName}",
		store_title = "Kortsamling",

		successfully_bought_pack = "Köpet av kortsamling lyckades",
		failed_buy_pack = "Det gick inte att köpa kortsamlingen. Har du tillräckligt med pengar?",

		just_showed_trading_cards = "Du visade precis din kortsamling. Vänta en stund.",

		unpack_successfull = "Uppackning lyckades.",
		failed_unpack = "Uppackning misslyckades.",
		failed_unpack_no_cards = "Uppackning misslyckades. Det finns inga tillgängliga samlarkort.",

		edition = "Utgåva",
		rarity = "Sällsynthet",

		rarity_bronze = "Brons",
		rarity_silver = "Silver",
		rarity_gold = "Guld",
		rarity_holo = "Holo",
		rarity_foil = "Foil",
		rarity_relic = "Relik",
		rarity_headache = "Huvudvärk",
		rarity_missprint = "Missprint",
		rarity_ethereal = "Ethereal",
		rarity_promotional = "Promotional",

		rarity_custom = "Anpassad",

		press_to_access_buyback = "Tryck på ~INPUT_CONTEXT~ för att komma åt kortköpet.",
		buyback_title = "Kortköp",
		close_menu = "Stäng Meny",
		sell_cards = "Sälj alla ${rarity} kort",

		failed_selling = "Misslyckades att sälja kort.",
		no_cards_of_type = "Du har inga ${rarity} kort.",
		successfully_sold_cards = "Sålde ${amount} ${rarity} kort för $${earned}.",

		studio_blip = "945 Studios"
	},

	training = {
		on_team_attackers = "Du är en angripare!\nTid kvar: ${time}",
		on_team_defenders = "Du är en försvarare!\nTid kvar: ${time}",
		attackers = "Angripare:",
		defenders = "Försvarare:",
		waiting_for_players = "Väntar på fler spelare. Det måste finnas minst en spelare på varje lag.",
		none = "N/A",
		match_starting_in = "Matchen börjar om ${seconds} sekunder.",
		loading_match = "Väntar på att spelare ska ladda in. Matchen börjar om ${seconds} sekunder.",
		attackers_help_text = "Döda alla försvarare innan cooldownen är över för att vinna!",
		defenders_help_text = "Döda alla angripare eller vänta tills cooldownen är över för att vinna!",
		attacker = "ANGRIparet",
		defender = "FÖRSVARARE",
		attackers_won = "Angriparna vann!",
		defenders_won = "Försvararna vann!"
	},

	trains = {
		spawn_train_missing_permissions = "Spelaren försökte spawna ett tåg utan tillräckliga behörigheter.",

		invalid_track_id = "Ogiltigt tåg-ID angivet.",
		spawned_train_on_track = "Spawnade ett tåg på spår ${trackId}.",
		failed_to_spawn_train = "Kunde inte spawna tåg."
	},

	traps = {
		rearming = "Laddar om",
		press_to_rearm = "[${InteractionKey}] Ladda om",
		rearm = "Ladda om",
		e = "E"
	},

	treasure_maps = {
		no_treasure_map_with_tier = "Det finns ingen skattkarta med tier ${mapTier}.",
		treasure_map_does_not_have_piece = "Skattkarta med tier ${mapTier} har inte bit ${pieceNumber}.",
		spawn_map_piece_missing_permissions = "Spelaren försökte spawna en karta bit utan tillräckliga rättigheter.",

		sketchy_map = "Skissartad karta",
		worn_map = "Sliten karta",
		fancy_map = "Fancy karta",
		exquisite_map = "Exquisite karta",

		map_piece_tier_1_description = "Det ser ut att finnas skrift under en vidrig bit tuggummi.",
		map_piece_tier_2_description = "En rätt autentisk bit av en karta. Även om bläcket rinner lite.",
		map_piece_tier_3_description = "Den här kartbiten glittrar lite i solljuset.",
		map_piece_tier_4_description = "Den här intrikata, vackra kartbiten luktar pengar.",

		map_tier_1_description = "Ser ut som om den var handskriven på en servett. Ignorera den nyfikna fläcken.",
		map_tier_2_description = "Den här kartan är ganska sliten men det verkar som om den kan leda till något vettigt.",
		map_tier_3_description = "Mycket fin \"glittrande\" karta med en \"100% äkta\" signatur i nedre högra hörnet.",
		map_tier_4_description = "Den här kartan ser dyrare ut än de flesta skatter. Låt oss gå!!!!",

		press_to_combine_pieces = "Tryck på ~INPUT_CONTEXT~ för att kombinera bitar av kartan ${mapTier}.",

		treasure_map = "Skattkarta (Nivå ${mapTier})"
	},

	tsunami = {
		the_ocean_scaler_intensity_already_set_to = "Intensiteten för ocean scaler är redan inställd på `${intensity}`.",
		no_ocean_scaler_intensity_set = "Det finns ingen intensitet för ocean scaler inställd.",
		set_ocean_scaler_to = "Ställ in intensiteten för ocean scaler till `${intensity}`.",
		reset_ocean_scaler = "Återställ intensiteten för ocean scaler.",
		set_ocean_scaler_no_permission = "Spelaren saknade den nödvändiga behörigheten för att ställa in ocean scaler."
	},

	tuner_shop = {
		purchase_label = "[${SeatEjectKey}] Köp ${label} för $${price}",
		purchase_label_far = "${label} | $${price}",
		purchase_label_timer = "[${timer}] ${label} | $${price}",
		purchase_label_sale = "[${SeatEjectKey}] Köp ${label} för $${price} (-${discount}%)",
		purchase_label_sale_far = "Rea! | ${label} | $${price} (-${discount}%)",
		purchase_label_sale_timer = "[${timer}] ${label} | $${price} (-${discount}%)",

		failed_vehicle_spawn = "Misslyckades med att spawn bilen.",
		not_enough_funds = "Inte tillräckligt med pengar för att genomföra köpet.",
		area_not_clear = "Området för spawnningen är ej fritt.",
		something_went_wrong = "Något gick fel när du försökte köpa fordonet.",

		purchased_vehicle = "Köpt ${label} för $${price}.",

		tuner_shop_blip = "Midnight Tuningbutik",

		log_title = "Tuningbutik Köp",
		log_description = "Köpte `${label}` för $${price}.",
		log_description_discount = "Köpte `${label}` för $${price} med en rabatt på ${discount} %."
	},

	vape = {
		press_to_use = "Tryck ~INPUT_CONTEXT~ för att använda. Tryck ~INPUT_FRONTEND_CANCEL~ för att lägga undan vapet."
	},

	vdm = {
		failed_vdm = "Misslyckades med att VDM-spela spelaren.",
		invalid_entity = "Kunde inte hitta fordon eller förare.",
		invalid_network_id = "Ogiltigt nätverks-ID.",
		invalid_target = "Ogiltigt mål.",
		cleared_vdm = "Rensade ${amount} VDM-mål.",
		failed_vdm_clear = "Misslyckades med att rensa VDM-mål.",
		added_vdm_target = "NPC med nätverks-ID ${networkId} målsökning för ${target}.",

		vdm_no_permissions = "Spelaren försökte köra VDM-kommandot utan tillräckligt tillstånd."
	},

	vending_machines = {
		vending_coffee = "Tryck på ~INPUT_CONTEXT~ för att köpa en kaffe. Kostnaden är $${cost}.",
		vending_coffee_not_enough_cash = "Du har inte tillräckligt med pengar för att köpa en kaffe. Priset är $${cost}.",
		vending_snack = "Tryck ~INPUT_CONTEXT~ för att köpa en snack. Priset är $${cost}.",
		vending_snack_not_enough_cash = "Du har inte tillräckligt med pengar för att köpa en snack. Priset är $${cost}.",
		vending_soda = "Tryck ~INPUT_CONTEXT~ för att köpa en läsk. Priset är $${cost}.",
		vending_soda_not_enough_cash = "Du har inte tillräckligt med pengar för att köpa en läsk. Priset är $${cost}.",
		vending_water = "Tryck ~INPUT_CONTEXT~ för att köpa en vattenflaska. Priset är $${cost}.",
		vending_water_not_enough_cash = "Du har inte tillräckligt med pengar för att köpa en vattenflaska. Kostnaden är $${cost}.",
		vending_machine_damaged = "Denna automatsäljare är skadad. Vänligen försök igen senare.",
		vending_water_cooler = "Tryck ~INPUT_CONTEXT~ för att få en kopp vatten.",

		refill_bottle = "Tryck ~INPUT_CONTEXT~ för att fylla på flaskan.",
		refilling_bottle = "Fyller på flaskan"
	},

	voice = {
		illegal_radio_frequency = "Försöker att få åtkomst till olagliga radiokanaler.",
		voice_chat = "Röstchatt",
		voice_server_connected = "Ansluten till röstservern. Skickar röstdata till relevanta spelare.",
		voice_server_disconnected = "Frånkopplad från röstservern. Väntar på anslutning.",
		voice_muted = "Röstchatten har stängts av.",
		voice_unmuted = "Röstchatten har slagits på.",
		broadcasting_voice_to_players = "Sänder till spelare:",
		listening_to_virtual_players = "Lyssnar på virtuella spelare:",
		radio = "Radio",
		phone = "Telefon",
		muted_players = "Stängda spelare:",
		connected = "Ansluten: ${connected}",
		muted = "Stängd: ${muted}",
		boolean_true = "Sann",
		boolean_false = "Falsk",
		target_channel = "Målkanel: ${targetChannel}",
		actual_channel = "Aktuell Kanal: ${actualChannel}",
		target_radius = "Målradius: ${targetRadius}",
		actual_radius = "Aktuell Radius: ${actualRadius}",

		invalid_server_id = "Ogiltigt server-ID.",
		failed_toggle_listen = "Misslyckades med att växla lyssnande status.",
		listeners = "Lyssnare:",
		listening_to = "Lyssnar på:",

		failed_toggle_muted = "Misslyckades med att växla dämpningsstatus.",
		toggle_muted_on = "${consoleName} är nu tystat i röstchatten.",
		toggle_muted_off = "${consoleName} är nu aktiverat i röstchatten.",

		affected_by_jammer = "Din radio verkar påverkas av en störare eller liknande.",

		listening_missing_permissions = "Spelare försökte växla sin lyssningsstatus men hade inte tillräckligt med behörighet.",
		voice_mute_missing_permissions = "Spelare försökte växla stumma status på en annan spelare men hade inte tillräckligt med behörighet."
	},

	washrooms = {
		use_sink = "[${InteractionKey}] Använd diskbänk",
		using_sink = "Använder diskbänk"
	},

	weed_field = {
		pick_weed = "Tryck ~INPUT_CONTEXT~ för att plocka växter.",
		picking_weed = "Plockar växter"
	},

	wizard = {
		action_missing_permissions = "Försökte få en spelare att utföra en trollkarlsåtgärd utan rättigheter.",
		action_radius_missing_permissions = "Försökte få spelare inom en viss radie att utföra trollkarlsåtgärder utan rättigheter.",
		run_as_missing_permissions = "Försökte köra en kommando som en annan spelare utan rättigheter.",

		menu_title = "Trollkarl",

		ragdoll_player = "Ragdoll",
		ragdoll_player_force = "Ragdoll (Med Kraft)",
		punch_player = "Kraftfull Punch",
		taze_player = "Stunpistol",
		exit_vehicle_player = "Gå ur fordon",
		yank_steering_wheel_player = "Riv ratten",
		flashbang_player = "Flashbang",
		paper_bag_player = "Papperspåse",
		ignite_player = "Tänd på eld",
		explode_player = "Explodera",
		quietly_revive_player = "Tyst återuppliva",
		play_sound = "Spela ljud",

		play_sound_knocking = "Bankningar",
		play_sound_discord = "Discord",
		play_sound_phone_call = "Telefonsamtal",
		play_sound_message = "Meddelande",
		play_sound_twitter = "Twitter",

		invalid_radius = "Ogiltig radie",
		invalid_server_id = "Ogiltigt server-id",

		ragdoll_failed = "Misslyckades med att göra spelare till ragdoll.",
		ragdoll_success = "Lyckades göra ${consoleName} till en docka.",

		punch_success = "Lyckades få ${consoleName} att slåss.",
		punch_failed = "Misslyckades med att få spelaren att slåss.",

		explode_success = "Lyckades få ${consoleName} att explodera.",
		explode_failed = "Misslyckades med att få spelaren att explodera.",

		ignite_success = "Lyckades tända eld på ${consoleName}.",
		ignite_failed = "Misslyckades med att tända eld på spelaren.",

		punch_radius_failed = "Misslyckades med att få spelare inom en ${radius} radius att slåss.",
		punch_radius_success = "Lyckades få spelare inom en ${radius} radius att slåss.",

		ragdoll_radius_success = "Lyckades göra spelare i ${radius} radius ragdoll.",
		ragdoll_radius_failed = "Det gick inte att göra spelare i radius ragdoll.",

		flashbang_success = "Lyckades flashbang ${consoleName}.",
		flashbang_failed = "Det gick inte att flashbang spelaren.",

		flashbang_radius_success = "Lyckades flashbang spelare i en ${radius} radius。",
		flashbang_radius_failed = "Det gick inte att flasha spelare i radiusen.",

		missing_command = "Kommando saknas.",
		run_as_success = "Kommando kört som ${consoleName} lyckades.",
		run_as_failed = "Misslyckades med att köra kommando som ${consoleName}.",

		no_nearby_vehicle = "Inget fordon i närheten.",
		reversing_failed = "Misslyckades med att få NPC att backa.",
		driving_forwards_failed = "Misslyckades med att få NPC att köra framåt.",
		reversing_success = "Lyckades få NPC att backa.",
		driving_forwards_success = "Lyckades få NPC att köra framåt.",

		vehicle_temp_action_missing_permissions = "Spelaren försökte köra en temporär fordonshandling utan tillräckliga rättigheter."
	},

	yoga = {
		yoga_mat_use = "[${InteractionKey}] Yoga Matta",
		yoga_mat = "Yogamatta",
		press_to_stop_yoga = "Tryck ~INPUT_CONTEXT~ för att sluta göra yoga."
	},

	zombies = {
		hold_to_continue_looting_zombie = "[${InteractionKey}] Plundra zombie",
		press_to_loot_zombie = "[${InteractionKey}] Plundra zombie",
		looting_zombie = "Plundrar zombie",
		zombie_looting_injection = "Överdriven zombieplundring! (Bypassade server-timeout, troligen användande en injector för att åstadkomma detta.)",

		zombie_trip_limit = "Du känner dig för trött för att fortsätta plundra zombies. Försök igen imorgon."
	},

	-- global/*
	entities = {
		in_no_ped_population_area = "Du är i ett område utan mänsklig befolkning.",
		not_in_no_ped_population_area = "Du befinner dig inte i ett område där inga fotgängare finns."
	},

	explosions = {
		invalid_explosion_type = "Explosivtypen `${explosionType}` är ogiltig.",
		invalid_camera_shake = "Kameraskakningen `${cameraShake}` är ogiltig.",
		invalid_damage_scale = "Skalningen av skada `${damageScale}` är ogiltig.",
		created_explosion = "Skapade en explosion av typen `${explosionTypeName}` med en skalning av skada på `${damageScale}` och kameraskakning på `${cameraShake}`.",
		create_explosion_not_developer = "Spelaren försökte skapa en explosion men de var inte en utvecklare."
	},

	functions = {
		year = "år",
		years = "år",
		month = "månad",
		months = "månader",
		day = "dag",
		days = "dagar",
		hour = "timme",
		hours = "timmar",
		minute = "minut",
		minutes = "minuter",
		second = "sekund",
		seconds = "sekunder",
		just_now = "just nu",
		unknown = "Okänd",
		flipped_vehicle_logs_title = "Vänt fordon",
		flipped_vehicle_logs_details = "${consoleName} vände ett fordon.",
		failed_to_find_ground = "Kunde inte hitta mark, teletransporterade dig till närmaste väg.",

		time_in = "om ${time} ${unit}",
		time_ago = "${time} ${unit} sedan"
	},

	states = {
		invalid_network_id = "Ogiltigt nätverks-ID.",
		debug_states_failed = "Misslyckades med att felsöka denna enhets tillstånd.",
		no_states = "Denna enhet har inga tillstånd inställda.",
		printed_states = "Tillstånd för enhet ${networkId} skrivna.",

		get_entity_states_missing_permissions = "Spelaren försökte hämta ett specifikt enhetstillstånd utan korrekta behörigheter."
	},

	-- illegal/*
	corner = {
		corner_ped = "HörnPeds - ${cornerPedDistance}m (${cornerPedTimer})",
		corner_ped_title = "HörnPeds",
		corner_ped_already_active = "Det finns redan en hörnped som väntar på dig.",
		no_node_found = "Inga närliggande noder för fotgängare hittades.",
		no_sell_area = "Du befinner dig inte på en plats där fotgängare är intresserade av droger.",
		inside_areas_none = "Inomhusområden: Inga",
		inside_areas = "Inomhusområden: ${insideAreas}",
		not_able_to_sell = "Du kan inte sälja just nu. Gå runt en stund innan du försöker sälja igen."
	},

	stockade = {
		dispatch = "[Dispatch]",
		status_1a = "10-78, En Stockade har tryckt på nödknappen och begär backup vid ${streetName}.",
		status_1b = "10-78, En Stockade har tryckt på nödknappen och begär backup vid ${streetName} nära ${crossingRoad}.",
		status_2a = "10-78, Ett larm har detekterat att en Stockade håller på att brytas upp och backup begärs på ${streetName}.",
		status_2b = "10-78, Ett larm har detekterat att en Stockade håller på att brytas upp och backup begärs på ${streetName} nära ${crossingRoad}.",
		status_3a = "10-78, Ett larm har detekterat att en Stockade har fått sina dörrar olagligt öppnade och backup begärs på ${streetName}.",
		status_3b = "10-78, Ett larm har detekterat att en Stockade har fått sina dörrar olagligt öppnade och backup begärs på ${streetName} nära ${crossingRoad}.",
		grab_valuables = "[${InteractionKey}] Ta värdesaker (${valuablesRemaining} kvar)",
		grabbing_valuables = "Tar värdesaker",
		use_advanced_lockpick = "[${InteractionKey}] Använd avancerad låspicka",
		lockpicking_stockade = "Låspickning av förrådsvagn",

		status_blip = "Förrådsvagn",

		stockade_reward_logs_title = "Förrådsvagnsbelöning",
		cash_pickup_logs_details = "${consoleName} plockade upp $${cashAmount} i kontanter.",
		item_pickup_logs_details = "${consoleName} plockade upp 1x ${itemName}.",

		reward_diamonds = "Du plockade upp en diamant.",
		reward_gold_bar = "Du har tagit en guldbar.",
		reward_cash = "Du har tagit lite kontanter.",
		reward_keycard_red = "Du har tagit en röd nyckelkort.",

		stockade_logs_title = "Stockade Aktiverad",
		stockade_logs_details = "${consoleName} aktiverade en stockade."
	},

	-- interfaces/*
	interface = {
		no_interfaces_are_focused = "Inga gränssnitt är inställda som fokuserade.",
		interfaces_focused = "Fokuserade gränssnitt:\n${interfacesFocused}"
	},

	-- jobs/*
	bean_machine = {
		start_delivery = "Starta en leverans.",
		press_to_start_delivery = "Tryck på ~g~${InteractionKey} ~w~för att starta en leverans.",
		already_in_delivery = "Du har redan en aktiv leverans.",
		not_bean_machine_employee = "Du måste vara anställd på Bean Machine för att starta en leverans.",
		finish_delivery = "Avsluta leveransen.",
		press_to_finish_delivery = "Tryck på ~g~${InteractionKey} ~w~för att avsluta leveransen.",
		started_delivery = "Leveransen till ${deliveryName} har börjat. Platsen har markerats på din karta.",
		finished_delivery = "Leveransen till ${deliveryName} har slutförts. Du fick $${deliveryPrice} och $${distanceBonus} i dricks, totalt $${totalPrice}.",
		error_finishing_delivery = "Ett fel uppstod när du försökte avsluta din leverans.",
		finished_delivery_title = "Leverans Avslutad på Bean Machine",
		finished_delivery_details = "${consoleName} slutförde en leverans på Bean Machine och fick betalt $${deliveryPrice} och $${distanceBonus} för dricks, vilket ger totalt $${totalPrice}.",
		delivery_blip = "Bean Machine Leverans"
	},

	burger_shot = {
		start_delivery = "Starta en leverans.",
		press_to_start_delivery = "Tryck ~g~${InteractionKey} ~w~för att starta en leverans.",
		already_in_delivery = "Du har redan en aktiv leverans.",
		not_burger_shot_employee = "Du måste vara anställd på Burger Shot för att starta en leverans.",
		finish_delivery = "Avsluta leveransen.",
		press_to_finish_delivery = "Tryck ~g~${InteractionKey} ~w~för att avsluta leveransen.",
		started_delivery = "En leverans till ${deliveryName} har påbörjats. Platsen har markerats på din karta.",
		finished_delivery = "Leveransen till ${deliveryName} har avslutats. Du har fått $${deliveryPrice} och $${distanceBonus} i dricks, totalt $${totalPrice}.",
		error_finishing_delivery = "Ett fel uppstod när du försökte avsluta leveransen.",
		finished_delivery_title = "Burger Shot-leverans avslutad",
		finished_delivery_details = "${consoleName} slutförde en leverans från Burger Shot och fick $${deliveryPrice} och ${distanceBonus} i dricks, vilket ger totalt $${totalPrice}.",
		delivery_blip = "Burger Shot Leverans"
	},

	duty = {
		toggle_duty_status_no_permissions = "Spelaren försökte sätta på sig tjänstestatusen via kommando utan behörighet.",

		duty_status_on = "Tjänstestatusen har satts på.",
		duty_status_off = "Tjänstestatusen har stängts av.",
		duty_status_failed = "Misslyckades med att sätta på tjänstestatusen.",

		training_status_on = "Utbildningsläget har aktiverats.",
		training_status_off = "Träningsläge avslaget.",
		training_status_failed = "Kunde inte slå av träningsläget.",

		emergency_call = "Det finns ett nödsamtal. Tryck på ENTER för att ta emot det.",

		toggled_operator_status_on = "Operatorstatus påslagen.",
		toggled_operator_status_off = "Operatorstatus avslagen."
	},

	job_center = {
		life_invader = "Life Invader",
		life_invader_blip = "Ansök om jobb",
		ui_close_menu = "Stäng menyn",
		press_to_browse_jobs = "Tryck på ~INPUT_CONTEXT~ för att bläddra bland jobb.",
		change_job = "Byt jobb: ${jobName}",
		job_unemployed = "Arbetslös",
		job_transportation = "Lastbilschaufför",
		job_taxi = "Taxichaufför",
		job_journalist = "Journalist",
		job_government = "Sophämtningspersonal",
		job_mechanic = "Bärgare",
		job_delivery = "Utleveransjobb",
		changed_job_already_set_to_job = "Ditt yrke är redan inställt på ${jobName}.",
		changed_job_success = "Lyckades ställa in ditt yrke till ${jobName}.",
		changed_job_success_go_to_coords = "Lyckades ställa in ditt yrke till ${jobName}. Följ vägbeskrivningen på din karta för att komma igång.",
		changed_job_failure = "Ett fel uppstod när försökte ställa in ditt yrke till ${jobName}.",
		changed_job_title = "Bytte jobb",
		changed_job_details = "${consoleName} har bytt jobb till `${jobName}`."
	},

	jobs = {
		job_refreshed = "Jobb uppdaterat.",
		something_went_wrong = "Något gick fel.",
		user_does_not_have_sent_character_loaded = "Användaren har inte laddat sitt karaktär.",
		user_has_no_character_loaded = "Användaren har ingen karaktär laddad.",
		user_not_found = "Användaren hittades inte på servern.",
		invalid_character_id = "Ogiltig karaktär id-parameter har skickats.",
		invalid_license_identifier = "Ogiltig licensidentifierare-parameter har skickats."
	},

	police = {
		aim_assist_enabled = "Ditt sikte kommer nu vara utrustat med fantastiska förmågor.",
		aim_assist_disabled = "Du kommer nu sikta sämre än brottslingar/slynglar igen. Det rekommenderas att återaktivera siktesstödet omedelbart.",
		you_are_not_police = "Denna funktion är reserverad för polisen, inte för brottslingar/slynglar.",

		undercover_enabled = "Du är nu under täckmantel.",
		undercover_disabled = "Du är inte längre under täckmantel.",

		npc_vehicle = "Detta fordon tillhör inte en spelare.",
		not_in_a_vehicle = "Du kör för närvarande inte ett fordon.",
		invalid_minutes = "Ogiltig tid (mellan 1 minut och 12 timmar).",

		not_on_duty = "Du är inte i tjänst.",
		failed_impound = "Misslyckades att beslagta fordonet.",
		not_near_impound = "Du är inte nära polisstationens beslagtagning.",
		impound_success = "Lyckades beslagta fordonet med registreringsnummer `${plate}` i ${minutes} minuter.",

		access_impound = "[${InteractionKey}] Tillgång till beslagtagning",
		impound_lot = "Beslagtagning",
		exit_impound = "Avsluta beslagtagning",
		no_impounded_vehicles = "Det finns inga fordon för tillfället på beslagtagning.",
		failed_impound_list = "Misslyckades att hämta beslagtagen fordonlista.",
		impound_owner = "Ägare: #${cid}",
		withdraw_success = "Fordonet har tagits ut från polisens beslag.",
		failed_withdraw = "Det gick inte att ta ut fordonet.",
		vehicle_not_impounded = "Fordonet med detta ID är för närvarande inte beslagtaget av polisen.",

		impound_logs_title = "Polis beslag",
		impound_logs_details = "${consoleName} beslagtog ett fordon med registreringsnummer ${plate} och höll det i beslag i ${minutes} minuter.",

		impound_withdraw_logs_title = "Uttag från polisens beslag",
		impound_withdraw_logs_details = "${consoleName} tog ut ett fordon med registreringsnummer ${plate} från polisens beslag (Tid kvar: ${timeLeft}).",

		none = "Ingen",
		active = "Aktiv",
		not_active = "Inte aktiv",
		active_robberies = "\nAktivt butiksrån: ${store}.\nAktiv bankrån: ${bank}\nAktivt juvelrån: ${jewelry}",

		failed_dispatch = "Det gick inte att skicka dispatch-meddelandet.",
		dispatch_title = "[Dispatch]",
		dispatch_message = "${author}: ${message}",
		invalid_dispatch_message = "Ogiltigt dispatch-meddelande (maximalt 255 tecken).",
		in_training = "Du är för närvarande i träningsläge.",
		cannot_use_dispatch = "Du kan inte använda dispatch just nu.",

		dispatch_message_logs_title = "Dispatch-meddelande",
		dispatch_message_logs_details = "${consoleName} skickade en dispatchmeddelande: `${message}`.",

		no_keys = "Du har inte nycklarna till fordonet.",
		invalid_drive_mode = "Ogiltigt körläge.",
		not_in_police_vehicle = "Du sitter inte i en polisbil.",
		drive_mode_too_fast = "Du åker för fort för att byta körläge.",
		drive_mode_already_set = "Din körläge är redan inställt på `${mode}`.",
		drive_mode_failed = "Misslyckades med att ändra körläge.",
		drive_mode_set = "Körläget har ställts in till `${mode}`.",

		mode_s = "Sport-läge",
		mode_d = "Kör-läge",

		drive_mode_logs_title = "Körläge Ändrat",
		drive_mode_logs_details = "${consoleName} har ändrat sitt körläge till `${mode}`."
	},

	state = {
		license_heli = "Helikopter",
		license_fw = "Fastvingad",
		license_cfi = "Certifierad flyginstruktör",
		license_hw = "Tungt fordon",
		license_hwh = "Tung helikopter",
		license_perf = "Prestanda",
		license_utility = "Användning",
		license_commercial = "Kommeriell",
		license_management = "Ledning",
		license_military = "Militär",
		license_special = "Särskilda luftfartyg",
		license_hunting = "Jakttillstånd",
		license_fishing = "Sportfisketillstånd",
		license_weapon = "Vapenlicens",
		gave_character_license = "Gav ${characterName} licens för `${licenseLabel}`.",
		character_already_has_license = "${characterName} har redan licens för `${licenseLabel}`",
		removed_character_license = "Tog bort licensen `${licenseLabel}` från ${characterName}.",
		character_does_not_have_license = "${characterName} har inte licens för `${licenseLabel}`",
		license_not_found = "Licensen `${licenseName}` hittades inte.",
		user_not_found_with_character_id = "Användaren hittades inte med karaktärsid `${characterId}`.",
		no_license_added = "Ingen licens tillagd.",
		invalid_character_id = "Det tillagda karaktärs-ID:t är ogiltigt.",
		no_character_id_added = "Inget karaktärs-ID tillagt.",
		your_licenses_are = "Dina licenser är följande: ${licenses}",
		player_licenses_are = "${characterName} har följande licenser: ${licenses}",
		you_have_no_licenses = "Du har inga licenser.",
		player_has_no_licenses = "${characterName} har inga licenser.",
		failed_to_get_licenses = "Kunde inte hämta licenser.",
		license_list = "Tillgängliga licenser: ${licenseList}."
	},

	tow = {
		press_to_access_spawner = "Tryck ~INPUT_CONTEXT~ för att komma åt fordonsspawnern.",
		tow_vehicles = "Bogsera fordon",
		vehicle_list = "Fordon Lista",
		park_vehicle = "Parkera fordon",
		parked_vehicle = "Parkera fordon.",
		no_vehicle_to_park = "Det finns inget fordon att parkera.",
		close_menu = "Stäng meny",
		purchased_vehicle = "Köpt fordon.",
		shop_on_timeout = "Fordonsshopen har en time-out. Försök igen senare.",
		spawn_area_not_clear = "Spawnsområdet är inte tomt.",
		purchase_funds = "Otillräckliga pengar.",
		return_button = "Återgå",

		toggled_messages_on = "Meddelanden är på.",
		toggled_messages_off = "Meddelanden är av."
	},

	weazel_news = {
		press_to_access_spawner = "Tryck ~INPUT_CONTEXT~ för att öppna fordonsspawneren.",
		weazel_news = "Weazel News",
		vehicle_list = "Fordonlista",
		close_menu = "Stäng Meny",
		return_button = "Tillbaka",
		park_vehicle = "Parkera Fordon",
		parked_vehicle = "Fordon parkerat.",
		no_vehicle_to_park = "Det finns inget fordon att parkera.",
		spawned_vehicle = "Fordon spawnat.",
		spawner_on_timeout = "Vehiclespawner är på timeout. Försök igen senare.",
		spawn_area_not_clear = "Spawn-området är inte fritt."
	},

	-- menus/*
	hydrogen = {
		number1_of_number2 = "${number1} av ${number2}"
	},

	native = {
		player_label = "[${source}] ${name}"
	},

	-- vehicles/*
	alert = {
		triggered_vehicle_alert = "Fordonslarm utlöst vid ${locationLabel} för fordon med registreringsnummer `${plateText}`.",
		vehicle_alert_blip = "Fordonslarm"
	},

	boats = {
		anchor_disconnected = "Ankaret har kopplats från framgångsrikt.",
		anchored_successfully = "Ankaret har utplacerats framgångsrikt.",
		removing_anchor = "Kopplar från ankaret",
		deploying_anchor = "Utplacerar ankar",
		no_vehicle_nearby = "Det finns ingen båt i närheten som du kan ankra vid."
	},

	car_wash = {
		use_car_wash = "Tryck ~INPUT_CONTEXT~ för att använda biltvätten. Kostnaden är $${cost}.",
		stop_car_to_wash = "Stanna fordonet för att använda biltvätten.",
		vehicle_already_clean = "Detta fordon är för rent för att tvättas.",
		car_wash = "Biltvätt",
		air_unit_damaged = "Denna luftburen enhet är skadad.",
		air_unit_not_enough_cash = "Du har inte tillräckligt med pengar för att använda denne luftburena enhet.",
		air_unit_exit_vehicle = "Lämna fordonet för att använda denna luftburna enhet.",
		air_unit_press_to_use = "Tryck på ~g~${SeatEjectKey} ~w~för att använda denna luftburna enhet för $${cost}.",
		air_unit_purchase_cleaning_kit = "Tryck på ~g~${InventoryKey} ~w~för att köpa en rengöringskit.",
		cleaning_vehicle = "Rengöringsfordon",
		not_enough_money = "Du har inte tillräckligt med pengar för att använda Luftfordonet.",
		vehicle_not_in_range = "Fordonet rörde sig för långt bort för att rengöras."
	},

	carrier = {
		use_catapult = "Tryck på ~INPUT_CONTEXT~ för att fästa i katapulten.",
		use_launch = "Tryck på ~INPUT_VEH_HANDBRAKE~ för att starta."
	},

	damage = {
		vehicle = "Fordon-ID: ${entity}",
		general = "Allmän: ${value}",
		body = "Kaross: ${value}",
		engine = "Motor: ${value}",
		petrol_tank = "Tank: ${value}",
		temperature = "Temperatur: ${value}",
		tracked_vehicle = "Bandfordon",

		debug_vehicle_on = "Debug för fordon påslaget.",
		debug_vehicle_off = "Debug för fordon avstängt."
	},

	fuel = {
		exit_to_fuel = "Stig ur fordonet för att tanka.",
		press_to_fuel = "Tryck ~g~${InteractionKey} ~w~för att tanka fordonet.",
		fuel_pump_text = "Bränslekostnad: $${fuelCost}~n~Tryck ~g~E ~w~för att avsluta tankning.",
		vehicle_text = "Bränslenivå: ${fuelLevel}%",
		tank_full = "Tanken är full.",
		vehicle_busy = "Det närliggande fordonet är upptaget.",
		purchase_jerry_can = "Tryck på ~g~${InventoryKey} ~w~för att köpa en jerrykan.",
		gas_station = "Bensinstation",
		petrolcan_fuel_text = "Bensinmängd kvar: ${petrolAmount}%~n~Tryck på ~g~E ~w~för att sluta tanka.",
		player_busy = "Du är upptagen med något annat.",
		fuel_level_set_to = "Bensinnivån har satts till `${fuelLevel}`.",
		not_in_a_vehicle = "Du är inte i ett fordon.",
		vehicle_engine_on = "Motorn är fortfarande igång.",

		set_fuel_no_permissions = "Spelaren försökte sätta ett fordon's bensinnivå utan rätt behörighet.",

		vehicle_exploded_logs_title = "Fordon exploderade",
		vehicle_exploded_logs_details = "${consoleName} tankade en bil och utlöste en explosion på grund av en igångsatt motor."
	},

	gadgets = {
		helicopter_camera_vehicle_info_metric = "Hastighet: ${speed} km/h\nModell: ${model}\nReg. nummer: ${plate}",
		helicopter_camera_vehicle_info_imperial = "Hastighet: ${speed} mp/h\nModell: ${model}\nReg. nummer: ${plate}",
		helicopter_camera_altitude = "${altitude}ft över marken",
		helicopter_camera_altitude_asl = "${altitude}ft över havsytan",
		unknown = "Okänt"
	},

	garages = {
		garage_empty = "Ditt garage är tomt!",
		impound_lot = "Förråd",
		police_impound = "Polisförråd",
		engine = "Motor",
		body = "Kaross",
		vehicle_in = "In",
		vehicle_out = "Ut",
		vehicle_at_police_impound = "Ditt fordon är för tillfället beslagtaget av polisen.",
		vehicle_at_impound = "Ditt fordon finns på förrådet.",
		waypoint_to_impound = "En vägbeskrivning till förrådet har markerats på GPS:en.",
		unable_to_withdraw = "Det går inte att hämta ut ditt fordon då det är placerat på ${location}.",
		waypoint_to_vehicle = "En vägbeskrivning till ditt fordon har markerats på GPS:en.",
		vehicle_currently_at = "Ditt fordon kan för närvarande hittas på ${location}.",
		vehicle_in_garage = "Ditt fordon finns i ${garageName}.",
		insufficient_funds = "Du har inte tillräckligt med pengar för att ta ut detta fordon.",
		error_withdrawing = "Ett fel uppstod när du försökte ta ut ditt fordon.",
		withdraw_timeout = "Vänligen vänta ett tag innan du försöker ta ut ett annat fordon.",
		garage_in_use = "Detta garage används för närvarande, vänligen vänta en stund.",
		invalid_model = "Ogiltig eller okänd fordonsmodell.",
		vehicle_in_the_way = "Det är fordon som blockerar spawn punkten.",
		vehicle_is_out = "Ditt fordon är redan ute.",
		vehicle_stored = "Ditt fordon har lagrats.",
		error_storing = "Misslyckades att lagra fordonet. Är fordonet ditt?",
		no_nearby_vehicle = "Inga fordon i närheten hittades.",
		no_vehicles_to_retrieve = "Du har inga fordon att hämta!",
		vehicle_retrieved = "Fordonet har hämtats framgångsrikt.",
		error_retrieving = "Ett fel uppstod när du försökte hämta ditt fordon.",
		not_enough_balance_to_retrieve = "Du har inte tillräckligt med balans på något av dina konton för att hämta detta fordon.",
		press_to_access = "Tryck ~INPUT_CONTEXT~ för att komma åt garaget.",
		ui_return = "Tillbaka",
		ui_vehicle_list = "Fordonlista",
		ui_store_vehicle = "Stäng av fordonet",
		ui_vehicle_sell = "Sälj fordon",
		ui_retrieve_vehicle = "Hämta fordon",
		ui_close_menu = "Stäng menyn",
		garage_letter = "Garage ${letter}",
		garage_emergency = "${type}-garage",
		emergency_type_1 = "PD",
		emergency_type_2 = "EMS",
		no_vehicles_impounded = "Inga av dina fordon är beslagtagna!",
		you_must_retrieve_this_vehicle = "Du måste hämta detta fordon för att få tillgång till det.",
		garage = "Garage",
		retrieved_vehicle_logs_title = "Återlämnat fordon",
		retrieved_vehicle_logs_details = "${consoleName} återlämnade fordonet med registreringsnummer `${plate}` för ${price}.",

		state_loading_model = "Laddar modell...",
		state_withdrawing = "Hämtar...",

		state_retrieve_searching = "Söker...",
		state_retrieving = "Hämtar...",

		state_storing = "Lagrar...",

		state_loading = "Laddar...",

		vehicle_weight = "Vikt: ${weight}",
		last_garage_letter = "Senast - Garage ${letter}",
		last_garage_impound = "Senast - Beslagtagelseplats",
		no_last_garage_letter = "Inget senaste garage",

		purchase_vehicle = "Tryck ~INPUT_CONTEXT~ för att komma åt butiken",
		emergency_shop = "Fordonbutik",
		exit_shop = "Avsluta butiken",
		purchase_success = "${label} som du just köpt har lagts till i ditt garage.",
		purchase_failed = "Misslyckades med att köpa fordon.",
		already_owned = "Du äger redan denna fordonsmodell.",
		maximum_owned = "Du kan inte äga fler än 6 fordon.",
		not_enough_money = "Du har inte tillräckligt med pengar för att köpa detta fordon.",

		sold_vehicle = "Sålde ${label} för $${price}.",
		failed_sell_vehicle = "Kunde inte sälja fordonet.",

		sold_vehicle_logs_title = "Såldes fordon",
		sold_vehicle_logs_details = "${consoleName} sålde en `${modelName}` nödfordon med registreringsnummer `${plate}` för ${price}.",

		purchased_vehicle_logs_title = "Inköpt fordon",
		purchased_vehicle_logs_details = "${consoleName} köpte en `${modelName}` nödfordon för ${price} (Registreringsnummer: `${plate}`).",

		-- NOTE: `toggle_garage_debug` command:
		toggle_garage_debug_toggled_on = "Toggelade igång garage felsökning.",
		toggle_garage_debug_toggled_off = "Toggelade av garage felsökning."
	},

	handlings = {
		set_handling_override_not_super_admin = "Spelaren försökte ändra fordonsinställningar utan korrekta behörigheter.",
		remove_handling_override_not_super_admin = "Spelaren försökte ta bort en fordonsinställnings-överlagring utan korrekta behörigheter."
	},

	keys = {
		no_nearby_player = "Ingen spelare i närheten hittades.",
		no_nearby_vehicle = "Inget fordon i närheten hittades.",
		no_keys_for_vehicle = "Du har inte nycklarna till detta fordon.",
		vehicle_locked = "Fordon låst",
		vehicle_unlocked = "Fordon olåst",
		h_to_hotwire = "[H] Sabotera",
		received_keys = "Mottog nycklar för fordon med registreringsnummer ${plate}.",
		received_keys_no_plate = "Mottog nycklar för fordon.",
		you_are_not_in_a_vehicle = "Du sitter inte i ett fordon.",
		you_are_in_a_vehicle = "Du sitter för tillfället i ett fordon.",
		hotwired_vehicle_with_plate_number = "Startade upp fordon med registreringsnummer '${plateNumber}' utan nycklar.",
		unable_to_hotwire_vehicle = "Kunde inte starta upp fordonet.",
		picked_up_keys = "Plockade upp nycklarna för `${plate}`.",
		invalid_server_id = "Ogiltigt server-ID.",
		hotwired_vehicle_for_player = "Aktiverade fordonsstarten för ${displayName} i fordonet de befinner sig i."
	},

	modifications = {
		wheels_reset = "Däcken återställs.",
		wheels_already_reset = "Däcken befinner sig redan i deras standardposition.",
		wheels_modified = "Hjulen har modifierats.",
		wheels_none_specified = "Inga hjul angivna.",
		wheels_none_valid_specified = "Inga giltiga hjul angivna.",
		not_in_a_car = "Du är inte i en bil.",
		invalid_value = "Ogiltigt värde."
	},

	plates = {
		plate_number_is_available = "Registreringsnumret `${plateNumber}` är tillgängligt.",
		plate_number_is_not_available = "Registreringsnumret `${plateNumber}` är inte tillgängligt.",
		missing_valid_plate_number = "Saknar ett giltigt parameter för 'registreringsnummer'.",
		missing_valid_vehicle_id = "Saknar ett giltigt parameter för 'fordons-id'.",
		database_error = "Ett back-end databasfel inträffade.",
		no_custom_plate_package = "Du har inte en paket för anpassad registreringsskylt. Besök vår webbutik för mer information!",
		api_error = "Vårt back-end API returnerade ett fel.",
		api_not_available = "Vårt back-end API är inte tillgängligt.",
		vehicle_does_not_belong_to_player = "Fordon med ID `${vehicleId}` tillhör inte dig.",
		vehicle_id_does_not_exist = "Fordon med ID `${vehicleId}` existerar inte.",
		you_have_no_character_loaded = "Du har inget laddat karaktär.",
		vehicle_plate_changed = "Bytte registreringsnummer på fordonet med ID ${vehicleId} till ${plateNumber}.",

		you_are_not_in_a_vehicle = "Du sitter inte i ett fordon.",
		fake_plate_active = "Genererade framgångsrikt en falsk registreringsskylt för ditt fordon.",
		fake_plate_inactive = "Återställde fordonets registreringsskylt till original.",

		fake_plate_missing_permissions = "Spelaren försökte använda en falsk registreringsskylt-kommando utan tillräckliga behörigheter."
	},

	runways = {
		you_are_not_in_a_plane = "Du sitter inte i ett flygplan.",
		ifr_disabled = "IFR har inaktiverats.",
		ifr_enabled = "IFR har aktiverats."
	},

	sirens = {
		sirens_muted_on = "Alla sirener är nu tysta.",
		sirens_muted_off = "Alla sirener är nu på."
	},

	spawner = {
		press_to_access_spawner = "Tryck ~INPUT_CONTEXT~ för att få åtkomst till fordonsspawner.",

		parked_vehicle = "Fordonet har parkerats.",

		spawner_burger_shot = "Burger Shot Leveransfordon",
		spawner_bean_machine = "Bean Machine Leveransfordon",
		spawner_weazel_news = "Weazel News Fordon",
		close_menu = "Stäng Meny",
		vehicle_list = "Fordon Lista",
		park_vehicle = "Parkerad Fordon",
		return_button = "Tillbaka",

		failed_spawn = "Kunde inte spawn:a fordonet.",
		failed_area = "Området är inte klart.",
		failed_job = "Du har inte rätt yrke för detta.",
		failed_generic = "Något gick fel."
	},

	vehicles = {
		flip_flipping = "Flippar fordonet",
		flip_unable = "Du kan inte flip:a ett fordon så länge det finns personer i det.",
		vehicle_busy = "Vänligen vänta, fordonet är upptaget!",
		hold_to_eject = "Håll för att kasta ut",
		taking_keys = "Tar nycklarna",
		belt_on = "Säkerhetsbälte på",
		belt_off = "Säkerhetsbälte av",
		mileage = "Mätarställning",
		vehicle_mileage_amount = "Detta fordon har gått ${miles} miles.",
		not_in_driver_seat = "För att kontrollera körsträckan måste du sitta i förarsätet.",
		not_driving_vehicle = "Du kör inte ett fordon.",
		vehicle_locked = "Fordonet är låst.",
		gear_animation_enabled = "Växellådsanimationer (och ljud) har nu aktiverats.",
		gear_animation_disabled = "Växellådsanimationer (och ljud) har nu inaktiverats.",
		manual_gears_enabled = "Manuellt växlingsläge har nu aktiverats.",
		manual_gears_disabled = "Manuellt växlingsläge har nu inaktiverats.",
		manual_gear_set_to = "Växeln är satt till ${gearId}.",
		speed_limiter_set_to_metric = "Fartbegränsaren kommer nu begränsa hastigheten till ${speed} km/h.",
		speed_limiter_set_to_imperial = "Fartbegränsaren kommer nu begränsa hastigheten till ${speed} mp/h.",
		speed_limiter_reset = "Fartbegränsaren kommer nu begränsa hastigheten till den hastighet som fordonet var på när den aktiverades.",
		speed_limiter_on_metric = "Fartbegränsaren är inställd på ${speed} km/h.",
		speed_limiter_on_imperial = "Fartbegränsaren är inställd på ${speed} mp/h.",
		speed_limiter_on_plane_metric = "Fartbegränsaren för planet är inställd på ${speed} km/h och ${altitude} meter.",
		speed_limiter_on_plane_imperial = "Hastighetsbegränsaren är inställd på ${speed} mp/h och ${altitude} ft.",
		speed_limiter_on_helicopter_metric = "Hastighetsbegränsaren är inställd på ${altitude} meter (hover).",
		speed_limiter_on_helicopter_imperial = "Hastighetsbegränsaren är inställd på ${altitude} ft (hover).",
		autopilot_metric = "~g~Autopilot~s~: ${altitude} meter ~c~/~s~ ${speed} km/h",
		autopilot_imperial = "~g~Autopilot~s~: ${altitude} ft ~c~/~s~ ${speed} knop",
		you_are_cuffed = "Du är handfängslad.",
		belt_is_on_and_vehicle_is_locked = "Ditt bälte är på och fordonet är låst.",
		belt_is_on = "Ditt bälte är på.",
		vehicle_is_locked = "Fordonet är låst.",

		nearest_player_not_vehicle = "Närmaste spelaren är inte i ett fordon.",
		no_dead_player_nearby = "Det finns ingen död spelare i ett fordon i närheten av dig.",
		dragging_out_player = "Dra ut spelaren ur fordonet.",
		vehicle_too_fast = "Fordonet rör sig för fort.",

		modifying_brakes = "Ändrar bromsar",
		toggle_brakes_on = "Togglat av bromsarna.",
		toggle_brakes_off = "Togglat på bromsarna.",
		failed_modify_brakes = "Misslyckades med att ändra bromsar.",

		toggle_disabled_brakes_no_permissions = "Spelaren försökte aktivera inaktiverade bromsar via kommandot utan korrekta behörigheter.",

		-- NOTE: `add_vehicle` command:
		add_vehicle_not_super_admin = "Spelaren försökte lägga till ett fordon i någons garage utan korrekta behörigheter.",
		add_vehicle_added_vehicle_for_everyone = "Lade till fordon med modellnamn `${modelName}` för alla.",
		add_vehicle_added_vehicle_for_player = "Lade till fordon med modellnamn `${modelName}` för ${consoleName}.",
		add_vehicle_added_vehicle = "Lade till fordon med modellnamn `${modelName}`.",
		add_vehicle_character_not_loaded = "Målklienten hade inga laddade karaktärer.",
		add_vehicle_target_user_not_found = "Målanvändaren kunde inte hittas.",
		add_vehicle_invalid_input = "Ogiltigt inmatning.",
		add_vehicle_no_permissions = "Inga behörigheter.",
		add_vehicle_user_not_found = "Användaren kunde inte hittas.",
		add_vehicle_invalid_player = "Det fanns inga spelare med server-ID ${serverId}.",
		add_vehicle_invalid_model_name = "Modellnamnet ${modelName} är inte en giltig modell.",
		add_vehicle_no_model_name = "Inget modellnamn tillagt.",

		added_vehicle_for_everyone_logs_title = "Lade till fordon för alla",
		added_vehicle_for_everyone_logs_details = "${consoleName} lade till ett fordon med modellnamnet `${modelName}` i allas garages.",
		added_vehicle_for_player_logs_title = "Lade till fordon för en spelare",
		added_vehicle_for_player_logs_details = "${consoleName} lade till ett fordon med modellnamnet `${modelName}` i ${targetConsoleName}s garage.",
		added_vehicle_logs_title = "Lade till fordon",
		added_vehicle_logs_details = "${consoleName} lade till ett fordon med modellnamnet `${modelName}` i deras garage.",

		-- NOTE: `toggle_vehicle_weapons` command:
		toggle_vehicle_weapons_not_super_admin = "Spelaren försökte växla fordonsvapen på ett fordon utan rättigheter.",
		toggled_vehicle_weapons_on = "Växlade på fordonets vapen.",
		toggled_vehicle_weapons_off = "Växlade av fordonets vapen.",
		toggled_vehicle_weapons_vehicle_is_not_networked = "Fordonet du sitter i är inte nätverksanslutet.",
		toggled_vehicle_weapons_not_in_a_vehicle = "Du sitter inte i ett fordon.",
		toggled_vehicle_weapons_target_user_not_found = "Målanvändaren hittades inte.",
		toggled_vehicle_weapons_player_not_in_a_vehicle = "Målanvändaren sitter inte i ett fordon.",
		toggled_vehicle_weapons_for_player_on = "Aktiverade fordonets vapen för ${consoleName}.",
		toggled_vehicle_weapons_for_player_off = "Avaktiverade fordonets vapen för ${consoleName}.",
		toggled_vehicle_weapons_for_everyone = "Aktiverade fordonets vapen för alla.",

		toggled_vehicle_weapons_on_logs_title = "Vapen på fordon aktiverat",
		toggled_vehicle_weapons_on_logs_details = "${consoleName} aktiverade vapnen för ett fordon.",
		toggled_vehicle_weapons_off_logs_title = "Vapen på fordon avaktiverat",
		toggled_vehicle_weapons_off_logs_details = "${consoleName} stängde av vapnen för ett fordon.",
		toggled_vehicle_weapons_on_for_player_logs_title = "Aktiverade Fordonsvapen för Spelare",
		toggled_vehicle_weapons_on_for_player_logs_details = "${consoleName} aktiverade vapnen för ${targetConsoleName}'s fordon.",
		toggled_vehicle_weapons_off_for_player_logs_title = "Stängde av Fordonsvapen för Spelare",
		toggled_vehicle_weapons_off_for_player_logs_details = "${consoleName} stängde av vapnen för ${targetConsoleName}'s fordon.",
		toggled_vehicle_weapons_for_everyone_logs_title = "Togglat For fordonsskjutvapen för alla",
		toggled_vehicle_weapons_for_everyone_logs_details = "${consoleName} aktiverade skjutvapen för alla fordon.",

		breaking_window = "Krossa Fönster",
		not_near_window = "Du är inte tillräckligt nära ett fönster.",
		not_near_vehicle = "Inget fordon i närheten.",

		wheelie_no_vehicle = "Inget fordon",
		wheelie_engine_off = "Motor avstängd",
		wheelie_idling = "Tomgång",
		wheelie_ready = "Klar",
		wheelie_boosting = "Boostar",

		invalid_power_level = "Ogiltig kraftnivå (1 - 5)."
	},

	vin_numbers = {
		cad_title = "[CAD]",

		checking_vin = "Kontrollerar VIN",
		not_driver = "Du kör för närvarande inte ett fordon.",
		failed_vin_get = "Kunde inte hämta VIN.",
		vin_checked = "VIN-numret för detta fordon är `${vin}`.",
		vin_scratched = "VIN-numret har blivit repat.",

		looking_up_vin = "Söker efter VIN",
		invalid_vin = "Ogiltigt eller saknat VIN-nummer.",
		failed_vin_lookup = "Kunde inte hitta VIN-nummer.",
		vin_lookup_details = "VIN `${vin}` är registrerat för fordon med registreringsskylt `${plate}` som ägs av `${fullName}`.",
		vin_lookup_unregistered = "VIN-numret `${vin}` är inte registrerat till något fordon."
	},

	wheels = {
		press_to_slash = "[${InteractionKey}] Håll för att skära",
		hold_to_slash = "Håll för att skära",
		slashing_tire = "Skär däcket"
	},

	-- weapons/*
	ammo = {
		unboxing_ammo = "Öppnar ammunitionslåda",
		failed_unbox = "Misslyckades med att öppna ammunitionslådan.",
		failed_unbox_full = "Du kan inte bära mer av denna ammunitionstypen.",
		unbox_success = "Lyckades att öppna ${amount}x ${ammoType}.",
		unbox_success_box = "Lyckades att öppna ammunitionslåda.",

		type_pistol = "pistol ammunition",
		type_smg = "sub ammunition",
		type_rifle = "gevärammunition",
		type_sniper = "snipermunition",
		type_shotgun = "12 gauge ammunition",
		type_stungun = "taserpatroner",

		fill_ammo_success = "Fyllde på ammunitionen framgångsrikt.",
		fill_ammo_failed = "Det gick inte att fylla på ammunitionen."
	},

	weapons = {
		pick_up_fire_extinguisher = "Håll ~INPUT_CONTEXT~ för att plocka upp brandkårsutrustning.",
		press_to_drop_fire_extinguisher = "Tryck på ~INPUT_FRONTEND_RRIGHT~ för att släppa brandkårsutrustning.",
		illegal_fire_extinguisher_model = "Försökte radera brandkårsutrustning för alla klienter med en modell som inte var en brandkårsutrustning.",

		airsoft_mode_on = "Aktiverade airsoft-läge.",
		airsoft_mode_off = "Avaktiverade airsoft-läge.",
		airsoft_mode_failed = "Kunde inte aktivera airsoft-läge.",

		no_weapon_equipped = "Inget vapen är utrustat.",
		no_ammo = "Ingen ammunition för detta vapen.",
		infinite_ammo = "Du har oändlig ammunition för detta vapen.",
		ammo_count = "Du har ${clips} fulla magasin (${total} skott totalt).",
		ammo_count_loose = "Du har ${clips} fulla magasin och 1 magasin med ${loose} skott (${total} skott totalt).",

		firing_mode_0 = "Avfyrningsläge satt till standard.",
		firing_mode_1 = "Eldläget är satt på Halvautomatiskt.",
		firing_mode_2 = "Säkerhetsläget är på.",

		safety_is_on = "Säkerhetsläget är på.",

		firing_mode_set_1 = "Eldläget är satt på Halvautomatiskt.",
		firing_mode_set_2 = "Säkerhetsläget är på.",

		folded_stock = "Hopfällt Kolv",
		unfolded_stock = "Upptfällt Kolv",
		failed_to_toggle_stock = "Kunde inte byta kolv.",
		weapon_has_no_stock = "Detta vapen har ingen kolv."
	},

	-- a shared "alpha" locale category uwu - also know, some features such as the ${InteractionKey} will be missing here, so don't try to use it
	alpha = {
		check_in = "[E] Checka In",
		check_in_timer = "[${remaining}s] Checka In",
		check_in_escorted = "Du eskorteras",
		checking_in = "Incheckning",
		doctor_notified = "En läkare har blivit notifierad, var vänlig vänta",
		leave_bed = "Tryck ~INPUT_CONTEXT~ för att lämna sängen",
		you_have_been_charged = "Du har blivit debiterad $${cost} för dina skador",
		beds_occupied = "Alla sängar är upptagna",
		patient_checked_in = "Patient incheckad på säng ${bed}",
		stop_bleeding = "[E] Stop Blödning",
		stopping_bleeding = "Stoppar Blödning",
		bleeding_stopped = "Blödning Stoppad",
		overdose_effects = "Du upplever överdos-effekter.",
		you_have_parasite = "Du har en parasit",
		you_have_multiple_parasite = "Du har flera parasiter",
		bandage = "[E] Bandagera sår",
		bandaging = "Bandagerar sår",
		wounds_bandaged = "Sår bandagerade",
		treat_injury = "[E] ${label} Skada",
		treating_injury = "Behandlar ${label} skada",
		injury = "${label} Skada",
		cpr_done = "CPR framgångsfullt",
		cpr_fail = "Kan inte hitta personen",
		went_on_duty = "Gick på tjänst",
		went_off_duty = "Gick av tjänst",
		on_duty = "på jobbet",
		off_duty = "inte på jobbet",
		press_to_sign = "Tryck ~g~E ~w~för att skriva",
		open_vehicle_spawner = "Tryck ~g~E ~w~för att öppna fordonsspawner",
		open_heli_spawner = "Tryck på ~g~E ~w~för att öppna helikoptermenyn.",
		open_boat_spawner = "Tryck på ~g~E ~w~för att öppna båtmenyn.",
		on = "på",
		off = "av",
		sign_as_doctor = "Tryck på ~g~E ~w~för att markera ${status} som läkare.",
		close_menu = "Stäng meny",
		vehicle_list = "Fordonslista",
		park_vehicle = "Parkera fordon",
		clear_area = "Rensa garaget innan du spawna ett fordon.",
		unable_to_extra = "Det går inte att ändra 'extras' på detta fordon!",
		warning = "Varning",
		invalid_input = "Ogiltig input.",
		unable_to_extra_on_vehicle = "Det går inte att ändra 'extras' på detta fordon!",
		heli_here_already = "Redan en helikopter på helipaden",
		ems_air_hq = "EMS Air HQ",
		ems_boat_hq = "EMS Boat HQ",
		ems_garage = "EMS Garage",
		e_to_get_treated = "[E] Behandlas - $1250",
		get_treated = "Behandlas - $1250",
		you_are_being_treated = "Du blir behandlad",
		being_treated = "Blir behandlad",
		minute = "minut",
		minutes = "minuter",
		second = "sekund",
		seconds = "sekunder",
		kurwa_and = "och",
		wait_for_paramedic = "Vänligen vänta på en ambulans eller vänta ${time} för att återupplivas",
		cannot_respawn_currently = "Du kan inte återupplivas för tillfället",
		hold_to_respawn = "Håll ~b~ENTER ~w~för att återuppstå eller vänta på att en ambulanspersonal anländer",
		hold_to_respawn_secondslol = "Håll ~b~ENTER (${seconds}) ~w~för att återuppstå eller vänta på att en ambulanspersonal anländer",
		passed_out = "Du har svimmat",
		light = "Lätt",
		moderate = "Måttlig",
		heavy = "Tung",
		severe = "Allvarlig",
		arms_injured = "Armar för skadade, kan inte avfyra vapen",
		injuryb = "Skada",
		bleeding_multiple_injuries = "blöder med flera skador",
		feels_irritated = "känner sig irriterad",
		feels_painful = "känner smärta",
		feels_extremely_painful = "känns extremt smärtsamt",
		multiple_injuries = "Du har flera skador",
		bleeding = "blödning",
		bleeding_with_injury = "blödning med ${label}-skada",
		bleeding_reduced = "Blödning reducerad",
		bleeding_self_stopped = "Blödning stoppad av sig själv",
		thanks_for_loot = "Du blev rånad medan du var medvetslös. Vissa föremål kan saknas.",
		serial_number = "Serienummer: ${serialNumber}<br>Denna vapen är registrerad till ${fullName} (#${characterId}).",
		serial_number_unknown = "Serienummer: Okänt.",
		badge_owner = "<i>Denna badge tillhör <b>${fullName} (${positionName})</b>.</i>",
		badge_owner_unknown = "Badge-ägaren är okänd.",
		citizen_card_owner = "<i>Denna ID-kort tillhör <b>${fullName} (#${characterId})</b>.</i>",
		citizen_card_has_portrait = "<i>Det har en bild.</i>",
		picture_pending = "<i>Bilden behandlas fortfarande...</i>",
		picture_selfie_owner = "<i>Detta är en bild på <b>${fullName}</b>.</i>",
		bought_by = "Köpt av ${buyerName} (${buyerCid}).",
		bought_by_unknown = "Köparen av denna artikel är okänd.",
		cigarette_pack = "${cigarettes} cigaretter kvar.",
		evidence_incomplete = "Denna bevispåse är ofullständig.",
		evidence_type = "Bevistyp",
		processed_picked_up = "<i>Plockad upp av ${pickupName} och behandlad av ${processName}.</i>",
		picked_up = "<i>Plockad upp av ${pickupName}.</i>",
		processed_by = "<i>Behandlad av ${processName}.</i>",
		evidence_casings = "Hylsorna matchade serienumret ${serialNumber} som tillhörde ${buyerName} (${buyerCid}) vid användningstillfället.",
		evidence_bullets = "Kulhål verkar ha skapats av ${bulletLabel}.",
		evidence_clothing = "Ett plagg (${clothingType}).",
		evidence_car_dna = "DNA hittades på fordon med registreringsnummer ${plateNumber} och matchar ${DNAOwnerName} (${DNAOwner}).",
		evidence_dna = "DNA insamlat från ${fullName} #${characterId}.",
		evidence_fingerprint = "Fingeravtryck av ${fullName} #${characterId}.",
		evidence_not_processed = "Denna bevispåse har ännu inte bearbetats.",
		additional_information = "Ytterligare information:",
		picked_up_at_location = "Upptäckt på platsen:",
		clothing_dna_trace = "DNA träffar matchar ${fullName} (#${cid})",
		clothing_dna_trace_unprocessed = "Obehandlade DNA-spår på kläderna",
		timestamp_of_pickup = "Tidpunkt för upphämtning:",
		weapon_name = "Vapennamn:",
		casings_picked_up = "Antal patronhylsor som plockats upp:",
		bullet_label = "Skottmärkning:",
		impacts_found = "Antal träffpunkter funna i området:",
		right_foot = "Höger fot",
		left_foot = "Vänster fot",
		right_hand = "Höger hand",
		left_hand = "Vänster hand",
		right_knee = "Höger knä",
		left_knee = "Vänster knä",
		head = "Huvud",
		neck = "Nacke",
		right_arm = "Höger arm",
		left_arm = "Vänster arm",
		chest = "Bröstkorg",
		pelvis = "Bäcken",
		right_shoulder = "Höger Skuldra",
		left_shoulder = "Vänster Skuldra",
		right_wrist = "Höger Handled",
		left_wrist = "Vänster Handled",
		tounge = "Tunga",
		upper_lip = "Övre Läpp",
		lower_lip = "Undre Läpp",
		right_thigh = "Höger Lår",
		left_thigh = "Vänster Lår",
		lower_spine = "Nedre Rygg",
		center_spine = "Mellersta Rygg",
		upper_spine = "Övre Rygg",
		root_spine = "Rot Rygg",
		right_clavicle = "Höger Nyckelben",
		left_clavicle = "Vänster Nyckelben",
		note_signed_by = "<b>Undertecknat av:</b> <i>${name} (#${cid})</i>",
		map_location = "<b>Markerad plats:</b> <i>${x}, ${y}</i>",
		smart_watch_hover = "<i>Denna smartwatch tillhör <b>${name} (#${cid})</b>. Den har spårat <b>${stepsWalked}</b> steg.</i>",
		item_contains = "<b>Innehåller:</b> <i>${contents}</i>.",
		item_engraving = "<b>Gravyr:</b> <i>${message}</i>.",
		evidence_incomplete = "Denna bevispåse är ofullständig."
	}
}
