if not OP then OP = {} end
if not OP.Global then OP.Global = {} end
if not OP.Global.Locales then OP.Global.Locales = {} end
if not OP.Global.Locales.Languages then OP.Global.Locales.Languages = {} end

-- AUTO LOCALES: 8 (do not change)

OP.Global.Locales.Languages["nb-NO"] = {
	-- configuration settings for language
	largeNumberSeparator = ",", -- with it set as ",", 1000000 -> 1,000,000 in a lot of labels
	floatSeparator = ".", -- with it set as ".", (25 + (1/5)) -> 25.2
	useMetric = false,

	-- locales shared between all resources
	shared = {
		system = "System",
		warning = "Advarsel",
		invalid_input = "Ugyldig input.",
		missing_input = "Manglende input.",
		player_not_found = "Klarte ikke å finne spiller med server-ID `${serverId}`.",
		something_went_wrong = "Noe gikk galt. Vennligst prøv igjen.",
		yes = "Ja",
		no = "Nei"
	},

	-- animations/*
	emotes = {
		get_in_trunk = "Trykk ~INPUT_ENTER~ for å gå inn i bagasjerommet",
		put_boombox_in_trunk = "Trykk ~INPUT_ENTER~ for å legge soundboxen i bagasjerommet",
		put_player_in_trunk = "Trykk ~INPUT_ENTER~ for å legge spilleren i bagasjerommet",
		put_player_in_seat = "[${VehicleEnterKey}] Sett i sete",
		trunk_interaction_display = "[${VehicleEnterKey}] Klatre ut [${InteractionKey}] Åpne/lukk bagasjerommet",
		trunk_open_close_display = "[${InteractionKey}] Åpne/lukk bagasjerommet",
		boombox_already_in_trunk = "Det er allerede en boombox i bagasjerommet.",
		the_trunk_is_occupied = "Bagasjerommet er allerede opptatt.",
		unable_to_toggle_carry = "Vennligst vent litt før du bytter bæremodus.",
		carry_disabled_animal = "Dyr kan ikke bære.",

		cancel_piggyback = "Trykk ~INPUT_FRONTEND_RRIGHT~ for å avbryte piggyback.",
		piggyback_hop_on = "[${InteractionKey}] hopp på",
		stop_piggyback = "Trykk ~INPUT_VEH_HEADLIGHT~ for å avslutte grisebanking.",

		lockpicking_cuffs = "Låse opp håndjern",
		lockpick_cuffs_too_fast = "Du beveget deg for fort.",
		success_lockpick_cuffs = "Håndjernene ble låst opp.",
		failed_lockpick_cuffs = "Klarte ikke å låse opp håndjernene.",
		lockpick_lost = "Du mistet låsepinnen.",

		not_cuffed = "Du er ikke iført håndjern.",
		unable_to_lockpick = "Du kan ikke låse opp håndjernene.",

		lockpick_cuffs_logs_title = "Låste opp håndjern",
		lockpick_cuffs_logs_details = "${consoleName} låste opp håndjernene med `${itemName}`.",

		you_are_not_being_carried = "Du blir ikke båret for øyeblikket.",
		successfully_uncarried = "Bæringen ble avbrutt.",
		failed_uncarried = "Kunne ikke avbryte bæringen.",
		uncarry_missing_permissions = "Prøvde å avbryte bæringen uten tillatelse.",

		uncarry_logs_title = "Avbryt bæring",
		uncarry_logs_details = "${consoleName} tvang ${targetName} til å slutte å bære dem.",

		failed_carry_npc = "Kunne ikke bære NPC.",
		carry_npc_something_wrong = "Noe gikk galt når du prøvde å bære vedkommende.",

		e_to_struggle = "Trykk på E for å motkjempe",
		cant_struggle_dead = "Du kan ikke motkjempe når du er død.",
		struggle_to_quick = "Du føler deg utmattet etter å ha kjempet nylig, vent litt og prøv igjen.",
		struggle_logs_title = "Kjempet Mot og Kom Fri",
		struggle_logs_details = "${consoleName} kjempet seg fri fra ${targetName} mens de ble båret."
	},

	-- base/*
	admin = {
		feature_toggle_not_admin = "Forsøkte å aktivere/deaktivere '${featureName}' for dem selv eller noen andre, men hadde ikke tilstrekkelige tillatelser til å gjøre det.",
		feature_toggle_activated_logs_title = "Fjernstyrte en Egenskap",
		feature_toggle_activated_logs_details_state = "${consoleName} aktiverer/deaktiverer `${featureName}` ${newState} for spiller ${targetConsoleName}.",
		feature_toggle_activated_all_logs_title = "Deaktivert/Eaktivert Funksjon for alle",
		feature_toggle_activated_all_logs_details = "${consoleName} deaktiverte/aktiverte `${featureName}` for alle.",
		feature_toggle_activated_self_logs_title = "Deaktivert/Eaktivert Funksjon",
		feature_toggle_activated_self_on_logs_details = "${consoleName} aktiverte `${featureName}` for seg selv.",
		feature_toggle_activated_self_off_logs_details = "${consoleName} deaktiverte `${featureName}` for seg selv.",
		feature_toggle_success = "Aktiverte/deaktiverte `${featureName}` for ${consoleName}.",
		feature_toggle_success_all = "Aktiverte/deaktiverte `${featureName}` for alle.",
		feature_toggle_failed = "Kunne ikke aktivere/deaktivere `${featureName}` for server-id ${serverId}.",
		feature_toggle_success_on = "Aktiverte `${featureName}` på for ${consoleName}.",
		feature_toggle_success_off = "Deaktiverte `${featureName}` av for ${consoleName}.",

		noclip_toggle_activated_self_logs_title = "Noclip aktivert",
		noclip_toggle_activated_self_on_logs_details = "${consoleName} aktiverte noclip på plasseringen `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`. (I kjøretøy: ${inVehicle})",
		noclip_toggle_activated_self_off_logs_details = "${consoleName} slått av noclip-posisjonen `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`.",

		model_name_not_provided = "Ingen modellnavn angitt.",
		model_name_invalid = "Modellnavnet `${modelName}` er ugyldig.",
		failed_to_spawn_vehicle = "Kunne ikke utføre `/ spawn_vehicle`-kommandoen korrekt.",
		spawned_vehicle_for_player = "Vellykket spawnet `${modelName}` for ${consoleName}.",
		spawned_vehicle_for_everyone = "Vellykket spawnet `${modelName}` for alle.",
		spawn_vehicle_for_player_not_staff = "Spilleren forsøkte å spawn et kjøretøy for noen andre, men hadde ikke de nødvendige tillatelsene for å gjøre det.",
		spawn_vehicle_for_self_not_staff = "Spilleren forsøkte å spawn et kjøretøy for seg selv, men hadde ikke de nødvendige tillatelsene for å gjøre det.",
		replace_vehicle_no_permissions = "Spilleren forsøkte å erstatte sitt kjøretøy, men hadde ikke de nødvendige tillatelsene for å gjøre det.",
		create_vehicle_no_permissions = "Spilleren forsøkte å opprette et kjøretøy, men hadde ikke de nødvendige tillatelsene for å gjøre det.",
		spawned_vehicle_for_self_title = "Spawnede kjøretøy",
		spawned_vehicle_for_self_details = "${consoleName} har spawnet et kjøretøy med modellnavn `${modelName}`.",
		spawned_vehicle_for_player_title = "Spawnede kjøretøy for spiller",
		spawned_vehicle_for_player_details = "${consoleName} har spawnet et kjøretøy med modellnavn `${modelName}` for spiller ${targetConsoleName}.",
		spawned_vehicle_for_everyone_title = "Spawnede kjøretøy for alle",
		spawned_vehicle_for_everyone_details = "${consoleName} har spawnet et kjøretøy med modellnavn `${modelName}` for alle.",

		vehicle_created = "Kjøretøyet er opprettet.",
		failed_vehicle_creation = "Kunne ikke opprette kjøretøy.",

		invalid_amount = "Ugyldig beløp.",

		added_cash_title = "Lagt til penger",
		added_cash_details = "${consoleName} la til $${amount} på kontoen.",
		added_cash_to_player_title = "Lagt til penger til spiller",
		added_cash_to_player_details = "${consoleName} la til $${amount} på kontoen til ${targetConsoleName}.",
		added_cash_to_everyone_title = "Lagt til penger til alle",
		added_cash_to_everyone_details = "${consoleName} la til $${amount} på kontoen til alle.",

		removed_cash_title = "Fjernet kontanter",
		removed_cash_details = "${consoleName} fjernet $${amount} kontanter.",
		removed_cash_from_player_title = "Fjernet kontanter fra spiller",
		removed_cash_from_player_details = "${consoleName} fjernet $${amount} kontanter fra ${targetConsoleName}.",
		removed_cash_from_everyone_title = "Fjernet kontanter fra alle",
		removed_cash_from_everyone_details = "${consoleName} fjernet $${amount} kontanter fra alle.",

		added_bank_title = "La til bankpenger",
		added_bank_details = "${consoleName} la til $${amount} bankpenger.",
		added_bank_to_player_title = "La bank til spilleren",
		added_bank_to_player_details = "${consoleName} la til $${amount} på bankkontoen til ${targetConsoleName}.",
		added_bank_to_everyone_title = "La bank til alle",
		added_bank_to_everyone_details = "${consoleName} la til $${amount} på bankkontoen til alle.",

		removed_bank_title = "Fjernet bank",
		removed_bank_details = "${consoleName} fjernet $${amount} fra bankkontoen.",
		removed_bank_from_player_title = "Fjernet bank fra spiller",
		removed_bank_from_player_details = "${consoleName} fjernet $${amount} fra bankkontoen til ${targetConsoleName}.",
		removed_bank_from_everyone_title = "Fjernet bank fra alle",
		removed_bank_from_everyone_details = "${consoleName} fjernet $${amount} fra banken til alle.",

		added_cash = "La til $${amount} kontanter.",
		added_cash_to_player = "La til $${amount} kontanter til ${targetConsoleName}.",
		added_cash_to_everyone = "La til $${amount} kontanter til alle.",

		removed_cash = "Fjernet $${amount} kontanter.",
		removed_cash_from_player = "Fjernet $${amount} kontanter fra ${targetConsoleName}.",
		removed_cash_from_everyone = "Fjernet $${amount} kontanter fra alle.",

		added_bank = "La til $${amount} på bankkontoen.",
		added_bank_to_player = "La til $${amount} på bankkontoen til ${targetConsoleName}.",
		added_bank_to_everyone = "La til $${amount} på bankkontoen til alle.",

		removed_bank = "Fjernet $${amount} fra bankkontoen.",
		removed_bank_from_player = "Fjernet $${amount} fra bankkontoen til ${targetConsoleName}.",
		removed_bank_from_everyone = "Fjernet $${amount} fra bankkontoen til alle.",

		money_event_not_admin = "Forsøkte å endre pengearrangementet `${moneyEvent}` uten å ha tilgang.",

		spawned_item_title = "Spawnet gjenstand",
		spawned_item_details = "${consoleName} spawnet ${amount}x `${itemName}` til seg selv.",
		spawned_item_for_player_title = "Spawnet Gjenstand for Spiller",
		spawned_item_for_player_details = "${consoleName} spawnet inn ${amount}x `${itemName}` for ${targetConsoleName}.",
		spawned_item_for_everyone_title = "Spawnet Gjenstand for Alle",
		spawned_item_for_everyone_details = "${consoleName} spawnet inn ${amount}x `${itemName}` for alle.",

		report_title = "MELDING-${reportId} ${reporterName}",
		report_logs_title = "Melding",
		report_logs_details = "${consoleName} opprettet melding ${reportId} med følgende melding: `${reportMessage}`",

		announcement_staff_title = "ANNONSE FRA STAFF",
		announcement_server_title = "ANNONSE FRA SERVER",

		announcement_logs_title = "SERVERBREDD ANNONSE",
		announcement_logs_details = "${consoleName} sendte følgende melding til hele serveren: `${announcementMessage}`",
		announcement_not_admin = "Forsøk på å sende ut en staff-annonse.",

		announcement_maintenance = "Serveren vil være stengt for vedlikehold om ${minutes} minutter.",
		announcement_update = "Serveren vil bli stengt for oppdatering om ${minutes} minutter.",
		announcement_restart = "Serveren vil gå ned om ${minutes} minutter for en restart.",

		posted_announcement = "La ut melding til kunngjøringene.",
		posted_announcement_locale = "La ut melding til kunngjøringene fra lokalene.",
		failed_to_post_announcement = "Kunne ikke legge ut melding til kunngjøringene, ingen melding lagt til.",
		failed_to_post_announcement_locale = "Kunne ikke legge ut melding til kunngjøringene, meldingen fra lokalene som ble lagt til støttes ikke.",

		staff_title = "STAB ${staffName}",
		staff_message_logs_title = "Ansattmeldinger",
		staff_message_logs_details = "${consoleName} sendte følgende melding i stabschatten: `${staffMessage}`",
		staff_message_illegal = "Spiller forsøkte å sende en melding i stabschatten, men var ikke stab.",

		staff_pm_title = "STAB PM ${transmissionTitle}",
		staff_pm_logs_title = "Stab PM",
		staff_pm_logs_details = "${senderConsoleName} sendte følgende melding til ${recipientConsoleName}: `${staffPrivateMessage}`",
		staff_pm_not_logged_in = "Du er ikke logget inn.",
		staff_pm_not_user_not_found = "Bruker med server-ID ${serverId} ble ikke funnet.",
		staff_pm_not_recipient_not_staff = "Spilleren du prøver å sende en melding til er ikke en ansatt.",
		staff_pm_unable_to_message_self = "Du kan ikke sende meldinger til deg selv.",
		staff_pm_warning = "Advarsel om ansattprivatmelding",
		staff_pm_first_time = "Vi ser at du aldri har brukt ansattprivatmelding før. For å svare på en ansattmelding, bruk /staffpm-kommandoen.",

		external_staff_message = "Ekstern ansattmelding",
		external_staff_message_from_player = "Ekstern ansattmelding fra ${playerName}",
		external_staff_message_content = "${staffMessage} (Du kan ikke svare på denne meldingen.)",

		unable_to_staff_message_yourself = "Kan ikke sende melding til deg selv.",
		message_sent = "Melding sendt.",
		player_not_found = "Spilleren ble ikke funnet.",
		missing_valid_target_source_parameter = "Mangler en gyldig 'målkilde' parameter.",
		missing_valid_message_parameter = "Mangler en gyldig 'melding' parameter.",

		invalid_coordinates = "Ugyldige x, y, z eller w koordinater oppgitt.",
		player_not_loaded_character = "Spilleren har ikke lastet inn en karakter.",
		teleport_successful = "Teleporterte spilleren vellykket.",

		player_revived_success = "Gjenopplivet spilleren vellykket.",

		missing_valid_license_identifier_parameter = "Mangler en gyldig 'licenseIdentifier' parameter.",

		illegal_entity_wipe = "Spiller forsøkte å slette enheter, men hadde ikke tillatelser.",
		wiped_entities = "Slettet enheter",
		wipe_entities_logs_title = "Slettet enheter",
		wipe_entities_logs_details = "${consoleName} utførte en enhetssletting med følgende konfigurasjon: avstand = `${distance}`, ignorer lokale enheter = `${ignoreLocalEntities}`, modellnavn = `${modelName}`",

		wipe_awaiting_confirmation = "Rensing er nå avventer bekreftelse. Skriv `ja` eller `nei` for å bekrefte eller avbryte (utløper om 60 sekunder).\n\nDe valgte parameterne er:\n- avstand: `${distance}`\n- ignorer lokale objekter: `${ignoreLocalEntities}`\n- modellnavn: `${modelName}`",
		wipe_awaiting_big_title = "Varning: Lang Rensing Avstand",
		wipe_awaiting_confirmation_big = "**Hei, du er i ferd med å slette et svært stort område, vær så snill å forsikre deg om at dette er det du ønsker å gjøre!**\nSkriv `ja` eller `nei` for å bekrefte eller avbryte (utløper om 60 sekunder).\n\n- avstand: `${distance}`\n- ignorer lokale objekter: `${ignoreLocalEntities}`\n- modellnavn: `${modelName}`",
		cancelled_wipe = "Vipingen har blitt avbrutt.",

		there_is_people_nearby = "Det er spillere i nærheten som kan se at du bruker noclip!",

		cant_while_spectating = "Du kan ikke gjøre dette mens du spekterer.",

		you_have_been_kicked = "Du har blitt sparket av ${kicker} for grunnen `${reason}`.",
		you_have_been_kicked_no_reason = "Du har blitt sparket uten årsak av ${kicker}.",

		logs_player_kicked_title = "Spiller sparket",
		logs_player_kicked_details = "${consoleName} har blitt sparket av ${kicker} fra serveren for grunnen `${reason}`.",
		logs_player_kicked_no_reason_details = "${consoleName} har blitt sparket av ${kicker} fra serveren uten spesifisert grunn.",

		you_have_been_banned = "Du har blitt utestengt av ${banner} for grunnlaget `${reason}`.",
		you_have_been_banned_no_reason = "Du har blitt utestengt uten spesifisert grunn av ${banner}.",

		banner_name_generic = "en ansatt",

		ban_alert_title = "Utestengt fra serveren",
		ban_alert_description_banner = "Du ville ha blitt automatisk utestengt av ${banner} på grunn av `${reason}`.",
		ban_alert_description = "Du ville ha blitt automatisk utestengt av systemet for grunnlaget `${reason}`.",

		logs_player_banned_title = "Spiller utestengt",
		logs_player_banned_system_title = "Spiller utestengt av systemet",
		logs_player_banned_details = "${consoleName} har blitt utestengt fra serveren av ${banner} for grunnlaget `${reason}`.",
		logs_player_banned_no_reason_details = "${consoleName} har blitt utestengt fra serveren av ${banner} uten angitt grunn.",

		player_kicked = "${consoleName} har blitt sparket fra serveren.",
		player_banned = "${consoleName} har blitt utestengt fra serveren.",

		ban_double_kill = "Dobbeltdrap!",
		ban_triple_kill = "😧 Trippeldrap!!!",
		ban_quadrouple_kill = "😨 FIRDRAP!!!!!",
		ban_killing_spree = "🤯 DRAPSSPREE (${count})!!!!!!",

		kick_player_not_staff = "Forsøkte å sparke en spiller uten tilstrekkelig tillatelser.",
		ban_player_not_staff = "Forsøkte å banne en spiller uten tilstrekkelige tillatelser.",

		hide_staff_not_staff = "Forsøkte å skjule sin stabellhet uten tilstrekkelige tillatelser.",
		toggle_staff_not_staff = "Forsøkte å endre stabellighet uten tilstrekkelige tillatelser.",

		logs_hide_staff_title = "Skjult stabellhet",
		logs_hide_staff_hidden_details = "${consoleName} har gjort sin stabellhet skjult.",
		logs_hide_staff_shown_details = "${consoleName} har gjort sin stabellhet synlig.",

		logs_toggle_staff_title = "Stabellitetsendring",
		logs_toggle_staff_off_details = "${consoleName} har slått av tilgjengeligheten til ansatte.",
		logs_toggle_staff_on_details = "${consoleName} har slått på tilgjengeligheten til ansatte.",

		staff_hidden = "Din ansattestatus er nå skjult.",
		staff_shown = "Din ansattestatus vises nå.",
		staff_toggled_on = "Tilgjengeligheten din som ansatt er nå slått på.",
		staff_toggled_off = "Tilgjengeligheten din som ansatt er nå slått av.",

		staff_feature_unavailable = "Denne funksjonen er utilgjengelig når tilgjengeligheten din som ansatt er slått av.",

		failed_toggle_tracker = "Kunne ikke slå på/av spiller-tracker.",
		unable_track_player = "Kan ikke spore spilleren.",
		success_enable_tracker = "Spiller-tracker aktivert for `${playerName}`.",
		success_disable_tracker = "Spiller-tracker deaktivert.",
		not_tracking_player = "Du sporer ikke en spiller.",
		already_tracking_player = "Du sporer allerede en spiller.",

		toggle_player_track_no_permissions = "Forsøkte å slå på/av spiller-sporing uten tilstrekkelige tillatelser.",
		set_job_no_permissions = "Forsøkte å sette en jobb uten tilstrekkelige tillatelser.",
		toggle_reflection_no_permissions = "Prøvde å aktivere skadedemping uten tilstrekkelige tillatelser.",

		success_enable_reflection = "Skadedemping ble aktivert.",
		success_disable_reflection = "Skadedemping ble deaktivert.",
		failed_toggle_reflection = "Kunne ikke aktivere/deaktivere skadedemping.",

		reflection_logs_title = "Skadedemping endret",
		reflection_logs_enabled_details = "${consoleName} har aktivert skadedemping.",
		reflection_logs_disabled_details = "${consoleName} har deaktivert skadedemping.",

		headache_logs_title = "Trigget hodepine",
		headache_logs_details = "${consoleName} har trigget hodepine for ${targetConsoleName}.",
		trigger_headache_no_permissions = "Forsøkte å trigge hodepine uten tilstrekkelige tillatelser.",

		success_trigger_headache = "Hodepine ble vellykket trigget for ${playerName}.",
		failed_trigger_headache = "Klarte ikke å trigge hodepine.",

		protective_mode_not_staff = "Forsøkte å aktivere serverens beskyttelsesmodus uten nødvendige tillatelser.",
		protective_mode_toggled_on = "Serverens beskyttelsesmodus er nå aktivert. Nødvendig spilletid før tilkobling til serveren er satt til `${playtime}`.",
		protective_mode_toggled_off = "Serverens beskyttelsesmodus er nå deaktivert.",
		protective_mode_already_on = "Serverens beskyttelsesmodus er allerede aktivert med nødvendig spilletid på `${playtime}`.",
		protective_mode_already_off = "Serverens beskyttelsesmodus er allerede deaktivert.",
		logs_protective_mode = "Server Beskyttelsesmodus",
		logs_protective_mode_on = "${consoleName} aktiverte serverens beskyttelsesmodus med påkrevd spilltid: `${playtime}`.",
		logs_protective_mode_off = "${consoleName} deaktiverte serverens beskyttelsesmodus.",

		spawn_item_not_staff = "Forsøkte å spawne et objekt uten riktige tillatelser.",
		no_item_name = "Ingen objektnavn oppgitt.",
		invalid_item_name = "${itemName} er ikke et gyldig objektnavn.",
		item_spawned = "Spawnet ${amount}x `${itemName}` for ${consoleName}.",
		item_spawned_for_everyone = "Spawnet ${amount}x `${itemName}` for alle.",

		set_warning_message_not_staff = "Forsøkte å sette serverens advarselsmelding uten tilstrekkelige rettigheter.",
		warning_message_set_to = "Advarselsmeldingen har blitt satt til `${warningMessage}`.",
		warning_message_removed = "Advarselsmeldingen har blitt fjernet.",
		warning_message_error = "En feil oppstod mens du prøvde å sette advarselsmeldingen.",
		warning_message_identical = "Du kan ikke sette advarselsmeldingen til det samme som det allerede er satt til.",
		warning_message_set_to_title = "Advarsel melding satt",
		warning_message_set_to_details = "${consoleName} har satt advarsel meldingen til `${warningMessage}`.",
		warning_message_removed_title = "Advarsel melding fjernet",
		warning_message_removed_details = "${consoleName} har fjernet advarsel meldingen.",

		indestructibility_on = "Vekslet 'Uknusbarhet' På.",
		indestructibility_off = "Vekslet 'Uknusbarhet' Av.",
		speed_boost_on = "Vekslet 'Fart boost' På.",
		speed_boost_off = "Vekslet 'Fart boost' Av.",
		nitro_boost_on = "Aktiverte 'Nitro Boost'.",
		nitro_boost_off = "Deaktiverte 'Nitro Boost'.",
		no_nearby_vehicles_on = "Aktiverte 'Ingen kjøretøy i nærheten'.",
		no_nearby_vehicles_off = "Deaktiverte 'Ingen kjøretøy i nærheten'.",
		speed_up_progress_bar_on = "Aktiverte 'Hastighet opp fremdriftsindikator'.",
		speed_up_progress_bar_off = "Deaktiverte 'Hastighet opp fremdriftsindikator'.",
		invisibility_on = "Aktiverte 'Usynlighet'.",
		invisibility_off = "Deaktiverte 'Usynlighet'.",
		wallhack_on = "Aktiverte 'Wallhack'.",
		wallhack_off = "Deaktiverte 'Wallhack'.",
		aimbot_on = "Aktiverte 'Aimbot'.",
		aimbot_off = "Deaktiverte 'Aimbot'.",
		player_bones_on = "Aktiverte 'Spillerben'.",
		player_bones_off = "Deaktiverte 'Spillerben'.",
		vehicle_smoke_on = "Aktiverte 'Kjøretøy-røyk'.",
		vehicle_smoke_off = "Deaktiverte 'Kjøretøy-røyk'.",

		peeking_on = "Aktivert utkikkmodus.",
		peeking_off = "Deaktivert utkikkmodus.",

		watching_on = "Aktivert overvåkingsmodus.",
		watching_off = "Deaktivert overvåkingsmodus.",
		watching_label = "Overvåker: ${nearby}",

		evidence_view_on = "Aktiverte bevisvisning.",
		evidence_view_off = "Skrudd av bevisvisning.",
		evidence_view_title = "Bevisvisning skrudd på/av",
		evidence_view_details_on = "${consoleName} skrudde på avansert bevisvisning.",
		evidence_view_details_off = "${consoleName} skrudde av avansert bevisvisning.",

		report_muted_no_reason = "Du har blitt mutet fra rapportkommandoen uten en spesifisert grunn.",
		report_muted = "Du har blitt mutet fra rapportkommandoen for grunnen `${reason}`.",

		already_sending_report = "Du sender allerede en rapport. Vennligst vent.",
		unable_to_send_identical_report = "Du kan ikke sende to identiske rapporter etter hverandre.",

		already_sending_staff_message = "Du sender allerede en beskjed til stab. Vennligst vent.",
		unable_to_send_identical_staff_message = "Du kan ikke sende to identiske beskjeder til staben etter hverandre innen 30 sekunder.",

		tp_coords_invalid_coordinates = "Ugyldige koordinater.",
		tp_coords_teleported_to_coordinates = "Teleportert til koordinatene X: ${x}, Y: ${y}, Z: ${z}.",

		teleported_to_waypoint = "Teleportert til veipunktet ${locationLabel}.",
		no_waypoint_set = "Du må sette en veipunkt.",

		teleported_to_coordinates_logs_title = "Teleportert til koordinater",
		teleported_to_coordinates_logs_details = "${consoleName} teleportert til koordinater X: ${x}, Y: ${y}, Z: ${z}.",
		teleported_to_waypoint_logs_title = "Teleportert til veipunkt",
		teleported_to_waypoint_logs_details = "${consoleName} teleportert til et veipunkt på ${locationLabel}.",

		teleport_to_coordinates_not_staff = "Spilleren forsøkte å teleportere seg til noen koordinater, men de var ikke en ansatt.",
		teleport_to_waypoint_not_staff = "Spilleren forsøkte å teleportere til et veipunkt, men de er ikke en ansatt.",

		failed_isolate = "Klarte ikke å isolere spilleren.",
		invalid_server_id = "Ugyldig server-ID.",
		isolate_success_on = "Isolerte ${consoleName} vellykket.",
		isolate_success_off = "Sluttet å isolere ${consoleName} vellykket.",

		isolate_missing_permissions = "Spilleren forsøkte å isolere en annen spiller uten tilstrekkelige tillatelser.",

		population_density_set_to = "Multiplikatoren for befolkningstetthet har blitt satt til ${multiplierLabel}%.",
		population_density_set_off = "Multiplikator for folketetthet er slått av.",
		population_density_is_not_on = "Multiplikator for folketetthet er ikke på.",
		population_density_already_set_to = "Multiplikator for folketetthet er allerede satt til ${multiplierLabel} %.",

		population_density_not_super_admin = "Spiller forsøkte å endre folketetthet uten nødvendige tillatelser.",

		enabled_features_list = "Aktiverte funksjoner:",
		aimbot_feature = "Aimbot",
		disabled_collisions_feature = "Deaktiverte kollisjoner",
		disabled_recoil_feature = "Deaktivert Rekyl",
		evidence_view_feature = "Bevisvisning",
		hit_indicator_feature = "Treff Indikator",
		indestructibility_feature = "Utilgjengelighet",
		infinite_ammo_feature = "Uendelig Ammunition",
		invisibility_feature = "Usynlighet",
		muted_sirens_feature = "Dempet Sirene",
		nitro_boost_feature = "Nitro Boost",
		no_nearby_vehicles_feature = "Ingen Nærliggende Kjøretøy",
		peeking_feature = "Kikking",
		roll_control_feature = "Rullekontroll",
		speed_boost_feature = "Fart Boost",
		speed_up_progress_bar_feature = "Øk Fremdriftslinje-hastigheten",
		sticky_feet_feature = "Klisterføtter",
		wallhack_feature = "Veggjukse",
		watching_feature = "Overvåking",
		fortnite_feature = "Fortnite",
		reflection_feature = "Skadedemping",
		stable_cam_feature = "Stabil Kamera",

		you_are_not_in_a_vehicle = "Du er ikke i et kjøretøy.",
		repaired_vehicle = "Kjøretøyet er reparert.",

		success_nos_refill = "NOS påfylling vellykket.",
		failed_nos_refill = "Kunne ikke fylle NOS.",

		refill_nitro_missing_permissions = "Spiller prøvde å fylle på NOS uten tilstrekkelige tillatelser.",

		register_invalid_character_id = "Ugyldig karakter ID.",
		register_invalid_slot = "Ugyldig inventarplass.",
		register_weapon_success = "Våpenet i spor ${slotId} ble registrert på karakteren med karakter-ID ${cid}.",
		register_weapon_failed = "Feilet i å registrere våpenet.",

		register_weapon_missing_permissions = "Spilleren prøvde å registrere et våpen uten tilstrekkelige tillatelser.",

		vehicle_smoke_invalid_class = "Kjøretøy-røyk kan ikke aktiveres for denne kjøretøyklassen.",

		repair_vehicle_not_super_admin = "Spilleren prøvde å reparere et kjøretøy uten de nødvendige tillatelsene.",

		repaired_vehicle_logs_title = "Reparert kjøretøy",
		repaired_vehicle_logs_details = "${consoleName} reparerte kjøretøyet de var i.",

		unable_to_enter_vehicle_while_dead = "Du kan ikke gå inn i et kjøretøy mens du er død.",
		the_closest_vehicle_had_no_free_seats = "Det nærmeste kjøretøyet hadde ingen ledige seter.",
		there_are_no_nearby_vehicles = "Det er ingen kjøretøy i nærheten.",
		vehicle_not_found_network = "Finner ikke kjøretøy med tilkoblings-id.",
		entered_vehicle = "Forsøkte å gå inn i kjøretøy i nærheten: ${vehicleName}.",

		set_vehicle_modifications_logs_title = "Angi kjøretøy endringer",
		set_vehicle_modifications_logs_details = "${consoleName} endret modifikasjonene til kjøretøyet med skiltet `${vehiclePlate}`. De endrede modifikasjonene var: modType-${modType}, modIndex-${modIndex}, customTires-${customTires}.",

		set_vehicle_livery_logs_title = "Endre kjøretøyets dekor",
		set_vehicle_livery_logs_details = "${consoleName} endret dekoren til et kjøretøy med skiltnummer `${vehiclePlate}` til `${liveryIndex}`.",

		set_livery_missing_permissions = "Spilleren forsøkte å endre dekoren til et kjøretøy uten tilstrekkelige tillatelser.",
		set_modifications_missing_permissions = "Spilleren forsøkte å legge til en modifikasjon på et kjøretøy uten tilstrekkelige tillatelser.",

		set_vehicle_modification = "La til modifikasjon på kjøretøy for modifikasjonstype `${modType}` med indeks `${modIndex}`. (Egendefinerte dekk: ${customTires})",
		mod_index_invalid_for_type = "Mod indeksen `${modIndex}` er ugyldig for modtype `${modType}`.",
		mod_type_invalid = "Modtype `${modType}` er ugyldig.",
		no_mod_type_set = "Ingen modtype er satt.",

		set_vehicle_livery = "Sett kjøretøyets livrei til `${liveryIndex}`.",
		no_livery_index_set = "Ingen livrei-indeks satt (Min: 1).",
		you_are_not_the_driver = "Du er ikke sjåføren av kjøretøyet.",
		vehicle_is_not_a_plane_or_heli = "Kjøretøyet er ikke et fly eller helikopter.",
		livery_index_invalid = "Ugyldig livrei-indeks (Maks: ${maxLiveries}).",
		vehicle_has_no_liveries = "Kjøretøyet har ingen livery.",

		invalid_plate_number = "Ugyldig skiltnummer.",
		set_fake_plate_number = "Sett skiltnummer for kjøretøyet til `${plateNumber}`.",

		invalid_dirt_level = "Ugyldig skitnivå.",
		set_dirt_level = "Kjøretøyets skitnivå ble satt til `${dirtLevel}`.",

		set_dirt_level_not_super_admin = "Spiller forsøkte å sette skitnivået til et kjøretøy uten tilstrekkelige tillatelser.",

		set_fake_plate_not_super_admin = "Spiller forsøkte å sette et falskt skilt for et kjøretøy uten tilstrekkelige tillatelser.",

		already_fake_disconnecting = "Du prøver allerede å fake en frakobling. Vennligst vent.",
		started_fake_disconnect = "Begynte å fake en frakobling. Gjenta kommandoen for å stoppe.",
		stopped_fake_disconnect = "Stoppet fake frakobling.",

		fake_disconnect_not_super_admin = "Spilleren prøvde å fake en frakobling uten tilstrekkelige tillatelser.",

		disabled_idle_cam = "Deaktivert idle-kamera.",
		enabled_idle_cam = "Gjenopprettet idle-kameraet.",

		created_vehicle_smoke_for_player_logs_title = "Opprettet kjøretøy-røyk",
		created_vehicle_smoke_for_player_logs_details = "${consoleName} opprettet røyk for kjøretøyet.",

		player_info_not_staff = "Forsøkte å få karakterinformasjonen til en spiller uten tillatelse.",
		player_info_title = "${consoleName}",
		player_info = "${fullName} #${characterId}\nHar spilt i ${playtime}.\n${jobName}, ${departmentName}, ${positionName}\n\n${backstory}",

		inventory_name_missing = "Mangler navn på inventory parameter.",
		force_inventory_missing_perms = "Forsøkte å tvingeåpne et inventory uten riktig tillatelse.",

		auto_driving_engaged = "Auto-kjøring er aktivert (Stil: ${style}).",
		auto_driving_updated = "Automatisk kjørehastighet/-posisjon har blitt oppdatert.",
		auto_driving_disengaged = "Automatisk kjøring har blitt avsluttet.",
		not_auto_driving = "Du kjører ikke automatisk.",
		invalid_auto_drive_speed = "Ugyldig eller manglende automatisk kjørehastighet.",
		reset_auto_drive_speed = "Nullstill automatisk kjørehastighet til standard.",
		set_auto_drive_speed = "Sett automatisk kjørehastighet til ${speed} mph.",

		disable_collisions_on = "Kollisjoner er nå deaktivert for deg.",
		disable_collisions_off = "Kollisjoner er nå aktivert for deg.",
		failed_toggle_collisions = "Kunne ikke slå av/på deaktiverte kollisjoner.",

		disabled_recoil_on = "Recoil deaktivert.",
		disabled_recoil_off = "Recoil aktivert.",

		attachment_missing = "Mangler vedleggsparameter.",
		no_weapon_equipped = "Ingen våpen utstyrt.",
		attachment_invalid = "Vedlegget er ugyldig eller ikke tilgjengelig for dette våpenet.",
		attachment_failed_toggle = "Kunne ikke slå vedlegget av eller på for dette våpenet.",
		attachment_on = "Vedlegget '${attachment}' ble aktivert.",
		attachment_off = "Vedlegget '${attachment}' ble deaktivert.",

		tint_invalid = "Ugyldig våpenfarge.",
		tint_range_invalid = "Ugyldig våpentintområde (må være mellom 0 og ${max}).",
		tint_failed_set = "Kunne ikke sette våpentint.",
		tint_removed = "Våpentint fjernet.",
		tint_set = "Våpentint satt til `${tint}` (${tintIndex}).",
		no_weapon_tint = "Dette våpenet har ingen tints.",

		weapon_attachment_missing_perms = "Prøvde å slå av/på våpenvedlegg uten nødvendig tillatelse.",
		weapon_tint_missing_perms = "Prøvde å sette våpentint uten nødvendig tillatelse.",

		no_attachments = "Ingen vedlegg",
		available_attachments = "Tilgjengelige Vedlegg",
		current_attachments = "Gjeldende Vedlegg",
		no_attachments = "Ingen vedlegg",
		attachments_list = "Vedlegg:",
		tint_label = "Vindusfarge: \"${tintLabel}\" (${tintIndex})",

		item_name_failed_set = "Kunne ikke sette navn på gjenstanden.",
		item_name_removed = "Navn-overstyring på gjenstanden fjernet.",
		item_name_set = "Navn-overstyring på gjenstanden satt til \"${itemName}\".",
		item_name_invalid_slot = "Ugyldig eller manglende gjenstandsplass.",

		cleaned_ped = "${consoleName}s ped ble ryddet.",
		cleaned_ped_self = "Pedet ditt er nå renset.",
		clean_ped_failed = "Kunne ikke rense ped.",
		cleaned_ped_for_all = "Alle sine peder er nå renset.",
		clean_ped_no_permission = "Forsøkte å rense en annen spiller sin ped uten nødvendig tillatelse.",

		item_durability_set_success = "Durabiliteten er nå satt til ${amount}% for gjenstander i spalte ${slotId}.",
		item_durability_set_failed = "Kunne ikke sette durabilitet.",
		item_durability_invalid_amount = "Ugyldig durabilitetsbeløp (0 <> 100).",
		item_durability_set_no_permission = "Forsøkte å sette durabilitet for en gjenstand uten nødvendig tillatelse.",

		item_metadata_set_no_permission = "Forsøkte å endre et gjenstandsmetadatas uten nødvendige tillatelser.",
		item_metadata_invalid_metadata = "Ugyldig gjenstandsmetadata.",
		item_metadata_set_success = "Metadata for gjenstander i slot ${slotId} ble endret.",
		item_metadata_set_failed = "Kunne ikke endre metadata.",

		advanced_metagame_on = "Aktiverte avansert metaspill.",
		advanced_metagame_off = "Deaktiverte avansert metaspill.",

		identity_set = "Identityen din ble endret til `${name}`.",
		identity_reset = "Identityen din ble tilbakestilt.",
		identity_set_failed = "Kunne ikke sette din identitet.",
		identity_hud = "Identitet: ${playerName}",

		set_identity_no_permission = "Spilleren forsøkte å sette sitt spiller navn uten riktige tillatelser.",

		invalid_range_parameter = "Ugyldig området parameter.",
		wipe_first_owned_success = "Slettet alle ${amount} entiteter eiet av spiller med server id `${serverId}`.",
		wipe_first_owned_success_range = "Slettet alle ${amount} entiteter eiet av spiller med server id `${serverId}` innenfor en ${range}m rekkevidde.",
		wipe_first_owned_failed = "Kunne ikke slette enheter eid av spilleren med server-ID `${serverId}`.",

		invalid_radius_parameter = "Ugyldig radius (mellom 1 og 500).",
		scooped_up_players = "Plukket opp ${amount} spiller(e).",
		scoop_invalid = "Du har ikke plukket opp noen spillere.",
		unscooped_players = "Fjernet ${amount} av ${total} spiller(e).",
		unscoop_failed = "Kunne ikke fjerne spillere.",

		unscoop_missing_permissions = "Spilleren prøvde å fjerne spillere uten riktige tillatelser.",

		toggle_collisions_missing_permissions = "Spilleren prøvde å slå av/på sin kollisjon uten riktige tillatelser.",
		wipe_first_owned_missing_permissions = "Spilleren prøvde å slette sine egne objekter uten tilstrekkelig tillatelser.",

		freeze_missing_permissions = "Spilleren prøvde å fryse eller opptine en annen spiller uten tilstrekkelig tillatelser.",

		freeze_success = "Spilleren ${consoleName} ble fryst vellykket.",
		failed_freeze = "Kunne ikke fryse spilleren.",
		unfreeze_success = "Spilleren ${consoleName} ble tint vellykket.",
		failed_unfreeze = "Kunne ikke tine spilleren.",

		freeze_logs_title = "Frosset spilleren",
		freeze_logs_details = "${consoleName} fryste ${targetName}.",
		unfreeze_logs_title = "Frigjorde spiller",
		unfreeze_logs_details = "${consoleName} frigjorde ${targetName}.",

		slap_kill_reason = "Klapp",
		slap_success = "Klappet ${consoleName} vellykket.",
		slap_failed = "Kunne ikke klappet spilleren.",
		slap_logs_title = "Klappet spiller",
		slap_logs_details = "${consoleName} klappet ${targetName}.",
		slap_missing_permissions = "Spiller forsøkte å klappet en annen spiller uten tilstrekkelige tillatelser.",

		damaged_player = "Skadet ${consoleName} med ${damage} i skade.",
		damage_player_failed = "Kunne ikke skade spilleren.",
		damage_player_logs_title = "Skadet spiller",
		damage_player_logs_details = "${consoleName} skadet ${targetConsoleName} for ${damage} skade.",
		damage_player_missing_permissions = "Spiller forsøkte å skade en annen spiller uten riktige tillatelser.",

		refill_nitro_logs_title = "Påfylte nitro",
		refill_nitro_logs_details = "${consoleName} fylte på nitroen sin.",

		isolated_logs_title = "Isolert spiller",
		isolated_off_logs_details = "${consoleName} slått av isolasjonen til ${targetName}.",
		isolated_on_logs_details = "${consoleName} slo på isolasjonen til ${targetName}.",

		character_data_logs_title = "Karakterdata",
		character_data_logs_details = "${consoleName} sjekket ${targetName}s karakterdata (CID: ${characterId}).",

		item_name_logs_title = "Navneendring",
		item_name_logs_details = "${consoleName} endret navnet på gjenstandene i spalte ${slot} til `${nameOverride}`.",

		toggle_attachment_logs_title = "Toggled Vedlegg",
		toggle_attachment_logs_details = "${consoleName} byttet vedlegg `${attachment}`.",

		tint_logs_title = "Angi farge",
		tint_logs_details = "${consoleName} satte fargeindeksen på våpenet sitt til ${tintIndex}.",

		population_multiplier_logs_title = "Befolkning Multiplikator",
		population_multiplier_logs_details = "${consoleName} satte befolkningsmultiplikatoren til ${populationMultiplier}.",

		fake_disconnect_logs_title = "Falsk Frakobling",
		fake_disconnect_on_logs_details = "${consoleName} har slått på sin falske frakobling.",
		fake_disconnect_off_logs_details = "${consoleName} har slått av sin falske frakobling.",

		identity_logs_title = "Identitet Overstyring",
		identity_on_logs_details = "${consoleName} har satt sin identitet til `${playerName}`.",
		identity_off_logs_details = "${consoleName} nullstilte sin identitet.",

		clean_ped_logs_title = "Renset ped",
		clean_ped_logs_details = "${consoleName} renset ${targetName}s ped.",

		collisions_logs_title = "Sammenstøt",
		collisions_off_logs_details = "${consoleName} skrudde av sammenstøt som var deaktivert.",
		collisions_on_logs_details = "${consoleName} skrudde på sammenstøt som var deaktivert.",

		invalid_job_search = "Ugyldig jobbsøk (må være minst 3 tegn).",
		failed_job_search = "Klarte ikke å søke etter jobber.",
		job_search_no_results = "Ingen jobber funnet.",
		job_search_results = "Satt ${consoleName}s jobb til \"${jobName}, ${departmentName}, ${positionName}\" (Score: ${score}).",

		job_reset_success = "Jobben til ${consoleName} ble tilbakestilt.",
		failed_job_reset = "Klarte ikke å tilbakestille jobben."
	},

	anti_cheat = {
		illegal_client_event = "Gå direkte i fengsel. Ikke pass Go. Ikke motta $200.",
		illegal_server_event = "Gå direkte i fengsel. Ikke pass Go. Ikke motta $200.",
		bad_entity_spawn = "Spawnet inn en entitet med modellnavn `${modelName}`.",
		bad_entity_title = "Dårlig enhet spawnet",
		bad_entity_message = "${consoleName} spawnet enhet med modellnavn `${modelName}`.",
		detected_entity_title = "Oppdaget enhet spawnet",
		detected_entity_message = "${consoleName} spawnet enhet med modellnavn `${modelName}`.",
		added_model_to_list = "La til modell `${modelName}` (${modelHash}) til oppdagelseslisten.",
		model_already_added_to_list = "Modell `${modelName}` (${modelHash}) er allerede lagt til i oppdagelseslisten.",
		removed_model_to_list = "Fjernet modell `${modelName}` (${modelHash}) fra oppdagelseslisten.",
		model_not_in_list = "Modellen `${modelName}` (${modelHash}) er ikke lagt til på oppdagelseslisten.",
		set_model_detected_not_staff = "Spilleren prøvde å legge til en modell på oppdagelseslisten, men hadde ikke riktig tillatelse til å gjøre det.",
		set_model_undetected_not_staff = "Spilleren prøvde å fjerne en modell fra oppdagelseslisten, men hadde ikke riktig tillatelse til å gjøre det.",
		add_detection_area_not_staff = "Spilleren prøvde å legge til et oppdagelsesområde, men hadde ikke riktig tillatelse til å gjøre det.",
		remove_detection_area_not_staff = "Spilleren prøvde å fjerne et oppdagelsesområde, men hadde ikke riktig tillatelse til å gjøre det.",
		detection_area_close = "[${InteractionKey}] Fjern deteksjonsområde (${areaId})",
		detection_area = "Deteksjonsområde (${areaId})",

		ban_notification_title = "Anti-svindel",
		ban_notification = "Utestengt ${consoleName} for `${banReason}`.",

		bad_screen_word_ban = "Vi har hørt om åpne bok-eksamener, men dette er latterlig.",
		blacklisted_command_ban = "Beklager, men du har ikke tillatelse til å utføre dette kommandoen. Vennligst kontakt serveradministratorene hvis du tror dette er en feil.",
		damage_modifier_ban = "Din kraftnivå kan ikke være over 9000.",
		distance_taze_ban = "Din forbløffende opptreden på avstand ble ikke verdsatt.",
		fast_movement_ban = "Flyging er ikke aktivert på denne serveren.",
		freecam_ban = "Det ser ut til at du har hatt en utenomkroppslig opplevelse.",
		honeypot_ban = "Du prøvde å aktivere kreativ modus, men hadde ikke tillatelse til å gjøre det.",
		hotwire_driving_ban = "Vroom Vroom, jeg er i pappas bil.",
		illegal_freeze_ban = "Varm mat er mye bedre enn mat som er fryst?",
		illegal_ped_change_ban = "Det er farlig å gjøre plastisk kirurgi på deg selv.",
		illegal_spectating_ban = "Du må være en FIB-agent for å overvåke andre spillere eller bruke /gamemode spectator før du overvåker.",
		illegal_vehicle_modifier_ban = "I motsetning til Dom Toretto fra Fast and Furious, er vi ikke familie.",
		invincibility_ban = "Du er ikke Den svarte ridderen, du kan ikke være udødelig.",
		ped_spawn_ban = "Du prøvde å utføre mitose, men det var ikke nok sol for fotosyntese.",
		player_blips_ban = "Luftrommet er fullt, UAV er utilgjengelig.",
		runtime_texture_ban = "Mod-menyen du har, bruk den du ikke kan.",
		spiked_resource_ban = "Å endre skriptet uten tillatelse er som å prøve å endre slutten på en historie bare fordi du ikke liker den.",
		text_entry_ban = "Undersøkelse av elementer er ikke tillatt i denne nettleseren.",
		thermal_night_vision_ban = "Brighter Nights er ikke tillatt.",
		vehicle_modification_ban = "Du kunne ikke finne frontlysevæsken til bilen din.",
		vehicle_spam_ban = "Counter terrorists win.",
		vehicle_spawn_ban = "Du prøvde å bruke rødsten på en gruvevogn, men hadde ikke aktiverte skinner.",
		weapon_spawn_ban = "Du har prøvd å gå den \"Betal for å vinne-ruten\" i FiveM hvor du nå faktisk har betalt for å bli utestengt.",

		mp_f_freemode_01_label = "Fri modus (kvinne)",
		mp_m_freemode_01_label = "Fri modus (mann)",
		player_one_label = "Franklin",
		player_two_label = "Trevor",
		player_zero_label = "Michael",

		notification_distance_taze = "Anti-Cheat: ${displayName} tazer noen på en veldig lang avstand (${distance}m).",
		notification_bad_screen_word = "Anti-Cheat: ${displayName} har ${count} utløsningsord på skjermen deres.",

		notification_freecam_detected = "Anti-Cheat: Freecam oppdaget",
		notification_illegal_vehicle_modifier = "Anti-Cheat: Ulovlig kjøretøy modifikasjon",
		notification_illegal_vehicle_spawn = "Anti-Cheat: Kjøretøy spawnet",
		notification_fast_movement = "Anti-Cheat: Rask bevegelse",
		notification_illegal_freeze = "Anti-Cheat: Ulovlig frys",
		notification_invincibility = "Anti-Cheat: Uovervinnelighet",
		notification_vehicle_modification = "Anti-Cheat: Kjøretøy modifikasjon",
		notification_damage_modifier = "Anti-Cheat: Skade modifikasjon",
		notification_illegal_weapon = "Anti-Cheat: Ulovlig våpen",
		notification_spawned_object = "Anti-Cheat: Ferdigstilte objekter",
		notification_driving_hotwire = "Anti-Cheat: Kjøring mens bilen er på varme",

		ig_orleans_label = "Sasquatch",
		u_m_m_jesus_01_label = "Jesus",
		u_m_y_babyd_label = "Kroppsbygger",
		u_m_y_imporage_label = "Superhelt",
		a_m_m_bevhills_02_label = "Hvit mann",
		a_m_m_fatlatin_01_label = "Feit mann",
		a_m_m_hasjew_01_label = "Jødisk ped",
		a_m_m_beach_01_label = "Toppløs ped (svart, mann)",
		a_m_m_beach_02_label = "Toppløs ped (hvit, mann)",
		a_m_m_afriamer_01_label = "Feit svart mann",
		ig_jimmydisanto_label = "Jimmy",
		ig_jimmydisanto2_label = "Jimmy 2",
		a_m_y_musclbeac_01_label = "Halvnaken strand-mann",
		csb_ramp_marine_label = "Marinesoldat",
		s_f_y_stripperlite_label = "Stripper-ped",
		mp_f_stripperlite_label = "Stripper-ped 2",
		mp_m_marston_01_label = "Mangler armer og bein",
		mp_m_niko_01_label = "Niko (GTA IV)",

		high_fov_warning = "Ditt FOV (synsfelt) er unormalt høyt",
		high_fov_description = "Dette skyldes mest sannsynlig en FOV-modifikator.",
		high_fov_debug = "Nåværende: ${fov}",

		illegal_oxy_run = "Spilleren fullførte et oxy-ran raskere enn det som er menneskelig mulig.",

		fast_movement_warning = "Du er merket for å bevege deg for fort! Vennligst gi beskjed til en utvikler og fortell hva du gjorde for å få denne meldingen, siden du ikke skulle motta denne chatmeldingen.",
		invincibility_warning = "Du har blitt markert som udødelig! Vennligst kontakt en utvikler og fortell hva du gjorde som kan ha ført til dette, ettersom du ikke burde motta denne chatmeldingen.",
		damage_modifier_warning = "Du har blitt markert for å ha en ugyldig skademodifikator! Vennligst kontakt en utvikler og fortell hva du gjorde som kan ha ført til dette, ettersom du ikke burde motta denne chatmeldingen.",
		freeze_warning = "Du har blitt markert for å være fryst når du ikke skulle være det! Vennligst kontakt en utvikler og fortell hva du gjorde som kan ha ført til dette, ettersom du ikke burde motta denne chatmeldingen.",

		distance_taze_screenshot = "Anti-Juksevern: Avstandstaser (${distance}m)",
		spectating_screenshot = "Anti-Juksevern: Viser som tilskuer",
		fast_movement_screenshot = "Anti-Juksevern: Rask bevegelse",
		illegal_freeze_screenshot = "Anti-Juksevern: Ulovlig frys",
		illegal_vehicle_modifier_screenshot = "Anti-Juksevern: Kjøretøyendring (${modifierName} = ${modifierValue})",
		damage_modifier_screenshot = "Anti-Juksevern: Ugyldig skademodifisering (${activeModifier}/${currentModifier})",
		illegal_weapon_screenshot = "Anti-Juksevern: Spawnet våpen (${weaponLabel})",
		illegal_vehicle_spawn_screenshot = "Anti-Cheat: Ulovlig spawnet kjøretøy (${modelName})",
		vehicle_modification_screenshot = "Anti-Cheat: Modifisert kjøretøy (${types})",
		thermal_night_vision_screenshot = "Anti-Cheat: Termisk/nattsyn (${nativeName})",
		text_entry_screenshot = "Anti-Cheat: Tekstinndata (${textEntry})",
		player_blips_screenshot = "Anti-Cheat: Spillermarkører",
		modified_fov_screenshot = "Anti-Cheat: Modifisert FOV (${fov})",
		ped_change_screenshot = "Anti-Cheat: Ulovlig endring av NPC",
		invincibility_screenshot = "Anti-Cheat: Uovervinnelig",
		runtime_texture_screenshot = "Anti-Cheat: Kjøretids tekstur (${textureDict}, ${textureName})",
		bad_screen_word_screenshot = "Anti-Cheat: Dårlig skjermbildeord (${words})",
		freecam_detected_screenshot = "Anti-Cheat: Freecam oppdaget (${distance}m)",
		driving_hotwire_screenshot = "Anti-Cheat: Kjører mens bilen er kapret"
	},

	authentication = {
		ip_not_found = "Vi kunne ikke hente IP-adressen din.",
		authenticating_local_server = "Autentiserer med lokal server...",
		authenticating_global_server = "Autentiserer med OP-FW servere...",
		error_fetching_data = "En feil oppstod under henting av dataene dine.",
		region_blocked = "Denne serveren har blokkert området du kobler fra.",
		server_config_not_loaded = "Serverkonfigurasjonen har ikke blitt lastet inn.",
		something_went_horribly_wrong = "Noe gikk fryktelig galt. Vennligst prøv igjen.",
		local_firewall_enabled = "Den lokale brannmuren er aktivert.",

		local_firewall_on = "Aktivert den lokale brannmuren med blokkeringsmeldingen `${blockMessage}`.",
		local_firewall_re_enabled = "Aktiverte den lokale brannmuren på nytt med blokkeringsmeldingen `${blockMessage}`.",
		local_firewall_off = "Deaktiverte den lokale brannmur.",
		local_firewall_blocked = "Lokal brannmur: Blokkert ${playerName} (${licenseIdentifier})",

		developer = "utvikler",
		super_admin = "super admin",
		staff = "personale",
		reconnect = "koble til igjen",
		random = "tilfeldig",
		beginner = "nybegynner",
		custom = "tilpasset",
		christmas = "jul",
		casino = "kasino",

		job_low = "lav jobb",
		job_medium = "middels jobb",
		job_high = "høy jobb",

		banned_globally = "Du har blitt globalt utestengt fra alle OP-FW servere.\n\nUtvisnings-hash: ${banHash}\nUtestengelsesårsak: ${banReason}\n\nHvis du tror dette er en feil utestengelse, kan du bli med i OP-FW sin discord-guild for informasjon om hvordan du kan anke på ${frameworkDiscord}",
		banned_locally = "Du har blitt utestengt fra ${communityName}.\n\nUtestengings-hash: ${banHash}\nUtestengt av: ${creatorName}\nUtestengingsgrunn: ${banReason}\nTidspunkt: ${timestamp}\n\n${indefiniteOrExpires}\n\nBesøk vår discord-server for informasjon om hvordan du kan anke på ${communityDiscord}.",
		banned_locally_no_creator = "Du har blitt utestengt fra ${communityName}.\n\nUtestengings-hash: ${banHash}\nUtestengingsgrunn: ${banReason}\nTidspunkt: ${timestamp}\n\n${indefiniteOrExpires}\n\nBesøk vår discord-server for informasjon om hvordan du kan anke på ${communityDiscord}.",
		ban_indefinite = "Dette banet er uendelig.",
		ban_expires = "Dette banet vil utløpe om ${timeLeft}.",
		not_whitelisted = "Du har ikke lov til å spille på denne serveren. For informasjon om hvordan du kan søke, kan du bli med i vår discord-server.\n\n${communityDiscord}",
		api_error = "En feil oppsto under henting av dataene dine. (feilkode ${errorCode})",
		pepega_moderate = "Du har blitt globalt bannet fra alle OP-FW-servere uten noen spesifiserte grunner.",
		pepega_ultimate = "Du har blitt bannet fra denne serveren.",
		ban_code_not_found = "Du har blitt globalt bannet fra alle OP-FW-servere. Vi klarte ikke å finne noen data for ditt ban-kode.",
		fraud_chargeback = "Svindel / tilbakeføring",
		threatening_ddos = "Truer med å angripe vår infrastruktur.",
		unknown = "Ukjent",
		api_offline = "Tjenesten vår er for øyeblikket utilgjengelig og dermed ikke i stand til å hente dataene dine. Vennligst prøv igjen snart.",
		protective_mode_on = "Serverbeskyttelsesmodus er for øyeblikket aktivert på denne serveren, noe som betyr at bare spillere med en visst antall spilletid kan koble til serveren. Dette er bare midlertidig, og serveren bør gå tilbake til normalt snart.\n\nDeltag vår discord for mer informasjon om dette på ${communityDiscord}.",
		server_restarting = "Serveren starter på nytt. Vennligst prøv igjen om noen minutter.",
		connection_cancelled = "Denne tilkoblingen ble avbrutt fordi en annen allerede er aktiv.",
		no_reason_provided = "Ingen grunn oppgitt.",
		discord_whitelist_id_not_found = "Vi kunne ikke finne din discord-id. Sørg for at du har discord åpnet i bakgrunnen, og at du har gitt FiveM tillatelse til å hente data fra din discord-klient.\n\n${communityDiscord}"
	},

	chat = {
		default = "Standard",

		chat_group_information = "Du har blitt lagt til i en chattegruppe. Trykk på **TAB** for å bytte mellom dine tilgjengelige chattegrupper.\n\nMeldinger sendt uten '/' som en prefiks vil bli sendt til andre medlemmer av denne gruppen."
	},

	commands = {
		command_unavailable = "Denne kommandoen er ikke tilgjengelig!",

		command_list = "${commands}",
		substitute_list = "${substitutes}",

		substitute_command_for = "Dette er en erstatningskommando for `${command}`.",

		-- the "substitutes" is basically just a shortcut command, so if you do /lang, it'll execute /language.
		-- you can put as many substitutes as you'd like by doing "/lang, /lang2, /lang3", all these 3 commands will be valid substitutes
		-- the main difference between the _command and _command_substitutes is substitutes will not show as suggestions in the chat
		-- if no substitutes are wanted, simply leave an empty string with ""

		-- animations/carry
		carry_command = "bære",
		carry_command_help = "Aktiver/deaktiver bære.",
		carry_command_substitutes = "",

		uncarry_command = "slipp",
		uncarry_command_help = "Tving spilleren som bærer deg til å slippe deg.",
		uncarry_command_substitutes = "",

		piggyback_command = "grisebær",
		piggyback_command_help = "Grisebær en annen spiller.",
		piggyback_command_substitutes = "",

		pick_cuffs_command = "plukk_håndjern",
		pick_cuffs_command_help = "Låse opp håndjern med lockpick.",
		pick_cuffs_command_substitutes = "",

		struggle_command = "slite",
		struggle_command_help = "Prøv å kjempe deg løs når noen bærer deg.",
		struggle_command_substitutes = "",

		handsup_command = "henderopp",
		handsup_command_help = "Hold hendene dine opp (eller nede).",
		handsup_command_substitutes = "hender, overgi, hu",

		-- animations/chairs
		sit_command = "sitt",
		sit_command_help = "Prøv å sette deg på en stol i nærheten.",
		sit_command_parameter_variation = "variasjon",
		sit_command_parameter_variation_help = "Hvilken sitt animasjon som skal spilles (1-6)",
		sit_command_substitutes = "stol",

		-- animations/emotes
		ragdoll_command = "ragdoll",
		ragdoll_command_help = "Slå av/på ragdoll.",
		ragdoll_command_substitutes = "",

		-- base/admin
		report_command = "rapport",
		report_command_help = "Send en melding til alle aktive ansatte.",
		report_command_parameter_message = "melding",
		report_command_parameter_message_help = "Meldingen du ønsker å sende.",
		report_command_substitutes = "",

		announce_command = "kunngjør",
		announce_command_help = "Send en melding til alle spillere.",
		announce_command_parameter_message = "melding",
		announce_command_parameter_message_help = "Meldingen du ønsker å sende.",
		announce_command_substitutes = "",

		staff_pm_command = "ansatt_pm",
		staff_pm_command_help = "Send en melding til enten en ansatt eller til en spiller som en ansatt.",
		staff_pm_command_parameter_server_id = "server id",
		staff_pm_command_parameter_server_id_help = "Server-IDen til spilleren du vil sende en melding til.",
		staff_pm_command_parameter_message = "melding",
		staff_pm_command_parameter_message_help = "Meldingen du vil sende.",
		staff_pm_command_substitutes = "ansattmelding",

		staff_command = "ansatte",
		staff_command_help = "Send en melding til alle aktive ansatte.",
		staff_command_parameter_message = "melding",
		staff_command_parameter_message_help = "Meldingen du ønsker å sende.",
		staff_command_substitutes = "",

		wipe_command = "slett",
		wipe_command_help = "Slett uønskede enheter fra kartet.",
		wipe_command_parameter_distance = "avstand",
		wipe_command_parameter_distance_help = "Hvis du kun ønsker å slette enheter innenfor en viss avstand, skriv inn en avstand her. La den være `false` eller `0` for hele kartet.",
		wipe_command_parameter_ignore_local_entities = "ignorer lokale enheter",
		wipe_command_parameter_ignore_local_entities_help = "Ignorer ikke-nettverksenheter? Hvis du rydder opp etter en juksemaker, anbefales det at du setter dette til `true` eller `1`.",
		wipe_command_parameter_model_name = "modellnavn",
		wipe_command_parameter_model_name_help = "Hvis du ønsker å kun slette enheter av et bestemt modellnavn, sett inn det aktuelle modellnavnet her. Hvis ikke, la feltet være blankt, `false` eller `0`. Du kan også sette dette til `kjøretøy` eller `peds`.",
		wipe_command_substitutes = "",

		noclip_command = "noclip",
		noclip_command_help = "Slå noclip av eller på.",
		noclip_command_parameter_server_id = "server-id",
		noclip_command_parameter_server_id_help = "Hvis du vil slå noclip av eller på for en annen spiller, sett inn deres server-ID her.",
		noclip_command_substitutes = "",

		safe_noclip_command = "trygg_noclip",
		safe_noclip_command_help = "Aktiverer noclip, men bare hvis det ikke er noen i nærheten som kan se deg gjøre det (ansatte med ansatt-toggling ekskludert).",
		safe_noclip_command_substitutes = "snoclip",

		delete_vehicle_command = "slett_kjøretøy",
		delete_vehicle_command_help = "Slett et kjøretøy i nærheten.",
		delete_vehicle_command_parameter_ignore_heading = "ja",
		delete_vehicle_command_parameter_ignore_heading_help = "Ønsker du å ignorere retningen til spilleren din? Hvis du lar dette stå tomt, vil det virke som `nei`.",
		delete_vehicle_command_substitutes = "slettv",

		delete_vehicle_interactively_command = "slettv_interaktivt",
		delete_vehicle_interactively_command_help = "Aktiverer interaktiv sletting av kjøretøy.",
		delete_vehicle_interactively_command_substitutes = "svi",

		kick_command = "spark",
		kick_command_help = "Kaster en spiller ut av serveren.",
		kick_command_parameter_server_id = "server-id",
		kick_command_parameter_server_id_help = "Den aktuelle spillerens server-id du ønsker å kaste ut.",
		kick_command_parameter_reason = "årsak",
		kick_command_parameter_reason_help = "Årsaken til at spilleren ble sparket. Dette kan være tomt.",
		kick_command_substitutes = "",

		ban_command = "ban",
		ban_command_help = "Utesteng en spiller fra serveren.",
		ban_command_parameter_server_id = "server-id",
		ban_command_parameter_server_id_help = "Server-IDen til spilleren du prøver å utestenge.",
		ban_command_parameter_expire = "utløp",
		ban_command_parameter_expire_help = "Lengden på spillerens utestengelse. Dette kan være tomt, `0` eller `false` for en ubestemt utestengelse. Du kan bruke w/d/h for lengden (f.eks. `3d2h` -> 3 dager, 2 timer).",
		ban_command_parameter_reason = "grunn",
		ban_command_parameter_reason_help = "Årsaken til spillerens utestengelse. Dette kan bli blankt.",
		ban_command_substitutes = "",

		staff_hidden_command = "ansatt_skjult",
		staff_hidden_command_help = "Slå av/på om andre spillere kan se din ansatt status eller ikke.",
		staff_hidden_command_substitutes = "",

		staff_toggle_command = "ansatt_toggling",
		staff_toggle_command_help = "Slå av/på din ansatt tilgjengelighet. Å slå den av vil hindre rapporter, ansatt PM-er og ansatt meldinger fra å dukke opp.",
		staff_toggle_command_substitutes = "",

		protective_mode_command = "beskyttelsesmodus",
		protective_mode_command_help = "Slå av/på serverens beskyttelsesmodus. Dette vil hindre nye tilkoblinger fra spillere med mindre enn den spesifiserte mengden påkrevede spilltid. Dette sjekk er ekskludert for stab-medlemmer og server-støtte.",
		protective_mode_command_parameter_enabled = "aktivert",
		protective_mode_command_parameter_enabled_help = "Skal sjekken være aktivert? Gyldige input er: `true`, `false`, `1` og `0`.",
		protective_mode_command_parameter_playtime = "spilletid",
		protective_mode_command_parameter_playtime_help = "Den nødvendige mengden spilletid (sekunder) for å akseptere en ny tilkobling.",
		protective_mode_command_substitutes = "",

		spawn_vehicle_command = "spawn_kjøretøy",
		spawn_vehicle_command_help = "Spawn et kjøretøy.",
		spawn_vehicle_command_parameter_model_name = "modellnavn",
		spawn_vehicle_command_parameter_model_name_help = "Modellnavnet på kjøretøyet du ønsker å spawne.",
		spawn_vehicle_command_parameter_server_id = "tjener-ID",
		spawn_vehicle_command_parameter_server_id_help = "Spillerens tjener-ID du vil spawne dette kjøretøyet for. Du kan la dette stå tomt eller sette det til `0` for å velge deg selv.",
		spawn_vehicle_command_substitutes = "sv",

		create_vehicle_command = "lag_kjøretøy",
		create_vehicle_command_help = "Spawner et kjøretøy på bakken på din nåværende posisjon uten å warp deg inn i det.",
		create_vehicle_command_parameter_model_name = "modellnavn",
		create_vehicle_command_parameter_model_name_help = "Modellnavnet på kjøretøyet du vil spawne.",
		create_vehicle_command_parameter_ground = "bakken",
		create_vehicle_command_parameter_ground_help = "Skal kjøretøyet spawnes på bakken?",
		create_vehicle_command_substitutes = "cv",

		replace_vehicle_command = "erstatt_kjøretøy",
		replace_vehicle_command_help = "Bytt ut ditt nåværende kjøretøy med et annet.",
		replace_vehicle_command_parameter_model_name = "modellnavn",
		replace_vehicle_command_parameter_model_name_help = "Modellnavnet på kjøretøyet du vil spawne.",
		replace_vehicle_command_substitutes = "rv",

		aimbot_command = "aimbot",
		aimbot_command_help = "Slår 'aimbot' av og på.",
		aimbot_command_parameter_server_id = "server id",
		aimbot_command_parameter_server_id_help = "Hvis du vil bytte 'aimbot' for noen andre, sett inn deres server id her.",
		aimbot_command_parameter_targets = "mål",
		aimbot_command_parameter_targets_help = "Mål server ids (fungerer bare når du bytter for deg selv). (Vil filtrere målene for å bare være spillere med disse server ids)",
		aimbot_command_substitutes = "",

		player_bones_debug_command = "spiller_skjelett_feilsøk",
		player_bones_debug_command_help = "Bytt til spillerens skjelett feilsøking-modus.",
		player_bones_debug_command_parameter_server_id = "server id",
		player_bones_debug_command_parameter_server_id_help = "Hvis du vil bytte til skjelett feilsøkings-modus for noen andre, skriv inn deres server ID her.",
		player_bones_debug_command_substitutes = "spiller_skjelett",

		wallhack_command = "gjennom_veggene",
		wallhack_command_help = "Bytt 'gjennom veggen'-visning.",
		wallhack_command_parameter_server_id = "server id",
		wallhack_command_parameter_server_id_help = "Hvis du vil aktivere/deaktivere 'gjennom-vegg-seing' for noen andre, sett inn deres server-id her.",
		wallhack_command_substitutes = "",

		speed_boost_command = "fart_økning",
		speed_boost_command_help = "Aktiver/deaktiver 'fart økning'.",
		speed_boost_command_parameter_server_id = "server-id",
		speed_boost_command_parameter_server_id_help = "Hvis du vil aktivere/deaktivere 'fart økning' for noen andre, sett inn deres server-id her.",
		speed_boost_command_substitutes = "",

		nitro_boost_command = "nitro_økning",
		nitro_boost_command_help = "Aktiver/deaktiver 'nitro økning'.",
		nitro_boost_command_parameter_server_id = "server id",
		nitro_boost_command_parameter_server_id_help = "Hvis du ønsker å slå på 'nitro boost' for noen andre, legg inn deres server-id her.",
		nitro_boost_command_substitutes = "nitro",

		indestructibility_command = "ødeleggelsesbestandighet",
		indestructibility_command_help = "Skrur av/på 'ødeleggelsesbestandighet'.",
		indestructibility_command_parameter_server_id = "server id",
		indestructibility_command_parameter_server_id_help = "Hvis du ønsker å toggle 'ødeleggelsesbestandighet' for noen andre, legger du inn deres server-id her.",
		indestructibility_command_substitutes = "ind, god, god_mode, godmode",

		no_nearby_vehicles_command = "ingen_nærliggende_kjøretøy",
		no_nearby_vehicles_command_help = "Aktiver/deaktiver 'ingen nærliggende kjøretøy'.",
		no_nearby_vehicles_command_parameter_server_id = "server id",
		no_nearby_vehicles_command_parameter_server_id_help = "Hvis du ønsker å aktivere/deaktivere 'ingen nærliggende kjøretøy' for noen andre, sett inn vedkommendes Server ID her.",
		no_nearby_vehicles_command_substitutes = "",

		disable_collisions_command = "deaktiver_kollisjoner",
		disable_collisions_command_help = "Deaktiver kollisjoner med kjøretøy og personer i en radius på 10 meter.",
		disable_collisions_command_substitutes = "kollisjoner",

		ghost_command = "spøkelse",
		ghost_command_help = "Dette kommandoen vil aktivere /titt, usynlighet og /kollisjoner.",
		ghost_command_substitutes = "",

		job_command = "jobb",
		job_command_help = "Endrer noen sin jobb basert på søk.",
		job_command_parameter_server_id = "server-id",
		job_command_parameter_server_id_help = "Spillerens server-id eller 0 for å velge deg selv.",
		job_command_parameter_search = "søk",
		job_command_parameter_search_help = "Jobbavdeling-/posisjonsnavn eller en del av det for å søke etter eller `none` for å fjerne jobben.",
		job_command_substitutes = "",

		reset_job_command = "nullstill_jobb",
		reset_job_command_help = "Nullstiller noen sin jobb til arbeidsledig.",
		reset_job_command_parameter_server_id = "server id",
		reset_job_command_parameter_server_id_help = "Spillerens server id eller 0 for å velge deg selv.",
		reset_job_command_substitutes = "",

		watching_command = "observasjon",
		watching_command_help = "Viser deg alle spillere som observerer i nærheten.",
		watching_command_substitutes = "",

		disable_recoil_command = "deaktiver_rekyl",
		disable_recoil_command_help = "Deaktiverer all våpenrekyl.",
		disable_recoil_command_substitutes = "",

		infinite_ammo_command = "uendelig_ammo",
		infinite_ammo_command_help = "Slår av/på uendelig ammo.",
		infinite_ammo_command_substitutes = "",

		track_player_command = "spor_spiller",
		track_player_command_help = "Slår av eller på sporing for en bestemt spiller.",
		track_player_command_parameter_server_id = "server-ID",
		track_player_command_parameter_server_id_help = "Server-IDen til spilleren du vil spore. La stå tomt for å deaktivere.",
		track_player_command_substitutes = "",

		reflect_damage_command = "speilskade",
		reflect_damage_command_help = "Aktiverer skadespeiling. (Enhver spiller som skader deg vil selv bli skadet)",
		reflect_damage_command_substitutes = "speil",

		trigger_headache_command = "utløs_hodepine",
		trigger_headache_command_help = "Lar en spesifisert spiller lage for en kort periode.",
		trigger_headache_command_parameter_server_id = "server id",
		trigger_headache_command_parameter_server_id_help = "Server-IDen til spilleren du vil utløse hodepine på.",
		trigger_headache_command_substitutes = "hodepine",

		stick_command = "fest",
		stick_command_help = "Fest deg til bilen du står oppå.",
		stick_command_substitutes = "",

		unstick_command = "løsne",
		unstick_command_help = "Løsne deg fra bilen du er festet til.",
		unstick_command_substitutes = "",

		clean_ped_command = "rens_ped",
		clean_ped_command_help = "Renser en karakter for blod, kulemerker, skitt, osv.",
		clean_ped_command_parameter_server_id = "server-id",
		clean_ped_command_parameter_server_id_help = "Server-IDen til spilleren du vil fjerne skitt fra.",
		clean_ped_command_substitutes = "",

		toggle_vehicle_smoke_command = "toggle_kjøretøy_røyk",
		toggle_vehicle_smoke_command_help = "Slå på/av 'kjøretøy røyk'.",
		toggle_vehicle_smoke_command_parameter_server_id = "server-id",
		toggle_vehicle_smoke_command_parameter_server_id_help = "Hvis du ønsker å slå på/av 'kjøretøy røyk' for en annen spiller, sett inn deres server-ID her.",
		toggle_vehicle_smoke_command_parameter_color_r = "farge r",
		toggle_vehicle_smoke_command_parameter_color_r_help = "Den røde verdien til røykfargen (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_g = "farge g",
		toggle_vehicle_smoke_command_parameter_color_g_help = "Den grønne verdien til røykfargen (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_b = "farge b",
		toggle_vehicle_smoke_command_parameter_color_b_help = "Den blå verdien til røykfargen (0 - 255).",
		toggle_vehicle_smoke_command_substitutes = "kjøretøy_røyk, røyk",

		speed_up_progress_bar_command = "hastighetsøke_fremdriftslinje",
		speed_up_progress_bar_command_help = "Bytt 'hastighetsøk fremdriftslinje' til på eller av.",
		speed_up_progress_bar_command_parameter_server_id = "server-id",
		speed_up_progress_bar_command_parameter_server_id_help = "Hvis du vil slå på 'hastighetsøk fremdriftslinje' for noen andre, sett inn deres server-id her.",
		speed_up_progress_bar_command_substitutes = "hastighet_øke",

		invisibility_command = "usynlighet",
		invisibility_command_help = "Bytt 'usynlighet' til på eller av.",
		invisibility_command_parameter_server_id = "server id",
		invisibility_command_parameter_server_id_help = "Hvis du ønsker å slå av/på 'usynlighet' for noen andre, sett inn deres server ID her.",
		invisibility_command_substitutes = "inv, invis, usynlig",

		add_cash_command = "legg_til_penger",
		add_cash_command_help = "Legg til penger på en annens rollefigurens konto.",
		add_cash_command_parameter_amount = "beløp",
		add_cash_command_parameter_amount_help = "Beløpet du ønsker å gi til spilleren.",
		add_cash_command_parameter_server_id = "server id",
		add_cash_command_parameter_server_id_help = "Spillerens server-ID. Hvis dette feltet er tomt, velges du automatisk.",
		add_cash_command_substitutes = "",

		remove_cash_command = "fjern_cash",
		remove_cash_command_help = "Fjern penger fra en annen spiller.",
		remove_cash_command_parameter_amount = "beløp",
		remove_cash_command_parameter_amount_help = "Beløpet du vil fjerne fra spillerens kontanter.",
		remove_cash_command_parameter_server_id = "server-ID",
		remove_cash_command_parameter_server_id_help = "Spillerens server-ID. Hvis dette feltet er tomt, velges du automatisk.",
		remove_cash_command_substitutes = "",

		add_bank_command = "legg_til_bank",
		add_bank_command_help = "Legg til bankinnskudd til en spillers karakter.",
		add_bank_command_parameter_amount = "beløp",
		add_bank_command_parameter_amount_help = "Beløpet av bankinnskudd du vil gi til spilleren.",
		add_bank_command_parameter_server_id = "server-ID",
		add_bank_command_parameter_server_id_help = "Spillerens server-ID. Hvis feltet er tomt, vil du automatisk velge deg selv.",
		add_bank_command_substitutes = "",

		remove_bank_command = "fjern_bank",
		remove_bank_command_help = "Fjern bankinnskudd fra en spillers karakter.",
		remove_bank_command_parameter_amount = "beløp",
		remove_bank_command_parameter_amount_help = "Beløpet som skal fjernes fra spillerens banksaldo.",
		remove_bank_command_parameter_server_id = "server-id",
		remove_bank_command_parameter_server_id_help = "Spillerens server-ID. Hvis det blir tomt, vil du automatisk velge deg selv.",
		remove_bank_command_substitutes = "",

		spawn_item_command = "spawne_gjenstand",
		spawn_item_command_help = "Brukes for å spawne gjenstander.",
		spawn_item_command_parameter_item_name = "gjenstandsnavn",
		spawn_item_command_parameter_item_name_help = "Navnet på gjenstanden du ønsker å spawne. Dette må være gjenstandsnavnet, og derfor vil ikke merkenavn fungere.",
		spawn_item_command_parameter_amount = "antall",
		spawn_item_command_parameter_amount_help = "Antall av varen du vil spawne. Hvis dette feltet er blankt, spawnes en vare.",
		spawn_item_command_parameter_server_id = "server-id",
		spawn_item_command_parameter_server_id_help = "Server-id'en til spilleren du vil spawne varen for. Hvis dette feltet er blankt, blir du valgt.",
		spawn_item_command_parameter_battle_royale_only = "kun Battle Royale",
		spawn_item_command_parameter_battle_royale_only_help = "Gjør denne varen til en Battle Royale-vare kun.",
		spawn_item_command_substitutes = "si",

		warning_message_command = "advarsel_melding",
		warning_message_command_help = "Legg til en global servermelding for alle spillere.",
		warning_message_command_parameter_message = "melding",
		warning_message_command_parameter_message_help = "Meldingen du vil vise til spillerne. Du kan la dette parameteret være tomt for å fjerne advarselmeldingen.",
		warning_message_command_substitutes = "",

		tp_coords_command = "tp_coords",
		tp_coords_command_help = "Teleporter til noen koordinater.",
		tp_coords_command_parameter_x = "x",
		tp_coords_command_parameter_x_help = "Den X-koordinaten du vil teleportere til.",
		tp_coords_command_parameter_y = "y",
		tp_coords_command_parameter_y_help = "Den Y-koordinaten du vil teleportere til.",
		tp_coords_command_parameter_z = "z",
		tp_coords_command_parameter_z_help = "Den Z-koordinaten du vil teleportere til. Dette parameteret er valgfritt, og hvis det er tomt, vil koordinatene på bakken bli søkt etter automatisk.",
		tp_coords_command_substitutes = "tpc",

		tp_waypoint_command = "tp_waypoint",
		tp_waypoint_command_help = "Teleporter til merke på kartet.",
		tp_waypoint_command_substitutes = "tp_marker, tp",

		isolate_player_command = "isoler_spiller",
		isolate_player_command_help = "Isolerer en spiller, avviser alt de prøver å gjøre.",
		isolate_player_command_parameter_server_id = "server id",
		isolate_player_command_parameter_server_id_help = "Målets spiller.",
		isolate_player_command_substitutes = "isoler",

		show_all_evidence_command = "vis_all_evidens",
		show_all_evidence_command_help = "Viser all nærliggende bevis på kulehylser.",
		show_all_evidence_command_substitutes = "all_evidence, vis_evidens, evidens",

		population_density_command = "befolkningstetthet",
		population_density_command_help = "Overskriv den globale multiplikatoren for befolkningstetthet.",
		population_density_command_parameter_multiplier = "multiplikator",
		population_density_command_parameter_multiplier_help = "Det befolkningstetthetsmultiplikatoren du ønsker å sette. Å forlate dette tomt vil slå det av. Gyldige verdier er fra 0,0 til 1,0.",
		population_density_command_substitutes = "befolkning, tetthet, pop",

		repair_vehicle_command = "reparere_kjøretøy",
		repair_vehicle_command_help = "Reparer kjøretøyet du er i.",
		repair_vehicle_command_substitutes = "fiks",

		enter_vehicle_command = "gå_inn_i_kjøretøy",
		enter_vehicle_command_help = "Tving spilleren din til å gå inn i det kjøretøyet du er nærmest (lar deg gå ut av kjøretøyet hvis du allerede er i et).",
		enter_vehicle_command_parameter_network_id = "tilkoblings-id",
		enter_vehicle_command_parameter_network_id_help = "Tilkoblings-id til kjøretøyet du vil entre. (valgfritt)",
		enter_vehicle_command_substitutes = "gik",

		set_modification_command = "sett_modifikasjon",
		set_modification_command_help = "Sett kjøretøymodifikasjoner på kjøretøyet du er i.",
		set_modification_command_parameter_mod_type = "modifikasjonstype",
		set_modification_command_parameter_mod_type_help = "IDen til modifikasjonstypen du ønsker å sette.",
		set_modification_command_parameter_mod_index = "mod-indeks",
		set_modification_command_parameter_mod_index_help = "ID-en til modden du ønsker å sette.",
		set_modification_command_parameter_custom_tires = "egendefinerte dekk",
		set_modification_command_parameter_custom_tires_help = "Egendefinerte dekk?",
		set_modification_command_substitutes = "sm",

		set_livery_command = "sette_livery",
		set_livery_command_help = "Sett liveryen på kjøretøyet du er i.",
		set_livery_command_parameter_livery_index = "livery-indeks",
		set_livery_command_parameter_livery_index_help = "Indeksen til liveryen du ønsker å sette.",
		set_livery_command_substitutes = "",

		set_fake_plate_command = "sette_falsk_nummerskilt",
		set_fake_plate_command_help = "Setter det falske nummerskiltet på kjøretøyet du er i.",
		set_fake_plate_command_parameter_plate_number = "nummerskilt",
		set_fake_plate_command_parameter_plate_number_help = "Nummerskiltet du ønsker å sette.",
		set_fake_plate_command_substitutes = "nummerskilt",

		set_dirt_level_command = "sette_skitten_nivå",
		set_dirt_level_command_help = "Renser kjøretøyet du er i.",
		set_dirt_level_command_parameter_dirt_level = "skitten nivå",
		set_dirt_level_command_parameter_dirt_level_help = "Nivået av skitt du ønsker å sette (mellom 0 og 15).",
		set_dirt_level_command_substitutes = "søl_nivå",

		player_info_command = "spiller_info",
		player_info_command_help = "Returnerer informasjon om en bestemt spiller.",
		player_info_command_parameter_server_id = "server id",
		player_info_command_parameter_server_id_help = "Spillerens server-ID du ønsker å få informasjon om. Hvis det er tomt, blir deg selv valgt.",
		player_info_command_substitutes = "spiller, si",

		inventory_command = "inventar",
		inventory_command_help = "Åpner et spesifisert inventar.",
		inventory_command_parameter_inventory_name = "inventar navn",
		inventory_command_parameter_inventory_name_help = "Navnet på inventaret du ønsker å åpne.",
		inventory_command_substitutes = "",

		character_inventory_command = "karakter_inventar",
		character_inventory_command_help = "viser deg inventaret til en annen spiller.",
		character_inventory_command_parameter_server_id = "server id",
		character_inventory_command_parameter_server_id_help = "Server IDen til den spilleren.",
		character_inventory_command_substitutes = "lommer",

		fake_disconnect_command = "fake_disconnect",
		fake_disconnect_command_help = "Trigger en serie med hendelser som får det til å se ut som om du har blitt frakoblet fra serveren. Dette vil også aktivere noclip-modusen hvis den ikke er aktivert fra før.",
		fake_disconnect_command_substitutes = "fake_leave, dc",

		set_identity_command = "sett_identitet",
		set_identity_command_help = "Overskrider spillerens navn.",
		set_identity_command_parameter_player_name = "spiller navn",
		set_identity_command_parameter_player_name_help = "Navnet du vil sette eller la være tomt for å tilbakestille.",
		set_identity_command_substitutes = "identitet",

		disable_idle_cam_command = "deaktiver_idle_kamera",
		disable_idle_cam_command_help = "Deaktiverer det hvilende kameraet fra å aktivere.",
		disable_idle_cam_command_substitutes = "deaktiver_idle, hvile",

		auto_drive_command = "automatisk_kjøring",
		auto_drive_command_help = "Kjører automatisk til den angitte veipunktet eller kjører rundt tilfeldig hvis ingen er satt.",
		auto_drive_command_parameter_style = "stil",
		auto_drive_command_parameter_style_help = "Kjørestil (normal, hastverk, uforsiktig, revers).",
		auto_drive_command_substitutes = "",

		drive_speed_command = "kjørehastighet",
		drive_speed_command_help = "Sett cruisefarten for automatisk kjøring-kommandoen.",
		drive_speed_command_parameter_speed = "fart",
		drive_speed_command_parameter_speed_help = "Farten du ønsker å sette (i miles per time).",
		drive_speed_command_substitutes = "",

		toggle_weapon_attachment_command = "bytt_våpenvedlegg",
		toggle_weapon_attachment_command_help = "Bytter vedlegg på våpenet du holder for øyeblikket.",
		toggle_weapon_attachment_command_parameter_attachment = "vedlegg",
		toggle_weapon_attachment_command_parameter_attachment_help = "Vedlegget du vil bytte.",
		toggle_weapon_attachment_command_substitutes = "våpenvedlegg, vedlegg",

		set_weapon_tint_command = "sett_våpenfarge",
		set_weapon_tint_command_help = "Setter eller fjerner fargen på våpenet du holder for øyeblikket.",
		set_weapon_tint_command_parameter_tint = "tint",
		set_weapon_tint_command_parameter_tint_help = "Fargen du ønsker å sette (la stå tomt for å fjerne).",
		set_weapon_tint_command_substitutes = "våpenfarge, farge",

		set_item_name_override_command = "sett_element_navn_overstyring",
		set_item_name_override_command_help = "Setter eller fjerner navneoverskriften til det angitte elementet.",
		set_item_name_override_command_parameter_slot = "slot",
		set_item_name_override_command_parameter_slot_help = "Nummeret på plassen til elementet du ønsker å endre navn på.",
		set_item_name_override_command_parameter_item_name = "navn på objekt",
		set_item_name_override_command_parameter_item_name_help = "Navnet du vil sette som overskrivning for objektet (la stå tomt for å fjerne).",
		set_item_name_override_command_substitutes = "set_name_override, name_override",

		set_durability_command = "set_durability",
		set_durability_command_help = "Setter holdbarheten til alle objekter i en bestemt spalte.",
		set_durability_command_parameter_slot = "spalte",
		set_durability_command_parameter_slot_help = "Hvilken spalte du vil sette holdbarheten til objekter i.",
		set_durability_command_parameter_amount = "mengde",
		set_durability_command_parameter_amount_help = "Mengden holdbarhet å sette (standardverdi er 100).",
		set_durability_command_substitutes = "holdbarhet",

		set_metadata_command = "sett_metadata",
		set_metadata_command_help = "Setter all metadata for gjenstander i en bestemt plassering.",
		set_metadata_command_parameter_slot = "plassering",
		set_metadata_command_parameter_slot_help = "Hvilken plassering å sette gjenstandenes metadata i.",
		set_metadata_command_parameter_metadata = "metadata",
		set_metadata_command_parameter_metadata_help = "Metadatas json som skal settes.",
		set_metadata_command_substitutes = "metadata",

		refill_nitro_command = "fyllpånitro",
		refill_nitro_command_help = "Fyller opp nitrotanken på bilen din.",
		refill_nitro_command_substitutes = "",

		register_weapon_command = "registrer_våpen",
		register_weapon_command_help = "Registrer et våpen i en angitt slot på en gitt karakter ID.",
		register_weapon_command_parameter_slot = "slot",
		register_weapon_command_parameter_slot_help = "Slotten hvor våpenet er plassert.",
		register_weapon_command_parameter_character_id = "karakter ID",
		register_weapon_command_parameter_character_id_help = "Karakter-ID'en til karakteren du ønsker å registrere våpenet på.",
		register_weapon_command_substitutes = "",

		advanced_metagame_command = "avansert_metagaming",
		advanced_metagame_command_help = "Superadmin-kommando for å hjelpe deg med å ta metagamingen til neste nivå.",
		advanced_metagame_command_substitutes = "am",

		list_weapon_attachments_command = "liste_over_våpenvedlegg",
		list_weapon_attachments_command_help = "Setter eller fjerner fargen på våpenet du holder i hendene.",
		list_weapon_attachments_command_substitutes = "våpenvedlegg, vedlegg",

		wipe_first_owned_command = "slett_første_eide",
		wipe_first_owned_command_help = "Sletter alle enheter som er eid av en bestemt spiller.",
		wipe_first_owned_command_parameter_server_id = "server id",
		wipe_first_owned_command_parameter_server_id_help = "Spillerens server-ID.",
		wipe_first_owned_command_parameter_range = "rekkevidde",
		wipe_first_owned_command_parameter_range_help = "Rekkevidden du ønsker å slette enheter i eller tom for å slette alle.",
		wipe_first_owned_command_substitutes = "",

		freeze_command = "frys",
		freeze_command_help = "Fryser en spiller.",
		freeze_command_parameter_server_id = "server id",
		freeze_command_parameter_server_id_help = "Server-IDen til spilleren du vil fryse.",
		freeze_command_substitutes = "",

		unfreeze_command = "avrim",
		unfreeze_command_help = "Frigjør en spiller.",
		unfreeze_command_parameter_server_id = "server id",
		unfreeze_command_parameter_server_id_help = "Server-IDen til spilleren du ønsker å frigjøre.",
		unfreeze_command_substitutes = "",

		slap_command = "slå",
		slap_command_help = "Slår en spiller (dreper dem).",
		slap_command_parameter_server_id = "server id",
		slap_command_parameter_server_id_help = "Server-IDen til spilleren du ønsker å slå.",
		slap_command_substitutes = "",

		damage_player_command = "skade_spiller",
		damage_player_command_help = "Skader en spiller sin helse.",
		damage_player_command_parameter_server_id = "server id",
		damage_player_command_parameter_server_id_help = "Server ID-en til spilleren du vil skade.",
		damage_player_command_parameter_health = "skade",
		damage_player_command_parameter_health_help = "Mengden av skade du vil påføre.",
		damage_player_command_substitutes = "skade",

		scoop_command = "scoop",
		scoop_command_help = "Samler opp alle spillere innenfor en viss radius. (Skal brukes med /unscoop)",
		scoop_command_parameter_radius = "radius",
		scoop_command_parameter_radius_help = "Hvilken radius du vil samle opp spillere i (2D).",
		scoop_command_substitutes = "",

		unscoop_command = "unscoop",
		unscoop_command_help = "Teleporter alle spillere du tidligere hentet opp til din nåværende posisjon.",
		unscoop_command_parameter_revive = "revive",
		unscoop_command_parameter_revive_help = "Gjenoppliv opphentede spillere hvis de er nede.",
		unscoop_command_substitutes = "",

		peek_command = "peek",
		peek_command_help = "Peek viser alle usynlige spillere rundt deg (inkludert deg selv).",
		peek_command_substitutes = "",

		hit_indicator_command = "hit_indicator",
		hit_indicator_command_help = "Slår av/på treffindikatoren hvis du bruker det egendefinerte kornet.",
		hit_indicator_command_substitutes = "",

		trigger_ems_call_command = "utsend_nødmelding_ambulanse",
		trigger_ems_call_command_help = "Sender en lokal nødmelding om behov for ambulanse fra din posisjon.",
		trigger_ems_call_command_substitutes = "",

		-- base/anti_cheat
		model_detect_add_command = "modell_detect_legg_til",
		model_detect_add_command_help = "Midlertidig legger til en modell i listen over detekterte modeller. Listen nullstilles ved servergjenstart.",
		model_detect_add_command_parameter_model = "modell",
		model_detect_add_command_parameter_model_help = "Modellen du vil detektere. Kan være både et modellnavn og en modellhash.",
		model_detect_add_command_substitutes = "detekter",

		model_detect_remove_command = "modell_ikke_gjenkjenn_kommando",
		model_detect_remove_command_help = "Fjerner en modell fra gjenkjenningslisten.",
		model_detect_remove_command_parameter_model = "modell",
		model_detect_remove_command_parameter_model_help = "Modellen du vil fjerne. Kan være både et modellnavn og en modell hash.",
		model_detect_remove_command_substitutes = "ikke_gjenkjenn",

		detection_area_add_command = "legg_til_finningsområde",
		detection_area_add_command_help = "Opprett et område der alle spawnete enheter innenfor det området vil bli sendt til deg med litt informasjon. Informasjonen kan bli funnet i Overview UI-et.",
		detection_area_add_command_parameter_radius = "radius",
		detection_area_add_command_parameter_radius_help = "Radiusen til sirkelen der enheter vil bli oppdaget. Minimumsverdien er `10` og maksimumsverdien er `5000`. Hvis du ikke skriver noe vil standardverdien være `100`.",
		detection_area_add_command_substitutes = "legg_til_område",

		detection_area_remove_command = "fjern_deteksjonsområde",
		detection_area_remove_command_help = "Fjern et deteksjonsområde.",
		detection_area_remove_command_parameter_area_id = "deteksjonsområde-id",
		detection_area_remove_command_parameter_area_id_help = "ID-en til deteksjonsområdet du vil fjerne.",
		detection_area_remove_command_substitutes = "område_fjern",

		screen_text_debug_command = "screen_text_debug",
		screen_text_debug_command_help = "Debug skjevelinjer for skjermtekst-utelukkelse.",
		screen_text_debug_command_substitutes = "screen_text",

		-- base/commands
		help_command = "hjelp",
		help_command_help = "Vis alle tilgjengelige kommandoer.",
		help_command_substitutes = "",

		substitutes_command = "alternativer",
		substitutes_command_help = "Vis alle tilgjengelige alternativer.",
		substitutes_command_substitutes = "",

		-- base/discord
		richer_presence_command = "rikere_tilstedeværelse",
		richer_presence_command_help = "Bytt 'rikere tilstedeværelse' av eller på, som legger til mer informasjon i tilstedeværelsen, som lastet karakter.",
		richer_presence_command_substitutes = "",

		-- base/emojis
		emojis_list_command = "emoji_liste",
		emojis_list_command_help = "List opp alle tilgjengelige emojis.",
		emojis_list_command_substitutes = "emojis",

		emojis_refresh_command = "emoji_oppdater",
		emojis_refresh_command_help = "Oppdater de tilgjengelige emojis. Dette vil hente den nyeste listen fra Discord guilden.",
		emojis_refresh_command_substitutes = "",

		-- base/ping
		get_pings_command = "få_ping",
		get_pings_command_help = "Få gjennomsnittlig ping til ulike verter rundt om i verden for å finne den mest passende vertsplasseringen for spillerne på denne serveren.",
		get_pings_command_substitutes = "",

		-- base/profile
		profile_debug_command = "profil_feilsøking",
		profile_debug_command_help = "Aktiver/deaktiver profilfeilsøker.",
		profile_debug_command_substitutes = "",

		-- base/users
		playtime_command = "spilletid",
		playtime_command_help = "Sjekk total spilletid på serveren, samt spilletid for denne økten.",
		playtime_command_parameter_server_id = "server-id",
		playtime_command_parameter_server_id_help = "Spillerens server-ID du ønsker å få spilletiden for. Du kan la dette stå tomt eller sette det til `0` for å velge deg selv.",
		playtime_command_substitutes = "",

		leaderboard_command = "poengtavle",
		leaderboard_command_help = "Sjekk poengtavlen for spilletid.",
		leaderboard_command_substitutes = "",

		package_command = "pakke",
		package_command_help = "Sjekk og oppdater pakken din.",
		package_command_substitutes = "oppdater_pakke",

		player_packages_command = "spiller_pakker",
		player_packages_command_help = "Få alle dine ubrukte 'spiller pakker'.",
		player_packages_command_substitutes = "",

		unload_character_command = "last_ut_karakter",
		unload_character_command_help = "Last ut en spillers karakter.",
		unload_character_command_parameter_server_id = "server id",
		unload_character_command_parameter_server_id_help = "Spillerens server ID du vil laste ut karakteren for. Du kan la dette være blankt eller på `0` for å velge deg selv.",
		unload_character_command_parameter_message = "melding",
		unload_character_command_parameter_message_help = "Hvis du ønsker å vise en melding til spilleren i innloggingsmenyen, skriv den her.",
		unload_character_command_substitutes = "avlaste",

		-- game/admin_menu
		admin_command = "admin",
		admin_command_help = "Åpner admin-menyen.",
		admin_command_substitutes = "",

		tp_player_command = "tp_spiller",
		tp_player_command_help = "Teleporter deg til en spiller.",
		tp_player_command_parameter_server_id = "server-ID",
		tp_player_command_parameter_server_id_help = "Server-IDen til spilleren du vil teleportere til.",
		tp_player_command_substitutes = "",

		tp_here_command = "tp_hit",
		tp_here_command_help = "Teleporter en spiller til deg.",
		tp_here_command_parameter_server_id = "server ID",
		tp_here_command_parameter_server_id_help = "Server-ID'en til spilleren du vil teleportere.",
		tp_here_command_substitutes = "",

		tp_to_command = "tp_til",
		tp_to_command_help = "Teleporter en spiller til en annen spiller.",
		tp_to_command_parameter_source_id = "kilde-ID",
		tp_to_command_parameter_source_id_help = "Spilleren du vil teleportere.",
		tp_to_command_parameter_destination_id = "destinasjons-ID",
		tp_to_command_parameter_destination_id_help = "Spilleren du vil teleportere til.",
		tp_to_command_substitutes = "",

		-- game/airdrops
		create_airdrop_command = "opprett_luftslipp",
		create_airdrop_command_help = "Opprett et luftslipp.",
		create_airdrop_command_parameter_airdrop_type = "luftslipp type",
		create_airdrop_command_parameter_airdrop_type_help = "Typen av luftslipp du ønsker å opprette. (våpen, narkotika, medisin, forsyninger, festninger, verdisaker, mat)",
		create_airdrop_command_parameter_item_amount = "gjenstandsmengde",
		create_airdrop_command_parameter_item_amount_help = "Antallet gjenstander som luftslippet skal inneholde.",
		create_airdrop_command_substitutes = "",

		-- game/airstrike
		call_airstrike_command = "kall_luftangrep",
		call_airstrike_command_help = "Kaller inn et luftangrep på din nåværende posisjon.",
		call_airstrike_command_substitutes = "",

		-- game/airsupport
		airsupport_command = "luftstøtte",
		airsupport_command_help = "Kaller inn luftstøtte.",
		airsupport_command_substitutes = "",

		-- game/alerts
		show_alert_command = "vis_varsel",
		show_alert_command_help = "Viser et varsel for en spesifikk spiller (eller alle).",
		show_alert_command_parameter_server_id = "server-ID",
		show_alert_command_parameter_server_id_help = "Spillerens server-ID som du ønsker å vise varselet til.",
		show_alert_command_parameter_content = "innhold",
		show_alert_command_parameter_content_help = "Innholdet i varselet.",
		show_alert_command_substitutes = "varsling",

		-- game/archives
		create_archive_command = "opprett_arkiv",
		create_archive_command_help = "Oppretter en ny sak i arkivet du står nærmest.",
		create_archive_command_parameter_case_number = "saksnummer",
		create_archive_command_parameter_case_number_help = "Saksnummeret (heltall mellom 1 og 99 999).",
		create_archive_command_substitutes = "",

		destroy_archive_command = "slett_arkiv",
		destroy_archive_command_help = "Sletter en eksisterende sak i arkivet du står nærmest.",
		destroy_archive_command_parameter_case_number = "saksnummer",
		destroy_archive_command_parameter_case_number_help = "Saksnummeret. (Du kan kun ødelegge tomme saker)",
		destroy_archive_command_substitutes = "",

		-- game/arena
		respawn_command = "gjenoppliv",
		respawn_command_help = "Drapsmetode (for arena)",
		respawn_command_substitutes = "selvmord",

		-- game/audio
		audio_debug_command = "lyd_feilsøk",
		audio_debug_command_help = "Slå på/av feilsøking for lyd.",
		audio_debug_command_substitutes = "",

		play_audio_command = "spill_av_lyd",
		play_audio_command_help = "Spill av en lyd til spesifikke spillere eller alle spillere.",
		play_audio_command_parameter_url = "url",
		play_audio_command_parameter_url_help = "URL-en for nedlastingen av lyden.",
		play_audio_command_parameter_volume = "volum",
		play_audio_command_parameter_volume_help = "Lydnivået lyden skal spilles av på. Gyldige verdier er fra `0` til `1`. Dette vil som standard være satt til `0.1`.",
		play_audio_command_parameter_server_id = "server-id",
		play_audio_command_parameter_server_id_help = "Spillerens server-ID som du vil spille av denne lyden for. Du kan bruke `-1` for å spille av for alle spillere.",
		play_audio_command_substitutes = "",

		-- game/bandaids
		random_bandaid_command = "tilfeldig_bandasje",
		random_bandaid_command_help = "Gir deg et tilfeldig plaster. :)",
		random_bandaid_command_substitutes = "plaster",

		-- game/battle_royale
		battle_royale_toggle_command = "battle_royale_toggle",
		battle_royale_toggle_command_help = "Slå av/på Battle Royale-funksjonen.",
		battle_royale_toggle_command_substitutes = "br_toggle",

		battle_royale_start_command = "battle_royale_start",
		battle_royale_start_command_help = "Start en Battle Royale-kamp.",
		battle_royale_start_command_parameter_no_vehicles = "ingen kjøretøy",
		battle_royale_start_command_parameter_no_vehicles_help = "Opprett en kamp uten kjøretøy.",
		battle_royale_start_command_substitutes = "br_start",

		battle_royale_invite_command = "battle_royale_invite",
		battle_royale_invite_command_help = "Inviter en spiller til din Battle Royale lobby.",
		battle_royale_invite_command_parameter_server_id = "server-id",
		battle_royale_invite_command_parameter_server_id_help = "Server-IDen til spilleren du vil invitere.",
		battle_royale_invite_command_substitutes = "br_invite",

		battle_royale_join_command = "battle_royale_join",
		battle_royale_join_command_help = "Bli med i en annen spillers Battle Royale lobby.",
		battle_royale_join_command_parameter_server_id = "server-id",
		battle_royale_join_command_parameter_server_id_help = "ID-en til serveren du vil bli med på.",
		battle_royale_join_command_substitutes = "br_bli_med",

		battle_royale_leave_command = "battle_royale_forlat",
		battle_royale_leave_command_help = "Forlat Battle Royale-lobbyen du er i.",
		battle_royale_leave_command_substitutes = "br_forlat",

		battle_royale_join_instance_command = "battle_royale_bli_med_i_instanse",
		battle_royale_join_instance_command_help = "Bli med i en annen spillers Battle Royale-instans.",
		battle_royale_join_instance_command_parameter_server_id = "server id",
		battle_royale_join_instance_command_parameter_server_id_help = "Spillerens server-IDen du vil bli med i økten til.",
		battle_royale_join_instance_command_substitutes = "br_bli_med_økt",

		battle_royale_leave_instance_command = "battle_royale_forlat_økt",
		battle_royale_leave_instance_command_help = "Forlat økten du har blitt med i.",
		battle_royale_leave_instance_command_substitutes = "br_forlat_økt",

		-- game/beds
		bed_command = "seng",
		bed_command_help = "Forsøk å legge deg i nærmeste seng.",
		bed_command_substitutes = "",

		-- game/bombs
		toggle_bombs_command = "toggle_bomber",
		toggle_bombs_command_help = "Slår bomber av og på for flyet du befinner deg i.",
		toggle_bombs_command_substitutes = "",

		toggle_ignition_bomb_command = "slå_på_ignisjonsbombe",
		toggle_ignition_bomb_command_help = "Slår på og av tenning av en bombe for kjøretøyet du befinner deg i (kjøretøyet vil eksplodere når motoren startes).",
		toggle_ignition_bomb_command_substitutes = "ignisjonsbombe",

		-- game/boomboxes
		wipe_boomboxes_command = "slett_boomboxer",
		wipe_boomboxes_command_help = "Sletter boomboxer.",
		wipe_boomboxes_command_parameter_radius = "radius",
		wipe_boomboxes_command_parameter_radius_help = "Sletteområdet. Hvis ingenting er angitt vil det automatisk velge `100`. Gyldige verdier er tall over `0`, samt `0` og `-1` som vil velge alle beholdere.",
		wipe_boomboxes_command_substitutes = "",

		draw_boomboxes_command = "tegn_boomboxer",
		draw_boomboxes_command_help = "Tegn boomboxer.",
		draw_boomboxes_command_substitutes = "",

		-- game/boosting
		spawn_contract_command = "spawn_kontrakt",
		spawn_contract_command_help = "Spawner en boosting kontrakt.",
		spawn_contract_command_parameter_server_id = "server id",
		spawn_contract_command_parameter_server_id_help = "Server-ID'en du ønsker å spawne en kontrakt for. Den vil automatisk velge deg selv hvis den er tom.",
		spawn_contract_command_substitutes = "",

		-- game/cache
		cache_assets_command = "cache_assets",
		cache_assets_command_help = "Tvunget forespørsel og nedlasting av mest strømmet ressurser (kjøretøy, objekter og klær). Dette anbefales ikke med mindre du har en treg tilkobling og ressurser ikke utfører en jevn installasjon. Dette kan også føre til at klienten krasjer mens det er i drift.",
		cache_assets_command_parameter_slow_download = "treg nedlasting",
		cache_assets_command_parameter_slow_download_help = "Vil du laste ned ressursene sakte? Dette vil ta mye lengre tid, men vil også redusere sjansen for krasj.",
		cache_assets_command_substitutes = "last_ned_cache, forhåndslast_cache, last_cache",

		-- game/camera
		stable_cam_command = "stabil_kam",
		stable_cam_command_help = "Veksler stabil kamera-modus.",
		stable_cam_command_substitutes = "",

		-- game/cargo
		cargo_start_command = "cargo_start",
		cargo_start_command_help = "Start den verdensomspennende Cargo-heisten.",
		cargo_start_command_substitutes = "start_cargo",

		cargo_end_command = "cargo_end",
		cargo_end_command_help = "Avslutter verdenomspennende lasteran.",
		cargo_end_command_substitutes = "slutt_lasteran",

		cargo_debug_command = "cargo_debug",
		cargo_debug_command_help = "Veksler Cargo debug.",
		cargo_debug_command_substitutes = "",

		cargo_debug_peds_command = "cargo_debug_peds",
		cargo_debug_peds_command_help = "Veksler Cargo Peds debug.",
		cargo_debug_peds_command_substitutes = "",

		-- game/casino
		set_casino_screens_command = "set_casino_screens",
		set_casino_screens_command_help = "Setter casinokjermene.",
		set_casino_screens_command_parameter_screen_label = "skjermlabel",
		set_casino_screens_command_parameter_screen_label_help = "Etiketten til skjermen du vil sette. Tilgjengelige skjermetiketter er `diamanter`, `skaller`, `snøfnugg` og `vinner`.",
		set_casino_screens_command_substitutes = "",

		-- game/cayo_perico
		toggle_cayo_perico_command = "skru_på_av_cayo_perico",
		toggle_cayo_perico_command_help = "Slå av eller på Cayo Perico-øya.",
		toggle_cayo_perico_command_substitutes = "skru_på_av_øya, øya",

		-- game/cayo_perico_world
		cayo_perico_command = "cayo_perico",
		cayo_perico_command_help = "Skru på eller av hjelpemeldinger for å komme inn og ut av Cayo Perico 'verdenen'.",
		cayo_perico_command_substitutes = "",

		-- game/cinema
		cinema_blacklist_add_command = "film_blacklist_legg_til",
		cinema_blacklist_add_command_help = "Legg til en video i den lokale kinoblacklisten.",
		cinema_blacklist_add_command_parameter_video_key = "video_nøkkel",
		cinema_blacklist_add_command_parameter_video_key_help = "Video-nøkkelen til videoen du ønsker å svarteliste. Eksempel: 'youtube:dQw4w9WgXcQ'",
		cinema_blacklist_add_command_substitutes = "",

		cinema_screens_debug_command = "cinema_screens_debug",
		cinema_screens_debug_command_help = "Feilsøkingsmodus for kinolerret.",
		cinema_screens_debug_command_substitutes = "",

		cinema_focus_command = "cinema_focus",
		cinema_focus_command_help = "Fokus på nærmeste kinolerret for en bedre seeropplevelse.",
		cinema_focus_command_substitutes = "fokus_kino",

		-- game/cinematic
		cinematic_command = "cinematic",
		cinematic_command_help = "Slå av/på svarte kinobokser.",
		cinematic_command_parameter_bar_height = "stolpehøyde",
		cinematic_command_parameter_bar_height_help = "Høyden på stolpene. Må være mellom 0 og 50 (prosent). Standarden er 10. Hvis du lar den være blank vil den settes til verdien du brukte sist.",
		cinematic_command_substitutes = "c, cin",

		-- game/clothing_menu
		clothing_command = "klær",
		clothing_command_help = "Åpner klesmenyen for deg eller for en annen spiller.",
		clothing_command_parameter_server_id = "server-id",
		clothing_command_parameter_server_id_help = "Server-IDen til spilleren du vil åpne klesmenyen for.",
		clothing_command_substitutes = "",

		barber_command = "frisør",
		barber_command_help = "Åpner frisørsalong-menyen for deg eller for en annen spiller.",
		barber_command_parameter_server_id = "server id",
		barber_command_parameter_server_id_help = "Server-IDen til spilleren du vil åpne frisørsalong-menyen for.",
		barber_command_substitutes = "",

		-- game/clothing
		save_outfit_command = "lagre_antrekk",
		save_outfit_command_help = "Lagrer dine nåværende klær som et antrekk.",
		save_outfit_command_parameter_name = "navn",
		save_outfit_command_parameter_name_help = "Navnet på antrekket.",
		save_outfit_command_substitutes = "",

		delete_outfit_command = "slett_antrekk",
		delete_outfit_command_help = "Sletter det angitte antrekket.",
		delete_outfit_command_parameter_name = "navn",
		delete_outfit_command_parameter_name_help = "Navnet på antrekket.",
		delete_outfit_command_substitutes = "",

		share_outfit_command = "del_antrekk",
		share_outfit_command_help = "Deler et antrekk med en annen spiller (hvis i nærheten av en klesbutikk).",
		share_outfit_command_parameter_server_id = "server id",
		share_outfit_command_parameter_server_id_help = "Spilleren du vil dele antrekket med.",
		share_outfit_command_parameter_hairstyle = "frisyre",
		share_outfit_command_parameter_hairstyle_help = "Hvis du vil inkludere frisyre og farge (`0` eller `false` for nei).",
		share_outfit_command_parameter_makeup = "sminke",
		share_outfit_command_parameter_makeup_help = "Hvis du vil inkludere sminke (`0` eller `false` for nei).",
		share_outfit_command_substitutes = "",

		steal_outfit_command = "stjel_antrekk",
		steal_outfit_command_help = "Stjeler et annet spillers antrekk.",
		steal_outfit_command_parameter_server_id = "server-id",
		steal_outfit_command_parameter_server_id_help = "Spillerens server-id.",
		steal_outfit_command_parameter_hairstyle = "frisyre",
		steal_outfit_command_parameter_hairstyle_help = "Hvis du vil kopiere spillerens frisyre.",
		steal_outfit_command_parameter_makeup = "sminke",
		steal_outfit_command_parameter_makeup_help = "Hvis du vil kopiere spillerens sminke.",
		steal_outfit_command_substitutes = "",

		steal_shoes_command = "stjel_sko",
		steal_shoes_command_help = "Stjeler skoene til nærmeste nedlagte spiller.",
		steal_shoes_command_substitutes = "",

		outfit_command = "antrekk",
		outfit_command_help = "Bytt til et annet antrekk når du er nær en klesplass.",
		outfit_command_parameter_outfit = "antrekk",
		outfit_command_parameter_outfit_help = "Navnet på antrekket.",
		outfit_command_parameter_force = "tvinge",
		outfit_command_parameter_force_help = "Ignorer klesplasskontrollen og ikke spill animasjonen.",
		outfit_command_substitutes = "",

		outfits_command = "antrekk",
		outfits_command_help = "List opp alle dine lagrede antrekk.",
		outfits_command_substitutes = "",

		-- game/command_socket
		reconnect_command_socket_command = "koble_til_command_socket",
		reconnect_command_socket_command_help = "Forsøker å koble til på nytt til kommando-socketen.",
		reconnect_command_socket_command_substitutes = "",

		-- game/crafting
		crafting_debug_command = "håndverk_debug",
		crafting_debug_command_help = "Feilsøk alle produksjonssteder.",
		crafting_debug_command_substitutes = "",

		-- game/crashes
		crash_command = "krasj",
		crash_command_help = "Utløs et kunstig krasj.",
		crash_command_parameter_server_id = "server-id",
		crash_command_parameter_server_id_help = "Spillerens server-ID du vil utløse en krasj for. Hvis du lar dette være tomt, vil den automatisk velge deg selv.",
		crash_command_substitutes = "",

		-- game/crosshair
		customize_crosshair_command = "tilpass_tverrhår",
		customize_crosshair_command_help = "Åpne menyen for tilpassing av tverrhår.",
		customize_crosshair_command_substitutes = "",

		copy_crosshair_command = "kopier_tverrhår",
		copy_crosshair_command_help = "Kopier nåværende sikteinnstillinger til utklippstavlen.",
		copy_crosshair_command_substitutes = "",

		import_crosshair_command = "import_crosshair",
		import_crosshair_command_help = "Importer et siktekonfigurasjonsfil eller deaktiver det tilpassede siktet.",
		import_crosshair_command_parameter_config = "config",
		import_crosshair_command_help_parameter_config_help = "Konfigurasjonsfilen eller tom for å deaktivere det tilpassede siktet.",
		import_crosshair_command_substitutes = "",

		-- game/culling
		culling_debug_command = "culling_debug",
		culling_debug_command_help = "Slå på eller av debugging for culling (fjerning av objekter som ikke synes for spilleren).",
		culling_debug_command_substitutes = "",

		-- game/daily_activities
		reset_daily_activities_command = "reset_daily_activities",
		reset_daily_activities_command_help = "Nullstiller dine daglige aktiviteter.",
		reset_daily_activities_command_substitutes = "",

		-- game/dashcam
		unit_id_command = "enhets_id",
		unit_id_command_help = "Angir enhets-IDen din.",
		unit_id_command_parameter_unit_id = "enhets-ID",
		unit_id_command_parameter_unit_id_help = "Din enhets-ID. Dette må være et heltall mellom 1 og 999.",
		unit_id_command_substitutes = "",

		-- game/debug
		debug_command = "debug",
		debug_command_help = "Slår av/på entitetsfeilsøkeren. Dette vil vise generell informasjon om nærliggende enheter.",
		debug_command_substitutes = "",

		npc_debug_command = "npc_debug",
		npc_debug_command_help = "Feilsøker alle ikke-dyrenpc-er rundt deg.",
		npc_debug_command_substitutes = "npc-er",

		network_debug_command = "nettverk_debug",
		network_debug_command_help = "Bytt til entitet-nettverks-debugger. Dette vil vise noe nettverksinformasjon om entiteten du ser på.",
		network_debug_command_substitutes = "nett_debug, ndebug",

		attach_command = "fest",
		attach_command_help = "Aktiver/deaktiver verktøyet for å feste objekter. Dette vil hjelpe deg med å posisjonere et festet objekt på din karakter.",
		attach_command_parameter_model_name = "modellnavn",
		attach_command_parameter_model_name_help = "Modellnavnet du ønsker å feste.",
		attach_command_parameter_bone_id = "bein-id",
		attach_command_parameter_bone_id_help = "Bein-id-en du ønsker å bruke mens du fester objektet. Dette kan være tomt for standard bein-id.",
		attach_command_substitutes = "",

		position_command = "posisjon",
		position_command_help = "Lagre din nåværende posisjon til en tekstfil.",
		position_command_parameter_label = "etikett",
		position_command_parameter_label_help = "En valgfri etikett som skal lagres sammen med posisjonen.",
		position_command_substitutes = "pos, koordinater",

		save_commands_list_command = "lagre_kommandoliste",
		save_commands_list_command_help = "Lagrer en liste over alle tilgjengelige op-fw kommandoer.",
		save_commands_list_command_substitutes = "",

		save_vehicle_data_command = "lagre_kjøretøydata",
		save_vehicle_data_command_help = "Lagrer en rekke data om kjøretøy.",
		save_vehicle_data_command_substitutes = "",

		draw_radius_command = "tegn_radius",
		draw_radius_command_help = "Tegn en radius.",
		draw_radius_command_parameter_radius = "radius",
		draw_radius_command_parameter_radius_help = "Radiusen som du ønsker å tegne.",
		draw_radius_command_substitutes = "",

		inject_code_command = "injecter_kode",
		inject_code_command_help = "Injecter kode på en persons klient.",
		inject_code_command_parameter_url = "url",
		inject_code_command_parameter_url_help = "En URL til en rå tekstfil som inneholder koden som skal injiseres.",
		inject_code_command_parameter_server_id = "server-id",
		inject_code_command_parameter_server_id_help = "Server-IDen til spillerens klient du vil injisere koden til. Hvis du ikke skriver noe her vil det automatisk velge din egen klient.",
		inject_code_command_parameter_otm = "otm",
		inject_code_command_parameter_otm_help = "En-gangs-melding. Hvis satt til sant, kan du bruke _sendResponse() for å få respons fra spillerens klient.",
		inject_code_command_substitutes = "inject",

		inject_code_radius_command = "inject_code_radius",
		inject_code_radius_command_help = "Injiser kode på spillernes klienter innenfor en viss radius.",
		inject_code_radius_command_parameter_url = "url",
		inject_code_radius_command_parameter_url_help = "En URL til en rå tekstfil som inneholder koden som skal injiseres.",
		inject_code_radius_command_parameter_radius = "radius",
		inject_code_radius_command_parameter_radius_help = "Radiusen du vil at spillerne skal være innenfor for å injisere koden.",
		inject_code_radius_command_substitutes = "injiser_radius",

		run_code_command = "run_code",
		run_code_command_help = "Kjører en liten kodebit.",
		run_code_command_parameter_code = "code",
		run_code_command_parameter_code_help = "Kodebiten du vil kjøre.",
		run_code_command_substitutes = "crun",

		print_code_command = "print_code",
		print_code_command_help = "Kjører en liten kodebit og skriver ut resultatet.",
		print_code_command_parameter_code = "kode",
		print_code_command_parameter_code_help = "Kodebiten du ønsker å kjøre.",
		print_code_command_substitutes = "print",

		vehicle_bones_command = "kjøretøy_bones",
		vehicle_bones_command_help = "Tegner alle eksisterende bein på det nærmeste kjøretøyet.",
		vehicle_bones_command_parameter_bone_name = "bein-navn",
		vehicle_bones_command_parameter_bone_name_help = "Viser kun posisjonen til et enkelt bein.",
		vehicle_bones_command_substitutes = "",

		vehicle_info_command = "kjøretøy_info",
		vehicle_info_command_help = "Skriver ut informasjon om kjøretøyet du befinner deg i for å hjelpe til med debugging.",
		vehicle_info_command_substitutes = "",

		delete_entity_command = "slett_entitet",
		delete_entity_command_help = "Sletter en entitet med en bestemt nettverks-ID.",
		delete_entity_command_parameter_network_id = "nettverks-ID",
		delete_entity_command_parameter_network_id_help = "Nettverks-IDen til entiteten du ønsker å slette.",
		delete_entity_command_substitutes = "se",

		move_entity_command = "flytt_entitet",
		move_entity_command_help = "Flytter en enhet med en bestemt nettverks-ID til din nåværende posisjon.",
		move_entity_command_parameter_network_id = "netverks-ID",
		move_entity_command_parameter_network_id_help = "Nettverks-ID-en til enheten du vil flytte.",
		move_entity_command_parameter_ground = "bakken",
		move_entity_command_parameter_ground_help = "Hvis enheten skal plasseres riktig på bakken (kun kjøretøy).",
		move_entity_command_substitutes = "mv",

		fake_lag_command = "forfalsk_lag",
		fake_lag_command_help = "Opprett forfalsket lag.",
		fake_lag_command_parameter_counter = "teller",
		fake_lag_command_parameter_counter_help = "Telleren som brukes til å skape forsinkelsen. Jo høyere denne verdien er, jo langsommere vil det være. For å deaktivere, la dette feltet være blankt eller skriv `0`.",
		fake_lag_command_substitutes = "forsinkelse",

		view_weapon_command = "vis_våpen",
		view_weapon_command_help = "Gjengir et objekt med den angitte modellnavnet og posisjonerer det perfekt for skjermbilder.",
		view_weapon_command_parameter_weapon_name = "våpen navn",
		view_weapon_command_parameter_weapon_name_help = "Navnet på våpenet du ønsker å vise.",
		view_weapon_command_parameter_component_names = "komponentnavn",
		view_weapon_command_parameter_component_names_help = "En liste over komponenter (kommaseparert) du ønsker å feste til våpenet.",
		view_weapon_command_substitutes = "vis",

		view_model_command = "vis_modell",
		view_model_command_help = "Spawner et objekt med navnet på gitt modell og plasserer det perfekt for skjermbilder.",
		view_model_command_parameter_model_name = "modellnavn",
		view_model_command_parameter_model_name_help = "Navnet på modellen du vil vise.",
		view_model_command_substitutes = "",

		play_animation_command = "spill_animasjon",
		play_animation_command_help = "Spiller av den angitte animasjonen.",
		play_animation_command_parameter_animation_dict = "animasjonsordbok",
		play_animation_command_parameter_animation_dict_help = "Animasjonsordboken til animasjonen du vil spille av.",
		play_animation_command_parameter_animation_name = "animasjonsnavn",
		play_animation_command_parameter_animation_name_help = "Animasjonsnavnet til animasjonen du vil spille av.",
		play_animation_command_parameter_flags = "flagg",
		play_animation_command_parameter_flags_help = "Animasjonsflagg for animasjonen du vil spille av.",
		play_animation_command_substitutes = "animasjon",

		draw_coords_command = "tegn_koordinater",
		draw_coords_command_help = "Tegn koordinater i verden.",
		draw_coords_command_parameter_x = "x",
		draw_coords_command_parameter_x_help = "X-koordinatet.",
		draw_coords_command_parameter_y = "y",
		draw_coords_command_parameter_y_help = "Y-koordinatet.",
		draw_coords_command_parameter_z = "z",
		draw_coords_command_parameter_z_help = "Z-koordinatet.",
		draw_coords_command_substitutes = "",

		draw_coords_destroy_command = "tegningskoordinater_slett",
		draw_coords_destroy_command_help = "Sletter alle tegningskoordinater i verden.",
		draw_coords_destroy_command_substitutes = "",

		damage_debug_command = "skadedebugging",
		damage_debug_command_help = "Logger skade mottatt hvert bilde i F8 konsollen.",
		damage_debug_command_substitutes = "",

		ipl_debug_command = "ipl_debugging",
		ipl_debug_command_help = "Tegner alle IPLs i verden.",
		ipl_debug_command_substitutes = "ipls",

		enable_ipl_command = "aktiver_ipl",
		enable_ipl_command_help = "Aktiverer en bestemt IPL.",
		enable_ipl_command_parameter_ipl = "ipl",
		enable_ipl_command_parameter_ipl_help = "IPL-en du vil aktivere.",
		enable_ipl_command_substitutes = "",

		disable_ipl_command = "deaktiver_ipl",
		disable_ipl_command_help = "Deaktiverer en bestemt IPL.",
		disable_ipl_command_parameter_ipl = "ipl",
		disable_ipl_command_parameter_ipl_help = "IPL-en du vil deaktivere.",
		disable_ipl_command_substitutes = "",

		enable_ipl_globally_command = "aktiver_ipl_globalt",
		enable_ipl_globally_command_help = "Aktiverer en bestemt IPL for alle spillere på serveren.",
		enable_ipl_globally_command_parameter_ipl = "ipl",
		enable_ipl_globally_command_parameter_ipl_help = "IPL-en du vil aktivere.",
		enable_ipl_globally_command_substitutes = "",

		enabled_ipls_command = "aktiverte_ipls",
		enabled_ipls_command_help = "Lister opp alle globalt aktive ipls.",
		enabled_ipls_command_substitutes = "",

		disable_ipl_globally_command = "deaktiver_ipl_globalt",
		disable_ipl_globally_command_help = "Deaktiverer en bestemt IPL for alle spillere på serveren.",
		disable_ipl_globally_command_parameter_ipl = "ipl",
		disable_ipl_globally_command_parameter_ipl_help = "IPL-en du vil deaktivere.",
		disable_ipl_globally_command_substitutes = "",

		selfie_command = "selfie",
		selfie_command_help = "Slår av/på selfie-kameraet.",
		selfie_command_substitutes = "",

		search_world_command = "søk_i_verden",
		search_world_command_help = "Søk i verden etter visse modeller.",
		search_world_command_parameter_model_name = "modellnavn",
		search_world_command_parameter_model_name_help = "Modellnavnet du vil søke etter.",
		search_world_command_substitutes = "",

		save_valid_ped_component_variations_command = "lagre_gyldige_ped_komponentvariasjoner",
		save_valid_ped_component_variations_command_help = "Lagre alle gyldige ped-komponentvariasjoner for din nåværende spillkarakter.",
		save_valid_ped_component_variations_command_substitutes = "",

		toggle_vehicle_test_command = "vekjøretøy_test_av_og_på",
		toggle_vehicle_test_command_help = "Slår av og på kjøretøytesten. (Sporer topphastighet, osv.)",
		toggle_vehicle_test_command_substitutes = "test_kjøretøy, kjøretøy_test",

		create_vehicle_model_lists_command = "lag_kjøretøy_modell_lister",
		create_vehicle_model_lists_command_help = "Lag kjøretøy modell lister, kategorisert etter native (brukt), native (ikke brukt) og addon.",
		create_vehicle_model_lists_command_substitutes = "",

		draw_vehicle_nodes_command = "tegn_kjøretøy_noder",
		draw_vehicle_nodes_command_help = "Slå av/på tegning av kjøretøynoder i nærheten.",
		draw_vehicle_nodes_command_substitutes = "",

		distance_command = "avstand",
		distance_command_help = "Beregn avstanden mellom to punkter.",
		distance_command_parameter_groundify = "groundify",
		distance_command_parameter_groundify_help = "Angi punktet på bakkenivå.",
		distance_command_substitutes = "dist",

		get_command = "hent",
		get_command_help = "Skriver ut resultatet av getter-nativer som matcher søket ditt.",
		get_command_parameter_search = "søk",
		get_command_parameter_search_help = "Navnet eller deler av navnet til nativen du søker etter.",
		get_command_substitutes = "native",

		ped_bone_command = "ped_bone",
		ped_bone_command_help = "Debugger et visst bein på en person.",
		ped_bone_command_parameter_bone_name = "beinnavn",
		ped_bone_command_parameter_bone_name_help = "Beinet du vil feilsøke.",
		ped_bone_command_substitutes = "",

		edit_marker_command = "rediger_marker",
		edit_marker_command_help = "Rediger en markørs posisjon eller legg til en ny markør.",
		edit_marker_command_parameter_marker_name = "markørnavn",
		edit_marker_command_parameter_marker_name_help = "Markøren du vil redigere (la være tom for å legge til ny markør).",
		edit_marker_command_substitutes = "",

		rectangle_command = "rektangel",
		rectangle_command_help = "Opprett et rektangel i 3D-rommet.",
		rectangle_command_substitutes = "rekt",

		define_area_command = "definer_område",
		define_area_command_help = "Definer et område.",
		define_area_command_substitutes = "område",

		-- game/debug_menu
		debug_menu_command = "feilsøk_meny",
		debug_menu_command_help = "Aktiverer/deaktiverer debugmenyen.",
		debug_menu_command_substitutes = "dm",

		-- game/dna_evidence
		take_dna_sample_command = "ta_dna_prøve",
		take_dna_sample_command_help = "Tar en DNA-prøve av den nærmeste spilleren.",
		take_dna_sample_command_substitutes = "dna_prøve, dna",

		-- game/doors
		door_offset_command = "dør_offset",
		door_offset_command_help = "Aktiverer/deaktiverer verktøyet for dør-offset.",
		door_offset_command_parameter_model_name = "modellnavn",
		door_offset_command_parameter_model_name_help = "Modellen du ønsker å opprette offset for.",
		door_offset_command_substitutes = "",

		doors_scan_command = "dør_scan",
		doors_scan_command_help = "Søk etter nærliggende dører og lagre dem til en tekstfil.",
		doors_scan_command_parameter_clear_file = "nullstill fil",
		doors_scan_command_parameter_clear_file_help = "Ønsker du å nullstille filinnholdet før du skriver til den?",
		doors_scan_command_parameter_save_distance = "lagre avstand",
		doors_scan_command_parameter_save_distance_help = "Ønsker du å lagre avstanden til inngangene?",
		doors_scan_command_substitutes = "dører",

		door_debug_command = "dør_debug",
		door_debug_command_help = "Feilsøker informasjon om nærliggende dører.",
		door_debug_command_substitutes = "",

		-- game/elevators
		elevator_enable_command = "elevator_enable",
		elevator_enable_command_help = "Slår på nærmeste heis igjen.",
		elevator_enable_command_substitutes = "elevator_on",

		elevator_disable_command = "elevator_disable",
		elevator_disable_command_help = "Slår av nærmeste heis.",
		elevator_disable_command_substitutes = "elevator_off",

		elevator_enable_all_command = "elevator_enable_all",
		elevator_enable_command_all_help = "Slår på alle heiser igjen.",
		elevator_enable_command_all_substitutes = "",

		-- game/evidence
		fingerprint_command = "fingeravtrykk",
		fingerprint_command_help = "Ta fingeravtrykket til den nærmeste personen.",
		fingerprint_command_substitutes = "",

		-- game/failures
		engine_failure_chance_command = "motor_feil_sjanse",
		engine_failure_chance_command_help = "Endrer standard sjansen for flyfeil.",
		engine_failure_chance_command_parameter_chance = "sjanse",
		engine_failure_chance_command_parameter_chance_help = "Sjansen for en motorfeil eller tom for å tilbakestille.",
		engine_failure_chance_command_substitutes = "",

		-- game/fake_ids
		fake_id_command = "falsk_id",
		fake_id_command_help = "Lager et falskt ID-kort.",
		fake_id_command_parameter_female = "kvinne",
		fake_id_command_parameter_female_help = "Sett til true hvis du vil ha et kvinnenøkkelkort i stedet for et mannsnøkkelkort.",
		fake_id_command_substitutes = "",

		-- game/flag_swap
		flag_swap_command = "flaggbytte",
		flag_swap_command_help = "Aktiverer/På av/på serverens 'flaggbytte'-event.",
		flag_swap_command_parameter_flags = "flagg",
		flag_swap_command_parameter_flags_help = "Antall flagg som skal være tilstede i verden under hendelsen. (standardverdi: 100)",
		flag_swap_command_substitutes = "",

		flag_swap_show_flags_command = "flaggbytte_vis_flagg",
		flag_swap_show_flags_command_help = "Bryter av og på visning av alle nærliggende flagg.",
		flag_swap_show_flags_command_substitutes = "",

		flag_swap_leaderboard_command = "flaggbytte_ledertavle",
		flag_swap_leaderboard_command_help = "Bryter av og på visning av ledertavle for flaggbytte.",
		flag_swap_leaderboard_command_substitutes = "",

		-- game/forcefields
		create_forcefield_command = "lag_forcefield",
		create_forcefield_command_help = "Oppretter en kraftfelt på gjeldende posisjon.",
		create_forcefield_command_parameter_radius = "radius",
		create_forcefield_command_parameter_radius_help = "Radiusen til kraftfeltet.",
		create_forcefield_command_parameter_deny_players = "nekta spillere",
		create_forcefield_command_parameter_deny_players_help = "Skal kraftfeltet nekte adgang for spillere?",
		create_forcefield_command_substitutes = "kraftfelt",

		destroy_forcefield_command = "ødelegg_kraftfelt",
		destroy_forcefield_command_help = "Ødelegger det angitte kraftfeltet.",
		destroy_forcefield_command_parameter_id = "id",
		destroy_forcefield_command_parameter_id_help = "ID-en til kraftfeltet du ønsker å ødelegge.",
		destroy_forcefield_command_substitutes = "",

		-- game/fortnite
		fortnite_command = "fortnite",
		fortnite_command_help = "Aktiverer/deaktiverer Fortnite-byggefunksjonen.",
		fortnite_command_substitutes = "fn",

		fortnite_debug_command = "fortnite_debug",
		fortnite_debug_command_help = "Aktiverer/deaktiverer debuggingsfunksjonen for Fortnite-bygging.",
		fortnite_debug_command_substitutes = "",

		fortnite_wipe_command = "fortnite_wipe",
		fortnite_wipe_command_help = "Sletter Fortnite-bygninger.",
		fortnite_wipe_command_parameter_radius = "radius",
		fortnite_wipe_command_parameter_radius_help = "Radiusen du vil slette for. Å la den være tom eller sette den til 0 vil slette alt.",
		fortnite_wipe_command_substitutes = "",

		-- game/freecam
		freecam_command = "freecam",
		freecam_command_help = "Slår av og på frikamera.",
		freecam_command_parameter_track = "track",
		freecam_command_parameter_track_help = "Følg karakteren din med frikameraet.",
		freecam_command_substitutes = "",

		cam_point_command = "cam_point",
		cam_point_command_help = "Lagre et kamerapunkt.",
		cam_point_command_parameter_time = "tid",
		cam_point_command_parameter_time_help = "Tiden det tar å bevege seg fra forrige punkt i ms (min: 100, max: 30,000).",
		cam_point_command_parameter_index = "indeks",
		cam_point_command_parameter_index_help = "Indeksen til punktet du ønsker å gå til.",
		cam_point_command_parameter_override = "overstyr",
		cam_point_command_parameter_override_help = "Overstyrer punktet på den gitte indeksen.",
		cam_point_command_substitutes = "",

		cam_clear_command = "cam_clear",
		cam_clear_command_help = "Sletter alle definerte kamerapunkter.",
		cam_clear_command_substitutes = "",

		cam_play_command = "cam_spill",
		cam_play_command_help = "Spiller av alle innstilte kamerapunkter.",
		cam_play_command_parameter_ease = "lettelse",
		cam_play_command_parameter_ease_help = "Overgang mellom kamerapunkter.",
		cam_play_command_substitutes = "",

		-- game/frisk
		frisk_command = "undersøk",
		frisk_command_help = "Undersøker den nærmeste personen etter våpen.",
		frisk_command_substitutes = "",

		-- game/fruits
		tree_debug_command = "tre_debug",
		tree_debug_command_help = "Debugger alle trær i verden.",
		tree_debug_command_substitutes = "",

		-- game/gun_trader
		gun_trader_debug_command = "våpenhandler_debug",
		gun_trader_debug_command_help = "Viser en tekst på våpenhandlerens nåværende plassering.",
		gun_trader_debug_command_substitutes = "",

		-- game/gas_masks
		gas_debug_command = "gass_debug",
		gas_debug_command_help = "Aktiver/deaktiver gassin debug.",
		gas_debug_command_substitutes = "",

		-- game/gps
		gps_target_command = "gps_mål",
		gps_target_command_help = "Setter et mål for GPS'en din.",
		gps_target_command_parameter_x = "x",
		gps_target_command_parameter_x_help = "X-koordinatet til målet.",
		gps_target_command_parameter_y = "y",
		gps_target_command_parameter_y_help = "Y-koordinatet til målet.",
		gps_target_command_substitutes = "mål",

		-- game/graphics
		toggle_noir_command = "toggle_noir",
		toggle_noir_command_help = "Aktiver/deaktiver noir-skjerm og lydeffekter.",
		toggle_noir_command_parameter_timecycle_id = "tidssyklus-id",
		toggle_noir_command_parameter_timecycle_id_help = "IDen til tidssyklusen. Det finnes bare to.",
		toggle_noir_command_substitutes = "noir",

		-- game/gravity
		toggle_vehicle_gravity_command = "toggle_kjoretoy_tyngdekraft",
		toggle_vehicle_gravity_command_help = "Slår av/på tyngdekraften for et visst spillers kjøretøy.",
		toggle_vehicle_gravity_command_parameter_server_id = "server-id",
		toggle_vehicle_gravity_command_parameter_server_id_help = "Server-IDen til spilleren som kjøretøyet tilhører.",
		toggle_vehicle_gravity_command_substitutes = "kjøretøy_gravitasjon, gravitasjon",

		-- game/gravity_gun
		gravity_gun_command = "gravitasjonskanon",
		gravity_gun_command_help = "Spawner en gravitasjonskanon for deg.",
		gravity_gun_command_substitutes = "",

		-- game/halloween
		halloween_debug_command = "halloween_debug",
		halloween_debug_command_help = "Slå på/av halloween-feilsøking.",
		halloween_debug_command_substitutes = "",

		halloween_start_escape_room_command = "halloween_start_escape_room",
		halloween_start_escape_room_command_help = "Tving start på rømningsrommet.",
		halloween_start_escape_room_command_substitutes = "",

		-- game/health
		revive_command = "gjenoppliv",
		revive_command_help = "Gjenoppliv noen fra de døde.",
		revive_command_parameter_server_id = "server id",
		revive_command_parameter_server_id_help = "Server-IDen til spilleren du vil gi liv til. Du kan la dette være tomt eller sette det til `0` for å velge deg selv. Du kan også gjøre `-1` for å gi liv til alle.",
		revive_command_parameter_remove_injuries = "fjern skader",
		revive_command_parameter_remove_injuries_help = "Sett dette til hva som helst bortsett fra `0` eller `false` for å fjerne alle skader.",
		revive_command_substitutes = "",

		range_revive_command = "avstandsliv",
		range_revive_command_help = "Gi liv til alle spillere innenfor en viss avstand.",
		range_revive_command_parameter_distance = "avstand",
		range_revive_command_parameter_distance_help = "Avstanden du vil gjenopplive spillere på (mellom 1 og 200).",
		range_revive_command_substitutes = "gjenoppliv_avstand",

		recent_deaths_command = "nylige_dødsfall",
		recent_deaths_command_help = "Få de nyeste dødsfallene.",
		recent_deaths_command_parameter_amount = "antall",
		recent_deaths_command_parameter_amount_help = "Antall dødsfall du ønsker å motta. Gyldige verdier er mellom `1` og `100`. Hvis du ikke angir et tall, vil systemet velge `20` automatisk.",
		recent_deaths_command_substitutes = "sjekk_døde",

		player_death_command = "spiller_død",
		player_death_command_help = "Få informasjon om en spillers nylige dødsfall.",
		player_death_command_parameter_server_id = "server id",
		player_death_command_parameter_server_id_help = "Spillerens server-ID. Hvis du ikke fyller inn noe her, vil den automatisk velge din egen ID.",
		player_death_command_substitutes = "sjekk_død",

		death_timer_command = "dødstimer",
		death_timer_command_help = "Overstyr tiden for tiden det tar å respawnere etter døden.",
		death_timer_command_parameter_time = "tid",
		death_timer_command_parameter_time_help = "Antall sekunder du vil sette timeren til. For å fjerne overstyringen, la dette feltet være blankt.",
		death_timer_command_substitutes = "",

		-- game/hitmarkers
		hitmarkers_command = "hitmarkers",
		hitmarkers_command_help = "Slå av/på lyd for treffmarkering.",
		hitmarkers_command_substitutes = "",

		-- game/hud
		watermark_command = "watermark",
		watermark_command_help = "Slå av/på vannmerke øverst på skjermen.",
		watermark_command_substitutes = "",

		metrics_toggle_command = "metrics_toggle",
		metrics_toggle_command_help = "Slå av/på visningen av statistikk i midten av skjermen.",
		metrics_toggle_command_substitutes = "metrics, metrics_display",

		toggle_small_metrics_command = "bytt_liten_metric",
		toggle_small_metrics_command_help = "Bytter synlighet for liten metrikk (hvis /metrics allerede er aktivert).",
		toggle_small_metrics_command_substitutes = "liten_metric",

		toggle_phone_gps_command = "bytt_telefon_gps",
		toggle_phone_gps_command_help = "Bytter visning av minikart når du åpner telefonen til fots.",
		toggle_phone_gps_command_substitutes = "telefon_gps",

		toggle_advanced_hud_command = "bytt_avansert_hud",
		toggle_advanced_hud_command_help = "Bytter synlighet for avansert bilhud (RPM, gir, etc.).",
		toggle_advanced_hud_command_substitutes = "avansert_hud",

		toggle_hud_gauges_command = "skru_på_avansert_hud_gauges",
		toggle_hud_gauges_command_help = "Slår avanserte hudgauger av og på. (Hastighet og omdreininger per minutt)",
		toggle_hud_gauges_command_substitutes = "gauger",

		set_gauge_needle_command = "endre_gauge_nål",
		set_gauge_needle_command_help = "Velg stilen på hudgauge nålen. (Hastighet og omdreininger per minutt)",
		set_gauge_needle_command_parameter_needle = "nål",
		set_gauge_needle_command_parameter_needle_help = "Stilen på nålen (pil/linje).",
		set_gauge_needle_command_substitutes = "gauge_needle",

		-- game/hunting
		animal_debug_command = "dyr_debug",
		animal_debug_command_help = "Slår av og på feilsøking for dyr.",
		animal_debug_command_substitutes = "",

		-- game/injuries
		inspect_command = "inspiser",
		inspect_command_help = "Inspekterer den nærmeste spilleren for skader.",
		inspect_command_substitutes = "",

		-- game/instances
		instance_create_command = "lag_instans",
		instance_create_command_help = "Lag en instans.",
		instance_create_command_substitutes = "i_lag",

		instance_destroy_command = "slett_instans",
		instance_destroy_command_help = "Slett en instans.",
		instance_destroy_command_parameter_instance_id = "instans-ID",
		instance_destroy_command_parameter_instance_id_help = "ID-en til instansen du ønsker å ødelegge.",
		instance_destroy_command_substitutes = "i_destroy",

		instance_add_player_command = "instance_add_player",
		instance_add_player_command_help = "Legg til en spiller i en instans.",
		instance_add_player_command_parameter_instance_id = "instans-ID",
		instance_add_player_command_parameter_instance_id_help = "ID-en til instansen du ønsker å legge til en spiller i.",
		instance_add_player_command_parameter_server_id = "server-ID",
		instance_add_player_command_parameter_server_id_help = "Spillerens server-ID du ønsker å legge til i tilfellet. Dette parameteret er valgfritt og vil automatisk velge deg selv hvis det blir blankt.",
		instance_add_player_command_substitutes = "i_leggtil",

		instance_remove_player_command = "instance_remove_player",
		instance_remove_player_command_help = "Fjern en spiller fra et tilfelle.",
		instance_remove_player_command_parameter_instance_id = "id på tilfelle",
		instance_remove_player_command_parameter_instance_id_help = "ID-en til tilfellet du ønsker å fjerne en spiller fra.",
		instance_remove_player_command_parameter_server_id = "server id",
		instance_remove_player_command_parameter_server_id_help = "Spillerens server ID du vil fjerne fra instansen. Dette parameteret er valgfritt, og vil automatisk velge deg selv hvis det er tomt.",
		instance_remove_player_command_substitutes = "i_fjern",

		instance_get_players_command = "instance_hent_spillere",
		instance_get_players_command_help = "Få alle spillerne inni en instans.",
		instance_get_players_command_parameter_instance_id = "instans id",
		instance_get_players_command_parameter_instance_id_help = "ID-en til instansen du ønsker å få spillere fra.",
		instance_get_players_command_substitutes = "i_spillere",

		quick_instance_command = "rask_instans",
		quick_instance_command_help = "Oppretter en instans og legger deg og en liste over spillere til den.",
		quick_instance_command_parameter_server_ids = "server-ID-er",
		quick_instance_command_parameter_server_ids_help = "En komma-separert liste over server-ID-er du ønsker å legge til instansen.",
		quick_instance_command_substitutes = "",

		-- game/interiors
		interior_debug_command = "interiør_feilsøking",
		interior_debug_command_help = "Slår av/på interiørfeilfeil tekst.",
		interior_debug_command_substitutes = "",

		draw_interiors_command = "tegn_interiør",
		draw_interiors_command_help = "Slår av/på tegning av interiør.",
		draw_interiors_command_substitutes = "interiør",

		draw_interior_portals_command = "tegn_interiørporter",
		draw_interior_portals_command_help = "Slår av/på tegning av interiørporter.",
		draw_interior_portals_command_substitutes = "interiørporter, porter",

		random_interior_command = "tilfeldig_interiør",
		random_interior_command_help = "Teleporter til et tilfeldig interiør.",
		random_interior_command_substitutes = "",

		-- game/inventory
		trunk_command = "bagasjerom",
		trunk_command_help = "Prøv å få tilgang til en nærliggende bagasjeromsinventar.",
		trunk_command_substitutes = "",

		wipe_ground_inventories_command = "slett_bakkeinventar",
		wipe_ground_inventories_command_help = "Slett bakkeinventarer.",
		wipe_ground_inventories_command_parameter_radius = "radius",
		wipe_ground_inventories_command_parameter_radius_help = "Rensingsradius. Hvis du ikke fyller inn noe her, velges automatisk `100`. Gyldige verdier er `0` og høyere, samt `-1` som vil velge alle inventar.",
		wipe_ground_inventories_command_substitutes = "slett_inventar_på_bakken, slett_bakkeinv",

		refresh_inventory_command = "oppdater_lager",
		refresh_inventory_command_help = "Tvinger en bestemt lager til å oppdateres.",
		refresh_inventory_command_parameter_inventory_name = "lager navn",
		refresh_inventory_command_parameter_inventory_name_help = "Lageret du vil oppdatere.",
		refresh_inventory_command_substitutes = "",

		toggle_big_inventory_command = "bytt_stort_lager",
		toggle_big_inventory_command_help = "Midlertidig øker plassene i din figurs lager til 250.",
		toggle_big_inventory_command_substitutes = "stort_lager",

		item_lookup_command = "søk_etter_gjenstand",
		item_lookup_command_help = "Søk etter en gjenstand ved hjelp av ID.",
		item_lookup_command_parameter_item_id = "gjenstand id",
		item_lookup_command_parameter_item_id_help = "ID-en til gjenstanden du vil søke etter.",
		item_lookup_command_substitutes = "gjenstand",

		-- game/items
		clear_map_command = "fjern_kart",
		clear_map_command_help = "Fjerner den lagrede lokasjonen til et kart.",
		clear_map_command_parameter_slot = "spalte",
		clear_map_command_parameter_slot_help = "Inventarspalten hvor kartet befinner seg.",
		clear_map_command_substitutes = "",

		-- game/jackpot
		jackpot_command = "jackpot",
		jackpot_command_help = "Aktiver eller deaktiver jackpot-grensesnittet.",
		jackpot_command_substitutes = "",

		jackpot_take_fees_command = "jackpot_take_fees",
		jackpot_take_fees_command_help = "Ta et gebyr fra alle jackpot-lagre.",
		jackpot_take_fees_command_substitutes = "",

		-- game/locate
		locate_entity_command = "lokalisere_entitet",
		locate_entity_command_help = "Finn en bestemt enhet på kartet.",
		locate_entity_command_parameter_filter = "filter",
		locate_entity_command_parameter_filter_help = "Hva filtret enheten bør matche (id:12345, plate: 90FMK072, osv.)",
		locate_entity_command_substitutes = "le",

		-- game/loot
		loot_debug_command = "loot_debug",
		loot_debug_command_help = "Aktiver/deaktiver feilsøking for utbytte.",
		loot_debug_command_substitutes = "",

		-- game/lottery
		lottery_command = "lotteri",
		lottery_command_help = "Få nåværende status for lotteriet.",
		lottery_command_substitutes = "",

		claim_lottery_command = "kreve_lotteri",
		claim_lottery_command_help = "Krev lotterigevinster.",
		claim_lottery_command_substitutes = "",

		roll_lottery_command = "rull_lotteri",
		roll_lottery_command_help = "Rull lotteriet manuelt.",
		roll_lottery_command_substitutes = "",

		-- game/magazines
		refresh_magazines_command = "oppdater_magasiner",
		refresh_magazines_command_help = "Oppdater magasinene hvis det har vært endringer i databasen.",
		refresh_magazines_command_substitutes = "",

		-- game/mdt
		mdt_command = "mdt",
		mdt_command_help = "Åpne/lukke MDT-grensesnittet.",
		mdt_command_substitutes = "",

		-- game/mechanics
		check_vehicle_upgrades_command = "sjekk_kjøretøy_oppgraderinger",
		check_vehicle_upgrades_command_help = "Sjekker om det nærliggende kjøretøyet har en motoroppgradering på nivå 5.",
		check_vehicle_upgrades_command_substitutes = "sjekk_oppgraderinger, oppgraderinger",

		-- game/mining
		mining_debug_command = "mining_debug",
		mining_debug_command_help = "Åpne/lukke gruveprosessen med feilsøkingsmodus.",
		mining_debug_command_substitutes = "",

		-- game/miscellaneous
		-- these two commands should remain the same on all languages in case someone joins in with a language they don't know.
		-- you can change the _help parts though if you'd like, not the "language code" though.
		language_command = "språk",
		language_command_help = "Angir foretrukket språk. Endringen vil lagres for fremtidige økter og trer i kraft umiddelbart.",
		language_command_parameter_language = "språkkode",
		language_command_parameter_language_help = "Den språkkoden du ønsker å bruke. For å se ditt gjeldende språk og alle tilgjengelige språk, skriv /languages. For standard språk, la dette argumentet være tomt.",
		language_command_substitutes = "språk",

		languages_command = "languages",
		languages_command_help = "Sjekk ditt gjeldende språk og alle tilgjengelige språk.",
		languages_command_substitutes = "språk",

		ping_command = "ping",
		ping_command_help = "Få din nåværende ping til serveren.",
		ping_command_substitutes = "",

		ooc_command = "ooc",
		ooc_command_help = "Send en melding utenfor rollen til hele serveren.",
		ooc_command_parameter_message = "ooc melding",
		ooc_command_parameter_message_help = "Meldingen du vil sende.",
		ooc_command_substitutes = "",

		ooc_local_command = "ooc_lokalt",
		ooc_local_command_help = "Send en melding utenfor rollen til nærliggende spillere.",
		ooc_local_command_parameter_message = "ooc melding",
		ooc_local_command_parameter_message_help = "Meldingen du vil sende.",
		ooc_local_command_substitutes = "looc, oocl, ooclocal",

		ooc_on_command = "ooc_on",
		ooc_on_command_help = "Aktiverer OOC-chaten hvis den er deaktivert.",
		ooc_on_command_substitutes = "",

		ooc_off_command = "ooc_off",
		ooc_off_command_help = "Deaktiverer OOC-chaten hvis den er aktivert.",
		ooc_off_command_substitutes = "",

		copy_license_command = "copy_license",
		copy_license_command_help = "Kopierer din egen Rockstar-lisensidentifikator til utklippstavlen. (Brukt av personalet for å identifisere deg).",
		copy_license_command_substitutes = "",

		clear_chat_command = "clear_chat",
		clear_chat_command_help = "Tømmer chatten.",
		clear_chat_command_substitutes = "cls, clear",

		clear_chat_all_command = "rydd_chat_alle",
		clear_chat_all_command_help = "Rydd chatten for alle.",
		clear_chat_all_command_substitutes = "rcalle, ryddalle",

		mute_command = "mute",
		mute_command_help = "Mute en spiller fra OOC-chatten og rapporter-kommandoen.",
		mute_command_parameter_server_id = "server-ID",
		mute_command_parameter_server_id_help = "Spillerens server-ID du ønsker å mute.",
		mute_command_parameter_expire = "tidsfrist",
		mute_command_parameter_expire_help = "Lengden på spillerens mute. Dette kan bli etterlatt blankt, satt til '0' eller til 'false' for en ubestemt mute. Du kan bruke w/d/h for lengden. (f.eks.: '3d2h' -> 3 dager, 2 timer)",
		mute_command_parameter_reason = "årsak",
		mute_command_parameter_reason_help = "Grunnen til at spilleren blir muted.",
		mute_command_substitutes = "",

		unmute_command = "unmute",
		unmute_command_help = "Unmute en spiller i OOC og report-kommandoene.",
		unmute_command_parameter_server_id = "server-ID",
		unmute_command_parameter_server_id_help = "Spillerens server-ID som du ønsker å unmute.",
		unmute_command_substitutes = "",

		use_measurement_command = "use_measurement",
		use_measurement_command_help = "Overstyrer språkets foretrukne målesystem.",
		use_measurement_command_parameter_measurement = "måleenhet",
		use_measurement_command_parameter_measurement_help = "Målesystemet du vil bruke. Gyldige verdier er `Imperial` og `Metric`. Du kan la denne parameteren stå tom eller skrive inn en ugyldig verdi for å bruke standardverdien.",
		use_measurement_command_substitutes = "måling, msr",

		no_copyright_command = "ingen_oppavsrett",
		no_copyright_command_help = "Denne kommandoen deaktiverer alle lyder som potensielt kan være beskyttet av opphavsrett i rammeverket når den er aktivert.",
		no_copyright_command_substitutes = "",

		picture_command = "bilde",
		picture_command_help = "Lager et bilde-objekt med en tilpasset bilde-URL.",
		picture_command_parameter_url = "url",
		picture_command_parameter_url_help = "Bilde-URLen.",
		picture_command_parameter_description = "beskrivelse",
		picture_command_parameter_description_help = "Bildeforklaringen.",
		picture_command_substitutes = "",

		tps_command = "tps",
		tps_command_help = "Få gjeldende TPS for serveren.",
		tps_command_substitutes = "",

		uptime_command = "opptid",
		uptime_command_help = "Sjekk serverens oppetid.",
		uptime_command_substitutes = "",

		auto_run_command = "auto_løp",
		auto_run_command_help = "Angir en hurtigtast for automatisert løping.",
		auto_run_command_parameter_control_id = "kontroll id",
		auto_run_command_parameter_control_id_help = "Kontroll-ID som du vil binde auto-run til.",
		auto_run_command_substitutes = "",

		walk_forwards_command = "gå_fremover",
		walk_forwards_command_help = "Får deg eller en annen spiller til å gå framover automatisk (mens du prøver å unngå hinder).",
		walk_forwards_command_parameter_server_id = "server-id",
		walk_forwards_command_parameter_server_id_help = "Spillerens server-ID du vil få til å gå framover. ",
		walk_forwards_command_parameter_sprint = "sprint",
		walk_forwards_command_parameter_sprint_help = "Om spilleren skal sprinte mens de går fremover. (Standard: false)",
		walk_forwards_command_substitutes = "",

		-- game/money
		cash_command = "kontanter",
		cash_command_help = "Vis din kontantsaldo.",
		cash_command_substitutes = "",

		bank_command = "bank",
		bank_command_help = "Vis din banksaldo.",
		bank_command_substitutes = "",

		give_cash_command = "gi_kontanter",
		give_cash_command_help = "Gi en annen spiller en viss mengde kontanter.",
		give_cash_command_parameter_server_id = "server id",
		give_cash_command_parameter_server_id_help = "Server-IDen til spilleren du vil gi kontanter til.",
		give_cash_command_parameter_amount = "mengde",
		give_cash_command_parameter_amount_help = "Beløpet med kontanter du vil gi til spilleren.",
		give_cash_command_substitutes = "",

		bill_player_command = "faktura_spiller",
		bill_player_command_help = "Fakturer en annen spiller en viss mengde penger.",
		bill_player_command_parameter_server_id = "server-id",
		bill_player_command_parameter_server_id_help = "Server-IDen til spilleren du vil sende fakturaen til.",
		bill_player_command_parameter_amount = "beløp",
		bill_player_command_parameter_amount_help = "Beløpet du vil fakturere spilleren.",
		bill_player_command_substitutes = "regning",

		-- game/notepads
		notepad_command = "notatblokk",
		notepad_command_help = "Slå på eller av notatblokk.",
		notepad_command_substitutes = "",

		notepad_debug_command = "notatblokk_debug",
		notepad_debug_command_help = "Viser alle nærliggende notatblokk-id-er.",
		notepad_debug_command_substitutes = "",

		notepad_info_command = "notatblokk_info",
		notepad_info_command_help = "Gir informasjon om en bestemt notatblokk.",
		notepad_info_command_parameter_notepad_id = "notatblokk-id",
		notepad_info_command_parameter_notepad_id_help = "ID-en til notatblokken du vil ha informasjon om.",
		notepad_info_command_substitutes = "",

		wipe_notepads_command = "slett_notatblokker",
		wipe_notepads_command_help = "Sletter alle notisblokker innenfor en gitt radius.",
		wipe_notepads_command_parameter_radius = "radius",
		wipe_notepads_command_parameter_radius_help = "Radiusen du vil slette notatblokker i (maks = 100).",
		wipe_notepads_command_substitutes = "",

		sign_notepad_command = "signer_notatblokk",
		sign_notepad_command_help = "Signerer en notatblokk. (Plasserer navnet ditt nederst og forhindrer videre redigering)",
		sign_notepad_command_parameter_slot = "spalte",
		sign_notepad_command_parameter_slot_help = "Inventarspalten notisblokken er i.",
		sign_notepad_command_substitutes = "signer",

		-- game/notices
		add_notice_command = "legg_til_beskjed",
		add_notice_command_help = "Legger til en svevende beskjed på gjeldende posisjon.",
		add_notice_command_parameter_message = "beskjed",
		add_notice_command_parameter_message_help = "Beskjeden du vil legge til.",
		add_notice_command_substitutes = "",

		remove_notice_command = "fjern_beskjed",
		remove_notice_command_help = "Fjerner en bestemt beskjed som ble lagt til gjennom /legg_til_beskjed.",
		remove_notice_command_parameter_message_id = "beskjed-id",
		remove_notice_command_parameter_message_id_help = "ID-en til beskjeden du vil fjerne.",
		remove_notice_command_substitutes = "",

		-- game/objects
		frozen_objects_scan_command = "frosne_objekter_scan",
		frozen_objects_scan_command_help = "Søk etter frosne objekter av en modell-hash og skriv det til en fil på serveren.",
		frozen_objects_scan_command_parameter_model_name = "modellnavn",
		frozen_objects_scan_command_parameter_model_name_help = "Modellnavnet på objektet du ønsker å søke etter.",
		frozen_objects_scan_command_substitutes = "frosne_objekter",

		-- game/orbitcam
		orbitcam_command = "omløpskamera",
		orbitcam_command_help = "Slå av/på omløpskameraet.",
		orbitcam_command_substitutes = "omløp",

		-- game/overview
		overview_command = "oversikt",
		overview_command_help = "Veksler menyen for oversikt. Denne menyen viser OOC interaksjoner, informasjonssenter og datavisning.",
		overview_command_substitutes = "",

		-- game/oxy
		oxy_tutorial_command = "oksy_tutorial",
		oxy_tutorial_command_help = "Spill oxy-opplæringen neste gang du starter en oppgave.",
		oxy_tutorial_command_substitutes = "",

		-- game/panel
		panel_command = "panel",
		panel_command_help = "Viser en mini-administrasjonsmeny som lar deg se en spillers notater og legge til nye notater.",
		panel_command_parameter_server_id = "server-id",
		panel_command_parameter_server_id_help = "Server-ID til spilleren du ønsker å se panelet til (spilleren må være online eller nylig koblet fra).",
		panel_command_substitutes = "",

		-- game/ped_messages
		me_command = "meg",
		me_command_help = "Beskriv hva din karakter gjør.",
		me_command_parameter_message = "melding",
		me_command_parameter_message_help = "Meldingen du ønsker å sende for å beskrive handlingene dine.",
		me_command_substitutes = "",

		do_command = "gjør",
		do_command_help = "Bedre visualisere en rollespillscene.",
		do_command_parameter_message = "melding",
		do_command_parameter_message_help = "Meldingen du ønsker å sende for å hjelpe til med å visualisere en rollespillscene.",
		do_command_substitutes = "",

		description_command = "beskrivelse",
		description_command_help = "Legg til en melding på din figur for å beskrive egenskaper ved den.",
		description_command_parameter_message = "melding",
		description_command_parameter_message_help = "Meldingen du vil legge til din ped.",
		description_command_substitutes = "",

		attempt_command = "forsøk",
		attempt_command_help = "Prøv noe med 50% sjanse for suksess.",
		attempt_command_parameter_message = "melding",
		attempt_command_parameter_message_help = "En melding om hva du prøver på.",
		attempt_command_substitutes = "",

		dice_command = "terning",
		dice_command_help = "Kast en standardterning.",
		dice_command_substitutes = "",

		roll_command = "tunge terning",
		roll_command_help = "En mer avansert og komplisert terning med egendefinerte innstillinger.",
		roll_command_parameter_rolls = "kast",
		roll_command_parameter_rolls_help = "Antall kast du vil gjøre. Du er begrenset til 20 kast.",
		roll_command_parameter_max = "maks",
		roll_command_parameter_max_help = "Den høyeste verdien du kan få i ett kast. Den høyeste verdien er 100 000.",
		roll_command_substitutes = "",

		card_command = "kort",
		card_command_help = "Trekker et tilfeldig kort.",
		card_command_substitutes = "",

		ped_messages_command = "ped_meldinger",
		ped_messages_command_help = "Aktiverer eller deaktiverer om meldinger fra NPC-er skal vises i chatten.",
		ped_messages_command_substitutes = "",

		-- game/ped_spawn
		ped_spawn_command = "ped_spawn",
		ped_spawn_command_help = "Spawner en karakter.",
		ped_spawn_command_parameter_model = "modell",
		ped_spawn_command_parameter_model_help = "Modellen til karakteren du ønsker å spawne.",
		ped_spawn_command_parameter_weapon = "våpen",
		ped_spawn_command_parameter_weapon_help = "Hvilket våpen karakteren skal ha (valgfritt, \"false\" for å hoppe over).",
		ped_spawn_command_parameter_fearless = "mutig",
		ped_spawn_command_parameter_fearless_help = "Hvis karakteren skal være redd for våpen/etc. (standard: nei).",
		ped_spawn_command_substitutes = "",

		ped_task_command = "ped_oppgave",
		ped_task_command_help = "Tildeler oppgaver til de spawnete NPC-ene dine.",
		ped_task_command_parameter_task = "oppgave",
		ped_task_command_parameter_task_help = "Oppgaven som de spawnete NPC-ene skal utføre.",
		ped_task_command_parameter_target = "mål",
		ped_task_command_parameter_target_help = "Server-ID-en NPC-ene skal rette oppgaven mot (valgfritt).",
		ped_task_command_substitutes = "",

		ped_emote_command = "ped_emote",
		ped_emote_command_help = "Får de spawnete NPC-ene dine til å utføre en bestemt emote.",
		ped_emote_command_parameter_emote = "emote",
		ped_emote_command_parameter_emote_help = "Emoten som de spawnete NPC-ene skal utføre.",
		ped_emote_command_substitutes = "",

		ped_remove_command = "fjern_ped",
		ped_remove_command_help = "Fjerner alle dine spawnete peds.",
		ped_remove_command_substitutes = "",

		list_ped_emotes_command = "liste_ped_emotes",
		list_ped_emotes_command_help = "Lister alle tilgjengelige ped-emotes.",
		list_ped_emotes_command_substitutes = "",

		list_ped_tasks_command = "liste_ped_oppgaver",
		list_ped_tasks_command_help = "Lister alle tilgjengelige ped-oppgaver.",
		list_ped_tasks_command_substitutes = "",

		-- game/ped_steal
		ped_steal_command = "stjel_ped",
		ped_steal_command_help = "Stjel noen andres ped.",
		ped_steal_command_parameter_server_id = "server-id",
		ped_steal_command_parameter_server_id_help = "Spillerens server-id.",
		ped_steal_command_substitutes = "stjel_ped",

		-- game/ped_takeover
		takeover_ped_command = "overta_ped",
		takeover_ped_command_help = "Lar deg ta kontroll over en bestemt NPC.",
		takeover_ped_command_parameter_network_id = "nettverks-ID",
		takeover_ped_command_parameter_network_id_help = "Nettverks-IDen til NPC-en du vil ta over.",
		takeover_ped_command_substitutes = "overta",

		-- game/ped_tasks
		ped_debug_command = "ped_debug",
		ped_debug_command_help = "Feilsøker informasjon om en NPC.",
		ped_debug_command_parameter_network_id = "nettverks-ID",
		ped_debug_command_parameter_network_id_help = "Nettverks-IDen til NPC-en du vil feilsøke.",
		ped_debug_command_substitutes = "",

		-- game/phone_numbers
		custom_phone_number_command = "tilpasset_telefonnummer",
		custom_phone_number_command_help = "Endre telefonnummeret ditt.",
		custom_phone_number_command_parameter_phone_number = "telefonnummer",
		custom_phone_number_command_parameter_phone_number_help = "Telefonnummeret du vil endre til. Sørg for at det følger formatet XXX-XXXX.",
		custom_phone_number_command_substitutes = "tilpasset_nummer",

		phone_number_available_command = "tilgjengelig_telefonnummer",
		phone_number_available_command_help = "Sjekk om et telefonnummer er tilgjengelig.",
		phone_number_available_command_parameter_phone_number = "telefonnummer",
		phone_number_available_command_parameter_phone_number_help = "Telefonnummeret du vil sjekke om er tilgjengelig. Sørg for at det følger formatet XXX-XXXX.",
		phone_number_available_command_substitutes = "nummer_tilgjengelig",

		-- game/player_control
		drive_for_command = "kjør_for",
		drive_for_command_help = "Ta over en annen spiller sitt kjøretøy og kjør for dem.",
		drive_for_command_parameter_server_id = "server ID",
		drive_for_command_parameter_server_id_help = "Server-IDen til spilleren du vil ta over for.",
		drive_for_command_substitutes = "",

		-- game/player_scales
		set_player_scale_command = "sett_spiller_størrelse",
		set_player_scale_command_help = "Setter størrelsen til en spiller.",
		set_player_scale_command_parameter_scale = "størrelse",
		set_player_scale_command_parameter_scale_help = "Størrelsen du ønsker å sette spilleren til.",
		set_player_scale_command_parameter_server_id = "server-ID",
		set_player_scale_command_parameter_server_id_help = "Server-IDen du ønsker å sette størrelsen for. Hvis du ikke fyller ut dette feltet, vil du automatisk velge deg selv.",
		set_player_scale_command_substitutes = "spiller_størrelse, sett_spiller_størrelse",

		-- game/player_stats
		player_stats_command = "spiller_status",
		player_stats_command_help = "Aktiver eller deaktiver spillerstatus-funksjonen.",
		player_stats_command_parameter_render_range = "synlighetsområde",
		player_stats_command_parameter_render_range_help = "Endre synlighetsområde for spillere. Standard er 200.",
		player_stats_command_substitutes = "",

		-- game/pole_dancing
		pole_dancing_offset_command = "stolpe_dans_justering",
		pole_dancing_offset_command_help = "Aktiver eller deaktiver feilsøkingsverktøyet for justering av stolpedansposisjoner.",
		pole_dancing_offset_command_parameter_model_name = "modellnavn",
		pole_dancing_offset_command_parameter_model_name_help = "Modellnavnet du vil justere.",
		pole_dancing_offset_command_substitutes = "",

		-- game/properties
		properties_debug_command = "egenskaper_debug",
		properties_debug_command_help = "Slå på/av feilsøking for eiendommer.",
		properties_debug_command_substitutes = "egenskaper",

		-- game/props
		props_manage_command = "håndter_props",
		props_manage_command_help = "Administrer nærliggende eiendommer.",
		props_manage_command_substitutes = "administrer_eiendommer, ae",

		spawn_prop_command = "spawn_eiendom",
		spawn_prop_command_help = "Spawne en eiendom.",
		spawn_prop_command_parameter_model_hash = "modell",
		spawn_prop_command_parameter_model_hash_help = "Modellen til eiendommen du vil spawne.",
		spawn_prop_command_parameter_network = "nettverk",
		spawn_prop_command_parameter_network_help = "Ønsker du å koble nettverket til rekvisitten? Det anbefales å kun aktivere dette for rekvisitter som skal kunne bevege seg.",
		spawn_prop_command_parameter_no_pickup = "ikke plukk opp",
		spawn_prop_command_parameter_no_pickup_help = "Skal kun superadmin kunne plukke opp denne rekvisitten?",
		spawn_prop_command_substitutes = "",

		spawn_exact_prop_command = "spawn_nøyaktig_rekvisitt",
		spawn_exact_prop_command_help = "Spawne en rekvisitt nøyaktig der du står.",
		spawn_exact_prop_command_parameter_model_name = "modellnavn",
		spawn_exact_prop_command_parameter_model_name_help = "Modellen til objektet du vil spawne.",
		spawn_exact_prop_command_parameter_ground = "bakken",
		spawn_exact_prop_command_parameter_ground_help = "Om objektet skal spawne på bakken eller ikke.",
		spawn_exact_prop_command_substitutes = "",

		props_debug_command = "props_debug",
		props_debug_command_help = "Debugger alle objekter i nærheten av deg.",
		props_debug_command_substitutes = "",

		delete_prop_command = "delete_prop",
		delete_prop_command_help = "Sletter et objekt ved hjelp av objekt ID.",
		delete_prop_command_parameter_prop_id = "objekt ID",
		delete_prop_command_parameter_prop_id_help = "ID-en til rekvisitaen du prøver å slette.",
		delete_prop_command_substitutes = "",

		wipe_props_command = "slett_rekvisita",
		wipe_props_command_help = "Sletter rekvisita rundt deg.",
		wipe_props_command_parameter_radius = "radius",
		wipe_props_command_parameter_radius_help = "Radiusen for fjerningen (1-250).",
		wipe_props_command_substitutes = "",

		-- game/radio
		radio_command = "radio",
		radio_command_help = "Slå av/på radioen.",
		radio_command_substitutes = "",

		radio_debug_command = "radio_debug",
		radio_debug_command_help = "Slå av/på radioens feilsøking.",
		radio_debug_command_substitutes = "",

		frequency_command = "frekvens",
		frequency_command_help = "Angi hvilken frekvens radioen din er på.",
		frequency_command_parameter_frequency = "frekvens",
		frequency_command_parameter_frequency_help = "Frekvensen du ønsker å lytte til.",
		frequency_command_substitutes = "frekvens",

		force_frequency_command = "tvangsfrekvens",
		force_frequency_command_help = "Bli med på en radiokanal uten å trenge en radio eller å være på jobb.",
		force_frequency_command_parameter_frequency = "frekvens",
		force_frequency_command_parameter_frequency_help = "Frekvensen du ønsker å lytte til.",
		force_frequency_command_substitutes = "",

		random_frequency_command = "tilfeldig_frekvens",
		random_frequency_command_help = "Setter radioen din til en tilfeldig frekvens.",
		random_frequency_command_substitutes = "tilfeldig_fre, tilfeldig_frekvens",

		radio_sounds_command = "radio_lyder",
		radio_sounds_command_help = "Justere volumet på radio-lydeffekter.",
		radio_sounds_command_parameter_volume = "volum nivå",
		radio_sounds_command_parameter_volume_help = "Volumnivået på radio-lydene. Verdien må være mellom 0 og 1. Standardverdien er 0,1. Hvis du ikke oppgir verdi, vil kommandoen returnere ditt nåværende volumnivå.",
		radio_sounds_command_substitutes = "",

		radio_volume_command = "radio_volum",
		radio_volume_command_help = "Juster volumet på radioen.",
		radio_volume_command_parameter_volume = "volumnivå",
		radio_volume_command_parameter_volume_help = "Volumnivået på radioen. Verdien må være mellom 0 og 1. Standardverdien er 0,5. Hvis du lar dette feltet stå tomt, vil det returnere nåværende volumnivå.",
		radio_volume_command_substitutes = "",

		-- game/relationships
		relationships_debug_command = "relationships_debug",
		relationships_debug_command_help = "Aktiver/deaktiver feilsøkingsmodus for PED-relasjoner.",
		relationships_debug_command_substitutes = "",

		-- game/reskin
		reskin_command = "reskin",
		reskin_command_help = "Utfør en 'reskin' for en spiller.",
		reskin_command_parameter_server_id = "server-ID",
		reskin_command_parameter_server_id_help = "The server-ID of the player you would like to trigger a reskin for. Leave this blank to auto-select yourself. (Server-ID for å endre utseendet til en spiller. La dette være blankt for å automatisk endre ditt eget)",
		reskin_command_substitutes = "",

		redeem_reskin_command = "innløs_reskin",
		redeem_reskin_command_help = "Innløs et kjøpt reskin.",
		redeem_reskin_command_substitutes = "",

		-- game/riot_mode
		toggle_riot_mode_command = "utløse_oppstandelsesmodus",
		toggle_riot_mode_command_help = "Aktiverer/Deaktiverer 'oppstandelsesmodus' for alle spillere.",
		toggle_riot_mode_command_substitutes = "",

		add_riot_player_command = "legg_til_opptøyspiller",
		add_riot_player_command_help = "Legg til en spiller i 'opptøyslisten' som vil ha angrep fra tilfeldige NPC-er.",
		add_riot_player_command_parameter_server_id = "server-id",
		add_riot_player_command_parameter_server_id_help = "Server-IDen til spilleren du vil legge til. La dette feltet være tomt for å velge deg selv automatisk.",
		add_riot_player_command_substitutes = "",

		remove_riot_player_command = "fjern_oppvigler_spiller",
		remove_riot_player_command_help = "Fjern en spiller fra 'oppvigler-listen'.",
		remove_riot_player_command_parameter_server_id = "server-id",
		remove_riot_player_command_parameter_server_id_help = "Server-IDen til spilleren du vil fjerne. La dette feltet være tomt for å velge deg selv automatisk.",
		remove_riot_player_command_substitutes = "",

		-- game/scoreboard
		metagame_command = "metaspill",
		metagame_command_help = "Slå på og av konstant visning av server-ID til spillere.",
		metagame_command_substitutes = "meta, m",

		-- game/security_cameras
		security_cameras_command = "sikkerhetskameraer",
		security_cameras_command_help = "Slå på og av sikkerhetskameraene.",
		security_cameras_command_substitutes = "sec, sec_cam, seccam, sec_cams, seccams, security_cams, securitycams, security_camera, securitycamera, securitycameras",

		security_cameras_scan_command = "skann_sikkerhetskameraer",
		security_cameras_scan_command_help = "Få alle kjente sikkerhetskameraobjekter og lagre dem i en tekstfil.",
		security_cameras_scan_command_substitutes = "skann, skann_kamera, skannkamera",

		security_cameras_health_command = "sikkerhetskamera_helse",
		security_cameras_health_command_help = "Aktiver/deaktiver feilsøkingsverktøy for sikkerhetskameraer.",
		security_cameras_health_command_substitutes = "kamera_helse",

		-- game/shield
		shield_command = "skjold",
		shield_command_help = "Aktiver/deaktiver ballistisk skjold.",
		shield_command_substitutes = "",

		-- game/shockwaves
		create_shockwave_command = "lag_kraftbølge",
		create_shockwave_command_help = "Lager en kraftbølge på din nåværende posisjon.",
		create_shockwave_command_parameter_force = "kraft",
		create_shockwave_command_parameter_force_help = "Styrken på sjokkbølgen (1 - 1000).",
		create_shockwave_command_parameter_radius = "radius",
		create_shockwave_command_parameter_radius_help = "Radiusen på sjokkbølgen (1 - 100).",
		create_shockwave_command_substitutes = "sjokkbølge",

		push_player_command = "dytt_spiller",
		push_player_command_help = "Dytt en spiller eller kjøretøyet de er i bort fra deg.",
		push_player_command_parameter_server_id = "server id",
		push_player_command_parameter_server_id_help = "Server-IDen til spilleren.",
		push_player_command_substitutes = "dytt",

		-- game/shrooms
		draw_shroom_areas_command = "tegn_sopp_områder",
		draw_shroom_areas_command_help = "Tegn alle sopp-områder og legg til flere.",
		draw_shroom_areas_command_substitutes = "sopp_områder",

		-- game/spying
		search_for_devices_command = "søk_etter_enheter",
		search_for_devices_command_help = "Søk etter nærliggende enheter.",
		search_for_devices_command_substitutes = "søk_enheter, søkenheter, s4d",

		-- game/spectating
		spectate_command = "tilsku",
		spectate_command_help = "Bli tilskuer til en bestemt spiller.",
		spectate_command_parameter_server_id = "server id",
		spectate_command_parameter_server_id_help = "Server-IDen til spilleren du ønsker å bli tilskuer til.",
		spectate_command_substitutes = "spec",

		-- game/status
		status_reset_command = "nullstill_status",
		status_reset_command_help = "Nullstill statusnivåene.",
		status_reset_command_parameter_server_id = "server id",
		status_reset_command_parameter_server_id_help = "Spillerens server-ID du ønsker å tilbakestille statusen for. Hvis den blir tom, vil deg selv automatisk bli valgt.",
		status_reset_command_substitutes = "sr",

		toggle_status_command = "toggle_status",
		toggle_status_command_help = "Deaktiverer (eller aktiverer) visse tilstander som sult, tørst og stress.",
		toggle_status_command_substitutes = "",

		set_body_armor_command = "set_body_armor",
		set_body_armor_command_help = "Setter noen sin kroppspansringsnivå.",
		set_body_armor_command_parameter_server_id = "server-id",
		set_body_armor_command_parameter_server_id_help = "Spillerens server-ID du vil justere nivået på kroppspanser for. Du kan la dette feltet være blankt eller sette det til `0` for å velge deg selv. Du kan også sette dette feltet til `-1` for å justere nivået på kroppspanser til alle spillere.",
		set_body_armor_command_parameter_body_armor_level = "nivå på kroppspanser",
		set_body_armor_command_parameter_body_armor_level_help = "Nivået du ønsker å sette kroppspanseret til. Dette verdien kan være hvilket som helst tall fra `0` til `100`. Hvis dette feltet er blankt eller inneholder en ugyldig verdi, vil standardverdien være `100`.",
		set_body_armor_command_substitutes = "kropp_armor, panser",

		-- game/streamer_mode
		toggle_streamer_mode_command = "bytt_streamer_modus",
		toggle_streamer_mode_command_help = "Bytt streamer-modus. Dette vil hindre spillere fra å bruke '18+' emotes når du er i nærheten og lignende.",
		toggle_streamer_mode_command_substitutes = "streamer_modus, streamer",

		-- game/sync
		time_hour_command = "tid_time",
		time_hour_command_help = "Sett gjeldende klokkeslettstimen.",
		time_hour_command_parameter_hour = "time",
		time_hour_command_parameter_hour_help = "Timen du ønsker å sette klokken til. Verdien må være mellom 0 og 23.",
		time_hour_command_parameter_transition = "overgang",
		time_hour_command_parameter_transition_help = "Om tiden skal endres med en jevn overgang (ja/nei, standard er nei).",
		time_hour_command_substitutes = "time",

		time_minute_command = "tid_minutt",
		time_minute_command_help = "Sett nåværende klokkeslett minutt.",
		time_minute_command_parameter_minute = "minutt",
		time_minute_command_parameter_minute_help = "Minuttet du vil sette klokken til. Verdien må være mellom 0 og 59.",
		time_minute_command_substitutes = "minutt",

		local_time_command = "lokal_tid",
		local_time_command_help = "Setter tiden, men bare for deg.",
		local_time_command_parameter_time = "tid",
		local_time_command_parameter_time_help = "Tiden du vil sette den lokale klokken til. Verdien må være mellom 0:00 og 23:59.",
		local_time_command_substitutes = "",

		local_weather_command = "lokal_vær",
		local_weather_command_help = "Setter været, men bare for deg.",
		local_weather_command_parameter_weather = "vær",
		local_weather_command_parameter_weather_help = "Været du vil sette lokalt vær til. Tar samme verdier som /weather.",
		local_weather_command_substitutes = "",

		brighter_nights_command = "lysere_kvelder",
		brighter_nights_command_help = "Setter tiden til kl. 12:00 og været til ekstra sol, men kun for deg.",
		brighter_nights_command_substitutes = "",

		weather_command = "vær",
		weather_command_help = "Endrer været.",
		weather_command_parameter_weather = "værnavn",
		weather_command_parameter_weather_help = "Navnet på været du vil endre til. Gyldige værnavn er SOLRIK, KLART, SKYET, RØYK, TÅKETE, OVERSKYET, REGN, TORDENVÆR, OPPKLARNING, NØYTRALT, SNØ, SNOVÆR, JULETID og HALLOWEEN.",
		weather_command_substitutes = "",

		advance_weather_command = "forbedre_vær",
		advance_weather_command_help = "Gå naturlig videre til neste vær.",
		advance_weather_command_substitutes = "",

		freeze_time_command = "frys_tid",
		freeze_time_command_help = "Bytt mellom å fryse tiden eller ikke.",
		freeze_time_command_substitutes = "",

		freeze_weather_command = "frys_vær",
		freeze_weather_command_help = "Bytt mellom å fryse været eller ikke.",
		freeze_weather_command_substitutes = "",

		blackout_command = "strømbrudd",
		blackout_command_help = "Bytt mellom å aktivere eller deaktivere strømbrudd.",
		blackout_command_substitutes = "",

		-- game/tablet
		tablet_command = "nettbrett",
		tablet_command_help = "Åpner nettbrett-UI-et (hvis du har et nettbrett).",
		tablet_command_substitutes = "",

		-- game/test_server
		set_vehicle_preset_command = "sett_kjøretøy_forhåndskonfigurasjon",
		set_vehicle_preset_command_help = "Fullt oppgraderer det kjøretøyet du er i og bruker fargene med den angitte forhåndskonfigurasjonen.",
		set_vehicle_preset_command_parameter_preset = "forhåndskonfigurasjon",
		set_vehicle_preset_command_parameter_preset_help = "Den fargeinnstillingen du vil bruke (rød, blå, grønn, gul, oransje, hvit, svart).",
		set_vehicle_preset_command_substitutes = "kjøretøy_forhåndskonfigurasjon",

		detach_all_doors_command = "løsne_alle_dører",
		detach_all_doors_command_help = "Løsner alle dører på kjøretøyet du er i.",
		detach_all_doors_command_substitutes = "",

		pop_all_tires_command = "punkter_alle_dekk",
		pop_all_tires_command_help = "Punkterer alle dekkene på kjøretøyet du er i.",
		pop_all_tires_command_substitutes = "",

		upgrade_vehicle_fully_command = "oppgrader_kjoretoy_fullt",
		upgrade_vehicle_fully_command_help = "Oppgraderer det nåværende kjøretøyet til fulle.",
		upgrade_vehicle_fully_command_substitutes = "",

		random_vehicle_colors_command = "tilfeldige_kjoretoyfarger",
		random_vehicle_colors_command_help = "Tilfeldiggjør fargene på kjøretøyet du befinner deg i.",
		random_vehicle_colors_command_parameter_lights = "lys",
		random_vehicle_colors_command_parameter_lights_help = "Hvis lysene også skal tilfeldiggjøres (xenon og neon).",
		random_vehicle_colors_command_substitutes = "",

		starve_command = "sult",
		starve_command_help = "Setter mat- og tøstekveden din til 0.",
		starve_command_substitutes = "",

		car_command = "bil",
		car_command_help = "Spawner en tilfeldig bil.",
		car_command_substitutes = "",

		-- game/time_scale
		set_time_scale_command = "sett_tids_skala",
		set_time_scale_command_help = "Setter serverens tids skala.",
		set_time_scale_command_parameter_time_scale = "tids skala",
		set_time_scale_command_parameter_time_scale_help = "Den tids skalaen du vil sette. Verdien må være mellom 0 og 1.",
		set_time_scale_command_substitutes = "tids_skala, sakte_motion",

		-- game/titanic
		create_titanic_command = "lag_titanic",
		create_titanic_command_help = "Lag en synkende Titanic.",
		create_titanic_command_parameter_sink_time = "tid før synking",
		create_titanic_command_parameter_sink_time_help = "Antall minutter før båten synker helt.",
		create_titanic_command_substitutes = "",

		-- game/top_down
		top_down_command = "topp_ned",
		top_down_command_help = "Skifter mellom topp-ned-visning.",
		top_down_command_substitutes = "",

		-- game/trackers
		tracker_command = "sporing",
		tracker_command_help = "Veksler synligheten til sporingen din.",
		tracker_command_substitutes = "",

		trackers_split_command = "sporingskategorier",
		trackers_split_command_help = "Skifter mellom å ha sporinger sortert i kategorier på kartet og å ha dem delt.",
		trackers_split_command_substitutes = "",

		-- game/trains
		trains_debug_command = "toggele_tog_debug",
		trains_debug_command_help = "Slå togfeilsøking av og på.",
		trains_debug_command_substitutes = "",

		spawn_train_command = "spawn_tog",
		spawn_train_command_help = "Spawner et tog.",
		spawn_train_command_parameter_track_id = "spor id",
		spawn_train_command_parameter_track_id_help = "Spor som du vil at toget skal spawne på. (1 til 12)",
		spawn_train_command_substitutes = "",

		-- game/treasure_maps
		spawn_map_piece_command = "spawn_kart_del",
		spawn_map_piece_command_help = "Spawner en skattekart-del.",
		spawn_map_piece_command_parameter_map_tier = "kart-nivå",
		spawn_map_piece_command_parameter_map_tier_help = "Kart nivået du vil spawn en del for.",
		spawn_map_piece_command_parameter_piece_number = "nummer på stykke",
		spawn_map_piece_command_parameter_piece_number_help = "Nummeret på stykket du vil spawn.",
		spawn_map_piece_command_substitutes = "",

		-- game/tsunami
		set_ocean_scaler_command = "sett_ocean_scaler",
		set_ocean_scaler_command_help = "Globally endre intensiteten på havet.",
		set_ocean_scaler_command_parameter_intensity = "intensitet",
		set_ocean_scaler_command_parameter_intensity_help = "Intensiteten du ønsker å sette den til.",
		set_ocean_scaler_command_substitutes = "ocean_scaler, sett_bølge_intensitet, bølge_intensitet",

		-- game/vdm
		vdm_command = "vdm",
		vdm_command_help = "Får den angitte NPCen til å forsøke å VDM på målet.",
		vdm_command_parameter_target = "mål",
		vdm_command_parameter_target_help = "Målets spillerserver-ID.",
		vdm_command_parameter_network_id = "nettverks-ID",
		vdm_command_parameter_network_id_help = "Lokal nettverks-ID (eller kjøretøyet).",
		vdm_command_substitutes = "",

		vdm_clear_command = "vdm_clear",
		vdm_clear_command_help = "Fjerner alle VDM-mål.",
		vdm_clear_command_substitutes = "",

		-- game/voice
		voice_debug_command = "voice_debug",
		voice_debug_command_help = "Aktiver/deaktiver talefeilfeilsøking.",
		voice_debug_command_parameter_server_id = "server-id",
		voice_debug_command_parameter_server_id_help = "Hvis du vil slå på/av 'voice debug' for noen andre, sett inn deres server-id her.",
		voice_debug_command_substitutes = "",

		muted_areas_debug_command = "muted_areas_debug",
		muted_areas_debug_command_help = "Tegner alle dempede stemmeområder.",
		muted_areas_debug_command_substitutes = "muted_areas",

		listen_command = "lytt",
		listen_command_help = "Slår på/av lyttemodus for en bestemt spiller. (Du kan høre hva de sier)",
		listen_command_parameter_server_id = "server-id",
		listen_command_parameter_server_id_help = "Brukeren du vil lytte til.",
		listen_command_substitutes = "",

		toggle_voice_mute_command = "toggle_voice_mute",
		toggle_voice_mute_command_help = "Muter eller unmuter noen fra talechat.",
		toggle_voice_mute_command_parameter_server_id = "server id",
		toggle_voice_mute_command_parameter_server_id_help = "Brukeren du vil mute/unmute.",
		toggle_voice_mute_command_substitutes = "voice_mute",

		-- game/wizard
		wizard_command = "wizard",
		wizard_command_help = "Åpner veiviser-menyen.",
		wizard_command_parameter_server_id = "server id",
		wizard_command_parameter_server_id_help = "Velg en spiller fra menyen (valgfritt).",
		wizard_command_substitutes = "",

		ragdoll_player_command = "ragdoll_spiller",
		ragdoll_player_command_help = "Får en spiller til å bli ragdollet.",
		ragdoll_player_command_parameter_server_id = "server id",
		ragdoll_player_command_parameter_server_id_help = "Server-IDen til spilleren du vil gjøre ragdollet.",
		ragdoll_player_command_parameter_force = "kraft",
		ragdoll_player_command_parameter_force_help = "Påfør en tilfeldig kraft til spilleren etter at de er blitt ragdollet.",
		ragdoll_player_command_substitutes = "",

		ragdoll_radius_command = "ragdoll_radius",
		ragdoll_radius_command_help = "Tvinger alle spillere innenfor en gitt radius til å ragdoll tilfeldig.",
		ragdoll_radius_command_parameter_radius = "radius",
		ragdoll_radius_command_parameter_radius_help = "Radiusen der spillerne vil ragdoll.",
		ragdoll_radius_command_parameter_force = "kraft",
		ragdoll_radius_command_parameter_force_help = "Legg til en tilfeldig kraft på spilleren etter at de har ragdollet.",
		ragdoll_radius_command_substitutes = "",

		punch_radius_command = "punch_radius",
		punch_radius_command_help = "Tvinger alle spillere innenfor en gitt radius til å slå tilfeldig.",
		punch_radius_command_parameter_radius = "radius",
		punch_radius_command_parameter_radius_help = "Radiusen som spillerne vil slå tilfeldigvis innenfor.",
		punch_radius_command_substitutes = "",

		flashbang_command = "flashbang",
		flashbang_command_help = "Flashbang en bestemt spiller.",
		flashbang_command_parameter_server_id = "server-id",
		flashbang_command_parameter_server_id_help = "Server-ID til målspilleren.",
		flashbang_command_substitutes = "",

		flashbang_radius_command = "flashbang_radius",
		flashbang_radius_command_help = "Flashbang alle spillerne innenfor et gitt radius.",
		flashbang_radius_command_parameter_radius = "radius",
		flashbang_radius_command_parameter_radius_help = "Radiusen innenfor som spillere vil bli flashbang'et.",
		flashbang_radius_command_parameter_include_self = "inkluder seg selv",
		flashbang_radius_command_parameter_include_self_help = "Hvis du vil bli flashbang'et selv.",
		flashbang_radius_command_substitutes = "",

		punch_command = "slåss",
		punch_command_help = "Tvinger en bestemt spiller til å slåss tilfeldig.",
		punch_command_parameter_server_id = "server ID",
		punch_command_parameter_server_id_help = "Server-IDen til målespilleren.",
		punch_command_substitutes = "",

		explode_command = "eksploder_spiller",
		explode_command_help = "Detonerer en bestemt spiller.",
		explode_command_parameter_server_id = "server id",
		explode_command_parameter_server_id_help = "Server-IDen til målspilleren.",
		explode_command_substitutes = "",

		ignite_player_command = "tenn_på_spiller",
		ignite_player_command_help = "Tenner en spiller på ild for en kort stund.",
		ignite_player_command_parameter_server_id = "server id",
		ignite_player_command_parameter_server_id_help = "Server-IDen til målspilleren.",
		ignite_player_command_substitutes = "tenn, brenn",

		run_command_as_command = "kjør_kommando_som",
		run_command_as_command_help = "Gjør at en annen spiller kjører en kommando.",
		run_command_as_command_parameter_server_id = "server-id",
		run_command_as_command_parameter_server_id_help = "Server-ID til målspilleren.",
		run_command_as_command_parameter_command = "kommando",
		run_command_as_command_parameter_command_help = "Kommandoen du vil at spilleren skal kjøre.",
		run_command_as_command_substitutes = "kjørSom, sudo",

		ped_reverse_command = "reverser_pedal",
		ped_reverse_command_help = "Får den nærmeste personen i et kjøretøy til å reversere.",
		ped_reverse_command_substitutes = "",

		ped_forwards_command = "ped_fremover",
		ped_forwards_command_help = "Får den nærmeste personen i et kjøretøy til å kjøre fremover.",
		ped_forwards_command_substitutes = "",

		-- global/entities
		local_entities_debug_command = "lokale_objekter_debug",
		local_entities_debug_command_help = "Skru på eller av debugging for lokale objekter.",
		local_entities_debug_command_substitutes = "lobjekter",

		no_ped_population_areas_debug_command = "ingen_folk_populasjonsområder_debug",
		no_ped_population_areas_debug_command_help = "Skru på eller av debugging for 'ingen person populasjonsområder'.",
		no_ped_population_areas_debug_command_substitutes = "",

		-- global/explosions
		create_explosion_command = "lag_eksplosjon",
		create_explosion_command_help = "Skap en eksplosjon.",
		create_explosion_command_parameter_explosion_type = "eksplosjonstype",
		create_explosion_command_parameter_explosion_type_help = "Eksplosjonstypen.",
		create_explosion_command_parameter_damage_scale = "skade skalering",
		create_explosion_command_parameter_damage_scale_help = "Skade skaleringen.",
		create_explosion_command_parameter_camera_shake = "kameraristing",
		create_explosion_command_parameter_camera_shake_help = "Kameraristingen.",
		create_explosion_command_substitutes = "exp, spreng, eksplosjon",

		-- global/functions
		confirm_yes_command = "ja",
		confirm_yes_command_help = "Bekrefter gjeldende handling.",
		confirm_yes_command_substitutes = "bekreft",

		confirm_no_command = "nei",
		confirm_no_command_help = "Avbryter gjeldende handling.",
		confirm_no_command_substitutes = "avbryt, stopp",

		-- global/states
		entity_states_command = "enhetsstatus",
		entity_states_command_help = "Skriver ut alle statusene til en gitt enhet.",
		entity_states_command_parameter_network_id = "nettverks-ID",
		entity_states_command_parameter_network_id_help = "Nettverks-ID-en til enheten.",
		entity_states_command_substitutes = "",

		-- illegal/corner
		corner_command = "gate",
		corner_command_help = "Selg narkotika til en person i nærheten. Typen narkotika du selger avhenger av hvor du er.",
		corner_command_substitutes = "",

		corner_debug_command = "gate_debug",
		corner_debug_command_help = "Vis alle salgsområdene.",
		corner_debug_command_substitutes = "",

		-- interfaces/interfaces
		clear_uis_command = "fjern_uis",
		clear_uis_command_help = "Fjern fokus fra alle brukergrensesnitt.",
		clear_uis_command_substitutes = "",

		interface_focuses_command = "grensesnitt_fokus",
		interface_focuses_command_help = "Sjekk hvilke grensesnitt som er markert som fokusert.",
		interface_focuses_command_substitutes = "grensesnitt_fokus, fokus, fokuser",

		--jobs/duty
		toggle_duty_status_command = "bytt_tjenestestatus",
		toggle_duty_status_command_help = "Bytter din tjenestestatus.",
		toggle_duty_status_command_parameter_server_id = "server id",
		toggle_duty_status_command_parameter_server_id_help = "Mål server id eller tom om du vil bytte din egen tjenestestatus.",
		toggle_duty_status_command_substitutes = "tjenestestatus, tjeneste",

		toggle_training_command = "bytt_treningsstatus",
		toggle_training_command_help = "Bytter din treningsstatus.",
		toggle_training_command_substitutes = "treningsstatus, trening",

		toggle_operator_status_command = "bryt_operator_status",
		toggle_operator_status_command_help = "Bryt nødoperatør-statusen. Om denne er aktivert, vil du motta valget om å akseptere 911-samtaler.",
		toggle_operator_status_command_substitutes = "operator, bryt_operator, operator_status",

		-- jobs/police
		aim_assist_command = "målrettet_assistanse",
		aim_assist_command_help = "Bryt politiets målretningsassistanse. (Til minne om Nathan Spencer.)",
		aim_assist_command_substitutes = "",

		undercover_command = "undercover",
		undercover_command_help = "Bryt om du er undercover eller ikke. Dette vil skjule forskjellige ting som ville vanligvis avsløre din politi-status.",
		undercover_command_substitutes = "",

		active_robberies_command = "aktive ran",
		active_robberies_command_help = "Lister alle butikker, banker og smykkebutikker som er åpne og pågår.",
		active_robberies_command_substitutes = "",

		pd_impound_command = "pd-inndragning",
		pd_impound_command_help = "Denne kommandoen inndrar en spillers kjøretøy i en bestemt periode.",
		pd_impound_command_parameter_minutes = "minutter",
		pd_impound_command_parameter_minutes_help = "Hvor lenge kjøretøyet skal inndras (mellom 1 minutt og 12 timer).",
		pd_impound_command_substitutes = "",

		dispatch_command = "utkalling",
		dispatch_command_help = "Sender en melding til PD-utkallingen.",
		dispatch_command_parameter_message = "melding",
		dispatch_command_parameter_message_help = "Meldingen du ønsker å sende.",
		dispatch_command_substitutes = "",

		police_drive_mode_command = "police_drive_mode",
		police_drive_mode_command_help = "Bytt mellom kjøremodusene på politikjøretøyet ditt.",
		police_drive_mode_command_parameter_mode = "modus",
		police_drive_mode_command_parameter_mode_help = "Modusen du vil sette. \"D\" for vanlig kjøring og \"S\" for sport (sport er standard).",
		police_drive_mode_command_substitutes = "drive_mode",

		-- jobs/state
		license_give_command = "lisens_gi",
		license_give_command_help = "Gi en lisens.",
		license_give_command_parameter_character_id = "karakter ID",
		license_give_command_parameter_character_id_help = "ID-en til karakteren du ønsker å gi lisensen til.",
		license_give_command_parameter_license = "lisens",
		license_give_command_parameter_license_help = "Lisensen du ønsker å gi. Du kan se en liste over tilgjengelige lisenser ved å bruke `/license_list`.",
		license_give_command_substitutes = "gi_lisens, legg_til_lisens",

		license_remove_command = "fjern_lisens",
		license_remove_command_help = "Fjern en lisens.",
		license_remove_command_parameter_character_id = "karakter ID",
		license_remove_command_parameter_character_id_help = "IDen til karakteren du vil fjerne lisensen fra.",
		license_remove_command_parameter_license = "lisens",
		license_remove_command_parameter_license_help = "Lisensen du ønsker å fjerne. Du kan se en liste over tilgjengelige lisenser ved å bruke `/lisens_liste`.",
		license_remove_command_substitutes = "fjern_lisens",

		license_list_command = "lisens_liste",
		license_list_command_help = "Lister alle tilgjengelige lisenser.",
		license_list_command_substitutes = "liste_lisenser",

		licenses_check_command = "lisenser_sjekk",
		licenses_check_command_help = "Sjekk noen sine lisenser.",
		licenses_check_command_parameter_character_id = "karakter id",
		licenses_check_command_parameter_character_id_help = "ID-en til karakteren du vil sjekke lisensene til.",
		licenses_check_command_substitutes = "sjekk_lisenser, sjekk_lisens",

		licenses_command = "løyver",
		licenses_command_help = "Få dine løyver.",
		licenses_command_substitutes = "",

		-- jobs/tow
		toggle_mechanic_messages_command = "toggle_mekaniker_meldinger",
		toggle_mechanic_messages_command_help = "Slår av og på om du vil motta mekaniker-meldinger.",
		toggle_mechanic_messages_command_substitutes = "mekaniker_meldinger",

		-- vehicles/boats
		toggle_anchor_command = "toggle_anker",
		toggle_anchor_command_help = "Slår av og på ankeret på en båt i nærheten.",
		toggle_anchor_command_substitutes = "anker",

		-- vehicles/damage
		vehicle_damage_debug_command = "kjøretøy_skade_debug",
		vehicle_damage_debug_command_help = "Debugger kjøretøyets gjeldende skadeverdier.",
		vehicle_damage_debug_command_substitutes = "",

		-- vehicles/fuel
		set_fuel_command = "set_fuel",
		set_fuel_command_help = "Setter drivstoffnivået til kjøretøyet du er i.",
		set_fuel_command_parameter_fuel_level = "drivstoffnivå",
		set_fuel_command_parameter_fuel_level_help = "Drivstoffnivået du vil sette det til. Å la dette feltet stå tomt vil automatisk velge `100`.",
		set_fuel_command_substitutes = "drivstoff",

		-- vehicles/garages
		toggle_garage_debug_command = "toggle_garage_debug",
		toggle_garage_debug_command_help = "Aktiverer/deaktiverer garasjen for debugging.",
		toggle_garage_debug_command_substitutes = "garasjedebugg",

		-- vehicles/keys
		give_key_command = "gi_nøkkel",
		give_key_command_help = "Gi en kjøretøynøkkel til en person i nærheten.",
		give_key_command_parameter_server_id = "server-id",
		give_key_command_parameter_server_id_help = "Den spillerens server-id du ønsker å gi nøkkelen til. Dette kan stå tomt (eller være 0) for å gi nøkkelen til den nærmeste personen.",
		give_key_command_substitutes = "gi_nøkkel",

		hotwire_vehicle_command = "hotwire_kjøretøy",
		hotwire_vehicle_command_help = "Raskt tenne på motoren i kjøretøyet du er i.",
		hotwire_vehicle_command_parameter_server_id = "server id",
		hotwire_vehicle_command_parameter_server_id_help = "Gjør at en annen spiller øyeblikkelig kan starte en uautorisert start av kjøretøyet de er i.",
		hotwire_vehicle_command_substitutes = "hotwire",

		pickup_keys_command = "plukk_opp_nøkler",
		pickup_keys_command_help = "Får deg til å plukke opp nøklene til det nærmeste kjøretøyet.",
		pickup_keys_command_substitutes = "",

		-- vehicles/modifications
		wheel_offset_command = "hjul_forflytning",
		wheel_offset_command_help = "Endrer hjulenes forflytning på et kjøretøy.",
		wheel_offset_command_parameter_wheels = "foran/bak",
		wheel_offset_command_parameter_wheels_help = "Hvilke hjul vil du endre?",
		wheel_offset_command_parameter_value = "verdi",
		wheel_offset_command_parameter_value_help = "Beløpet du vil endre det til. Dette kan være hvor som helst fra -0,15 til 0,15, 0 er standard.",
		wheel_offset_command_substitutes = "",

		wheel_rotation_command = "hjul_rotasjon",
		wheel_rotation_command_help = "Endre rotasjonen på hjulene til et kjøretøy.",
		wheel_rotation_command_parameter_wheels = "foran/bak",
		wheel_rotation_command_parameter_wheels_help = "Hvilke hjul vil du endre på?",
		wheel_rotation_command_parameter_value = "verdi",
		wheel_rotation_command_parameter_value_help = "Hvor mye du vil endre det. Dette kan være hvor som helst fra -0,5 til 0,5, 0 er standard.",
		wheel_rotation_command_substitutes = "",

		-- vehicles/plates
		fake_plate_command = "falskt_skilt",
		fake_plate_command_help = "Slår på/av et falskt skilt på nåværende kjøretøy.",
		fake_plate_command_substitutes = "",

		plate_available_command = "plate_tilgjengelig",
		plate_available_command_help = "Sjekk om et reg.nummer er tilgjengelig for `/custom_plate` kommandoen.",
		plate_available_command_parameter_plate_number = "regn.nummer",
		plate_available_command_parameter_plate_number_help = "Reg.nummeret du vil sjekke. Reg.nummer kan kun være opptil 8 tegn langt og kan kun bestå av store bokstaver og tall.",
		plate_available_command_substitutes = "",

		custom_plate_command = "tilpasset_plate",
		custom_plate_command_help = "Sett en tilpasset plate for ett av dine kjøretøy.",
		custom_plate_command_parameter_vehicle_id = "kjøretøy-id",
		custom_plate_command_parameter_vehicle_id_help = "Kjøretøy-IDen du vil legge den tilpassede platen på. (Du kan finne denne IDen i garasjen din)",
		custom_plate_command_parameter_plate_number = "platenummer",
		custom_plate_command_parameter_plate_number_help = "Platenummeret du vil sette. Platenummer kan bare være opptil 8 tegn og kan bare bestå av store bokstaver og tall.",
		custom_plate_command_substitutes = "",

		-- vehicles/runways
		ifr_command = "ifr",
		ifr_command_help = "Aktiver/deaktiver IFR-modus (Vis landingassist for nærliggende rullebaner).",
		ifr_command_substitutes = "",

		-- vehicles/sirens
		mute_sirens_command = "mute_sirens",
		mute_sirens_command_help = "Demp alle sirener og horn.",
		mute_sirens_command_substitutes = "",

		-- vehicles/vehicles
		flip_command = "flip",
		flip_command_help = "Rull over et omvendt kjøretøy.",
		flip_command_substitutes = "",

		toggle_roll_control_command = "toggle_roll_control",
		toggle_roll_control_command_help = "Slå av/på styring av luftkontroll.",
		toggle_roll_control_command_substitutes = "roll_control",

		enable_ls_customs_command = "enable_ls_customs",
		enable_ls_customs_command_help = "Slå av/på LS_Customs menyen.",
		enable_ls_customs_command_substitutes = "ls_customs",

		toggle_gear_animation_command = "gir_animasjon",
		toggle_gear_animation_command_help = "Slår av/på girskiftanimasjon og lyder i biler.",
		toggle_gear_animation_command_substitutes = "gir_animasjon, gir_lyder",

		turtle_vehicle_command = "snublebil",
		turtle_vehicle_command_help = "Vender bilen din på taket.",
		turtle_vehicle_command_substitutes = "snuble",

		door_command = "dør",
		door_command_help = "Slår av/på en dør på kjøretøyet.",
		door_command_parameter_door_id = "dør-id (1-6)",
		door_command_parameter_door_id_help = "Hvilken biltør vil du åpne? Denne parameteren overskrives hvis du er en passasjer. Du kan også bruke denne kommandoen utenfor et kjøretøy.",
		door_command_substitutes = "",

		window_command = "vindu",
		window_command_help = "Bytt tilstand på et kjøretøys vindu.",
		window_command_parameter_window_id = "vindu-id (1-4)",
		window_command_parameter_window_id_help = "Hvilket kjøretøysvindu vil du åpne? Denne parameteren overskrives hvis du er en passasjer.",
		window_command_substitutes = "",

		shuffle_command = "bland",
		shuffle_command_help = "Bytt til en annen passasjerplass i kjøretøyet.",
		shuffle_command_substitutes = "shuff",

		seat_command = "seat",
		seat_command_help = "Flytt til en annen passasjerplass i kjøretøyet.",
		seat_command_parameter_seat_id = "passasjerplass-id (1-6)",
		seat_command_parameter_seat_id_help = "Hvilken passasjerplass vil du prøve å flytte til?",
		seat_command_substitutes = "",

		engine_command = "engine",
		engine_command_help = "Slå av/på motoren til kjøretøyet.",
		engine_command_substitutes = "",

		mileage_command = "mileage",
		mileage_command_help = "Se hvor mange kilometer kjøretøyet har kjørt.",
		mileage_command_substitutes = "",

		toggle_disabled_brakes_command = "bremser_av_på",
		toggle_disabled_brakes_command_help = "Slår av eller på bremsene på nærmeste kjøretøy.",
		toggle_disabled_brakes_command_substitutes = "deaktiver_bremser",

		manual_toggle_command = "manuell_kontroll",
		manual_toggle_command_help = "Slår av eller på manuell kontroll av kjøretøyers gir.",
		manual_toggle_command_substitutes = "",

		speed_limiter_command = "hastighetsbegrenser",
		speed_limiter_command_parameter_speed = "hastighet",
		speed_limiter_command_parameter_speed_help = "Hvilken hastighet ønsker du å angi for hastighetsbegrenseren? Du kan la dette feltet stå tomt for å tilbakestille den og få normal oppførsel.",
		speed_limiter_command_help = "Overstyr hastighetsbegrensningens normale oppførsel for å forhåndsbestemme hastighetsgrensen.",
		speed_limiter_command_substitutes = "sl, cc, cruise_control",

		add_vehicle_command = "legg_til_kjøretøy",
		add_vehicle_command_help = "Legg til et kjøretøy i noen sin garasje.",
		add_vehicle_command_parameter_model = "modell",
		add_vehicle_command_parameter_model_help = "Modellnavn eller modell hash av kjøretøyet du ønsker å legge til.",
		add_vehicle_command_parameter_server_id = "server id",
		add_vehicle_command_parameter_server_id_help = "Spillerens server-ID du ønsker å gi et kjøretøy til. Hvis du lar dette stå blankt vil det automatisk velge deg selv.",
		add_vehicle_command_substitutes = "",

		toggle_vehicle_weapons_command = "skift_kjøretøy_våpen",
		toggle_vehicle_weapons_command_help = "Slår av/på bruk av våpen på et kjøretøy.",
		toggle_vehicle_weapons_command_parameter_server_id = "server id",
		toggle_vehicle_weapons_command_parameter_server_id_help = "Server-IDen til spilleren du ønsker å endre kjøretøyvåpnene for. Hvis dette feltet er tomt, velges du automatisk.",
		toggle_vehicle_weapons_command_substitutes = "kjøretøy_våpen",

		wheelie_command = "wheelie",
		wheelie_command_help = "Slår av/på wheelie-modus (Trykk Shift mens du er i et bil).",
		wheelie_command_parameter_power_level = "effektnivå",
		wheelie_command_parameter_power_level_help = "Hvor mye boost å påføre (standard er 2.5, senk det hvis wheelien er for sterk, øk det hvis den er for svak).",
		wheelie_command_substitutes = "",

		-- vehicles/vin_numbers
		vin_number_command = "vin_nummer",
		vin_number_command_help = "Returnerer VIN-nummeret til kjøretøyet du kjører.",
		vin_number_command_substitutes = "vin",

		vin_lookup_command = "vin_søk",
		vin_lookup_command_help = "Søker opp VIN-nummeret til et kjøretøy.",
		vin_lookup_command_parameter_vin_number = "vin nummer",
		vin_lookup_command_parameter_vin_number_help = "VIN-nummeret du ønsker å sjekke.",
		vin_lookup_command_substitutes = "sjekk_vin, sv",

		-- weapons/ammo
		fill_ammo_command = "fyll_ammo",
		fill_ammo_command_help = "Fyller all ammunisjon for alle våpen.",
		fill_ammo_command_substitutes = "",

		-- weapons/recoil
		crosshair_command = "sikte",
		crosshair_command_help = "Skru av/på siktet.",
		crosshair_command_substitutes = "",

		aim_down_sight_command = "sikt_ned",
		aim_down_sight_command_help = "Automatisk sikte ned når du høyreklikker, selv om du er i tredjepersonsperspektiv.",
		aim_down_sight_command_substitutes = "sikt_ne",

		-- weapons/weapons
		check_ammo_command = "sjanse_ammo",
		check_ammo_command_help = "Sjekker hvor mye ammunisjon du har totalt for våpenet du holder.",
		check_ammo_command_substitutes = "ammo",

		toggle_airsoft_mode_command_command = "bytte_airsoft_modus",
		toggle_airsoft_mode_command_command_help = "Bytter airsoft modus (server bredt), noe som gjør alle våpen til utrolig lav skade.",
		toggle_airsoft_mode_command_command_substitutes = "airsoft_mode, airsoft",

		toggle_folded_stock_command_command = "bytte_sammenfoldet_stokk",
		toggle_folded_stock_command_command_help = "Toggler sammenfoldet kolbe på våpenet du for øyeblikket holder.",
		toggle_folded_stock_command_command_substitutes = "sammenfoldet_kolbe, kolbe"
	},

	connections = {
		your_account_is_connecting = "Kontoen din kobler til fra en ny sesjon."
	},

	controls = {
		menu_control_up = "Meny Opp",
		menu_control_down = "Meny Ned",
		menu_control_left = "Meny Venstre",
		menu_control_right = "Meny Høyre",

		menu_control_up_alternative = "Meny Opp Alternativ",
		menu_control_down_alternative = "Meny Ned Alternativ",
		menu_control_left_alternative = "Alternativ meny venstre",
		menu_control_right_alternative = "Alternativ meny høyre"
	},

	core = {
		version = "Versjon"
	},

	discord = {
		one_player = "1 spiller",
		multiple_players = "${playerAmount} spillere",
		join_with_fivem = "Bli med med FiveM",
		discord_guild = "Discord-gilde",
		richer_presence_on = "Mer utfyllende tilstedeværelse er nå på.",
		richer_presence_off = "Mer utfyllende tilstedeværelse er nå av."
	},

	emojis = {
		emoji_list = "${emojis}",
		refresh_emojis_no_permissions = "Spiller forsøkte å oppdatere emojis uten tilstrekkelige tillatelser.",
		api_reported_no_updates = "Discord API rapporterte ingen oppdateringer i emojilisten.",
		emojis_added = "La til ${added} emoji(er).",
		emojis_removed = "Fjernet ${removed} emoji(er).",
		emojis_updated = "La til ${added} emoji(er) og fjernet ${removed} emoji(er)."
	},

	errors = {
		script_location = "Skriptplassering",
		additional_information = "Tilleggsinformasjon",
		error_report = "Feilrapport",
		send_report = "Send rapport",
		abort_report = "Avbryt rapport",
		input_placeholder = "Vennligst informer oss om hva du gjorde da denne feilen ble utløst...",
		oh_no = "Å nei,",
		an_error_has_occurred = "Det har oppstått en feil!",
		error_occured_information = "Dette indikerer at noe ikke fungerer som det skal. Vi ber deg om å hjelpe oss med å løse dette problemet ved å gi oss mer informasjon om hva du gjorde da denne feilen ble utløst."
	},

	ping = {
		get_pings_missing_permissions = "Spilleren prøvde å hente ping-ene, men hadde ikke de nødvendige tillatelsene for å gjøre det.",
		getting_pings = "Henter ping-er fra alle spillerne. Dette kan ta noen sekunder.",
		host_data = "${position}. ${location} - ${averagePing} Gjennomsnittlig ping (basert på ${totalPings} spillere), 10% lavt: ${averagePingLow}, 10% høyt: ${averagePingHigh}",
		list_hosts = "${listHosts}"
	},

	profile = {
		profile_debug_enabled = "Profilfeilsøking er aktivert. Sjekk F8-konsollen for utdata.",
		profile_debug_disabled = "Profilfeilsøkingen er deaktivert."
	},

	queue = {
		joining_the_queue = "Berg å stå i kø...",
		timed_out_before_joining = "Tiden din gikk ut før du kunne bli med på serveren.",
		server_reload_while_in_loading = "Serverens kjerne restartes, og siden du ikke ble lastet inn ordentlig, ble du automatisk kastet ut.",
		server_reload_while_in_queue = "Kjernen til serveren blir restartet. Vennligst koble til køen igjen.",
		took_too_long_to_connect = "Du brukte for lang tid på å koble deg til!",
		queue_position_with_priority = "🐌 Du er ${queueEntryId}/${queueLength} i køen med ${priorityName}-prioritet. 🕐${queueTime}${liveOnTwitch}",
		queue_position_without_priority = "🐌 Du er ${queueEntryId}/${queueLength} i køen. 🕐${queueTime}\nLedd av å vente i kø? Støtt oss for køprioritet!\n\n${webstoreURL}${liveOnTwitch}",
		live_on_twitch = "\n\nEr du kjedelig? Sjekk ut disse streamerne!\n${streamers}",
		server_is_starting = "Venter på at serveren skal starte...",
		cancelled_before_server_start = "Tilkoblingen ble avbrutt før serveren hadde startet.",
		kicked_from_queue = "Du har blitt sparket ut av køen på grunn av `${reason}`.",
		kicked_from_queue_no_reason = "Du har blitt sparket ut av køen uten angitt årsak.",
		missing_slots_parameter = "Mangler `slots` parameter.",
		invalid_slots_parameter = "Ugyldig `slots` parameter.",
		slots_parameter_out_of_range = "Parameteret `slots` må være mellom `0` og `1025`.",
		slots_already_set_to = "Server-plassene er allerede satt til `${slots}`.",
		slots_set_to = "Server-plassene er nå satt til `${slots}`.",

		invalid_license_identifier_parameter = "Mangler eller ugyldig parameter for 'licenseIdentifier'.",
		invalid_target_position_parameter = "Mangler eller ugyldig parameter for 'targetPosition'.",
		player_not_found_in_queue = "Spilleren ble ikke funnet i køen.",
		player_queue_moved_success = "Spillerens posisjon i køen er oppdatert.",
		player_queue_skipped_success = "Spilleren har hoppet over køen vellykket.",
		queue_is_not_ready = "Køen er ikke klar, så den kan ikke hoppes over.",

		welcome_to = "Velkommen til"
	},

	restart = {
		restart_30_minutes = "Serveren vil starte på nytt om 30 minutter!",
		restart_15_minutes = "Serveren vil starte på nytt om 15 minutter!",
		restart_10_minutes = "Serveren vil starte på nytt om 10 minutter!",
		restart_5_minutes = "Serveren vil starte på nytt om 5 minutter!",
		restart_3_minutes = "Serveren vil starte på nytt om 3 minutter!",
		restart_2_minutes = "Serveren vil starte på nytt om 2 minutter!",
		restart_1_minute = "Serveren vil starte på nytt om 1 minutt!",
		server_restarting = "Serveren restarter. Du kan rejoinere om noen få minutter.",
		executed_restart_command = "Utførte restart kommandoen.",
		already_executed_restart_command = "Restart kommandoen har allerede blitt utført."
	},

	routes = {
		route_not_found = "Ruten ${route} ble ikke funnet.",
		route_restricted = "Ruten ${route} er begrenset.",
		internal_server_error = "Intern serverfeil."
	},

	users = {
		playtime = "Spilletid",
		player_playtime = "${playerName} (Posisjon ${position})\nTotal spilletid: ${totalPlaytime}\nØkt spilletid: ${sessionPlaytime}",
		leaderboard = "Ledertavle",
		your_position = "Din posisjon",
		logs_user_reject_connection_title = "Tilkoblingsavslag",
		logs_user_reject_connection_details = "Avviste tilkobling fra ${consoleName} (`${reason}`).",
		logs_user_connected_title = "Bruker tilkoblet",
		logs_user_connected_details = "${consoleName} har tilkoblet til serveren.",
		logs_user_joined_title = "Bruker koblet til",
		logs_user_joined_details = "${consoleName} har koblet til serveren.",
		logs_user_dropped_title = "Bruker frakoblet",
		logs_user_dropped_details = "${consoleName} har koblet fra serveren etter å ha spilt i ${playtime} med grunn: `${reason}`.",
		logs_character_loaded_title = "Karakter lastet",
		logs_character_loaded_details = "${consoleName} har lastet karakteren ${fullName} (${characterId}).",
		logs_character_unloaded_title = "Karakter avlastet",
		logs_character_unloaded_details = "${consoleName} har avlastet karakteren ${fullName} (${characterId}).",
		logs_character_unloaded_details_reason = "${consoleName} har lastet ut karakteren ${fullName} (${characterId}) med årsaken `${reason}`.",
		logs_character_created_title = "Karakter Opprettet",
		logs_character_created_details = "${consoleName} har opprettet karakteren ${fullName} (${characterId}).",
		logs_character_deleted_title = "Karakter Slettet",
		logs_character_deleted_details = "${consoleName} har slettet karakteren ${fullName} (${characterId}).",
		server_core_is_restarting = "Kjernen til serveren blir restartet.",
		you_timed_out = "Du har kjørt ut tiden!",
		kicked_for_no_specified_reason = "Du ble sparket ut uten en spesifisert grunn.",
		kicked_player = "Sparket ut spiller.",
		kicked_player_and_removed_reconnect_priority = "Sparket ut spiller og fjernet gjenkoblingsprioritering.",
		kicked_player_and_failed_to_remove_reconnect_priority = "Sparket ut spiller, men klarte ikke fjerne gjenkoblingsprioritering.",
		removed_player_from_queue = "Fjernet spilleren fra køen.",
		player_not_found = "Spilleren ble ikke funnet.",
		missing_license_identifier = "Manglende `licenseIdentifier`.",
		package = "Pakke",
		package_updated = "Din pakke har blitt oppdatert til `${packageName}`.",
		package_updated_remaining_time = "Din pakke har blitt oppdatert til `${packageName}`. Det vil utløpe om ${remainingTime}.",
		package_expired = "Din pakke har utløpt.",
		package_same = "Din pakke er `${packageName}`.",
		package_same_remaining_time = "Din pakke er `${packageName}`. Det vil utløpe om ${remainingTime}.",
		no_package = "Du har ingen pakke.",
		fetching_package_error = "En feil oppstod mens du prøvde å hente pakkeinformasjonen din.",
		check_playtime_not_staff = "Spilleren prøvde å sjekke noen andres spilletid, men hadde ikke riktig tillatelse til å gjøre det.",
		reason_unknown = "Årsak ukjent.",

		unloaded_character = "Løste karakter.",
		user_does_not_have_sent_character_loaded = "Brukeren har ikke den sendte karakteren lastet inn.",
		user_has_no_character_loaded = "Brukeren har ingen karakter lastet inn.",
		user_not_found = "Den sendte brukeren ble ikke funnet på serveren.",
		invalid_character_id = "Ugyldig karakter-ID-parameter sendt.",
		invalid_license_identifier = "Ugyldig lisensidentifikatorparameter sendt.",

		unload_character_not_staff = "Spilleren prøvde å fjerne en spillers karakter, men de hadde ikke tilstrekkelige rettigheter.",

		unloaded_character_for_player_logs_title = "Fjernet karakter for spiller",
		unloaded_character_for_player_logs_details = "${consoleName} fjernet ${targetConsoleName}'s karakter ${characterFullName} (${characterId}) med grunnen `${message}`.",
		unloaded_character_for_player_no_reason_logs_details = "${consoleName} fjernet ${targetConsoleName}'s karakter ${characterFullName} (${characterId}) uten angitt grunn.",
		unloaded_character_self_logs_title = "Karakter avlastet",
		unloaded_character_self_logs_details = "${consoleName} avlastet sin egen karakter ${characterFullName} (${characterId}) med grunnen `${message}`.",
		unloaded_character_self_no_reason_logs_details = "${consoleName} avlastet sin egen karakter ${characterFullName} (${characterId}) uten å spesifisere noen grunn.",

		unloaded_character_for_user = "Avlastet karakteren ${characterFullName} (${characterId}) for ${consoleName}.",
		user_with_server_id_has_no_character_loaded = "Brukeren med server-ID `${serverId}` har ikke noen karakter lastet inn.",
		user_with_server_id_not_found = "Brukeren med server-ID `${serverId}` kunne ikke bli funnet på serveren.",

		custom_plate = "Egendefinert skilt",
		custom_character_id = "Egendefinert karakter-ID",
		custom_phone_number = "Egendefinert telefonnummer",
		reskin = "Omskinning",

		no_player_packages = "Du har ingen spillerpakker.",
		player_packages = "Spillerpakker:\n${playerPackages}",
		player_package = "- ${label}: ${amount}x",

		appreciated_tier = "Verdsatt nivå",
		respected_tier = "Respektert nivå",
		heroic_tier = "Heroisk nivå",
		legendary_tier = "Legendarisk Tier",
		godlike_tier = "Guddommelig Tier"
	},

	-- game/*
	admin_menu = {
		menu_title = "Admin-meny",
		spectate_player = "Spectate spiller",
		teleport_player = "Teleportere til spiller",
		teleport_player_here = "Teleportere spiller til deg",
		failed_teleport_to_player = "Klarte ikke å teleportere til spiller.",
		failed_teleport_player_here = "Klarte ikke å teleportere spiller til deg.",
		invalid_target_server_id = "Ugyldig mål server-id.",
		invalid_destination_server_id = "Ugyldig destinasjon server-id.",
		invalid_source_server_id = "Ugyldig kilde server-id.",
		failed_teleport_player_to_player = "Klarte ikke å teleportere spiller til spiller.",
		teleported_player_to_player = "Teleporterte spiller til spiller.",

		teleport_player_missing_permissions = "Spiller forsøkte å teleportere en annen spiller, men hadde ikke de nødvendige tillatelsene til å gjøre det."
	},

	afk = {
		you_are_afk = "Du er AFK. Din karakter vil snart bli avlastet.",
		move_mouse = "Beveg musen din for å slutte å være AFK.",
		you_have_been_unloaded_for_being_afk = "Du har vært AFK lenge nok, vurder å gå til karaktervalget neste gang."
	},

	airdrops = {
		create_airdrop_missing_permissions = "Spiller prøvde å opprette en forsyningspakke, men hadde ikke tillatelsen som kreves for å gjøre det.",
		created_airdrop = "Opprettet en forsyningspakke av type `${airdropType}` med totalt ${itemAmount} gjenstand(er)."
	},

	airports = {
		airport = "Flyplass",
		press_to_access_spawner = "Trykk ~INPUT_CONTEXT~ for å åpne kjøretøyspawneren.",
		no_spawner_licenses = "Du har ikke noen lisenser for denne kjøretøyspawneren.",
		vehicle_lists = "Kjøretøyliste",
		parked_vehicle = "Parkert kjøretøy.",
		press_to_park_vehicle = "Trykk ~INPUT_CONTEXT~ for å parkere kjøretøyet.",
		no_vehicle_to_park = "Det er ingen kjøretøy å parkere.",
		park_vehicle = "Parkér kjøretøy",
		park_vehicle_outside = "Parkér kjøretøy ute",
		close_menu = "Lukk meny",
		spawned_vehicle = "Kjøretøyet har blitt spawnet.",
		spawner_on_timeout = "Kjøretøyspawneren er på timeout. Vennligst prøv igjen.",
		spawn_area_not_clear = "Det er ikke klart i spawnområdet.",
		return_button = "Tilbake",
		deposit = "$${amount} Depositum",
		no_deposit = "Ingen depositum",
		deposit_not_enough_money = "Du har ikke nok penger til å betale depositumet."
	},

	airstrike = {
		create_airstrike_missing_permissions = "Spiller forsøkte å opprette et luftangrep, men hadde ikke nødvendige tillatelser for å gjøre det.",

		airstrike_success = "Luftangrep opprettet vellykket.",
		airstrike_failed = "Kunne ikke opprette luftangrep."
	},

	airsupport = {
		create_airsupport_missing_permissions = "Spilleren prøvde å kalle inn luftstøtte, men hadde ikke tilgang til å gjøre det.",

		distance = "Avstand: ${distance}${unit}",
		time_to_impact = "Tid til anslag: ${timeToImpact}",

		out_of_range = "~r~UU",

		km = "km",
		mi = "mi",

		airsupport_failed = "Kunne ikke kalle inn luftstøtte."
	},

	alcohol = {
		now_sober = "Du er nå edru igjen.",
		drunk_state_1 = "Du er litt beruset.",
		drunk_state_2 = "Du er full.",
		drunk_state_3 = "Du er veldig full.",
		drunk_state_4 = "Du er farlig full."
	},

	alerts = {
		close = "Lukk",

		alert_title = "Varsel",

		invalid_server_id = "Ugyldig server-id.",
		missing_content = "Manglende innhold.",

		show_alert_success = "Varselen ble vist til spilleren.",
		show_alert_everyone_success = "Varselen ble vist til alle.",
		show_alert_failed = "Klarte ikke å vise varsel til spilleren.",

		show_alert_missing_permissions = "Spilleren prøvde å vise et varsel til en annen spiller, men hadde ikke nødvendige tillatelser for å gjøre det."
	},

	arcade = {
		use_arcade_machine = "Trykk på ~INPUT_CONTEXT~ for å bruke arkadespillet. Prisen er $${cost}.",
		finished_arcade_logs_title = "Fullført arkadespill",
		finished_arcade_logs_details = "${consoleName} fullførte et arkadespill med en poengsum på `${score}`."
	},

	archives = {
		press_to_access_archives = "Trykk ~INPUT_CONTEXT~ for å få tilgang til arkivene.",
		archives_title = "Arkiver",
		no_archives = "Det er ingen arkiver her.",
		close_menu = "Lukk meny",
		archive_label = "Sak nr. ${case}",

		failed_get_archives = "Kunne ikke hente arkiver.",
		failed_not_on_duty = "Du er ikke på vakt.",

		archive_created = "Arkiv opprettet med sak nr. ${case}.",
		invalid_case_number = "Ugyldig saksnummer (hel tall mellom 1 og 99999).",
		not_near_archive = "Du er ikke i nærheten av et arkiv.",
		failed_create_archive = "Kunne ikke opprette arkiv.",
		archive_already_exists = "Saksnummeret finnes allerede i dette arkivet.",
		archive_destroyed = "Arkiv med saksnummer ${case} er ødelagt.",
		archive_maximum_case_count = "Du kan ikke opprette flere saker.",
		failed_destroy_archive = "Kunne ikke ødelegge arkiv.",
		destroy_not_empty = "Du kan bare ødelegge tomme arkiver.",

		create_archive_logs_title = "Opprettet arkiv",
		create_archive_logs_details = "${consoleName} opprettet en sak i arkivet `${archiveName}` med saknummer `${caseNumber}`.",
		destroy_archive_logs_title = "Ødela arkiv",
		destroy_archive_logs_details = "${consoleName} ødela en sak i arkivet `${archiveName}` med saknummer `${caseNumber}`."
	},

	arena = {
		player_died = "${name} døde.",
		player_killed = "${killerName} drepte ${name} med ${deathCause} (${distance}m).",
		hud_info = "Antall spillere: ${playerAmount}\n\nDødsfall: ${deaths}\nDrepte: ${kills}",
		press_to_access_menu = "Trykk på ~INPUT_INTERACTION_MENU~ for å åpne Arena-menyen.",
		this_command_is_only_for_arena = "Denne kommandoen er kun for Arena.",
		stand_still_to_respawn = "Stå stille i 5 sekunder for å respawne.",
		respawn_cancelled = "Respawnen er avbrutt fordi du beveget deg.",
		arena_suicide_reason = "Selvmord",
		arena = "Arena",
		ordered_airdrop = "Bestilte luftforsyninger",

		store = "Butikk",
		team = "Lag",
		leaderboard = "Toppliste",
		search = "Søk",
		add_to_cart = "Legg til i handlekurv",
		unlocks_at_level = "Låses opp ved nivå ${level}",
		show_vehicles = "Vis kjøretøy",
		hide_vehicles = "Skjul kjøretøy",
		balance = "Balansen din: $${balance}",
		shopping_cart = "${items} elementer ($${cost})",
		buy_now = "Kjøp nå",
		call_airdrop = "Kall flyplassuttak",
		empty = "Tom",
		clear_cart = "Tøm handlekurv",
		can_not_afford = "Kan ikke betale",
		brokie_lol = "For fattig lol",
		confirmation_exit_arena = "Er du sikker på at du vil avslutte Arenaen?",
		confirmation_buy_now = "Er du sikker på at du vil kjøpe ${label} for $${cost}?",
		yes = "Ja",
		no = "Nei",
		empty_slot = "Tom Plass",
		team_name = "Lagnavn",
		level = "Nivå",
		arena = "Arena",
		battle_royale = "Kamp Royale",
		arena_gun_game = "Arena Pistolspill",
		lottery = "Lotto",
		daily_tasks = "Daglige Oppgaver",
		categories = "Kategorier",
		refresh = "Oppdater",
		refreshing = "Oppdaterer...",
		not_available = "Ikke tilgjengelig",

		kill = "Drept",
		headshot = "Hodeskudd",
		killstreak = "Drept på rad",
		assist = "Assist",

		level = "Nivå",
		position = "Posisjon",
		name = "Navn",
		kills = "Drept",
		deaths = "Dødsfall",
		kd = "D/K",
		hits = "Treff",
		hits_headshots = "HS",
		headshot_ratio = "HS-forhold",
		damage_dealt = "Skadet utdelt",
		damage_taken = "Skade tatt",
		matches_played = "Kamper",
		wins = "Seire",
		win_ratio = "Seierforhold",
		xp = "Erfaringspoeng",
		money_won = "Penger vunnet",
		average_percentage = "Gjennomsnittlig prosentandel",
		streak = "Streak"
	},

	atms = {
		withdraw = "Ta ut penger",
		deposit = "Sett inn penger",
		balance = "Balansen",
		transfer = "Overfør",
		back = "Tilbake",

		amount = "Beløp",
		target = "Mål",

		failed_deposit = "Kunne ikke sette inn penger",
		failed_withdraw = "Kunne ikke ta ut penger",
		failed_transfer = "Kunne ikke overføre penger",

		processing = "Behandler...",
		counting_bills = "Teller sedler...",

		something_went_wrong = "Noe gikk galt.",
		error_not_online = "Din valgte person er utilgjengelig.",
		error_not_enough_money = "Ikke nok penger.",
		deposit_amount_big = "ATM-innskudd er begrenset til $4,000.",
		withdraw_amount_big = "ATM-uttak er begrenset til $6,000.",

		retrieving_card = "Henter kort",
		atm_damaged = "Denne ATM-en er skadet",

		press_to_use = "Trykk ~g~${InteractionKey} ~w~for å bruke ATM-en.",
		press_to_interact_bank = "Trykk ~g~${InteractionKey} ~w~for å samhandle med banken.",

		deposit_log_bank_title = "Innskudd til bank",
		deposit_log_atm_title = "Innskudd på minibank",
		deposit_log = "${consoleName} satte inn $${amount}.",

		withdraw_log_bank_title = "Uttak fra bank",
		withdraw_log_atm_title = "Uttak på minibank",
		withdraw_log = "${consoleName} tok ut $${amount}.",

		transfer_log_title = "Bankoverføring",
		transfer_log = "${consoleName} (#${characterId}) overførte $${amount} til ${targetConsoleName} (#${targetCharacterId})."
	},

	attachments = {
		cancel_attachments = "Avbryt",
		finish_attachments = "Legg til",

		modifying_attachments = "Endrer ${amount} vedlegg",

		failed_apply = "Kunne ikke legge til vedlegg.",
		no_item = "Våpenet er ikke lenger i inventaret ditt.",
		no_attachment = "Du har ikke det nødvendige vedlegget.",
		no_paint = "Du har ingen maling.",
		success = "Vedleggene ble lagt til.",

		not_available = "Du har ikke dette vedlegget i inventaret ditt.",

		attachment_label_suppressor = "Demper",
		attachment_label_flashlight = "Lommelykt",
		attachment_label_extended_clip = "Utvidet magasin",
		attachment_label_extended_pistol_clip = "Utvidet pistolmagasin",
		attachment_label_extended_smg_clip = "Utvidet SMG Magasin",
		attachment_label_extended_shotgun_clip = "Utvidet Hagle Magasin",
		attachment_label_luxury = "Luksus Finish",
		attachment_label_incendiary = "Brannrundene",
		attachment_label_tracer = "Sporskytterunde",
		attachment_label_hollow_point = "Hulspissrundene",
		attachment_label_scope = "Sikte",
		attachment_label_grip = "Støttehåndtak",
		attachment_label_drum = "Trommelmagasin",
		attachment_label_heavy_barrel = "Tungt løp",
		attachment_label_armor_piercing = "Panserbrytende Runder",
		attachment_label_explosive = "Eksplosive Runder",
		attachment_label_sight = "Holografisk Sikte",
		attachment_label_pistol_sight = "Pistolsikte",
		attachment_label_fmj = "Helskjermende Runder",
		attachment_label_scope_nv = "Nattsynssikte",
		attachment_label_scope_thermal = "Termisk Sikte",

		attachment_label_luxury1 = "Pimp-en",
		attachment_label_luxury2 = "Ballas-en",
		attachment_label_luxury3 = "Hustler-en",
		attachment_label_luxury4 = "Rock-en",
		attachment_label_luxury5 = "Hater-en",
		attachment_label_luxury6 = "Lover-en",
		attachment_label_luxury7 = "Player-en",
		attachment_label_luxury8 = "Kongen",
		attachment_label_luxury9 = "Vagos-en",

		attachment_label_luxury_knife_1 = "VIP Variant-en",
		attachment_label_luxury_knife_2 = "Livvakt-variant",

		attachment_label_stock_folded = "Brettet Kolbe",
		attachment_label_stock_unfolded = "Utstrakt Kolbe",

		attachment_label_skin_patriotic = "Patriotisk Skinn",
		attachment_label_skin_brushstroke = "Penselstrøk Skinn",
		attachment_label_skin_skull = "Hodeskalle Skinn",
		attachment_label_skin_leopard = "Leopardmønster",
		attachment_label_skin_zebra = "Zebrafarge",
		attachment_label_skin_geometric = "Geometrisk mønster",

		label_no_skin = "Ingen dekorasjon",

		no_tint = "Ingen fargetone",

		tint_normal_0 = "Svart",
		tint_normal_1 = "Grønn",
		tint_normal_2 = "Gull",
		tint_normal_3 = "Rosa",
		tint_normal_4 = "Hærgrønn",
		tint_normal_5 = "LSPD",
		tint_normal_6 = "Oransje",
		tint_normal_7 = "Platina",

		tint_mk2_0 = "Klassisk svart",
		tint_mk2_1 = "Klassisk grå",
		tint_mk2_2 = "Klassisk tvefarget",
		tint_mk2_3 = "Klassisk hvit",
		tint_mk2_4 = "Klassisk beige",
		tint_mk2_5 = "Klassisk grønn",
		tint_mk2_6 = "Klassisk blå",
		tint_mk2_7 = "Klassisk jordtoner",
		tint_mk2_8 = "Klassisk brun og svart",
		tint_mk2_9 = "Rød Kontrast",
		tint_mk2_10 = "Blå Kontrast",
		tint_mk2_11 = "Gul Kontrast",
		tint_mk2_12 = "Oransje Kontrast",
		tint_mk2_13 = "Kraftig Rosa",
		tint_mk2_14 = "Kraftig Lilla og Gul",
		tint_mk2_15 = "Kraftig Oransje",
		tint_mk2_16 = "Kraftig Grønn og Lilla",
		tint_mk2_17 = "Kraftig Røde Egenskaper",
		tint_mk2_18 = "Kraftig Grønne Egenskaper",
		tint_mk2_19 = "Kraftig Cyan Egenskaper",
		tint_mk2_20 = "Kraftig Gule Egenskaper",
		tint_mk2_21 = "Kraftig Rød og Hvit",
		tint_mk2_22 = "Kraftig Blå og Hvit",
		tint_mk2_23 = "Metallisk Gull",
		tint_mk2_24 = "Metallisk Platina",
		tint_mk2_25 = "Metallisk grå og lilla",
		tint_mk2_26 = "Metallisk lilla og lime",
		tint_mk2_27 = "Metallisk rød",
		tint_mk2_28 = "Metallisk grønn",
		tint_mk2_29 = "Metallisk blå",
		tint_mk2_30 = "Metallisk hvit og aqua",
		tint_mk2_31 = "Metallisk rød og gul",

		tint_ray_0 = "Romranger",
		tint_ray_1 = "Lilla",
		tint_ray_2 = "Grønn",
		tint_ray_3 = "Oransje",
		tint_ray_4 = "Rosa",
		tint_ray_5 = "Gull",
		tint_ray_6 = "Platin",

		last_concat = "og",

		attachments_logs_title = "Tilbehør og fargetoner",
		attachments_logs_details = "${consoleName} endret sitt `${weaponName}`: ${modifications}.",

		removed_attachments = "Fjernet ${removed}",
		added_attachments = "La til ${added}",
		tint_changed = "Byttet fargetone fra `${fromTint}` til `${toTint}`"
	},

	audio = {
		audio_id = "Lyd ${audioId}",
		illegal_sound_effect = "Forsøkte å sende instruksjoner til andre klienter for å spille av et eksternt lydeffekt.",
		url_invalid = "Den oppgitte URL-en er ikke gyldig. Den må lastes opp på en sikker tilkobling. (https://)",
		url_missing = "Vennligst legg til URL-en for lyden du prøver å spille av.",
		play_audio_no_permissions = "Spiller forsøkte å spille av en lyd, men hadde ikke de nødvendige tillatelsene til å gjøre det.",
		played_audio_for_self = "Spilte av lyd for deg selv.",
		played_audio_for_player = "Spilte av lyd for ${consoleName}.",
		played_audio_for_everyone = "Spilte av lyd for alle.",
		played_audio_effect_for_everyone_title = "Spilte av Lydeffekt For Alle",
		played_audio_effect_for_everyone_details = "${consoleName} spilte av en lydeffekt for alle. Lydeffekten hadde URL `${url}` og var satt til å spille med volum `${volume}`.",
		played_audio_effect_for_player_title = "Spilte av Lydeffekt For Spiller",
		played_audio_effect_for_player_details = "${consoleName} spilte av en lydeffekt for ${targetConsoleName}. Lydeffekten hadde URL `${url}` og var satt til å spille med volum `${volume}`."
	},

	balls = {
		press_to_pick_up_ball = "Trykk ~INPUT_CONTEXT~ for å plukke opp ballen."
	},

	banana_peels = {
		slipped_logs_title = "Sklidd på bananskall",
		slipped_logs_details = "${consoleName} skled på et bananskall mens de ${slipForce}.",

		slip_0 = "gå",
		slip_1 = "løpe",
		slip_2 = "sprinte"
	},

	bandaids = {
		label = "${type} Plaster",

		baby_yoda = "Baby-Yoda",
		batman = "Batman",
		care_bear = "Care-Bears",
		hello_kitty = "Hello-Kitty",
		hotwheels = "Hot-Wheels",
		mc_queen = "Lightning-McQueen",
		minions = "Minions",
		pony = "My-Little-Pony",
		power_puff = "Power-Puff",
		spiderman = "Spiderman",
		star_wars = "Star-Wars",

		failed_random_bandaid = "Klarte ikke å få et tilfeldig plaster.",

		received_bandaid_logs_title = "Mottatt Bandasje",
		received_bandaid_logs_details = "${consoleName} mottok 1x ${bandaid} etter å ha blitt luftløftet.",
		spawned_bandaid_logs_details = "${consoleName} ga seg selv 1x ${bandaid}."
	},

	battle_royale = {
		failed_to_toggle_battle_royale = "Kunne ikke slå på Battle Royale.",
		toggled_battle_royale_on = "Slått på Battle Royale.",
		toggled_battle_royale_off = "Slått av Battle Royale.",
		battle_royale_info = "Du er satt i kø for Battle Royale!\nDet er for øyeblikket ${battleRoyaleQueueLength} spillere i køen.",
		toggle_battle_royale_missing_permissions = "Spilleren prøvde å slå på Battle Royale, men hadde ikke nødvendige tillatelser for å gjøre det.",
		start_battle_royale_missing_permissions = "Spilleren forsøkte å starte en Battle Royale men hadde ikke nødvendige tillatelser.",
		unable_to_start_battle_royale_not_active = "Kan ikke starte Battle Royale da Battle Royale ikke er aktivert.",
		not_enough_players_in_queue = "Kan ikke starte Battle Royale da det ikke er nok spillere i køen.",
		zone_idling = "Zonen er nå i idle-modus.",
		zone_advancing = "Zonen beveger seg nå videre.",
		player_died = "${name} har dødd: ${remainingPlayers} gjenstår.",
		player_killed = "${name} ble drept av ${killerName} av grunn ${deathCause} fra en avstand på ${distance}m: ${remainingPlayers} igjen.",
		player_won = "${name} har vunnet!",
		your_team = "Ditt lag:",
		received_lobby_invite = "Du har mottatt en lobby-invitasjon fra ${serverId}. Skriv `/br_join ${serverId}` for å bli med!",
		unable_to_invite_yourself = "Du kan ikke invitere deg selv.",
		unable_to_join_yourself = "Du kan ikke bli med deg selv.",
		player_already_invited = "Spilleren med ID `${serverId}` er allerede invitert.",
		sent_player_invite = "Sendte invitasjon til spiller med ID `${serverId}`",
		joined_lobby = "Du har blitt med i lobbyen.",
		player_not_invited = "Du har ikke blitt invitert til denne lobbyen.",
		you_are_not_in_a_lobby = "Du er ikke i en lobby.",
		left_lobby = "Du har forlatt lobbyen.",
		created_match = "Opprettet en kamp med ${playerAmount} spillere.",
		created_match_no_vehicles = "Opprettet en kamp uten kjøretøy med ${playerAmount} spillere.",
		zone_complete = "Sonen er fullført.",
		battle_royale_match_info = "Nåværende sone: ${zoneId}/${zoneAmount}\nGjenstående tid: ${remainingTime}s\nFor øyeblikket: ${currentlyLabel}\nGjenstående spillere: ${remainingPlayers}\nDrepte: ${kills}",
		idling = "Venting",
		advancing = "Beveger seg fremover",
		battle_royale = "Slagkamp Royale",
		press_to_deploy_parachute = "Trykk ~INPUT_PARACHUTE_DEPLOY~ for å utløse fallskjerm.",
		join_battle_royale_instance_missing_permissions = "Spilleren prøvde å bli med i en Battle Royale-instans, men hadde ikke tillatelsene som kreves for å gjøre det.",
		no_match_found = "${consoleName} er ikke i noen kamp.",
		joined_instance = "Sluttet seg til ${consoleName}s instans.",
		leave_battle_royale_instance_missing_permissions = "Spilleren forsøkte å forlate en Battle Royale-instans, men hadde ikke de nødvendige tillatelsene for å gjøre det.",
		left_instance = "Forlot område.",
		failed_to_leave_instance = "Kunne ikke forlate området da du ikke var i et.",
		already_in_match = "Kunne ikke delta i området da du allerede er i en kamp.",
		lobby_is_full = "Lobbyen du forsøkte å delta i er full.",
		zone_center = "Sone Senter",
		team_marker = "Lagmarkør",
		trophy_information_top = "${name} er den beste!",
		trophy_information_bottom = "Det var totalt ${playerAmount} spillere i kampen og du drepte ${kills} av dem.",
		not_able_to_join_while_in_match = "Du kan ikke delta i en lobby mens du er i en kamp."
	},

	bazaar = {
		access_bazaar = "Trykk ~INPUT_CONTEXT~ for å få tilgang til denne butikken.",

		bazaar_blip = "Bazaar",

		no_items = "Du har ingenting å selge her.",
		price_about = "omtrent $${price}",

		sold_logs_title = "Bazaarsalg",
		sold_logs_details = "${consoleName} solgte ${amount}x `${itemName}` for $${price}.",

		sold_items = "Du solgte ${amount}x ${label} for $${money}.",
		failed_sell_items = "Kunne ikke selge gjenstandene.",

		junk_collector = "Søppelsamler",
		tool_collector = "Verktøysamler",
		waste_collector = "Avfallssamler",
		ammo_collector = "Ammunisjonssamler",

		close_menu = "Lukk meny"
	},

	beds = {
		no_nearby_available_bed_found = "Finner ingen tilgjengelige senger i nærheten.",
		press_to_leave_bed = "Trykk ~INPUT_CONTEXT~ for å forlate senga."
	},

	blackjack = {
		play_blackjack = "Trykk ~INPUT_CONTEXT~ for å spille Blackjack.",
		play_blackjack_high_limit = "Trykk ~INPUT_CONTEXT~ for å spille Blackjack med høy grense."
	},

	blindfold = {
		blindfolding_player = "Setter papirpose på spilleren",
		blindfolding_self = "Setter på papirpose",
		hold_to_take_blindfold_off = "Hold ~INPUT_VEH_HEADLIGHT~ for å fjerne papirposen.",
		hold_to_take_blindfold_off_holding = "Fortsett å holde for å fjerne papirposen."
	},

	blips = {
		comedy_club = "Standup klubben",
		bean_machine = "Bønne Maskinen",
		arcade_bar = "Arkade Bar",
		japanese_restaurant = "Japansk Restaurant",
		luxury_autos = "Luksus Autos",
		rockford_records = "Rockford Plateselskap",
		dispensary = "Apotek",
		haunted_high_school = "Hjemsøkt Videregående Skole",
		sushi_restaurant = "Sushi Restaurant",

		bank = "Bank",
		hospital = "Sykehus",
		bolingbroke = "Bolingbroke Fengsel",
		police_department = "Politistasjonen",
		motel = "Motell",
		tattoo_parlor = "Tattoo Studio",
		repair_shop = "Reparasjons Verksted",
		material_vendor = "Materiellforhandler",
		pdm = "Premium Deluxe Motorsport",
		ls_customs = "Los Santos Customs",
		jewelry_store = "Vangelico Jewelry",
		pd_air_hq = "Politiets Luft HQ",
		pd_sea_hq = "Politiets Sjø HQ",
		ems_air_hq = "Ambulansefly HQ",
		ems_boat_hq = "Ambulansebåt HQ",
		ems_garage = "Ambulansegarasje"
	},

	blockage = {
		restricted_area = "Dette er et begrenset område. Vennligst returner!"
	},

	bombs = {
		not_in_plane = "Du er ikke i et fly.",
		not_in_plane_anymore = "Du er ikke lenger i et fly.",
		interaction_menu = "~INPUT_CONTEXT~ Slipp ${name}-bombe, ~INPUT_VEH_HEADLIGHT~ Bytt type.",
		too_low = "Du er for lav til å slippe bomber.",

		you_are_not_in_a_vehicle = "Du kjører ikke et kjøretøy for øyeblikket.",
		ignition_bomb_on = "Aktiverte tenningbomben.",
		ignition_bomb_off = "Deaktiverte tenningbomben.",
		failed_ignition_bomb = "Klarte ikke å aktivere/deaktivere tenningbomben.",

		recharging_countermeasures = "Lader opp mottiltak ${percentage}%",

		ignition_bomb_triggered_logs_title = "Tenningbomben",
		ignition_bomb_triggered_logs_details = "${consoleName} slo på motoren i et kjøretøy som hadde en bombe festet til sin tenning.",

		toggle_ignition_bomb_missing_permissions = "Spilleren prøvde å aktivere en tenningbombe men de hadde ikke de nødvendige tillatelsene."
	},

	boomboxes = {
		boombox = "Boombox",
		play = "Spill",
		pause = "Pause",
		skip_song = "Hopp over sang",
		volume = "Volum",
		music = "Musikk",

		store_boombox = "Lagre Boombox i inventaret ditt",
		put_boombox_down = "Sett ned Boombox på bakken",
		use_boombox = "Bruk Boombox",
		hold_to_pick_boombox_up = "Hold for å plukke opp Boombox",
		illegal_boombox_item_id = "Prøver å bruke en Boombox-gjenstand med en ugyldig gjenstand-id.",
		logs_attempted_to_add_song_title = "Forsøkte å legge til sang",
		logs_attempted_to_add_song_details = "${consoleName} forsøkte å legge til en sang med video-URL `${url}` til boombox med ID `${boomboxId}`.",
		wipe_boomboxes_not_staff = "Spilleren forsøkte å slette boomboxes, men hadde ikke tillatelse til å gjøre det.",
		logs_wiped_all_boomboxes_title = "Slettet alle boomboxes",
		logs_wiped_all_boomboxes_details = "${consoleName} slettet alle boomboxes.",
		logs_wiped_nearby_boomboxes_title = "Slettet nærliggende boomboxes",
		logs_wiped_nearby_boomboxes_details = "${consoleName} slettet alle boomboxes innenfor en radius av `${radius}`.",
		radius_invalid = "Et radius på `${radius}` er ikke en gyldig verdi.",
		wiped_all_boomboxes = "Slettet ${boomboxesWiped} høyttalere.",
		wiped_nearby_boomboxes = "Slettet ${boomboxesWiped} høyttalere innen radiusen `${radius}`.",
		failed_to_wipe_boomboxes = "Kunne ikke slette høyttalere.",
		no_boomboxes = "Det var ingen høyttalere å slette.",
		no_boomboxes_within_radius = "Det var ingen høyttalere å slette innenfor en radius på `${radius}`."
	},

	boosting = {
		boosting_contracts = "Oppgraderer Kontrakter",
		join_queue = "Bli med i Køen",
		leave_queue = "Forlat Køen",

		transfer_crypt = "Overfør CRYPT",
		transfer_crypt_info = "Skriv inn beløpet og server-IDen til spilleren du vil overføre til.",

		amount = "Beløp",
		server_id = "Server-ID",

		transfer = "Overfør",
		cancel = "Avbryt",

		start_contract = "Start kontrakt",
		start_contract_info = "Er du sikker på at du vil starte denne kontrakten?",

		yes = "Ja",
		no = "Nei",

		transfer_contract = "Overfør kontrakt",
		transfer_contract_info = "Skriv inn server-IDen til personen du vil overføre kontrakten til.",

		decline_contract = "Avslå kontrakt",
		decline_contract_info = "Er du sikker på at du vil avslå dette kontrakten?",

		cancel_contract = "Avbryt kontrakt",
		cancel_contract_info = "Er du sikker på at du vil avbryte denne kontrakten?",

		no_contracts = "Du har ingen kontrakter tilgjengelig. Bli med i køen for å få noen.",

		model = "Modell",
		plate = "Skilt",
		buy_in = "Innkjøp",
		expires_in = "Utløper om",

		start_contract_type = "Hva vil du gjøre?",
		start_contract_type_info = "Vil du gjøre en levering eller skrape VIN-nummeret? Skraping av VIN koster ekstra ${cost} CRYPT.",

		drop_off = "Levering",
		vin_scratch = "VIN-merke",

		start_contract = "Start kontrakt",
		transfer_contract = "Overfør kontrakt",
		decline_contract = "Avslå kontrakt",
		mark_pickup = "Merk opphenting",
		cancel_contract = "Avbryt kontrakt",

		new_contract = "Du har en ny boosting-kontrakt. (Klasse: ${className})",
		started_contract = "Startet kontrakt.",
		failed_contract = "Mislykket kontrakt.",
		completed_contract = "Fullførte kontrakten. Du mottok ${payout} CRYPT.",
		completed_contract_vin_scratch = "Fullførte kontrakten. Kjøretøyet kan nå finnes i garasjen din.",
		marked_pickup = "Merket oppsamling.",

		vehicle_tracker_is_being_hacked = "Kjøretøysporeren blir hacket. Det er ${hacksRemaining} hacket(e) igjen.",
		use_chip_to_hack_vehicle_tracker = "Bruk en brikke for å hacke kjøretøysporeren. Det er ${hacksRemaining} hacket(e) igjen.",
		vehicle_hacking_is_timed_out = "Du må vente litt før du hacker igjen. Det er ${hacksRemaining} hacket(e) igjen.",
		drop_the_vehicle_off = "Lever kjøretøyet på den merkede plasseringen.",
		drop_off = "Levering",
		exit_the_vehicle = "Forlat kjøretøyet og forlat området for å fullføre oppdraget.",

		vehicle_is_being_tampered = "Et kjøretøy i nærheten av ${locationLabel} blir forsøkt manipulert med. Modellen er ${modelLabel} (klasse ${className}) og nummerplaten er ${plate}.",
		vehicle_tamper = "Kjøretøysmanipulasjon (${plate})",
		vehicle_tracker_alert = "Varsling av kjøretøyssporing (${plate})",

		exit_the_vehicle_to_scratch = "Gå ut av kjøretøyet for å lage en VIN-merke i lakken.",

		scratch = "VIN-merke i lakken",
		press_to_scratch = "Trykk ~g~E ~w~for å lage en VIN-merke i lakken.",

		scratching_vehicle = "Lager VIN-merke i lakken",

		deleted_boosted_vehicle_logs_title = "Slettet logger for stjålne kjøretøy",
		deleted_boosted_vehicle_logs_details = "${consoleName} slettet boostet kjøretøy med ID ${vehicleId}.",

		spawned_contract = "Kontrakt ble opprettet.",
		spawned_contract_for = "Kontrakt ble opprettet for ${displayName}.",

		spawn_contract_no_permissions = "Spilleren forsøkte å opprette en boost-kontrakt uten riktig tillatelse.",

		already_max_vin_scratched_vehicles = "Du har allerede maksimalt antall VIN-skadete kjøretøy i garasjen din.",
		contract_has_expired = "Denne kontrakten har utløpt.",
		you_already_have_a_contract_started = "Du har allerede en pågående kontrakt."
	},

	brochure = {
		welcome_to = "Velkommen til",
		san_andreas = "San Andreas",

		getting_started = "Komme i gang",
		getting_started_1 = "Du har nettopp ankommet flyplassen og lurer sikkert på hvor du skal gå herfra? Alle nye borgere får en gratis startbil. Det kan hende det ikke er den beste, men den er din å beholde. Du finner den på parkeringsplassen.",
		getting_started_2 = "Hvis du ikke har lyst til å kjøre kan du også gå, få en venn til å plukke deg opp eller ringe en taxi ved å bruke telefonen din. Du kan få tilgang til telefonen din ved å flekse muskelen din \"P\".",
		getting_started_3 = "De fleste kjøretøyene har bagasjerom som du ikke bare kan putte gjenstander i, men også andre mennesker. Du kan /carry noen, gå til et bagasjerom, åpne det (/door) og legge dem inn. På samme måte kan du også få dem ut. Hvis du har veltet kjøretøyet ditt, kan du /flippe det tilbake på hjulene.",

		where_now = "Hvor er du nå?",
		where_now_1 = "Nå som du har skaffet ditt første kjøretøy, kan du begynne å utforske byen. Siden du trenger å holde deg næret og hydrert, er en matbutikk et godt sted å starte. Der kan du kjøpe mat og drikke. Samt bandasjer, som vil hjelpe deg med å komme deg etter skader.",
		where_now_2 = "Når du har fylt opp forsyningene dine, bør du dra til rettsbygningen og hente en borgerkort. Dette vil fungere som din ID, førerkort og våpenlisens.",

		getting_a_job = "Få jobb",
		getting_a_job_1 = "Hvordan tjener du penger? Du kan begynne ved å se etter jobber. Du kan finne jobbannonser på Life Invader. Du finner dens røde koffertikon på kartet. Her kan du finne et utvalg jobber som du kan søke på.",
		getting_a_job_2 = "Lastebiljobben krever at du leverer varer til ulike steder. Du må først kjøpe en lastebil fra lastebil hovedkvarteret for $2,000.",
		getting_a_job_3 = "Når du melder deg på leveringsjobben, kan du hente en levering fylt med pakker på leveringshovedkvarteret. Du må deretter levere pakkene til ulike steder i byen. Du kan åpne bakdøren på leveringsvognen ved å gå bort til den og åpne /door.",
		getting_a_job_4 = "Du kan også bli søppelkollector. På søppelkollector hq kan du hente en søppelbil og begynne å samle søppel.",
		getting_a_job_5 = "Når du har meldt deg på en av jobbene, vil du kunne se ulike markører på kartet ditt. Et veipunkt viser deg hvor du skal gå for å komme i gang.",

		your_appearance = "Utseendet ditt",
		your_appearance_1 = "Klær som bukser, sko, skjorter og mer kan endres på alle klesbutikker, gratis. Hårsveis, ansiktshår og sminke kan endres hos frisører. Du finner både klesbutikkene og frisørene på kartet.",
		your_appearance_2 = "Når du har fløyet inn for første gang, kan du ikke lenger endre generell utseende, som hudfarge, ansiktsegenskaper, osv. Hvis du rotet til utseendet ditt eller ble ferdig for raskt, kan du skrive /rapporter og be om en ny hud.",

		medical_care = "Medisinsk behandling",
		medical_care_1 = "Hvis du blir skadet, kan du dra til sykehuset for å sjekke inn og få behandling. Du finner sykehuset på kartet. Du kan også bruke bandasjer eller førstehjelpssett for å helbrede deg selv.",
		medical_care_2 = "Hvis du respawn uten å bli brakt til sykehuset, eller du forlater spillet mens du er nede, kan du miste noen av dine eiendeler. En serverstart teller som å forlate spillet.",

		safety_hint = "Hint: Du kan ta av sikringen på våpenet ditt ved å trykke på ALT og midt-museknappen. Vær trygg!",

		closing_sentence = "Det er mye mer å gjøre i byen! Spør rundt og få noen venner ;)"
	},

	cache = {
		download_progress = "Nedlastningsprogresjon:\n- Kjøretøy: ${vehiclesDone}/${vehiclesTotal}\n- Objekter: ${objectsDone}/${objectsTotal}\n- Personer: ${pedsDone}/${pedsTotal}\n- Klær: ${clothingRequested}/${clothingTotal}",
		slow_download_enabled = "Treg nedlasting er aktivert.",
		slow_download_disabled = "Treg nedlasting er deaktivert."
	},

	capri_sun = {
		capri_sun_name = "Capri Sun (${smak})"
	},

	cargo = {
		start_cargo_no_permissions = "Spilleren prøvde å starte lasttyveri, men hadde ikke tillatelse til å gjøre det.",
		end_cargo_no_permissions = "Spilleren prøvde å avslutte lasttyveri, men hadde ikke tillatelse til å gjøre det.",
		cargo_already_active = "Lasten er allerede aktiv.",
		started_cargo = "Lastetyveri har begynt.",
		cargo_not_active = "Lastetyveri er ikke aktiv.",
		ended_cargo = "Lasten er avsluttet.",
		cargo_crate = "Lastekasse",
		use_chip_to_hack_crate = "Bruk ~g~Chip ~w~ for å hacke kassen.",
		crate_is_being_hacked = "Kassen blir hacket.",
		crate_will_unlock_in = "Kassen vil låse opp om ~g~${time}~w~.",
		press_k_to_access = "Trykk ~g~K ~w~for å få tilgang."
	},

	casino = {
		set_casino_screen_id_not_staff = "Spilleren prøvde å sette casino-skjerm-ID-en, men hadde ikke tillatelse til å gjøre det.",
		successfully_set_screen_label = "Skjemalabelen '${screenLabel}' ble satt vellykket.",
		successfully_queued_screen_label = "Skjermen med etikett `${screenLabel}` ble lagt til i køen.",
		failed_to_set_screen_label = "Klarte ikke å sette skjermen til skjermen med etikett `${screenLabel}`.",
		invalid_screen_label = "Skjermens etikett `${screenLabel}` er ugyldig.",
		missing_screen_label = "Mangler parameteren `skjermetikett`.",
		set_screen_label_already_set_to = "Skjermetiketten er allerede satt til `${screenLabel}`.",
		only_available_in_the_casino = "Du kan bare gjøre dette mens du er inne i kasinoet.",
		casino_blip = "Kasino"
	},

	cayo_perico = {
		approaching_out_of_bounds = "Du nærmer deg kartgrensene",
		out_of_bounds = "Du er utenfor kartgrensene"
	},

	cayo_perico_world = {
		keep_heading_in_direction_in = "Fortsett i retning ${direction} for å komme til Cayo Perico.\n(${distanceToTeleport}m til venstre)",
		keep_heading_in_direction_out = "Fortsett i retning ${direction} for å komme til Los Santos.\n(${distanceToTeleport}m til venstre)",

		south = "sør",
		south_east = "sørøst",
		east = "øst",
		north_east = "nordøst",
		north = "nord",
		north_west = "nordvest",
		west = "vest",

		not_the_driver = "Du må være sjåføren av kjøretøyet for å fly til Cayo Perico.",
		not_a_cayo_vehicle = "Du må være i en båt, et fly eller en helikopter for å komme til Cayo Perico.",
		entering_cayo_perico_logs_title = "Entrer Cayo Perico",
		entering_cayo_perico_logs_details = "${consoleName} entrer Cayo Perico.",
		exiting_cayo_perico_logs_title = "Forlater Cayo Perico",
		exiting_cayo_perico_logs_details = "${consoleName} forlater Cayo Perico.",
		entering_cayo_perico_with_passengers_logs_title = "Entrer Cayo Perico Med Passasjerer",
		entering_cayo_perico_with_passengers_logs_details = "${consoleName} går inn i Cayo Perico med ${passengersAmount} passasjerer.",
		exiting_cayo_perico_with_passengers_logs_title = "Forlater Cayo Perico med Passasjerer",
		exiting_cayo_perico_with_passengers_logs_details = "${consoleName} forlater Cayo Perico med ${passengersAmount} passasjerer."
	},

	christmas = {
		claimed_advent_calendar_hatch_title = "Krevd Adventskalenderluke",
		claimed_money = "${consoleName} krevde $${amount}.",
		claimed_item = "${consoleName} krevde `${itemLabel}`.",
		claimed_vehicle = "${consoleName} har tatt i bruk en spesiell julebil.",
		claimed_queue_priority = "${consoleName} har sikret seg en uke med prioritet i julekøen.",

		claimed_advent_calendar_bonus_title = "Fått bonus fra julekalenderen",
		claimed_advent_calendar_bonus_details = "${consoleName} har mottatt julekalenderens bonus, en bil med modellnavn `${modelName}`."
	},

	cinema = {
		failed_to_find_cinema_identifier = "Kunne ikke finne kinoens identifikator.",

		screen_model_size = "Størrelse: x: ${sizeX}, y: ${sizeY}",
		screen_model_offset = "Forskyvning: x: ${offsetX}, y: ${offsetY}, z: ${offsetZ}",
		screen_model_rotation = "Rotasjon: ${rotation}",
		screen_model_volume = "Volum: ${volumeRadius} (${volumeCutOffRadius})",
		screen_model_model = "Modell: ${modelName}",

		locked = "Låst",

		add_video_to_queue_title = "Legg til video i kø",
		add_video_to_queue_details = "${consoleName} la til en video i køen i et kino med video-nøkkelen `${videoType}:${videoId}`.",

		blacklisted_video = "Svartelistet video med nøkkel `${videoKey}`.",
		failed_to_blacklist_video = "Kunne ikke svarteliste video med nøkkel `${videoKey}`.",
		video_is_already_blacklisted = "Videoen med nøkkel `${videoKey}` er allerede svartelistet.",

		blacklist_video_missing_permissions = "Spilleren forsøkte å svarteliste en video, men har ikke de nødvendige tillatelsene.",

		watching_movie = "Ser på ${title}",

		cinema = "Kino",
		doppler_cinema = "Dopplerkino",
		sandy_cinema = "Sandkino",
		tv = "TV",
		monitor = "Skjerm",
		laptop = "Laptop",
		projector = "Projektor",

		zoom = "Flytt kameraet frem og tilbake",
		slow = "Sakte",
		toggle_lights = "Slå av/på lys",
		exit = "Avslutt",

		-- NOTE: UI locales
		title = "Tittel",
		length = "Lengde",
		date = "Dato",
		author = "Forfatter",
		queue = "Kø",
		search_through_library = "Søk gjennom biblioteket...",
		add_to_library = "Legg til video i biblioteket (URL)..."
	},

	cinematic = {
		cinematic = "Kinomodus",
		black_bars_set_to = "De svarte kinostripene er nå satt til ${blackBarsHeight}%."
	},

	claymores = {
		arm_claymore = "[${InteractionKey}] Plante",
		disarm_claymore = "[${InteractionKey}] Deaktivere",

		disarming = "Deaktivering",
		arming = "Plassering"
	},

	clothing = {
		outfit_failed = "Kunne ikke endre antrekk.",
		missing_outfit = "Mangler antrekk.",
		missing_outfit_name = "Mangler antrekk navn.",
		no_nearby_clothing_spot = "Ingen klesplass i nærheten.",
		trunk_closed = "Bagasjerommet er lukket.",
		trunk_too_far = "Du er for langt unna bagasjerommet.",
		moved_too_far_trunk = "Du har beveget deg for langt fra bagasjerommet.",
		invalid_job = "Du har ikke jobben som kreves for å bruke denne klesplassen.",
		outfit_list = "Antrekk",
		no_saved_outfits = "Du har ingen lagrede antrekk.",
		saved_outfit = "Antrekket `${name}` er lagret.",
		replaced_outfit = "Antrekket `${name}` er erstattet.",
		failed_save_outfit_exists = "Kunne ikke lagre, antrekk `${name}` eksisterer allerede.",
		failed_save_outfit = "Kunne ikke lagre antrekk.",
		deleted_outfit = "Slettet antrekk `${name}` vellykket.",
		failed_delete_outfit_doesnt_exists = "Kunne ikke slette antrekk, `${name}` eksisterer ikke.",
		failed_delete_outfit = "Kunne ikke slette antrekk.",

		invalid_server_id = "Ugyldig eller manglende server-id.",
		player_model_missmatch = "Du kan ikke dele antrekket ditt med denne spilleren.",
		player_too_far = "Spilleren er for langt unna.",
		shared_outfit_too_far = "${displayName} delte et antrekk med deg, men du er ikke i nærheten av et klesstativ.",
		outfit_shared = "Antrekket ble delt vellykket.",
		outfit_not_shared = "Kunne ikke dele antrekket.",
		shared_outfit = "${displayName} har delt et antrekk med deg. Skriv `ja` for å akseptere eller `nei` for å avslå. (Dette vil utløpe om 30 sekunder)",
		applied_shared_outfit = "Antrekket ble brukt etter deling.",
		declined_shared_outfit = "Du avslo delingen av antrekket.",

		no_nearby_dead_player = "Ingen nærliggende spiller er død.",
		failed_to_steal_shoes = "Kunne ikke stjele skoene.",

		loading_model = "Laster ped-modell...",
		loading_spawn = "Spawner spiller-ped...",
		loading_set_data = "Setter ped-data...",
		loading_tattoos = "Setter tatoveringer...",
		loading_finalize = "Fullfører..."
	},

	clothing_bag = {
		packed_outfit = "Outfit pakket inn i baggen.",
		packed_outfit_failed = "Klarte ikke å pakke inn outfit i baggen.",

		item_description_filled = "Har \"<i>${outfit}</i>\" pakket inn.",
		item_description_empty = "Har <b>ingen</b> outfit pakket inn.",

		bag_empty = "Denne klær-posen er tom.",
		wrong_ped_model = "Denne outfiten ser ikke ut til å passe deg.",
		cant_use_in_vehicle = "Du kan ikke bruke en klær-pose i et kjøretøy.",
		cant_use_while_moving = "Du kan ikke bruke en klespose mens du beveger deg.",

		opening_bag = "Åpner pose"
	},

	clothing_menu = {
		component = "Komponent",
		texture = "Tekstur",
		palette = "Palett",

		clothing = "Klær",
		accessories = "Tilbehør",
		face = "Ansikt",
		outfits = "Antrekk",

		reset_zoom = "Tilbakestill zoom",
		zoom_level = "Zoom-nivå",

		variation = "Variasjon",
		color = "Farge",
		secondary_color = "Sekundær farge",
		opacity = "Gjennomsiktighet",

		press_to_access = "Trykk ~INPUT_CONTEXT~ for å få tilgang til klesbutikken.",
		press_no_freemode = "Denne figuren kan ikke få tilgang til klesbutikken.",
		press_no_freemode_barber = "Denne modellen kan ikke bruke frisørsalongen.",
		press_to_access_barber = "Trykk ~INPUT_CONTEXT~ for å åpne frisørsalongen.",
		press_to_change_outfit = "Trykk ~INPUT_CONTEXT~ for å bytte antrekk.",

		clothingstore = "Klesbutikk",
		barbershop = "Frisørsalong",

		changing_area = "Område for antrekkbytte",

		switch_outfit = "Bytt til dette antrekket.",
		replace_outfit = "Erstatt dette antrekket.",
		new_outfit = "Lagre antrekk",
		no_saved_outfits = "Ingen lagrede antrekk.",

		save_outfit_title = "Lagre nytt antrekk",
		save_outfit_label = "Navn på antrekk:",
		save_outfit_button = "Lagre",

		replace_outfit_title = "Erstatte antrekk",
		replace_outfit_description = "Er du sikker på at du vil erstatte antrekket som heter \"${outfit}\"?",
		replace_outfit_button = "Erstatte",

		delete_outfit_title = "Slette antrekk",
		delete_outfit_description = "Er du sikker på at du vil slette antrekket som heter \"${outfit}\"?",
		delete_outfit_button = "Slette",

		packing_outfit_title = "Pakker antrekk",
		packing_outfit_description = "Velg sloten til klesposen du ønsker å pakke antrekket \"${outfit}\" inn i.",

		cancel_button = "Avbryt",

		remove_button = "Fjern ${label}",
		menu_description = "Trykk \"V\" for å veksle kamera. Du kan dra glidebryterne med musen eller bruke piltastene. Du kan trykke \"A\" og \"D\" for å justere posisjonen din.",

		failed_toggle_clothing_menu = "Klarte ikke å veksle klesmeny.",
		clothing_menu_success = "Åpnet klesmeny for ${consoleName}.",
		barber_menu_success = "Klarte ikke å veksle frisørsalongmeny.",
		failed_toggle_barber_menu = "Åpnet frisørsalongmeny for ${consoleName}.",
		invalid_server_id = "Ugyldig server-ID.",

		clothing_menu_missing_permissions = "Spiller prøvde å åpne klesmenyen for en annen spiller, men hadde ikke nødvendige tillatelser.",

		hats_and_helmets = "Hatter/Hjelmer",
		glasses = "Briller",
		earrings = "Øreringer",
		left_wrist = "Venstre håndledd",
		right_wrist = "Høyre håndledd",

		pants = "Bukser",
		shoes = "Sko",
		undershirt = "Undershirt",
		necklaces_and_ties = "Smykker & Slips",
		decals = "Klistremerker",
		shirts = "Skjorter",
		arms = "Armer",
		masks = "Masker",
		armor = "Rustning",
		parachute_and_bag = "Fallskjerm og Bag",

		hair = "Hår",

		blemishes = "Hudfeil",
		facial_hair = "Ansiktsbehåring",
		eyebrows = "Øyebryn",
		ageing = "Aldring",
		makeup = "Sminke",
		blush = "Blush",
		complexion = "Hudtone",
		sun_damage = "Solstikk",
		lipstick = "Leppestift",
		moles_and_freckles = "Føflekker og fregner",
		chest_hair = "Brystbehåring",
		body_blemishes = "Kroppshudfeil",
		add_body_blemish = "Legg til kroppshudfeil"
	},

	command_socket = {
		connected = "Koblet til kommandosocket.",
		disconnected = "Frakoblet fra kommandosocket.",
		failed_reconnect = "Kunne ikke koble til kommandosocket på nytt."
	},

	crafting = {
		menu_title = "Håndverk",
		close_menu = "Lukk Meny",

		smelt_glass = "Smelt Knust Glass",
		press_to_smelt_glass = "[${SeatEjectKey}] Smelt Knust Glass",
		smelting_glass = "Smelter ${usedItems}",
		smelted_glass = "Smeltet ${usedItems} om til glass.",
		failed_smelt_glass = "Kunne ikke smelte glass.",

		craft_steel = "Lag Stål",
		press_to_craft_steel = "[${SeatEjectKey}] Lag Stål",
		crafting_steel = "Bearbeider ${usedItems}",
		crafted_steel = "Laget ${usedItems} om til stål.",
		failed_craft_steel = "Kunne ikke lage stål.",

		scrapping_item = "Skroter ${usedItems}",
		scrapped_item = "Uttrukket skrapmetall fra ${usedItems}.",

		scrap_knife = "Skrapkniver",
		press_to_scrap_knife = "[${SeatEjectKey}] Skrap kniver",
		failed_scrap_knife = "Kunne ikke skrote kniven.",

		scrap_item = "Skrap Gjenstander",
		press_to_scrap_item = "[${SeatEjectKey}] Skrap Gjenstander",
		failed_scrap_item = "Kunne ikke skrote gjenstand.",

		cut_item = "Kutt Poteter",
		press_to_cut_item = "[${SeatEjectKey}] Kutt Poteter",
		cutting_item = "Kutter 3 Poteter",
		cut_item_done = "Kuttet poteter til fries.",
		failed_cut_item = "Klarte ikke å skjære poteter.",

		fry_item = "Stek pommes frites",
		press_to_fry_item = "[${SeatEjectKey}] Stek pommes frites",
		frying_item = "Steker pommes frites",
		fried_item = "Stekte belgiske pommes frites.",
		failed_fry_item = "Klarte ikke å steke pommes frites.",

		grill_item = "Grill rå burgere",
		press_to_grill_item = "[${SeatEjectKey}] Grill rå burgere",
		grilling_item = "Griller burgere",
		grilled_item = "Grillede burgere.",
		failed_grill_item = "Klarte ikke å grille burgere.",

		hamburger_recipe = "Hamburger",
		cheeseburger_recipe = "Cheeseburger",

		assemble_burger = "Montere hamburger",
		press_to_assemble_burger = "[${SeatEjectKey}] Montere hamburger",
		assembling_burger = "Monterer hamburger",
		assembled_burger = "Hamburger montert",
		failed_assemble_burger = "Klarte ikke å montere hamburger.",

		assembling_cheeseburger = "Monterer osteburger",
		assembled_cheeseburger = "Osteburger montert",
		failed_assemble_cheeseburger = "Klarte ikke å montere osteburger.",

		mix_avocado_smoothie = "Bland avocado-smoothie",
		press_to_mix_avocado_smoothie = "[${SeatEjectKey}] Bland avocado-smoothie",
		mixing_avocado_smoothie = "Mikser Avocado Smoothie",
		mixed_avocado_smoothie = "Ferdig Avocado Smoothie",
		failed_mix_avocado_smoothie = "Klarte ikke å mikse Avocado Smoothie.",

		fill_nitro_tank = "Fyll Nitro Tanken",
		press_to_fill_nitro_tank = "[${SeatEjectKey}] Fyll Nitro Tanken",
		filling_nitro_tank = "Fyller Nitro Tanken",
		filled_nitro_tank = "Nitro Tanken Fylt",
		failed_fill_nitro_tank = "Klarte ikke å fylle Nitro Tanken.",

		craft_sheet_metal = "Lag Metallplater",
		press_to_craft_sheet_metal = "[${SeatEjectKey}] Lag Metallplater",
		crafting_sheet_metal = "Snekkerer Platemetall",
		crafted_sheet_metal = "Ferdigstilte platemetall.",
		failed_craft_sheet_metal = "Kunne ikke snekre platemetall.",

		craft_empty_tank = "Monter Tom Tank",
		press_to_craft_empty_tank = "[${SeatEjectKey}] Monter Tom Tank",
		crafting_empty_tank = "Monterer Tom Tank",
		crafted_empty_tank = "Ferdigmontert tom tank.",
		failed_craft_empty_tank = "Kunne ikke montere tom tank.",

		craft_valve = "Monter Ventil",
		press_to_craft_valve = "[${SeatEjectKey}] Monter Ventil",
		crafting_valve = "Monterer ventil",
		crafted_valve = "Montert ventil.",
		failed_craft_valve = "Kunne ikke montere ventil.",

		craft_nitro_tank = "Monter nitrotank",
		press_to_craft_nitro_tank = "[${SeatEjectKey}] Monter nitrotank",
		crafting_nitro_tank = "Monterer nitrotank",
		crafted_nitro_tank = "Montert nitrotank.",
		failed_craft_nitro_tank = "Kunne ikke montere nitrotank.",

		salvage_meth_table = "Hogge opp meth-bord",
		press_to_salvage_meth_table = "[${SeatEjectKey}] Hogge opp meth-bord",
		salvaging_meth_table = "Hogger opp meth-bord",
		salvaged_meth_table = "Lagde met amfetamin-bord.",
		failed_salvage_meth_table = "Klarte ikke å lage met amfetamin-bord.",

		refill_vape = "Fyll på vape",
		press_to_refill_vape = "[${SeatEjectKey}] Fyll på vape",
		refilling_vape = "Fyller på vape",
		refilled_vape = "Fylte på vape.",
		failed_refill_vape = "Klarte ikke å fylle på vape.",

		deconstructing_item = "Demonterer ${usedItems}",
		deconstructed_item = "Demonterte ${usedItems}.",

		deconstruct_pistol = "Demonter pistol",
		press_to_deconstruct_pistol = "[${SeatEjectKey}] Demonter pistol",
		failed_deconstruct_pistol = "Kunne ikke demontere pistol.",

		deconstruct_smg = "Demonter SMG",
		press_to_deconstruct_smg = "[${SeatEjectKey}] Demonter SMG",
		failed_deconstruct_smg = "Kunne ikke demontere SMG.",

		deconstruct_shotgun = "Demonter hagle",
		press_to_deconstruct_shotgun = "[${SeatEjectKey}] Demonter hagle",
		failed_deconstruct_shotgun = "Kunne ikke demontere hagle.",

		deconstruct_rifle = "Demonter rifle",
		press_to_deconstruct_rifle = "[${SeatEjectKey}] Demonter rifle",
		failed_deconstruct_rifle = "Klarte ikke å demontere riflen.",

		extract_copper = "Hent kobber",
		press_extract_copper = "[${SeatEjectKey}] Hent kobber",
		extracting_copper = "Henter kobber",
		extracted_copper = "Hentet kobber.",
		failed_extract_copper = "Klarte ikke å hente kobber.",

		processing_item = "Behandler ${usedItems}",
		processed_item = "Behandlet ${usedItems}.",

		process_copper = "Behandle kobberbiter",
		press_process_copper = "[${SeatEjectKey}] Behandle kobberbiter",
		failed_process_copper = "Klarte ikke å behandle kobberbiter.",

		process_rubber = "Prosessér gummi",
		press_process_rubber = "[${SeatEjectKey}] Prosessér gummi",
		failed_process_rubber = "Kunne ikke prosessere gummi.",

		process_aluminium = "Prosessér aluminium",
		press_process_aluminium = "[${SeatEjectKey}] Prosessér aluminium",
		failed_process_aluminium = "Kunne ikke prosessere aluminium.",

		process_steel = "Prosessér stål",
		press_process_steel = "[${SeatEjectKey}] Prosessér stål",
		failed_process_steel = "Kunne ikke prosessere stål.",

		craft_lens = "Lag linser",
		press_craft_lens = "[${SeatEjectKey}] Lag linser",
		crafting_lens = "Lag Linse",
		crafted_lens = "Laget linse.",
		failed_craft_lens = "Kunne ikke lage linse.",

		craft_sight = "Lag Sikt",
		press_craft_sight = "[${SeatEjectKey}] Lag Sikt",
		crafting_sight = "Lager Sikt",
		crafted_sight = "Laget sikt.",
		failed_craft_sight = "Kunne ikke lage sikt.",

		craft_pistol_sight = "Lag Pistol Sikt",
		press_craft_pistol_sight = "[${SeatEjectKey}] Lag Pistol Sikt",
		crafting_pistol_sight = "Lager Pistol Sikt",
		crafted_pistol_sight = "Laget pistol sikt.",
		failed_craft_pistol_sight = "Klarte ikke å lage pistolkikkert.",

		craft_scope = "Lag kikkertsikte",
		press_craft_scope = "[${SeatEjectKey}] Lag kikkertsikte",
		crafting_scope = "Lager kikkertsikte",
		crafted_scope = "Kikkertsikte laget.",
		failed_craft_scope = "Klarte ikke å lage kikkertsikte.",

		craft_grip = "Lag grep",
		press_craft_grip = "[${SeatEjectKey}] Lag grep",
		crafting_grip = "Lager grep",
		crafted_grip = "Grep laget.",
		failed_craft_grip = "Klarte ikke å lage grep.",

		craft_extended_clip = "Lag utvidet magasin",
		press_craft_extended_clip = "[${SeatEjectKey}] Lag utvidet magasin",
		crafting_extended_clip = "Lager forlenget magasin",
		crafted_extended_clip = "Laget forlenget magasin.",
		failed_craft_extended_clip = "Kunne ikke lage forlenget magasin.",

		craft_extended_smg_clip = "Lage forlenget SMG-magasin",
		press_craft_extended_smg_clip = "[${SeatEjectKey}] Lage forlenget SMG-magasin",
		crafting_extended_smg_clip = "Lager forlenget SMG-magasin",
		crafted_extended_smg_clip = "Laget forlenget SMG-magasin.",
		failed_craft_extended_smg_clip = "Kunne ikke lage forlenget SMG-magasin.",

		craft_extended_shotgun_clip = "Lage forlenget hagle-magasin",
		press_craft_extended_shotgun_clip = "[${SeatEjectKey}] Lag utvidet haglemagasin",
		crafting_extended_shotgun_clip = "Lager utvidet haglemagasin",
		crafted_extended_shotgun_clip = "Laget utvidet haglemagasin.",
		failed_craft_extended_shotgun_clip = "Kunne ikke lage utvidet haglemagasin.",

		craft_extended_pistol_clip = "Lag utvidet pistolmagasin",
		press_craft_extended_pistol_clip = "[${SeatEjectKey}] Lag utvidet pistolmagasin",
		crafting_extended_pistol_clip = "Lager utvidet pistolmagasin",
		crafted_extended_pistol_clip = "Laget forlenget pistol magasin.",
		failed_craft_extended_pistol_clip = "Kunne ikke lage forlenget pistol magasin.",

		craft_drum = "Lag tromme-magasin",
		press_craft_drum = "[${SeatEjectKey}] Lag tromme-magasin",
		crafting_drum = "Lager tromme-magasin",
		crafted_drum = "Laget tromme-magasin.",
		failed_craft_drum = "Kunne ikke lage tromme-magasin.",

		craft_suppressor = "Lag demper",
		press_craft_suppressor = "[${SeatEjectKey}] Lag demper",
		crafting_suppressor = "Lager demper",
		crafted_suppressor = "Laget demper.",
		failed_craft_suppressor = "Kunne ikke produsere demper.",

		craft_flashlight = "Lag lommelykt",
		press_craft_flashlight = "[${SeatEjectKey}] Lag lommelykt",
		crafting_flashlight = "Lager lommelykt",
		crafted_flashlight = "Lagde lommelykt.",
		failed_craft_flashlight = "Kunne ikke produsere lommelykt.",

		mix_paint = "Bland maling",
		press_mix_paint = "[${SeatEjectKey}] Bland maling",
		mixing_paint = "Blander maling",
		mixed_paint = "Blandet maling.",
		failed_mix_paint = "Kunne ikke blande maling.",

		modify_knuckle = "Modifiser messingknoker",
		press_modify_knuckle = "[${SeatEjectKey}] Modifiser brassknuckles",
		modifying_knuckle = "Modifiserer brassknuckles",
		modified_knuckle = "Modifisert brassknuckles.",
		failed_modify_knuckle = "Kunne ikke modifisere brassknuckles.",

		craft_jammer = "Lag jammer",
		press_craft_jammer = "[${SeatEjectKey}] Lag jammer",
		crafting_jammer = "Lager jammer",
		crafted_jammer = "Jammer laget.",
		failed_craft_jammer = "Kunne ikke lage jammer.",

		craft_advanced_repair_kit = "Lag avansert reparasjonssett",
		press_craft_advanced_repair_kit = "[${SeatEjectKey}] Lag avansert reparasjonssett",
		crafting_advanced_repair_kit = "Lage avansert reparasjonssett",
		crafted_advanced_repair_kit = "Avansert reparasjonssett laget.",
		failed_craft_advanced_repair_kit = "Kunne ikke lage avansert reparasjonssett.",

		pulverize_aluminium = "Pulverisere aluminium",
		press_pulverize_aluminium = "[${SeatEjectKey}] Pulverisere aluminium",
		pulverizing_aluminium = "Pulveriserer aluminium",
		pulverized_aluminium = "Aluminium pulverisert.",
		failed_pulverize_aluminium = "Kunne ikke pulverisere aluminium.",

		pulverize_steel = "Pulverisere stål",
		press_pulverize_steel = "[${SeatEjectKey}] Kvern stål",
		pulverizing_steel = "Kverner stål",
		pulverized_steel = "Stål knust.",
		failed_pulverize_steel = "Klarte ikke å kverne stål.",

		mix_thermite = "Bland termitt",
		press_mix_thermite = "[${SeatEjectKey}] Bland termitt",
		mixing_thermite = "Blander termitt",
		mixed_thermite = "Termitt blandet.",
		failed_mix_thermite = "Klarte ikke å blande termitt.",

		deconstruct_phone = "De-konstruér telefon",
		press_deconstruct_phone = "[${SeatEjectKey}] De-konstruér telefon",
		failed_deconstruct_phone = "Kunne ikke demontere mobiltelefonen.",

		deconstruct_radio = "Demontere Radio",
		press_deconstruct_radio = "[${SeatEjectKey}] Demontere Radio",
		failed_deconstruct_radio = "Kunne ikke demontere radioen.",

		deconstruct_raspberry = "Demontere Raspberry",
		press_deconstruct_raspberry = "[${SeatEjectKey}] Demontere Raspberry",
		failed_deconstruct_raspberry = "Kunne ikke demontere Raspberry.",

		deconstruct_chip = "Demontere chip",
		press_deconstruct_chip = "[${SeatEjectKey}] Demontere Chip",
		failed_deconstruct_chip = "Kunne ikke demontere chip.",

		craft_device_scanner = "Lag enhetsskanner",
		press_craft_device_scanner = "[${SeatEjectKey}] Lag enhetsskanner",
		crafting_device_scanner = "Lager enhetsskanner",
		crafted_device_scanner = "Enhetsskanner er laget.",
		failed_craft_device_scanner = "Kunne ikke lage enhetsskanner.",

		craft_decryption_key = "Lag dekrypteringsnøkkel",
		press_craft_decryption_key = "[${SeatEjectKey}] Lag dekrypteringsnøkkel",
		crafting_decryption_key = "Lager dekrypteringsnøkkel",
		crafted_decryption_key = "Laget dekrypteringsnøkkel.",
		failed_craft_decryption_key = "Kunne ikke lage dekrypteringsnøkkel.",

		craft_tire_wall = "Lag Dekkvegg",
		press_craft_tire_wall = "[${SeatEjectKey}] Lag Dekkvegg",
		crafting_tire_wall = "Lager Dekkvegg",
		crafted_tire_wall = "Laget dekkvegg.",
		failed_craft_tire_wall = "Kunne ikke lage dekkvegg.",

		fix_tire_wall = "Fiks Dekkvegg",
		press_fix_tire_wall = "[${SeatEjectKey}] Fiks Dekkvegg",
		fixing_tire_wall = "Fikser Dekkvegg",
		fixed_tire_wall = "Fikset dekkvegg.",
		failed_fix_tire_wall = "Kunne ikke fikse dekkveggen.",

		saw_shotgun = "Sag-av hagle",
		press_saw_shotgun = "[${SeatEjectKey}] Sag-av hagle",
		sawing_shotgun = "Sager av hagle",
		sawed_shotgun = "Haglen er sagd av.",
		failed_saw_shotgun = "Kunne ikke sage av haglen.",

		bake_brownies = "Bak brownies",
		press_bake_brownies = "[${SeatEjectKey}] Bak brownies",
		baking_brownies = "Baker brownies",
		baked_brownies = "Brownies er ferdig bakt.",
		failed_bake_brownies = "Kunne ikke bake brownies.",

		mix_brushstroke_paint = "Bland penselstrek maling",
		press_mix_brushstroke_paint = "[${SeatEjectKey}] Bland eggehvite maling",
		mixing_brushstroke_paint = "Blander eggehvite maling",
		mixed_brushstroke_paint = "Eggehvite maling ble blandet",
		failed_mix_brushstroke_paint = "Kunne ikke blande eggehvite maling",

		mix_skull_paint = "Bland Skull maling",
		press_mix_skull_paint = "[${SeatEjectKey}] Bland Skull maling",
		mixing_skull_paint = "Blander Skull maling",
		mixed_skull_paint = "Skull maling ble blandet",
		failed_mix_skull_paint = "Kunne ikke blande Skull maling",

		mix_leopard_paint = "Bland Leopard maling",
		press_mix_leopard_paint = "[${SeatEjectKey}] Bland Leopard-maling",
		mixing_leopard_paint = "Blander Leopard-maling",
		mixed_leopard_paint = "Blandet leopard-maling.",
		failed_mix_leopard_paint = "Kunne ikke blande leopard-maling.",

		mix_zebra_paint = "Bland sebra-maling",
		press_mix_zebra_paint = "[${SeatEjectKey}] Bland Sebra-maling",
		mixing_zebra_paint = "Blander Sebra-maling",
		mixed_zebra_paint = "Blandet sebra-maling.",
		failed_mix_zebra_paint = "Kunne ikke blande sebra-maling.",

		mix_geometric_paint = "Bland geometrisk maling",
		press_mix_geometric_paint = "[${SeatEjectKey}] Bland geometrisk maling",
		mixing_geometric_paint = "Blander Geometrisk Maling",
		mixed_geometric_paint = "Blandet geometrisk maling.",
		failed_mix_geometric_paint = "Kunne ikke blande geometrisk maling.",

		mix_patriotic_paint = "Blander Patriotisk Maling",
		press_mix_patriotic_paint = "[${SeatEjectKey}] Bland Patriotisk Maling",
		mixing_patriotic_paint = "Blander Patriotisk Maling",
		mixed_patriotic_paint = "Blandet patriotisk maling.",
		failed_mix_patriotic_paint = "Kunne ikke blande patriotisk maling.",

		craft_radio_decrypter = "Lag Radio Dekrypterer",
		press_craft_radio_decrypter = "[${SeatEjectKey}] Lag Radio Dekrypterer",
		crafting_radio_decrypter = "Lage radio-dekrypterer",
		crafted_radio_decrypter = "Laget radio-dekrypterer.",
		failed_craft_radio_decrypter = "Kunne ikke lage radio-dekrypterer.",

		craft_grenade_shell = "Lage granathylster",
		press_craft_grenade_shell = "[${SeatEjectKey}] Lage granathylster",
		crafting_grenade_shell = "Lager granathylster",
		crafted_grenade_shell = "Laget granathylster.",
		failed_craft_grenade_shell = "Kunne ikke lage granathylster.",

		craft_grenade_pin = "Lage granatstift",
		press_craft_grenade_pin = "[${SeatEjectKey}] Lage granatstift",
		crafting_grenade_pin = "Lager pinne til granat",
		crafted_grenade_pin = "Har laget pinne til granat.",
		failed_craft_grenade_pin = "Kunne ikke lage pinne til granat.",

		craft_gas_grenade = "Lager gassgranat",
		press_craft_gas_grenade = "[${SeatEjectKey}] Lag gassgranat",
		crafting_gas_grenade = "Lager gassgranat",
		crafted_gas_grenade = "Har laget gassgranat.",
		failed_craft_gas_grenade = "Kunne ikke lage gassgranat.",

		break_apart_ring = "Bryt fra hverandre ringen",
		press_break_apart_ring = "[${SeatEjectKey}] Bryt fra hverandre ringen",
		breaking_ring = "Bryter fra hverandre ringen",
		broke_ring = "Brøt fra hverandre ringen.",
		failed_break_ring = "Kunne ikke bryte fra hverandre ringen.",

		no_required_items = "Du har ikke alle nødvendige gjenstander.",

		debug_multi = "-Flere utganger-",

		used_crafting_station_title = "Verksted for håndverk",
		used_crafting_station_details = "${consoleName} brukte en crafting-stasjon for å lage ${amount}x ${itemName}."
	},

	crashes = {
		crash_failed = "Feilet å skape en krasj for ${consoleName}.",
		crash_success = "Krasj for ${consoleName} ble vellykket.",
		server_id_invalid = "Ugyldig server-ID."
	},

	creation = {
		turn_right = "Sving til høyre",
		turn_left = "Sving til venstre"
	},

	creation_menu = {
		character_creation = "Karakterskaping",
		new_character = "NY KARAKTER",

		select_a_model = "Velg en modell.",

		heritage = "Arv",
		heritage_description = "Velg for å velge foreldrene dine.",
		mom = "Mamma",
		mom_description = "Velg din mamma.",
		dad = "Pappa",
		dad_description = "Velg din pappa.",
		resemblance = "Likhet",
		resemblance_description = "Velg om dine fysiske trekk påvirkes mer av din mor eller far.",
		skin_tone = "Hudfarge",
		skin_tone_description = "Velg om din hudfarge påvirkes mer av din mor eller far.",
		divorced = "Skilt",
		divorced_description = "Velg om dine foreldre er skilt.",

		["in"] = "in",
		out = "av",
		up = "opp",
		down = "ned",
		brow = "øyenbryn",
		brow_description = "Gjør endringer på dine fysiske trekk.",

		squint = "klype øynene sammen",
		wide = "brede",
		eyes = "øyne",
		eyes_description = "Gjør endringer på dine fysiske trekk.",

		narrow = "smale",
		wide = "brede",
		nose = "nese",
		nose_description = "Gjør endringer på dine fysiske trekk.",

		short = "kort",
		long = "lang",
		crooked = "skeiv",
		curved = "buet",
		nose_profile = "neseprofil",
		nose_profile_description = "Gjør endringer på dine fysiske trekk.",

		broken_left = "brutt venstre",
		broken_right = "Brukket Høyre",
		tip_up = "Tupp Opp",
		tip_down = "Tupp Ned",
		nose_tip = "Nesetipp",
		nose_tip_description = "Gjør endringer på dine fysiske trekk.",

		cheekbones = "Kinnbein",
		cheekbones_description = "Gjør endringer på dine fysiske trekk.",

		gaunt = "Innover",
		puffed = "Utbulende",
		cheeks = "Kinn",
		cheeks_description = "Gjør endringer på dine fysiske trekk.",

		thin = "Tynn",
		fat = "Tykk",
		lips = "Lepper",
		lips_description = "Gjør endringer på dine fysiske trekk.",

		round = "Runde",
		square = "Firkantede",
		jaw = "Kjeve",
		jaw_description = "Gjør endringer på ditt fysiske utseende.",

		chin_profile = "Hakeprofil",
		chin_profile_description = "Gjør endringer på ditt fysiske utseende.",

		pointed = "Spiss",
		rounded = "Rund",
		bum = "Dyp",
		chin_shape = "Hakeform",
		chin_shape_description = "Gjør endringer på ditt fysiske utseende.",

		thick = "Tykk",
		neck_thickness = "Nakke tykkelse",
		neck_thickness_description = "Gjør endringer på ditt fysiske utseende.",

		features = "Funksjoner",
		appearance = "Utseende",
		save_and_continue = "Lagre og fortsett",
		components = "Komponenter",
		props = "Rekvisitter",
		ambient_females = "Ambient Kvinner",
		ambient_male = "Ambient Menn",
		animals = "Dyr",
		cutscene = "Klipp",
		gang_female = "Gjeng Kvinner",
		gang_male = "Gjeng Menn",
		multiplayer = "Flerspiller",
		scenario_female = "Scenario Kvinner",
		scenario_male = "Scenario Menn",
		story = "Historie",
		story_scenario_female = "Historie Scenario Kvinner",
		story_scenario_male = "Historie Scenario Menn",
		models = "Modeller",

		features_description = "Velg for å endre utseendet ditt.",

		unknown_hair = "Ukjent Hår (${hairId})",
		unknown_eyebrow = "Ukjent øyenbryn (${eyebrowId})",
		unknown_facial_hair = "Ukjent ansiktsbehåring (${facialHairId})",
		unknown_skin_blemish = "Ukjent hudblemme (${skinBlemishId})",
		unknown_skin_aging = "Ukjent hudaldring (${skinAgingId})",
		unknown_skin_complexion = "Ukjent hudteint (${skinComplexionId})",
		unknown_moles_and_freckles = "Ukjente føflekker og fregner (${molesAndFrecklesId})",
		unknown_skin_damage = "Ukjent hudskade (${skinDamageId})",
		unknown_eye_makeup = "Ukjent øyesminke (${eyeMakeupId})",
		unknown_blusher = "Ukjent Blusher (${blusherId})",
		unknown_lipstick = "Ukjent Lipstick (${lipstickId})",
		unknown_chest_hair = "Ukjent Brysthår (${chestHairId})",

		color = "Farge",
		opacity = "Gjennomsiktighet",

		hair = "Hår",
		hair_description = "Gjør endringer på utseendet ditt.",

		eyebrows = "Øyenbryn",
		eyebrows_description = "Gjør endringer på utseendet ditt.",

		facial_hair = "Ansiktshår",
		facial_hair_description = "Gjør endringer på utseendet ditt.",

		skin_blemishes = "Hudblemmer",
		skin_blemishes_description = "Gjør endringer på utseendet ditt.",

		skin_aging = "Hudaldring",
		skin_aging_description = "Endre utseendet ditt.",

		skin_complexion = "Hudkompleksjon",
		skin_complexion_description = "Endre utseendet ditt.",

		moles_and_freckles = "Føflekker og fregner",
		moles_and_freckles_description = "Endre utseendet ditt.",

		skin_damage = "Hudskader",
		skin_damage_description = "Endre utseendet ditt.",

		eye_color = "Øyenfarge",
		eye_color_description = "Endre utseendet ditt.",

		eye_makeup = "Øyesminke",
		eye_makeup_description = "Gjør endringer på utseendet ditt.",

		blusher = "Rouge",
		blusher_description = "Gjør endringer på utseendet ditt.",

		lipstick = "Leppestift",
		lipstick_description = "Gjør endringer på utseendet ditt.",

		chesthair = "Brysthår",
		chesthair_description = "Gjør endringer på utseendet ditt.",

		ready_to_start_playing = "Klar til å begynne å spille?",
		no = "Nei",
		go_back = "Tilbake.",
		yes = "Ja",
		you_will_not_be_able_to_return = "Du vil ikke kunne gå tilbake.",

		freemode = "Frimodus",
		freemode_description = "Velg om du vil bruke en frimodus-modell. Frimodus-modellene kan tilpasses mye.",

		sex = "Kjønn",
		sex_description = "Velg kjønn for din karakter.",
		male = "Mann",
		female = "Kvinne",

		props_description = "Velg dine ønskede rekvisitter.",

		hat = "Hatt",
		glass = "Briller",
		ear = "Ørepropper",
		watch = "Klokke",
		bracelet = "Armbånd",

		appearance_description = "Velg for å endre din karakterens utseende.",
		components_description = "Velg dine ønskede komponenter.",

		none = "Ingen",

		texture = "Tekstur ${textureId}",
		drawable = "Objekt ${drawableId}",

		clean_shaven = "Barber",

		face = "Ansikt",
		mask = "Maske",
		hair = "Hår",
		torso = "Overkropp",
		leg = "Ben",
		parachute_and_bag = "Fallskjerm / bag",
		shoes = "Sko",
		accessory = "Tilbehør",
		undershirt = "Undert-skjorte",
		kevlar = "Kevlar",
		badge = "Merke",
		torso_two = "Overkropp 2"
	},

	crosshair = {
		copied_config = "Kopierte innstillinger til utklippstavlen.",
		imported_config = "Importerte innstillinger.",
		disabled_crosshair = "Deaktiverte tilpasset sikte.",

		invalid_url_title = "Ugyldig bilde-URL",
		invalid_url_description = "Bilde-URLen du angav er ugyldig. Den må være en direkte lenke til bildet, ikke en lenke til et nettsted som inneholder bildet. Den må begynne med en av følgende URL-er:",
		cancel_button = "Avbryt",

		center = "Senter",
		main = "Hoved",
		outer = "Ytre",
		kill = "Stop Flash",

		enabled = "Aktivert",
		size = "Størrelse",
		image = "Bilde",
		length = "Lengde",
		offset = "Forskyvning",
		secondary_offset = "Sekundær forskyvning",
		rotation = "Rotasjon",
		color = "Farge",
		duration = "Varighet (ms)"
	},

	clip_saver = {
		start_recording = "Start Opptak",
		clip_save = "Lagre Klipp",
		clip_discard = "Forkast Klipp"
	},

	compass = {
		north = "N",
		north_east = "NØ",
		east = "Ø",
		south_east = "SØ",
		south = "S",
		south_West = "SW",
		west = "V",
		north_west = "NV"
	},

	courthouse = {
		press_to_use_gavel = "Trykk ~INPUT_CONTEXT~ for å bruke Hammeren."
	},

	daily_activities = {
		press_to_daily_activities = "[${InteractionKey}] Daglige Aktiviteter",
		daily_activities = "Daglige Aktiviteter",
		resets_in = "Tilbakestilles om ${resetsIn}...",
		complete_the_other_tasks_to_unlock = "Fullfør de andre oppgavene for å låse opp...",
		remain = "${remain} gjenstår",
		remain_money = "${remain}$ gjenstår",
		claimed = "Hentet",
		claim = "Hent",
		streak_reward = "Når du har en rekke på 7 eller høyere, vil du få en annen gratis spin på Lucky Wheel.",

		reset_daily_activities_no_permissions = "Spilleren forsøkte å tilbakestille daglige aktiviteter uten tilstrekkelige tillatelser.",
		reset_daily_activities = "Nullstill daglige aktiviteter.",

		parachute_from_location = "Hopp i fallskjerm fra ${location}.",
		gamble_at_blackjack = "Spill ${amount} runder med Blackjack.",
		bring_in_items = "Ta med følgende varer.",
		kills_in_arena = "Få ${amount} drepte i Arenaen.",
		headshot_kills_in_arena = "Få ${amount} hodeskuddsdrepte i Arenaen.",
		punch_locals = "Slå ${amount} sivile.",
		move_from_place_to_place = "Flytt fra ${from} til ${to} på ${time} sekunder.",
		put_bets_in_jackpot = "Legg inn veddemål verdt $${amount} i Jackpotten.",
		win_bets_in_jackpot = "Vinn gjenstander til en verdi av $${amount} i Jackpot.",
		chop_vehicles = "Kutt opp ${amount} kjøretøy.",
		purchase_ammo = "Kjøp ${amount} ammunisjon.",
		collect_items_from_diving = "Samle ${amount}x ${itemLabel} fra dykking.",
		take_zombie_pills = "Ta ${amount} zombiepiller.",
		dig_up_a_treasure = "Grav opp en skatt ved hjelp av et skattekart.",
		refine_gems = "Raffiner ${amount} edelstener.",
		visit_location = "Besøk ${location}.",
		visit_the_location = "Besøk ${location}."
	},

	dashcam = {
		video = "Video",
		time = "Tid",
		date = "Dato",

		unit_id = "Enhet ID",
		unit_name = "Enhet Navn",
		unit_speed = "Enhet Hastighet",

		state_seal_one = "Dette kjøretøyet er lisensiert til",
		state_seal_two = "delstaten San Andreas",
		state_seal_three = "All uautorisert bruk kan resultere i høye bøter under 13 S.A. Penn. Kode 502(a).",

		kmh = "km/t",
		mph = "mp/t",

		set_unit_id_to = "Enhet ID-en din er nå endret til ${unitId}.",
		reset_unit_id = "Enhet ID-en din er nå nullstilt.",
		failed_to_set_unit_id = "Kunne ikke endre Enhet ID.",
		unit_id_already_set_to = "Enhet ID-en din er allerede satt til ${unitId}.",
		unit_id_already_reset = "Din enhets-ID har allerede blitt nullstilt.",
		invalid_unit_id = "Enhets-ID må være et heltall mellom 1 og 999.",

		unit_id_vehicles_updated = "Dine nød kjøretøy har blitt oppdatert for å gjenspeile din nye enhets-ID `${unitId}`."
	},

	debug = {
		ped = "Person",
		vehicle = "Kjøretøy",
		object = "Objekt",
		network_id = "Nettverks-ID",
		owned_by_us = "Eid av oss",
		owned_by = "Eid av",
		one_state_set = "1 Status Oppdatert",
		many_states_set = "${count} Statusoppdateringer",
		no_states = "Ingen status",
		entity_health = "Helse ${health}/${maxHealth}",
		owned_by_server = "Server",
		first_owned_short = "Første eid av: ${firstOwned}",
		network_id_side = "Nettverks-ID: ${networkId}",
		no_target = "Ingen mål",
		invalid_radius_parameter = "Ugyldig `radius` parameter.",
		inject_code_not_developer = "Spilleren prøvde å injisere kode, men de er ikke en utvikler.",
		inject_code_invalid_player = "Det er ingen spillere med server id `${serverId}`.",
		inject_code_success_for_everyone = "Koden ble vellykket injisert for alle.",
		inject_code_success_for_player = "Koden ble vellykket injisert for ${consoleName}.",
		inject_code_success = "Vellykket kodeinjeksjon.",
		inject_code_target_user_not_found = "Målbruker ble ikke funnet.",
		inject_code_invalid_text = "Ugyldig tekst.",
		inject_code_invalid_input = "Ugyldig input.",
		inject_code_no_permissions = "Ingen tillatelser.",
		inject_code_user_not_found = "Bruker ikke funnet.",
		inject_code_invalid_url = "Ugyldig URL.",
		inject_code_invalid_radius = "Ugyldig radius.",
		game_pools = "Spillpools:",
		ped_config_flags = "Ped config-flagg:",
		ped_is = "Ped er:",
		vehicle_is = "Kjøretøy er:",
		native_calls = "Nativ Forespørsler: ${trueNativeCallsLastFrame} (${totalNativeCalls})",
		player_speed = "Spillerhastighet: ${playerSpeed}",
		player_ped = "Spillerkontroll: ${playerPedId}",
		heading = "Retning: ${heading}",
		coords = "Koordinater: ${coords}",
		rotation = "Rotasjon: ${rotation}",
		velocity = "Fart: ${velocity}",
		ground_material = "Underlag: ${material}",
		g_force = "G-Kraft: ${force}",
		debug_print_f8 = "Debug-informasjon har blitt skrevet ut i F8-konsollen din.",
		no_vehicle_bone = "Ingen \"${boneName}\" bein",

		distance = "Avstand: ${distance}m",
		distance_first = "Første posisjon lagret.",

		get_search_invalid = "Ugyldig søk (minst 2 tegn).",

		disabled_ped_bone_debug = "Deaktivert ped-benk debug.",

		mph = "mph",
		vehicle_speed = "Fart: ${speed}",
		vehicle_average = "Gjennomsnitt: ${speed}",
		vehicle_top_speed = "Toppfart: ${speed}",
		vehicle_acceleration = "0 til 60: ${time}",
		vehicle_acceleration_120 = "0 til 120: ${time}",
		vehicle_acceleration_150 = "0 til 150: ${time}",
		vehicle_acceleration_force = "Startkraft: ${force}",

		invalid_network_id = "Ugyldig nettverks-ID.",
		delete_entity_success = "Vellykket slettet enhet med nettverks-ID ${networkId}.",
		delete_entity_failed = "Klarte ikke slette enheten.",
		delete_entity_no_permissions = "Spilleren prøvde å slette en enhet uten riktig tillatelse.",

		move_entity_success = "Enhetsflyttingen av nettverks-ID-en ${networkId} ble vellykket.",
		move_entity_failed = "Kunne ikke bevege enheten.",
		move_entity_no_permissions = "Spilleren prøvde å flytte en enhet uten riktig tillatelse.",

		fake_lag_updated = "Falsk ventetid teller er oppdatert til `${counter}`.",
		fake_lag_already_set_to = "Falsk ventetid teller er allerede satt til `${counter}`.",
		fake_lag_enabled = "Falsk ventetid er aktivert med teller `${counter}`.",
		fake_lag_invalid_counter_value = "Verdien `${counter}` er ikke en gyldig verdi for fake lag.",
		fake_lag_disabled = "Fake lag er deaktivert.",
		fake_lag_not_enabled = "Fake lag er ikke aktivert.",

		weapon_name_missing = "Mangler navn på våpenparameter.",
		weapon_name_invalid = "`${weaponName}` er ikke et gyldig navn på et våpen.",
		model_name_missing = "Mangler navn på modellparameter.",
		model_name_invalid = "`${modelName}` er ikke et gyldig navn på en modell.",
		model_view_enabled = "Modellvisning aktivert.",
		model_view_disabled = "Modellvisning deaktivert.",
		invalid_component = "Ugyldig komponent `${componentName}`.",

		animation_currently_playing = "Spiller for øyeblikket en animasjon.",
		invalid_or_missing_animation_dict = "Ugyldig eller manglende animasjonsordbok `${animationDict}`.",
		missing_animation_name = "Ugyldig eller manglende animasjonsnavn `${animationName}`.",
		invalid_animation_flags = "Ugyldige animasjonsflagg.",
		animation_played = "Spiller av `${animationDict}` `${animationName}` (flagg: ${flags}).",
		no_flags = "N/A",

		invalid_coordinates = "Ugyldige koordinater.",
		added_coordinates_draw = "La til koordinater `x: ${x}, y: ${y}, z: ${z}` til tegnelisten med ID `${drawId}`.",
		no_coordinate_draws_to_destroy = "Det var ingen koordinat-tegninger å ødelegge.",
		destroyed_coordinate_draws = "Ødela `${drawingCoordinatesAmount}` koordinat-tegninger.",

		debug_damage_enabled = "Skadediagnose aktivert.",
		debug_damage_disabled = "Skadediagnose deaktivert.",

		enabled_network_debug = "Enhetsnettverk feilsøking aktivert.",
		disabled_network_debug = "Nettverksfeilsøking for enheter er deaktivert.",
		failed_network_debug = "Kunne ikke aktivere nettverksfeilsøking for enheter.",

		network_owner_subscription_no_permissions = "Forsøkte å abonnere på enhetenes nettverkseiere uten tilstrekkelig tillatelse.",

		missing_ipl = "Mangler parameteren ipl.",
		enabled_ipl = "Ipl `${ipl}` er aktivert.",
		disabled_ipl = "Ipl `${ipl}` er deaktivert.",

		enabled_ipl_globally = "Ipl `${ipl}` er aktivert globalt.",
		failed_enabled_ipl_globally = "Kan ikke aktivere ipl globalt.",
		disabled_ipl_globally = "IPL `${ipl}` er nå deaktivert globalt.",
		failed_disabled_ipl_globally = "Kunne ikke deaktivere IPL globalt.",

		enabled_ipls_list = "Aktiverte IPLs: ${list}.",
		no_ipls_enabled = "Ingen IPLs er aktiverte.",

		missing_code = "Mangler kodeparameter.",
		run_code_success = "Kodesnutten ble utført uten feil.",
		run_code_error = "Kodesnutten kastet en feil.",

		searching_world = "Søker i verden etter:\n${modelNames}",
		copied_clipboard = "Kopierte koordinater til utklippstavlen.",

		saved_vehicle_model_lists_to_file = "Listene over kjøretøymodeller har blitt lagret i en fil på serveren.",

		network_debug_logs_title = "Toggled Network Debug",
		network_debug_logs_details_on = "${consoleName} aktiverte enhetsnettverk feilsøking.",
		network_debug_logs_details_off = "${consoleName} deaktiverte enhetsnettverk feilsøking."
	},

	debug_menu = {
		menu_title = "Feilsøkingsmeny",

		timecycles = "Tidssykluser",
		weather = "Vær",
		reset = "Tilbakestill",
		refresh_interior = "Oppdater interiør"
	},

	dna_evidence = {
		taking_sample = "Tar DNA-prøve",
		already_taking_sample = "Du tar allerede en DNA-prøve av en spiller.",
		sample_no_player = "Ingen spillere i nærheten som du kan ta en DNA-prøve av.",
		sample_no_bags = "Du har ingen bevisposer.",
		dna_evidence_bag = "DNA-bevis",

		evidence_failed = "Klarte ikke å ta DNA-bevis.",

		evidence_text = "Bevistype: DNA-bevis\nDNA samlet inn fra ${fullName} #${characterId}\n\nAnnen informasjon:\n • Tidsstempel for henting: ${time}"
	},

	doors = {
		locked = "Låst",
		unlocked = "Ulåst",
		locked_press_to_unlock = "[${InteractionKey}] Låst",
		unlocked_press_to_lock = "[${InteractionKey}] Ulåst",
		locking = "Låser",
		unlocking = "Åpner",
		jewelry_store_closed = "Smykkebutikken er for øyeblikket stengt. Vennligst kom tilbake senere.",
		bank_closed = "Banken er for øyeblikket stengt. Vennligst kom tilbake senere.",
		store_closed = "Butikken er for øyeblikket stengt. Vennligst kom tilbake senere.",
		failed_to_sync_doors = "Klarte ikke å synkronisere dører. Noe har mest sannsynlig blitt ødelagt. Vennligst prøv igjen.",
		saved_doors_to_file = "Lagret `${amount}` dører til en fil på serveren.",
		no_nearby_doors = "Det er ingen nærliggende dører å lagre.",
		lockpicking_door = "Låse opp dør",

		debug_doors_on = "Dørsøking slått på.",
		debug_doors_off = "Dørsøking slått av.",
		doors_no_job = "N/A"
	},

	elevators = {
		use_elevator = "[${InteractionKey}] Bruk heis",
		elevator_title = "Heis",
		close_menu = "Lukk meny",
		already_on_floor = "Du er allerede på denne etasjen.",

		no_elevator_nearby = "Det er ingen heis i nærheten.",
		elevator_enabled = "Heis #${elevatorId} er nå aktivert.",
		elevator_disabled = "Heisen #${elevatorId} er nå deaktivert.",
		elevator_toggle_failed = "Kunne ikke slå av/på heis.",
		elevator_enabled_all = "Alle heiser har nå blitt aktivert.",

		out_of_service = "Ute av drift",
		out_of_service_help = "Denne heisen er for øyeblikket ute av drift.",

		current = "Nåværende",
		up = "Opp",
		down = "Ned",

		floor_tunnel_entrance = "Tunnelinngang",
		floor_underground_tunnel = "Underjordisk tunnel",

		floor_lounge = "Salong",

		floor_garage = "Garasje",
		floor_lobby = "Lobby",
		floor_roof = "Tak",
		floor_helipad = "Helikopterlandingsplass",

		floor_shop = "Butikk",

		floor_casino = "Kasino",
		floor_security = "Sikkerhet",
		floor_loading_bay = "Lastebuktområde",
		floor_vault = "Hvelvrom",

		floor_second_floor = "Andre etasje",
		floor_icu = "Intensivavdeling",
		floor_ground = "Første etasje",
		floor_surgery = "Kirurgi",

		floor_entrance = "Inngang",
		floor_server_room = "Serverrom",

		floor_50 = "Etasje 50",
		floor_49 = "Etasje 49",
		floor_47 = "Etasje 47",
		floor_basement = "Kjeller",

		floor_exclusive_dealership = "Eksklusivt bilforhandler",
		floor_mayors_office = "Ordførerens kontor",
		floor_mechanic_shop = "Verksted",

		floor_fourth_floor = "4. etasje",
		floor_third_floor = "3. etasje",

		floor_obelisk = "Obelisk",
		floor_hangout = "Hengeplass",
		floor_penthouse = "Penthouse",
		floor_theatre_office = "Teaterkontor",
		floor_psychiatrists_office = "Psykologkontor",
		floor_nightclub_garage = "Nattklubb-garasje",
		floor_submarine = "Ubåt",

		floor_lower_penthouse = "Nedre Penthouse",
		floor_middle_penthouse = "Midtre Penthouse",
		floor_upper_penthouse = "Øvre Penthouse",

		floor_showroom = "Ustillingsrom",
		floor_office = "Kontor",
		floor_doj_office = "DOJ-kontor",

		floor_penthouse_top = "Penthouse (øverste etasje)",
		floor_penthouse_entrance = "Penthouse (inngang)",

		floor_containment = "Innesperringrom",

		doj_office = "DOJ-kontor"
	},

	emails = {
		title = "OP E-post",
		email_domain = "san-andreas.gov",

		app_title = "E-post",

		error_loading_emails = "Noe gikk galt under forsøk på å laste inn e-postene dine.",

		new_email_notification = "~o~Ny e-post",

		email_label = "E-post",
		password_label = "Passord",
		set_password = "Sett passord",
		inbox = "Innboks",
		outbox = "Sendt",
		new_email = "Ny e-post",

		loading = "Laster inn...",
		failed_load_email = "Klarte ikke å laste inn e-postinnholdet.",

		from_label = "Fra",
		to_label = "Til",

		send_email = "Send",

		no_emails = "Ingen e-poster.",
		to_email = "til ${email}",

		error_no_subject = "Mangler e-postemne.",
		error_invalid_target = "Ugyldig måle-post.",
		error_subject_too_long = "E-postemne for langt.",
		error_body_too_long = "E-postinnhold for langt.",
		error_body_missing = "Mangler e-postinnhold.",
		error_failed_send = "Klarte ikke å sende e-post.",
		error_password_empty = "Passord kan ikke være tomt.",
		error_password_update_failed = "Klarte ikke å oppdatere passordet."
	},

	emote_items = {
		give_item = "[${InteractionKey}] Gi ${itemName}",
		received_item = "${firstName} ga deg en ${itemName}.",
		give_item_success = "Gav ${itemName} til spilleren.",
		give_item_failed = "Klarte ikke å gi ${itemName} til spilleren."
	},

	exclusive_dealership = {
		marker_label = "${label} | $${price}",
		marker_label_purchase = "[${SeatEjectKey}] Kjøp ${label} for $${price}",

		confirm_purchase = "Bekreft kjøp",
		confirm_purchase_label = "${label} | $${price}",

		deny_purchase = "Aldri sinn, jeg vil ikke ha det",
		accept_purchase = "Ja, jeg vil kjøpe den",
		accept_purchase_info = "Er du sikker på at du vil kjøpe dette kjøretøyet? Denne handlingen kan ikke angres.",

		purchased_vehicle = "Kjøpt en ${label} for $${price}.",
		insufficient_funds = "Dårlig med midler.",
		area_not_clear = "Området for å spawne kjøretøyet er ikke klart.",
		invalid_package = "Feil supporter-pakke.",
		something_went_wrong = "Noe gikk galt.",

		failed_vehicle_spawn = "Klarte ikke å spawne kjøretøyet. Kjøretøyet vil fremdeles være i garasjen din.",

		next_rotation_in = "Neste rotasjon om: ${time}",

		exclusive_dealership_blip = "Eksklusivt Deluxe Bilverksted",
		exclusive_buyback_blip = "Prestige Wheels Exchange",

		buyback_vehicle_help = "Trykk ~INPUT_CONTEXT~ for å åpne Exchange.",
		buyback_title = "Prestige Wheels Exchange",
		sell_closest_vehicle = "Vil du selge ${label}-en din for $${price} (${percent}% av prisen)?",
		deny_sale = "Nei, jeg vil beholde den",
		accept_sale = "Ja, jeg er sikker",
		accept_sale_description = "Er du sikker på at du vil selge kjøretøyet ditt for $${price}? Dette kan ikke angres.",
		are_you_sure_sell = "Er du sikker på at du vil selge kjøretøyet?",
		no_vehicle_to_sell = "Ingen kjøretøy i nærheten for salg.",
		vehicle_not_owned = "Du eier ikke dette kjøretøyet.",
		sale_success = "Du har solgt `${label}`-en din for $${price} suksessfullt.",

		sale_log_title = "EDM Tilbakekjøp",
		sale_log_description = "${consoleName} solgte deres `${label}` for $${price}.",

		log_title = "EDM Kjøp",
		log_description = "Kjøpt `${label}` for $${price}."
	},

	failures = {
		engine_failure_chance = "Satte sjansen for motorfeil til `${chance}`.",
		failure_chance_invalid = "Sjansen for motorfeil må være mellom 1 og 1500.",
		engine_failure_reset = "Nullstil sjansen for motorfeil til standard."
	},

	fake_ids = {
		press_to_purchase = "Trykk ~INPUT_CONTEXT~ for å kjøpe falsk-ID.",

		store_title = "Falsk-ID Butikk",

		female_id = "Kvinnelig falsk-ID",
		male_id = "Mannlig falsk-ID",
		close_menu = "Lukk Meny",

		logs_purchased_title = "Kjøpt Falsk-ID",
		logs_purchased_details = "${consoleName} kjøpte en ${type} (${firstName} ${lastName} #${characterId}).",

		something_went_wrong = "Noe gikk galt.",
		failed_not_on_duty = "Du må være på vakt for å kjøpe en Falsk-ID.",
		failed_not_enough_money = "Du har ikke nok penger til å kjøpe en Falsk-ID.",
		purchase_success = "Kjøpet av en Falsk-ID for $3,000 var vellykket."
	},

	fingerprint = {
		taking_fingerprint = "Tar Fingeravtrykk",
		already_fingerprinting = "Du tar allerede fingeravtrykk av en spiller.",
		sample_no_player = "Ingen spiller i nærheten du kan ta fingeravtrykk av.",
		sample_no_bags = "Du har ingen bevisposer.",
		fingerprint_evidence = "Fingeravtrykk",

		evidence_failed = "Kunne ikke ta fingeravtrykk.",

		evidence_text = "Bevistype: Fingeravtrykk\nFingeravtrykk av ${fullName} #${characterId}\n\nEkstra informasjon:\n • Tidspunkt for innsamling: ${time}"
	},

	fireworks = {
		fire_firework = "[${InteractionKey}] Fyrverkeri"
	},

	flag_swap = {
		toggle_flag_swap_no_permissions = "Forsøkte å veksle flaggutvekslinger uten tilstrekkelige tillatelser.",

		toggled_flag_swap_on = "Vekslet flaggutvekslinger på.",
		toggled_flag_swap_off = "Byttet flaggbytte av.",

		showing_flags = "Viser flagg.",
		not_showing_flags = "Viser ikke lenger flagg.",

		flag_swap_leaderboard = "Flaggbytter Leaderboard",
		ongoing = "Pågår",
		not_ongoing = "Ikke pågår",
		position_and_name = "${position}. ${name}",
		flag_count = "${flags} flagg",
		players_with_most_flags_will_show_here = "Spillerne med flest flagg vil vises her."
	},

	forcefields = {
		invalid_radius = "Ugyldig radius (må være mellom 1 og 200).",
		failed_create = "Kunne ikke opprette kraftfelt.",
		forcefield_marker = "ID: ${id}",
		invalid_forcefield_id = "Ugyldig forcefield ID.",
		failed_destroy = "Kunne ikke ødelegge forcefield.",

		create_forcefield_no_permissions = "Spiller prøvde å opprette en forcefield, men hadde ikke tillatelse til å gjøre det.",
		destroy_forcefield_no_permissions = "Spiller prøvde å ødelegge en forcefield, men hadde ikke tillatelse til å gjøre det."
	},

	fortnite = {
		add_building_no_permissions = "Spiller prøvde å legge til en Fortnite-bygning, men hadde ikke tillatelse til å gjøre det.",
		wipe_buildings_no_permissions = "Spilleren forsøkte å fjerne Fortnite-bygninger, men hadde ikke nødvendige tillatelser for å gjøre det.",

		no_buildings_in_radius = "Det finnes ingen bygninger innenfor en radius på ${radius}.",
		no_buildings = "Det finnes ingen bygninger.",
		wiped_buildings_in_radius = "Fjernet ${removedBuildings} bygninger innenfor en radius på ${radius}.",
		wiped_buildings = "Fjernet ${removedBuildings} bygninger."
	},

	freecam = {
		enabled_freecam = "Fri kamera-modus aktivert.",
		disabled_freecam = "Fri kamera-modus deaktivert.",
		freecam_failed = "Kunne ikke aktivere fri kamera-modus. Har du noclip eller liknende aktivert?",

		freecam_logs_title = "Fri kamera til/fra satt på",
		freecam_on_logs_details = "${consoleName} satte på fri kamera.",
		freecam_off_logs_details = "${consoleName} slo av fri kamera.",

		track_player_logs_title = "Sporer",
		track_player_logs_details = "${consoleName} satte ${targetName} som sporingmål ved hjelp av kamerabevgelse.",

		freecam_no_permission = "Forsøkte å slå på fri kamera uten nødvendig tillatelse.",
		track_player_no_permission = "Forsøkte å spore en spiller med fri kamera uten nødvendig tillatelse.",

		freecam_inactive = "Du er ikke i frilegemodus nå.",
		added_point = "La til kamerapunkt ved indeks ${index} (Overgang: ${transition}ms).",
		disable_freecam = "Deaktivér frilegemodus for å spille inn punkter.",
		not_enough_points = "Du må ha minst 2 punkter for å spille av.",
		already_replaying = "Du spiller allerede av kamerapunktene.",
		cleared_points = "Tømt alle kamerapunktene.",
		replaced_point = "Erstattet kamerapunkt ved indeks ${index} (Overgang: ${transition}ms).",
		moved_to_point = "Flyttet frilegemodus til kamerapunkt ${index} (Overgang: ${transition}ms).",
		invalid_point_index = "Ugyldig kameralokasjonsindeks."
	},

	frisk = {
		frisk_no_player = "Ingen spillere i nærheten som du kan kroppsvisitere.",
		already_frisking = "Du kroppsvisiterer allerede en spiller.",
		frisk_failed = "Kunne ikke utføre kroppsvisitering.",
		frisking = "Kroppsvisiterer spiller",

		frisk_category_0 = "Ser ikke ut til å ha noen våpen.",
		frisk_category_1 = "Ser ut til å muligens ha et våpen.",
		frisk_category_2 = "Ser ut til å ha et våpen.",
		frisk_category_3 = "Ser ut til å definitivt ha et stort våpen.",
		frisk_category_4 = "Har definitivt et stort våpen."
	},

	fruits = {
		pick_fruit = "[${InteractionKey}] Plukk ${fruit}",
		picking_fruit = "Plukker ${fruit}",

		shake_tree = "Trykk ~INPUT_CONTEXT~ for å riste treet.",
		shaking_tree = "Rister treet",

		tree_klonk = "Noe falt fra treet og traff hodet ditt."
	},

	gas_masks = {
		gas_grenade = "Gassgranat",
		in_gas_circle = "I en gass-sirkel!",
		not_in_gas_circle = "Ikke i en gass-sirkel.",
		gas_time_left = "Du har ${gasTime} sekunder igjen av gassmasken.",
		hold_to_take_gas_mask_off = "Hold ~INPUT_VEH_HEADLIGHT~ for å ta av gassmasken.",
		hold_to_take_gas_mask_off_holding = "Fortsett å holde for å ta av gassmasken."
	},

	gps = {
		altitude = "Høyde",
		latitude = "Breddegrad",
		longitude = "Lengdegrad",
		speed = "Fart",

		distance = "Avstand",
		heading = "Retning",

		reset_target = "Nullstill GPS-mål.",
		set_gps_target = "Sett GPS-mål til ${x}, ${y}.",
		gps_blip = "GPS Mål",
		no_gps_item = "Du har ikke en GPS.",

		collar_no_target = "Denne halsbåndet har ingen telefon koblet til.",
		collar_timeout = "Du har nettopp sendt en ping, vent litt før du sender en annen.",
		collar_sent = "Ping sendt til ${firstName} ${lastName} (${phoneNumber})",

		mph = "mph",
		kph = "kph",
		ft = "ft",
		m = "m",
		km = "km",
		mi = "mi",
		deg = "deg"
	},

	gravity = {
		gravity_success_on = "Slått av tyngdekraften for ${consoleName}.",
		gravity_success_off = "Slått på tyngdekraften igjen for ${consoleName}.",
		gravity_client_failed = "Klarte ikke å bytte tyngdekraft for ${consoleName}.",
		gravity_failed = "Noe gikk galt ved forsøk på å bytte tyngdekraft.",
		invalid_server_id = "Ugyldig server-id.",
		yourself = "deg selv"
	},

	gravity_gun = {
		name_override = "Gravitasjonskanon",

		failed_item_spawn = "Klarte ikke å spawne gravitasjonskanon-objektet."
	},

	grills = {
		campfire = "Bål",
		use_campfire = "[${InteractionKey}] Bruk bål",
		grill = "Grill",
		use_grill = "[${InteractionKey}] Bruk grill"
	},

	gumballs = {
		use_gumball_machine = "[${InteractionKey}] Sett inn mynt",
		using_gumball_machine = "Setter inn mynt",
		not_enough_money = "Du har ikke nok penger til å kjøpe en tyggis.",
		something_went_wrong = "Noe gikk galt under forsøket på å kjøpe en tyggis.",

		flavor = "Tyggis (${flavor})"
	},

	gun_running = {
		insert_key = "Sett inn nøkkel: ${key}",
		wrong_key = "Du brukte feil nøkkel.",
		decrypting = "Dekryptering",
		guns_disabled = "Våpenhandel er for øyeblikket deaktivert.",
		high_level_cooldown = "Kunne ikke opprette kobling til FIB-server, prøv igjen senere.",
		failed_start_run = "Kunne ikke starte våpenlevering.",
		hack_timeout = "Tilkobling til server mistet, prøv igjen.",

		drop_blip = "Våpenbeholder",

		drill_container = "Trykk ~INPUT_CONTEXT~ for å bore opp beholderen.",

		drilling_container = "Borer opp beholderen",
		failed_drill = "Klarte ikke å bore opp beholderen.",
		drill_success = "Beholderen ble vellykket boret opp og 1x ${item} ble funnet.",

		started_run_logs_title = "Våpenleveranse",
		started_run_logs_details = "${consoleName} startet våpenleveranse-hacking.",
		finished_run_logs_title = "Våpenleveranse levert",
		finished_run_logs_details = "${consoleName} boret opp våpenbeholderen og mottok 1x ${item}."
	},

	gun_trader = {
		press_e_to_talk = "Trykk ~INPUT_CONTEXT~ for å snakke med Jim.",
		trader_closed = "Jim's butikk er for øyeblikket stengt.",

		trader_locked = "Jim trenger noen ting fra deg før han er villig til å åpne butikken sin.",
		unlock_trader = "Gi gjenstanden til Jim.",

		purchase = "Kjøp",
		out_of_stock = "Utsolgt",

		failed_trader_closed = "Klarte ikke å kjøpe våpen, Jim's butikk er stengt.",
		failed_no_stock = "Klarte ikke å kjøpe våpen, det er ikke mer på lager.",
		failed_no_money = "Klarte ikke å kjøpe våpen, du har ikke nok penger.",
		failed_something_went_wrong = "Kunne ikke kjøpe våpen, noe gikk galt.",
		failed_trader_not_locked = "Kunne ikke låse opp, Jims butikk er allerede ulåst.",
		failed_no_item = "Kunne ikke låse opp, Jim trenger ikke den gjenstanden.",
		failed_no_enough_items = "Kunne ikke låse opp, du har ikke nok av den gjenstanden.",

		bought_gun_logs_title = "Jims våpenbutikk",
		bought_gun_logs_details = "${consoleName} kjøpte 1x ${itemName} for $${price} fra Jim.",

		trader_active = "Butikk (åpen)",
		trader_inactive = "Butikk (stengt)",

		slogan_1 = "Husk den første regelen i en skuddveksling er...å ha et våpen!",
		slogan_2 = "Våpen har bare to fiender: Rust og politikere.",
		slogan_3 = "Når i tvil ... dra den ut!",
		slogan_4 = "En pistol i hånden er bedre enn en politibetjent på telefonen.",

		copyright = "Opphavsrett © 2009-2016 Jim's Våpenbutikk NC. Alle rettigheter reservert."
	},

	hacking = {
		local_disk = "Lokal disk (C:)",
		network = "Nettverk",
		external_device = "Eksternt enhet (J:)",
		hack_connect = "HackConnect.exe",
		brute_force = "BruteForce.exe",

		my_computer = "Min datamaskin",
		power_off = "Slå av",

		password_cracked = "Passord knust!",
		brute_force_failed = "Bruteforce feilet!",

		writing_data = "Skriver data til buffer...",
		executing_code = "Utfører ondsinnet kode...",
		memory_leak_detected = "Minnelekkasje oppdaget, stenger ned..."
	},

	halloween = {
		is_in_school = "Er på skolen: ${isInSchool}",
		yes = "Ja",
		no = "Nei",
		press_to_hide_in_locker = "Trykk ~INPUT_CONTEXT~ for å gjemme deg i skapet.",
		locker_is_occupied = "Skapet er opptatt.",
		press_to_exit_locker = "Trykk ~INPUT_CONTEXT~ for å forlate skapet.",
		failed_to_start_escape_room = "Kunne ikke starte rømningsrom.",
		started_escape_room = "Startet rømningsrom med ${playerAmount} spillere.",
		start_escape_room_missing_permissions = "Spilleren prøvde å starte et rømningsrom, men hadde ikke de nødvendige tillatelsene til å gjøre det.",
		escape_instructions = "Når du er ferdig, vil dørene låse opp og du vil kunne forlate bygningen.",
		answer_the_phone = "Svar på telefonen.",

		-- NOTE: temp
		none = "Ingen"
	},

	health = {
		successfully_revived_player = "Spilleren ${consoleName} ble gjenopplivet.",
		successfully_revived_player_removed_injuries = "Spilleren ${consoleName} ble gjenopplivet og skadene ble fjernet.",
		successfully_revived_everyone = "Alle ble gjenopplivet.",
		successfully_revived_everyone_removed_injuries = "Alle ble gjenopplivet og skadene ble fjernet.",
		failed_to_revive = "Klarte ikke å utføre `/revive`-kommandoen riktig.",
		revive_player_not_staff = "Spilleren forsøkte å gjenopplive en annen spiller, men hadde ikke de nødvendige tillatelsene til å gjøre det.",
		revive_self_not_staff = "Spilleren forsøkte å gjenopplive seg selv, men hadde ikke de nødvendige tillatelsene til å gjøre det.",
		revived_self_removed_injuries_title = "Gjenopplivet seg selv og fjernet skader",
		revived_self_removed_injuries_details = "${consoleName} gjenopplivet seg selv og fjernet sine skader.",
		revived_self_title = "Vekket til live selv",
		revived_self_details = "${consoleName} har vekket seg selv til live.",
		revived_everyone_removed_injuries_title = "Vekket alle og fjernet skader",
		revived_everyone_removed_injuries_details = "${consoleName} har vekket alle og fjernet deres skader.",
		revived_everyone_title = "Vekket alle til live",
		revived_everyone_details = "${consoleName} har vekket alle til live.",
		revived_player_removed_injuries_title = "Vekket spiller og fjernet skader",
		revived_player_removed_injuries_details = "${consoleName} har vekket ${targetConsoleName} og fjernet deres skader.",
		revived_player_title = "Gjenopplivet spiller",
		revived_player_details = "${consoleName} gjenopplivet ${targetConsoleName}.",
		get_recent_deaths_not_staff = "Spilleren forsøkte å se nylige dødsfall, men hadde ikke riktige tillatelser.",
		get_player_last_death_not_staff = "Spilleren forsøkte å se en spillers siste død, men hadde ikke riktige tillatelser.",
		recent_deaths = "Nylige dødsfall",
		no_recent_deaths = "Det er ingen nylige dødsfall.",
		recent_deaths_list_entry = "${recentDeathId}. ${consoleName} døde for ${timer} sekunder siden.",
		target_user_not_found = "Målbruker ikke funnet.",
		no_server_id_sent = "Ingen server-ID sendt.",
		no_permissions = "Ingen tillatelser.",
		user_not_found = "Bruker ikke funnet.",
		player_death = "Spillerdød",
		player_death_recent = "${consoleName} døde sist for ${timer} sekunder siden.",
		no_recent_death = "${consoleName} har ikke dødd nylig.",
		death_alcohol_poisoning = "Du besvimte på grunn av alkoholforgiftning.",
		character_has_hardcore_died = "${fullName} har dødd. Du kan velge en annen karakter.",

		death_timer_override_already_set_to = "Tidtaker for overstyring av dødstid er allerede satt til `${time}`.",
		set_death_timer_override = "Dødstidsbegrensningen er endret til `${time}`",
		time_parameter_is_invalid = "Parameteren 'time' er ugyldig.",
		death_timer_override_removed = "Dødstidsbegrensningen er fjernet.",
		no_death_timer_override_set = "Det er ingen dødstidsbegrensning satt.",

		invalid_distance = "Ugyldig rekkevidde for å vekke til live (må være mellom 1 og 50).",
		no_players_in_range = "Ingen spillere i nærheten innenfor en radius på ${distance}m som er nede.",
		successfully_revived_range = "Har vekket til live ${amount} spiller(e) i en ${distance}m radius.",
		failed_revive_range = "Feilet å gjenopplive spillere.",
		range_revive_not_staff = "Spilleren prøvde å gjenopplive spillere innenfor et visst område, men hadde ikke tillatelse til å gjøre det."
	},

	hitmarkers = {
		hitmarkers_enabled = "Treffmarkører aktivert.",
		hitmarkers_disabled = "Treffmarkører deaktivert."
	},

	hud = {
		mph = "miles/t",
		kmh = "km/t",
		knots = "knot",
		ft = "ft",
		m = "m",
		belt = "BELTE",
		limiter = "STYRER",
		fuel = "drivstoff",
		nitro = "nitro",
		battery = "batteri",
		fps = "FPS",
		ping = "PING",
		autopilot = "autopilot",
		ground_asl = "AGL/ASL (${unit})",
		heading = "RETNING",
		gear = "gir",
		rpm = "omdreininger",
		degrees = "°C",
		degrees_f = "°F",
		steps_walked_deaths = "${stepsWalked} skritt ~t~/~w~ ${deaths} nedturer",
		altitude_temperature = "${altitude} ${unit} ~t~/~w~ ${temperature}${degrees}",
		scuba_timer = "Oksygen igjen: ${timer}",

		muted = "Dempet",

		fps_unit = "fps",
		ping_unit = "ms",

		smart_warnings = "Advarsel: ${warnings}!",
		dehydrated = "dehydrert",
		starving = "sulten",
		injured = "skadet",
		seriously_injured = "alvorlig skadet",
		incapacitated = "ubevegelig",
		stressed = "stresset",

		and_seperator = "og",

		toggle_phone_gps_off = "Slått av telefonens gps.",
		toggle_phone_gps_on = "Slått på telefonens gps.",

		advanced_hud_on = "Slått på avansert hud.",
		advanced_hud_off = "Slått av avansert hud.",

		hud_gauges_on = "Slått på hudmåleverktøy.",
		hud_gauges_off = "Slått av hudmåleverktøy."
	},

	hunting = {
		hold_to_skin = "[${InteractionKey}] Hold nede for å flå",
		skinning_animal = "Flår døde dyr",
		meat_too_damaged = "Kjøttet til dette dyret er for skadd.",
		animal_is_being_skinned = "Dyret blir flådd."
	},

	identification = {
		los_santos = "Los Santos",
		citizen_card = "Borgerkort",
		first_name = "Fornavn",
		last_name = "Etternavn",
		gender = "Kjønn",
		gender_male = "Mann",
		gender_female = "Kvinne",
		date_of_birth = "Fødselsdato",
		citizen_id = "Borger-ID",

		citizenship = "Statsborgerskap",
		citizenship_value = "USA",
		surname = "Etternavn",
		issued_on = "Utstedt",
		expires_on = "Utløper",

		month_1 = "Jan",
		month_2 = "Feb",
		month_3 = "Mar",
		month_4 = "Apr",
		month_5 = "Mai",
		month_6 = "Jun",
		month_7 = "Jul",
		month_8 = "Aug",
		month_9 = "Sep",
		month_10 = "Okt",
		month_11 = "Nov",
		month_12 = "Des",

		citizen_card_details = "${firstName} ${lastName} | Fødselsdato: ${dateOfBirth} | Kjønn: ${gender} | Borger-ID: ${characterId}",
		just_showed_citizen_card = "Du viste akkurat et borgerkort. Vennligst vent en stund.",

		hunting_license = "Jaktkort",
		hunting_license_details = "Jaktkort | ${firstName} ${lastName} | Person-ID: ${characterId}",
		fishing_license = "Fiskekort",
		fishing_license_details = "Fiskekort | ${firstName} ${lastName} | Person-ID: ${characterId}",
		pilot_license = "Flysertifikat",
		pilot_license_details = "Flysertifikat | ${firstName} ${lastName} | Person-ID: ${characterId}",
		weapon_license = "Våpenlisens",
		weapon_license_details = "Våpenlisens | ${firstName} ${lastName} | Person-ID: ${characterId}",
		just_showed_license = "Du viste akkurat et førerkort. Vennligst vent litt.",

		just_showed_badge = "Du viste akkurat et legitimasjonsbevis. Vennligst vent litt.",
		sasp_badge = "SASP Legitimasjonsbevis",
		sasp_badge_details = "SASP | ${firstName} ${lastName} | Stilling: ${positionName}",
		bcso_badge = "BCSO Legitimasjonsbevis",
		bcso_badge_details = "BCSO | ${firstName} ${lastName} | Stilling: ${positionName}",
		sahp_badge = "SAHP Legitimasjonsbevis",
		sahp_badge_details = "SAHP | ${firstName} ${lastName} | Stilling: ${positionName}",
		iaa_badge = "IAA Legitimasjonsbevis",
		iaa_badge_details = "IAA | ${firstName} ${lastName} | Stilling: ${positionName}",
		fib_badge = "FIB merke",
		fib_badge_details = "FIB | ${fornavn} ${etternavn} | Stilling: ${stilling}",
		swat_badge = "SWAT merke",
		swat_badge_details = "SWAT | ${fornavn} ${etternavn} | Stilling: ${stilling}",
		management_badge = "Ledelses merke",
		management_badge_details = "Ledelse | ${fornavn} ${etternavn} | Stilling: ${stilling}",
		ems_badge = "EMS ID",
		ems_badge_details = "Ambulanse | ${fornavn} ${etternavn} | Stilling: ${stilling}",
		doctor_badge = "Doktor ID",
		doctor_badge_details = "Doktor | ${fornavn} ${etternavn} | Stilling: ${stilling}",
		bcfd_badge = "BCFD Merke",
		bcfd_badge_details = "BCFD | ${firstName} ${lastName} | Stilling: ${positionName}",
		state_security_badge = "State Security ID",
		state_security_badge_details = "State Security-avdelingen | ${firstName} ${lastName}",
		doj_badge = "DOJ ID",
		doj_badge_details = "DOJ | ${firstName} ${lastName} | Stilling: ${positionName}",
		doc_badge = "FANGEBEVIS",
		doc_badge_details = "DOC | ${firstName} ${lastName} | Stilling: ${positionName}",

		badge_type_sasp = "San Andreas State Police",
		badge_type_bcso = "Blaine County Sheriff's Office",
		badge_type_sahp = "San Andreas Highway Patrol",
		badge_type_iaa = "Internal Affairs Agency",
		badge_type_fib = "Føderalt Etterforskningsbyrå",
		badge_type_swat = "Special Weapons And Tactics",
		badge_type_management = "SASP Ledelse",
		badge_type_ems = "Akuttmedisinsk Tjeneste",
		badge_type_doctor = "Medisinsk Spesialisering",
		badge_type_bcfd = "Brannvesenet i Blaine County",
		badge_type_state_security = "Statens Sikkerhetsdepartement",
		badge_type_doj = "Justisdepartementet",
		badge_type_doc = "Fengselsvesenet",

		badge_type_short_sasp = "SASP",
		badge_type_short_bcso = "BCSO",
		badge_type_short_sahp = "SAHP",
		badge_type_short_iaa = "IAA",
		badge_type_short_fib = "FIB",
		badge_type_short_swat = "SWAT",
		badge_type_short_management = "Ledelse",
		badge_type_short_ems = "AMK",
		badge_type_short_doctor = "Lege",
		badge_type_short_bcfd = "BCFD",
		badge_type_short_state_security = "Statlig sikkerhet",
		badge_type_short_doc = "DOC"
	},

	import_export = {
		press_to_access = "Trykk ~INPUT_CONTEXT~ for å få tilgang til Import/Eksport-menyen.",

		pound = "pund",
		pounds = "pund",
		minutes = "minutter",

		total = "Total",
		header = "Cayo Perico - Import / Eksport",
		header_small = "Send og motta varer fra Cayo Perico raskt og enkelt.",

		loading = "Laster...",

		order_arrived = "Ankommet",
		claim = "Krev",

		claim_cayo = "Krev på Cayo",
		claim_lsia = "Krev på LSIA",

		big_goods = "Store varer",
		go_postal = "Gå til posten",
		caipira = "Caipira Airways",

		no_items = "Ingen varer å sende.",

		confirm_dialog = "Er du sikker på at du vil sende ${total}lbs for $${price}? Dette forsendelsen kan ikke avbrytes.",
		confirm = "Ja",

		no_active_order = "Du har ingen aktiv forsendelse.",
		order_not_completed = "Forsendelsen din har ikke ankommet ennå.",

		order_claimed = "Du har krevd forsendelsen din.",

		not_enough_items = "Du har ikke nok gjenstander å sende.",
		not_enough_money = "Du har ikke nok penger til å opprette forsendelsen.",
		already_has_order = "Du har allerede en aktiv forsendelse.",
		something_went_wrong = "Noe gikk galt.",

		order_success = "Forsendelsen din er på vei! Den vil ankomme om ${minutes} minutter.",

		created_shipment_title = "Forsendelse opprettet",
		created_shipment_details = "${consoleName} har opprettet en forsendelse på ${weight}lbs for $${price} fra ${company}.",

		claimed_shipment_title = "Forsendelse påtatt",
		claimed_shipment_details = "${consoleName} har tatt en forsendelse på ${weight}lbs med ${company}.",

		blip_label = "Import / Eksport"
	},

	injuries = {
		inspect_no_player = "Ingen spiller i nærheten som du kan inspisere.",
		already_inspecting = "Du inspiserer allerede en spiller.",
		inspect_failed = "Kunne ikke inspisere spilleren.",
		inspecting = "Inspiserer spiller",
		no_injuries = "Ingen skader eller blødninger",
		patient_bleeding = "Pasienten blør.",
		injury = "${label} Skade"
	},

	instances = {
		instance_created_added = "Lag en instans med ID `${instanceId}` (Lagt til spillere: ${serverIds}).",
		instance_created = "Opprett en instans med ID-en «${instanceId}».",
		instance_creation_failed = "Kunne ikke opprette en instans.",
		instance_destroyed = "Fjern instansen med ID-en «${instanceId}».",
		instance_destruction_failed = "Kunne ikke fjerne instansen.",
		instance_id_parameter_invalid = "Instans-ID-parameteren er ugyldig.",
		added_player_to_instance = "La til ${consoleName} i instansen med ID-en «${instanceId}.»",
		failed_to_add_player_to_instance = "Kunne ikke legge til spilleren i instansen.",
		server_id_parameter_invalid = "Server-ID-parameteren er ugyldig.",
		removed_player_from_instance = "Fjernet ${consoleName} fra instansen med ID `${instanceId}`.",
		failed_to_remove_player_from_instance = "Kunne ikke fjerne spilleren fra instansen.",
		instance_players = "Spillere i instansen med ID `${instanceId}`: `${players}`.",
		failed_to_get_instance_players = "Kunne ikke hente spillere fra instansen.",
		no_players = "Ingen spillere.",

		instance_hud = "Instans ID: ${instanceId}",

		create_instance_not_developer = "Spilleren forsøkte å opprette en instans, men hadde ikke rettigheter som utvikler.",
		destroy_instance_not_developer = "Spilleren prøvde å ødelegge en instans, men de var ikke en utvikler.",
		add_player_to_instance_not_developer = "Spilleren prøvde å legge til en spiller i en instans, men de var ikke en utvikler.",
		remove_player_from_instance_not_developer = "Spilleren prøvde å fjerne en spiller fra en instans, men de var ikke en utvikler.",
		get_players_from_instance_not_developer = "Spilleren prøvde å få spillere fra en instans, men de var ikke en utvikler."
	},

	interiors = {
		in_interior = "Inne i bygning: ${interiorId} (${portals} porter).",
		in_room_id = "I rom: ${roomId} (${roomName}).",
		total_interiors = "Totalt antall bygninger: ${totalInteriors} (${totalInteriorPortals} totale porter).",
		total_unloaded_interiors = "Totalt antall deaktiverte bygninger: ${totalUnloadedInteriors} (${totalUnloadedInteriorPortals} totale porter).",
		portal_text = "id=${portalId} f=${flags}"
	},

	inventory = {
		access_trunk = "Gå til kjøretøyet for å få tilgang til bagasjerommet.",

		used = "Brukt",
		added = "Lagt til",

		pounds = "pund",

		store = "Lagre",
		gas_station = "Bensinstasjon",
		gas_station_backdoor = "Bakdør til bensinstasjon",
		cleaning_station = "Rengjøringsstasjon",
		grocery_store = "Matbutikk",
		penthouse_fridge = "Kjøleskap",
		mug_shots = "Mugshot-fotografering",
		prison_store = "Fengselsbutikk",
		fruit_vendor = "Fruktforhandler",
		supermarket = "Stor matbutikk",
		island_store = "Øyebutikk",
		travel_agency = "Reisebyrå",
		island_bar = "Øybar",
		burger_bar = "Burgerbar",
		tool_store = "Verktøybutikk",
		gun_store = "Ammu-Nation",
		discount_store = "Rabattbutikk",
		gun_store_with_shooting_range = "Ammu-Nation med skytebane",
		green_wonderland = "Grønt Eventyrland",
		irish_pub = "Irsk Pub",
		bar = "Bar",
		midnight = "Midnight Tunersjappe",
		cinema = "Kino",
		strip_club = "Strippeklubb",
		police_store = "Politiets butikk",
		fib_store = "FIB-butikk",
		police_badge_store = "Politiets merkeskranke",
		doc_badge_store = "Fengselsvesenet Skranke",
		flower_store = "Stacey's Blomsterbutikk",
		gift_store = "Del Perro Gaver",
		ems_store = "EMS-butikk",
		drug_store = "Rusmiddelskap",
		ems_badge_store = "EMS Merkeskranke",
		doj_badge_store = "DOJ merkeskranke",
		state_security_store = "Stats Sikkerhetsbutikk",
		pharmacy = "Apotek",
		chop_shop = "Bilopphuggeri",
		courthouse = "Domstol",
		burger_shot = "Burger Shot",
		burger_shot_fridge = "Burger Shot Kjøleskap",
		erp_shop = "ERP-butikk",
		pet_shop = "Dyrebutikk",
		bean_machine = "Bean Machine",
		hunting_store = "Jaktbutikk",
		fishing_store = "Fiskebutikk",
		los_santos_golf_club = "Los Santos Golfklubb",
		arcade_bar = "Arkadebar",
		japanese_restaurant = "Japansk restaurant",
		["945_studios"] = "945 Studios",
		grain_mill = "Kornmølle",
		pd_prefix = "PD",
		ems_prefix = "EMS",
		government_prefix = "Regjering",
		wonderland_prefix = "WL",
		br_prefix = "BR",
		inventory_overweight = "Inventaret ditt veier for mye!",
		vehicle_locked = "Kjøretøyet er låst.",
		press_to_access_store = "Trykk ~INPUT_REPLAY_SHOWHOTKEY~ for å åpne butikken.",
		press_to_access_locker = "Trykk ~INPUT_REPLAY_SHOWHOTKEY~ for å åpne din private safe.",
		press_to_access_shared_storage = "Trykk ~INPUT_REPLAY_SHOWHOTKEY~ for å åpne delt lagring.",

		inspect_weapon = "Serienummeret til ${itemName} ser ut til å være `${itemId}`.",
		inspect_weapon_broken = "Serienummeret til ${itemName} ser ut til å være `${itemId}`, og det virker som om det er helt ødelagt.",

		searching_dumpster = "Søker i søppelcontaineren",

		nameable_title = "Navngi gjenstanden:",

		locker_restricted = "Denne gjenstanden ser ikke ut til å passe i skapet ditt.",

		press_to_access_shredder = "[${InteractionKey}] Tilgang til shredder.",

		invalid_item_id = "Ugyldig gjenstand ID.",
		item_not_found = "Kunne ikke finne gjenstanden med ID `${itemId}`.",
		item_lookup = "${label} (${itemId}) befinner seg nå i ${inventoryName}:${inventorySlot}.",

		big_inventory_disabled = "Tilbakestill karakterens inventarslots til standardverdier.",
		big_inventory_enabled = "Midlertidig økt karakterens inventarslots.",

		press_to_open_public_inventory = "~INPUT_REPLAY_SHOWHOTKEY~ Åpne ${label}",

		burgershot_counter = "Burgershot Skranke",

		inventory_name_missing = "Mangler navn på inventarparameteren.",

		shredder_title = "Papirdestruksjon",
		shredder_description = "Advarsel: Enhver gjenstand som flyttes inn her vil bli slettet umiddelbart og kan ikke bli gjenopprettet.",

		npc_vehicle_inventory = "NPC-inventar",

		store_help = "For å kjøpe noe, dra en gjenstand fra sekundær-inventaret til ditt eget.",
		store_tax = "Butikkavgift",
		store_tax_percentage = "${tax}%",

		missing_job = "Du har ikke den nødvendige jobben for å bruke denne inventaren.",

		item_is_broken = "Dette elementet er ødelagt.",
		battle_royale_item = "Dette elementet kan bare brukes i Battle Royale-kamper.",
		battle_royale_item_disallowed = "Dette elementet er ikke tillatt i Battle Royale-kamper.",

		broken_food = "Dette elementet er ødelagt.",
		broken_drugs = "Dette elementet er utgått på dato.",
		vape_empty = "Denne e-sigaretten er tom.",

		craft_combine = "Lag <i>${output}</i>",
		combining = "Lager",

		carve_jack_o_lantern = "Skjær ut <i>Jack-o-lantern</i>",
		crush_cocoa_beans = "Knus <i>kakaobønner</i>",
		mix_hot_chocolate = "Bland <i>varm sjokolade</i>",
		crush_raw_ruby = "Knus <i>rå rubin</i>",
		crush_raw_sapphire = "Knus <i>rå safir</i>",

		search = "Søk",
		amount = "Mengde",
		use = "Bruk",
		close = "Lukk",

		done = "FERDIG",
		burnt = "BRENT",
		danger = "FARE",
		fuel = "Brennstoff: ${fuel}",

		item_does_stack = "Dette objektet stables.",
		item_does_not_stack = "Dette objektet stables ikke.",
		individual_weight = "Individuell vekt",
		stack_amount = "Stabelmengde",

		logs_secondary_inventory_title = "Sekundært lager åpnet",
		logs_secondary_inventory_details = "${consoleName} åpnet en sekundær oppbevaring med navn `${inventoryName}`.",
		logs_ground_inventory_created_title = "Ground Inventory Opprettet",
		logs_ground_inventory_created_details = "${consoleName} opprettet en ground inventory med navn `${inventoryName}`.",

		logs_item_moved_title = "Gjenstand Flyttet",
		logs_item_moved_details = "${consoleName} flyttet ${moveAmount}x ${itemLabel} til ${endInventory}:${endSlot} fra inventory ${startInventory}:${startSlot}.",

		logs_item_purchased_title = "Gjenstand(er) Kjøpt",
		logs_item_purchased_no_tax_details = "${consoleName} kjøpte ${purchaseAmount}x `${itemLabel}` for $${purchaseCost}.",
		logs_item_purchased_tax_details = "${consoleName} kjøpte ${purchaseAmount}x `${itemLabel}` for $${purchaseCost} med en ekstra $${taxCost} på grunn av en salgsavgift på ${salesTaxPercentage} %.",

		radius_invalid = "En radius på `${radius}` er ikke en gyldig verdi.",
		wiped_all_ground_inventories = "Tømte ${inventoriesWiped} bakkeinventarer.",
		wiped_nearby_ground_inventories = "Tømte ${inventoriesWiped} bakkeinventarer innen en radius på `${radius}`.",
		failed_to_wipe_ground_inventories = "Klarte ikke å slette inventar på bakken.",
		no_ground_inventories = "Det var ingen inventar på bakken å slette.",
		no_ground_inventories_within_radius = "Det var ingen inventar på bakken å slette innenfor en radius på `${radius}`.",

		wipe_inventories_not_staff = "Spilleren prøvde å slette inventar, men hadde ikke tilstrekkelige tillatelser til å gjøre det.",

		logs_wiped_all_ground_inventories_title = "Slettet alle inventarer på bakken",
		logs_wiped_all_ground_inventories_details = "${consoleName} slettet alle inventarer på bakken.",

		logs_wiped_nearby_ground_inventories_title = "Tømte nabobakker",
		logs_wiped_nearby_ground_inventories_details = "${consoleName} tømte alle bakker innenfor en radius på `${radius}`.",

		logs_combined_title = "Kombinerte gjenstander",
		logs_combined_details = "${consoleName} kombinerte ${inputs} for å lage 1x ${output}.",

		press_use_campfire = "[${InteractionKey}] Bruk bålet",
		use_campfire = "Bruk bålet",

		dumpster_sandwich = "Muggen sandwich",
		dumpster_beer = "Gammel øl",
		dumpster_milk = "Utgått due-melk",
		dumpster_meat = "Støvete kjøtt (litt muggent)",
		dumpster_fries = "Gamle pommes frites",
		dumpster_brownies = "Tørkede brownies",
		dumpster_pizza_slice = "Muggen pizzabit",
		dumpster_banana = "Hårete banan (veldig myk)",

		-- items & item descriptions
		body_armor = "Kroppsbeskyttelse",
		body_armor_description = "Beskytt deg selv og vær klar for krig, eller bare en vanlig dag på gatene i Los Santos.",
		first_aid_kit = "Førstehjelpssett",
		first_aid_kit_description = "Gjør-det-selv-doktor-kit.",
		bandages = "Bandasjer",
		bandages_description = "For alle typer sår og skrubbsår.",
		oxygen_tank = "Oksygentank",
		oxygen_tank_description = "Et lungeutvidelsespakke.",
		ifak = "IFAK",
		ifak_description = "\"PD-strømpakke som sikrer seieren når den brukes. Å ta mer enn 1 vil resultere i følelser av enkel seier i tillegg til utdeling av deltakerpris til kriminelle når de går ned.\"<br><br>-Joe, 2020",

		citizen_card = "Borgerskort",
		citizen_card_description = "Virker som identifikasjon, våpenlisens og førerkort.",
		phone = "Telefon",
		phone_description = "never:tm:",
		radio = "Radio",
		radio_description = "Nyttig verktøy for alle metagamerne der ute!",
		smart_watch = "Smartklokke",
		smart_watch_description = "Misliker å måtte ha kontanter overalt? Bruk din smartklokke! Den har også innebygd kompass, klokke, GPS og skrittteller. Men ikke ta en løpetur kl. 02.00 på natten.",
		tablet = "Nettbrett",
		tablet_description = "En stor telefon.",

		gps = "GPS",
		gps_description = "Dekk alle dine gadget-behov.",

		gps_collar = "GPS halsbånd",
		gps_collar_description = "Et GPS-halsbånd for å spore dyrene dine.",

		boosting_tablet = "Boosting-nettbrett",
		boosting_tablet_description = "Brukes for å skaffe _helt_ lovlige kontrakter.",

		hunting_license = "Jaktlisens",
		hunting_license_description = "En jaktlisens for jakt.",
		fishing_license = "Fiskelisens",
		fishing_license_description = "En fiskelisens for fiske.",
		pilot_license = "Pilotlisens",
		pilot_license_description = "En pilotlisens for å fly fly og annet.",
		weapon_license = "Våpenlisens",
		weapon_license_description = "En våpenlisens for å eie og bære høyere klassifiserte våpen.",

		sasp_badge = "SASP merke",
		sasp_badge_description = "Et merke for offiserer i San Andreas politidepartement.",
		sahp_badge = "SAHP merke",
		sahp_badge_description = "Et merke for offiserer i San Andreas highway-patruljen.",
		bcso_badge = "BCSO merke",
		bcso_badge_description = "Et merke for hjelpesheriffer i Blaine County sheriffkontor.",
		iaa_badge = "IAA merke",
		iaa_badge_description = "Et merke for agenter i Internal Affairs Agency.",
		fib_badge = "FIB merke",
		fib_badge_description = "Et merke for agenter i Federal Investigation Bureau.",
		swat_badge = "SWAT-skilt",
		swat_badge_description = "Et skilt for offiserer i Spesialstyrken og Taktikk-avdelingen.",
		management_badge = "Ledelsesskilt",
		management_badge_description = "Et skilt for agenter i SASP Ledelsesdivisjon.",
		ems_badge = "EMS ID",
		ems_badge_description = "En ID for EMS-paramedic.",
		doctor_badge = "Lege-ID",
		doctor_badge_description = "En ID for leger.",
		bcfd_badge = "BCFD",
		bcfd_badge_description = "Et skilt for brannmenn i Blain County brannvesen.",
		state_security_badge = "Statlig Sikkerhet ID",
		state_security_badge_description = "En identifikasjon for agenter i det statlige sikkerhetsapparatet.",
		doj_badge = "DOJ Merke",
		doj_badge_description = "Et merke for ansatte i Justisdepartementet.",
		doc_badge = "FANGEBEVIS",
		doc_badge_description = "Et bevis for ansatte i Fengselsvesenet.",

		radio_chop_shop = "Chop Shop Radio",
		radio_chop_shop_description = "Brukes til å motta informasjon om 'varme' biler fra de fiktive personene som opererer chop shoppen.",

		binoculars = "Kikkert",
		binoculars_description = "Et must-have gadget for alle som lusker rundt i Los Santos!",
		photo_camera = "Fotokamera",
		photo_camera_description = "Nikon og Igna har utviklet det siste profesjonelle kameraet på markedet. Med sin avanserte linse (70-300mm f / 4.5-5.6E), kan du fange selv de fineste detaljene, selv små ting på bakken.",

		remote_camera = "Fjernkamera",
		remote_camera_description = "Et kamera som kan plasseres hvor som helst og kan sees fra avstand.",
		remote_monitor = "Fjernmonitor",
		remote_monitor_description = "En bærbar skjerm som kan brukes til å se på fjernkameraer.",

		handcuffs = "Håndjern",
		handcuffs_description = "For den fulle ERP-opplevelsen.",
		bolt_cutter = "Boltsaks",
		bolt_cutter_description = "ERP var ikke så gøy som forventet...",
		drill = "Drill",
		drill_description = "Jeg satser på at mange mennesker i nærheten vil ha bruk for denne... med tanke på hvor mange som ser ut til å ha noen løse skruer.",
		umbrella = "Paraply",
		umbrella_description = "Fremhev din indre Poppins.",
		watch = "Klokke",
		watch_description = "Ingen tid til forsiktighet.",
		compass = "Kompass",
		compass_description = "43.3068 N 0.7668 W",
		map = "Kart",
		map_description = "Viser deg hvor du skal og hvor du har vært. Eller kanskje du var der borte?",
		glass_breaker = "Nødbilvindu-knuser",
		glass_breaker_description = "Brukes til å knuse bilvinduer i nødstilfeller.",

		picture = "Bilde",
		picture_description = "Samle alle minnene om deg og vennene dine.",

		brochure = "Brosjyre",
		brochure_description = "En hjelpsom brosjyre for å komme i gang i byen.",

		basic_repair_kit = "Enkel reparasjonskit",
		basic_repair_kit_description = "Får ting til å fungere, men akkurat såvidt.",
		advanced_repair_kit = "Avansert reparasjonssett",
		advanced_repair_kit_description = "Brukes til å reparere ødelagte sjeler.",
		basic_lockpick = "Enkel låsåpner",
		basic_lockpick_description = "Brukes til å låse opp låser",
		advanced_lockpick = "Avansert låsåpner",
		advanced_lockpick_description = "Skjul barna dine, skjul kona di",
		cleaning_kit = "Rengjøringssett",
		cleaning_kit_description = "Perfekt for å rengjøre kjøretøyet ditt, eller blodflekkene du har latt tørke bak i bagasjerommet.",

		microphone_bug = "Mikrofonavlytter",
		microphone_bug_description = "Brukes til å avlytte samtaler.",
		vehicle_tracker = "Kjøretøy-sporing",
		vehicle_tracker_description = "Denne sporingen er akkurat det Michael trenger, som i over syv år har hatt mistanke om at kona hans, Amanda, er utro med tennistreneren han skaffet henne.",
		device_scanner = "Enhetsskanner",
		device_scanner_description = "Brukes til å søke etter nærliggende spion-enheter.",
		radio_decryptor = "Radio Dekrypter",
		radio_decryptor_description = "Dekrypterer radiokanaler hvis tilkoblet en radio.",

		paper_bag = "Papirpose",
		paper_bag_description = "Perfekt for å lagre dagligvarer eller kanskje noen sitt hode, levende eller død.",
		burger_shot_delivery = "Burger Shot-måltid",
		burger_shot_delivery_description = "En fantastisk samling av alle de saftige kjøttgodbitene de serverer.",
		bean_machine_delivery = "Bean Machine-levering",
		bean_machine_delivery_description = "En pose full av herlige godsaker fra en liten kaffebar i uptown.",

		ear_defenders = "Øreklokker",
		ear_defenders_description = "Brukes til å beskytte ørene mot høye lyder.",

		clothing_bag = "Klespose",
		clothing_bag_description = "Ikke bekymre deg for mote-nødssituasjoner igjen! Klesposen lar deg lagre ditt favorittantrekk og umiddelbart utstyre det hvor som helst du går. Denne posen har all magien til en fe-gudmor, minus bibbidi-bobbidi-boo.",

		raw_morganite = "Rå Morganitt",
		raw_morganite_description = "Morganitt i sin naturlige form, fersk fra gruven.",
		raw_ruby = "Rå Rubin",
		raw_ruby_description = "Rubin i sin naturlige form, fersk fra gruven.",
		raw_sapphire = "Rå Safir",
		raw_sapphire_description = "Safir i sin naturlige form, fersk fra gruven.",
		raw_emerald = "Rå Smaragd",
		raw_emerald_description = "Smaragd i sin naturlige form, fersk fra gruven.",

		ruby_dust = "Rubin Støv",
		ruby_dust_description = "Støv fra en Rubin.",
		sapphire_dust = "Safir Støv",
		sapphire_dust_description = "Støv fra en safir.",

		morganite = "Morganitt",
		morganite_description = "Kuttet og polert morganitt.",
		ruby = "Rubin",
		ruby_description = "Kuttet og polert rubin.",
		sapphire = "Safir",
		sapphire_description = "Kuttet og polert safir.",
		emerald = "Smaragd",
		emerald_description = "Kuttet og polert smaragd.",

		ring = "Ring",
		ring_description = "Bare en blank ring.",

		morganite_ring = "Morganitt Ring",
		morganite_ring_description = "En pen ring med en stor morganitt i midten. Perfekt for bryllup, beste venner eller ukjente.",
		ruby_ring = "Rubinring",
		ruby_ring_description = "En fin ring med en stor rubin i midten. Perfekt for bryllup, beste venner eller helt fremmede.",
		sapphire_ring = "Safirring",
		sapphire_ring_description = "En fin ring med en stor safir i midten. Perfekt for bryllup, beste venner eller helt fremmede.",
		emerald_ring = "Smaragdring",
		emerald_ring_description = "En fin ring med en stor smaragd i midten. Perfekt for bryllup, beste venner eller helt fremmede.",
		diamond_ring = "Diamantring",
		diamond_ring_description = "En pen ring med en stor diamant i midten. Perfekt for bryllup, bestevenner eller komplett fremmede.",

		gemstone_scanner = "Edelstenskanner",
		gemstone_scanner_description = "Nyttig for å skanne edelstener.",

		extended_clip = "Utvidet magasin",
		extended_clip_description = "Mindre omlading.",
		grip = "Grep",
		grip_description = "Grep for pipa.",
		sight = "Holografisk sikt",
		sight_description = "Hvordan å fikse dårlig sikting.",
		scope = "Sikte",
		scope_description = "Så du kan få avstandsbonusen.",
		suppressor = "Demper",
		suppressor_description = "Bang bang mer som pew pew.",
		flashlight = "Lommelykt",
		flashlight_description = "Se i mørket type greie.",
		extended_pistol_clip = "Utvidet magasin (Pistol)",
		extended_pistol_clip_description = "Mindre behov for å lade om.",
		extended_smg_clip = "Utvidet magasin (SMG)",
		extended_smg_clip_description = "Mindre behov for å lade om.",
		extended_shotgun_clip = "Utvidet magasin (Hagle)",
		extended_shotgun_clip_description = "Mindre behov for å lade om.",
		drum = "Tromme-magasin",
		drum_description = "Trenger aldri å lade om igjen.",
		pistol_sight = "Pistol sikte",
		pistol_sight_description = "Hvordan å fikse dårlig sikte.",

		aluminium_plate = "Aluminiumsplate",
		aluminium_plate_description = "Advarsel: Beskytter ikke mot kuler... crackhead.",
		aluminium_rod = "Aluminiumstang",
		aluminium_rod_description = "Ikke slå vennene dine for hardt over hodet med denne.",
		copper_nugget = "Kobber-nugget",
		copper_nugget_description = "Liten klump av den søte, gyldne brune saken.",
		copper_wire = "Kobbertråd",
		copper_wire_description = "Allsidig ledning som kan brukes til nesten alt elektronisk.",
		lens = "Linse",
		lens_description = "Brukes i briller og mikroskoper, du nerd.",
		polymer_resin = "Polymer harpiks",
		polymer_resin_description = "Ikke den røykbare typen, men likevel neato.",
		screws = "Skruer",
		screws_description = "Hva holder dere på med? Skrur?",
		spring = "Fjær",
		spring_description = "Vet ikke hvorfor, men folk liker å rense disse?",

		grenade_shell = "Granatskall",
		grenade_shell_description = "Et skall for en granat.",
		grenade_pin = "Granatsplint",
		grenade_pin_description = "En splint for en granat.",

		paint = "Maling",
		paint_description = "Nyttig for gjerder og hus, bare ikke begynn å inhalere den.",
		paint_brush = "Malingspensel",
		paint_brush_description = "Nyttig for å male.",

		skin_patriotic = "Patriotisk Hud",
		skin_patriotic_description = "For alle dere rød-blodige amerikanere der ute.",
		skin_brushstroke = "Penselstrøk Hud",
		skin_brushstroke_description = "For alle dere kunstelskere der ute.",
		skin_skull = "Skallehud",
		skin_skull_description = "For alle dere edgy barn der ute.",
		skin_leopard = "Leopardhud",
		skin_leopard_description = "For alle dyreelskere der ute.",
		skin_zebra = "Zebraskinn",
		skin_zebra_description = "For alle dyreelskere der ute.",
		skin_geometric = "Geometrisk skinn",
		skin_geometric_description = "For alle mattegenier der ute.",

		refillable_bottle = "Påfyllbar flaske",
		refillable_bottle_description = "Redd skilpadder på ordentlig.",

		capri_sun = "Capri Sun",
		capri_sun_description = "Deilig godbit fra barndommen.",

		gumball = "Tyggegummi",
		gumball_description = "En tyggegummi, hva mer vil du at jeg skal si?",

		water = "Vann",
		water_description = "Fare! Dihydrogenmonoksid er fargeløs og luktfri. Uhell med inhalering av DHMO kan være dødelig. Langvarig eksponering for dens faste form forårsaker alvorlig skade på vevet. Symptomer på inntak av DHMO kan inkludere overdreven svetting og urinering, og muligens en oppblåst følelse, kvalme, oppkast og ubalansering av kroppens elektrolytter.",
		hamburger = "Hamburger",
		hamburger_description = "Smaken av Amerika!",
		belgian_fries = "Belgiske fries",
		belgian_fries_description = "For bedre smak, DM @Giv3n#0753 og send kun melding med \"fritas\".",
		coke = "Coca-Cola",
		coke_description = "Pablo?",
		wonder_waffle = "Wonder-vaffel",
		wonder_waffle_description = "Vegansk, laktosefri, meierifri, eggfri, glutenfri, økologisk, antibiotikafri, soyafri, uten fruktose, nøttefri, ikke genmodifisert, sukkerfri, fettfri og med lavt karbohydratinnhold",
		cheeseburger = "Cheeseburger",
		cheeseburger_description = "fet, greasy, gummiaktig, dobbel deluxe, soggy dobbel, fet dobbel, ganske bra, stor, fet, kald og fet, vanlig dobbel, stor og fet, saftigst, king-sized, deluxe, ganske bra, dobbel, fet, enkel, trippel, gummiaktig, saftig, syndig, middelmådig, soggy, fet, stor og god, gratis",
		donut = "Smultring",
		donut_description = "Hvorfor er det et hull i midten bwo",
		green_apple = "Grønt eple",
		green_apple_description = "Det er som en Red Bull, men det var ikke noen objekter i spillet som matchet en Red Bull-boks.",
		sandwich = "Sandwich",
		sandwich_description = "Den er vegansk.",
		taco = "Taco",
		taco_description = "El Brayans spesialitet.",
		smores = "S'mores",
		smores_description = "Ja",
		tic_tac = "Tic Tac",
		tic_tac_description = "Oxy? Nei, offiser, jeg spiser bare tic tac!",
		pizza_slice = "Pizzastykke",
		pizza_slice_description = "En liten skive med pizza for deg.",
		hot_dog = "Pølse",
		hot_dog_description = "Gap opp denne glizzyen som om det var din siste.",
		nachos = "Nachos",
		nachos_description = "Nachos gode nok for Encarnación!!",
		vanilla_ice_cream = "Vaniljeis",
		vanilla_ice_cream_description = "For de grunnleggende menneskene uten smak i livet.",
		chocolate_ice_cream = "Sjokoladeis",
		chocolate_ice_cream_description = "Respektabel smak, ikke altfor uvanlig.",
		vanilla_milkshake = "Vaniljemilkshake",
		vanilla_milkshake_description = "En klassisk milkshake fra dineren, perfekt med en burger og fries!",
		chocolate_milkshake = "Sjokolade Milkshake",
		chocolate_milkshake_description = "En fantastisk utseende milkshake, bare håper CIA ikke er ute etter deg før du tar en slurk...",

		dog_food = "Hundefôr",
		dog_food_description = "Hundefôr er mat spesielt formulert og ment for forbruk av hunder og andre relaterte hunder.",
		cat_food = "Kattemat",
		cat_food_description = "Kattemat er mat for forbruk av katter. Katter har spesifikke krav til deres diett-næringsstoffer.",
		dog_treats = "Godbit til hund",
		dog_treats_description = "Deilige godbiter til din favoritt gode gutt.",
		cat_treats = "Godbit til katt",
		cat_treats_description = "Smakfulle godbiter til katten din.",

		burger_buns = "Burgerbrød",
		burger_buns_description = "Legg en kjøttbit mellom disse brødene.",
		cheese = "Ost",
		cheese_description = "Tenk å være laktoseintolerant, taper.",
		lettuce = "Salat",
		lettuce_description = "Den grønne saken de ikke selger på gata.",
		patty = "Burger Patty",
		patty_description = "En dag vil en liten mann finne oppskriften for denne kjøttdeigen, til da får man fortsette å steke burgeren.",
		potato = "Potet",
		potato_description = "Det eneste fra Russland som ikke er en AK-47 eller postordrebrud.",
		raw_fries = "Rå pommes frites",
		raw_fries_description = "I prinsippet bare en potet, men noen la ikke nok innsats i å gjøre den til noe mer.",
		raw_patty = "Rå hamburgerrygg",
		raw_patty_description = "90% ekte kjøtt, de andre 10% forsvant i oversettelsen.",

		apple = "Eple",
		apple_description = "Holder de onde legene på avstand!",
		banana = "Bananskall",
		banana_description = "mistenkelig",
		cherry = "Kirsebær",
		cherry_description = "På toppen (hvis det er din preferanse).",
		kiwi = "Kiwi",
		kiwi_description = "Frukten, ikke dyret. (Ikke å forveksle med A-32)",
		mango = "Mango",
		mango_description = "Vennligst ikke skyt! La bare mangoen være...",
		orange = "Appelsin",
		orange_description = "Du er glad jeg ikke sa banan.",
		peach = "Fersken",
		peach_description = "Ikke en rumpe.",
		pineapple = "Ananas",
		pineapple_description = "Penn, ananas, eple, penn.",
		pomegranate = "Granateple",
		pomegranate_description = "Vær glad for at vi stavet det riktig.",
		strawberry = "Jordbær",
		strawberry_description = "Vanligvis funnet på jorder... for alltid.",
		watermelon = "Vannmelon",
		watermelon_description = "Er det vann eller en melon? Det får vi kanskje aldri vite.",

		banana_peel = "Bananskall",
		banana_peel_description = "Ganske glatt, vær forsiktig når du går på det.",

		beer = "Øl",
		beer_description = "Sint vann.",
		vodka = "Vodka",
		vodka_description = "Russisk stil, sука ебать.",
		tequila = "Tequila",
		tequila_description = "Ikke bekymre deg, det er ingenting som er tilsatt i drikken din. ( ͡° ͜ʖ ͡°)",
		whiskey = "Whiskey",
		whiskey_description = "Bare for de fineste alkoholikerne.",
		cider = "Eplecider",
		cider_description = "Voksen eplejuice.",
		rum = "Rom",
		rum_description = "Tid for å se Pirates of the Caribbean på nytt!",
		absinthe = "Absint",
		absinthe_description = "Advarsel: Inneholder alkohol. La bare barn drikke moderate mengder.",
		wine = "Vin",
		wine_description = "Druice.",

		moonshine = "Hjemmelaget brennevin",
		moonshine_description = "Den beste måten å bli full på uten at myndighetene blir klar over det.",
		yeast_packet = "Gjærpacket",
		yeast_packet_description = "En packet med gjær, brukt til å lage alkohol.",

		kimchi = "Kimchi",
		kimchi_description = "En krydret koreansk siderett laget av gjærede grønnsaker.",
		fish_sauce = "Fish Sauce",
		fish_sauce_description = "En kryddersaus laget av fisk som har blitt tillatt å gjære.",

		pumpkin = "Gresskar",
		pumpkin_description = "En stor oransje grønnsak som brukes til Halloween.",
		cabbage = "Kål",
		cabbage_description = "Perfekt for å lage hjemmelaget kimchi.",

		smoothie = "Smoothie",
		smoothie_description = "Den perfekte blandingen av frukt, grønnsaker og elektrolytter for å kurere selv de verste gaming-induserte hangoverne.",
		blender = "Blender",
		blender_description = "Den ultimate smoothie-blenderen: fordi en balansert frokost er nøkkelen til seier (og en smakfull smoothie skader aldri heller).",

		cocoa_beans = "Kakaobønner",
		cocoa_beans_description = "Små bønner som brukes til å lage sjokolade.",
		cocoa_powder = "Kakao pulver",
		cocoa_powder_description = "Et pulver laget av kakaobønner.",
		hot_chocolate = "Varm sjokolade",
		hot_chocolate_description = "En varm drikke laget av kakaopulver og melk.",

		jack_o_lantern = "Jack O' Lantern",
		jack_o_lantern_description = "En gresskar med et ansikt skåret inn i det.",

		cigarette = "Sigarett",
		cigarette_description = "Hvis du ikke røyker er du en pyse.",
		cigarette_pack = "Sigarettpakke",
		cigarette_pack_description = "For din far som har en sigarettavhengighet (forhåpentligvis kommer han tilbake etter å ha dratt for å kjøpe dem).",

		cocaine_bag = "Kokainpose",
		cocaine_bag_description = "Mindre stykker av colombiansk historie.",
		cocaine_brick = "Kokainstein",
		cocaine_brick_description = "Et stykke colombiansk historie.",
		joint = "Joint",
		joint_description = "420 blaze det, hund",
		oxy = "Oksygen",
		oxy_description = "Har du noen narkotika? Hjelper mot ryggsmerter.",
		antibiotics = "Antibiotika",
		antibiotics_description = "Hjelper deg med å bli kvitt infeksjoner og parasitter.",
		pain_killers = "Smerterstillende",
		pain_killers_description = "Høy salgstid nå, lace, jeg trenger mine narkotika.",
		weed_seeds = "Hasjfrø",
		weed_seeds_description = "Dyrker 420, bro",
		weed_1q = "Weed 1q",
		weed_1q_description = "420 bro",
		weed_1oz = "Weed 1oz",
		weed_1oz_description = "1680 bro",

		oxy_prescription = "Oksygen Resept",
		oxy_prescription_description = "Tvilsom oksygen resept.",

		brownies = "Brownies",
		brownies_description = "Søte, myke og dobbelt så mye sjokolade med en antydning av ekstra 'kick' for å virkelig få deg til å lene deg tilbake og lure på hele livet.",

		ejector_seat = "Utskytningssete",
		ejector_seat_description = "Ejecto Seato Cuz!",
		tuner_chip = "Tuner-chip",
		tuner_chip_description = "Jeg er hastighet.",

		chip = "Chip",
		chip_description = "Kul utseende hackerchip.",
		decryption_key_red = "Rød dekrypteringsnøkkel",
		decryption_key_red_description = "VISSTE DU DET? Den røde mafiaen er faktisk bare en gjeng med pusekatter.",
		decryption_key_green = "Grønn dekrypteringsnøkkel",
		decryption_key_green_description = "VISSTE DU DET? Cola var opprinnelig grønn i fargen.",
		decryption_key_blue = "Blå dekrypteringsnøkkel",
		decryption_key_blue_description = "VISSTE DU DET? Det finnes en fugl med blå føtter? Reference: https://en.wikipedia.org/wiki/Blue-footed_booby",

		ballistic_shield = "Ballistisk skjold",
		ballistic_shield_description = "Dette skjoldet bør brukes når du våger deg inn i RP's bandeland.",

		pet_porg = "Porg-venn",
		pet_porg_description = "Søt og koselig Porg-venn som kan sitte på skulderen din og holde deg med selskap. Denne lille skapningen vil bringe et smil til ansiktet ditt uansett hvor du går.",
		pet_duck = "Kvakkastic Turfølge",
		pet_duck_description = "Med sine glade kvakker og fluffete fjær er denne anden det perfekte turfølget. Den vil gjerne sitte på skulderen din, klar til å utforske verden med deg.",
		pet_cat = "Skulderkoser",
		pet_cat_description = "Denne fluffy katten er alltid klar for en lur, og hva er vel bedre enn å sove på skulderen din? Den vil lykkelig kose seg og maler mens du går rundt.",
		pet_cat_grey = "Late Gizmo",
		pet_cat_grey_description = "Denne lille, grå katten er ultimat i latskap. Den sitter tilfreds på skulderen din, nesten helt stille unntatt for en liten strekk nå og da.",
		pet_chicken = "Fjærkledd Venn",
		pet_chicken_description = "Denne søte lille kyllingen vil gjerne hakke seg rundt på skulderen din, de myke fjærene og nysgjerrige personligheten gjør den til det perfekte følge på ethvert eventyr.",
		pet_shiba = "Labrador Patrulje",
		pet_shiba_description = "Med sin lekne personlighet og myke pels er denne lille shiba-hunden den perfekte sidekicken på ethvert eventyr. Den vil gjerne følge deg dit du går, med halen logrende og en glad bjeff som sprer glede på reisen.",
		pet_mouse = "Rund og lodden",
		pet_mouse_description = "Denne runde og lodne lille chinchillaen er den perfekte følgesvennen for ethvert eventyr. Dens myke pels og lekne personlighet gjør den til den perfekte kosekameraten, og den vil gjerne sitte på skulderen din mens du går om dagen din.",
		pet_raccoon = "Rascal vaskebjørn",
		pet_raccoon_description = "Møt Rascal, den lodne vaskebjørnen som alltid er klar for eventyr. Med en plump kropp og en rampete personlighet vil han gjerne sitte på skulderen din og hjelpe deg med å lete etter skatter. Klar til å bli med på din reise?",

		hotwheels_mcqueen = "Lyntoget McQueen",
		hotwheels_mcqueen_description = "Hastighet Jeg er hastighet, svever som en Cadillac stikker som en Beemer. KATCHOW KATCHOW KATCHOW",
		hotwheels_towmater = "Bil-Mater",
		hotwheels_towmater_description = "Navnet mitt er Mater, som tomat, men uten T-en.",

		boxing_gloves = "Boksehansker",
		boxing_gloves_description = "Gjør deg til Rocky, men du kommer sannsynligvis ikke til å få en oppfølger...",
		leash = "Bånd",
		leash_description = "Ingen vil vite hvorfor du kjøpte dette, men de vil definitivt dømme deg for å ha det.",

		shrooms = "Sopper",
		shrooms_description = "Noen sa at man kan putte disse på pizza, men nå putter pizzaen seg selv på meg... vent, hvem er jeg?",

		bucket = "Bøtte",
		bucket_description = "Kan brukes som en improvisert hjelm.",
		fertilizer = "Gjødsel",
		fertilizer_description = "For en grønnere verden.",

		aluminium_powder = "Aluminiumspulver",
		aluminium_powder_description = "Et allsidig pulver som er mye brukt i industrielle og kjemiske applikasjoner. Når det kombineres med spesifikke ingredienser, kan det produsere svært reaktive termittreaksjoner, som skaper intens varme og lys.",
		iron_oxide = "Jernoksidpulver",
		iron_oxide_description = "Et vanlig pulver bestående av jern- og oksygenmolekyler, brukt i ulike industriprosesser. Når det blandes med visse stoffer, kan det delta i svært eksotermiske reaksjoner, og frigjøre varme og energi.",

		gold_bar = "Gullbarre",
		gold_bar_description = "Brukes til reparasjoner og håndverk.",

		aluminium = "Rå aluminium",
		aluminium_description = "Brukes til reparasjoner og håndverk.",
		glass = "Ru glass",
		glass_description = "Brukes til reparasjoner og håndverk.",
		rubber = "Uherdet gummi",
		rubber_description = "Brukes til reparasjoner og håndverk.",
		scrap_metal = "Skrapt metall",
		scrap_metal_description = "Brukes til reparasjoner og håndverk.",
		steel = "Rått stål",
		steel_description = "Brukes til reparasjoner og håndverk.",

		purified_aluminium = "Renset aluminium",
		purified_aluminium_description = "Brukes til profesjonelle reparasjoner.",
		tempered_glass = "Herdet glass",
		tempered_glass_description = "Brukes til profesjonelle reparasjoner.",
		vulcanized_rubber = "Vulkanisert gummi",
		vulcanized_rubber_description = "Brukes til profesjonelle reparasjoner.",
		processed_metal = "Bearbeidet metall",
		processed_metal_description = "Brukes til profesjonelle reparasjoner.",
		refined_steel = "Raffinert stål",
		refined_steel_description = "Brukes til profesjonelle reparasjoner.",

		power_saw = "Elektrisk sag",
		power_saw_description = "Brukes til å sage ting.",

		thermite = "Termit",
		thermite_description = "Høyst volatilt pulver, ikke inhaler.",
		fake_plate = "Falsk skilt",
		fake_plate_description = "Hehe, fuck politiet, de får ikke tak i meg.",
		evidence_bag_empty = "Tom bevispose",
		evidence_bag_empty_description = "Kan du forbedre det?",
		evidence_bag = "Bevispose",
		evidence_bag_description = "Forseglet kriminalitet i en pose for senere bruk.",
		fingerprint_evidence = "Fingeravtrykkbevis",
		fingerprint_evidence_description = "Hjelper deg å fange kriminelle skurker.",

		ammo_box = "Stor ammoboks",
		ammo_box_description = "Perfekt når du trenger å skyte mye. Inneholder 60 runder av hver ammotype.",

		stungun_ammo = "Taserpatron",
		stungun_ammo_description = "Mindre enn dødelig.",
		pistol_ammo = "Pistolammunisjon",
		pistol_ammo_description = "Perfekt til hverdagsbruk. Passer til de fleste håndholdte enheter.",
		sub_ammo = "Sub Ammo",
		sub_ammo_description = "Ser du etter å tømme magasinet på en rivaliserende gruppe? Dette er en rimelig ressurs som tillater akkurat det. For full effekt anbefales en submaskinpistol.",
		rifle_ammo = "Rifle Ammo",
		rifle_ammo_description = "Dette er for alle de hardcore bankrøverne som ønsker å slakte noen politifolk på vei ut.",
		sniper_ammo = "Sniper Ammo",
		sniper_ammo_description = "Drit i initieringen din!",
		shotgun_ammo = "Shotgun Ammo",
		shotgun_ammo_description = "Folk tror det er krutt i disse! Klovner... de er fylt med kjærlighet og glede.",

		silver_watches = "Sølvklokker",
		silver_watches_description = "Pass på!",
		necklaces = "Halskjeder",
		necklaces_description = "Legg til litt ekstra bling i antrekket ditt!",
		gold_watches = "Gullklokker",
		gold_watches_description = "Og... hvor fikk du tak i disse, egentlig?",
		diamonds = "Diamanter",
		diamonds_description = "Du trenger 24 for å lage en full rustning. Jeg vil anbefale å få tak i 27, så du kan skaffe deg en hakke også.",

		weather_spell_snow = "Værtrylleformel (Snø)",
		weather_spell_snow_description = "Bruk av dette objektet vil la deg midlertidig kontrollere været og få det til å snø! Det kan bare brukes en gang, så bruk den med forsiktighet. Hvis du bruker to værtrylleformler samtidig, vil den andre bare bli satt i kø.",
		weather_spell_rain = "Værformel (Regn)",
		weather_spell_rain_description = "Bruk av dette objektet vil la deg midlertidig kontrollere været og få det til å regne! Det kan bare brukes én gang, så bruk det med forsiktighet. Hvis du bruker to værformler samtidig, vil den andre bare stå i kø.",
		weather_spell_thunder = "Værformel (Torden)",
		weather_spell_thunder_description = "Bruk av dette objektet vil la deg midlertidig kontrollere været og få til en tordenvær! Det kan bare brukes én gang, så bruk det med forsiktighet. Hvis du bruker to værformler samtidig, vil den andre bare stå i kø.",

		zombie_pill = "Zombie-pille",
		zombie_pill_description = "En merkelig pille som gjør enda merkeligere ting... Svelg på egen risiko. Å ha en pistol på deg for å beskytte mot voldelige drømmer er kanskje lurt.",

		acid = "Syre",
		acid_description = "Gjør deg høy permanent. Det er ingen vei ut.",

		rose = "Rose",
		rose_description = "Jeg vet ikke, erp antar jeg.",

		teddy_bear = "Teddybjørn",
		teddy_bear_description = "En venn som faktisk vil lytte til deg.",

		self_driving_chip = "Selvkjørende brikke",
		self_driving_chip_description = "Døde hjort overalt... jævlig morsomt.",

		ticket_50 = "$50 Lotteri Lodd",
		ticket_50_description = "Legg litt i potten.",
		ticket_250 = "$250 Lotteribillett",
		ticket_250_description = "Nå begynner det å bli interessant, ta den risikoen.",
		ticket_500 = "$500 Lotteribillett",
		ticket_500_description = "Der ser man du går for det, det er hele ukelønna di!",

		avocado = "Avocado",
		avocado_description = "Liten grønn, rund gjenstand som er flott å lage dipp av.",
		avocado_smoothie = "Avocado Smoothie",
		avocado_smoothie_description = "Sunn grønn juice, ignorer klumpene.",

		raspberry = "Bringebær",
		raspberry_description = "https://i.redd.it/jbcj0uqbihg41.jpg",

		antenna = "Antenne",
		antenna_description = "Fanger opp alle frekvenser.",
		battery_pack = "Batteripakke",
		battery_pack_description = "Driveskilden for alle dine elektroniske enheter.",
		cpu = "CPU",
		cpu_description = "Hjertet av hver datamaskin.",
		knob = "Bryter",
		knob_description = "Vri og snu på den.",
		pcb_board = "Kretskort",
		pcb_board_description = "For å prototype din neste oppfinnelse.",
		screen = "Skjerm",
		screen_description = "Viser hva du gjør.",
		sd_card = "SD Kort",
		sd_card_description = "For alle dine lagringsbehov.",
		wires = "Kabler",
		wires_description = "Holder alt sammen.",

		note = "Notat",
		note_description = "Noen notater, jeg vet ikke, mann.",

		pigeon_milk = "Due Melk",
		pigeon_milk_description = "\"Du burde ha drukket due melk, den der vil slå deg ut\"\nMelk utvunnet av Vedder med kjærlighet.",

		bandana = "Bandana",
		bandana_description = "Mye gjengaktivitet. (Bloods vinner)",

		battering_ram = "Batterirambukk",
		battering_ram_description = "Bruk denne for å knuse dører!",

		trading_card = "Samlekort",
		trading_card_description = "Et samleobjekt av et trading card. Må få tak i alle!",

		trading_card_pack = "Pakke med samlekort",
		trading_card_pack_description = "En pakke med tilfeldige samlekort. La oss håpe på noen gode kort.",

		boombox = "Boombox",
		boombox_description = "Spill musikk og vær irriterende hvor som helst, når som helst!",

		lighter = "Tenner",
		lighter_description = "noen mennesker vil bare se verden brenne",

		nitro_tank = "Nitrotank",
		nitro_tank_description = "Perfekt når du trenger ekstra hastighet.",

		empty_nitro_tank = "Tom nitrotank",
		empty_nitro_tank_description = "Omtrent like nyttig som en tom boks med bønner.",

		sheet_metal = "Metallplate",
		sheet_metal_description = "Perfekt for å oppgradere 2x2'en din.",

		valve = "Ventil",
		valve_description = "Halv Liv 3 Når?",

		empty_tank = "Tom tank",
		empty_tank_description = "Inneholder ikke lenger propan eller tilbehør til propan.",

		pepper_spray = "Pepperspray",
		pepper_spray_description = "MINE ØYNE!",

		jail_card = "Fengselkort",
		jail_card_description = "Kom deg ut av fengsel-kort!",

		vape = "E-sigarett",
		vape_description = "Prøver å se kul ut? Lei av å være en pus? Ta en hit, mann!",

		acetone = "Aceton",
		acetone_description = "Perfekt for å fjerne maling eller innta på Cooper-vis.",

		bleach = "Blekevann",
		bleach_description = "Ikke drikk dette.",

		ammonia = "Ammoniakk",
		ammonia_description = "Bland med blekevann for en magisk overraskelse.",

		lithium_batteries = "Litiumbatterier",
		lithium_batteries_description = "Ikke tillatt om bord på kommersielle fly, med mindre du vil eksplodere.",

		meth_bag = "Meth-pose",
		meth_bag_description = "Kalt \"Cooper's Spice\". Noen av de reneste krystallene som Alamo Sea har sett.",

		meth_table = "Meth-bord",
		meth_table_description = "Haha morsom referanse til Breaking Bad om å lage meth.",

		campfire = "Leirbål",
		campfire_description = "Kan plasseres hvor som helst i verden. Perfekt for teltturer, jakt og fiske! Dette elementet kan ikke plukkes opp igjen.",
		tent = "Telt",
		tent_description = "Kan plasseres hvor som helst i verden. Perfekt for camping, jakt og fiske!",
		cloth_tent = "Telt (stoffer)",
		cloth_tent_description = "Kan plasseres hvor som helst i verden. Perfekt for camping, jakt og fiske!",
		canvas_tent = "Telt (kanvas)",
		canvas_tent_description = "Kan plasseres hvor som helst i verden. Perfekt for camping, jakt og fiske!",
		plastic_chair = "Plaststol",
		plastic_chair_description = "Kan plasseres hvor som helst i verden. Perfekt for camping, jakt og fiske!",
		fishing_chair = "Fiskingstol",
		fishing_chair_description = "Kan plasseres hvor som helst i verden. Perfekt for camping, jakt og fiske!",
		yoga_mat = "Yogamatte",
		yoga_mat_description = "Kan plasseres hvor som helst i verden. Perfekt for camping, jakt og fiske!",
		cooler_box = "Isboks",
		cooler_box_description = "Kan plasseres hvor som helst i verden. Perfekt for camping, jakt og fiske!",
		parasol = "Parasoll",
		parasol_description = "Kan plasseres hvor som helst i verden. Perfekt for camping, jakt og fiske!",
		parasol_table = "Parasollbord",
		parasol_table_description = "Kan plasseres hvor som helst i verden. Perfekt for camping, jakt og fiske!",
		table = "Bord",
		table_description = "Kan plasseres hvor som helst i verden. Perfekt for camping, jakt og fiske!",
		towel = "Håndkle",
		towel_description = "Kan plasseres hvor som helst i verden. Perfekt for camping, jakt og fiske!",
		disposable_grill = "Engangsgrill",
		disposable_grill_description = "Kan plasseres hvor som helst i verden. Perfekt for camping, jakt og fiske! Dette elementet kan ikke plukkes opp igjen.",
		grill = "Grill",
		grill_description = "Kan plasseres hvor som helst. Perfekt for camping, jakt og fiske!",
		police_barrier = "Politi sperre",
		police_barrier_description = "Kan plasseres hvor som helst.",
		dummy = "Dukke",
		dummy_description = "Kan plasseres hvor som helst.",
		target = "Mål",
		target_description = "Kan plasseres hvor som helst.",
		large_target = "Stort mål",
		large_target_description = "Kan plasseres hvor som helst.",
		cone = "Kjegle",
		cone_description = "Kan plasseres hvor som helst.",
		spike_strips = "Spikematte",
		spike_strips_description = "Kan plasseres hvor som helst i verden.",
		floodlight = "Flomlys",
		floodlight_description = "Kan plasseres hvor som helst i verden.",
		left_diversion_sign = "Skilt for venstre omkjøring",
		left_diversion_sign_description = "Kan plasseres hvor som helst i verden.",
		right_diversion_sign = "Skilt for høyre omkjøring",
		right_diversion_sign_description = "Kan plasseres hvor som helst i verden.",
		stop_sign = "Stopp-skilt",
		stop_sign_description = "Kan plasseres hvor som helst i verden.",
		bear_trap = "Bjørnefelle",
		bear_trap_description = "Kan plasseres hvor som helst i verden.",
		barrier = "Barrikade",
		barrier_description = "Din standard konstruksjonsbarrikade.",
		traffic_barrier = "Trafikkbarrikade",
		traffic_barrier_description = "En barrikade for å sørge for at trafikken vet hva som skjer.",
		small_barrier = "Liten barrikade",
		small_barrier_description = "Dårlig, liten barrikade.",
		traffic_barrel = "Trafikkfat",
		traffic_barrel_description = "Det ser muligens ut til å være hitbart, men ikke gjør det...med mindre?",
		pedestrian_barrier = "Fotgjengerbarrikade",
		pedestrian_barrier_description = "Flott å ha med mindre det er en Travis Scott-konsert...",

		bandit_1 = "Røver 1",
		bandit_1_description = "Kan plasseres hvor som helst i verden.",
		bandit_2 = "Røver 2",
		bandit_2_description = "Kan plasseres hvor som helst i verden.",
		hostage_1 = "Gissel 1",
		hostage_1_description = "Kan plasseres hvor som helst i verden.",
		hostage_2 = "Gissel 2",
		hostage_2_description = "Kan plasseres hvor som helst i verden.",

		director_chair = "Regissørstol",
		director_chair_description = "Kan plasseres hvor som helst i verden. Komfortabel sitteplass på farten.",
		beach_chair = "Strandstol",
		beach_chair_description = "Kan plasseres hvor som helst i verden. Komfortabel sitteplass på farten.",
		green_fishing_chair = "Grønn fiskestol",
		green_fishing_chair_description = "Kan plasseres hvor som helst i verden. Komfortabel sitteplass på farten.",
		blue_fishing_chair = "Blå fiskestol",
		blue_fishing_chair_description = "Kan plasseres hvor som helst i verden. Komfortabel sitteplass på farten.",

		tire_wall = "Dekkvegg",
		tire_wall_description = "Når du trenger dekning, men det er ingen.",

		claymore = "Leiren",
		claymore_description = "Den ultimate antipersonellgruven.",

		tv_stand = "TV-stativ",
		tv_stand_description = "Bruk dette til å plassere en TV hvor som helst du vil.",
		tv_remote = "TV-fjernkontroll",
		tv_remote_description = "Universal fjernkontroll (kvantumbatterier ikke inkludert).",

		firework_rocket = "Fyrverkerirakett",
		firework_rocket_description = "En enkel fyrverkerirakett. Perfekt for 4. juli-feiringer.",
		firework_battery = "Fyrverkeribattery",
		firework_battery_description = "En fyrverkeribattery. Skyter 4 fyrverkerier samtidig.",

		pole = "Gul stolpe",
		pole_description = "Perfekt for å stoppe noen i deres spor.",

		gasoline_bottle = "Bensinflaske",
		gasoline_bottle_description = "For rask påfylling til bilen eller...ehm...deg selv?",

		radio_jammer = "Radioforstyrrelse",
		radio_jammer_description = "Perfekt for å forstyrre alle inn- og utgående kommunikasjoner.",

		winner_trophy = "Vinnerstøtte",
		winner_trophy_description = "Du er den beste!",

		treasure_map = "Skattekart",
		treasure_map_description = "Et falmet og værslitt kart som lover utallige rikdommer til de som kan tyde dets kryptiske ledetråder. X markerer stedet, men reisen til skatten kan være farlig og full av utfordringer.",
		treasure_map_piece = "Skattekartbrikke",
		treasure_map_piece_description = "Et revet fragment av et større skattekart, kanskje mistet eller bevisst skjult. Den inneholder et fragment av mysteriet, en gåte som venter på å bli løst. Samle alle brikkene, sett sammen kartet og lås opp hemmelighetene til en lenge tapt skatt. Pass deg for rivaliserende skattejegere og uventede hindringer på veien!",

		flag = "Flagg",
		flag_description = "Hold godt på det!",

		black_dildo = "Svart Dildo",
		black_dildo_description = "Vi vil få den tilståelsen på en eller annen måte.",
		pink_dildo = "Rosa Dildo",
		pink_dildo_description = "Håndlaget, skåret ut og testet av Bugsy Middleman.",

		bean_coffee = "Bønne Kaffe",
		bean_coffee_description = "Bønnevann.... det er egentlig alt det er.",
		cappuccino = "Cappuccino",
		cappuccino_description = "Espresso med brystmelk, jeg mener brystmelk, jeg mener brystmelk...",
		espresso = "Espresso",
		espresso_description = "Nok energi til å drive hjemmet ditt, alt i en pen liten kopp.",
		cream_cookie = "Kremkake",
		cream_cookie_description = "Kremete, akkurat slik du liker det.",
		cheesecake = "Ostekake",
		cheesecake_description = "Ikke å forveksle med en kake laget av ost.",
		chocolate_cake = "Sjokoladekake",
		chocolate_cake_description = "Deilig kake laget av de fineste kakaobønnene.",
		cupcake = "Muffins",
		cupcake_description = "En luftig kake fylt og toppet med magisk enhjørningskrem.",
		pink_lemonade = "Rosa sitronbrus",
		pink_lemonade_description = "Absolutt ikke vanlig sitronbrus farget rosa slik at vi kan belaste deg dobbelt så mye...",

		irish_coffee = "Irsk Kaffe",
		irish_coffee_description = "Fersk kaffe med litt original irsk whiskey i den.",

		chip_10 = "$10-brikke",
		chip_10_description = "En gambling-brikke. Kan brukes til å gamble. Elementet kan konverteres til penger på kasinoet.",
		chip_50 = "$50-brikke",
		chip_50_description = "En gambling-brikke. Kan brukes til å gamble. Elementet kan konverteres til penger på kasinoet.",
		chip_100 = "$100-brikke",
		chip_100_description = "En gambling-brikke. Kan brukes til å gamble. Elementet kan konverteres til penger på kasinoet.",
		chip_500 = "$500-brikke",
		chip_500_description = "En gambling-brikke. Kan brukes til å gamble. Elementet kan konverteres til penger på kasinoet.",
		chip_1000 = "$1000-brikke",
		chip_1000_description = "En gamblingbrikke. Kan brukes til gambling. Elementet kan konverteres til penger på casinoet.",
		chip_5000 = "$5000-brikke",
		chip_5000_description = "En gamblingbrikke. Kan brukes til gambling. Elementet kan konverteres til penger på casinoet.",
		chip_10000 = "$10000-brikke",
		chip_10000_description = "En gamblingbrikke. Kan brukes til gambling. Elementet kan konverteres til penger på casinoet.",

		grubs = "Meitemark",
		grubs_description = "Perfekt for fiske.",
		leeches = "Igler",
		leeches_description = "Perfekt for fiske.",
		earthworms = "Regnormer",
		earthworms_description = "Perfekt for fiske.",
		fishing_rod = "Fiskestang",
		fishing_rod_description = "Perfekt for fiske.",
		raw_meat = "Rått kjøtt",
		raw_meat_description = "Et ferskt stykke kjøtt.",
		cooked_meat = "Stekt kjøtt",
		cooked_meat_description = "Kjøtt som akkurat har blitt kokt.",
		burnt_meat = "Bretnet kjøtt",
		burnt_meat_description = "Kjøtt som har blitt brent.",
		leather = "Skinn",
		leather_description = "En fin pels rett fra hjorten.",
		wood = "Tre",
		wood_description = "En bit tre rett fra et tre.",
		charcoal = "Kull",
		charcoal_description = "Overlegen til vanlig kull.",

		beef_jerky = "Oksekjøtt Jerky",
		beef_jerky_description = "Noen fine biter av oksekjøtt jerky.",
		oreos = "Birthday-Cake Oreos",
		oreos_description = "Noen deilige informasjonskapsler med et hint av bursdagskake.",
		nerds_chunks = "Nerds-klumper",
		nerds_chunks_description = "En pose med små gummiklumper som smaker deilig!",
		reeses_pieces = "Reese's Pieces",
		reeses_pieces_description = "Den perfekte snacken når du er litt sulten, men ikke nok til å spise en fullstendig måltid.",
		kettle_chips = "Kettle Chips (Honey-BBQ)",
		kettle_chips_description = "De beste chipsene i verden.",
		cheetos = "Cheetos",
		cheetos_description = "Den beste snacksen for gaming-økter.",
		peanuts = "Saltede peanøtter",
		peanuts_description = "En boks med saltede peanøtter, perfekt for å snackse på.",

		rice = "Ris",
		rice_description = "Det er bøtter med fluffy korn.",
		nori = "Nori",
		nori_description = "Dette er fancy sjøgress.",
		soy_sauce = "Soyasaus",
		soy_sauce_description = "Soyasaus er en fyldig krydder saus med en rik umami smak som er perfekt for marinader, krydder og dipping sauser, og er lav i kalorier og rik på protein.",
		eggs = "Egg",
		eggs_description = "Allsidig og næringsrikt, egg er perfekt for omeletter, quiche og bakverk.",
		lime = "Lime",
		lime_description = "Syrlig og rik på vitamin C, sitroner legger en \"touch of zest\" til drikkevarer, marinader og dressinger.",
		coconut = "Kokosnøtt",
		coconut_description = "Søt og kremaktig, kokosnøtt forsterker desserter, karriretter og smoothies. Prøv det!",
		sugar = "Sukker",
		sugar_description = "Det er kokain, men ikke ulovlig og gir deg diabetes.",

		golf_ball = "Golfball",
		golf_ball_description = "Brukt for golfing.",
		golf_ball_yellow = "Gul golfball",
		golf_ball_yellow_description = "Brukt for golfing.",
		golf_ball_orange = "Oransje golfball",
		golf_ball_orange_description = "Brukt for golfing.",
		golf_ball_pink = "Rosa golfball",
		golf_ball_pink_description = "Brukt for golfing.",

		gas_mask = "Gassmaske",
		gas_mask_description = "vil beskytte deg mot alle typer av gass, til og med bestemors promp.",
		nv_goggles = "Nattsynsbriller",
		nv_goggles_description = "Vil hjelpe deg å se i mørket.",
		thermal_goggles = "Termiske briller",
		thermal_goggles_description = "Vil hjelpe deg å se gjennom vegger (Ikke egentlig xD).",

		green_rolls = "Grønne ruller",
		green_rolls_description = "For de av oss som trenger mer enn gjennomsnittet.",
		rolling_paper = "Røykpapir",
		rolling_paper_description = "Det raske papiret for å rulle og røyke bort smerten.",

		arena_pill = "Arena Pille",
		arena_pill_description = "En merkelig pille som gjør enda merkelige ting ... Svelg på egen risiko. Det kan være lurt å ha med en pistol for å beskytte deg mot voldelige drømmer.",

		shovel = "Spade",
		shovel_description = "Et solid graveverktøy for å oppdage skjulte rikdommer og avdekke hemmeligheter i alle miljøer, noe som gjør det til en verdifull ressurs for ivrige skattejegere.",

		electric_fuse = "Elektrisk Sikring",
		electric_fuse_description = "Elektrisk sikring er et nødvendig element for heistrummene. Den må plasseres i sikringsboksen for å kunne aktivere nøkkelkortlåsen.",
		keycard_green = "Grønn nøkkelkort",
		keycard_green_description = "Brukes for å åpne lagre med medisinsk utstyr.",
		keycard_blue = "Blått nøkkelkort",
		keycard_blue_description = "Brukes for å åpne lagre med teknisk utstyr.",
		keycard_red = "Rødt nøkkelkort",
		keycard_red_description = "Brukes til å åpne et våpenlager.",

		magazine = "Magasin",
		magazine_description = "Et magasin.",

		bank_rockfish = "Bankrockefisk",
		black_and_yellow_rockfish = "Svart- og gulrockefisk",
		black_rockfish = "Svartrockefisk",
		blackgill_rockfish = "Svartgjellrockefisk",
		blackspotted_rockfish = "Svartspraglet steinbit",
		blue_rockfish = "Blå steinbit",
		bocaccio = "Bocaccio",
		bronzespotted_rockfish = "Bronsespraglet steinbit",
		brown_rockfish = "Brun steinbit",
		cabezon = "Cabezon",
		calico_rockfish = "Calico steinbit",
		california_scorpionfish = "California skorpionfisk",
		canary_rockfish_variant_1 = "Kanarigul abbor (variant 1)",
		canary_rockfish_variant_2 = "Kanarigul abbor (variant 2)",
		chilipepper_rockfish = "Chilipepper steinbit",
		china_rockfish = "Kina steinbit",
		copper_rockfish_variant_1 = "Kobberrockfish (Variant 1)",
		copper_rockfish_variant_2 = "Kobberrockfish (Variant 2)",
		cowcod = "Cowcod",
		darkblotched_rockfish = "Mørkplettet steinbit",
		deacon_rockfish = "Deacon steinbit",
		dusky_rockfish_dark_version = "Dusky steinbit (Mørk utgave)",
		dusky_rockfish_light_version = "Mørk grunnebass (lys versjon)",
		flag_rockfish = "Flagg-grunnebass",
		gopher_rockfish = "Gopher-grunnebass",
		grass_rockfish_dark_version = "Gress-grunnebass (mørk versjon)",
		grass_rockfish_light_version = "Gress-grunnebass (lys versjon)",
		greenblotched_rockfish = "Grønnflekket grunnebass",
		greenspotted_rockfish = "Grønnfarget grunnebass",
		greenstriped_rockfish = "Grønnstripet grunnebass",
		halfbanded_rockfish = "Halvstoppet grunnebass",
		honeycomb_rockfish = "Honningkake-grunnebass",
		kelp_greenling_female = "Tanggrønnling (hun)",
		kelp_greenling_male = "Tangmalle (mannlig)",
		kelp_rockfish = "Tangsteinbit",
		lingcod = "Lingcod",
		olive_rockfish = "Olivensteinbit",
		pacific_ocean_perch = "Stillehavstorsk",
		pacific_sand_sole = "Stillehavssandskrape",
		pacific_sanddab = "Stillehavsvar",
		quillback_rockfish_variant_1 = "Fjærbelterockfish (Variant 1)",
		quillback_rockfish_variant_2 = "Fjærbelterockfish (Variant 2)",
		redbanded_rockfish = "Rødstripet Steinbit",
		rock_sole = "Rocksandskrape",
		rosy_rockfish = "Rosa Steinbit",
		rougheye_rockfish = "Grovtunge Steinbit",
		shortraker_rockfish = "Kortnebbsteinbit",
		silvergray_rockfish = "Sølvgrå Steinbit",
		speckled_rockfish = "Flekksteinbit",
		squarespot_rockfish = "Flekket steinbit",
		starry_flounder = "Stjerneflyndre",
		starry_rockfish = "Stjerne steinbit",
		tiger_rockfish_dark_version = "Tiger steinbit (mørk versjon)",
		tiger_rockfish_pink_version = "Tiger steinbit (rosa versjon)",
		treefish = "Tre steinbit",
		vermilion_rockfish = "Vermilion steinbit",
		widow_rockfish = "Enkemann steinbit",
		yelloweye_rockfish_adult = "Guleye steinbit (voksen)",
		yelloweye_rockfish_juvenile = "Guleye steinbit (ung)",
		yellowtail_rockfish = "Gultail steinbit",

		bank_rockfish_description = "Bank rockfish er ovalformede fisk med små hodefinner. De er mørkerøde eller rødbrune, ofte med en klar rosa-oransje sone langs den laterale linjen og svart flekkete på kroppen og den spissede delen av ryggfinnen.",
		black_and_yellow_rockfish_description = "Sebastes chrysomelas, vanligvis kjent som svart-og-gul rockfish, er en marin fiskeart i familien Sebastidae. Den finnes i steinete områder i Stillehavet utenfor California og Baja California.",
		black_rockfish_description = "Den svarte rockfisken, også kjent som svart havabbor, svart bass, svart steinkode, sjøabbor, svart snapper og Stillehavstorsk, er en art av marine strålefinnene fisk som tilhører underfamilien Sebastinae, rockfishes, og er en del av familien Scorpaenidae.",
		blackgill_rockfish_description = "Av og til fanget utenfor Washington-kysten av kommersielle fiskere som bruker minkesnurper og langlineutstyr. Det var en vanlig fiskesort fanget utenfor kysten av California. <br> <br> Små varianter kan finnes utenfor kysten, men eldre Blackgill vil bevege seg til dypere vann.",
		blackspotted_rockfish_description = "Sebastes melanostictus, den svartflekkede steinbit, er en art av marine strålefinnede fisker som tilhører underfamilien Sebastinae, steinbitene, som er en del av familien Scorpaenidae. Den finnes i det nordlige Stillehavet.",
		blue_rockfish_description = "Blåsteinbiten eller blåsei er en marin fiskeart som tilhører underfamilien Sebastinae, steinbitfamilien, i familien Scorpaenidae. Den finnes i det nordøstlige Stillehavet, fra nordlige Baja California til sentrale Oregon.<br><br>Bare funnet i elveinntak, ikke direkte i elvene.",
		bocaccio_description = "Bocaccio-steinbiten er en marin fiskeart som tilhører underfamilien Sebastinae, steinbitfamilien, i familien Scorpaenidae. Den finnes i det nordøstlige Stillehavet.<br><br>Også kjent som \"rød snapper\".",
		bronzespotted_rockfish_description = "Sebastes gilli, bronzespotted rockfish eller bronseflekket rødfisk på norsk, er en art fisk som tilhører underfamilien Sebastinae, også kjent som steinbitfamilien, som igjen tilhører familien Scorpaenidae. Den finnes i det østlige sentrale Stillehavet.",
		brown_rockfish_description = "Den brune rødfisken, også kjent som brunsiler, sjokoladebars, brunbas og brown bomber, er en art sjøfisk som tilhører underfamilien Sebastinae, også kjent som steinbitfamilien, som igjen tilhører familien Scorpaenidae. Den finnes i det nordøstlige Stillehavet.",
		cabezon_description = "Cabezon er en stor art i skulptinfamilien, som er naturlig hjemmehørende langs Stillehavskysten i Nord-Amerika. Selv om slektsnavnet oversettes direkte som \"skorpionfisk\", tilhører ekte skorpionfisker den beslektede familien Scorpaenidae.",
		calico_rockfish_description = "Sebastes dallii, også kjent som calico rockfish, er en art av marine beinfisk som tilhører underfamilien Sebastinae, kalt berggjedder, og er en del av familien Scorpaenidae. Den finnes i det sentrale østlige Stillehavet. Hann-Calicos blir seksuelt modne ved syv års alder, mens hunner når seksuell modning ved ni års alder.",
		california_scorpionfish_description = "Scorpaena guttata er en fiskeart i skorpionfiskefamilien kjent under det felles navnet California skorpionfisk. Det er hjemmehørende i det østlige Stillehavet, der den kan bli funnet langs kysten av California og Baja California.",
		canary_rockfish_variant_1_description = "Kanaryrockfish, også kjent som appelsinrockfish, er en art av maritime beinfisker som tilhører underfamilien Sebastinae, rockfishes, og del av familien Scorpaenidae. Den er hjemmehørende i farvannet i Stillehavet utenfor vestkysten av Nord-Amerika.",
		canary_rockfish_variant_2_description = "Canary rockfish, også kjent som oransje rockfish, er en art av marine beinfisk som tilhører underfamilien Sebastinae, steinbitfisker, i familien Scorpaenidae. Den er hjemmehørende i farvannene i Stillehavet utenfor vestlige Nord-Amerika.",
		chilipepper_rockfish_description = "Sebastes goodei, chilipepper steinbit eller chilipepper, er en art av marine beinfisk som tilhører underfamilien Sebastinae, steinbit, og familien Scorpaenidae. Denne arten lever hovedsakelig utenfor kysten av vestre Nord-Amerika fra Baja California til Vancouver.",
		china_rockfish_description = "Kinasik, også kjent som gultonnet fisk eller gulspottet fisk, er en art av marine beenfisk som tilhører underfamilien Sebastinae, steinbitfisker, og familien Scorpaenidae. Den er innfødt til farvannene i Stillehavet utenfor vestkysten av Nord-Amerika.",
		copper_rockfish_variant_1_description = "Copper rockfish, også kjent som copper seaperch, er en art av marine beinfisk som tilhører underfamilien Sebastinae, steinbitfisker, i familien Scorpaenidae. Den finnes i østlige Stillehavet.<br><br>De vil aldri bli sett i generiske hav, da de kun ønsker å være nær toppen eller bunnen.",
		copper_rockfish_variant_2_description = "Kopperhavabbor, også kjent som kobberhavabbor, er en art av marine fiskebein-fisk som tilhører underfamilien Sebastinae, steinbitfisker, og familien Scorpaenidae. Den finnes i det østlige Stillehavet. <br><br> De vil aldri bli sett i generiske hav, da de kun vil leve nær toppen eller bunnen av havet.",
		cowcod_description = "Sebastes levis, også kjent som \"cowcod\" eller \"cow rockfish\", er en art av marine beenfisk som tilhører underfamilien Sebastinae, steinbitfisker, og familien Scorpaenidae. Den er funnet i det østlige Stillehavet.<br><br>Størrelsesområdet skaper konkurransefortrinn.",
		darkblotched_rockfish_description = "Mørk flekket berggylte, også kjent under navnene svartflekket berggylte, svartmunn berggylte og flekkete berggylte, er en kroppsdyp fisk.",
		deacon_rockfish_description = "Sebastes diaconus, deacons berggylte, er en art av marine benfisk som tilhører underfamilien Sebastinae, berggyltene, i familien Scorpaenidae. Den finnes i det østlige Stillehavet.<br><br>Hanner vil alltid leve lengre enn hunner.",
		dusky_rockfish_dark_version_description = "Sebastes ciliatus er en art av berggylter også kjent som dusky berggylte. Den er vanligvis finnes i Nord-Stillehavet.",
		dusky_rockfish_light_version_description = "Sebastes ciliatus er en art av steinbit vanligvis kjent som dusky rockfish. Den finnes vanligvis i det nordlige Stillehavet.",
		flag_rockfish_description = "Sebastes rubrivinctus, også kjent som flag rockfish, Spanish flag, redbanded rockfish eller barberpole, er en art av marine benfisk som tilhører underfamilien Sebastinae, steinbit, en del av familien Scorpaenidae. Den finnes i det østlige Stillehavet.",
		gopher_rockfish_description = "Gopher rockfish, også kjent som gopher sea perch, er en art av marine benfisk som tilhører underfamilien Sebastinae, steinbit, en del av familien Scorpaenidae. Den finnes i det østlige Stillehavet, hovedsakelig utenfor California.",
		grass_rockfish_dark_version_description = "Sebastes rastrelliger, gressoppfisk, er en art av marine beinfisk som tilhører underfamilien Sebastinae, steinbitfamilien, i familien Scorpaenidae. Den er hjemmehørende i farvannet i Stillehavet.<br><br>Vanligvis brukt av hobbyfiskere som bruker krok-og-snøre-utstyr.",
		grass_rockfish_light_version_description = "Sebastes rastrelliger, gressoppfisk, er en art av marine beinfisk som tilhører underfamilien Sebastinae, steinbitfamilien, i familien Scorpaenidae. Den er hjemmehørende i farvannet i Stillehavet.<br><br>Vanligvis brukt av hobbyfiskere som bruker krok-og-snøre-utstyr.",
		greenblotched_rockfish_description = "Grønnplettet steinbit er en bunnfisk som er vanligvis funnet alene eller i små grupper rundt steinstrukturer på dybder mellom 55 m (180 fot) og 490 m (1,610 fot). Den kan vokse opp til en lengde på 54 cm (21 tommer), med hunner som er større enn hannene.<br><br>Grønnplettet, grønnflekket og grønnstripet har alle de samme karakteristiske trekkene og adferdsmønstrene.",
		greenspotted_rockfish_description = "Grønnflekket steinbit, Sebastes chlorostictus, er en art innenfor underfamilien Sebastinae, steinbitfamilien (Scorpaenidae), som lever i det østlige Stillehavet.<br><br>Grønnplettet, grønnflekket og grønnstripet har alle de samme karakteristiske trekkene og adferdsmønstrene.",
		greenstriped_rockfish_description = "Sebastes elongatus, også kjent som grønnstripet berggylt, stripet berggylt, jordbærberggylt, poinsettas, reina eller serena, er en art av marine benfisker og tilhører underfamilien Sebastinae, berggylter, og familien Scorpaenidae. Den finnes i det nordøstlige Stillehavet.<br><br>Grønnflekket berggylt, grønnspraglet berggylt og grønnstripet berggylt deler alle de samme karakteristikkene og adferdene.",
		halfbanded_rockfish_description = "Sebastes semicinctus, halvbåndet berggylt, er en art av marine benfisker og tilhører underfamilien Sebastinae, berggylter, og familien Scorpaenidae. Den finnes i det østlige Stillehavet.",
		honeycomb_rockfish_description = "Honeycomb Rockfish har en kompakt, tverrkropp med en bredde som utgjør 35% til 39% av standardlengden. De er dekket av pigger. De har en farge på brunt, lyst brunt eller rødlig brunt med 4 til 6 hvite flekker tilfeldig plassert over lateral linjen.",
		kelp_greenling_female_description = "En hunnkjelpgreenling er full av små, rødbrune til gyldne flekker på en grå til brun bakgrunn. Finner er hovedsakelig gulorange. Mennene er vanligvis grå til brunaktig olivenfarget, med uregelmessige blå flekker på den fremre halvdelen til to tredjedeler av kroppene sine.<br><br>Mest vanlig å finne i farvann grunnere enn 328 fot.",
		kelp_greenling_male_description = "Hannen av kelp-grønling er brungrønn til grå, med uregelmessig formede blå flekker som er omgitt med svart på ryggen og hodet. Begge kjønn har en liten dusk (cirrus) over hvert øye. Denne arten kan bli opptil 60 cm lang.<br><br>Vanligvis finnes den i farvann som er grunnere enn 100 meter.",
		kelp_rockfish_description = "Sebastes atrovirens, kelpsteinbit, er en art av sjøfisk som tilhører underfamilien Sebastinae, steinbitfamilien Scorpaenidae. Den er innfødt til Stillehavet langs kysten av California i USA og Baja California i Mexico.",
		lingcod_description = "Lingcod er grådige rovdyr og kan veie over 80 pund (35 kg) og måle 60 tommer (150 cm) i lengde. De kjennetegnes av en stor munn med 18 skarpe tenner. Fargen deres varierer, vanligvis med mørkebrune eller kobberfargede flekker arrangert i klynger.",
		olive_rockfish_description = "Den olivenfargede bergstangen, Acanthoclinus fuscus, er en langfinnet fisk i familien Plesiopidae. Den finnes kun i New Zealands tidevannssone og i fjellbassenger ved lavvann, og kan vokse seg opp til en lengde på 30 cm.",
		pacific_ocean_perch_description = "Stillehavsrøye, også kjent som Stillehavssteinbit, Rosefisk, Rødskjell eller Rødfisk, er en fisk som spenner over det nordlige Stillehavet: fra sørlige California rundt Stillehavet til nordlige Honshū, Japan, inkludert Beringhavet.",
		pacific_sand_sole_description = "Stillehavssandskål, også kjent som sandsål, er en flatfiskeart som lever i den nordøstlige delen av Stillehavet, hvor den bor på sandbunn. Det er den eneste arten i slekten Psettichthys, og den finnes fra Beringhavet til Nord-California.",
		pacific_sanddab_description = "Stillehavsskiveren er en art av flatfisk. Det er langt den vanligste skiveren, og den deler habitatet sitt med langfinnet og flekket skiver. Det er en medium-sized flatfisk, med en lys brun farge som er flekkete med brunt eller svart, av og til med hvite eller orange flekker.",
		quillback_rockfish_variant_1_description = "Stolerygg havabbor, også kjent som stolerygg seaperch, er en art av marine fiskebein-fisk som tilhører underfamilien Sebastinae, steinbitfisker, og familien Scorpaenidae. Denne arten lever hovedsakelig i saltvannsrev. Den gjennomsnittlige voksne veier 2-7 pund og kan nå 1 m i lengde. <br><br>Rundt California lever disse i 15 år. Rundt Canada lever disse i minst 95 år. Som beviser at CA > US.",
		quillback_rockfish_variant_2_description = "Kvillrygg-skreifisken, også kjent som kvillrygg-knutepigg, er en art av marin fisk som tilhører underfamilien Sebastinae, knutepiggfiskene, i familien Scorpaenidae. Denne arten lever hovedsakelig i saltvannsrev. En gjennomsnittlig voksen veier 2–7 pund og kan bli opptil 1 m lang.<br><br>I nærheten av California lever de i 15 år. I nærheten av Canada lever de i minst 95 år, som bevise at CA > US.",
		redbanded_rockfish_description = "Rødbåndet steinbit, også kjent som banditten, barberstang steinbit, flagg steinbit, spansk flagg, Hollywood, straffange, og kanarifisk, er en art av marint beinfisk som tilhører underfamilien Sebastinae, steinbitene, i familien Scorpaenidae. Den finnes i det nordlige Stillehavet.",
		rock_sole_description = "Rødspette (Lepidopsetta bilineata) er en flyndrefisk i familien Pleuronectidae. Den er en bunnfisk som lever på sand og grus i dybder på opptil 575 meter, selv om den vanligvis finnes mellom 0 og 183 meter.",
		rosy_rockfish_description = "Sebastes rosaceus, rosarød steinbit, er en art av marine benfisk som tilhører underfamilien Sebastinae, steinbit, og familien Scorpaenidae. Den finnes i det østlige Stillehavet.",
		rougheye_rockfish_description = "Rougheye rockfish er en bergfisk av slekten Sebastes. Den er også kjent som svartstrupe-bergfisk eller svarttippede bergfisk og vokser til maksimalt omtrent 97 cm i lengde, med IGFA-rekordvekt på 14 lb 12 oz.",
		shortraker_rockfish_description = "Som voksne er shortraker-bergfisk en av de største bergfiskartene. Under vann er de lyserosa, rosa-oransje eller røde med flekker og saler. Alle finnene har noe svart og den dorsale finnen kan være hvittippet. Munnen er rød og kan ha svarte flekker. Shortraker-bergfisk er blant de lengstlevende marine artene på jorden, og har blitt registrert over 157 år gamle.",
		silvergray_rockfish_description = "Sølvgrå steinbit er en slank steinbitart med reduserte hodetorn. De har mørke lepper og en underkjeve som er lang og stikker ut forbi overkjeven. De har en markant bakkantknute på spissen av underkjeven sin.",
		speckled_rockfish_description = "Sebastes ovalis, den flekkede steinbiten, er en art av marine strålefinnede fisker som tilhører underfamilien Sebastinae, steinbitfisker, og familien Scorpaenidae. Den finnes i dype steinete områder i det østlige Stillehavet.",
		squarespot_rockfish_description = "Sebastes hopkinsi, squarespot rockfish, er en art av marine benfisk som tilhører underfamilien Sebastinae, steinbitene, i familien Scorpaenidae. Denne arten finnes i det østlige Stillehavet.",
		starry_flounder_description = "Starry flounder, også kjent som grindstone, emery wheel og long-nosed flounder, er en vanlig flatfisk som finnes rundt kantene av Nord-Stillehavet.",
		starry_rockfish_description = "Starry rockfish, også kjent som spotted corsair, spotted rockfish, chinafish og red rock cod, er en art av marine benfisk som tilhører underfamilien Sebastinae, steinbitene, i familien Scorpaenidae. Den finnes i det østlige Stillehavet.",
		tiger_rockfish_dark_version_description = "Tiger rockfish, også kalt tiger perch, bånd rockfish og svart-bånd rockfish, er en art av marine beinfisk som tilhører underfamilien Sebastinae, fjellfisker, og er en del av familien Scorpaenidae. Den er hjemmehørende i farvannet til Stillehavet utenfor vestkysten av Nord-Amerika.",
		tiger_rockfish_pink_version_description = "Tiger rockfish, også kalt tiger perch, bånd rockfish og svart-bånd rockfish, er en art av marine beinfisk som tilhører underfamilien Sebastinae, fjellfisker, og er en del av familien Scorpaenidae. Den er hjemmehørende i farvannet til Stillehavet utenfor vestkysten av Nord-Amerika.",
		treefish_description = "Trefisk er en art av marine beinfisk som tilhører underfamilien Sebastinae, steinbitfamilien, og er en del av familien Scorpaenidae. De kommer opprinnelig fra det østlige Stillehavet.",
		vermilion_rockfish_description = "Sebastes miniatus, også kalt rødfisk, er en art av marine beinfisk som tilhører underfamilien Sebastinae, steinbitfamilien, og er en del av familien Scorpaenidae.",
		widow_rockfish_description = "Enkesteinbit, også kalt \"brun bomber\", er en art av marine beinfisk som tilhører underfamilien Sebastinae, steinbitfamilien, og er en del av familien Scorpaenidae. De kan bli funnet i nordøstlige deler av Stillehavet.",
		yelloweye_rockfish_adult_description = "Den guleøyed skorpionfisken er en art av marine beinfisk som tilhører underfamilien Sebastinae, steinfisker, en del av familien Scorpaenidae, og er en av de største medlemmene i slekten Sebastes. Navnet kommer fra fiskens fargelegging.",
		yelloweye_rockfish_juvenile_description = "Den guleøyed skorpionfisken er en art av marine beinfisk som tilhører underfamilien Sebastinae, steinfisker, en del av familien Scorpaenidae, og er en av de største medlemmene i slekten Sebastes. Navnet kommer fra fiskens fargelegging.",
		yellowtail_rockfish_description = "Sebastes flavidus, den gulestjert-rognkjeks eller gulestjert-havaborre, er en art av marinekinesefamilien underfamilien Sebastinae, som tilhører familien Scorpaenidae. Denne arten lever hovedsakelig utenfor kysten av vestlige Nord-Amerika fra California til Alaska.<br><br>Larvene og ungdommene lever nær overflaten, mens voksne lever i dypere vann over steinete rev.",

		weapon_dagger = "Antik kavaleridolk",
		weapon_bat = "Baseballballtre",
		weapon_bottle = "Knust flaske",
		weapon_crowbar = "Brekkjern",
		weapon_unarmed = "Nevne",
		weapon_flashlight = "Lommelykt",
		weapon_golfclub = "Golfkølle",
		weapon_hammer = "Hammer",
		weapon_hatchet = "Øks",
		weapon_knuckle = "Messingtakker",
		weapon_knife = "Kniv",
		weapon_machete = "Machete",
		weapon_switchblade = "Springkniv",
		weapon_nightstick = "Nattstokk",
		weapon_wrench = "Pipeskjøter",
		weapon_battleaxe = "Krigsøks",
		weapon_poolcue = "Biljardkø",
		weapon_stone_hatchet = "Steinøks",
		weapon_candycane = "Kandystang",

		weapon_pistol = "Pistol",
		weapon_pistol_mk2 = "Pistol Mk II",
		weapon_combatpistol = "Kampistol",
		weapon_appistol = "AP-pistol",
		weapon_stungun = "Stun Gun",
		weapon_pistol50 = "Pistol .50",
		weapon_snspistol = "SNS-pistol",
		weapon_snspistol_mk2 = "SNS Pistol Mk II",
		weapon_heavypistol = "Tung pistol",
		weapon_vintagepistol = "Vintagepistol",
		weapon_flaregun = "Fakkelgevær",
		weapon_marksmanpistol = "Marksman-pistol",
		weapon_revolver = "Tung revolver",
		weapon_revolver_mk2 = "Tung Revolver Mk II",
		weapon_doubleaction = "Dobbel action-revolver",
		weapon_raypistol = "Up-n-atomizer",
		weapon_ceramicpistol = "Keramikkpistol",
		weapon_navyrevolver = "Marinerevolver",
		weapon_gadgetpistol = "Perico-pistol",
		weapon_stungun_mp = "Elektrosjokkvåpen (MP)",
		weapon_pistolxm3 = "WM 29 Pistol",

		weapon_microsmg = "Micro-SMG",
		weapon_smg = "SMG",
		weapon_smg_mk2 = "SMG Mk II",
		weapon_assaultsmg = "Assault-SMG",
		weapon_combatpdw = "Combathåndpistol",
		weapon_machinepistol = "Maskinpistol",
		weapon_minismg = "Mini-SMG",
		weapon_raycarbine = "Unholy Hellbringer",

		weapon_pumpshotgun = "Pumpehagle",
		weapon_pumpshotgun_mk2 = "Pumpehagle Mk II",
		weapon_sawnoffshotgun = "Sagdoff hagle",
		weapon_assaultshotgun = "Assaulthagle",
		weapon_bullpupshotgun = "Bullpup hagle",
		weapon_musket = "Musket",
		weapon_heavyshotgun = "Tung hagle",
		weapon_dbshotgun = "Dobbeltdørs hagle",
		weapon_autoshotgun = "Sweeper hagle",
		weapon_combatshotgun = "Kamp hagle",

		weapon_assaultrifle = "Assault-rifle",
		weapon_assaultrifle_mk2 = "Angrepsgevær Mk II",
		weapon_carbinerifle = "Karbinrifle",
		weapon_carbinerifle_mk2 = "Karabin Mk II",
		weapon_advancedrifle = "Avansert rifle",
		weapon_specialcarbine = "Spesialkarabin",
		weapon_specialcarbine_mk2 = "Spesialkarabin Mk II",
		weapon_bullpuprifle = "Bullpup-rifle",
		weapon_bullpuprifle_mk2 = "Bullpupgevær Mk II",
		weapon_compactrifle = "Kompaktrifle",
		weapon_militaryrifle = "Militærrifle",
		weapon_heavyrifle = "Tung rifle",
		weapon_tacticalrifle = "Service karabin",

		weapon_mg = "Mitraljøse",
		weapon_combatmg = "Kampmitraljøse",
		weapon_combatmg_mk2 = "Tungt Kampegevær Mk II",
		weapon_gusenberg = "Gusenberg Sweeper",

		weapon_sniperrifle = "Snikskytterrifle",
		weapon_heavysniper = "Tungt snikskytterrifle",
		weapon_heavysniper_mk2 = "Tungt Snipergevær Mk II",
		weapon_marksmanrifle = "Marksman rifle",
		weapon_marksmanrifle_mk2 = "Marksman-gevær Mk II",
		weapon_precisionrifle = "Presisjonsrifle",

		weapon_rpg = "RPG",
		weapon_grenadelauncher = "Granatkaster",
		weapon_grenadelauncher_smoke = "Granatkaster røyk",
		weapon_minigun = "Minigun",
		weapon_firework = "Fyrverkeri",
		weapon_railgun = "Jernbanegevær",
		weapon_hominglauncher = "Homing Launcher",
		weapon_compactlauncher = "Kompakt granat",
		weapon_rayminigun = "Widowmaker",
		weapon_emplauncher = "Kompakt EMP Launcher",
		weapon_stinger = "RPG",
		weapon_railgunxm3 = "SpoleJerngevær",

		weapon_grenade = "Granat",
		weapon_bzgas = "BZ Gass",
		weapon_molotov = "Molotov Cocktail",
		weapon_stickybomb = "Klebrig Bombe",
		weapon_proxmine = "Nærhet Mine",
		weapon_snowball = "Snøballer",
		weapon_pipebomb = "Rør Bomber",
		weapon_ball = "Baseball",
		weapon_smokegrenade = "Røyk Granat", -- MERK: dette kalles "Tåregass",
		weapon_flare = "Fakkel",
		weapon_acidpackage = "Syre Pakke",

		weapon_petrolcan = "Bensinkanne",
		gadget_parachute = "Fallskjerm",
		weapon_fireextinguisher = "Brannslukningsapparat",
		weapon_hazardcan = "Farlig drivstoffkanne",
		weapon_fertilizercan = "Gjødselkanne",

		red_parachute = "Rød fallskjerm",
		blue_parachute = "Blå fallskjerm",
		black_parachute = "Svart fallskjerm",

		weapon_dagger_description = "Har du en pirat-inspirert look, men mangler et farlig våpen? Skaff denne dolken med beskyttende håndbeskyttelse.",
		weapon_bat_description = "Aluminiumsbaseballbat med lærgrep. Lett, men likevel kraftig for alle dere store slagere der ute.",
		weapon_bottle_description = "Det er verken smart eller pent, men det er heller ikke fyren som kommer mot deg med en kniv. Når alt annet feiler, får denne jobben gjort.",
		weapon_crowbar_description = "Robust brekkjern smidd av høykvalitets stål for ekstra kraft til å få jobben gjort.",
		weapon_unarmed_description = "Når alt annet svikter, sats på knoker og jobb med det du har.",
		weapon_flashlight_description = "Øk din frykt for mørket med denne kraftige, batteridrevne lysekilden med kort rekkevidde. Praktisk også som slagvåpen.",
		weapon_golfclub_description = "Standardlengde på en midt-jern golfkølle med gummihåndtak for en dødelig kortspill.",
		weapon_hammer_description = "En solid, allsidig hammer med trehåndtak og krum klør. Denne gamle klassikeren er fortsatt en vinner.",
		weapon_hatchet_description = "Gjør vedkubber av vennene dine med denne lett håndterlige og enkle å skjule øksa.",
		weapon_knuckle_description = "Perfekt for å slå ut gulltenner, eller som gave til trofépartneren som har alt.",
		weapon_knife_description = "Denne karbonstålkniven med en bladlengde på 7 tommer er dobbeltsidig med en tagget rygg for bedre stikk- og støteevne.",
		weapon_machete_description = "USAs vestafrikanske våpenhandel handler ikke bare om å gi. Gjenoppdag det enkle livet med denne rustne huggjernet.",
		weapon_switchblade_description = "Fra lommen til spidd-dypt i den andre fyrens ribbein på under ett sekund: sammenleggbare kniver vil aldri gå ut av stil.",
		weapon_nightstick_description = "24\" nattklubbe med sidehåndtak av polykarbonat.",
		weapon_wrench_description = "En evig favoritt blant overlevende av apokalypsen og voldelige fedre verden over, tilsynelatende fungerer den også som en slags verktøy.",
		weapon_battleaxe_description = "Hvis det er godt nok for middelalderske fotsoldater, moderne grensevakter og pushy fotballmødre, er det godt nok for deg.",
		weapon_poolcue_description = "Ah, det finnes ingen lyd som er like tilfredsstillende som lyden av et perfekt brudd, spesielt når det er ryggraden til den andre fyren som knekker.",
		weapon_stone_hatchet_description = "2,5 millioner års forskning og utvikling og vi er fremdeles her.",
		weapon_candycane_description = "En festlig sukkerspinn. Det er litt klissete.",

		weapon_pistol_description = "Standard håndvåpen. En .45 kaliber kampistol med en magasinkapasitet på 12 runder som kan utvides til 16.",
		weapon_pistol_mk2_description = "Balanse, enkelhet, presisjon: ingenting opprettholder freden som et forlenget løp i den andre fyrens munn.",
		weapon_combatpistol_description = "En kompakt, lett halvautomatisk pistol designet for bruk av rettshåndhevelse og personlig selvforsvar. 12-skuddsmagasin med mulighet for å utvide til 16 skudd.",
		weapon_appistol_description = "Høytpenetrerende, helautomatisk pistol. Holder 18 skudd i magasinet med mulighet for å utvide til 36 skudd.",
		weapon_stungun_description = "Zaptastisk moro for hele familien!",
		weapon_pistol50_description = "Skyt aldri en stor kaliber man med en liten kaliber kule.",
		weapon_snspistol_description = "Som kondomer eller hårspray, passer denne i lommen for en tur på byen. Prisen på en flaske på en klubb, den er halvparten så nøyaktig som en champagnekork, og dobbelt så dødelig.",
		weapon_snspistol_mk2_description = "Den ultimate håndveskefyller: hvis du vil gjøre lørdagskvelden virkelig spesiell, er dette billetten din.",
		weapon_heavypistol_description = "Tungvektsmesteren innen magasinmatet, halvautomatiske håndvåpen. Gir nøyaktighet og en alvorlig underarmsøkt hver gang.",
		weapon_vintagepistol_description = "Det du virkelig trenger er en mer gjenkjennelig pistol. Stikk deg ut fra mengden under en væpnet ran med denne graverte pistolen.",
		weapon_flaregun_description = "Brukes for å signalisere nød eller beruset spenning. Advarsel: å peke direkte på enkeltpersoner kan føre til spontan selvantennelse. En del av Heists.",
		weapon_marksmanpistol_description = "Ikke for de som sikter lavt. Gjør hvert skudd teller siden du vil bruke like mye tid på å lade som å skyte.",
		weapon_revolver_description = "En håndholdt pistol med nok stoppekraft til å ta ned en rasende neshorn og tung nok til å slå det i hjel hvis du går tom for ammunisjon.",
		weapon_revolver_mk2_description = "Hvis du kan løfte den, er dette det nærmeste du kommer til å skyte noen med et godstog.",
		weapon_doubleaction_description = "Fordi hevn noen ganger er en rett som serveres seks ganger, i rask rekkefølge, akkurat midt mellom øynene.",
		weapon_raypistol_description = "Republikansk romranger spesial, fersk fra den galaktiske krigen mot sosialisme: ingen ammunisjon, ingen magasin, bare én brutal energipuls etter den andre.",
		weapon_ceramicpistol_description = "Ikke bestemors keramikk. Selv om denne lommepistolen er liten nok til å passe i vesken hennes og ikke vil utløse en metall detektor.",
		weapon_navyrevolver_description = "En virkelig museumsperle. Vil du vite hvordan Vesten ble vunnet - treg påfyllingshastighet og en hel haug med blodutgytelse.",
		weapon_gadgetpistol_description = "En dødelig skudd. Ikke vær for forsiktig. Du vil ikke ripe opp titan nitrid-finishen.",
		weapon_stungun_mp_description = "Zaptastisk moro for hele familien!",
		weapon_pistolxm3_description = "En kompakt, lett pistol som skyter 9mm patroner. Svært effektiv for nærkamp.",

		weapon_microsmg_description = "Kombinerer en kompakt design med en høy skuddtakt på omtrent 700-900 skudd per minutt.",
		weapon_smg_description = "Dette er kjent som en god allsidig maskinpistol. Lettvektsdesign med en nøyaktig sikte og magasinkapasitet på 30 runder.",
		weapon_smg_mk2_description = "Lett, kompakt, med en høyrate av ild. Kan gjøre ethvert lukket område til en dreperbane med et klikk på avtrekkeren.",
		weapon_assaultsmg_description = "En høykapasitets maskinpistol som er både kompakt og lett. Holder opptil 30 kuler i én magasin.",
		weapon_combatpdw_description = "Hvem sa at personlig våpen ikke kunne være verdig for militært personell? Takk til våre lobbyister, ikke Kongressen. Integrert demper.",
		weapon_machinepistol_description = "Denne fullautomatiske er fangedrummen til din V8 bass: ingen drive-by lyder helt riktig uten den.",
		weapon_minismg_description = "Blir stadig mer populær siden markedsteamet så forbi spesialstyrkene og begynte å bry seg om de små gutta i lavinntektsområder.",
		weapon_raycarbine_description = "Republikanske rom-ranger spesialvåpen. Hvis du vil omdanne en liten grønn mann til litt grønn gugge, er dette den eneste amerikanske måten å gjøre det på.",

		weapon_pumpshotgun_description = "Standard hagle ideell for nærkamp. En høy prosjektil spredning kompenserer for dens lavere nøyaktighet på lang avstand.",
		weapon_pumpshotgun_mk2_description = "Bare en ting har mer action enn en pump-action hagle: pass deg, rekyl er nesten like dødelig som skuddet.",
		weapon_sawnoffshotgun_description = "Denne enkeltløps, hagesagd hagla kompenserer for sin lave rekkevidde og lave ammobeholdning med ødeleggende effektivitet i nærkamp.",
		weapon_assaultshotgun_description = "Fullt automatisk hagle med 8 skudds magasin og høy skuddtakt.",
		weapon_bullpupshotgun_description = "Mer enn veier opp for sin langsomme pump-aksjonshastighet med sin rekkevidde og spredning. Dekimerer alt i prosjektilbanen.",
		weapon_musket_description = "Bevæpnet med ingenting annet enn musketter og en overlegen kompleks, tok briterne over halve verden. Eiendommen til geværet som bygde et imperium.",
		weapon_heavyshotgun_description = "Våpenet å gripe etter når du absolutt må ødelegge rommet. Best brukt i nærheten av enkle overflater å tørke.",
		weapon_dbshotgun_description = "Gjør én ting og gjør det godt. Hvem trenger en høy skytehastighet når ditt første skudd gjør den andre fyren til en fin tåke?",
		weapon_autoshotgun_description = "Hvor mange effektive verktøy for opptøyer kan du putte i buksene dine? OK, to. Men dette er det andre.",
		weapon_combatshotgun_description = "Det er bare en halvautomatisk hagle med en avfyringshastighet som får LSFD- alarmen til å ringe, og du ser på det.",

		weapon_assaultrifle_description = "Denne standardangrepsriflen har en stor kapasitet magasin og langdistanse nøyaktighet.",
		weapon_assaultrifle_mk2_description = "Den definitive revisjonen av en klassisker: alt som trengs er litt arbeid, og utseendet kan drepe tross alt.",
		weapon_carbinerifle_description = "Ved å kombinere langdistanse nøyaktighet med et høyt kapasitets magasin, kan Carbine Rifle stole på å gjøre treffet.",
		weapon_carbinerifle_mk2_description = "Dette er håndlaget kraft: du kunne ikke levere en saft av kuler med mer kjærlighet og omsorg selv om du satte dem inn for hånd.",
		weapon_advancedrifle_description = "Den letteste og mest kompakte av alle automatgeværer, uten å kompromittere nøyaktighet og skuddtakt.",
		weapon_specialcarbine_description = "En ekstremt allsidig angrepsrifle som kombinerer nøyaktighet, manøvrerbarhet, ildkraft og lav rekyl for enhver kamp situasjon.",
		weapon_specialcarbine_mk2_description = "Mesteren har oppgradert: Jack-of-all-trades har blitt bedre enn noensinne.",
		weapon_bullpuprifle_description = "Den nyeste kinesiske importsaken som tar Amerika med storm, er denne riflen kjent for sin balanserte håndtering. Lett og meget kontrollerbar i automatisk ild.",
		weapon_bullpuprifle_mk2_description = "Så presis og utsøkt, dette er ikke en saft av kuler, men en symfoni.",
		weapon_compactrifle_description = "Halv størrelse, all kraft, dobble rekyl: det er ingen riskier måte å si \"jeg prøver å kompensere for noe\".",
		weapon_militaryrifle_description = "Dette utrolig kraftfulle angrepsgeværet ble designet for høyt kvalifiserte og eksepsjonelt dyktige soldater. Ja, du kan kjøpe det.",
		weapon_heavyrifle_description = "Tyngre betyr bedre, ikke sant? Ja, la oss gå for det.",
		weapon_tacticalrifle_description = "Denne sesongens must-have maskinvare for lov håndhevelse, militært personell og alle som er låst i kamper til døden med enten lov håndhevelse eller militært personell.",

		weapon_mg_description = "Generelt formål maskingevær som kombinerer robust design med pålitelig ytelse. Lang rekkevidde penetrerende kraft. Svært effektiv mot store grupper.",
		weapon_combatmg_description = "En lett, kompakt maskinpistol som kombinerer utmerket manøvrerbarhet med en høy skuddtakt for ødeleggende effekt.",
		weapon_combatmg_mk2_description = "Du kan aldri ha for mye av en god ting. Hvis det første skuddet teller, må de neste hundre eller så telle dobbelt.",
		weapon_gusenberg_description = "Fullfør stilen din med et forbudspistol. Ser flott ut stikkende ut av vinduet til en Roosevelt eller kombinert med en pinstripe dresser.",

		weapon_sniperrifle_description = "Standard skarpskyttergevær. Ideell for situasjoner som krever nøyaktighet på lang avstand. Begrensninger inkluderer sakte omlastingstid og veldig lav skuddtakt.",
		weapon_heavysniper_description = "Inneholder panserbrytende kuler for tung skade. Leveres med laser sikte som standard.",
		weapon_heavysniper_mk2_description = "Langt unna, men likevel alltid intimt: Hvis du leter etter et sikkert fundament for den lange avstanden, er dette det.",
		weapon_marksmanrifle_description = "Enten du er tett på eller langt unna, vil denne våpenet få jobben gjort. Et flerområdeverktøy for verktøy.",
		weapon_marksmanrifle_mk2_description = "Kjent i militære kretser som \"The Dislocator\", dette mod settet vil ødelegge både målet og skulderen din, i den rekkefølgen.",
		weapon_precisionrifle_description = "En rifle for perfeksjonister. Fordi hvorfor nøye deg med rett mellom øynene, når du kunne ha rett gjennom den overlegne frontalgyrusen?",

		weapon_rpg_description = "Et bærbart, skuldermontert, anti-tankvåpen som skyter ut eksplosive stridshoder. Svært effektivt for å ta ned kjøretøy eller store grupper av angripere.",
		weapon_grenadelauncher_description = "En kompakt, lettvekts granatkaster med halvautomatisk funksjonalitet. Kan holde opptil 10 granater.",
		weapon_grenadelauncher_smoke_description = "\"Du får en røykgranat, du får en røykgranat, du får en røykgranat!\" - Oprah",
		weapon_minigun_description = "En ødeleggende 6-løps maskingevær som har roterende løp i Gatling-stil. Veldig høy ildtakt (2000 til 6000 skudd per minutt).",
		weapon_firework_description = "Få tilbake sjarmen med denne fyrverkerikasteren, garantert å få noen til å utbryte \"ooh\" og \"aah\" fra publikumet.",
		weapon_railgun_description = "Alt du trenger å vite er - magneter, og den gjør grusomme ting med det den peker på.",
		weapon_hominglauncher_description = "Infrarød og styrt missil launcher. For alle dine bevegelige målbehov.",
		weapon_compactlauncher_description = "Fokusgrupper som brukte den vanlige modellen, foreslo at den var for nøyaktig og fant det vanskelig å bruke den med en hånd på gasshåndtaket. Enkel løsning.",
		weapon_rayminigun_description = "Republikansk Space Ranger Special. GÅ VIDERE, SI AT JEG KOMMUNISERER FOR NOE. JEG UTFORDRER DEG.",
		weapon_emplauncher_description = "Skyt på droner og helikoptre for å gjøre dem søvnige.",
		weapon_stinger_description = "En skulderlansert luftvernmissil-lanser til å ta ned fiendtlige fly.",
		weapon_railgunxm3_description = "Alt du trenger å vite er - magneter, og det gjør forferdelige ting mot det det er pekt på.",

		weapon_grenade_description = "Standard fragmenteringsgranat. Trekk ut splinten, kast og søk dekning. Ideell for å eliminere grupperte angripere.",
		weapon_bzgas_description = "Bruk for å røyke ut personer du ikke liker.",
		weapon_molotov_description = "En rå, men høyst effektiv brannvåpen. Ingen 'happy hour' med denne cocktailen.",
		weapon_stickybomb_description = "En plastisk sprengladning utstyrt med en fjernstyrt detonator. Kan kastes og deretter detonereres eller festes til et kjøretøy og deretter detonereres.",
		weapon_proxmine_description = "Legg igjen en overraskelse til vennene dine med disse bevegelsessensorbaserte landmineene. Kort forsinkelse etter aktivering.",
		weapon_snowball_description = "Vær på vakt og klar til å samle gjengen din til en vennlig snøballkamp, men vær advart, disse iskalde små ballene kan gjøre vondt.",
		weapon_pipebomb_description = "Husk at det ikke teller som en improvisert eksplosiv enhet når du kjøper den i en butikk og bruker den i et førsteverdensland.",
		weapon_ball_description = "Signert av Babe Ruth, helt ekte.",
		weapon_smokegrenade_description = "Tåregassgranat, spesielt effektiv til å slå ut flere fiender. Vedvarende eksponering kan være dødelig.",
		weapon_flare_description = "Kast for luftslipp.",
		weapon_acidpackage_description = "En pakke med syre. Bruk den for å lage et rot.",

		weapon_petrolcan_description = "Lager en stripe med bensin som kan tennes på.<br><br>Bensin igjen: ${petrolAmount}%.",
		gadget_parachute_description = "Denne nylon sports fallskjermen har et ram-air parafoil design for økt kontroll over retning og fart.",
		weapon_fireextinguisher_description = "Brannslukker også kjent som \"røykmaskin\".",
		weapon_hazardcan_description = "Som en bensinkanne, men ubrukelig.",
		weapon_fertilizercan_description = "En god gammel kanna med gjødsel, det er ingenting bedre for avlingene dine.",

		red_parachute_description = "Akkurat som vanlig fallskjerm, men i rødt.",
		blue_parachute_description = "Akkurat som vanlig fallskjerm, men i blått.",
		black_parachute_description = "Akkurat som vanlig fallskjerm, men i svart.",

		-- NOTE: Addon weapons
		weapon_addon_huntingrifle = "Jaktrifle",
		weapon_addon_huntingrifle_description = "Ditt foretrukne gevær for jaktformål.",

		weapon_addon_vfcombatpistol = "VF Kamp-pistol",
		weapon_addon_vfcombatpistol_description = "Smil og vent på blinket.",

		weapon_addon_dp9 = "D&P 9 Pistol",
		weapon_addon_dp9_description = "12 sjanser til å fange Dub'en.",

		weapon_addon_dutypistol = "SIG Sauer P226",
		weapon_addon_dutypistol_description = "Det originale trådløse hjemmebeskyttelsessystemet.",

		weapon_addon_gardonepistol = "Gardone Pistol",
		weapon_addon_gardonepistol_description = "Når du er usikker, tøm magasinet.",

		weapon_addon_endurancepistol = "Utholdenhetspistol",
		weapon_addon_endurancepistol_description = "Viagraen til håndvåpen",

		weapon_addon_sentinelshotgun = "Sentinel Hagle",
		weapon_addon_sentinelshotgun_description = "En retning drepe distributør.",

		weapon_addon_sentinelbbshotgun = "Beanbag Hagle",
		weapon_addon_sentinelbbshotgun_description = "Sekker med moro.",

		-- TODO: Add a description for this one
		weapon_addon_stungun = "Coil Stun Gummi",
		weapon_addon_stungun_description = "Zap-fantastisk moro for hele familien!",

		weapon_addon_mp9 = "B&T MP9",
		weapon_addon_mp9_description = "Liten og rask, akkurat som personen som har den...",

		weapon_addon_rc4 = "Remington R4-C",
		weapon_addon_rc4_description = "Kampglad og rask, den perfekte partneren å ha i laget. Så lenge ikke den rødtoppede holder den.",

		weapon_addon_pp19 = "PP-19 Vityaz",
		weapon_addon_pp19_description = "Høydepunktet av russisk ekspertise, perfekt for enhver type \"Raid\".",

		weapon_addon_m9a3 = "Beretta M9A3",
		weapon_addon_m9a3_description = "Alt du trenger for å få gjort de skitne gjerningene dine billig.",

		weapon_addon_357mag = "357 Magnum",
		weapon_addon_357mag_description = "Fra trafikkstopp til zombier, denne revolveren er en sheriffs beste venn.",

		weapon_addon_m870 = "Remington M870",
		weapon_addon_m870_description = "Perfekt hagle for sport og jakt, selv om å skyte på dannys ikke er en sport... eller er det det?",

		weapon_addon_rpk16 = "RPK-16",
		weapon_addon_rpk16_description = "Den mest perfekte maskingeværet som noensinne har eksistert, bare ikke glem treningsdrakten.",

		weapon_addon_tacknife = "Ultimate Taktisk Kniv",
		weapon_addon_tacknife_description = "Endelig har du nådd nivå 100. Obersten vil være stolt.",

		weapon_addon_reaper = "Dødsengel",
		weapon_addon_reaper_description = "Machete, men mer elegant.",

		weapon_addon_berserker = "Berserker",
		weapon_addon_berserker_description = "Kul øks.",

		weapon_addon_katana = "Katana",
		weapon_addon_katana_description = "Ninja, ja.",

		weapon_addon_stidvc = "STI DVC 2011",
		weapon_addon_stidvc_description = "Fremtiden er her, gamle mann, bare med mindre kaliber ...",

		weapon_addon_g36c = "Heckler & Koch G36C",
		weapon_addon_g36c_description = "Dimensjonene til et automatgevær med terminal ballistikk fra 5.56 mm NATO patronen. Utviklet for spesielle taktiske applikasjoner av politi og militære spesialstyrker.",

		weapon_addon_vandal = "RGX Vandal",
		weapon_addon_vandal_description = "Valorant, pog.",

		weapon_addon_ak74 = "AK-74",
		weapon_addon_ak74_description = "hold deg fast eller applauder.",

		weapon_addon_p320b = "P320",
		weapon_addon_p320b_description = "Vi er ikke i London lenger, kjære.",

		weapon_addon_mk18 = "MK18",
		weapon_addon_mk18_description = "«Hold deg bevæpnet eller bli skutt» - George Washington (kanskje)",

		weapon_addon_glock = "Glock 17",
		weapon_addon_glock_description = "Den mest populære håndvåpenet i verden.",

		weapon_addon_colt = "Colt 1851 Navy",
		weapon_addon_colt_description = "Original-revolveren, den som startet alt.",

		weapon_addon_hk433 = "H&K 433",
		weapon_addon_hk433_description = "H&K 433 er en tysk angrepsrifle utviklet av Heckler & Koch i 2009.",

		weapon_addon_m6ic = "LWRC M6IC",
		weapon_addon_m6ic_description = "Den perfekte pistolen for den perfekte personen, bare ikke glem dressbuksen.",

		weapon_addon_hk416 = "H&K 416",
		weapon_addon_hk416_description = "H&K 416, Ferrarien av skytevåpen - elegant, kraftig og garantert å vekke oppsikt. Det er som å ha en personlig trener for fingeren din, som gir resultater som vil gjøre fiendene dine misunnelige. Si hallo til din nye BFF (Beste Skytevåpen For Alltid)!"
	},

	items = {
		move_to_repair = "Flytt deg hit for å reparere kjøretøyet.",
		repairing_vehicle = "Reparerer kjøretøy",
		using_first_aid_kit = "Bruker førstehjelpspakke",
		using_bandages = "Bruker bandasjer",
		using_ifak = "Bruker IFAK",
		move_to_wash = "Flytt deg hit for å vaske kjøretøyet.",
		vehicle_too_clean = "Kjøretøyet er alt for rent til å vaske.",
		move_to_put_fake_plate = "Flytt hit for å sette på en falsk bilskilt.",
		unable_to_repair = "Du kan ikke reparere kjøretøyet mens det er spillere inni.",
		failed_lockpicking = "Feilet i å plukke låsen.",
		lockpicking_succeeded = "Låsen ble plukket.",
		hotwiring_vehicle = "Starte kjøretøy uten nøkkel.",
		lockpick_broke = "Låsepinnen ble ødelagt.",
		failed_hotwire = "Feilet i å starte motoren.",
		unpacking_green_rolls = "Pakker ut grønne ruller.",
		you_do_not_have_enough_rolling_paper = "Du har ikke nok rullende papir.",
		rolling_joint = "Ruller en joint.",
		rolling_joints = "Ruller joints",
		changing_license_plate = "Bytter skiltnummer",
		equipping_parachute = "Utstyrer ${itemName}",
		lockpicking_vehicle = "Bryter opp kjøretøyets lås",
		illegal_weather_name = "Prøver å bruke en værtrollformel med et ulovlig værnavn.",
		equipping_body_armor = "Utstyrer skuddsikker vest",
		illegal_burger_shot_delivery_item_id = "Prøver å bruke en burger shot-leveringsvare med en ugyldig vare-ID.",
		illegal_lighter_item_id = "Prøver å bruke en lighter med en ugyldig vare-ID.",
		unable_to_use_lighter_in_vehicle = "Du kan ikke bruke lighter i et kjøretøy.",
		not_possible_in_a_vehicle = "Denne handlingen er ikke mulig i et kjøretøy.",
		just_used_bandage = "Du har nettopp brukt et førstehjelpssett. Vent litt før du bruker et nytt.",
		drank_gasoline_death = "Forgiftet av bensin",
		drank_bleach_death = "Forgiftet av blekemiddel",

		failed_burger_shot_delivery = "Kunne ikke åpne leveransen fra Burgershot.",
		failed_bean_machine_delivery = "Kunne ikke åpne leveransen fra Bean Machine.",

		burger_shot_delivery_empty = "Det virker som om måltidet fra Burgershot var tomt.",
		bean_machine_delivery_empty = "Denne Bean Machine-leveringen virket tom.",

		logs_used_weather_spell_title = "Brukte værformelen",
		logs_used_weather_spell_details = "${consoleName} brukte værformelen `${itemName}`.",

		you_have_used_jail_card = "Du har brukt kortet 'kom deg ut av fengsel'!",
		you_are_not_in_jail = "Du er ikke i fengsel.",

		stored_map_location = "Oppdaterte kartlokasjonen.",
		failed_location_map = "Kunne ikke oppdatere kartlokasjonen.",
		updated_waypoint = "Satt veipunkt til kartlokasjonen.",

		cleared_map = "Slettet lagret kartlokasjon.",
		failed_clear_map = "Kunne ikke slette lagret kartposisjon.",
		clear_map_invalid_slot = "Ugyldig inventarplass."
	},

	jackpot = {
		press_to_deposit = "Trykk ~INPUT_REPLAY_SHOWHOTKEY~ for å sette inn gjenstander i Online Jackpot.",
		can_only_withdraw_at_casino = "Du kan bare ta ut penger på kasinoet.",

		jackpot = "Jackpot",
		inventory = "Inventar",
		history = "Historikk",
		no_items_in_inventory = "Det ser ut som du ikke har noen gjenstander i det virtuelle inventaret ditt.",
		you_can_deposit_at_the_casino = "Du kan sette inn gjenstander på kasinoet.",
		close = "Lukk",
		bet = "Innsats",
		your_chance = "Din sjanse: ${chance}%",
		character_bet = "${characterName} satset ${itemAmount} gjenstand(er) til en verdi av $${itemWorth}",
		pot = "Potten: $${jackpotWorth}",
		items = "Gjenstander: ${jackpotItemAmount}",
		withdraw = "Ta ut (${withdrawAmount})",
		quick_sell = "Rask salg ($${quickSellWorth})",
		inventory_value = "Verdi: $${inventoryWorth}",
		inventory_total_items = "Totale gjenstander: ${inventoryTotalItems}",
		daily_fee_information = "Klokken 06:00 UTC hver dag vil gjenstander som er verdt >= 5% av den totale inventarverdien din bli fjernet som 'lagringsavgift'.",

		take_fee_no_permissions = "Spiller forsøkte å ta jackpot-avgifter uten riktig tillatelser.",
		took_jackpot_fees = "Tok jackpot-avgifter. Fjernet ${removedTotalItems} gjenstander verdt $${removedTotalWorth} fra ${inventories} inventarer."
	},

	jail = {
		press_to_leave_jail = "Trykk ~INPUT_CONTEXT~ for å forlate fengselet.",

		menu_title = "Fengselmeny",
		check_remaining_time = "Sjekk gjenværende tid",
		leave_city = "Forlat byen",
		leave_jail = "Forlat fengselet",
		close_menu = "Lukk meny",

		sentence_reduced = "Straffen din ble redusert med ${amount} måneder. Du har ${remaining} måneder igjen.",
		sentence_over = "Setningen din er over.",
		remaining_time = "Gjenstående tid: ${remaining} måneder.",
		jailed = "Du har blitt fengslet i ${amount} måneder.",

		mission_help_1 = "Trykk ~INPUT_CONTEXT~ for å vaske gulvet.",
		mission_help_2 = "Trykk ~INPUT_CONTEXT~ for å spise noe.",
		mission_help_3 = "Trykk på ~INPUT_CONTEXT~ for å trene.",

		mission_1 = "Rengjør gulvet.",
		mission_2 = "Spiser en sandwich.",
		mission_3 = "Trene.",

		mission_blip = "Fengselsoppdrag"
	},

	kiosks = {
		read_catalog = "Trykk ~g~${InteractionKey} ~w~for å lese katalog"
	},

	leashes = {
		press_to_use_leash = "[${InteractionKey}] Bruk bånd",
		putting_leash_on = "Tar på bånd",
		press_to_take_leash_off = "[${InteractionKey}] Ta av bånd",
		takeing_leash_off = "Tar av bånd."
	},

	letterboxes = {
		press_to_access = "Trykk på ~g~${SeatEjectKey} ~w~for å åpne ${type}",
		letterbox_broken = "Postkassen er ødelagt.",

		type_letterbox = "postkasse",
		type_newsdisp = "nyhetsholder",
		type_postbox = "postkasse"
	},

	locate = {
		invalid_filter_value = "Ugyldig filterverdi.",
		locate_failed = "Kunne ikke finne enhet som samsvarer med `${filter}`.",
		something_went_wrong = "Klarte ikke å finne enheten.",
		locate_success = "Fant enhet som samsvarer med `${filter}` på (${x}, ${y}, ${z}) (instans = ${instance}).",

		locate_entity_no_permissions = "Spilleren forsøkte å lokalisere en enhet uten tilstrekkelige tillatelser.",

		locate_entity_logs_title = "Lokalisert enhet",
		locate_entity_logs_details = "${consoleName} forsøkte å finne enhetstype `${filterType}` med verdi `${filterValue}`."
	},

	login = {
		exit_city = "Forlat byen.",
		press_to_exit_city = "Trykk ~g~${InteractionKey} ~w~for å forlate byen.",
		bad_words_in_character_creation = "Forsøkte å opprette en karakter med et muligens vulgært ord i enten navnet eller bakgrunnen: \"${badWords}\"",
		disallowed_words_in_character_name = "Forsøkte å opprette en karakter med et muligens upassende navn: \"${characterName}\"",
		disallowed_birthday_ban = "Forsøkte å opprette en karakter med en muligens ugyldig fødselsdato: \"${birthday}\"",

		welcome_to = "Velkommen til",
		press = "Trykk",
		enter = "ENTER",
		to_join = "for å bli med",
		changelogs = "Endringslogg",
		fetching_character_data = "Henter karakterdata...",
		yes = "Ja",
		no = "Nei",
		exit_game = "Avslutt spill",
		are_you_sure_you_want_to_exit = "Er du sikker på at du vil avslutte spillet?",
		exiting_game = "Avslutter spill...",
		delete_character = "Slett",
		select_character = "Velg",
		new_character = "Ny karakter",
		empty_slot = "Tom plass",
		male = "Mann",
		female = "Kvinne",
		name = "Navn",
		dob = "Fødselsdato",
		born = "Født ${dob}",
		gender = "Kjønn",
		cash = "Kontanter",
		bank = "Bank",
		story = "Historie",
		loading_character = "Laster inn karakter...",
		deleting_character = "Sletter karakter...",
		create_character = "Opprett karakter",
		first_name = "Fornavn",
		last_name = "Etternavn",
		date_of_birth = "Fødselsdato",
		character_backstory = "Karakter bakgrunnshistorie",
		cancel = "Avbryt",
		complete = "Fullfør",
		creating_character = "Oppretter karakter...",
		are_you_sure_you_want_to_delete = "Er du sikker på at du vil slette denne karakteren? Denne handlingen kan ikke angres.",
		stop_download = "Stopp nedlasting",
		start_download = "Start nedlasting",
		slow_download = "Treg nedlasting",
		regular_download = "Vanlig nedlasting",
		back = "Tilbake",
		copy_license = "Lisens-ID",
		copy_license_success = "Kopiert!",
		cache_assets = "Cache-eiendeler",
		download_assets = "Ønsker du å laste ned og cache mesteparten av serverens eiendeler? Dette vil føre til noen ting:",
		cache_assets_less_lag = "Potensielt mindre lag spikes, mindre droppet frames og mindre ping spikes under spillet. Spesielt hvis du har lav ytelse på maskinvaren eller en tregere tilkobling.",
		cache_assets_crashes = "Det kan føre til at spillet krasjer i løpet av prosessen. Hvis dette skjer, bruk 'sakte nedlasting' -alternativet i stedet.",
		cache_assets_restart = "Når det er fullført, anbefaler vi at du starter spillet på nytt da det kan forårsake lag resten av denne økten.",
		cache_assets_disk = "Dette vil ta opp litt diskplass, så sørg for at det er tilgjengelig plass. Etter en oppdatering kan det også være lurt å tømme bufferen for å frigjøre plass.",
		vehicles = "Kjøretøy",
		objects = "Objekter",
		peds = "Personer",
		clothing = "Klær",
		main_menu = "Hovedmeny",
		gta_settings = "GTA-innstillinger",
		discord = "Discord",
		framework = "Rammeverk",
		rules = "Serverregler",
		notice = "Varsel",
		language = "Språk",
		support_the_server = "Støtt serveren",
		battle_royale = "Battle Royale",
		arena = "Arena",
		queue = "Kø",
		queue_position_with_priority = "🐌 Du er ${queuePosition}/${queueTotal} i køen med ${queuePriorityName} prioritet. 🕐${queueTime}",
		queue_position_without_priority = "🐌 Du er ${queuePosition}/${queueTotal} i køen. 🕐${queueTime}",
		you_are_through = "Du er inne!",
		join_server = "Bli med på serveren",
		tired_of_queueing = "Gått lei av å stå i kø? Støtt oss for køprioritet!",
		joining_battle_royale = "Slutter seg til Battle Royale",
		joining_arena = "Slutter seg til Arena",
		refresh = "Oppdater",
		refreshing = "Oppdaterer...",

		missing_character_creation_data = "Mangler data for karakteroppdrett.",
		invalid_first_name = "Manglende eller ugyldig fornavn (2 til 100 tegn).",
		invalid_last_name = "Manglende eller ugyldig etternavn (2 til 100 tegn).",
		invalid_date_of_birth = "Manglende eller ugyldig fødselsdato.",
		invalid_backstory = "Manglende eller ugyldig bakgrunnshistorie (1 til 5 000 tegn).",

		bad_words = "Det er noen stygge ord i karakternavnet eller bakgrunnshistorien din.",
		disallowed_name = "Det er noen uakseptable ord i karakternavnet ditt.",
		disallowed_birthday = "Fødselsdatoen din er ikke tillatt.",
		numbers_not_allowed = "Tall er ikke tillatt i karakternavnet.",
		something_went_wrong = "Noe gikk galt mens vi prøvde å opprette karakteren din.",
		character_slot_occupied = "Denne karakterplassen er allerede opptatt.",
		name_already_taken = "Dette navnet er allerede tatt.",
		illegal_character_slot = "Du kan ikke opprette en karakter i denne plassen.",
		character_already_loaded = "Du har allerede en karakter lastet inn.",

		new_citizen = "Ny borger",
		los_santos_police_dept = "LOS SANTOS POLITIDEPARTMENT",

		welcome_msg_title = "Velkommen til ${communityName}!",
		welcome_msg = "Du har mottatt noen gjenstander som hjelper deg å starte. Du kan bruke gjenstandene i din hotbar ved å bruke tastene 1-5.\n\n*Trykk på tasten 1 for å lese brosjyren din.*",

		press_to_go_back_to_menu = "Trykk på ~g~${InteractionKey}~w~ for å gå tilbake til menyen.",
		go_back_to_menu = "Gå tilbake til menyen.",

		developer = "Utvikler",
		super_admin = "Super Admin",
		staff = "Personale",
		reconnect = "Koble til igjen",
		christmas = "Jul",
		casino = "Kasino",
		random = "Tilfeldig",
		beginner = "Nybegynner",
		custom = "Tilpasset",

		appreciated_tier = "Verdsatt nivå",
		respected_tier = "Respektert nivå",
		heroic_tier = "Heroisk nivå",
		legendary_tier = "Legendarisk nivå",
		godlike_tier = "Gudefullt nivå"
	},

	loot = {
		press_to_pick_up = "Trykk ~INPUT_CONTEXT~ for å plukke opp ${itemLabel}."
	},

	lottery = {
		lottery_announcement = "Lotteri kunngjøring",
		lottery_about_to_roll = "En vinner vil trekkes om 5 minutter for dagens lotteri. Totalpremien er for øyeblikket på $${totalPot} hvor du har lagt inn $${betAmount}. Sjansen din til å vinne er ${odds}%.",
		current_lottery_pot = "Den totale jackpoten er for øyeblikket på $${totalPot}, hvor du har satset $${betAmount}. Din sjanse til å vinne er på ${odds}%.",
		drew_a_lottery_winner = "En vinner for lotteriet har blitt trukket.",
		roll_lottery_no_permission = "Spilleren prøvde å trekke lotteriet, men hadde ikke tillatelse til å gjøre det.",
		winner_has_been_picked = "${fullName} har vunnet jackpoten på $${totalPot}! De satset $${betAmount} og hadde en sjanse til å vinne på ${odds}%.",
		claimed_lottery_winnings = "Har hentet alle lotterigevinstene.",
		no_lottery_winnings = "Du har ingen uinnløste lotteri gevinster.",
		internal_server_error = "Det oppstod en intern serverfeil.",
		use_disabled_animal = "Du kan ikke bruke lotteriet som et dyropptreden.",

		lottery_log_title = "Vant Lotteri",
		lottery_log_description = "${fullName} (#${characterId}) har vunnet lotteripotten på $${totalPot}. De satset $${betAmount}."
	},

	lucky_wheel = {
		hold_to_spin_lucky_wheel = "Hold ~INPUT_CONTEXT~ for å spinne Lykkehjulet. Kostnaden er $${cost}.",
		hold_to_spin_lucky_wheel_free_one_left = "Hold ~INPUT_CONTEXT~ for å spinne Lykkehjulet. Du har 1 gratis spinn igjen i dag.",
		hold_to_spin_lucky_wheel_free_multiple_left = "Hold ~INPUT_CONTEXT~ for å spinne Lykkehjulet. Du har ${spins} gratis spinn igjen i dag.",
		continue_holding_to_spin_lucky_wheel = "Fortsett å holde ~INPUT_CONTEXT~ for å spinne Lykkehjulet.",
		unable_to_spin_lucky_wheel = "Du har allerede spunnet Lykkehjulet så mye som tillatt i dag. Neste spinn tilgjengelig om ${time}.",
		not_enough_balance_to_spin = "Du har ikke nok penger til å snurre hjulet. Kostnaden er $${cost}.",
		lucky_wheel_is_occupied = "Lykkehjulet er for øyeblikket opptatt. Vennligst vent.",

		logs_lucky_wheel_reward_title = "Lykkehjulets premie",
		logs_lucky_wheel_reward_vehicle_details = "${consoleName} har spunnet hjulet og vunnet et kjøretøy.",
		logs_lucky_wheel_reward_vehicle_given_details = "${consoleName} har blitt gitt et kjøretøy med modellnavn `${modelName}`.",
		logs_lucky_wheel_reward_money_details = "${consoleName} har spunnet hjulet og vunnet $${amount}.",
		logs_lucky_wheel_reward_chips_details = "${consoleName} har spunnet hjulet og vunnet $${amount} med chips.",
		logs_lucky_wheel_reward_jewelry_details = "${consoleName} har spunnet hjulet og vunnet smykker med navnet `${itemName}`.",
		logs_lucky_wheel_reward_item_details = "${consoleName} har spunnet hjulet og vunnet en gjenstand med navnet `${itemName}`.",
		logs_lucky_wheel_reward_queue_priority_details = "${consoleName} har spunnet lykkehjulet og vant en uke med køprioritet."
	},

	magazines = {
		issue_id = "Problem #${issueId}",
		releases_updated = "Oppdateringer lagt til.",
		no_release_changes = "Ingen endringer ble gjort.",
		refresh_magazines_no_permissions = "Spiller forsøkte å oppdatere magasiner uten nødvendige tillatelser."
	},

	mdt = {
		mdt_title = "Mobil Data Terminal",
		loading_reports = "Laster inn rapporter...",
		failed_report_load = "Klarte ikke å laste inn rapporter.",
		no_reports = "Ingen rapporter.",
		loading = "Laster...",

		title_placeholder = "Tittel",
		body_placeholder = "Min rapport..."
	},

	mechanics = {
		move_here_check = "Flytt hit for å sjekke oppgraderinger",
		checking_upgrades = "Sjekker kjøretøyoppgraderinger",
		upgrades_list = "${armor}, ${engine}, ${brakes}, ${transmission} og ${turbo}.",

		has_no_turbo = "har ikke turbo installert",
		has_turbo = "har en turbo installert",

		armor_0 = "Ingen rustning",
		armor_1 = "20% rustningsoppgradering",
		armor_2 = "40% rustningsoppgradering",
		armor_3 = "60% rustningsoppgradering",
		armor_4 = "80% rustningsoppgradering",
		armor_5 = "100% rustningsoppgradering",

		brakes_0 = "Standard brems",
		brakes_1 = "Gatesykkel brems",
		brakes_2 = "Sportsbil brems",
		brakes_3 = "Racebil brems",

		transmission_0 = "Standard girkasse",
		transmission_1 = "Sports girkasse",
		transmission_2 = "Sports girkasse",
		transmission_3 = "Race girkasse",

		engine_0 = "Standard motor",
		engine_1 = "Motor EMS nivå 2",
		engine_2 = "Motor EMS nivå 3",
		engine_3 = "Motor EMS nivå 4",
		engine_4 = "Motor EMS nivå 5",

		no_nearby_vehicle = "Ingen kjøretøy i nærheten.",
		already_checking_upgrades = "Du sjekker allerede en kjøretøysopptuning.",
		engine_is_running = "Kjøretøyets motor er i gang."
	},

	meth = {
		press_to_sell_meth = "Trykk ~INPUT_CONTEXT~ for å selge Meth.",
		local_not_interested = "Lokalbefolkningen virker ikke interessert akkurat nå.",
		selling_meth = "Selger Meth."
	},

	mining = {
		drill_scan_stone = "[${InteractionKey}] Bor i stein, [${SeatEjectKey}] Skann stein",
		scan_stone = "[${SeatEjectKey}] Skann stein",
		drill_stone = "[${InteractionKey}] Bor i stein",
		scanning_stone = "Skanner",
		drilling = "Borer",
		failed_drill_stone = "Kunne ikke bore i steinen.",
		drill_no_drops = "Du fant ingen edelstener i denne steinen.",
		drill_drops = "Du fant noen edelstener i denne steinen.",
		used_drill = "Din drill ble ødelagt.",
		still_shook = "Du er fortsatt rystet fra forrige eksplosjon og fant ingen edelstener i denne steinen.",

		recharging_scanner = "Lader opp skanneren ${prosent}%",
		scanning = "Skanner ${prosent}%...",

		refine_gemstones = "[${InteractionKey}] Raffiner edelstener",
		refinery = "Raffineringsbord",
		exit_refinery = "Forlat Raffineriet",
		no_gemstones = "Du har ingen rå edelstener.",
		refining = "Raffinerer 1x ${edelsten}",
		refine_success = "Raffinerte 1x ${edelsten}.",
		failed_refine = "Klarte ikke å raffinere edelsten.",

		craft_rings = "[${InteractionKey}] Lag ringer",
		no_crafting_items = "Du har ikke nok gjenstander til å lage noe her.",
		crafting = "Lager 1x ${item}",
		crafting_table = "Lagebord",
		crafting_success = "Lagde 1x ${gemstone}.",
		failed_crafting = "Klarte ikke å lage gjenstanden.",
		exit_crafting = "Forlat Lagebordet",

		engrave_ring = "[${InteractionKey}] Graver inn i Ringer",
		no_engrave_items = "Du har ingen ringer.",
		exit_engraving = "Forlat Graveringsbordet",
		engraving_table = "Graveringsbord",
		engraving = "Graverer ${itemName}",
		engrave_message = "Gravere melding (maks 100 tegn)",
		engrave_success = "Meldingen ble suksessfullt gravert på ${itemName}.",
		failed_engrave = "Klarte ikke å gravere meldingen.",

		no_sellable_items = "Du har ingenting du kan selge her.",
		exit_shop = "Forlat butikk",
		shop = "Edelsten-butikk",
		sell_gemstones = "[${InteractionKey}] Selg edelstener",
		local_price = "Lokal pris: $${price}",

		sold_gemstone = "Solgte 1x ${gemstone} for $${price}.",
		failed_sell_gemstone = "Klarte ikke å selge edelsten.",
		failed_sell_no_item = "Du har ikke varen du prøver å selge.",
		failed_sell_cap = "Selgeren vil ikke kjøpe flere av det produktet fra deg.",

		mining_sold_item_title = "Solgte Edelstener",
		mining_sold_item_details = "${consoleName} solgte 1x ${itemName} for $${price}.",

		mining_crafted_item_title = "Laget Produkt",
		mining_crafted_item_details = "${consoleName} laget 1x ${itemName}.",

		mining_refined_item_title = "Raffinert Edelsten",
		mining_refined_item_details = "${consoleName} raffinerte 1x ${itemName}.",

		mining_mined_title = "Minede Edelstener",
		mining_mined_details = "${consoleName} minet ${output}.",

		mining_exploded_title = "Eksplosjon i gruvedrift",
		mining_exploded_details = "${consoleName} sprengte seg selv i forsøket på å hente en juvel fra gruva.",

		instability_0 = "Dette edelsteinet er stabilt.",
		instability_1 = "Dette edelsteinet er litt ustabilt.",
		instability_2 = "Dette edelsteinet er ustabilt.",
		instability_3 = "Dette edelsteinet er veldig ustabilt.",

		exhausted = "Du føler deg utmattet etter å ha vært i gruva så lenge.",
		very_exhausted = "Du føler deg veldig utmattet etter å ha vært i gruva så lenge."
	},

	miscellaneous = {
		language_unavailable = "Språket `${languageCode}` er ikke tilgjengelig ennå. Hvis du ønsker å lage oversettelser for dette språket, kan du bli med i OP-FW utviklings-Discorden for mer informasjon på ${frameworkDiscord}!",
		same_language = "Du har allerede ${languageCode} som ditt valgte språk.",
		language_set = "Ditt foretrukne språk er nå satt til ${languageCode}.",
		current_language = "Nåværende språk",
		available_language_codes = "Tilgjengelige språk",
		ping_pong = "Pong!",
		ping_response = "${ping}ms (responstid: ${callbackTime}ms)",
		ooc_first_time = "Vi ser at du ikke har brukt /ooc tidligere! Før vi lar deg bruke det, ønsker vi å gi deg en liten advarsel. /ooc-kommandoen skal kun brukes i umiddelbare situasjoner, og alle ikke-umiddelbare spørsmål eller meldinger skal rettes mot vår Discord-server på ${communityDiscord}. Det var alt! For å begynne å bruke /ooc, skriv /ooc_on. Du kan slå av funksjonen ved å skrive /ooc_off.",
		ooc_not_logged_in = "Du er ikke logget inn.",
		ooc_timed_out = "Du har blitt midlertidig utestengt fra OOC-samtalen. Vennligst vent.",
		ooc_muted_no_reason = "Du har blitt utestengt fra global OOC-samtale uten årsak oppgitt.",
		ooc_muted = "Du har blitt utestengt fra global OOC-samtale for '${reason}'.",
		global_ooc_title = "OOC ${playerDescriptor}",
		local_ooc_title = "LOKAL OOC ${playerDescriptor}",
		ooc_is_disabled = "Du har deaktivert global OOC-samtale.",
		ooc_enabled = "Global OOC-samtale er nå aktivert.",
		ooc_already_enabled = "Den globale OOC-chatten er allerede aktivert.",
		ooc_disabled = "Den globale OOC-chatten er nå deaktivert.",
		ooc_already_disabled = "Den globale OOC-chatten er allerede deaktivert.",
		ooc_local_logs_title = "Lokal OOC-melding",
		ooc_local_logs_details = "${consoleName} sendte følgende melding i lokal OOC-chat: `${oocMessage}`.",
		ooc_global_logs_title = "Global OOC-melding",
		ooc_global_logs_details = "${consoleName} sendte følgende melding i global OOC-chat: `${oocMessage}`.",
		bad_ooc_message = "Forsøkte å sende en muligens dårlig melding i OOC-chatten: \"${oocMessage}\".",
		bad_ped_message = "Forsøkte å opprette en potensielt dårlig ped-melding: \"${pedMessage}\"",
		bad_twitter_post = "Forsøkte å opprette en potensielt dårlig twittermelding: \"${twitterPost}\"",
		bad_phone_message = "Forsøkte å opprette en potensielt dårlig telefonmelding: \"${message}\"",
		mute_toggle_not_staff = "Spilleren forsøkte å mute en annen spiller, men hadde ikke tilstrekkelige rettigheter til å gjøre det.",
		unmute_toggle_not_staff = "Spilleren forsøkte å unmute en annen spiller, men hadde ikke tilstrekkelige rettigheter til å gjøre det.",
		user_not_found = "Vi kunne ikke finne en bruker med server-ID `${serverId}`.",
		player_already_muted = "${consoleName} har allerede blitt satt på mute.",
		player_has_been_muted_no_reason = "${consoleName} har nå blitt satt på mute uten en spesifisert grunn.",
		player_has_been_muted = "${consoleName} har nå blitt satt på mute med grunn: `${reason}`.",
		player_not_muted = "${consoleName} er ikke satt på mute.",
		player_has_been_unmuted = "${consoleName} er nå ikke lenger satt på mute.",
		clear_chat_not_admin = "Spiller forsøkte å slette chatten for alle spillere, men hadde ikke tilstrekkelige tillatelser for å gjøre det.",
		ooc_clear_chat_title = "Chat Cleared",
		ooc_clear_chat_details = "${consoleName} tømte chatten for alle.",
		muted_player = "Spiller dempet",
		muted_player_no_reason_details = "${consoleName} dempet ${targetConsoleName} uten noen spesifisert grunn.",
		muted_player_details = "${consoleName} dempet ${targetConsoleName} med grunn `${muteReason}`.",
		player_muted = "Spiller dempet",
		player_muted_no_reason_details = "${targetConsoleName} ble dempet av ${consoleName} uten noen spesifisert grunn.",
		player_muted_details = "${targetConsoleName} ble dempet av ${consoleName} med grunn `${muteReason}`.",
		muted_self = "Selv-mutes",
		muted_self_no_reason_details = "${consoleName} mutes seg selv uten noen spesifisert grunn.",
		muted_self_details = "${consoleName} mutes seg selv med grunn `${muteReason}`.",
		unmuted_self = "Un-mutes",
		unmuted_self_details = "${consoleName} un-mutes seg selv.",
		unmuted_player = "Un-mutes Spiller",
		unmuted_player_details = "${consoleName} un-mutes ${targetConsoleName}.",
		player_unmuted = "Spiller un-muted",
		player_unmuted_details = "${targetConsoleName} har blitt un-muted av ${consoleName}.",
		ooc_cancelled_same_as_last = "Ditt OOC-melding ble avbrutt da du prøvde å sende to identiske meldinger på rad.",
		use_measurement_metric = "Du har satt ditt foretrukne målesystem til metrisk.",
		use_measurement_imperial = "Du har satt ditt foretrukne målesystem til imperial.",
		use_measurement_default = "Du vil nå bruke standard målesystem for dette området.",
		already_using_metric_measurement = "Du har allerede satt metrisk som ditt foretrukne målesystem.",
		already_using_imperial_measurement = "Du har allerede satt imperial som ditt foretrukne målesystem.",
		already_using_default_measurement = "Du bruker allerede standard målesystemet for dette språket.",
		no_copyright = "Ingen opphavsrett",
		no_copyright_warning = "Hei! Er du en streamer eller innholdsprodusent som opplever problemer med DMCA og opphavsrettigheter? Vi anbefaler at du aktiverer `${noCopyrightCommand}`-kommandoen slik at vi kan hindre visning og avspilling av visse opphavsrettsbeskyttede materialer i spillet.",
		no_copyright_enabled = "Funksjonen 'Ingen opphavsrett' er aktivert.",
		no_copyright_disabled = "Funksjonen 'Ingen opphavsrett' er deaktivert.",
		server_tps = "Server TPS",
		server_tps_response = "${tps}",
		license_copied = "Lisensen er kopiert til utklippstavlen.",
		uptime = "Oppetid: ${uptime}",

		picture_no_url = "Mangler URL.",
		picture_invalid_url = "Ugyldig URL, må starte med https://.",
		picture_no_description = "Mangler beskrivelse.",
		picture_failed = "Kunne ikke opprette bilde.",

		auto_run_already_set_to = "Automatisk kjøring er allerede satt til å kontrollere ${controlId}.",
		auto_run_already_unset = "Auto-kjøring er allerede avslått.",
		auto_run_set_to = "Auto-kjøring er satt til å kontrollere ${controlId}.",
		auto_run_unset = "Auto-kjøring har blitt avslått.",

		invalid_server_id = "Ugyldig server-ID.",
		walk_forwards_success = "Toggling av å gå fremover for ${displayName} var vellykket.",
		walk_forwards_failed = "Toggling av å gå fremover for ${displayName} mislyktes."
	},

	money = {
		invalid_server_id = "Ugyldig server-ID.",
		invalid_amount = "Ugyldig beløp.",
		something_went_wrong = "Noe gikk galt.",
		not_enough_cash = "Du har ikke nok kontanter.",
		not_close_enough = "Du er ikke nær nok til spilleren.",
		user_not_available = "Brukeren er ikke tilgjengelig.",

		bill_received = "${displayName} har sendt deg en regning på $${amount}. Skriv `/ja` for å godta eller `/nei` for å avslå.",
		bill_expired = "Regningen fra ${displayName} har utløpt.",
		bill_declined = "Du har avslått regningen fra ${displayName}.",
		failed_bill_payment = "Kunne ikke betale regningen.",
		bill_success = "Du har betalt $${amount} regningen fra ${displayName}.",
		bill_created = "Du har opprettet en regning på $${amount} til ${displayName}.",

		givecash_success = "Du ga ${displayName} $${amount}.",

		give_cash_title = "Overfør Penger",
		give_cash_details = "${consoleName} overførte $${amount} til ${targetConsoleName}.",
		paid_bill_title = "Betalt Regning",
		paid_bill_details = "${consoleName} betalte regningen på $${amount} fra ${targetConsoleName}.",
		bill_created_title = "Regning Opprettet",
		bill_created_details = "${consoleName} opprettet en regning på $${amount} til ${targetConsoleName}."
	},

	moonshine = {
		fill_chamber = "[${InteractionKey}] Fyll Kammer",
		collect_moonshine = "[${InteractionKey}] Samle Måneskinn",
		fermenting = "Under gjæring: ${percentage}%",
		filling_chamber = "Fyllingskammer",

		not_enough_items = "Du har ikke nok gjenstander for å fylle kammeret.",
		something_went_wrong = "Noe gikk galt.",
		failed_fill = "Feilet å fylle kammeret.",
		failed_empty = "Feilet å samle måneskinn.",

		press_to_sell_moonshine = "Trykk ~INPUT_CONTEXT~ for å selge måneskinn.",
		local_not_interested = "Lokale virker ikke interessert akkurat nå.",
		selling_moonshine = "Selger måneskinn."
	},

	nos = {
		press_to_install_nitro_tank = "Trykk ~INPUT_CONTEXT~ for å installere nitrotank.",
		installing_nitro_tank = "Monterer Nitro Tank",
		press_to_remove_nitro_tank = "Trykk ~INPUT_CONTEXT~ for å fjerne Nitro Tank.",
		removing_nitro_tank = "Fjerner Nitro Tank"
	},

	notepads = {
		take_notes = "Ta notater...",
		press_to_open = "Trykk ~INPUT_DETONATE~ for å åpne denne Notatblokken.",
		notepad_busy = "Noen andre bruker denne notatblokken.",
		dropped_notepad_title = "Notatblokk mistet",
		dropped_notepad_text_title_details = "${consoleName} mistet en notatblokk med teksten `${text}`.",
		updated_notepad_title = "Notatblokk oppdatert",
		updated_notepad_text_title_details = "${consoleName} oppdaterte en notatblokk med teksten `${text}`.",
		picked_up_notepad_title = "Plukket opp notatblokk",
		picked_up_notepad_text_title_details = "${consoleName} plukket opp en notatblokk med teksten `${text}`.",
		invalid_notepad_id = "Ugyldig notatblokk id.",
		failed_notepad_info = "Klarte ikke å hente notatblokkinfo.",
		notepad_info = "Notatblokk ${notepadId} ble droppet av ${droppedBy}.",
		failed_notepad_wipe = "Klarte ikke å slette notatblokker.",
		invalid_notepad_wipe_radius = "Ugyldig radius (Min = 1, Maks = 100).",
		notepad_wipe_success = "Slettet ${amount} notatblokker.",
		sign_invalid_slot = "Ugyldig inventarplass.",
		signed_notepad = "Notatblokk i spor ${slotId} ble signert.",
		failed_sign_notepad = "Kunne ikke signere notatblokk.",
		sign_already_signed = "Du kan ikke signere denne notatblokken.",

		notepad_info_missing_permissions = "Spiller prøvde å få informasjon om notatblokker uten tilstrekkelige tillatelser.",
		wipe_notepads_missing_permissions = "Spiller prøvde å tørke notatblokker uten tilstrekkelige tillatelser."
	},

	notices = {
		message_too_long = "Meldingen inneholder for mange tegn eller linjer!",
		invalid_notice_id = "Ugyldig notis-id.",
		successfully_removed_notice = "Notis ble fjernet.",
		failed_remove_notice = "Klarte ikke å fjerne melding.",

		add_notice_missing_permissions = "Spilleren prøvde å legge til en melding uten korrekte rettigheter.",
		remove_notice_missing_permissions = "Spilleren prøvde å fjerne en melding uten korrekte rettigheter."
	},

	objects = {
		saved_found_objects = "Lagret `${foundObjectsAmount}` funnet objekter med modell `${modelName}` til en fil på serveren.",
		no_nearby_objects_with_model_found = "Det ble ikke funnet noen nærliggende objekter med modell `${modelName}`.",
		invalid_model_name = "Modellen `${modelName}` er ikke en gyldig modell.",
		missing_model_name = "Mangler modellnavn."
	},

	orbitcam = {
		enabled_orbitcam = "Aktivert orbitcam.",
		disabled_orbitcam = "Deaktivert orbitcam.",
		orbitcam_failed = "Kunne ikke aktivere orbitcam. Har du noclip eller liknende aktivert?",

		orbitcam_logs_title = "Togglet Orbitcam",
		orbitcam_on_logs_details = "${consoleName} aktiverte orbitcamen sin.",
		orbitcam_off_logs_details = "${consoleName} deaktiverte orbitcamen sin.",

		orbitcam_no_permission = "Forsøkte å toggle orbitcamen uten nødvendige tillatelser."
	},

	overview = {
		header_title = "OP Framework - Oversikt UI",
		select_information = "Informasjon",
		select_activity_points = "Aktivitetspoeng",
		select_staff_points = "Personellpoeng",
		select_moderation = "Moderering",
		select_handling_overrides = "Håndteringsoverskrifter",
		select_settings = "Innstillinger",
		about_title = "Om oversiktsvinduet",

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

		about_activity_points_title = "Om Aktivitetspoeng",

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

		activity_points_this_week = "Denne uken",
		activity_points_last_week = "Siste uke",
		activity_points_current = "Aktivitetspoeng: <b>${activityPoints} + ${gainAmount}/minutt</b>",
		activity_points_current_no_gain = "Aktivitetspoeng: <b>${activityPoints}</b>",
		activity_points_goal_low = "<br><br>Ditt nåværende aktivitetsmål er på 400 poeng for lav jobbprioritet, med <b>${remainingPoints} igjen</b>!",
		activity_points_goal_medium = "<br><br>Ditt nåværende aktivitetsmål er på 700 poeng for medium jobbprioritet, med <b>${remainingPoints} igjen</b>!",
		activity_points_goal_high = "<br><br>Ditt nåværende aktivitetsmål er på 1000 poeng for høy jobbprioritet, med <b>${remainingPoints} igjen</b>!",
		activity_points_goal_none = "<br><br>Du har for øyeblikket ingen aktivitetsmål.",
		activity_points_not_enough = "Du hadde ikke nok aktivitetspoeng til å få køprioritet forrige uke.",
		activity_points_last_week_low = "Imponerende! Du hadde nok aktivitetspoeng forrige uke til å få lav jobbprioritet i køen.",
		activity_points_last_week_medium = "Fantastisk! Du hadde nok aktivitetspoeng forrige uke til å få middels jobbprioritet i køen.",
		activity_points_last_week_high = "Utrolig! Du hadde nok aktivitetspoeng forrige uke til å få høy jobbprioritet i køen!",

		about_staff_points_title = "Om Staff Points",

		about_staff_points_text = [[
			Similar to the activity points for jobs, you will gain staff points when you're in the server with your staff availability toggled on.
			<br><br>
			Every minute, a certain amount of staff points is distributed to all active staff members. This means that if there are 4 staff members active, each person will get 25% of the staff points that minute. The amount of staff points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The staff points reset for everyone at the beginning of each week. Your eight most recent weeks will be available for display in a table below.
		]],

		staff_points_this_week = "Denne Uken",
		staff_points_current = "Staff Points: <b>${staffPoints} + ${gainAmount}/minutt</b>",
		staff_points_current_no_gain = "Staff Points: <b>${staffPoints}</b>",
		staff_points_table = "Tabell for Staff Points",
		this_week = "Denne Uken",
		one_week_ago = "1 Uke Siden",
		two_weeks_ago = "2 Uker Siden",
		three_weeks_ago = "3 Uker Siden",
		four_weeks_ago = "4 Uker Siden",
		five_weeks_ago = "5 Uker Siden",
		six_weeks_ago = "6 Uker Siden",
		seven_weeks_ago = "7 Uker Siden",
		eight_weeks_ago = "8 uker siden",
		previous_weeks_average = "Gjennomsnittet for forrige uke",

		about_detection_areas_title = "Deteksjonsområder",
		about_detection_areas_text = "Deteksjonsområder kan være et nyttig verktøy for staben når de prøver å identifisere en juksende spiller som spawner uønskede kjøretøy og / eller fotgjengere. For å opprette et deteksjonsområde, bruk `/detection_area_add`. Når du har opprettet et område, vil det vises her. Bare de siste 100 enhetene vil bli logget i hvert område.",
		detection_area_title = "Deteksjonsområde #${detectionAreaId}",

		about_sound_effects_title = "Lyd Effekter",
		about_sound_effects_text = "Disse feltene lar deg overstyre noen lydeffekter. De krever en kobling til en .oog fil for å fungere ordentlig. Det må også være en https:// URL og ikke en http://. En enkel måte å laste opp en fil ville være å laste den opp til discord, deretter kopiere koblingen og sette den inn i feltene her.",
		radio_mic_click_on = "Radio Mikrofon Klikk (På)",
		radio_mic_click_off = "Radio Mikrofon Klikk (Av)",
		clipboard_animation = "Clipboard Animasjon",
		sound_effect_placeholder = "URL til .oog fil...",
		sound_effect_save = "Lagre",
		sound_effect_reset = "Tilbakestill",

		staff_notifications_reports = "Varsler om rapporter",
		staff_notifications_staff_chat = "Varsler for personale-samtaler",
		staff_notifications_general = "Generelle varsler",
		staff_notifications_anti_cheat = "Varsler for anti-cheat",

		december_1 = "1. desember",
		december_2 = "2. desember",
		december_3 = "3. desember",
		december_4 = "4. desember",
		december_5 = "5. desember",
		december_6 = "6. desember",
		december_7 = "7. desember",
		december_8 = "8. desember",
		december_9 = "9. desember",
		december_10 = "10. desember",
		december_11 = "11. desember",
		december_12 = "12. desember",
		december_13 = "13. desember",
		december_14 = "14. desember",
		december_15 = "15. desember",
		december_16 = "16. desember",
		december_17 = "17. desember",
		december_18 = "18. desember",
		december_19 = "19. desember",
		december_20 = "20. desember",
		december_21 = "21. desember",
		december_22 = "22. desember",
		december_23 = "23. desember",
		december_24 = "24. desember",
		hatch_closed = "STENGT",
		hatch_open = "ÅPNE",
		hatch_claim = "KREV",
		hatch_opened = "KREVET",
		hatch_waiting = "VENTER",

		about_advent_calendar_title = "Om Adventskalenderen",

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

		unlocks_in_days_hours_minutes_seconds = "${days} dager, ${hours} timer, ${minutes} minutter og ${seconds} sekunder",
		unlocks_in_hours_minutes_seconds = "${hours} timer, ${minutes} minutter og ${seconds} sekunder",
		unlocks_in_minutes_seconds = "${minutes} minutter og ${seconds} sekunder",
		unlocks_in_seconds = "${seconds} sekunder",
		unlocks_in_an_unknown_amount_of_time = "en ukjent mengde tid",

		unopened_hatch = "Uåpnet luke",
		won_money = "$${amount} Kontanter",
		won_vehicle = "Kjøretøy (Julespesial)",
		won_queue_priority = "En uke med kø-prioritet!",

		about_handling_overrides_title = "Endring av kjøretøysparametre",
		about_handling_overrides_text = "Opprett midlertidige endringer av kjøretøysparametre på en dynamisk måte. Endringene vil vare til de fjernes eller serveren starter på nytt. Endringene vil gjelde for alle på serveren.",
		add_override = "Legg til endring",
		add = "Legg til",
		model_name = "Modellnavn...",
		field_name = "Felt...",
		value = "Verdi...",
		current_overrides = "Gjeldende endringer",

		about_explosion_events_title = "Eksplosjonsarrangementer",
		about_explosion_events_about = "Her logges informasjon om de siste 500 eksplosjonshendelsene. Dette vil hjelpe staben med å finne moddere.",
		about_unusual_explosions = "Uvanlige eksplosjonshendelser som ikke skjer vanligvis.",
		explosions_by_type_title = "Eksplosjoner etter type",
		players_causing_explosions_title = "Spillere som forårsaker eksplosjoner",
		show_common_events_off = "Vis vanlige hendelser: AV",
		show_common_events_on = "Vis vanlige hendelser: PÅ",

		explosion_events_type = "Type",
		explosion_events_amount = "Antall",
		explosion_events_nearby = "Nærliggende",
		explosion_events_distance = "Avstand",
		explosion_events_player = "Spillernavn",

		illegal_weapons_title = "Spawnete våpen",
		illegal_weapons_about = "Her logges de siste 500 hendelsene hvor det er detektert at noen har spawnet våpen inn i spillet. Det å ha et spawnet våpen betyr ikke nødvendigvis at spilleren modder, da moddere kan spawne våpen i andres hender og dermed vil andre spillere også vise på denne listen.",
		illegal_weapons_by_type = "Våpen etter type",
		players_with_spawned_weapons = "Spillere med spawnete våpen",

		ped_models_title = "Spiller Ped-modeller",
		ped_models_about = "Her er hver spiller som ikke bruker en fri- modus karaktermodell listet opp. Dette bør hjelpe med å finne spillere som er her bare for å tulle eller potensielle moddere.",
		local_ped_models_title = "Lokale Ped-modeller",
		animal_ped_models_title = "Dyret Ped-modeller",

		fast_movement_title = "Hurtig bevegelse",
		fast_movement_about = "Her er hver spiller som har blitt flagget for å bevege seg for raskt listet opp. Dette bør hjelpe med å finne spillere som er potensielle moddere.",

		damage_modifier_title = "Skade Modifikatorer",
		damage_modifier_about = "Her vises listen over alle spillere som er oppdaget å ha endret skade modifikator. Dette kan hjelpe å finne potensielle moddere.",

		bad_screen_word_title = "Uakseptable Ord på Skjermen",
		bad_screen_word_about = "Her vises listen over alle spillere som er oppdaget å ha visse ord på skjermen. Dette kan hjelpe å finne potensielle moddere.",

		freecam_detections_title = "Fri Kamera Deteksjoner",
		freecam_detections_about = "Her vises listen over alle spillere som er oppdaget å bruke et fritt kamera. Dette kan hjelpe å finne potensielle moddere.",

		damage_modifier_name = "Spiller Navn",
		damage_modifier_expected = "Forventet",
		damage_modifier_actual = "Faktisk",

		bad_words_name = "Spiller Navn",
		bad_words_words = "Følsomme Ord",

		freecam_detections_name = "Spiller Navn",
		freecam_detections_distance = "Maksimum Avstand",

		hotwire_driving_detections_name = "Spiller Navn",

		model = "Modell",
		label = "Merkelapp",
		amount = "Beløp",
		console_name = "Spiller",
		expected = "Forventet",
		actual = "Faktisk",
		words = "Ord",
		distance = "Avstand",
		weapon = "Våpen",
		type = "Type",
		nearby = "I nærheten",

		no_entries = "Ingen oppføringer"
	},

	oxy = {
		press_to_talk_to_jc = "Trykk ~g~${InteractionKey} ~w~for å snakke med JC.",
		tutorial_will_play_next_time = "Oxy tutorialen vil spille neste gang du starter en runde.",
		prescription_pick_up = "Resept Henting: ${label}",

		pick_up_the_prescriptions = "Hent de forfalskede reseptene som er markert på kartet.",
		redeem_them_at_the_city = "Når du har gjort det må du innløse dem i byen.",
		jc_will_be_expecting_some_back = "~y~JC ~w~venter at du leverer tilbake 6 av ${pickUpAmount} Oxy.",
		you_have_limited_time = "Du har begrenset med tid. Du må være tilbake med pillene innen ${time}.",
		press_to_hide_unimportant_blips_in_map = "Trykk ~INPUT_SPRINT~ for å skjule ikke-oppdrag blipper i pausemenyen.",
		consider_getting_a_smart_watch = "Vurder å få en Smart Watch for å alltid kunne se GPS'en din.",

		press_to_pick_up_prescription = "Trykk ~g~${InteractionKey} ~w~for å hente ut resept.",

		redeem_oxy_prescription = "Innløs Oxy-resept",
		press_to_redeem_prescription = "Trykk ~g~${InteractionKey} ~w~for å innløse resepten.",

		check_your_map_to_redeem_prescriptions = "Bra jobbet! Sjekk kartet ditt for å innløse reseptene. Du har ${time} igjen.",
		go_to_jc_to_finish_run = "Godt jobbet! Gå tilbake til ~y~JC ~w~for å fullføre runet. Du har ${time} igjen.",

		oxy_run_started_title = "Oxy Run Startet",
		oxy_run_started_details = "${consoleName} har startet en oxy-run.",

		oxy_run_ended_title = "Oksygenløp avsluttet",
		oxy_run_ended_details = "${consoleName} har fullført oksygenløpet etter ${time} og tjente $${payout}.",

		oxy_run_failed_title = "Oksygenløp feilet",
		oxy_run_failed_details = "${consoleName} feilet oksygenløpet.",

		you_failed_the_run = "Du feilet løpet. ~y~JC ~w~vil ikke være fornøyd med deg en stund.",

		time_left = "Du har ${time} igjen.",

		accidental_call_1_part_1 = "Hey, hva sier du, min venn?",
		accidental_call_1_part_2 = "Ok, jeg har satt opp en liten greie nå fordi det er en fyr som selger oksy og sånt.",
		accidental_call_1_part_3 = "Ja, jeg fikk registrert registreringsnummeret på bilen hans og alt det der.",
		accidental_call_1_part_4 = "Så når han går ut av bilen for å levere greiene sine, trenger jeg at du hopper inn og tar det for meg.",
		accidental_call_1_part_5 = "Nei, han har ingen anelse om at det er oss bro, jeg sendte ham downtown så han kommer sannsynligvis til å tro at det er en slags gjeng eller noe bro.",
		accidental_call_1_part_6 = "Stol på meg, det er enkelt.",
		accidental_call_1_part_7 = "Åååå! Yo, hva sier du min venn?! Ikke deg, den andre mannen! Jeg sendte to menn! Ikke deg dog!",
		accidental_call_1_part_8 = "Du er avslappet! Feil mann dog... men det var noen... annen fyr bro. Var ikke deg dog.",
		accidental_call_1_part_9 = "Var ikke deg. Skjønner du hva jeg sier? Det var ikke deg dog!",
		accidental_call_1_part_10 = "Men pass på, for hvis du tuller rundt vil jeg definitivt ta bilen din, altså.",
		accidental_call_1_part_11 = "Kos deg videre.",

		accidental_call_2_part_1 = "Hei, hva skjer?",
		accidental_call_2_part_2 = "Jeg kan ikke lyve, jeg har lyst til å gni sennep over føttene dine og slikke det av som en hotdog og alt det der.",
		accidental_call_2_part_3 = "Hei.",
		accidental_call_2_part_4 = "Vent...",
		accidental_call_2_part_5 = "Å faen, beklager.",

		accidental_call_3_part_1 = "Hei, hva skjer bro?",
		accidental_call_3_part_2 = "Ja ja, jeg har nettopp laget den nye hip-hop-sangen du ønsket deg, bro.",
		accidental_call_3_part_3 = "Ja, den går litt sånn..",
		accidental_call_3_part_4 = "Jeg vil elske deg, baby, jeg vil elske deg, jeg vil elske deg, jeg vil kysse deg på føttene, jeg vil-",
		accidental_call_3_part_5 = "Wooooah, woah woah.. Jeg mente, du vet.. det var ikke meg da..",
		accidental_call_3_part_6 = "Ok, feil nummer, min feil bror, min feil..",

		accidental_call_4_part_1 = "Yooo bro, når skal du komme over til cribben min og spille My Little Pony med meg, bro?",
		accidental_call_4_part_2 = "Det har vært alt for lenge siden, og jeg trenger, bror du vet jeg liker den skinnende og-",
		accidental_call_4_part_3 = "Oookay.. du har feil nummer, beklager for det, du hørte ikke det.",
		accidental_call_4_part_4 = "fordi hvis du gjorde det, er du død, skjønner du det jeg sier?",

		accidental_call_5_part_1 = "Hei mamma, jeg er litt redd akkurat nå..",
		accidental_call_5_part_2 = "Ja, det var noen gutter utenfor døren min, og jeg vet ikke hva jeg skal gjøre mamma.",
		accidental_call_5_part_3 = "Jeg er litt redd, fordi jeg tror jeg er på dypt vann, skjønner du det..",
		accidental_call_5_part_4 = "Mamma.. oh, ohh.. oh, yo! Hva sier du, bro?",
		accidental_call_5_part_5 = "Ja, nei, liker du skuespillet mitt og sånn, ja?",
		accidental_call_5_part_6 = "Tro meg, men ikke bli tatt opp igjen, bro, eller du er død.",
		accidental_call_5_part_7 = "Du vet hva jeg mener? Jeg kommer dit og skjærer deg opp annerledes, bro.",
		accidental_call_5_part_8 = "Skjønner du, bro?",
		accidental_call_5_part_9 = "Stol på meg på det, faen ta deg, bro.",

		accidental_call_6_part_1 = "Hei, lillebroren min. Kom hit, ja.",
		accidental_call_6_part_2 = "Faren din er på telefonen, bro. Faren din er på telefonen.",
		accidental_call_6_part_3 = "Jeg vet at du ikke har sett ham, ta det, ta det, ta det, bro. Ta det, ta det.",
		accidental_call_6_part_4 = "Hallo? Er det pappa?",
		accidental_call_6_part_5 = "Pappa?!",
		accidental_call_6_part_6 = ".. vent, nei det er ikke pappa, det er noen andre! Nei! Hvorfor-",
		accidental_call_6_part_7 = "Du er en dust, jeg kan ikke tro at du gikk på det, bro!",
		accidental_call_6_part_8 = "Åh herregud..",

		maxed_out_runs_part_1 = "Bro, jeg vet du liker brød, men du må la noen av de andre gutta få noe også.",
		maxed_out_runs_part_2 = "Slutt å løpe denne, mann.",
		maxed_out_runs_part_3 = "Gå prate med noen køddehoder på Trash HQ eller noe, mann.",

		mission_completed_1_part_1 = "Yo, hva skjer bro, ay jeg kan ikke lyve, det var bra gjort, jeg visste jeg kunne stole på deg bro.",
		mission_completed_1_part_2 = "Ay, hvis du trenger å tjene mer penger, så vet du hvor du finner meg.",
		mission_completed_1_part_3 = "Jeg skal snart ha ting på plass, ikke bekymre deg for det.",

		mission_completed_2_part_1 = "Yo, hva sier du bro?",
		mission_completed_2_part_2 = "Jeg kan ikke lyve, den jobben var bra.",
		mission_completed_2_part_3 = "Ja, stol på meg, kundene digger deg nå, og jeg digger deg også. Vet du hvorfor?",
		mission_completed_2_part_4 = "Du fikk meg penger; Du fikk deg litt penger.",
		mission_completed_2_part_5 = "Ta det med deg, men kom tilbake senere. Jeg trenger deg igjen, fyren min.",

		mission_completed_3_part_1 = "Hei, hva sier du bro?",
		mission_completed_3_part_2 = "Kan ikke lyve, den tinga tilbake der.. nydelig bro.",
		mission_completed_3_part_3 = "Du kunne ikke gjort det bedre bro.",
		mission_completed_3_part_4 = "Siste mann fucka opp, så jeg er glad for at jeg fikk deg.",
		mission_completed_3_part_5 = "Kom tilbake senere bro, stol på meg, jeg har mer shit til deg bro.",

		mission_completed_4_part_1 = "Hei, kan du selge init?",
		mission_completed_4_part_2 = "Du må kanskje være en forretningsmann her ute, stol på meg selv.",
		mission_completed_4_part_3 = "Måten du solgte det på til disse folkene var gal, bro.",
		mission_completed_4_part_4 = "Ja, ja, oy, takk for det.",
		mission_completed_4_part_5 = "Jeg setter pris på deg, så kom tilbake senere, jeg har pillene til deg, bro.",
		mission_completed_4_part_6 = "Jeg har mer, ja ja, stol på meg, bro.",

		mission_completed_5_part_1 = "Hei, hva gjør du her bro?",
		mission_completed_5_part_2 = "Å, det er deg! Yo, hva skjer bro?",
		mission_completed_5_part_3 = "Ja, ay, takk for det, bro.",
		mission_completed_5_part_4 = "'fordi du virkelig hjalp meg stort med det! Jeg fikk kjempe mye penger nå, og jeg kommer til å kjøpe meg en ny og fresh EDM bil, skjønner du hva jeg sier bro?",
		mission_completed_5_part_5 = "Dinka Blista, alt det der, yeah, men kom innom senere, på ordentlig.",
		mission_completed_5_part_6 = "'fordi jeg har mer greier til deg bro.",

		mission_completed_6_part_1 = "Yo, du skulle sett Gogginschmiel ansikt tidligere bro.",
		mission_completed_6_part_2 = "Han så ut som en dust, jeg kan ikke lyve.",
		mission_completed_6_part_3 = "Visste du ikke at han var bak deg?!",
		mission_completed_6_part_4 = "Han var tøff, men bra jobba.",
		mission_completed_6_part_5 = "Jeg må innrømme, du er virkelig flink bro.",
		mission_completed_6_part_6 = "Kom tilbake senere, jeg har mer til deg bro.",

		mission_completed_7_part_1 = "Hva skjer bro?",
		mission_completed_7_part_2 = "Jeg må si, den bilen der bak.. NYDELIG bro.",
		mission_completed_7_part_3 = "Du kunne ikke gjort det bedre bro.",
		mission_completed_7_part_4 = "Siste mann vartet opp, så jeg er glad jeg hadde deg.",
		mission_completed_7_part_5 = "Kom tilbake senere bro, stol på meg, jeg har mer greier til deg bro.",

		mission_completed_8_part_1 = "Hei, dette er sjefen jeg snakket om bro. Ja, stol på meg, han er så syk bro.",
		mission_completed_8_part_2 = "Denne fyren er for syk.",
		mission_completed_8_part_3 = "Han leverer hver gang, til rett tid.",
		mission_completed_8_part_4 = "Kundene elsker denne fyren.",
		mission_completed_8_part_5 = "Stol på meg, han kommer opp i verden, men du kommer aldri til å slå meg uansett.",
		mission_completed_8_part_6 = "Fordi du må være en idiot, skjønner du hva jeg mener?",
		mission_completed_8_part_7 = "Men kjærlighet da, kom tilbake senere så har jeg flere piller til deg, bro.",

		mission_failed_1_part_1 = "Ja, bro, jeg kan ikke lyve, kunden ringte meg, og han sa at du ikke engang leverte det til min mann.",
		mission_failed_1_part_2 = "Hva skjer, bro?",
		mission_failed_1_part_3 = "Du har gjort en stor feil.",
		mission_failed_1_part_4 = "Gå ut av mitt synsfelt, bro.",
		mission_failed_1_part_5 = "Hvis jeg SER deg igjen, er det over for deg.",

		mission_failed_2_part_1 = "Ja, vi har et stort problem akkurat nå.",
		mission_failed_2_part_2 = "Jeg kan ikke lyve, du var for sent ute, hva skjer?",
		mission_failed_2_part_3 = "Ja, mine klienter er selvfølgelig rasende!",
		mission_failed_2_part_4 = "Du trenger ikke å prøve å kontakte meg igjen.",
		mission_failed_2_part_5 = "Jeg gir deg faen, du er ferdig nå.",

		mission_failed_3_part_1 = "Ja, ja, ja, ja, oi, oi..",
		mission_failed_3_part_2 = "Jeg kan ikke lyve.",
		mission_failed_3_part_3 = "Du er den første fyren jeg noen gang kommer til å si dette til.",
		mission_failed_3_part_4 = "Du er en idiot.",
		mission_failed_3_part_5 = "Vet du det? Ja? Du er en idiot.",
		mission_failed_3_part_6 = "Vet du hvorfor?",
		mission_failed_3_part_7 = "Fordi du ikke engang leverte shit til meg.",
		mission_failed_3_part_8 = "Fuck deg bro. Jeg vil ikke se deg rundt mitt område igjen bro.",
		mission_failed_3_part_9 = "Det er on sight for deg, jeg sverger på Gud bro.",
		mission_failed_3_part_10 = "Jeg har matics på, jeg har ooters på.",
		mission_failed_3_part_11 = "Det er opp for deg bro.",
		mission_failed_3_part_12 = "Ja, det er det.. forsvinn bro.",

		mission_failed_4_part_1 = "Hei, hva sier du bro?",
		mission_failed_4_part_2 = "Bare noe raskt nå.",
		mission_failed_4_part_3 = "Hvis du noensinne kommer nær meg igjen, er du død.",
		mission_failed_4_part_4 = "Ja, vet du hvorfor?",
		mission_failed_4_part_5 = "'Fordi du suger bro, du klarer aldri oppgavene mine bro'.",
		mission_failed_4_part_6 = "Hva skjer med det?",
		mission_failed_4_part_7 = "Kundene er forbanna, de kommer til meg og sier at jeg er dust bro.",
		mission_failed_4_part_8 = "Jeg kan ikke tro at jeg kom til deg.",
		mission_failed_4_part_9 = "Jeg trodde du var min kompis eller noe.",
		mission_failed_4_part_10 = "Men nei, du er bare et rasshøl, så faen ta deg, bro.",
		mission_failed_4_part_11 = "Få deg ut av mitt synsfelt, bro.",

		mission_failed_5_part_1 = "Ja, du gjorde ikke så bra på den siste oppgaven..",
		mission_failed_5_part_2 = "Jeg kan ikke lyve, bro, du fucket opp stort.",
		mission_failed_5_part_3 = "Så ikke kom til min plass!",
		mission_failed_5_part_4 = "For jeg sverger på Gud, jeg kommer til å drepe deg, bro.",

		mission_failed_6_part_1 = "Hei, hva sier du bro?",
		mission_failed_6_part_2 = "Hvis du noen gang kommer tilbake til stedet mitt igjen, bro.",
		mission_failed_6_part_3 = "Jeg kommer til å hente rambo og la den fyre løs på hodet ditt bro!",
		mission_failed_6_part_4 = "Jeg sverger på gud, du ødela alt, bro!",
		mission_failed_6_part_5 = "Kundene ringer meg og forteller meg at de er SINT nå.",
		mission_failed_6_part_6 = "Det er din skyld bro, det er helt din skyld..",

		mission_failed_7_part_1 = "Ikke kom tilbake til stedet mitt igjen, fuck deg bro.",

		mission_failed_8_part_1 = "Hei, kom ikke tilbake før du har ryddet opp i pakkene mine.",

		mission_failed_9_part_1 = "Hei, kom ikke tilbake før du har ryddet opp i pakken min.",
		mission_failed_9_part_2 = "Nei, kom aldri tilbake til meg før tingene mine er fikset.",
		mission_failed_9_part_3 = "Du gjorde en stor feil, kom deg ut herfra.",

		mission_failed_10_part_1 = "Du bør be for å komme deg hjem i kveld.",
		mission_failed_10_part_2 = "For jeg kommer for deg.",
		mission_failed_10_part_3 = "Ikke svikt meg igjen, jeg sverger på Gud.",

		no_pills_1_part_1 = "Hei, hva skjer, bro? Det er litt vanskelig nå fordi..",
		no_pills_1_part_2 = "jeg har ingenting akkurat nå.",
		no_pills_1_part_3 = "Så, det jeg vil si er..",
		no_pills_1_part_4 = "Gå vekk, kom tilbake en annen gang.",

		no_pills_2_part_1 = "Ja, hva sier du, bro? Det er litt ille nå fordi..",
		no_pills_2_part_2 = "jeg har ingen piller akkurat nå, bro!",
		no_pills_2_part_3 = "Ja, de har sviktet meg! Jeg har ingen ting, bro!",
		no_pills_2_part_4 = "Hei, jeg ringte disse folkene og sa.. Yo, hva skjer? Hvor er pillene?..",
		no_pills_2_part_5 = "Kompisen min sier de ikke er her bro.",
		no_pills_2_part_6 = "Disse folka er på noen Liberty City-ting eller noe sånt bro..",
		no_pills_2_part_7 = "De tar for lang tid bro.",
		no_pills_2_part_8 = "Men stol på meg, når jeg har mer, skal jeg definitivt gi deg beskjed bro.",

		no_pills_3_part_1 = "Yo, hva sier du min venn?",
		no_pills_3_part_2 = "Vi har ingen piller akkurat nå, så hvorfor ikke dra herfra bro?",
		no_pills_3_part_3 = "Før jeg begynner å bli sjokkert, skjønner du hva jeg sier?",

		no_pills_4_part_1 = "Hei mann, hva skjer? Ingen piller akkurat nå, så dropp det... dropp bro...",
		no_pills_4_part_2 = "..dropp, du er ferdig bro, forsvinn bro.",
		no_pills_4_part_3 = "Kom deg ut av her bro, du er ferdig.",

		no_pills_5_part_1 = "Joooo.. kompis!",
		no_pills_5_part_2 = "Hva skjer bro? Jeg kan ikke lyve, vi har ingenting akkurat nå.",
		no_pills_5_part_3 = "Så det er litt dårlig nå.",
		no_pills_5_part_4 = "Men tilbake om litt, så ordner jeg det for deg.",
		no_pills_5_part_5 = "Kjærlighet, bro.",

		no_pills_6_part_1 = "Bro.. Jeg sa til 2 personer før deg at jeg ikke har noe akkurat nå..",
		no_pills_6_part_2 = "Så hvorfor hører dere ikke på deres små venner og går og knuller dere selv som en helhet, min mann.",
		no_pills_6_part_3 = "Skjønner du hva jeg mener? Det er det, du er ferdig her, bro. Knull deg, bro.",

		no_pills_7_part_1 = "Ja, jeg er den STORE saken her, skjønner du?",
		no_pills_7_part_2 = "Men det STORE her har ingen STORE piller akkurat nå.. så basically må din lille ting kicke ut.",
		no_pills_7_part_3 = "Skjønner du hva jeg sier?",

		no_pills_8_part_1 = "Yo, yo, hva sier du?",
		no_pills_8_part_2 = "Ay, ay, ay, jeg må legge meg lavt bro.",
		no_pills_8_part_3 = "Ja, ay Jeg kan ikke lyve.. det var noen agenter som kom rundt tidligere..",
		no_pills_8_part_4 = "Vi har ingen piller akkurat nå. Skjønner du hva jeg sier.",
		no_pills_8_part_5 = "Det er av for meg akkurat nå. Kom tilbake senere når varmen har roet seg bro.",

		no_pills_9_part_1 = "Ja, ay Jeg kan ikke lyve noen idioter tok tingene mine tidligere bro.",
		no_pills_9_part_2 = "Men ikke bekymre deg, jeg har ooterne på dem akkurat nå.",
		no_pills_9_part_3 = "Så når vi får pillene, kom definitivt tilbake, og jeg vil hente deg, jeg har deg bro.",

		no_pills_10_part_1 = "Yoo, hva sier du bro?",
		no_pills_10_part_2 = "Ja, akkurat nå er det noen dickhead-gjenger nordpå eller noe, bro.",
		no_pills_10_part_3 = "De ranet den saken, så vi skal dra dit sammen, få det tilbake, og så henter vi deg bro.",
		no_pills_10_part_4 = "Takk for det.",

		no_pills_11_part_1 = "Yoo, hva sier du? Ja, det skjer ingenting akkurat nå, bro...det skjer ingenting akkurat nå.",
		no_pills_11_part_2 = "Det er litt dårlig timing for deg nå. Det er ingenting akkurat nå.",
		no_pills_11_part_3 = "Men grunnleggende sett så sier jeg dette til alle..",
		no_pills_11_part_4 = "Hvorfor drar du ikke din vei bro.. og kommer tilbake senere. Kjærlighet.",

		no_pills_12_part_1 = "Nei, jeg har ingenting med meg nå bro.",
		no_pills_12_part_2 = "Kom tilbake senere mann, kom tilbake senere..",

		no_pills_13_part_1 = "Bro! Dra din vei mann! Jeg har ingenting bro!",
		no_pills_13_part_2 = "Jeg har ingenting bro! Ay, vær stille bro!",

		no_pills_14_part_1 = "Hør, bro, jeg sa til deg at jeg ikke har noen piller akkurat nå.",
		no_pills_14_part_2 = "Så hvis du prøver å få ting bro, kom igjen en gang til, jeg ber deg bro.",

		no_pills_15_part_1 = "Nei, hør her bro ... du pisser meg av nå.",
		no_pills_15_part_2 = "Jeg kan ikke engang lyve for deg om det.",
		no_pills_15_part_3 = "Så jeg kommer faktisk til å angripe deg hvis du ikke går vekk bro.",

		not_leaving_1_muffled_part_1 = "Ok, hvorfor er bro'en fortsatt stasjonert?",
		not_leaving_1_muffled_part_2 = "Er han en politispaner?",
		not_leaving_1_muffled_part_3 = "Hei, sjekk han om han er en politimann, sjekk han om han er en politimann.",

		not_leaving_2_part_1 = "Hei, gå vekk, kom deg ut herfra.",

		not_leaving_3_part_1 = "Hei, kan du slutte å være her nå..",
		not_leaving_3_part_2 = "Jeg prøver å gjøre noe. Skjønner du hva jeg mener.",
		not_leaving_3_part_3 = "Jeg prøver å være sammen med kjæresten min, og du står her og stirrer på meg som en dust.",
		not_leaving_3_part_4 = "Kom deg vekk.",

		not_leaving_4_part_1 = "Hei, VENNLIGST gå vekk herfra.",
		not_leaving_4_part_2 = "Åh- jeg sverger til Gud bro.",

		not_leaving_5_part_1 = "Bro, nå tuller du med meg, jeg kan ikke lyve..",
		not_leaving_5_part_2 = "Jeg kommer faktisk til å komme over og gjøre deg våt min venn.",
		not_leaving_5_part_3 = "Du bør forsvinne fort bro.",

		not_leaving_6_part_1 = "Bro.. Jeg er sjefen rundt her bro.",
		not_leaving_6_part_2 = "Slutt å oppføre deg som om du eier stedet og forsvinn og gjør min greie bro.",

		not_leaving_7_part_1 = "Oi, jeg sverger til Gud, hvis du gjør dette igjen skal jeg kalle backup danserne bro.",
		not_leaving_7_part_2 = "De skal gjøre noe annet med deg, kompis.",

		not_leaving_8_muffled_part_1 = "Ok, fukt ham opp kompis, fukt ham opp.. han tar for lang tid.",

		not_leaving_9_part_1 = "Kompis, ikke få meg til å ta frem den store chingaen kompis.",
		not_leaving_9_part_2 = "Jeg vil be deg slutte å trampe på MIN blokk der kompis.",
		not_leaving_9_part_3 = "Du bør trekke deg tilbake og utføre det du skal gjøre nå, du tar for lang tid kompis.",
		not_leaving_9_part_4 = "Du er i MITT hus og MIN leilighet, tror du du er en eller annen stor fyr kompis.",
		not_leaving_9_part_5 = "Vent litt, jeg skal JÆVLA gi deg en omgang, kompis.",

		not_leaving_10_muffled_part_1 = "Ja, denne fyren blir sugd fast i hjørnet som om han eier boligblokka mi eller noe, kompis.",

		not_leaving_11_part_1 = "Ey, flytt på deg, kom igjen, kompis..",
		not_leaving_11_part_2 = "Du er ferdig her, kompis.",

		not_leaving_12_muffled_part_1 = "Ey, det går dårlig for denne fyren.",
		not_leaving_12_muffled_part_2 = "Han tar for lang tid, kom igjen, fuck off, kompis!",
		not_leaving_12_muffled_part_3 = "Jeg kan se deg akkurat nå, fuck off, kompis!",

		not_leaving_13_muffled_part_1 = "Dude! Denne fyren tar altfor lang tid med noe...",
		not_leaving_13_muffled_part_2 = "Han er en dust.. han må være en dust eller noe sånt, bro..",
		not_leaving_13_muffled_part_3 = "Han er definitivt en dust.",

		start_1_part_1 = "Oi bro, broo.. ay, kom hit, kom hit..",
		start_1_part_2 = "Yo, ay ay.. Vil du prøve å kjøre mer med oxy, bro?",
		start_1_part_3 = "Ayy, takk for det, takk for det..",
		start_1_part_4 = "Ay, du vet hva du må gjøre, ikke sant?",
		start_1_part_5 = "Ay, jeg skal sende deg pingen nå.",
		start_1_part_6 = "Elsker deg likevel.",

		start_2_part_1 = "Ay, hva skjer bro! Kom hit kjapt min mann!",
		start_2_part_2 = "Ja ja.. Vil du kjøre oxy igjen bro?",
		start_2_part_3 = "Takk for det brooo.",
		start_2_part_4 = "Du vet hva du må gjøre, selvfølgelig klarer du det bro.",

		start_3_part_1 = "Ay.. ay bro, kom hit bro, kom hit bro.",
		start_3_part_2 = "Vil du kjøre litt oxy igjen bro?",
		start_3_part_3 = "Er det sånn? Kom igjen.. du er ikke en undercover agent vel?",
		start_3_part_4 = "Ok.. ok.. Takk bro, ay, ay, du vet hva du må gjøre, jeg sender deg pingen og alt det der bro.",

		start_4_part_1 = "Hei! Er du den dusten fra sist gang?!",
		start_4_part_2 = "Oi, kom hit bro! Du gjorde en god jobb sist gang, det kan jeg ikke nekte deg.",
		start_4_part_3 = "Så basically ja.. gjør det samme igjen bro, du vet hva du skal gjøre, jeg sender deg ping-en min mann.",
		start_4_part_4 = "Takk for det.",

		start_5_part_1 = "Hei, kom hit du lille dustebroren!",
		start_5_part_2 = "Ja, ja, ja.. Jeg vet hvem du er bro..",
		start_5_part_3 = "Ikke fortell meg, jeg bryr meg ikke hvem du er bro.. men jeg vet hvem du er.",
		start_5_part_4 = "Men i bunn og grunn det jeg ønsker at du skal gjøre, er å løpe oxy pillene igjen.",
		start_5_part_5 = "Du vet tingene fra forrige gang, ikke sant bro? Du vet rutinen, ikke sant?",
		start_5_part_6 = "Så jeg sender deg greia på telefonen, bro. Takk for det.",

		start_6_part_1 = "Hei, er det min fyr der borte! Hva sier du, bro!",
		start_6_part_2 = "Ayy, hvordan går det, min fyr.",
		start_6_part_3 = "Det jeg trenger er at jeg trenger deg igjen for en liten mission, skjønner du..",
		start_6_part_4 = "Ja ja, du vet hva jeg mener, du vet hva jeg mener..",
		start_6_part_5 = "Oksygenet, ja ja, selvfølgelig gjør du det. Hør her, jeg skal sende deg greia på telefonen.",
		start_6_part_6 = "Du gjør det du må gjøre storebroren min, takk for det.",

		start_7_part_1 = "Ja, ja, ja, ja, ja, det er- hei, det er denne jævla fyren fra tidligere bro!",
		start_7_part_2 = "Jeg husker denne fyren! Ja, hør her, du er en morsom fyr bro, jeg liker deg, jeg liker deg..",
		start_7_part_3 = "Oi, jeg trenger deg til å skaffe meg mer oksygen igjen jeg kan ikke lyve. Så skynd deg store mann.",
		start_7_part_4 = "Jeg skal sende deg ping, jeg skal sende deg detaljene.. Ja, ja..",
		start_7_part_5 = "Og husk..",
		start_7_part_6 = "Halvparten av det der er mitt, så ikke ta noe av det, ellers så lover jeg å stikke deg ned, ok.",

		start_8_look_to_sides_part_1 = "Hei kompis, jeg sverger på at jeg så Gogginschmiel gå forbi der borte..",
		start_8_look_to_sides_part_2 = "Hei, kom hit, kom hit, kom hit kompis, slutt å prøve å lure meg.",
		start_8_look_to_sides_part_3 = "Yo, yo.. Det jeg trenger at du skal gjøre nå for meg er å hente pillene mine.",
		start_8_look_to_sides_part_4 = "Jeg trenger at du henter disse pillene for meg, sjefen min.",
		start_8_look_to_sides_part_5 = "Jeg sender detaljene om oppdraget til deg, du vet drillen nå.",
		start_8_look_to_sides_part_6 = "Men hold deg lavt, for jeg har sett mange politifolk patruljere i området, ok?",
		start_8_look_to_sides_part_7 = "Men hvis du blir tatt! Ikke angir meg, for da er du død bror!",
		start_8_look_to_sides_part_8 = "Ser du hva jeg mener? Takk skal du ha.",

		start_9_look_to_sides_part_1 = "Yo, jeg kan ikke lyve, jeg så en politimann kjøre forbi der, bro!",
		start_9_look_to_sides_part_2 = "Er du sikker på at du ikke ble fulgt eller noen slikt?",
		start_9_look_to_sides_part_3 = "Fordi FIB akkurat nå driver med neste nivå greier, kompis.",
		start_9_look_to_sides_part_4 = "De har helikoptre i luften og slikt, kompis.",
		start_9_look_to_sides_part_5 = "Jeg ser alt og kan alt, kompis. Stol på meg på det.",
		start_9_look_to_sides_part_6 = "Ja, ja... han var helt på deg tidligere, husker du... husker du den Charger'en du passerte, kompis?",
		start_9_look_to_sides_part_7 = "Men han skrudde ikke på lysene? Men stol på meg likevel.. ",
		start_9_look_to_sides_part_8 = "Ja, det skjønner jeg, det skjønner jeg.",

		start_burger_shot_part_1 = "Yo, jeg har sett deg på Burger Shot en gang.. du steker patties, ikke sant?",
		start_burger_shot_part_2 = "Ja, jeg kan ikke lyve, du trenger virkelig denne deigen.",

		start_cop_1_part_1 = "Yo jeg kan lukte en politibetjent fra Maze Bank, bro..",
		start_cop_1_part_2 = "Jeg kan fortelle at du er en politibetjent.",
		start_cop_1_part_3 = "Bedre ring etter backup før jeg begynner å skyte på den lille gutten din, politibil, bro.",

		start_cop_2_part_1 = "Hei, hva skjer, offiser? Vi hjelper bare syke mennesker i Blaine County.",
		start_cop_2_part_2 = "Ingenting ulovlig skjer her, bro.",

		start_gang_member_part_1 = "Jeg svær at jeg så deg bli skutt av den ene gjengen..",
		start_gang_member_part_2 = "Ja, ja, du ble definitivt skutt på, jeg kan se det i ansiktet ditt.",

		start_group_part_1 = "Yo, jeg har hørt at dere vil go og kjøre litt oksy for meg.",
		start_group_part_2 = "Jeg kan ikke lyve, jo flere jo bedre akkurat nå, men jeg kan bare gi pillene til en av dere mandem.",
		start_group_part_3 = "Så sørg for at du tar det pent, dra med gjengen din eller hva som helst og få dette gjort bro.",
		start_group_part_4 = "'for tiden er penger verdt mye bro, skjønner du hva jeg sier'.",
		start_group_part_5 = "Du bruker for lang tid her bro, skynd deg mann, drit deg ut bro.",

		start_knife_part_1 = "Ookayy, det er en stor Rambo-kniv på hoften din min bro!",
		start_knife_part_2 = "Bro, du burde ikke svinge det rundt her fordi det kan bli farlig for deg min bror!",

		start_last_fail_part_1 = "Yooo, er det min kar fra over der, hva sier du bro? Ay, hva skjer og alt det der, min fyr!",
		start_last_fail_part_2 = "Ærlig talt.. Jeg kan ikke lyve, jeg trenger deg igjen for en liten oppdrag...",
		start_last_fail_part_3 = "Ja ja.. du vet hva jeg snakker om, du vet hva jeg snakker om, oksygenet, ja, det gjør du selvfølgelig.",
		start_last_fail_part_4 = "Hey, jeg skal sende deg informasjonen på telefonen.",
		start_last_fail_part_5 = "Gjør hva du må gjøre storebror, takk for det.",

		start_legendary_tier_part_1 = "Ååå, så du er stor baller som det?",
		start_legendary_tier_part_2 = "Legendarisk nivå, okayy, ser ut som du må kjøpe hele gulvet for EDM min bror!",
		start_legendary_tier_part_3 = "Kom igjen.",

		start_mechanic_part_1 = "Hei, kan du reparere biler?",
		start_mechanic_part_2 = "Yo, etter dette trenger jeg at du styrer opp min Asbo fordi det er altfor mange bulker i den, bro.",

		start_mercedes_part_1 = "Yo, jeg elsker den Mercedesen du har, bro!",
		start_mercedes_part_2 = "Jeg kan ikke lyve, jeg trenger den fra deg når du er ferdig her med denne lille tingen, bro.",

		start_no_gun_part_1 = "Bro, kommer hit på en vennlig vis som om du ikke vil bli ranet.",
		start_no_gun_part_2 = "Du er heldig at ootene er borte akkurat nå, men..",
		start_no_gun_part_3 = "Hold deg bevæpnet neste gang, mann.",

		start_on_timer_1_part_1 = "Jeg kan ikke lyve for deg bro, du mislyktes på siste prøve, hva gjør du her bro?",
		start_on_timer_1_part_2 = "Nei bro, kom tilbake senere når du bestemmer deg for å få det på stell DUhode.",

		start_on_timer_2_part_1 = "Nei, bro. Siste gangen sviktet du, bro..",
		start_on_timer_2_part_2 = "Gå og gjør noe annet, mann.",

		start_on_timer_3_part_1 = "Er det det? Tror du at du kan komme hit etter å ha jævla opp slik, bro?",
		start_on_timer_3_part_2 = "Du bedre dra før jeg får tak i ooters på deg, bro!",

		start_on_timer_4_part_1 = "Ja, jeg kan ikke lyve sist gang du fucka opp helt åpenlyst, bro..",
		start_on_timer_4_part_2 = "Jeg kan ikke lyve, det kommer til å se litt farlig ut for deg hvis du blir her i omtrent 2 sekunder til, min venn..",

		start_on_timer_5_part_1 = "Yoo, hva sier du?",
		start_on_timer_5_part_2 = "Jeg kan ikke lyve, du fucka opp sist, bro, du klarte ikke engang å få pillene, bro.",
		start_on_timer_5_part_3 = "Som du fucka opp stort, bro, som..",
		start_on_timer_5_part_4 = "Kom aldri ned hit igjen fyren! Du skjønner hva jeg mener?",
		start_on_timer_5_part_5 = "Jeg vet hva du heter, jeg har sett ansiktet ditt. Du er ferdig her ute fyren.",

		start_on_timer_6_part_1 = "Ja, denne fyren tror han er en tøffing, ikke sant? Ødelegger alt og kommer tilbake til meg og later som om han er lei seg..",
		start_on_timer_6_part_2 = "Nei, det fungerer ikke sånn rundt her fyren.",
		start_on_timer_6_part_3 = "Du bør forsvinne akkurat nå kamerat!",

		start_on_timer_7_part_1 = "Ja, jeg kan ikke lyve, denne fyren DUMMET seg..",
		start_on_timer_7_part_2 = "Ser du denne fyren her? Ser du denne dusten her, ja?",
		start_on_timer_7_part_3 = "Han ødela det, kom hit!",
		start_on_timer_7_part_4 = "Jeg kan ikke lyve, du er en dust, kom tilbake senere mann.",

		start_on_timer_8_part_1 = "Du er en sånn type fyr, mann..",
		start_on_timer_8_part_2 = "Denne fyren går rundt HER greie og ødelegger DETTE greiene, irriterer MINE folk, mann.",
		start_on_timer_8_part_3 = "Kommer så tilbake og forventer å bli betalt, forvent å FÅ betalt, mann!",
		start_on_timer_8_part_4 = "Forvent å få brødet, kompis.. du får ikke noe brød, kompis..",
		start_on_timer_8_part_5 = "Du får smuler, kompis.. kom deg FAEN ut av blokka mi, kompis!",
		start_on_timer_8_part_6 = "Kom deg ut herfra, kompis.. du er ferdig og alt det der.",
		start_on_timer_8_part_7 = "Telefonen dukket også opp, kompis.. du er ferdig, kompis! Jeg fikk noen andre på denne saken, kompis.",

		start_over_31d_part_1 = "Yo jeg kan ikke lyve, kompis! Du har vært her for lenge..",
		start_over_31d_part_2 = "Jeg ber deg gå ta på noe raskt og kom tilbake, kompis.",

		start_over_100k_part_1 = "Hvorfor selger du mat når du har over 100 bager med penger?",
		start_over_100k_part_2 = "Er det ikke i kontanter? Jeg kommer til å sende noen til å rane deg bro.",

		start_revving_part_1 = "Hvis du fortsetter å gi gass på den jævla bilen din kommer vi til å ha et problem.",
		start_revving_part_2 = "Slapp av med gassen, før jeg slapper av med deg bro!",

		start_staff_1_part_1 = "Hei, er ikke du en admin? Skulle du ikke vært opptatt med å banne slemminger i stedet for å snakke med meg?",
		start_staff_1_part_2 = "Jeg trenger pengene, men jeg holder øye med dere adminene.",

		start_staff_2_part_1 = "Broo, du er den andre moderator som driver med oksygen i dag...",
		start_staff_2_part_2 = "Dere må være på jobb, ikke på denne jobben altså.",

		start_streamer_part_1 = "Yoooo, det der er den fyren som tror han er en stor streamer!",
		start_streamer_part_2 = "Yo Ls i chatten, fuck denne fyren bro!",

		start_stressed_part_1 = "Bro! Hvorfor skjelver hendene dine?!",
		start_stressed_part_2 = "Gå og ta en røykepause eller noe, fordi du beveger deg for stresset nå.",

		start_subaru_part_1 = "Ay, den Subaruen må være bra off-road g!",
		start_subaru_part_2 = "'for denne stien jeg skal ta deg med på er annerledes!",

		start_under_10k_part_1 = "Bro, jeg vet du har mindre enn 10k på kontoen din!",
		start_under_10k_part_2 = "Så hvorfor tar du ikke med deg den fattige rumpa di og disse pillene til plasseringen.. raskt, min bror.",

		start_under_24h_part_1 = "Du er en beist, bro! Fortsett å presse på.",

		start_zombie_pills_part_1 = "OK, så du har nettopp tatt Z Pills og nå vil du ta Oxy Pills..",
		start_zombie_pills_part_2 = "Nei, du er definitivt en crackhead!",

		still_pressing_e_1_part_1 = "Ok, hvorfor lokker du meg?",
		still_pressing_e_1_part_2 = "Slutt å komme tilbake hit. Jeg sendte deg plasseringen, sjekk telefonen din.",
		still_pressing_e_1_part_3 = "Ja ja, sjekk det.. Sjekk det..",

		still_pressing_e_2_part_1 = "Er du..... er du dum eller noe?",
		still_pressing_e_2_part_2 = "Jeg sendte nettopp plasseringen din. Er du blind eller noe?",
		still_pressing_e_2_part_3 = "Sjekk telefonen din, stikk vekk nå!",

		still_pressing_e_3_part_1 = "Jeg kan ikke lyve, hvis du gjør dette en gang til, jeg sa det for mange ganger min venn..",
		still_pressing_e_3_part_2 = "Hvis du gjør det igjen, skal jeg definitivt sende folk etter deg bro.",

		still_pressing_e_4_part_1 = "Du tuller nå, forsvinn bro.",

		still_pressing_e_5_part_1 = "Er du idiot eller noe?",
		still_pressing_e_5_part_2 = "Kommer tilbake og snakker sånn med meg med din store gutt røst?",
		still_pressing_e_5_part_3 = "Du bør backe av nå, jeg sverger på Gud jeg skal ta deg bro!",

		still_pressing_e_6_muffled_part_1 = "Denne fyren er en drittsekk..",

		still_pressing_e_7_muffled_part_1 = "Denne fyren er en drittsekk.",
		still_pressing_e_7_muffled_part_2 = "Han er definitivt en drittsekk, han kommer tilbake hele tiden!",
		still_pressing_e_7_muffled_part_3 = "Han tror jeg blir mer sint, men jeg blir ikke mer sint!",

		still_pressing_e_8_part_1 = "Du begynner å virkelig irritere meg nå..",
		still_pressing_e_8_part_2 = "Så slutt å trykke på den knappen.",

		still_pressing_e_9_part_1 = "Jeg sverger, hvis du fortsetter å trykke på E-knappen..",
		still_pressing_e_9_part_2 = "Jeg skal meta det og blåse deg opp i denne forbanna greia, faen ta deg.",

		taking_too_long_1_part_1 = "Hei, du tar litt for lang tid min venn, du skjønner hva jeg mener..",
		taking_too_long_1_part_2 = "Du bør skynde deg med det.",

		taking_too_long_2_part_1 = "Hei, hvis du fortsetter å bruke tid, vil vi ha store problemer for deg, skjønner du hva jeg sier?",
		taking_too_long_2_part_2 = "Du er for sent ute kamerat, du er for sent ute nå.. skynd deg bro.",

		taking_too_long_3_part_1 = "Hey bro, du tar altfor lang tid, prøver du å stjele jobben min eller hva bro?",

		taking_too_long_5_part_1 = "Hva faen tror du du holder på med, er dette noe slags spøk?",
		taking_too_long_5_part_2 = "Kom hit nå, jeg utfordrer deg. Se hva som skjer.",

		taking_too_long_6_part_1 = "Du kødder med meg nå eller? Jeg vil ha det jeg ba om øyeblikkelig.",
		taking_too_long_6_part_2 = "Skynd deg for faen.",

		taking_too_long_7_part_1 = "Jeg vet hvilken bil du kjører..",
		taking_too_long_7_part_2 = "Jeg så deg når du dro, ikke tro du er trygg.",

		taking_too_long_8_part_1 = "Greit, det er det nå... Dette er siste sjansen min venn.",
		taking_too_long_8_part_2 = "Hvis du bruker lang tid igjen, skal jeg ringe ooters og det skal bli vanskelig for deg min fyr.",
		taking_too_long_8_part_3 = "Så du bør skynde deg nå... klokken tikker min venn.",

		too_many_people_1_part_1 = "Oi, jeg kan ikke lyve, det er mange folk rundt meg nå vennen!",
		too_many_people_1_part_2 = "Hvorfor er dere alle her? Vil dere ta over plassen eller noe bro?",
		too_many_people_1_part_3 = "For jeg sverger på Gud jeg har ooters og matics klare til å drepe noen.",
		too_many_people_1_part_4 = "Du skjønner hva jeg mener..",
		too_many_people_1_part_5 = "ALLESAMMEN må holde seg unna, jeg sa ALLESAMMEN, ja det gjelder også deg, din fitte!",

		too_many_people_2_part_1 = "Jeg kan ikke lyve, det er for mange mennesker akkurat nå..",
		too_many_people_2_part_2 = "Du beveger deg ganske dumt akkurat nå med alle disse folkene rundt deg og alt det der.",
		too_many_people_2_part_3 = "Du sa det bare skulle være 1 av deg i disse delene, ikke som om 4 av dere jævler..",
		too_many_people_2_part_4 = "Jeg bryr meg ikke om du er i en slags gjeng, bror. Gir jeg faen, bro? Nei, bro..",
		too_many_people_2_part_5 = "Back deg og folket ditt nå før det blir alvorlig, bror.",

		tutorial_1_part_1 = "Hei, hva skjer bror? Skal du prøve å gjøre noe oxy for meg, bror?",
		tutorial_1_part_2 = "Yoo, det er bra! Jeg kan ikke lyve til deg akkurat nå, bror, jeg har lett etter litt hjelp på alt det, bror.",
		tutorial_1_part_3 = "Hør her, hør her da..",
		tutorial_1_part_4 = "Jeg har en haug med falske resepter, ja... laget for meg rundt om i nord, bror.",
		tutorial_1_part_5 = "Ja, men jeg kan ikke lyve. Jeg trenger at du plukker opp disse tingene for meg.",
		tutorial_1_part_6 = "Og så trenger jeg at du gjør følgende - hør på meg når jeg snakker til deg!",
		tutorial_1_part_7 = "Ta dem ned til byen og løs dem inn.",
		tutorial_1_part_8 = "Ja, du må løse dem inn.",
		tutorial_1_part_9 = "Jeg vil sende deg detaljene på telefonen din, sjekk GPS-en din. Jeg har deg.",
		tutorial_1_part_10 = "Men vær rask, ellers må jeg få noen andre til å gjøre det.",
		tutorial_1_part_11 = "Og tro meg, det ser ikke bra ut for deg der, jeg kan ikke lyve om det.",
		tutorial_1_part_12 = "Ja, la oss komme oss av gårde storebro.. slutt å snakke til meg, slutt å se på ansiktet mitt og skynd deg opp bro.",

		tutorial_2_part_1 = "Hei hva skjer kompis? Vil du hjelpe meg med å smugle oksygen kompis?",
		tutorial_2_part_2 = "Supert! Jeg kan ikke lyve til deg akkurat nå, jeg har vært på utkikk etter hjelp til alt det der kompis.",
		tutorial_2_part_3 = "Yo kompis, jeg har en haug med forfalskede resepter laget for meg her oppe i nord kompis.",
		tutorial_2_part_4 = "Jeg trenger at du går og henter disse reseptene for meg, kompis-",
		tutorial_2_part_5 = "Ja, og så hør her da, ta de med til byen og innløs dem på apotekene.",
		tutorial_2_part_6 = "Ja, ja, ja, ja..",
		tutorial_2_part_7 = "Jeg skal sende deg detaljene på telefonen, så sjekk GPS-en din og alt det der, jeg har deg, kompis.",
		tutorial_2_part_8 = "Men du må ikke bruke for lang tid, ellers må jeg ty til andre tiltak, kompis.",
		tutorial_2_part_9 = "Og tro meg, det ser ikke bra ut for deg der, jeg kan ikke lyve om det.",
		tutorial_2_part_10 = "Ja, la oss komme oss av sted, storebror. Slutte å snakke til meg, slutte å se på ansiktet mitt, og skynd deg.",

		tutorial_3_part_1 = "Hei, hva skjer, broren min? Vil du hjelpe meg med å transportere noen oksy nå?",
		tutorial_3_part_2 = "Ja.. ja.. det er bra, for jeg kan ikke lyve, jeg har trengt litt hjelp med alt dette.",
		tutorial_3_part_3 = "Ja, ja, ja.. Jeg har en haug med forfalskede resepter jeg har fått laget til meg her oppe nord. Tro meg på det.",
		tutorial_3_part_4 = "Ja, men jeg kan ikke lyve, jeg trenger DIN hjelp til å hente reseptene for meg, ok?",
		tutorial_3_part_5 = "Og så må du i prinsippet ta dem med til byen og løse dem inn på forskjellige apotek og sånt, bro.",
		tutorial_3_part_6 = "Ja, jeg har deg, for nå, skal jeg...",
		tutorial_3_part_7 = "Ser du ENCRO, min bror? Jeg skal sende deg detaljene på GPS-en din.",
		tutorial_3_part_8 = "Ikke ta for lang tid, ellers vil du definitivt få trøbbel, så skynd deg, stor mann.",
		tutorial_3_part_9 = "Ja, la oss komme oss avgårde storebror. Slutt å snakke til meg, se ikke på ansiktet mitt og skynd deg bro.",
		tutorial_3_part_10 = "Kjærlighet bro, kjærlighet."
	},

	panel = {
		loading_title = "Laster",
		error_title = "Noe gikk galt",

		was_banned = "Bannlyst",
		loading = "Laster spillerdata...",
		no_warnings = "Ingen advarsler",
		not_shown_warnings = "${count} flere advarsler ikke vist",
		system_issuer = "System",
		add_warning_title = "Legg til advarsel",
		message_placeholder = "${playerName} har gjort en feil...",

		type_note = "Notat",
		type_warning = "Advarsel",
		type_strike = "Strike",
		type_system = "System",

		button_cancel = "Avbryt",
		button_add = "Legg til",
		button_close = "Lukk",
		button_new = "Ny",

		invalid_server_id = "Ugyldig server ID.",

		failed_load_player = "Klarte ikke å laste inn spillerdata. Har du skrevet inn en gyldig server ID?",
		failed_add_warning = "Kunne ikke legge til advarsel.",

		get_info_no_permissions = "Spilleren forsøkte å hente informasjon om en annen spiller uten tilstrekkelige tillatelser.",

		user_indefinitely_banned_warning_no_reason = "Jeg har uendelig utestengt denne personen uten en spesifisert grunn. Denne advarselen ble generert automatisk som et resultat av utestengelsen.",
		user_indefinitely_banned_warning = "Jeg har uendelig utestengt denne personen med grunnen `${reason}`. Denne advarselen ble generert automatisk som et resultat av utestengelsen.",
		user_temporarily_banned_warning_no_reason = "Jeg har utestengt denne personen uten en spesifisert grunn for ${displayTime}. Denne advarselen ble generert automatisk som et resultat av utestengelsen.",
		user_temporarily_banned_warning = "Jeg har midlertidig bannet personen med grunnen `${reason}` i ${displayTime}. Denne advarselen ble generert automatisk som et resultat av banningen."
	},

	panic = {
		press_panic_button = "Du har 5 sekunder på deg til å trykke panikk-knappen din (X).",
		panic_button_timeout = "Du trykket ikke panikk-knappen din i tide.",

		panic_button_title = "[Dispatch]",

		panic_button_unit = "10-14, ${unitId} ${lastName} ${label} nede.",
		panic_button_no_unit = "10-14, ${lastName} ${label} nede.",

		panic_blip = "10-14 ${lastName}",

		label_officer = "betjent",
		label_paramedic = "paramedic"
	},

	paper_bags = {
		fill_bag = "[${SeatEjectKey}] Fyll papirpose",
		no_bags = "Du har ingen papirposer.",
		no_bag_items = "Du har ingen gjenstander som kan legges i en papirpose.",
		close_bag = "Lukk pose",
		cancel_bag = "Avbryt",
		title = "Papirpose",
		failed_fill = "Kunne ikke fylle papirpose.",
		filled_bag = "Papirpose fylt."
	},

	parking_meters = {
		not_paid = "Ikke betalt",
		insert_dollar = "[${InteractionKey}] Sett inn $${amount}",

		no_cash = "Du har ikke en dollar.",
		max_time = "Denne parkeringsautomaten har allerede nådd maksimal tid.",
		failed_pay = "Betalingsfeil for parkeringsautomat."
	},

	pawn_shops = {
		sell_items = "Selg ${itemLabel}",
		press_to_sell_items = "[${InteractionKey}] Selg ${itemLabel}",
		sold_items = "Solgte ${sellAmount}x ${itemLabel} for $${sellPrice}.",
		no_items_to_sell = "Du har ingen ${itemLabel} å selge.",
		daily_limit_reached = "Du har nådd ditt daglige salgsmaksimum, selgeren kjøper ikke flere varer.",
		illegal_pawn_shop_id = "Prøver å overføre verdier for en pantelånersjappe som ikke eksisterer.",
		used_pawn_shop_title = "Brukt pantelånersjappe",
		used_pawn_shop_details = "${consoleName} brukte en pantelånersjappe og solgte ${sellAmount} `${itemLabel}` og mottok $${sellPrice}."
	},

	ped_messages = {
		attempt_succeeded = "prøvde å ${attemptMessage} og lyktes",
		attempt_failed = "prøvde å ${attemptMessage}, men mislyktes",
		dice_message = "trillet en terning og fikk ${diceNumber}",
		roll_message = "trillet en tilpasset terning med innstillinger ${rolls}d${max} og fikk ${totalValue}",
		citizen_card_message = "viste et ID-kort (${characterId})",
		badge_message = "viste et merke (${characterId})",
		license_message = "viste en lisens (${characterId})",
		ped_message_logs_title = "Ped Melding",
		ped_message_logs_details = "${consoleName} sendte en ped melding med følgende melding: `${pedMessage}`",
		attached_ped_message_logs_title = "Vedlagt Ped Melding",
		attached_ped_message_logs_details = "${consoleName} la til en vedlagt ped melding med følgende melding: `${pedMessage}`",
		chat_ped_messages_enabled = "Ped meldinger vil nå vises i chatten.",
		chat_ped_messages_disabled = "Ped meldinger vil ikke lenger vises i chatten.",
		me_message_chat_title = "/meg [${serverId}]",
		inspect_chat_title = "/undersøk [${serverId}]",
		frisk_chat_title = "/sjekk [${serverId}]",
		do_message_chat_title = "/gjør [${serverId}]",
		attempt_message_chat_title = "/forsøk [${serverId}]",
		dice_message_chat_title = "/terning [${serverId}]",
		roll_message_chat_title = "/rull [${serverId}]",
		description_message_chat_title = "/beskrivelse [${serverId}]",
		message_too_long = "Meldingen inneholder for mange tegn eller linjer!",
		card_command_wait = "Du trakk nettopp et kort, vent litt før du trekker et nytt.",
		ped_message_timeout = "Sakte ned, vent litt før du sender en annen melding."
	},

	ped_objects = {
		illegal_ped_object = "Prøver å legge til en ped-objekt som ikke er i listen over tillatte ped-objekter.",
		illegal_ped_weapon_object = "Prøver å legge til en ped-våpen-objekt som ikke er i våpenlisten."
	},

	ped_task = {
		network_id_invalid = "Ugyldig nettverks-ID.",
		ped_not_found = "Ped med nettverks-ID `${networkId}` ikke funnet.",
		tracked_ped = "Sporing ped",
		tracked_ped_is = "Ped (${entity}) er:"
	},

	ped_spawn = {
		ped_missing_model = "Mangler modellparameter.",
		ped_spawn_success = "Ped vellykket spawnet.",
		ped_failed_spawn = "Klarte ikke å spawne ped.",
		invalid_weapon = "Ugyldig våpen.",
		ped_remove_success = "Ped fjernet vellykket.",
		ped_failed_remove = "Klarte ikke å fjerne spawned peds.",
		ped_task_success = "Tildelte '${task}'-oppgave til spawnede peds.",
		ped_failed_task = "Klarte ikke å tildele '${task}'-oppgave til spawnede peds.",
		invalid_target = "Ugyldig målserver ID.",
		missing_task = "Mangler oppgaveparameter.",
		invalid_task = "Ugyldig pedoppgave '${task}'.",
		target_required = "Denne pedoppgaven krever et gyldig mål.",
		ped_emote_success = "Spawnet NPC'er spiller nå '${emote}' emote.",
		ped_failed_emote = "Kunne ikke få spawnet NPC'er til å spille '${emote}' emote.",
		invalid_emote = "Ugyldig emote '${emote}'.",
		missing_emote = "Mangler emote parameter.",

		emote_list = "Tilgjengelige NPC emotes: ${list}.",
		task_list = "Tilgjengelige NPC tasks: ${list}.",

		spawn_ped_missing_perms = "Prøvde å spawne en NPC uten tilstrekkelige tillatelser.",
		remove_peds_missing_perms = "Prøvde å fjerne spawnet NPC'er uten tilstrekkelige tillatelser.",
		ped_assign_task_missing_perms = "Forsøkte å tildele oppgave til spawnet ped uten tilstrekkelige tillatelser."
	},

	ped_steal = {
		ped_steal_reset = "Spillerens ped er tilbakestilt.",
		ped_steal_success = "Ped-skinn er stjålet.",
		ped_steal_failed = "Kunne ikke stjele ped-skinn.",
		ped_not_found = "Spillerens ped er ikke funnet.",
		invalid_server_id = "Ugyldig server-id."
	},

	ped_takeover = {
		failed_reset = "Kunne ikke bytte tilbake til original ped.",
		failed_reset_not_exist = "Din originale ped eksisterer ikke eller er ikke i nærheten av deg.",
		failed_takeover = "Kunne ikke overta ped.",
		invalid_network_id = "Ugyldig nettverks-ID."
	},

	peds = {
		ped_robbing_injection = "Overdreven ped-ran! (Bypasset server-timeout, sannsynligvis ved bruk av en injektor.)",
		robbed_ped_logs_title = "Ranet ped",
		robbed_ped_logs_details = "${consoleName} ranet en ped og mottok $${payout}."
	},

	pepper_spray = {
		press_to_pepper_spray = "Trykk ~INPUT_ATTACK~ for å bruke peppersprayen.",
		using_pepper_spray = "Bruker pepperspray."
	},

	phone = {
		app_settings = "Innstillinger",
		app_contacts = "Kontakter",
		app_calls = "Telefon",
		app_messages = "Meldinger"
	},

	phone_numbers = {
		no_phone_number_set = "Ingen telefonnummer ble satt.",
		invalid_format = "Det satt telefonnummeret var i ugyldig format.",
		invalid_length = "Det satt telefonnummeret var for kort eller for langt.",
		invalid_characters = "Det satt telefonnumeret inneholdt ugyldige tegn.",
		phone_number_changed_to = "Ditt telefonnummer har blitt endret til `${phoneNumber}`.",
		phone_number_taken = "Telefonnummeret `${phoneNumber}` er allerede i bruk.",
		database_error = "En bak-end databasefeil har oppstått.",
		no_packages = "Du har ingen pakker for dette.",
		api_error = "Vår bakre API returnerte en feil.",
		api_not_available = "Vår bakre API er ikke tilgjengelig.",
		phone_number_is_available = "Telefonnummeret `${phoneNumber}` er tilgjengelig.",
		phone_number_is_not_available = "Telefonnummeret `${phoneNumber}` er ikke tilgjengelig."
	},

	pictures = {
		selfie_description = "Bilde av ${firstName} ${lastName}."
	},

	player_control = {
		unable_to_drive_for_yourself = "Du kan ikke ta over for deg selv.",
		drive_for_player_no_permissions = "Spiller prøvde å kjøre for en annen spiller, men hadde ikke de nødvendige tillatelsene for å gjøre det.",
		player_is_not_nearby = "Spilleren med server-ID-en ${serverId} er ikke i nærheten.",
		player_is_not_the_drive_of_a_vehicle = "Spilleren med server-ID-en ${serverId} er ikke sjåføren i et kjøretøy.",
		press_to_stop_drive_for = "Trykk ~INPUT_FRONTEND_CANCEL~ for å stoppe kjøringen for spilleren."
	},

	player_scales = {
		reset_player_scale_for = "Tilbakestill spillerens størrelse for ${consoleName}.",
		set_player_scale_to_for = "Sett spillerens størrelse til `${scale}` for ${consoleName}.",
		reset_player_scale = "Tilbakestill spillerens størrelse.",
		set_player_scale_to = "Sett spillerens størrelse til `${scale}`.",
		set_player_scale_no_permission = "Spilleren hadde ikke tilstrekkelig tillatelse til å endre en annen spillers størrelse.",
		player_is_already_set_to_scale = "${consoleName} er allerede endret til størrelsen `${scale}`.",
		you_are_already_set_to_scale = "Du er allerede endret til størrelsen `${scale}`.",
		player_is_not_scaled = "${consoleName} er ikke endret i størrelsen.",
		you_are_not_scaled = "Du er ikke endret i størrelsen."
	},

	player_stats = {
		hp = "HP",
		armor = "Panser",
		toggle_player_stats_no_permissions = "Spilleren forsøkte å slå på/av spiller statistikk uten tilstrekkelig tillatelse.",
		updated_render_range = "Oppdaterte renderavstand til ${renderRange}.",
		turned_player_stats_on = "Skrudd på spillerstatistikk.",
		turned_player_stats_off = "Skrudd av spillerstatistikk."
	},

	players = {
		player_left = "Spiller har forlatt [${serverId}]"
	},

	pole_dancing = {
		press_to_strip_dance = "Trykk ~INPUT_CONTEXT~ for å utføre strippe-dans.",
		this_pole_is_occupied = "Denne stanga er opptatt.",
		stop_dancing = "Stopp dansingen",
		change_dance = "Bytt dans (${animationId})",

		no_model_name_set = "Ingen modellnavn er satt.",
		invalid_model = "Modellen '${modelName}' er ugyldig.",
		pole_dancing_offset = "Modell '${modelName}': vector3(${x}, ${y}, ${z})"
	},

	pools = {
		pools_overflowing = "Bassenger som renner over: ~r~${poolsOverflowing}"
	},

	props = {
		illegal_prop_item_id = "Spiller forsøkte å bruke et rekvisitt med en ulovlig gjenstands-ID.",
		spawn_prop_not_staff = "Spiller forsøkte å spawne et rekvisitt, men hadde ikke nødvendig tillatelse til å gjøre det.",
		managing_props_help = "Du administrerer for øyeblikket rekvisitter. Gå bort til en rekvisitt og trykk på ~INPUT_CONTEXT~ for å plukke den opp.",
		total_props = "Totalt antall rekvisitter: ${count}",
		active_props = "Aktive rekvisitter: ${count}",
		press_to_pick_up = "[${InteractionKey}] Plukk opp",
		pick_up = "Plukk opp",
		picking_up = "Plukker opp",
		press_to_destroy = "[${InteractionKey}] Ødelegg",
		destroy = "Ødelegg",
		destroying = "Ødelegger",
		prop = "Gjenstand",
		model_parameter_missing = "Parameteret `model` mangler.",
		model_parameter_invalid = "Modellen `${model}` er ugyldig.",
		model_parameter_is_not_an_object = "Modellen `${model}` er ikke et objekt.",
		spawned_prop_non_networked = "Spawnet en gjenstand uten nettverksfunksjonalitet med modell `${model}`.",
		spawned_prop_networked = "Spawnet en gjenstand med nettverksfunksjonalitet med modell `${model}`.",
		spawned_exact_prop = "Spawnet eksakt objekt.",
		failed_to_spawn_prop = "Kunne ikke spawne objektet med modellen `${model}`.",
		not_able_to_spawn_in_vehicle = "Du kan ikke være i et kjøretøy når du spawner et objekt.",
		not_able_to_spawn_while_dead = "Du kan ikke være død når du spawner et objekt.",
		not_able_to_spawn_while_moving = "Du må stå stille når du spawner et objekt.",
		stand_still_to_place_prop = "Du må stå stille for å plassere et objekt.",
		prop_no_interior = "Du kan kun plassere dette objektet utendørs.",

		invalid_prop_id = "Ugyldig objekt-ID.",
		prop_deleted = "Gjenstand med id ${propId} ble slettet.",

		invalid_wipe_radius = "Ugyldig slette-radius (mellom 1 og 100).",
		wipe_successful = "Gjenstander ble slettet.",
		wipe_props_missing_permissions = "Spiller forsøkte å slette gjenstander, men hadde ikke nødvendige tillatelser.",

		placing_prop = "Plasserer gjenstand",
		pickup_prop = "Plukker opp gjenstand",
		setting_up_tire_wall = "Setter opp dekkvegg",
		destroying_tire_wall = "Ødelegger dekkvegg"
	},

	radio = {
		frequency = "Frekvens",
		switch = "Bytte",
		radio_turned_off = "Radioen har blitt slått av.",
		radio_removed = "Du har mistet radioen din.",
		no_radio = "Du har ingen radio.",
		unable_to_use_radio_while_cuffed = "Du kan ikke bruke radioen mens du er lenket.",
		unable_to_use_radio_while_down = "Du kan ikke bruke radioen mens du ligger nede.",
		unable_to_use_radio_as_animal = "Du kan ikke bruke radioen som et dyr.",
		frequency_set_to_streamer = "Frekvensen er satt.",
		frequency_set_to = "Frekvensen er satt til ${frequency}.",
		frequency_already_set_to = "Frekvensen er allerede satt til ${frequency}.",
		radio_volume_same = "Radiovolumet er allerede satt til `${radioVolume}`.",
		radio_volume_reset = "Radiovolumet er nå tilbakestilt.",
		radio_volume_set = "Radiovolumet er nå satt til `${radioVolume}`.",
		radio_volume_current = "Ditt nåværende radiovolum er satt til `${radioVolume}`.",
		radio_volume_current_default = "Ditt nåværende radiovolum er standard.",
		radio_sound_effects_same = "Volumet på radioeffektene er allerede satt til `${radioSoundEffects}`.",
		radio_sound_effects_reset = "Volumet på radioeffektene er nå tilbakestilt.",
		radio_sound_effects_set = "Volumet på lydeffekter for radiostøy er satt til `${radioSoundEffects}`.",
		radio_sound_effects_current = "Volumet på lydeffekter for radiostøy er for øyeblikket satt til `${radioSoundEffects}`.",
		radio_sound_effects_current_default = "Volumet på lydeffekter for radiostøy er for øyeblikket på standardinnstillingene.",

		radio_missing_last_freq = "Du har ikke en radio for å bli med i siste frekvens.",

		radio_debug_failed = "Klarte ikke å bytte radio debug.",
		radio_debug_off = "Radio debug er skrudd av.",
		radio_debug_on = "Radiodebugging skrudd på.",

		radio_debug_no_permissions = "Forsøkte å skru på radiodebugging uten nødvendige tillatelser.",

		decrypt_frequency = "[${InteractionKey}] Dekryptér Frekvens",
		decrypting_frequency = "Dekrypterer Frekvens",
		decrypting_frequency_failed = "Kunne ikke dekryptere frekvens.",
		decrypter_jammed = "Dekryptereren ser ut til å være blokkert.",
		decrypted_frequency = "Frekvensen ser ut til å være rundt `${frekvens}`.",
		no_frequency_detected = "Ingen frekvens oppdaget."
	},

	remote_camera = {
		connected_to_camera = "Koblet til kamera #${id}",

		camera_distance = "Avstand: ${distance}m",
		out_of_range = "Utenfor rekkevidde",

		disconnect = "Koble fra",
		view_feed = "Se strøm",

		no_nearby_cameras = "Ingen kameraer i nærheten",
		nearby_cameras = "${amount} kamera(er) i nærheten",
		no_nearby_cameras_description = "Det er ingen kameraer i nærheten av deg.",

		camera_operator = "Operatør: ${fullName}",

		camera_label = "Kamera #${id}",
		camera_distance = "Avstand: ${distance}m",
		connect = "Koble til",

		something_went_wrong = "Noe gikk galt.",
		error_out_of_range = "Kameraet er utenfor rekkevidde.",
		error_not_found = "Kameraet ble ikke funnet."
	},

	reskin = {
		plastic_surgery = "Plastisk Kirurgi",
		los_santos_police_dept = "LOS SANTOS POLITIDEPARTMENT",

		reskin_player_no_permissions = "Spilleren prøvde å veksle radio debug uten riktig tillatelse.",

		triggered_reskin_for_player = "Triggret reskin for ${consoleName}.",

		triggered_reskin_for_player_logs_title = "Trigget Reskin for Spiller",
		triggered_reskin_for_player_logs_details = "${consoleName} trigget en reskin for ${targetConsoleName}.",

		triggered_reskin_for_self_logs_title = "Trigget Reskin For Selv",
		triggered_reskin_for_self_logs_details = "${consoleName} utløste en reskin for seg selv.",

		no_reskin_packages = "Du har ingen reskin-pakker.",
		redeemed_reskin_package = "Reskin-pakke innløst."
	},

	restaurants = {
		["table"] = "Table",
		press_to_table = "[${InteractionKey}] Bord",

		table_title = "Bord ${tableId}",
		seat = "Sete ${seatId}",
		close_menu = "Lukk meny",
		loading = "Laster...",

		leave_seat = "Forlat sete",
		view_menu = "Vis meny",
		change_seating_position = "Endre seteplassering (${animationId})",

		sushi = "Sushi",
		drinks = "Drikkevarer",
		desserts = "Desserter",

		aka = "Aka",
		kuro = "Kuro",
		shiro = "Shiro",
		midori = "Midori",
		nigiri = "Nigiri",
		sex_on_the_beach = "Sex on the Beach",
		mojito = "Mojito",
		pina_colada = "Pina Colada",
		tiramisu = "Tiramisu",
		chocolate_mousse = "Sjokolademousse",

		food_replenish = "Din sult og tørst vil bli fylt opp med ${amount} %.",
		thirst_replenish = "Din tørst vil bli fylt opp med ${amount} %.",
		hunger_replenish = "Din sult vil bli fylt opp med ${amount} %.",
		diving_drop_boost = "Få ${amount}x flere drop fra dykkerturer i ${duration} minutter.",
		hunting_drop_boost = "Få ${amount}x flere drops fra jaktturer i ${duration} minutter.",
		garbage_drop_boost = "Få ${amount}x flere drops fra renovasjonskjøring i ${duration} minutter.",
		faster_progress_bars = "Ha ${amount}x raskere fremgangsindikatorer i ${duration} minutter.",
		weapon_damage_multiplier = "Ha en ${amount}x skademultiplikator i ${duration} minutter.",
		local_sales_multiplier = "Ha en ${amount}x salgsmultiplikator for produkter solgt til lokale innbyggere.",
		shorter_boosting_cooldown = "Ha ${amount}x kortere nedkjølingstid mellom hacking på boosting.",
		swim_faster = "Svøm ${amount}x raskere i ${duration} minutter.",
		walk_faster = "Gå og løp ${amount}x raskere i ${duration} minutter.",
		health_generation = "Ha gradvis helse-generering i ${duration} minutter.",
		better_stamina = "Være i stand til å løpe uten å gå tom for utholdenhet i ${duration} minutter.",
		more_inventory_space = "Ha ${amount} flere lagringsplasser i inventoryet i ${duration} minutter.",

		buffs_note = "Buffene vil kun bli aktivert når du har forlatt bygningen."
	},

	riot_mode = {
		riot_mode_enabled = "Riotmodus aktivert.",
		riot_mode_disabled = "Riot-modus deaktivert. Allerede aggressive personer vil fortsette å kjempe til de er døde.",
		riot_mode_failed = "Kunne ikke bytte til Riot-modus.",
		riot_mode_missing_perms = "Forsøkt å bytte til Riot-modus uten tilstrekkelig tillatelse.",

		riot_mode_enabled_help = "Riot-modus er nå aktivert.",
		riot_mode_disabled_help = "Riot-modus er nå deaktivert.",

		add_riot_player_no_permissions = "Forsøkt å legge til en spiller på Riot-lista uten tilstrekkelig tillatelse.",
		remove_riot_player_no_permissions = "Forsøkt å fjerne en spiller fra Riot-lista uten tilstrekkelig tillatelse.",

		player_already_in_riot_list = "${consoleName} er allerede på opptøyslisten.",
		player_not_in_riot_list = "${consoleName} er ikke på opptøyslisten.",
		added_riot_player = "La til ${consoleName} på opptøyslisten.",
		failed_to_add_riot_player = "Kunne ikke legge til ${consoleName} på opptøyslisten.",
		removed_riot_player = "Fjernet ${consoleName} fra opptøyslisten.",
		failed_to_remove_riot_player = "Kunne ikke fjerne ${consoleName} fra opptøyslisten."
	},

	safes = {
		how_to_use = "Bruk \"A\" og \"D\" tastene for å rotere safen til du finner riktig kombinasjon. Start med å trykke på \"D\".",
		lock_open = "Ulåst",
		lock_closed = "Låst"
	},

	scoreboard = {
		player_list = "Spillerliste",
		players = "Spillere",
		total = "Total",
		recent_disconnections = "Nylige frakoblinger",
		disconnected_player = "Frakoblet spiller",
		id = "ID",
		name = "Navn",
		identifier = "Identifikator",
		reason = "Årsak",
		time_since_disconnection = "Tid siden frakobling",

		you_are_now_metagaming = "Du driver nå med metaspill.",
		you_are_no_longer_metagaming = "Du driver ikke lenger med metaspill."
	},

	screenshots = {
		screenshot_created = "Et skjermbilde har blitt opprettet.",
		screenshot_failed = "Klarte ikke å skaffe et skjermbilde fra den gitte brukeren.",
		screencapture_created = "Et skjermbilde har blitt tatt.",
		user_not_found_with_server_id = "Kunne ikke finne en bruker med den gitte server ID-en.",
		invalid_lifespan_parameter = "Ugyldig 'lifespan' parameter.",
		invalid_server_id_parameter = "Ugyldig 'server ID' parameter.",
		invalid_duration_parameter = "Ugyldig 'varighet' parameter.",
		invalid_fps_parameter = "Ugyldig 'fps' parameter.",
		missing_server_id_parameter = "'Server ID'-parameteren mangler.",

		screenshot_error_client_false = "Klarte ikke å ta skjermbilde",
		screenshot_error_user_not_found = "Bruker ikke funnet.",
		screenshot_error_user_developer = "Brukeren er en utvikler.",
		screenshot_error_no_token = "Klarte ikke å hente opfw-token.",
		screenshot_timeout = "Tidsavbrudd for skjermbilde forespørsel."
	},

	scuba = {
		sunken_ship = "Sunket skip",
		gather_item = "Samle objekt (${distance}m)",

		collected_junk = "Samlet søppel.",
		collected_item = "Samlet ${itemLabel}.",
		collected_broken_item = "Samlet ødelagt ${itemLabel}.",

		collected_scuba_item_logs_title = "Samlet Scuba-utstyr",
		collected_scuba_item_logs_details = "${consoleName} samlet opp et scuba-element og mottok `${itemName}`."
	},

	scuba_gear = {
		equipping_scuba_tank = "Tar på dykkerflaske",
		equipping_scuba_mask = "Tar på dykkermaske"
	},

	security_cameras = {
		illegal_security_camera = "Prøver å manipulere med ulovlige overvåkningskameraer.",
		saved_security_cameras_to_file = "Lagret `${amount}` overvåkningskameraer til en fil på serveren.",
		no_nearby_security_cameras = "Det er ingen nærliggende overvåkningskameraer å lagre.",
		no_city_ping = "Kunne ikke koble til byens kameraer.",
		offline = "Offline",
		camera_list = "Kameralist",
		camera = "Kamera ${cameraId}",
		mission_row_pd = "Mission Row-politistasjonen",
		pillbox_hospital = "Pillbox-sykehuset",
		jewelry_store = "Rockford Hills smykkebutikk",
		principal_bank = "Hovedbanken",
		bolingbroke_penitentiary = "Bolingbroke fengsel",
		fort_zancudo = "Fort Zancudo",
		del_perro_pier = "Del Perro-bryggen",
		flywheels_garage = "Flywheels garasje",
		sandy_shores_pd = "Sandy Shores-politistasjonen",
		sandy_shores_hospital = "Sandy Shores-sykehuset",
		davis_sheriffs_station = "Davis sheriffstasjon",
		vespucci_pd = "Vespucci politistasjon",
		rockford_hills_pd = "Rockford Hills PD",
		la_mesa_pd = "La Mesa PD",
		beaver_bush_ranger_station = "Beaver Bush Ranger Station",
		cinema = "Kino",
		st_fiacre_hospital = "St. Fiacre Sykehus",
		weazel_news = "Weazel News",
		palomino_fib_facility = "Palomino FIB-fasilitet",
		bank_1 = "Legion Square Bank",
		bank_2 = "Rockford Hills Bank",
		bank_3 = "Alta Bank",
		bank_4 = "Burton Bank",
		bank_5 = "Banham Canyon Bank",
		bank_6 = "Grand Senora Bank",
		bank_7 = "Paleto Bay Bank",
		grocery_store_1 = "Davis LTD Gasoline",
		grocery_store_2 = "Strawberry 24/7",
		grocery_store_3 = "Murrieta Heights Rob's Liquor",
		grocery_store_4 = "Little Seoul LTD Gasoline",
		grocery_store_5 = "Vespucci-kanalene Rob's Liquor",
		grocery_store_6 = "Morningwood Rob's Liquor",
		grocery_store_7 = "Mirror Park LTD Gasoline",
		grocery_store_8 = "Downtown Vinewood 24/7",
		grocery_store_9 = "Tataviam-fjellene 24/7",
		grocery_store_10 = "Banham Canyon Rob's Liquor",
		grocery_store_11 = "Banham Canyon 24/7",
		grocery_store_12 = "Richman Glen LTD Gasoline",
		grocery_store_13 = "Chumash 24/7",
		grocery_store_14 = "Harmony 24/7",
		grocery_store_15 = "Grand Senora Rob's Liquor",
		grocery_store_16 = "Grand Senora 24/7",
		grocery_store_17 = "Sandy Shores Liquor Ace",
		grocery_store_18 = "Sandy Shores 24/7",
		grocery_store_19 = "Grapeseed LTD Bensinstasjon",
		grocery_store_20 = "Mount Chiliad 24/7",

		-- NOTE: add-on
		paleto_247 = "Paleto Bay 24/7"
	},

	self_driving = {
		not_driving_a_vehicle = "Du kjører for øyeblikket ikke et kjøretøy.",
		not_a_self_driving_vehicle = "Kjøretøyet du kjører støtter ikke autopilot.",
		no_waypoint_set = "Vennligst sett et veipunkt for å markere destinasjonen din.",
		invalid_waypoint_set = "Det pekepunktet du satte kan ikke kjøres til automatisk.",
		self_driving_engaged = "Autopiloten er aktivert. Trykk ~INPUT_SPRINT~ og ~INPUT_DUCK~ for å kontrollere cruisefarten.",
		self_driving_disengaged = "Autopiloten er deaktivert.",
		destination_too_close = "Målet du har merket er for nærme.",
		self_driving_could_not_be_engaged = "Autopiloten kunne ikke aktiveres."
	},

	shield = {
		no_weapon_equipped = "Du må ha en våpen utstyrt for å utstyre det ballistiske skjoldet.",
		no_shield = "Du har ikke et ballistisk skjold i inventaret ditt."
	},

	shockwaves = {
		create_shockwave_missing_permissions = "Spilleren prøvde å lage en sjokkbølge, men hadde ikke de nødvendige tillatelsene.",
		push_player_missing_permissions = "Spilleren forsøkte å dytte en annen spiller, men de hadde ikke de nødvendige tillatelsene.",
		shockwave_success = "Sjokkbølge opprettet.",
		shockwave_failed = "Kunne ikke opprette sjokkbølge.",

		invalid_server_id = "Ugyldig server-ID.",
		push_player_success = "Spilleren ble vellykket dyttet.",
		push_player_failed = "Kunne ikke dytte spilleren."
	},

	shooting_ranges = {
		turn_on = "Slå på ($${cost})",
		turn_off = "Slå av",
		toggle_through_targets = "Bytt mellom mål (${modelId})",
		speed = "Fart (${speedLevel})",
		rotation = "Rotasjon (${rotationLevel})",
		clear_bullet_impacts = "Fjern kulemerker",
		illegal_shooting_spot_value = "Forsøk på å sende ugyldige verdier for skyteområder.",
		illegal_shooting_spot_id = "Forsøk på å sende verdier for et skyteområde som ikke eksisterer.",
		not_enough_cash = "Du har ikke nok kontanter."
	},

	shrooms = {
		press_to_pick_up_shrooms = "Trykk ~INPUT_CONTEXT~ for å plukke opp sopp.",
		picking_up_shrooms = "Plukker opp sopp.",
		press_to_sell_shrooms = "Trykk ~INPUT_CONTEXT~ for å selge sopp.",
		local_not_interested = "Lokalbefolkningen virker ikke interessert akkurat nå.",
		not_interested = "Dette lokalmiljøet virker ikke interessert i soppen din.",
		selling_shrooms = "Selger Sopp.",
		shrooms_not_ripe = "Disse soppen virker ikke modne ennå, la dem kanskje ligge litt lenger.",
		shroom_id = "sopp-${shroomId}"
	},

	skylift = {
		press_to_toggle_magnet = "Trykk ~INPUT_CONTEXT~ for å slå av/på magneten.",
		skylift_magnet_turned_off_logs_title = "Skylift Magnet Slått Av",
		skylift_magnet_turned_off_logs_details = "${consoleName} slo av Skylift magneten.",
		skylift_magnet_turned_on_logs_title = "Skylift Magnet Slått På",
		skylift_magnet_turned_on_logs_details = "${consoleName} slo på Skylift magneten.",
		skylift_attached_vehicle_logs_title = "Festet kjøretøy til Skylift",
		skylift_attached_vehicle_logs_details = "${consoleName} festet et kjøretøy til deres Skylift."
	},

	smoothies = {
		blend = "Blande",
		close = "Lukk",

		use_blender = "[${InteractionKey}] Bruk blender",
		blending = "Blending",

		smoothie_label = "Smoothie (${flavors})",
		seperator = "og"
	},

	snow = {
		hold_to_pick_up_snowballs = "Hold ~INPUT_CONTEXT~ for å plukke opp snøballer."
	},

	spawn = {
		spawn_now = "Spawn nå",
		last_position = "Siste posisjon",

		train_station = "Togstasjon",
		city_bus_station = "Bybuss stasjon",
		paleto_bay_bus_station = "Paleto Bay busstasjon",

		mission_row_police_station = "Mission Row Politistasjon",
		sandy_police_station = "Sandy Shores Politistasjon",
		paleto_police_station = "Paleto Bay Politistasjon",

		mount_zonah = "Mount Zonah",
		sandy_hospital = "Sandy Shores Sykehus",
		paleto_hospital = "Paleto Bay Sykehus",

		battle_royale = "Slagkamp Royale"
	},

	special_imports = {
		special_imports_blip = "Spesialimport",

		purchased_vehicle = "Kjøpte ${label} for $${price}. Kjøretøyet er lagt til i garasjen din.",

		something_went_wrong = "Noe gikk galt.",
		not_enough_money = "Du har ikke nok penger.",
		invalid_package = "Ugyldig pakkenivå. (Du trenger nivået gudelik)",

		dealership_closed = "Forhandleren er for tiden stengt.",

		purchased_vehicle_logs_title = "Spesielle importerte kjøretøyer",
		purchased_vehicle_logs_details = "${consoleName} kjøpte en `${modelName}` spesielt importert kjøretøy for ${price} (Skilt: `${plate}`).",

		marker_label = "${label} | ${price} kr | Lager: ${stock}",
		marker_label_purchase = "[${SeatEjectKey}] Kjøp ${label} for ${price} kr",
		marker_label_purchase_timer = "[${timer}s] Hold ${SeatEjectKey} for å kjøpe ${label} for ${price} kr",

		vehicle_sold_out = "${label} | Ikke på lager"
	},

	spectating = {
		cannot_spectate_self = "Du kan ikke se på deg selv.",
		failed_spectate = "Kunne ikke se på spiller.",
		player_not_exist = "Spilleren er offline.",
		no_character_loaded = "Spilleren har ikke lastet inn en karakter.",
		not_same_instance = "Spilleren er ikke i samme instans som deg.",

		loading_coords = "Laster koordinater",
		preloading_area = "Forhåndslasting av område",
		finding_player = "Leter etter spiller",

		invincibility_active = "Uovervinnelighet: ~r~Aktiv~w~",
		invincibility_inactive_dead = "Uovervinnelighet: ~g~Inaktiv~w~ (død)",
		invincibility_inactive = "Uovervinnelighet: ~g~Inaktiv~w~",

		health_ok = "Helse: ~g~${health} / ${maxHealth}~w~",
		health_bad = "Helse: ~r~${health} / ${maxHealth}~w~",

		armor_ok = "Beskyttelse: ~g~${armor} / ${maxArmor}~w~",
		armor_bad = "Beskyttelse: ~r~${armor} / ${maxArmor}~w~",

		speed = "Hastighet: ${speed}${unit}",
		speed_mph = "mph",
		speed_kmh = "km/t",

		exit_spectate = "Trykk ~g~${InteractionKey}~w~ for å slutte å se på",

		spectate_logs_title = "Begynte å se på",
		spectate_logs_details = "${consoleName} begynte å se på ${targetUser}.",

		spectate_stopped_logs_title = "Sluttet å se på",
		spectate_stopped_logs_details = "${consoleName} sluttet å følge med."
	},

	spying = {
		microphone_bug_not_activated = "Denne feilen har ikke blitt aktivert.",
		vehicle_tracker_not_activated = "Denne sporingen har ikke blitt aktivert.",
		microphone_bug_active_with_battery = "Denne mikrofonfeilen er for øyeblikket aktiv. Batteriet er på ${batteryPercentage}%. Du kan \"bruke\" den for å lytte til samtaler som kan plukkes opp.<br><br>Enhet Id: ${deviceId}.",
		microphone_bug_ran_out_of_battery = "Dette mikrofonfeilen er tom for batteri. Den fysiske mikrofonfeilen vil forsvinne etter en uke.<br><br>Enhet Id: ${deviceId}.",
		vehicle_tracker_active_with_battery = "Dette kjøretøysporingsenheten er for øyeblikket aktiv. Batteriet er på ${batteryPercentage}%. Så lenge kjøretøyet denne enheten er festet til er tilgjengelig, vil det vises på kartet ditt.<br><br>Enhets-ID: ${deviceId}.",
		vehicle_tracker_ran_out_of_battery = "Dette kjøretøysporingsenheten er utladet. Den fysiske enheten vil forsvinne etter en uke.<br><br>Enhets-ID: ${deviceId}.",
		scanning_for_devices = "Skanner for enheter",
		searching_for_devices = "Søker etter enheter",
		no_nearby_vehicle = "Ingen kjøretøy i nærheten.",
		placing_vehicle_tracker = "Plasserer kjøretøy tracker",
		error_using_vehicle_tracker = "Det oppstod en feil under forsøk på å plassere kjøretøytrackeren.",
		vehicle_tracker_placed = "Kjøretøytrackeren er blitt plassert.",
		error_using_microphone_bug = "Det oppstod en feil under forsøk på å plassere mikrofon-buggen.",
		microphone_bug_placed = "Mikrofon-buggen er blitt plassert.",
		placing_microphone_bug_on_vehicle = "Plasserer bugg på kjøretøy",
		placing_microphone_bug_on_player = "Plasserer bugg på spiller",
		placing_microphone_bug_on_ground = "Plassere Mikrofon-Bug på bakken",
		error_using_device_scanner = "Det oppstod en feil under forsøk på å bruke enhetsskanneren.",
		error_searching_for_devices = "Det oppstod en feil under forsøk på å søke etter enheter.",
		found_devices = "Fant ${totalDevices} enheter.",
		no_nearby_devices_found = "Ingen enheter i nærheten ble funnet.",
		microphone_bug = "Mikrofon-Bug",
		microphone_bug_destroy = "Mikrofon-Bug\n[${InteractionKey}] Ødelegg",
		vehicle_tracker = "Kjøretøy Sporing",
		vehicle_tracker_destroy = "Kjøretøy Sporing\n[${InteractionKey}] Ødelegg",
		destroying_device = "Ødelegger enhet",
		tracker_will_appear_on_map = "Denne sporingen er allerede aktivert. Den vil vises på kartet ditt så lenge kjøretøyet er tilgjengelig og sporingen har batteri.",
		spy_ui_info = "Lydhør på Mikrofonenhet (#${deviceId})",
		spy_ui_location = "${location}, ${time}",
		spy_ui_exit = "Trykk ESC for å avslutte lyttingen på Mikrofonenhet",
		spy_ui_connecting = "Kobler til Mikrofonenhet (#${deviceId})",
		spy_ui_connection_failed = "Kunne ikke koble til Mikrofonenhet (#${deviceId})",
		spy_ui_awaiting_data = "Venter på data...",
		spy_ui_data_failed = "Datafeil"
	},

	starter_car = {
		your_vehicle_is_nearby = "Ditt personlige kjøretøy er parkert i nærheten.",
		would_you_like_directions = "Ønsker du veibeskrivelse for å finne det?",
		press_to_respond = "Trykk ~INPUT_FRONTEND_ACCEPT~ for å akseptere eller ~INPUT_FRONTEND_CANCEL~ for å avslå.",
		follow_the_checkpoints = "Følg rutepunktene.",

		received_logs_title = "Mottok startet bil",
		received_logs_details = "${consoleName} mottok en startet bil (Modell: ${modelName})."
	},

	status = {
		status_reset = "Statusen for ${consoleName} har blitt tilbakestilt.",
		status_reset_failed = "Ingen bruker med server ID `${serverId}` ble funnet.",
		reset_status_not_staff = "Forsøkte å tilbakestille en spiller sin status uten nødvendige tillatelser.",
		status_reset_for_all = "Alle sine status er nå tilbakestilt.",
		status_disabled = "Slått av statusene (stress, sult og tørst).",
		status_enabled = "Slått på statusene (stress, sult og tørst).",
		failed_to_set_body_armor_level = "Klarte ikke å utføre `/set_body_armor` kommandoen korrekt.",
		set_body_armor_level_player = "Kroppspansernivået for ${consoleName} ble vellykket satt til `${bodyArmorLevel}`.",
		set_body_armor_level_everyone = "Kroppspansernivået for alle ble vellykket satt til `${bodyArmorLevel}`.",
		set_body_armor_level_self_title = "Sett Kroppspansernivå For Deg Selv",
		set_body_armor_level_self_details = "${consoleName} satt sitt eget kroppspansernivå til `${bodyArmorLevel}`.",
		set_body_armor_level_everyone_title = "Sett Kroppspansernivå For Alle",
		set_body_armor_level_everyone_details = "${consoleName} satte kroppspansernivået for alle til `${bodyArmorLevel}`.",
		set_body_armor_level_player_title = "Sett Kroppsbeskyttelsesnivå For Spiller",
		set_body_armor_level_player_details = "${consoleName} oppdaterte ${targetConsoleName} og satte kroppsbeskyttelsesnivået deres til `${bodyArmorLevel}`.",
		set_body_armor_level_player_not_staff = "Spilleren forsøkte å endre en annen spillers kroppsbeskyttelsesnivå, men hadde ikke tilstrekkelige tillatelser til å gjøre det.",
		set_body_armor_level_self_not_staff = "Spilleren forsøkte å endre sitt eget kroppsbeskyttelsesnivå, men hadde ikke tilstrekkelige tillatelser til å gjøre det.",
		stress_level_warning = "Du er stresset! Senk stressnivået ved å røyke sigaretter, joints eller gjøre aktiviteter som yoga."
	},

	streamer_mode = {
		enabled_streamer_mode = "Aktivert streamer-modus.",
		disabled_streamer_mode = "Deaktivert streamer-modus."
	},

	sync = {
		missing_hour = "Ingen time oppgitt.",
		invalid_hour = "Lokal tid-overskrivning er ugyldig. Verdien må være en tid mellom 0:00 og 23:59.",
		hour_changed = "Timen er nå satt til `${hour}`.",
		set_hour_not_staff = "Forsøkte å endre tid uten nødvendige tillatelser.",

		local_time_override_enabled = "Lokal tid er satt til ${hour}:${minute}.",
		local_time_override_disabled = "Tilbakestill lokaltiden til standard.",
		local_weather_override_enabled = "Sett lokalt vær til `${weatherName}`.",
		local_weather_override_disabled = "Tilbakestill lokalt vær til standard.",

		missing_minute = "Ingen minutter angitt.",
		invalid_minute = "Minutten `${minute}` er ugyldig. Verdien bør være mellom 0 og 59.",
		minute_changed = "Minuttet er nå satt til `${minute}`.",
		set_minute_not_staff = "Forsøkte å sette minuttet uten nødvendige tillatelser.",

		missing_weather = "Ingen værtype angitt.",
		invalid_weather = "Været `${weatherName}` er ikke gyldig. Gyldige værnavn er KLART, EKSTRASOL, SKYER, OVERSKYET, REGN, OPPLYSNING, TORDEN, SMOG, TÅKETE, JULETID, SNØLYS og SNØSTORM.",
		weather_changed = "Været er nå endret til `${weatherName}`.",
		weather_advanced = "Været er nå avansert til `${weatherName}`.",
		weather_advance_fail = "Kunne ikke endre været naturlig.",
		set_weather_not_staff = "Forsøkte å endre været uten nødvendig tillatelse.",
		advance_weather_not_staff = "Forsøkte å avansere været uten nødvendig tillatelse.",

		time_frozen = "Tiden er nå fryst.",
		time_unfrozen = "Tiden er ikke lenger fryst.",
		freeze_time_not_staff = "Forsøkte å fryse tiden uten nødvendige tillatelser.",

		weather_frozen = "Været er nå fryst.",
		weather_unfrozen = "Været er ikke lenger fryst.",
		freeze_weather_not_staff = "Forsøkte å fryse været uten nødvendige tillatelser.",

		blackout_enabled = "Det er nå strømbrudd i byen.",
		blackout_disabled = "Byen har ikke lenger strømbrudd.",
		blackout_not_staff = "Forsøkte å slå på eller av strømbrudd uten nødvendige tillatelser.",

		weather_changed_title = "Været har endret seg",
		weather_changed_details = "${consoleName} endret været til `${weatherName}`.",

		weather_changed_success = "Været er nå endret til `${weatherName}`.",
		weather_change_failed = "Kunne ikke endre været.",
		weather_parameter_invalid = "Ugyldig værnavn parameter.",
		weather_parameter_missing = "Mangler værnavn parameter.",

		time_parameters_invalid = "Ugyldig time- eller minuttparameter.",
		time_currently_transitioning = "Tiden er i overgang, vennligst vent.",
		time_successfully_transitioned = "Tiden ble vellykket endret til ${hour}:${minute}.",
		time_successfully_set = "Tiden ble vellykket satt til ${hour}:${minute}."
	},

	tablet = {
		you_dont_have_a_tablet = "Du har ikke en tablett.",

		app_snake = "Slange",
		app_tetris = "Tetris",
		app_chess = "Sjakk",
		app_minesweeper = "Minerydder",
		app_flappy_bird = "Flappy Bird",
		app_geoguesser = "Geo-Gjetter",
		app_pdm = "PDM-katalog",
		app_edm = "EDM-katalog",
		app_cat_pictures = "Kattemalerier",

		folder_games = "Spill",
		folder_productivity = "Produktivitet",

		snake_title = "Slange",
		snake_description = "Bruk piltastene for å bevege deg opp, ned, til venstre og til høyre.",
		snake_start_game = "Start spill",
		snake_difficulty = "Vanskelighetsgrad:",
		snake_difficulty_easy = "Enkel",
		snake_difficulty_medium = "Medium",
		snake_difficulty_hard = "Vanskelig",

		snake_game_over = "Spillet er slutt!",
		snake_over_description = "Endelig poengsum: ${score}.",
		snake_new_game = "Nytt spill",

		tetris_description = "Bruk piltastene for å bevege deg venstre og høyre.",
		tetris_play = "Nytt spill",
		tetris_game_over = "Spillet er slutt",
		tetris_restart = "Start på nytt",
		tetris_score = "Poengsum",

		chess_title = "Sjakk",
		chess_your_turn = "Din tur",
		chess_ai_turn = "AI tenker",
		chess_you_lost = "Du tapte",
		chess_you_won = "Du vant",
		chess_draw = "Uavgjort",

		chess_play_as = "Spill som:",
		chess_play_as_b = "Svart",
		chess_play_as_w = "Hvit",
		chess_difficulty = "Vanskelighetsgrad:",
		chess_difficulty_level = "Nivå ${level}",
		chess_start = "Start spill",

		minesweeper_title = "Minesveiper",
		minesweeper_win = "Du vant",
		minesweeper_loose = "Du tapte",
		minesweeper_difficulty = "Vanskelighetsgrad:",
		minesweeper_start = "Start spill",
		minesweeper_flags_used = "${used}/${total} flagget",

		flappy_bird_title = "Flappy Bird",
		flappy_bird_score = "Sluttpoengsum:",
		flappy_bird_game_over = "Spillet er over",
		flappy_bird_start = "Trykk på lerretet for å starte"
	},

	tattoos = {
		tattoos_refreshed = "Tatoveringer oppdatert.",
		something_went_wrong = "Noe gikk galt.",
		user_does_not_have_sent_character_loaded = "Brukeren har ikke lastet inn karakteren som ble sendt.",
		user_has_no_character_loaded = "Brukeren har ingen karakter lastet inn.",
		user_not_found = "Den angitte brukeren ble ikke funnet på serveren.",
		invalid_character_id = "Ugyldig karakter-ID-parameter sendt.",
		invalid_license_identifier = "Ugyldig lisens-ID-parameter sendt."
	},

	teleporters = {
		enter_mechanic_shop = "Gå inn på mekanisk verksted",
		enter_mechanic_shop_interact = "[${InteractionKey}] Gå inn på mekanisk verksted",

		exit_mechanic_shop = "Gå ut av mekanisk verksted",
		exit_mechanic_shop_interact = "[${InteractionKey}] Gå ut av mekanisk verksted",

		enter_coroner = "Gå inn på likhus",
		enter_coroner_interact = "[${InteractionKey}] Gå inn på likhus",

		exit_coroner = "Gå ut av rettsmedisineren",
		exit_coroner_interact = "[${InteractionKey}] Gå ut av rettsmedisineren",

		enter_fib = "Gå inn i FIB-kontoret",
		enter_fib_interact = "[${InteractionKey}] Gå inn i FIB-kontoret",

		exit_fib = "Gå ut av FIB-kontoret",
		exit_fib_interact = "[${InteractionKey}] Gå ut av FIB-kontoret",

		enter_iaa_base = "Gå inn i IAA-base",
		enter_iaa_base_interact = "[${InteractionKey}] Gå inn i IAA-base",

		exit_iaa_base = "Gå ut av IAA-base",
		exit_iaa_base_interact = "[${InteractionKey}] Gå ut av IAA-base",

		enter_server_room = "Gå inn i serverrommet",
		enter_server_room_interact = "[${InteractionKey}] Gå inn i serverrommet",

		exit_server_room = "Forlat serverrom",
		exit_server_room_interact = "[${InteractionKey}] Forlat serverrom",

		enter_warehouse_shop = "Gå inn på lageret",
		enter_warehouse_shop_interact = "[${InteractionKey}] Gå inn på lageret",

		exit_warehouse_shop = "Forlat lageret",
		exit_warehouse_shop_interact = "[${InteractionKey}] Forlat lageret",

		enter_office_shop = "Gå inn på kontoret",
		enter_office_shop_interact = "[${InteractionKey}] Gå inn på kontoret",

		exit_office_shop = "Forlat kontoret",
		exit_office_shop_interact = "[${InteractionKey}] Forlat kontoret",

		enter_cocaine_lab = "Gå inn i kokainlaboratoriet",
		enter_cocaine_lab_interact = "[${InteractionKey}] Gå inn i kokainlaboratoriet",

		exit_cocaine_lab = "Gå ut av kokainlaboratoriet",
		exit_cocaine_lab_interact = "[${InteractionKey}] Gå ut av kokainlaboratoriet",

		enter_mayor_office = "Gå inn på ordførerens kontor",
		enter_mayor_office_interact = "[${InteractionKey}] Gå inn på ordførerens kontor",

		exit_mayor_office = "Gå ut av ordførerens kontor",
		exit_mayor_office_interact = "[${InteractionKey}] Gå ut av ordførerens kontor",

		enter_exclusive_dealership = "Gå inn på eksklusivt bilforhandler",
		enter_exclusive_dealership_interact = "[${InteractionKey}] Gå Inn på Eksklusivt Bilforhandler",

		exit_exclusive_dealership = "Gå Ut av Eksklusivt Bilforhandler",
		exit_exclusive_dealership_interact = "[${InteractionKey}] Gå Ut av Eksklusivt Bilforhandler",

		enter_casino = "Gå Inn på Casino",
		enter_casino_interact = "[${InteractionKey}] Gå Inn på Casino",

		exit_casino = "Gå Ut av Casino",
		exit_casino_interact = "[${InteractionKey}] Gå Ut av Casino",

		enter_roof = "Gå På Taket",
		enter_roof_interact = "[${InteractionKey}] Gå På Taket",

		exit_roof = "Gå Av Taket",
		exit_roof_interact = "[${InteractionKey}] Gå av taket",

		enter_penthouse = "Gå inn i penthouse-leiligheten",
		enter_penthouse_interact = "[${InteractionKey}] Gå inn i penthouse-leiligheten",

		exit_penthouse = "Gå ut av penthouse-leiligheten",
		exit_penthouse_interact = "[${InteractionKey}] Gå ut av penthouse-leiligheten",

		enter_parking_garage = "Gå inn i parkeringshuset",
		enter_parking_garage_interact = "[${InteractionKey}] Gå inn i parkeringshuset",

		exit_parking_garage = "Gå ut av parkeringshuset",
		exit_parking_garage_interact = "[${InteractionKey}] Gå ut av parkeringshuset",

		enter_surgery = "Gå inn på operasjonsrommet",
		enter_surgery_interact = "[${InteractionKey}] Gå inn på operasjonsrommet",

		exit_surgery = "Gå ut av operasjonsrommet",
		exit_surgery_interact = "[${InteractionKey}] Gå ut av operasjonsrommet",

		enter_icu = "Gå inn på intensivavdelingen",
		enter_icu_interact = "[${InteractionKey}] Gå inn på intensivavdelingen",

		exit_icu = "Gå ut av intensivavdelingen",
		exit_icu_interact = "[${InteractionKey}] Gå ut av intensivavdelingen",

		enter_underground_tunnel = "Gå inn i underjordisk tunnel",
		enter_underground_tunnel_interact = "[${InteractionKey}] Gå inn i underjordisk tunnel",

		exit_underground_tunnel = "Gå ut av underjordisk tunnel",
		exit_underground_tunnel_interact = "[${InteractionKey}] Gå ut av underjordisk tunnel",

		use_secret_tunnel_exit = "Bruke hemmelig utgang",
		use_secret_tunnel_exit_interact = "[${InteractionKey}] Bruk hemmelig utgang",

		enter_hangar = "Gå inn i hangaren",
		enter_hangar_interact = "[${InteractionKey}] Gå inn i hangaren",

		exit_hangar = "Gå ut av hangaren",
		exit_hangar_interact = "[${InteractionKey}] Gå ut av hangaren",

		enter_loading_bay = "Gå inn i lastebukthavnen",
		enter_loading_bay_interact = "[${InteractionKey}] Gå inn i lastebukthavnen",

		exit_loading_bay = "Gå ut av lastebukthavnen",
		exit_loading_bay_interact = "[${InteractionKey}] Gå ut av lastebukthavnen"
	},

	test_server = {
		you_are_not_in_a_vehicle = "Du er ikke i et kjøretøy.",
		you_are_in_a_vehicle = "Du er for øyeblikket i et kjøretøy.",
		invalid_vehicle_preset = "Ugyldig kjøretøyinnstilling.",
		fully_upgraded = "Kjøretøyet er oppgradert.",
		applied_preset = "Innstillingene er lagret.",
		spawned_car = "Spawned `${modelName}`.",
		just_spawned_a_car = "Du har akkurat spawnet et kjøretøy, vent ${time} før du spawner et nytt."
	},

	time_scale = {
		invalid_time_scale = "Verdien ${timeScale} er en ugyldig tidsinnstilling.",
		set_time_scale_missing_permissions = "Spilleren forsøkte å sette tidsinnstillingen, men hadde ikke de nødvendige tillatelsene.",
		time_scale_set_to = "Tidskaleringen er satt til ${timeScale}.",
		time_scale_disabled = "Tidskaleringen er koblet fra.",
		time_scale_already_set_to = "Tidskaleringen er allerede satt til ${timeScale}.",
		time_scale_is_already_disabled = "Tidskaleringen er allerede koblet fra."
	},

	titanic = {
		created_titanic = "Opprettet et Titanic med synkehastighet på ${sinkTime} minutt(er).",
		failed_to_create_titanic = "Kunne ikke opprette Titanic.",
		create_titanic_missing_permissions = "Spilleren prøvde å opprette en Titanic, men de hadde ikke nødvendig tillatelser."
	},

	top_down = {
		not_in_valid_vehicle = "Du er ikke i et gyldig kjøretøy (kun biler/motorsykler).",
		top_down_on = "Topp-ned-visning aktivert.",
		top_down_off = "Topp-ned-visning deaktivert."
	},

	trackers = {
		error_finding_tracker = "En feil oppsto mens vi lette etter sporingen din.",
		tracker_visible = "Sporingen din vises nå.",
		tracker_hidden = "Sporingen din er nå skjult.",
		tracker = "Sporing",
		trackers = "Sporinger",
		stockade_robbery_tracker = "Stockade lastebil (10-78)",
		tracked_vehicle = "Sporingskjøretøy (${trackerId})",
		tracked_player = "${displayName}",
		battle_royale_teammate = "${name}",
		tracker_character = "${firstName} ${lastName} (${departmentLabel})",
		tracker_character_unit_id = "${unitId}: ${firstName} ${lastName} (${departmentLabel})",
		trackers_in_category = "Trackers vil nå bli lagret i deres kategorier på kartet.",
		trackers_split = "Trackers vil nå bli delt opp i individuelle merkeenheter.",

		department_sasp = "SASP",
		department_bcso = "BCSO",
		department_sahp = "SAHP",
		department_doc = "DOC",
		department_park_rangers = "Park Ranger",
		department_medical = "Ambulanse",
		department_doctor = "Lege",
		department_bcfd = "BCFD",

		department_police_undercover = "Undercover Politiet",

		department_police_training = "Polititreningsavdeling",
		department_ems_training = "EMStreningsavdeling"
	},

	trading_cards = {
		access_store = "[${InteractionKey}] Tilgang Butikk",

		buy_pack = "Kjøp ${packName}",
		store_title = "Kortbutikk",

		successfully_bought_pack = "Kjøpte spillekortpakken vellykket.",
		failed_buy_pack = "Kunne ikke kjøpe pakken. Har du nok penger?",

		just_showed_trading_cards = "Du viste nettopp et spillekort. Vennligst vent litt.",

		unpack_successfull = "Pakken ble åpnet med suksess.",
		failed_unpack = "Klarte ikke å åpne pakken.",
		failed_unpack_no_cards = "Klarte ikke å åpne pakken. Det er ingen tilgjengelige samlekort.",

		edition = "Utgave",
		rarity = "Sjeldenhet",

		rarity_bronze = "Bronse",
		rarity_silver = "Sølv",
		rarity_gold = "Gull",
		rarity_holo = "Holo",
		rarity_foil = "Foliering",
		rarity_relic = "Gjenstand",
		rarity_headache = "Hodepine",
		rarity_missprint = "Misstrykk",
		rarity_ethereal = "Ethereal",
		rarity_promotional = "Promoteringsartikkel",

		rarity_custom = "Egendefinert",

		press_to_access_buyback = "Trykk på ~INPUT_CONTEXT~ for å få tilgang til kjøp av kort.",
		buyback_title = "Kortinnkjøp",
		close_menu = "Lukk meny",
		sell_cards = "Selg alle ${rarity}-kort",

		failed_selling = "Kunne ikke selge kortene.",
		no_cards_of_type = "Du har ikke noen ${rarity}-kort.",
		successfully_sold_cards = "Solgte ${amount} ${rarity}-kort for $${earned}.",

		studio_blip = "945 Studios"
	},

	training = {
		on_team_attackers = "Du er en angriper!\nTid igjen: ${time}",
		on_team_defenders = "Du er en forsvarer!\nTid igjen: ${time}",
		attackers = "Angripere:",
		defenders = "Forsvarere:",
		waiting_for_players = "Venter på flere spillere. Det må være minst en spiller på hvert lag.",
		none = "N/A",
		match_starting_in = "Kampen vil starte om ${seconds} sekunder.",
		loading_match = "Venter på at spillere laster inn. Kampen vil begynne om ${seconds} sekunder.",
		attackers_help_text = "Drep alle forsvarerne før avkjølingsperioden er over for å vinne!",
		defenders_help_text = "Drep alle angriperne eller vent til avkjølingsperioden er over for å vinne!",
		attacker = "ANGRI PERSON",
		defender = "FORSVARER",
		attackers_won = "Angriperne vant!",
		defenders_won = "Forsvarerne vant!"
	},

	trains = {
		spawn_train_missing_permissions = "Spiller forsøkte å spawne et tog, men hadde ikke tilstrekkelige tillatelser til å gjøre det.",

		invalid_track_id = "Ugyldig spor-ID oppgitt.",
		spawned_train_on_track = "Spawnet et tog på spor ${trackId}.",
		failed_to_spawn_train = "Kunne ikke spawne et tog."
	},

	traps = {
		rearming = "Lasting",
		press_to_rearm = "[${InteractionKey}] Last",
		rearm = "Last inn",
		e = "E"
	},

	treasure_maps = {
		no_treasure_map_with_tier = "Det finnes ingen skattekart med nivå ${mapTier}.",
		treasure_map_does_not_have_piece = "Skattekart med nivå ${mapTier} har ikke stykke ${pieceNumber}.",
		spawn_map_piece_missing_permissions = "Spiller forsøkte å spawne et kartstykke uten tilstrekkelige tillatelser.",

		sketchy_map = "Skisseaktig kart",
		worn_map = "Slitt kart",
		fancy_map = "Fancy kart",
		exquisite_map = "Utsøkt kart",

		map_piece_tier_1_description = "Det ser ut til å være skrift under en stygg klump med tyggegummi.",
		map_piece_tier_2_description = "En ganske autentisk utseende bit av et kart. Selv om blekket lekker litt.",
		map_piece_tier_3_description = "Denne kartbiten glitrer litt i sollyset.",
		map_piece_tier_4_description = "Denne intrikate, vakre kartbiten lukter penger.",

		map_tier_1_description = "Ser ut som det ble håndtegnet på en serviett. Ignorer den nysgjerrige flekken.",
		map_tier_2_description = "Denne kartet er ganske slitt, men det ser ut som om det kan føre til noe bra.",
		map_tier_3_description = "Veldig fint «sprakende» kart med en «100% ekte» segl i nedre høyre hjørne.",
		map_tier_4_description = "Dette kartet ser dyrere ut enn de fleste skatter. La oss dra!!!!",

		press_to_combine_pieces = "Trykk ~INPUT_CONTEXT~ for å kombinere stykker av kart ${mapTier}.",

		treasure_map = "Skattekart (Nivå ${mapTier})"
	},

	tsunami = {
		the_ocean_scaler_intensity_already_set_to = "Havskalerens intensitet er allerede satt til `${intensity}`.",
		no_ocean_scaler_intensity_set = "Det er allerede ingen intensitet satt for havskalering.",
		set_ocean_scaler_to = "Sett havskalerens intensitet til `${intensity}`.",
		reset_ocean_scaler = "Tilbakestill havskalerens intensitet.",
		set_ocean_scaler_no_permission = "Spilleren hadde ikke tilstrekkelig tillatelse til å endre havskalerens intensitet."
	},

	tuner_shop = {
		purchase_label = "[${SeatEjectKey}] Kjøp ${label} for $${price}",
		purchase_label_far = "${label} | $${price}",
		purchase_label_timer = "[${timer}] ${label} | ${price} kr",
		purchase_label_sale = "[${SeatEjectKey}] Kjøp ${label} for ${price} kr (-${discount}%)",
		purchase_label_sale_far = "Salg | ${label} | ${price} kr (-${discount}%)",
		purchase_label_sale_timer = "[${timer}] ${label} | ${price} kr (-${discount}%)",

		failed_vehicle_spawn = "Kunne ikke spawne kjøretøyet.",
		not_enough_funds = "Ikke nok midler til å fullføre kjøpet.",
		area_not_clear = "Spawnområdet er ikke klart.",
		something_went_wrong = "Noe gikk galt under forsøket på å kjøpe kjøretøyet.",

		purchased_vehicle = "Kjøpte ${label} for $${price}.",

		tuner_shop_blip = "Midnatt Tunersjappe",

		log_title = "Tunersjappe Kjøp",
		log_description = "Kjøpte `${label}` for $${price}.",
		log_description_discount = "Kjøpte `${label}` for $${price} med ${discount}% rabatt."
	},

	vape = {
		press_to_use = "Trykk på ~INPUT_CONTEXT~ for å ta et trekk. Trykk på ~INPUT_FRONTEND_CANCEL~ for å legge bort vapeen."
	},

	vdm = {
		failed_vdm = "Kunne ikke VDM spilleren.",
		invalid_entity = "Kunne ikke finne kjøretøy eller sjåfør.",
		invalid_network_id = "Ugyldig nettverks-ID.",
		invalid_target = "Ugyldig mål.",
		cleared_vdm = "Fjernet ${amount} vdm-mål.",
		failed_vdm_clear = "Kunne ikke fjerne vdm-mål.",
		added_vdm_target = "NPC med nettverks ID ${networkId} målretter nå ${target}.",

		vdm_no_permissions = "Spiller forsøkte å bruke vdm-kommandoen uten tilstrekkelig tillatelse."
	},

	vending_machines = {
		vending_coffee = "Trykk ~INPUT_CONTEXT~ for å kjøpe en kaffe. Prisen er $${cost}.",
		vending_coffee_not_enough_cash = "Du har ikke nok kontanter til å kjøpe en kaffe. Prisen er $${cost}.",
		vending_snack = "Trykk ~INPUT_CONTEXT~ for å kjøpe en Snack. Prisen er $${cost}.",
		vending_snack_not_enough_cash = "Du har ikke nok kontanter for å kjøpe en Snack. Prisen er $${cost}.",
		vending_soda = "Trykk ~INPUT_CONTEXT~ for å kjøpe en Brus. Prisen er $${cost}.",
		vending_soda_not_enough_cash = "Du har ikke nok kontanter for å kjøpe en Brus. Prisen er $${cost}.",
		vending_water = "Trykk ~INPUT_CONTEXT~ for å kjøpe en Vannflaske. Prisen er $${cost}.",
		vending_water_not_enough_cash = "Du har ikke nok kontanter for å kjøpe en Vannflaske. Prisen er $${cost}.",
		vending_machine_damaged = "Denne automatmaskinen er skadet. Vennligst sjekk igjen senere.",
		vending_water_cooler = "Trykk ~INPUT_CONTEXT~ for å få et glass vann.",

		refill_bottle = "Trykk ~INPUT_CONTEXT~ for å fylle flasken.",
		refilling_bottle = "Fyller flasken"
	},

	voice = {
		illegal_radio_frequency = "Forsøker å få tilgang til ulovlige radiokanaler.",
		voice_chat = "Stemmeprat",
		voice_server_connected = "Koblet til stemmeserveren. Sender stemmedata til relevante spillere.",
		voice_server_disconnected = "Frakoblet stemmeserveren. Venter på tilkobling.",
		voice_muted = "Stemmeprat er slått av.",
		voice_unmuted = "Stemmeprat er slått på igjen.",
		broadcasting_voice_to_players = "Sender til spillere:",
		listening_to_virtual_players = "Lytter til virtuelle spillere:",
		radio = "Radio",
		phone = "Telefon",
		muted_players = "Silede spillere:",
		connected = "Koblet til: ${connected}",
		muted = "Silt: ${muted}",
		boolean_true = "Sann",
		boolean_false = "Falsk",
		target_channel = "Målkanal: ${targetChannel}",
		actual_channel = "Gjeldende kanal: ${actualChannel}",
		target_radius = "Målradius: ${targetRadius}",
		actual_radius = "Faktisk radius: ${actualRadius}",

		invalid_server_id = "Ugyldig server-id.",
		failed_toggle_listen = "Kunne ikke bytte lyttingstatus.",
		listeners = "Lyttetil:",
		listening_to = "Lytter til:",

		failed_toggle_muted = "Kunne ikke bytte lydløs status.",
		toggle_muted_on = "${consoleName} er nå lydløs i talechat.",
		toggle_muted_off = "${consoleName} er nå hørbar i talechat.",

		affected_by_jammer = "Din radio ser ut til å være påvirket av en jammer eller lignende.",

		listening_missing_permissions = "Spilleren prøvde å endre lyttestatusen, men hadde ikke de nødvendige tillatelsene.",
		voice_mute_missing_permissions = "Spilleren prøvde å endre en annens lydstatus, men hadde ikke de nødvendige tillatelsene."
	},

	washrooms = {
		use_sink = "[${InteractionKey}] Bruk vasken",
		using_sink = "Bruker vasken"
	},

	weed_field = {
		pick_weed = "Trykk ~INPUT_CONTEXT~ for å plukke ugress.",
		picking_weed = "Plukker ugress"
	},

	wizard = {
		action_missing_permissions = "Prøvde å la en spiller gjøre en wizard handling uten tilstrekkelige tillatelser.",
		action_radius_missing_permissions = "Forsøkte å få spillere innenfor et visst område til å utføre trollmannsaksjoner uten riktige tillatelser.",
		run_as_missing_permissions = "Forsøkte å utføre en kommando som en annen spiller uten riktige tillatelser.",

		menu_title = "Trollmann",

		ragdoll_player = "Gi seg",
		ragdoll_player_force = "Gi seg (tvang)",
		punch_player = "Slå til med makt",
		taze_player = "Støt",
		exit_vehicle_player = "Gå ut av kjøretøy",
		yank_steering_wheel_player = "Trekke rattet",
		flashbang_player = "Flashbang",
		paper_bag_player = "Papirpose",
		ignite_player = "Sett på ild",
		explode_player = "Eksploder",
		quietly_revive_player = "Rolig gi liv",
		play_sound = "Spill av lyd",

		play_sound_knocking = "Banking",
		play_sound_discord = "Discord",
		play_sound_phone_call = "Telefonsamtale",
		play_sound_message = "Melding",
		play_sound_twitter = "Twitter",

		invalid_radius = "Ugyldig radius",
		invalid_server_id = "Ugyldig server-ID.",

		ragdoll_failed = "Kunne ikke få spilleren til å ragdoll.",
		ragdoll_success = "Spilleren ${consoleName} ble vellykket ragdollet.",

		punch_success = "Spilleren ${consoleName} slo vellykket.",
		punch_failed = "Klarte ikke å få spilleren til å slå.",

		explode_success = "Vellykket: ${consoleName} eksploderte.",
		explode_failed = "Klarte ikke å få spilleren til å eksplodere.",

		ignite_success = "Vellykket: ${consoleName} ble satt i brann.",
		ignite_failed = "Klarte ikke å tenne på spilleren.",

		punch_radius_failed = "Klarte ikke å få spillerne i radius til å slå.",
		punch_radius_success = "Vellykket: Spillere i en ${radius} radius ble tvunget til å slå.",

		ragdoll_radius_success = "Vellykket: Spillere i en ${radius} radius ble tvunget til å ragdoll.",
		ragdoll_radius_failed = "Feilet i å gjøre spillere i radiusen ragdoll.",

		flashbang_success = "Vellykket flashbang på ${consoleName}.",
		flashbang_failed = "Kunne ikke flashbang spilleren.",

		flashbang_radius_success = "Velletykke flashbang på spillere i en ${radius}-meters radius.",
		flashbang_radius_failed = "Feilet i å flashbang-spillere i radiusen.",

		missing_command = "Kommando mangler.",
		run_as_success = "Kommandoen ble vellykket kjørt som ${consoleName}.",
		run_as_failed = "Feilet i å kjøre kommandoen som ${consoleName}.",

		no_nearby_vehicle = "Ingen kjøretøy i nærheten.",
		reversing_failed = "Kunne ikke få personen til å rygge.",
		driving_forwards_failed = "Kunne ikke få personen til å kjøre fremover.",
		reversing_success = "Har fått personen til å rygge.",
		driving_forwards_success = "Har fått personen til å kjøre fremover.",

		vehicle_temp_action_missing_permissions = "Spiller forsøkte å utføre en midlertidig kjøretøyhandling uten riktige tillatelser."
	},

	yoga = {
		yoga_mat_use = "[${InteractionKey}] Yogamatte",
		yoga_mat = "Yogamatte",
		press_to_stop_yoga = "Trykk ~INPUT_CONTEXT~ for å stoppe å gjøre yoga."
	},

	zombies = {
		hold_to_continue_looting_zombie = "[${InteractionKey}] Plyndre Zombie",
		press_to_loot_zombie = "[${InteractionKey}] Plunder Zombie",
		looting_zombie = "Plyndrer zombie",
		zombie_looting_injection = "Overdreven plyndring av zombie! (Omzeilet server-timeout, sannsynligvis ved bruk av en injector for å oppnå dette.)",

		zombie_trip_limit = "Du føler deg for trøtt til å fortsette å plyndre zombier. Prøv igjen i morgen."
	},

	-- global/*
	entities = {
		in_no_ped_population_area = "Du er i et 'ingen ped-populasjonsområde'.",
		not_in_no_ped_population_area = "Du er ikke i et 'ingen ped-populasjonsområde'."
	},

	explosions = {
		invalid_explosion_type = "Eksplosjonstypen '${explosionType}' er ikke gyldig.",
		invalid_camera_shake = "Kamerabevegelse `${cameraShake}` er ikke gyldig.",
		invalid_damage_scale = "Skade skala `${damageScale}` er ikke gyldig.",
		created_explosion = "Skapte en eksplosjon av typen `${explosionTypeName}` med en skade skala på `${damageScale}` og kamerabevegelse på `${cameraShake}`.",
		create_explosion_not_developer = "Spiller forsøkte å skape en eksplosjon, men de var ikke en utvikler."
	},

	functions = {
		year = "år",
		years = "år",
		month = "måned",
		months = "måneder",
		day = "dag",
		days = "dager",
		hour = "time",
		hours = "timer",
		minute = "minutt",
		minutes = "minutter",
		second = "sekund",
		seconds = "sekunder",
		just_now = "akkurat nå",
		unknown = "Ukjent",
		flipped_vehicle_logs_title = "Snudd Kjøretøy",
		flipped_vehicle_logs_details = "${consoleName} snudde et kjøretøy.",
		failed_to_find_ground = "Klarte ikke å finne bakken, teleporterte deg til nærmeste vei.",

		time_in = "om ${time} ${unit}",
		time_ago = "${time} ${unit} siden"
	},

	states = {
		invalid_network_id = "Ugyldig nettverks-ID.",
		debug_states_failed = "Klarte ikke å debugge denne entitetens tilstander.",
		no_states = "Denne enheten har ingen definerte tilstander.",
		printed_states = "Tilstandene til enhet ${networkId} har blitt skrevet ut.",

		get_entity_states_missing_permissions = "Spilleren prøvde å hente spesifikke tilstander for enheter uten de nødvendige tillatelsene."
	},

	-- illegal/*
	corner = {
		corner_ped = "Hjørne Ped - ${cornerPedDistance}m (${cornerPedTimer})",
		corner_ped_title = "Hjørne Ped",
		corner_ped_already_active = "Det er allerede en hjørne ped som venter på deg.",
		no_node_found = "Ingen nærliggende noder for peds funnet.",
		no_sell_area = "Du er ikke i et område der peds er interessert i narkotika.",
		inside_areas_none = "Ingen innendørs områder",
		inside_areas = "Inne områder: ${insideAreas}",
		not_able_to_sell = "Du kan ikke selge nå. Gå rundt litt før du prøver igjen."
	},

	stockade = {
		dispatch = "[Dispatch]",
		status_1a = "10-78, en Stockade har trykket på nødknappen og ber om backup i ${streetName}.",
		status_1b = "10-78, En Stockade har trykket på nødknappen og ber om backup ved ${streetName} nær ${crossingRoad}.",
		status_2a = "10-78, Et alarmsystem har oppdaget at en Stockade har dørene forsøkt manipulert og ber om backup ved ${streetName}.",
		status_2b = "10-78, Et alarmsystem har oppdaget at en Stockade har dørene forsøkt manipulert og ber om backup ved ${streetName} nær ${crossingRoad}.",
		status_3a = "10-78, Et alarmsystem har oppdaget at en Stockade har dørene åpnet på feil måte og ber om backup ved ${streetName}.",
		status_3b = "10-78, Et alarmsystem har oppdaget at en Stockade har fått dørene sine åpnet på feil måte og trenger backup på ${streetName} nær ${crossingRoad}.",
		grab_valuables = "[${InteractionKey}] Ta verdigjenstander (${valuablesRemaining} igjen)",
		grabbing_valuables = "Tar verdigjenstander",
		use_advanced_lockpick = "[${InteractionKey}] Bruk avansert låsåpner",
		lockpicking_stockade = "Åpner lås på Stockade",

		status_blip = "Stockade",

		stockade_reward_logs_title = "Stockade Belønning",
		cash_pickup_logs_details = "${consoleName} plukket opp $${cashAmount} i kontanter.",
		item_pickup_logs_details = "${consoleName} plukket opp 1x ${itemName}.",

		reward_diamonds = "Du plukket opp en diamant.",
		reward_gold_bar = "Du plukket opp en gullbarre.",
		reward_cash = "Du plukket opp litt kontanter.",
		reward_keycard_red = "Du plukket opp et rødt nøkkelkort.",

		stockade_logs_title = "Stockade aktivert",
		stockade_logs_details = "${consoleName} aktiverte en stockade."
	},

	-- interfaces/*
	interface = {
		no_interfaces_are_focused = "Ingen grensesnitt er markert som fokusert.",
		interfaces_focused = "Fokuserte grensesnitt:\n${interfacesFocused}"
	},

	-- jobs/*
	bean_machine = {
		start_delivery = "Start en levering.",
		press_to_start_delivery = "Trykk på ~g~${InteractionKey} ~w~for å starte en levering.",
		already_in_delivery = "Du har allerede en aktiv levering.",
		not_bean_machine_employee = "Du må være ansatt hos Bean Machine for å starte en levering.",
		finish_delivery = "Fullfør leveringen.",
		press_to_finish_delivery = "Trykk på ~g~${InteractionKey} ~w~for å fullføre leveringen.",
		started_delivery = "Startet en levering til ${deliveryName}. Plasseringen har blitt markert på kartet ditt.",
		finished_delivery = "Leveringen til ${deliveryName} har blitt fullført. Du har fått $${deliveryPrice} og $${distanceBonus} i tips, som tilsvarer $${totalPrice}.",
		error_finishing_delivery = "Det oppstod en feil mens du prøvde å fullføre leveransen din.",
		finished_delivery_title = "Fullført Bean Machine-levering",
		finished_delivery_details = "${consoleName} fullførte en Bean Machine-levering og mottok $${deliveryPrice} og $${distanceBonus} i tips, totalt $${totalPrice}.",
		delivery_blip = "Bean Machine-levering"
	},

	burger_shot = {
		start_delivery = "Start en levering.",
		press_to_start_delivery = "Trykk ~g~${InteractionKey} ~w~for å starte en levering.",
		already_in_delivery = "Du har allerede en aktiv levering.",
		not_burger_shot_employee = "Du må være ansatt hos Burger Shot for å starte en levering.",
		finish_delivery = "Fullfør leveringen.",
		press_to_finish_delivery = "Trykk ~g~${InteractionKey} ~w~for å fullføre leveringen.",
		started_delivery = "Startet en levering til ${deliveryName}. Lokasjonen er markert på kartet ditt.",
		finished_delivery = "Leveringen til ${deliveryName} er fullført. Du mottok $${deliveryPrice} og $${distanceBonus} i tips, totalt $${totalPrice}.",
		error_finishing_delivery = "En feil oppstod mens du prøvde å fullføre leveringen.",
		finished_delivery_title = "Fullført Burger Shot-leveranse",
		finished_delivery_details = "${consoleName} fullførte en Burger Shot-leveranse og mottok $${deliveryPrice} og $${distanceBonus} i tips, som tilsvarer $${totalPrice}.",
		delivery_blip = "Burger Shot-leveranse"
	},

	duty = {
		toggle_duty_status_no_permissions = "Spilleren prøvde å slå på duty status via kommando uten tilstrekkelige tillatelser.",

		duty_status_on = "Du er nå på tjeneste.",
		duty_status_off = "Du er nå ute av tjeneste.",
		duty_status_failed = "Kunne ikke slå på tjeneste-status.",

		training_status_on = "Trening modus skrudd på vellykket.",
		training_status_off = "Trening modus skrudd av vellykket.",
		training_status_failed = "Feilet å skru på trening modus.",

		emergency_call = "Det er en nødmelding. Trykk på ENTER for å motta den.",

		toggled_operator_status_on = "Operatorstatus skrudd på.",
		toggled_operator_status_off = "Operatorstatus skrudd av."
	},

	job_center = {
		life_invader = "Life Invader",
		life_invader_blip = "Søk på jobb",
		ui_close_menu = "Lukk menyen",
		press_to_browse_jobs = "Trykk på ~INPUT_CONTEXT~ for å bla gjennom jobber.",
		change_job = "Endre jobb: ${jobName}",
		job_unemployed = "Arbeidsledig",
		job_transportation = "Lastebilsjåfør",
		job_taxi = "Taxi-sjåfør",
		job_journalist = "Journalist",
		job_government = "Renovatør",
		job_mechanic = "Bilbergingssjåfør",
		job_delivery = "Leveringsjobb",
		changed_job_already_set_to_job = "Jobben din er allerede satt til ${jobName}.",
		changed_job_success = "Jobben din er endret til ${jobName}.",
		changed_job_success_go_to_coords = "Jobben din er endret til ${jobName}. Følg veipunktet på kartet for å komme i gang.",
		changed_job_failure = "Det oppstod en feil mens vi prøvde å endre jobben din til ${jobName}.",
		changed_job_title = "Jobb endret",
		changed_job_details = "${consoleName} byttet jobb til `${jobName}`."
	},

	jobs = {
		job_refreshed = "Jobb oppdatert.",
		something_went_wrong = "Noe gikk galt.",
		user_does_not_have_sent_character_loaded = "Brukeren har ikke lastet inn den valgte karakteren.",
		user_has_no_character_loaded = "Brukeren har ingen karakterer lastet inn.",
		user_not_found = "Den valgte brukeren ble ikke funnet på serveren.",
		invalid_character_id = "Ugyldig karakter-ID-parameter sendt.",
		invalid_license_identifier = "Ugyldig lisens-ID-parameter sendt."
	},

	police = {
		aim_assist_enabled = "Målsiktningsstøtte er nå aktivert.",
		aim_assist_disabled = "Målsiktningsstøtte er nå deaktivert. Vi anbefaler å aktivere den umiddelbart.",
		you_are_not_police = "Denne funksjonen er reservert for politiet, ikke kriminelle.",

		undercover_enabled = "Du er nå undercover.",
		undercover_disabled = "Du er ikke lenger undercover.",

		npc_vehicle = "Dette kjøretøyet tilhører ikke en spiller.",
		not_in_a_vehicle = "Du kjører ikke et kjøretøy for øyeblikket.",
		invalid_minutes = "Ugyldig tid (mellom 1 minutt og 12 timer).",

		not_on_duty = "Du er ikke på vakt.",
		failed_impound = "Kunne ikke beslaglegge kjøretøy.",
		not_near_impound = "Du er ikke nær PDs beslaglagte kjøretøy-sted.",
		impound_success = "Har beslaglagt kjøretøyet med skilt `${plate}` i ${minutes} minutter.",

		access_impound = "[${InteractionKey}] Åpne beslaglagt kjøretøysområde",
		impound_lot = "Beslaglagt Kjøretøy Område",
		exit_impound = "Forlat beslagleggelse",
		no_impounded_vehicles = "Det er ingen kjøretøy som er beslaglagt for øyeblikket.",
		failed_impound_list = "Kunne ikke hente beslaglagte kjøretøy.",
		impound_owner = "Eier: #${cid}",
		withdraw_success = "Kjøretøyet ble trukket tilbake uten problemer.",
		failed_withdraw = "Kjøretøyet kunne ikke trekkes tilbake.",
		vehicle_not_impounded = "Kjøretøyet id er for øyeblikket ikke beslaglagt.",

		impound_logs_title = "PD Beslagleggelse",
		impound_logs_details = "${consoleName} satte et kjøretøy med registreringsnummer ${plate} på politiets beslag i ${minutes} minutter.",

		impound_withdraw_logs_title = "Beslagtrekkingslogg",
		impound_withdraw_logs_details = "${consoleName} trakk tilbake et kjøretøy med skiltet ${plate} fra PD beslag (Tid igjen: ${timeLeft}).",

		none = "Ingen",
		active = "Aktiv",
		not_active = "Ikke aktiv",
		active_robberies = "\nAktiv butikk: ${store}.\nAktiv bank: ${bank}\nAktivt smykkebutikk: ${jewelry}",

		failed_dispatch = "Kunne ikke sende utkalling.",
		dispatch_title = "[Utkalling]",
		dispatch_message = "${author}: ${message}",
		invalid_dispatch_message = "Ugyldig utkallingsmelding (Maksimum 255 tegn).",
		in_training = "Du er for øyeblikket i opplæringsmodus.",
		cannot_use_dispatch = "Du kan ikke bruke varsling nå.",

		dispatch_message_logs_title = "Varslingsmelding",
		dispatch_message_logs_details = "${consoleName} sendte en varsling: `${message}`.",

		no_keys = "Du har ikke nøklene til dette kjøretøyet.",
		invalid_drive_mode = "Ugyldig kjøremodus.",
		not_in_police_vehicle = "Du er ikke i et politikjøretøy.",
		drive_mode_too_fast = "Du kjører for fort til å endre kjøremodus.",
		drive_mode_already_set = "Kjøremodusen din er allerede satt til `${mode}`.",
		drive_mode_failed = "Klarte ikke å sette kjøremodus.",
		drive_mode_set = "Kjøremodusen er satt til `${mode}`.",

		mode_s = "Sportsmodus",
		mode_d = "Kjøremodus",

		drive_mode_logs_title = "Kjøremodus endret",
		drive_mode_logs_details = "${consoleName} endret kjøremodus til `${mode}`."
	},

	state = {
		license_heli = "Helikopter",
		license_fw = "Fastvinge",
		license_cfi = "Sertifisert flyinstruktør",
		license_hw = "Tungvekt",
		license_hwh = "Tungvekts helikopter",
		license_perf = "Prestasjonsorientert",
		license_utility = "Verktøy",
		license_commercial = "Kommersiell",
		license_management = "Ledelse",
		license_military = "Militær",
		license_special = "Spesiell luftfartøy",
		license_hunting = "Jaktkort",
		license_fishing = "Fiskekort",
		license_weapon = "Våpenlisens",
		gave_character_license = "Ga ${characterName} lisens `${licenseLabel}`.",
		character_already_has_license = "${characterName} har allerede lisensen `${licenseLabel}`.",
		removed_character_license = "Fjernet lisens `${licenseLabel}` fra ${characterName}.",
		character_does_not_have_license = "${characterName} har ikke lisens `${licenseLabel}`.",
		license_not_found = "Lisens `${licenseName}` ble ikke funnet.",
		user_not_found_with_character_id = "Brukeren ble ikke funnet med karakter ID `${characterId}`.",
		no_license_added = "Ingen lisenser ble lagt til.",
		invalid_character_id = "Karakter ID-en som ble lagt til er ugyldig.",
		no_character_id_added = "Ingen karakter ID lagt til.",
		your_licenses_are = "Dine lisenser er som følger: ${licenses}",
		player_licenses_are = "${characterName} har følgende lisenser: ${licenses}",
		you_have_no_licenses = "Du har ingen lisenser.",
		player_has_no_licenses = "${characterName} har ingen lisenser.",
		failed_to_get_licenses = "Kunne ikke hente lisenser.",
		license_list = "Tilgjengelige lisenser: ${licenseList}."
	},

	tow = {
		press_to_access_spawner = "Trykk ~INPUT_CONTEXT~ for å åpne kjøretøyspawneren.",
		tow_vehicles = "Tauing av kjøretøy",
		vehicle_list = "Kjøretøyliste",
		park_vehicle = "Parkér kjøretøy",
		parked_vehicle = "Kjøretøy parkert.",
		no_vehicle_to_park = "Det er ingen kjøretøy å parkere.",
		close_menu = "Lukk menyen",
		purchased_vehicle = "Kjøretøy kjøpt.",
		shop_on_timeout = "Kjøretøybutikken er på en time-out. Prøv igjen senere.",
		spawn_area_not_clear = "Spawnområdet er ikke klart.",
		purchase_funds = "Utilstrekkelige midler.",
		return_button = "Tilbake",

		toggled_messages_on = "Meldinger på.",
		toggled_messages_off = "Meldinger av."
	},

	weazel_news = {
		press_to_access_spawner = "Trykk ~INPUT_CONTEXT~ for å få tilgang til kjøretøyspawneren.",
		weazel_news = "Weazel News",
		vehicle_list = "Kjøretøyliste",
		close_menu = "Lukk Meny",
		return_button = "Tilbake",
		park_vehicle = "Parkere kjøretøy",
		parked_vehicle = "Parkert kjøretøy.",
		no_vehicle_to_park = "Det er ingen kjøretøy å parkere.",
		spawned_vehicle = "Kjøretøy spawnet.",
		spawner_on_timeout = "Kjøretøyspawneren er på timeout. Vennligst prøv igjen.",
		spawn_area_not_clear = "Spawnområdet er ikke klart."
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
		triggered_vehicle_alert = "Kjøretøysalarm utløst ved ${locationLabel} for kjøretøy med skilt `${plateText}`.",
		vehicle_alert_blip = "Kjøretøysalarm"
	},

	boats = {
		anchor_disconnected = "Ankeret ble frakoblet vellykket.",
		anchored_successfully = "Ankeret ble utplassert vellykket.",
		removing_anchor = "Kobler fra ankeret",
		deploying_anchor = "Ankeret deployeres",
		no_vehicle_nearby = "Det er ingen båter i nærheten som du kan fortøye."
	},

	car_wash = {
		use_car_wash = "Trykk på ~INPUT_CONTEXT~ for å bruke bilvasken. Kostnaden er $${cost}.",
		stop_car_to_wash = "Stopp kjøretøyet for å bruke bilvasken.",
		vehicle_already_clean = "Dette kjøretøyet er for rent til å vaske.",
		car_wash = "Bilvask",
		air_unit_damaged = "Denne luft enheten er skadet.",
		air_unit_not_enough_cash = "Du har ikke nok penger til å bruke luft enheten.",
		air_unit_exit_vehicle = "Gå ut av kjøretøyet for å bruke luft enheten.",
		air_unit_press_to_use = "Trykk på ~g~${SeatEjectKey} ~w~for å bruke Luftfartsenheten for $${cost}.",
		air_unit_purchase_cleaning_kit = "Trykk på ~g~${InventoryKey} ~w~for å kjøpe et Rengjøringssett.",
		cleaning_vehicle = "Rengjøringskjøretøy",
		not_enough_money = "Du har ikke nok penger til å bruke Luftfartsenheten.",
		vehicle_not_in_range = "Kjøretøyet beveget seg for langt unna for å bli rengjort."
	},

	carrier = {
		use_catapult = "Trykk på ~INPUT_CONTEXT~ for å koble deg til katapulten.",
		use_launch = "Trykk på ~INPUT_VEH_HANDBRAKE~ for å starte."
	},

	damage = {
		vehicle = "Kjøretøy-ID: ${entity}",
		general = "Generelt: ${value}",
		body = "Karosseri: ${value}",
		engine = "Motor: ${value}",
		petrol_tank = "Tank: ${value}",
		temperature = "Temperatur: ${value}",
		tracked_vehicle = "Beltetransport",

		debug_vehicle_on = "Aktiverte feilsøking for kjøretøy.",
		debug_vehicle_off = "Deaktiverte feilsøking for kjøretøy."
	},

	fuel = {
		exit_to_fuel = "Gå ut av kjøretøyet for å fylle drivstoff.",
		press_to_fuel = "Trykk ~g~${InteractionKey} ~w~for å fylle kjøretøyet med drivstoff.",
		fuel_pump_text = "Drivstoffkostnad: $${fuelCost}~n~Trykk ~g~E ~w~for å stoppe drivstoffpåfylling.",
		vehicle_text = "Drivstoffnivå: ${fuelLevel}%",
		tank_full = "Tanken er full.",
		vehicle_busy = "Kjøretøyet i nærheten er opptatt.",
		purchase_jerry_can = "Trykk ~g~${InventoryKey} ~w~for å kjøpe en Kann med Bensin.",
		gas_station = "Bensinstasjon",
		petrolcan_fuel_text = "Gjenværende mengde bensin: ${petrolAmount}%~n~Trykk ~g~E ~w~for å avslutte påfyllingen.",
		player_busy = "Du er opptatt med noe annet.",
		fuel_level_set_to = "Bensinnivået er satt til `${fuelLevel}`.",
		not_in_a_vehicle = "Du er ikke i et kjøretøy.",
		vehicle_engine_on = "Motoren kjører fortsatt.",

		set_fuel_no_permissions = "Spilleren prøvde å sette bensinmengden på en bil uten riktige tillatelser.",

		vehicle_exploded_logs_title = "Kjøretøy eksploderte",
		vehicle_exploded_logs_details = "${consoleName} fylte på et kjøretøy og utløste en eksplosjon på grunn av en igangkjørt motor."
	},

	gadgets = {
		helicopter_camera_vehicle_info_metric = "Fart: ${speed} km/t\nModell: ${model}\nSkilt: ${plate}",
		helicopter_camera_vehicle_info_imperial = "Fart: ${speed} mp/t\nModell: ${model}\nSkilt: ${plate}",
		helicopter_camera_altitude = "${altitude}ft AGL",
		helicopter_camera_altitude_asl = "${altitude}ft ASL",
		unknown = "Ukjent"
	},

	garages = {
		garage_empty = "Garasjen din er tom!",
		impound_lot = "Beslagplass",
		police_impound = "Politiets beslagplass",
		engine = "Motor",
		body = "Karosseri",
		vehicle_in = "Inne",
		vehicle_out = "Ute",
		vehicle_at_police_impound = "Kjøretøyet ditt er for øyeblikket beslaglagt av politiet.",
		vehicle_at_impound = "Kjøretøyet ditt befinner seg på beslagplassen.",
		waypoint_to_impound = "Det er merket en waypoint til beslagplassen på GPS-en din.",
		unable_to_withdraw = "Kan ikke hente ut kjøretøyet ditt siden det for øyeblikket befinner seg på ${location}.",
		waypoint_to_vehicle = "Det er merket en waypoint til kjøretøyet ditt på GPS-en din.",
		vehicle_currently_at = "Ditt kjøretøy befinner seg for øyeblikket på ${location}.",
		vehicle_in_garage = "Kjøretøyet ditt befinner seg i ${garageName}.",
		insufficient_funds = "Du har ikke nok penger til å hente tilbake dette kjøretøyet.",
		error_withdrawing = "Det oppstod en feil da vi prøvde å hente tilbake kjøretøyet ditt.",
		withdraw_timeout = "Vennligst vent litt før du prøver å hente tilbake et annet kjøretøy.",
		garage_in_use = "Denne garasjen er for øyeblikket i bruk, vennligst vent et øyeblikk.",
		invalid_model = "Ugyldig eller ukjent kjøretøy modell.",
		vehicle_in_the_way = "Det er en bil i veien for spawn-punktet.",
		vehicle_is_out = "Bilen din er allerede ute.",
		vehicle_stored = "Bilen din er lagret.",
		error_storing = "Feilet i å lagre kjøretøyet. Er kjøretøyet ditt?",
		no_nearby_vehicle = "Ingen kjøretøy i nærheten.",
		no_vehicles_to_retrieve = "Du har ingen kjøretøy å hente!",
		vehicle_retrieved = "Kjøretøyet er blitt hentet.",
		error_retrieving = "En feil oppstod under forsøk på å hente kjøretøyet.",
		not_enough_balance_to_retrieve = "Du har ikke nok balanse på kontoene dine til å hente dette kjøretøyet.",
		press_to_access = "Trykk ~INPUT_CONTEXT~ for å få tilgang til garasjen.",
		ui_return = "Tilbake",
		ui_vehicle_list = "Kjøretøy Liste",
		ui_store_vehicle = "Oppbevar Kjøretøy",
		ui_vehicle_sell = "Selg kjøretøy",
		ui_retrieve_vehicle = "Hent Kjøretøy",
		ui_close_menu = "Lukk meny",
		garage_letter = "Garasje ${letter}",
		garage_emergency = "${type} Garasje",
		emergency_type_1 = "PD",
		emergency_type_2 = "EMS",
		no_vehicles_impounded = "Ingen av kjøretøyene dine er beslaglagt!",
		you_must_retrieve_this_vehicle = "Du må hente dette kjøretøyet for å få tilgang til det.",
		garage = "Garasje",
		retrieved_vehicle_logs_title = "Gjenopprettet Bil",
		retrieved_vehicle_logs_details = "${consoleName} gjenopprettet bilen med skilt `${plate}` for ${price}.",

		state_loading_model = "Laster Inn Modell...",
		state_withdrawing = "Henter Ut...",

		state_retrieve_searching = "Søker...",
		state_retrieving = "Gjenoppretter...",

		state_storing = "Lagrer...",

		state_loading = "Laster...",

		vehicle_weight = "Vekt: ${weight}",
		last_garage_letter = "Siste - Garasje ${letter}",
		last_garage_impound = "Siste - Beslagplass",
		no_last_garage_letter = "Ingen forrige garasje",

		purchase_vehicle = "Trykk ~INPUT_CONTEXT~ for å åpne butikken",
		emergency_shop = "Kjøretøybutikk",
		exit_shop = "Lukk butikken",
		purchase_success = "Kjøretøyet ${label} du nettopp kjøpte er lagt til i garasjen din.",
		purchase_failed = "Kunne ikke kjøpe kjøretøy.",
		already_owned = "Du eier allerede dette kjøretøy modellen.",
		maximum_owned = "Du kan ikke eie mer enn 6 kjøretøy.",
		not_enough_money = "Du har ikke nok penger til å kjøpe dette kjøretøyet.",

		sold_vehicle = "Solgte ${label} for $${price}.",
		failed_sell_vehicle = "Kunne ikke selge kjøretøyet.",

		sold_vehicle_logs_title = "Solgte kjøretøy",
		sold_vehicle_logs_details = "${consoleName} solgte et nødkjøretøy av typen `${modelName}` med kjennetegn `${plate}` for ${price}.",

		purchased_vehicle_logs_title = "Kjøpte kjøretøy",
		purchased_vehicle_logs_details = "${consoleName} kjøpte et nødkjøretøy av typen `${modelName}` for ${price} (Kjennetegn: `${plate}`).",

		-- NOTE: `toggle_garage_debug` command:
		toggle_garage_debug_toggled_on = "Skrudd på garasje-feilsøking.",
		toggle_garage_debug_toggled_off = "Skrudd av garasje-feilsøking."
	},

	handlings = {
		set_handling_override_not_super_admin = "Spilleren forsøkte å endre kjøretøyets egenskaper uten riktig tillatelse.",
		remove_handling_override_not_super_admin = "Spilleren forsøkte å fjerne endringer i kjøretøyets egenskaper uten riktig tillatelse."
	},

	keys = {
		no_nearby_player = "Ingen spiller i nærheten.",
		no_nearby_vehicle = "Ingen kjøretøy i nærheten.",
		no_keys_for_vehicle = "Du har ikke nøklene til dette kjøretøyet.",
		vehicle_locked = "Kjøretøyet er låst.",
		vehicle_unlocked = "Kjøretøyet er ulåst.",
		h_to_hotwire = "[H] Låse opp med startkabel",
		received_keys = "Mottok nøkler for kjøretøy med registreringsnummer ${plate}.",
		received_keys_no_plate = "Mottok nøkler for kjøretøy.",
		you_are_not_in_a_vehicle = "Du er ikke i et kjøretøy.",
		you_are_in_a_vehicle = "Du er for øyeblikket i et kjøretøy.",
		hotwired_vehicle_with_plate_number = "Startet kjøretøy med registreringsnummer '${plateNumber}'.",
		unable_to_hotwire_vehicle = "Kunne ikke starte kjøretøy.",
		picked_up_keys = "Plukket opp nøkler for `${plate}`.",
		invalid_server_id = "Ugyldig server-ID.",
		hotwired_vehicle_for_player = "${displayName} har varmet opp kjøretøyet de sitter i."
	},

	modifications = {
		wheels_reset = "Hjulene blir resatt.",
		wheels_already_reset = "Hjulene er allerede i sin standardposisjon.",
		wheels_modified = "Hjulene har blitt modifisert.",
		wheels_none_specified = "Ingen hjul spesifisert.",
		wheels_none_valid_specified = "Ingen gyldige hjul spesifisert.",
		not_in_a_car = "Du er ikke i en bil.",
		invalid_value = "Ugyldig verdi."
	},

	plates = {
		plate_number_is_available = "Skiltnummer `${plateNumber}` er tilgjengelig.",
		plate_number_is_not_available = "Skiltnummer `${plateNumber}` er ikke tilgjengelig.",
		missing_valid_plate_number = "Mangler gyldig parameter for 'skiltnummer'.",
		missing_valid_vehicle_id = "Mangler gyldig parameter for 'kjøretøy-ID'.",
		database_error = "Det oppstod en feil i bakend-databasen.",
		no_custom_plate_package = "Du har ikke en tilpasset skilt pakke. Sjekk ut vår nettbutikk for mer informasjon!",
		api_error = "Det ble returnert en feil fra vår bakend-API.",
		api_not_available = "Vår bakend-API er ikke tilgjengelig.",
		vehicle_does_not_belong_to_player = "Kjøretøy-ID `${vehicleId}` tilhører ikke deg.",
		vehicle_id_does_not_exist = "Kjøretøy-ID `${vehicleId}` eksisterer ikke.",
		you_have_no_character_loaded = "Du har ingen karakter lastet inn.",
		vehicle_plate_changed = "Endret skiltnummeret på kjøretøyet med ID `${vehicleId}` til `${plateNumber}`.",

		you_are_not_in_a_vehicle = "Du befinner deg ikke i et kjøretøy.",
		fake_plate_active = "Genererte en falsk plate for kjøretøyet ditt.",
		fake_plate_inactive = "Tilbakestilte kjøretøyets platenummer til det opprinnelige.",

		fake_plate_missing_permissions = "Spiller forsøkte å sette en falsk plate via kommando uten nødvendige tillatelser."
	},

	runways = {
		you_are_not_in_a_plane = "Du befinner deg ikke i et fly.",
		ifr_disabled = "IFR er deaktivert.",
		ifr_enabled = "IFR er nå aktivert."
	},

	sirens = {
		sirens_muted_on = "Alle sirener er nå dempet.",
		sirens_muted_off = "Alle sirener er nå på."
	},

	spawner = {
		press_to_access_spawner = "Trykk ~INPUT_CONTEXT~ for å åpne kjøretøyspawneren.",

		parked_vehicle = "Kjøretøyet er nå parkert.",

		spawner_burger_shot = "Burger Shot leveringskjøretøy",
		spawner_bean_machine = "Bean Machine leveringskjøretøy",
		spawner_weazel_news = "Weazel News kjøretøy",
		close_menu = "Lukk meny",
		vehicle_list = "Kjøretøyliste",
		park_vehicle = "Parkér kjøretøy",
		return_button = "Tilbake",

		failed_spawn = "Klarte ikke å sette inn kjøretøy.",
		failed_area = "Området er ikke klart.",
		failed_job = "Du har ikke riktig jobb.",
		failed_generic = "Noe gikk galt."
	},

	vehicles = {
		flip_flipping = "Snur kjøretøy",
		flip_unable = "Du kan ikke snu kjøretøyet mens det er personer inni.",
		vehicle_busy = "Vennligst vent, kjøretøyet er opptatt!",
		hold_to_eject = "Hold for å kaste ut",
		taking_keys = "Tar nøkler",
		belt_on = "Belte på",
		belt_off = "Belte av",
		mileage = "Kjørelengde",
		vehicle_mileage_amount = "Dette kjøretøyet har kjørt ${miles} miles.",
		not_in_driver_seat = "For å sjekke kilometerstanden må du være i førersetet.",
		not_driving_vehicle = "Du kjører ikke et kjøretøy.",
		vehicle_locked = "Kjøretøyet er låst.",
		gear_animation_enabled = "Giranimasjon (og lyder) er nå aktivert.",
		gear_animation_disabled = "Giranimasjon (og lyder) er nå deaktivert.",
		manual_gears_enabled = "Manuell giring er nå aktivert.",
		manual_gears_disabled = "Manuell giring er nå deaktivert.",
		manual_gear_set_to = "Gir satt til ${gearId}.",
		speed_limiter_set_to_metric = "Fartsgrensen vil nå begrense farten til ${speed} km/t.",
		speed_limiter_set_to_imperial = "Fartsgrensen vil nå begrense farten til ${speed} mp/t.",
		speed_limiter_reset = "Fartsgrensen vil nå begrense farten til farten bilen hadde da fartsgrensen ble skrudd på.",
		speed_limiter_on_metric = "Fartsgrensen satt til ${speed} km/t.",
		speed_limiter_on_imperial = "Fartsgrensen satt til ${speed} mp/t.",
		speed_limiter_on_plane_metric = "Fartsgrensen satt til ${speed} km/t og ${altitude} meter.",
		speed_limiter_on_plane_imperial = "Fartsgrensen er satt til ${speed} mp/h og ${altitude} ft.",
		speed_limiter_on_helicopter_metric = "Fartsgrensen er satt til ${altitude} meter (hover).",
		speed_limiter_on_helicopter_imperial = "Fartsgrensen er satt til ${altitude} ft (hover).",
		autopilot_metric = "~g~Autopilot~s~: ${altitude}m ~c~/~s~ ${speed}km/t",
		autopilot_imperial = "~g~Autopilot~s~: ${altitude}ft ~c~/~s~ ${speed}knop",
		you_are_cuffed = "Du er håndjern",
		belt_is_on_and_vehicle_is_locked = "Selen er på og kjøretøyet er låst.",
		belt_is_on = "Du har på deg beltet ditt.",
		vehicle_is_locked = "Kjøretøyet er låst.",

		nearest_player_not_vehicle = "Nærmeste spiller er ikke i et kjøretøy.",
		no_dead_player_nearby = "Det er ingen døde spillere i et kjøretøy nær deg.",
		dragging_out_player = "Drar spilleren ut av kjøretøyet.",
		vehicle_too_fast = "Kjøretøyet beveger seg for fort.",

		modifying_brakes = "Endrer bremsene",
		toggle_brakes_on = "Slått av bremsene.",
		toggle_brakes_off = "Satt på bremsene.",
		failed_modify_brakes = "Kunne ikke endre bremsene.",

		toggle_disabled_brakes_no_permissions = "Spiller forsøkte å endre deaktivering av bremser via kommando uten riktig tillatelser.",

		-- NOTE: `add_vehicle` command:
		add_vehicle_not_super_admin = "Spilleren forsøkte å legge til et kjøretøy til en annen spillers garasje uten riktig tillatelser.",
		add_vehicle_added_vehicle_for_everyone = "La til kjøretøy med modellnavn `${modelName}` for alle.",
		add_vehicle_added_vehicle_for_player = "La til kjøretøy med modellnavn `${modelName}` for ${consoleName}.",
		add_vehicle_added_vehicle = "La til kjøretøy med modellnavn `${modelName}`.",
		add_vehicle_character_not_loaded = "Målspilleren hadde ingen aktive karakterer.",
		add_vehicle_target_user_not_found = "Målbrukeren kunne ikke bli funnet.",
		add_vehicle_invalid_input = "Ugyldig input.",
		add_vehicle_no_permissions = "Ingen tillatelser.",
		add_vehicle_user_not_found = "Brukeren kunne ikke bli funnet.",
		add_vehicle_invalid_player = "Det er ingen spillere med server-ID `${serverId}`.",
		add_vehicle_invalid_model_name = "Modell navnet `${modelName}` er ikke gyldig.",
		add_vehicle_no_model_name = "Ingen modellnavn lagt til.",

		added_vehicle_for_everyone_logs_title = "La til kjøretøy for alle",
		added_vehicle_for_everyone_logs_details = "${consoleName} la til et kjøretøy med modellnavn `${modelName}` i alles garasjer.",
		added_vehicle_for_player_logs_title = "La til kjøretøy for spiller",
		added_vehicle_for_player_logs_details = "${consoleName} la til et kjøretøy med modellnavn `${modelName}` i ${targetConsoleName}s garasje.",
		added_vehicle_logs_title = "La til kjøretøy",
		added_vehicle_logs_details = "${consoleName} la til kjøretøy med modellnavn `${modelName}` i sin garasje.",

		-- NOTE: `toggle_vehicle_weapons` command:
		toggle_vehicle_weapons_not_super_admin = "Spilleren forsøkte å aktivere/koble av våpen på et kjøretøy uten tilstrekkelige tillatelser.",
		toggled_vehicle_weapons_on = "Aktiverte våpen på kjøretøy.",
		toggled_vehicle_weapons_off = "Koblet av våpen fra kjøretøy.",
		toggled_vehicle_weapons_vehicle_is_not_networked = "Kjøretøyet du er i er ikke tilkoblet nettverket.",
		toggled_vehicle_weapons_not_in_a_vehicle = "Du er ikke i et kjøretøy.",
		toggled_vehicle_weapons_target_user_not_found = "Mål-bruker ikke funnet.",
		toggled_vehicle_weapons_player_not_in_a_vehicle = "Mål-spiller ikke i et kjøretøy.",
		toggled_vehicle_weapons_for_player_on = "Aktiverte kjøretøyvåpen for ${consoleName}.",
		toggled_vehicle_weapons_for_player_off = "Deaktiverte kjøretøyvåpen for ${consoleName}.",
		toggled_vehicle_weapons_for_everyone = "Aktiverte kjøretøyvåpen for alle.",

		toggled_vehicle_weapons_on_logs_title = "Aktiverte kjøretøyvåpen",
		toggled_vehicle_weapons_on_logs_details = "${consoleName} aktiverte våpnene for et kjøretøy.",
		toggled_vehicle_weapons_off_logs_title = "Deaktiverte kjøretøyvåpen",
		toggled_vehicle_weapons_off_logs_details = "${consoleName} deaktiverte våpenene for et kjøretøy.",
		toggled_vehicle_weapons_on_for_player_logs_title = "Aktivert kjøretøyvåpen for spiller",
		toggled_vehicle_weapons_on_for_player_logs_details = "${consoleName} aktiverte våpenene for ${targetConsoleName}s kjøretøy.",
		toggled_vehicle_weapons_off_for_player_logs_title = "Deaktiverte kjøretøyvåpen for spiller",
		toggled_vehicle_weapons_off_for_player_logs_details = "${consoleName} deaktiverte våpenene for ${targetConsoleName}s kjøretøy.",
		toggled_vehicle_weapons_for_everyone_logs_title = "Slått på kjøretøyvåpen for alle",
		toggled_vehicle_weapons_for_everyone_logs_details = "${consoleName} slo på våpen for alle sine kjøretøy.",

		breaking_window = "Knuser vindu",
		not_near_window = "Du er ikke nær nok et vindu.",
		not_near_vehicle = "Ingen kjøretøy i nærheten.",

		wheelie_no_vehicle = "Ingen kjøretøy",
		wheelie_engine_off = "Motor av",
		wheelie_idling = "Tomgang",
		wheelie_ready = "Klar",
		wheelie_boosting = "Øker hastigheten",

		invalid_power_level = "Ugyldig hastighetsnivå (1 - 5)."
	},

	vin_numbers = {
		cad_title = "[CAD]",

		checking_vin = "Sjekker VIN-nummer",
		not_driver = "Du kjører ikke et kjøretøy for øyeblikket.",
		failed_vin_get = "Kunne ikke hente VIN-nummeret.",
		vin_checked = "VIN-nummeret til dette kjøretøyet er `${vin}`.",
		vin_scratched = "VIN-nummeret har blitt skrapt bort.",

		looking_up_vin = "Slår opp VIN-nummeret",
		invalid_vin = "Ugyldig eller manglende VIN-nummer.",
		failed_vin_lookup = "Kunne ikke slå opp VIN-nummeret.",
		vin_lookup_details = "VIN `${vin}` er registrert på kjøretøyet med skiltnummer `${plate}` eid av `${fullName}`.",
		vin_lookup_unregistered = "VIN-koden ${vin} er ikke registrert på noen kjøretøy."
	},

	wheels = {
		press_to_slash = "[${InteractionKey}] Hold inne for å ødelegge",
		hold_to_slash = "Hold inne for å ødelegge",
		slashing_tire = "Ødelegger dekk"
	},

	-- weapons/*
	ammo = {
		unboxing_ammo = "Åpner ammokasse",
		failed_unbox = "Klarte ikke å åpne ammokassen.",
		failed_unbox_full = "Du kan ikke bære mer ammunisjon av denne typen.",
		unbox_success = "Du åpnet ammokassen og fikk ${amount}x ${ammoType}.",
		unbox_success_box = "Du åpnet ammokassen.",

		type_pistol = "pistolammunisjon",
		type_smg = "haglammunisjon",
		type_rifle = "rifle ammunisjon",
		type_sniper = "snikskytterrifle ammunisjon",
		type_shotgun = "12 kaliber hagle ammunisjon",
		type_stungun = "taser patroner",

		fill_ammo_success = "Ammunisjon fylt på nytt.",
		fill_ammo_failed = "Kunne ikke fylle ammunisjon."
	},

	weapons = {
		pick_up_fire_extinguisher = "Hold ~INPUT_CONTEXT~ for å plukke opp brannslukningsapparatet.",
		press_to_drop_fire_extinguisher = "Trykk ~INPUT_FRONTEND_RRIGHT~ for å slippe brannslukingsapparatet.",
		illegal_fire_extinguisher_model = "Prøvde å slette et brannslukningsapparat på alle klienter med en modell som ikke tilhørte et brannslukningsapparat.",

		airsoft_mode_on = "Airsoft-modus på.",
		airsoft_mode_off = "Airsoft-modus av.",
		airsoft_mode_failed = "Kunne ikke endre airsoft-modus.",

		no_weapon_equipped = "Ingen våpen utstyrt.",
		no_ammo = "Ingen ammunisjon for dette våpenet.",
		infinite_ammo = "Du har uendelig med ammunisjon for dette våpenet.",
		ammo_count = "Du har ${clips} fulle magasiner (${total} skudd totalt).",
		ammo_count_loose = "Du har ${clips} fulle magasiner og 1 magasin med ${loose} skudd (${total} skudd totalt).",

		firing_mode_0 = "Skytemodus satt til standard.",
		firing_mode_1 = "Skytemodus satt til halvautomatisk.",
		firing_mode_2 = "Slått på våpensikkerhet.",

		safety_is_on = "Sikringen er på.",

		firing_mode_set_1 = "Skytemodus er satt til halvautomatisk.",
		firing_mode_set_2 = "Våpensikkerhet er slått på.",

		folded_stock = "Sammenlagt kolbe",
		unfolded_stock = "Utfoldet kolbe",
		failed_to_toggle_stock = "Kunne ikke bytte kolbe.",
		weapon_has_no_stock = "Dette våpenet har ingen kolbe."
	},

	-- a shared "alpha" locale category uwu - also know, some features such as the ${InteractionKey} will be missing here, so don't try to use it
	alpha = {
		check_in = "[E] Sjekk Inn",
		check_in_timer = "[${remaining}s] Sjekk Inn",
		check_in_escorted = "Du blir eskortert",
		checking_in = "Sjekker Inn",
		doctor_notified = "En lege er varslet, vennligst vent",
		leave_bed = "Trykk ~INPUT_CONTEXT~ for å forlate sengen",
		you_have_been_charged = "Du har blitt belastet $${cost} for dine skader",
		beds_occupied = "Alle senger er opptatt",
		patient_checked_in = "Pasient sjekket inn på seng ${bed}",
		stop_bleeding = "[E] Stopp blødning",
		stopping_bleeding = "Stopper blødning",
		bleeding_stopped = "Blødning stoppet",
		overdose_effects = "Du opplever overdoseeffekter.",
		you_have_parasite = "Du har en parasitt",
		you_have_multiple_parasite = "Du har flere parasitter",
		bandage = "[E] Bandasjere sår",
		bandaging = "Banderer sår",
		wounds_bandaged = "Sår bandasjert",
		treat_injury = "[E] Behandle ${label} skade",
		treating_injury = "Behandlinger ${label} skade",
		injury = "${label} Skade",
		cpr_done = "CPR vellykket",
		cpr_fail = "Kunne ikke finne personen",
		went_on_duty = "Gikk på vakt",
		went_off_duty = "Gikk av vakt",
		on_duty = "på vakt",
		off_duty = "av vakt",
		press_to_sign = "Trykk ~g~E ~w~for å signere",
		open_vehicle_spawner = "Trykk ~g~E ~w~for å åpne kjøretøy-spawneren",
		open_heli_spawner = "Trykk ~g~E ~w~for å åpne helikopter-menyen",
		open_boat_spawner = "Trykk ~g~E ~w~for å åpne båt-menyen",
		on = "på",
		off = "av",
		sign_as_doctor = "Trykk ~g~E ~w~for å signere som ${status} lege",
		close_menu = "Lukk meny",
		vehicle_list = "Bil liste",
		park_vehicle = "Parkér bil",
		clear_area = "Vennligst klargjør garasjen før du spawner et kjøretøy",
		unable_to_extra = "Kan ikke endre 'ekstra' på dette kjøretøyet!",
		warning = "Advarsel",
		invalid_input = "Ugyldig Inndata.",
		unable_to_extra_on_vehicle = "Kan ikke endre 'ekstra' på dette kjøretøyet!",
		heli_here_already = "Allerede en helikopter på helikopterplassen",
		ems_air_hq = "EMS Luftbase",
		ems_boat_hq = "EMS Båtbase",
		ems_garage = "EMS Garasje",
		e_to_get_treated = "[E] Behandling - $1250",
		get_treated = "Få behandling - $1250",
		you_are_being_treated = "Du blir behandlet",
		being_treated = "Behandles",
		minute = "minutt",
		minutes = "minutter",
		second = "sekund",
		seconds = "sekunder",
		kurwa_and = "og",
		wait_for_paramedic = "Vennligst vent på en paramedic eller vent ${time} for å respawne",
		cannot_respawn_currently = "Du kan ikke respawne for øyeblikket",
		hold_to_respawn = "Hold ~b~ENTER ~w~for å respawne eller vent på en paramedic",
		hold_to_respawn_secondslol = "Hold ~b~ENTER (${seconds}) ~w~for å respawne eller vent på en paramedic",
		passed_out = "Du har besvime",
		light = "Lett",
		moderate = "Moderat",
		heavy = "Tungt",
		severe = "Alvorlig",
		arms_injured = "Armer for skadet, kan ikke skyte",
		injuryb = "Skade",
		bleeding_multiple_injuries = "blør med flere skader",
		feels_irritated = "føles irritert",
		feels_painful = "føles smertefullt",
		feels_extremely_painful = "føles ekstremt smertefullt",
		multiple_injuries = "Du har flere skader",
		bleeding = "blør",
		bleeding_with_injury = "blør med ${label} skade",
		bleeding_reduced = "Blødning redusert",
		bleeding_self_stopped = "Blødning stoppet av seg selv",
		thanks_for_loot = "Du ble ranet mens du var bevisstløs. Noen gjenstander kan mangle.",
		serial_number = "Serienummer: ${serialNumber}<br>Denne våpenet er registrert til ${fullName} (#${characterId}).",
		serial_number_unknown = "Serienummer: Ukjent.",
		badge_owner = "<i>Dette merket tilhører <b>${fullName} (${positionName})</b>.</i>",
		badge_owner_unknown = "Eieren av merket er ukjent.",
		citizen_card_owner = "<i>Denne statsborgerkortet tilhører <b>${fullName} (#${characterId})</b>.</i>",
		citizen_card_has_portrait = "<i>Den har et bilde.</i>",
		picture_pending = "<i>Bildet blir fortsatt prosessert...</i>",
		picture_selfie_owner = "<i>Dette er et bilde av <b>${fullName}</b>.</i>",
		bought_by = "Kjøpt av ${buyerName} (${buyerCid}).",
		bought_by_unknown = "Kjøperen av denne gjenstanden er ukjent.",
		cigarette_pack = "${cigarettes} sigaretter igjen.",
		evidence_incomplete = "Denne bevisposen er ufullstendig.",
		evidence_type = "Bevis Type",
		processed_picked_up = "<i>Tatt opp av ${pickupName} og behandlet av ${processName}.</i>",
		picked_up = "<i>Plukket opp av ${pickupName}.</i>",
		processed_by = "<i>Behandlet av ${processName}.</i>",
		evidence_casings = "Hylstre kom tilbake til serienummer ${serialNumber} som tilhørte ${buyerName} (${buyerCid}) på gjerningstidspunktet.",
		evidence_bullets = "Kulehull ser ut til å ha blitt laget av ${bulletLabel}.",
		evidence_clothing = "Et klesplagg (${clothingType}).",
		evidence_car_dna = "DNA ble funnet på kjøretøyet med registreringsnummer ${plateNumber} og knytter til ${DNAOwnerName} (${DNAOwner}).",
		evidence_dna = "DNA samlet inn fra ${fullName} #${characterId}.",
		evidence_fingerprint = "Fingeravtrykk av ${fullName} #${characterId}.",
		evidence_not_processed = "Denne bevisposen har ikke blitt behandlet enda.",
		additional_information = "Tilleggsinformasjon:",
		picked_up_at_location = "Plukket opp på stedet:",
		clothing_dna_trace = "DNA-sporene fører til ${fullName} (#${cid})",
		clothing_dna_trace_unprocessed = "Ikke behandlet DNA-spor på klærne",
		timestamp_of_pickup = "Tidsangivelse for opphenting:",
		weapon_name = "Våpennavn:",
		casings_picked_up = "Antall tomhylser plukket opp:",
		bullet_label = "Kulemerke:",
		impacts_found = "Antall treffområder funnet:",
		right_foot = "Høyre fot",
		left_foot = "Venstre fot",
		right_hand = "Høyre hånd",
		left_hand = "Venstre hånd",
		right_knee = "Høyre kne",
		left_knee = "Venstre kne",
		head = "Hode",
		neck = "Nakke",
		right_arm = "Høyre arm",
		left_arm = "Venstre arm",
		chest = "Brystkasse",
		pelvis = "Bekken",
		right_shoulder = "Høyre skulder",
		left_shoulder = "Venstre skulder",
		right_wrist = "Høyre håndledd",
		left_wrist = "Venstre håndledd",
		tounge = "Tunge",
		upper_lip = "Øvre leppe",
		lower_lip = "Nedre leppe",
		right_thigh = "Høyre lår",
		left_thigh = "Venstre lår",
		lower_spine = "Nedre rygg",
		center_spine = "Midtre rygg",
		upper_spine = "Øvre rygg",
		root_spine = "Rotrygg",
		right_clavicle = "Høyre krageben",
		left_clavicle = "Venstre krageben",
		note_signed_by = "<b>Underskrevet av:</b> <i>${name} (#${cid})</i>",
		map_location = "<b>Markeringslokasjon:</b> <i>${x}, ${y}</i>",
		smart_watch_hover = "<i>Dette smartur tilhører <b>${name} (#${cid})</b>. Den har registrert <b>${stepsWalked}</b> skritt.</i>",
		item_contains = "<b>Inneholder:</b> <i>${contents}</i>.",
		item_engraving = "<b>Gravering:</b> <i>${message}</i>.",
		evidence_incomplete = "Denne bevisposen er ufullstendig."
	}
}
